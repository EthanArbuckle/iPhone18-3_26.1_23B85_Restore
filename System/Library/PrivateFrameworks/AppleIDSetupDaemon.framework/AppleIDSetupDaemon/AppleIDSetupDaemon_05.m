uint64_t sub_24085CB90()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24085CCBC, v3, 0);
}

uint64_t sub_24085CCBC()
{
  v39 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  sub_2408D38A0();
  sub_2408D3A10();
  sub_2408D3830();
  v9 = v8;
  v10 = *(v7 + 8);
  v0[44] = v10;
  v0[45] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  if (v9)
  {
    v11 = v0[28];
    sub_2408D3840();
  }

  v12 = v0[41];
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[28];
    v16 = v0[24];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    swift_beginAccess();
    sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
    v19 = sub_2408D5220();
    v21 = sub_2408CC504(v19, v20, &v38);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v13, v14, "Modified generation request to account ID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x245CC9F60](v18, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v22 = v0[28];
  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[24];
  v26 = v0[15];
  v27 = v26[21];
  v0[46] = v27;
  v28 = v26[22];
  v0[47] = v28;
  v29 = v26[23];
  v0[48] = v29;
  v30 = v26[24];
  v0[49] = v30;
  swift_beginAccess();
  (*(v24 + 16))(v23, v22, v25);
  v31 = v27;
  v32 = v28;
  v33 = v29;

  v34 = swift_task_alloc();
  v0[50] = v34;
  *v34 = v0;
  v34[1] = sub_24085CFA8;
  v35 = v0[26];
  v36 = v0[23];

  return sub_2408CE818(v36, v35, v31, v32, v33, v30);
}

uint64_t sub_24085CFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = v2[49];
  v6 = v2[48];
  v7 = v2[47];
  v8 = v2[46];
  v9 = v2[45];
  v10 = v2[44];
  v11 = v2[26];
  v12 = v2[24];
  v13 = v2[15];
  v10(v11, v12);

  if (v0)
  {
    v14 = sub_24085D4AC;
  }

  else
  {
    v14 = sub_24085D1A0;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_24085D1A0()
{
  v41 = v0;
  v1 = v0[41];
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  if (v4)
  {
    v38 = v0[29];
    v11 = swift_slowAlloc();
    v36 = v3;
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315138;
    sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610]);
    v13 = sub_2408D5220();
    v37 = v5;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_2408CC504(v13, v15, &v40);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v2, v36, "Generated report: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);

    (*(v6 + 8))(v37, v38);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
  }

  v18 = v0[44];
  v17 = v0[45];
  v19 = v0[28];
  v20 = v0[24];
  v21 = v0[12];
  (*(v0[21] + 32))(v21, v0[23], v0[20]);
  v22 = *MEMORY[0x277CED5F0];
  v23 = sub_2408D3DA0();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  v18(v19, v20);
  v24 = v0[38];
  v25 = v0[34];
  v26 = v0[35];
  v27 = v0[31];
  v29 = v0[27];
  v28 = v0[28];
  v30 = v0[26];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[19];
  v39 = v0[18];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24085D4AC()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[28];
  v4 = v0[24];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2(v3, v4);
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[19];
  v17 = v0[18];
  v18 = v0[51];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24085D5CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(v4 + 432) = v1;

  v7 = *(v4 + 120);
  if (v1)
  {
    v8 = sub_24085D86C;
  }

  else
  {
    *(v4 + 440) = a1 & 1;
    v8 = sub_24085D70C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24085D70C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 96);
  v3 = *(v0 + 264) + 8;
  (*(v0 + 416))(*(v0 + 280), *(v0 + 256));
  *v2 = v1;
  v4 = *MEMORY[0x277CED5E8];
  v5 = sub_2408D3DA0();
  (*(*(v5 - 8) + 104))(v2, v4, v5);
  v6 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 152);
  v18 = *(v0 + 144);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24085D86C()
{
  v1 = *(v0 + 264) + 8;
  (*(v0 + 416))(*(v0 + 280), *(v0 + 256));
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 152);
  v14 = *(v0 + 144);
  v15 = *(v0 + 432);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24085D97C(uint64_t a1, uint64_t a2)
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
  v7 = sub_2408D48A0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24085DAA8, v2, 0);
}

uint64_t sub_24085DAA8()
{
  v64 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507280);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v13 = 136315138;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 8);
    v19(v10, v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_2408CC504(v20, v17, &v63);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Received symptom to repair: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x245CC9F60](v61, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v22 = v12;
    v19 = *(v11 + 8);
    v19(v10, v22);
  }

  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  v26 = v0[2];
  sub_2408D4840();
  v27 = (*(v23 + 88))(v24, v25);
  if (v27 == *MEMORY[0x277CEDD80])
  {
    v28 = v0[7];
    (*(v0[6] + 96))(v28, v0[5]);
    v29 = *v28;

    v30 = sub_2408D4B10();
    v31 = sub_2408D4F30();

    if (!os_log_type_enabled(v30, v31))
    {

      goto LABEL_23;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v34 = sub_2408D4EF0();
    v36 = v35;

    v37 = sub_2408CC504(v34, v36, &v63);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_2407CF000, v30, v31, "Not expected to receive missing services: %s symptom request", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x245CC9F60](v33, -1, -1);
    v38 = v32;
LABEL_9:
    MEMORY[0x245CC9F60](v38, -1, -1);

LABEL_23:
    v58 = v0[10];
    v57 = v0[11];
    v59 = v0[7];

    v60 = v0[1];

    return v60(0);
  }

  if (v27 != *MEMORY[0x277CEDD88])
  {
    if (v27 != *MEMORY[0x277CEDD90])
    {
      v6(v0[10], v0[2], v0[8]);
      v46 = sub_2408D4B10();
      v47 = sub_2408D4F30();
      v48 = os_log_type_enabled(v46, v47);
      v50 = v0[9];
      v49 = v0[10];
      v51 = v0[8];
      if (v48)
      {
        v52 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = v62;
        *v52 = 136315138;
        sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
        v53 = sub_2408D5220();
        v55 = v54;
        v19(v49, v51);
        v56 = sub_2408CC504(v53, v55, &v63);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_2407CF000, v46, v47, "Failed to repair symptom: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x245CC9F60](v62, -1, -1);
        MEMORY[0x245CC9F60](v52, -1, -1);
      }

      else
      {

        v19(v49, v51);
      }

      (*(v0[6] + 8))(v0[7], v0[5]);
      goto LABEL_23;
    }

    v30 = sub_2408D4B10();
    v44 = sub_2408D4F30();
    if (!os_log_type_enabled(v30, v44))
    {

      goto LABEL_23;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2407CF000, v30, v44, "Not expected to receive CK loss symptom request (this goes through auth instead)", v45, 2u);
    v38 = v45;
    goto LABEL_9;
  }

  v39 = swift_task_alloc();
  v0[12] = v39;
  *v39 = v0;
  v39[1] = sub_24085E178;
  v40 = v0[3];
  v41 = v0[4];
  v42 = v0[2];

  return sub_24085E3BC(v42, v40);
}

uint64_t sub_24085E178(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_24085E340;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v8 = sub_24085E2B8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24085E2B8()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_24085E340()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4(0);
}

uint64_t sub_24085E3BC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_2408D38D0();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D30, &unk_2408D80C0);
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v11 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_24085E568, v11, v10);
}

uint64_t sub_24085E568()
{
  v1 = v0[28];
  v2 = v0[19];
  sub_2408D3D10();
  v0[29] = 0;
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_24085E5F8, v3, 0);
}

uint64_t sub_24085E5F8()
{
  v89 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = sub_2408D3C30();
  v0[30] = v4;
  (*(v1 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[25];
    v6 = v0[18];
    sub_2408D4890();
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v8 = v0[24];
    v7 = v0[25];
    v10 = v0[21];
    v9 = v0[22];
    v11 = sub_2408D4B20();
    v0[31] = __swift_project_value_buffer(v11, qword_27E507280);
    v85 = *(v9 + 16);
    v85(v8, v7, v10);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F10();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[24];
    v17 = v0[21];
    v16 = v0[22];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v18 = 136315138;
      sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
      v19 = v4;
      v20 = sub_2408D5220();
      v82 = v13;
      v22 = v21;
      v23 = v17;
      v24 = *(v16 + 8);
      v24(v15, v23);
      v25 = v20;
      v4 = v19;
      v26 = sub_2408CC504(v25, v22, v88);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_2407CF000, v12, v82, "Repairing CDP symptom for account: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x245CC9F60](v83, -1, -1);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    else
    {

      v33 = v17;
      v24 = *(v16 + 8);
      v24(v15, v33);
    }

    v0[32] = v24;
    v34 = v0[25];
    sub_2408D38B0();
    v35 = sub_2408D4D00();

    v36 = [objc_opt_self() contextForAccountWithAltDSID_];
    v0[33] = v36;

    if (v36)
    {
      v86 = v24;
      v37 = v4;
      v38 = v36;
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F20();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412546;
        *(v41 + 4) = v37;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v38;
        *v42 = v4;
        v42[1] = v36;
        v43 = v37;
        v44 = v38;
        _os_log_impl(&dword_2407CF000, v39, v40, "Adding message session template: %@ to context: %@", v41, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB0, &unk_2408D6830);
        swift_arrayDestroy();
        MEMORY[0x245CC9F60](v42, -1, -1);
        MEMORY[0x245CC9F60](v41, -1, -1);
      }

      [v38 setSharingChannel_];
      v45 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
      v0[34] = v45;
      if (v45)
      {
        v46 = v45;
        v47 = v45;
        v48 = sub_2408D4B10();
        v49 = sub_2408D4F20();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          *(v50 + 4) = v47;
          *v51 = v46;
          v52 = v47;
          _os_log_impl(&dword_2407CF000, v48, v49, "Calling to perform CDP repair: %@", v50, 0xCu);
          sub_2407D9440(v51, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v51, -1, -1);
          MEMORY[0x245CC9F60](v50, -1, -1);
        }

        v0[2] = v0;
        v0[7] = v0 + 36;
        v0[3] = sub_24085F134;
        v53 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_24085F49C;
        v0[13] = &block_descriptor_3;
        v0[14] = v53;
        [v47 repairCloudDataProtectionStateWithCompletion_];

        return MEMORY[0x282200938](v0 + 2);
      }

      v66 = sub_2408D4B10();
      v67 = sub_2408D4F30();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_2407CF000, v66, v67, "Failed to init CDPStateController", v68, 2u);
        MEMORY[0x245CC9F60](v68, -1, -1);
      }

      v69 = v0[25];
      v70 = v0[21];
      v71 = v0[22];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
      sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
      swift_allocError();
      *v72 = 0xD000000000000012;
      *(v72 + 8) = 0x80000002408DA380;
      *(v72 + 16) = 0;
      swift_willThrow();

      v86(v69, v70);
    }

    else
    {
      v84 = v4;
      v85(v0[23], v0[25], v0[21]);
      v54 = sub_2408D4B10();
      v55 = sub_2408D4F30();
      v56 = os_log_type_enabled(v54, v55);
      v58 = v0[22];
      v57 = v0[23];
      v59 = v0[21];
      if (v56)
      {
        v60 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88[0] = v87;
        *v60 = 136315138;
        sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
        v61 = sub_2408D5220();
        v62 = v24;
        v64 = v63;
        v62(v57, v59);
        v65 = sub_2408CC504(v61, v64, v88);
        v24 = v62;

        *(v60 + 4) = v65;
        _os_log_impl(&dword_2407CF000, v54, v55, "Failed to build CDP context for account: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        MEMORY[0x245CC9F60](v87, -1, -1);
        MEMORY[0x245CC9F60](v60, -1, -1);
      }

      else
      {

        v24(v57, v59);
      }

      v73 = v0[25];
      v74 = v0[21];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
      sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
      swift_allocError();
      *v75 = xmmword_2408D7D10;
      *(v75 + 16) = 0;
      swift_willThrow();

      v24(v73, v74);
    }
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v27 = sub_2408D4B20();
    __swift_project_value_buffer(v27, qword_27E507280);
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F30();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2407CF000, v28, v29, "Failed to get message session template", v30, 2u);
      MEMORY[0x245CC9F60](v30, -1, -1);
    }

    v31 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277CED450], v31);
    swift_willThrow();
  }

  v76 = v0[28];
  v78 = v0[24];
  v77 = v0[25];
  v79 = v0[23];

  v80 = v0[1];

  return v80(0);
}

uint64_t sub_24085F0A8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_24085F134()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_24085F3B8;
  }

  else
  {
    v5 = sub_24085F254;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24085F254()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 288);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 240);
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished repairing CDP with result: %{BOOL}d", v9, 8u);
    MEMORY[0x245CC9F60](v9, -1, -1);
    v10 = v3;
  }

  else
  {
    v10 = *(v0 + 264);
    v6 = v3;
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v13 = *(v0 + 184);
  v14 = *(v0 + 176) + 8;
  (*(v0 + 256))(*(v0 + 200), *(v0 + 168));

  v15 = *(v0 + 8);

  return v15(v2);
}

uint64_t sub_24085F3B8()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[22];
  swift_willThrow();

  v4(v6, v7);
  v9 = v0[35];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_24085F49C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24085F568()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E5073D0);
  __swift_project_value_buffer(v0, qword_27E5073D0);
  return sub_2408D4940();
}

uint64_t sub_24085F5B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E50, &unk_2408D6ED0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
  (*(v1 + 104))(v4, *MEMORY[0x277CED808], v0);
  result = sub_2408D41F0();
  qword_27E5073E8 = result;
  return result;
}

uint64_t sub_24085F6AC()
{
  result = sub_2408D4A20();
  qword_28130F630 = result;
  *algn_28130F638 = v1;
  return result;
}

uint64_t sub_24085F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_2408D43B0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507698, &unk_2408D8378);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = sub_2408D4B20();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24085F8B4, 0, 0);
}

uint64_t sub_24085F8B4()
{
  v49 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[3];
  v6 = v0[4];
  sub_2408D4900();
  v7 = *(v4 + 16);
  v0[22] = v7;
  v0[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = v7;
  v7(v2, v5, v3);

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v44 = v0[18];
    v45 = v0[17];
    v46 = v0[21];
    v10 = v0[15];
    v41 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    v42 = v9;
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v14 = 136315394;
    v0[2] = v13;
    sub_2408D4B70();

    v15 = sub_2408D4D40();
    v17 = sub_2408CC504(v15, v16, &v48);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v47(v10, v41, v11);
    v18 = sub_2408D4D40();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v41, v11);
    v22 = sub_2408CC504(v18, v20, &v48);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2407CF000, v8, v42, "Sending coordinated model update to session (%s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v43, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);

    v23 = *(v44 + 8);
    v23(v46, v45);
  }

  else
  {
    v24 = v0[21];
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[16];
    v28 = v0[12];
    v29 = v0[13];

    v21 = *(v29 + 8);
    v21(v27, v28);
    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v0[24] = v21;
  v0[25] = v23;
  v30 = v0[10];
  v31 = v0[5];
  v32 = v0[6];
  v47(v30, v0[3], v0[12]);
  (*(v32 + 104))(v30, *MEMORY[0x277CED9B0], v31);
  v33 = *(MEMORY[0x277CEDE38] + 4);
  v34 = swift_task_alloc();
  v0[26] = v34;
  v35 = MEMORY[0x277CED9D8];
  sub_2408763D8(&qword_27E507410, 255, MEMORY[0x277CED9D8]);
  sub_2408763D8(&qword_27E5073F8, 255, v35);
  *v34 = v0;
  v34[1] = sub_24085FC7C;
  v37 = v0[10];
  v36 = v0[11];
  v39 = v0[4];
  v38 = v0[5];

  return MEMORY[0x282140020](v36, v37);
}

uint64_t sub_24085FC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[10];
  v6 = v2[6];
  v7 = v2[5];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = sub_240860394;
  }

  else
  {
    v2[28] = v9;
    v2[29] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_24085FDFC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_24085FDFC()
{
  v89 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v5 + 16);
  v6(v3, v0[11], v4);
  LODWORD(v5) = (*(v5 + 88))(v3, v4);
  v7 = *MEMORY[0x277CED9D0];
  v2(v3, v4);
  if (v5 == v7)
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[20];
    v11 = v0[14];
    v12 = v0[12];
    v13 = v0[3];
    sub_2408D4900();
    v9(v11, v13, v12);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[24];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      v22 = sub_2408D3CA0() & 1;
      v17(v18, v20);
      *(v21 + 4) = v22;
      _os_log_impl(&dword_2407CF000, v14, v15, "Sent model update and received receipt back (expectsResponse: %{BOOL}d)", v21, 8u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    else
    {
      v17(v0[14], v0[12]);
    }

    v44 = v14;
    v45 = v0[28];
    v46 = v0[29];
    v47 = v0[25];
    v49 = v0[20];
    v48 = v0[21];
    v50 = v0[18];
    v51 = v0[17];
    v73 = v0[19];
    v74 = v0[16];
    v76 = v0[15];
    v78 = v0[14];
    v52 = v0[11];
    v80 = v0[10];
    v82 = v0[9];
    v84 = v0[8];
    v87 = v0[7];
    v53 = v0[5];

    v47(v49, v51);
    v45(v52, v53);

    v54 = v0[1];
  }

  else
  {
    v23 = v0[19];
    v24 = v0[11];
    v25 = v0[8];
    v26 = v0[5];
    sub_2408D4900();
    v6(v25, v24, v26);
    v27 = sub_2408D4B10();
    v28 = sub_2408D4F30();
    v29 = os_log_type_enabled(v27, v28);
    v83 = v0[28];
    v86 = v0[29];
    v30 = v0[25];
    v32 = v0[18];
    v31 = v0[19];
    v33 = v0[17];
    v34 = v0[8];
    if (v29)
    {
      v79 = v0[18];
      v81 = v0[17];
      v35 = v0[7];
      v36 = v0[5];
      v77 = v0[19];
      v37 = swift_slowAlloc();
      v75 = v30;
      v38 = swift_slowAlloc();
      v88 = v38;
      *v37 = 136315138;
      v6(v35, v34, v36);
      v39 = sub_2408D4D40();
      v40 = v28;
      v42 = v41;
      v83(v34, v36);
      v43 = sub_2408CC504(v39, v42, &v88);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_2407CF000, v27, v40, "Failed to send model update via session, got unexpected response back: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x245CC9F60](v38, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);

      v75(v77, v81);
    }

    else
    {
      v55 = v0[5];

      v83(v34, v55);
      v30(v31, v33);
    }

    v57 = v0[28];
    v56 = v0[29];
    v58 = v0[11];
    v59 = v0[5];
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00);
    swift_allocError();
    *v61 = 0xD000000000000031;
    v61[1] = 0x80000002408DAEE0;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277CED518], v60);
    swift_willThrow();
    v57(v58, v59);
    v63 = v0[20];
    v62 = v0[21];
    v64 = v0[19];
    v66 = v0[15];
    v65 = v0[16];
    v67 = v0[14];
    v69 = v0[10];
    v68 = v0[11];
    v70 = v0[8];
    v71 = v0[9];
    v85 = v0[7];

    v54 = v0[1];
  }

  return v54();
}

uint64_t sub_240860394()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v13 = v0[7];
  v14 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240860488(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v4[7] = a1;
  v6 = sub_2408D3990();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v4;
  v9[1] = sub_2408605AC;

  return sub_240860BE4(a1, a2);
}

uint64_t sub_2408605AC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2408606FC, 0, 0);
  }

  else
  {
    v5 = v3[11];
    v4 = v3[12];
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2408606FC()
{
  v1 = *(v0 + 112);
  *(v0 + 40) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 72) + 88))(*(v0 + 96), *(v0 + 64));
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    if (v5 == *MEMORY[0x277CED458])
    {
      v8 = v5;
      v9 = *(v0 + 56);

      (*(v7 + 104))(v9, v8, v6);
      v10 = *MEMORY[0x277CED9C8];
      v11 = sub_2408D43B0();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v9, v10, v11);
      (*(v12 + 56))(v9, 0, 1, v11);

      goto LABEL_11;
    }

    (*(v7 + 8))(*(v0 + 96), *(v0 + 64));
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 88);

  swift_getErrorValue();
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  v17 = *(v0 + 32);
  sub_2408D52B0();
  if (qword_27E506938 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 112);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = sub_2408D4B20();
  __swift_project_value_buffer(v23, qword_27E5073D0);
  v24 = *(v22 + 16);
  v24(v20, v19, v21);
  v25 = v18;
  v26 = sub_2408D4B10();
  v27 = sub_2408D4F20();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 112);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 64);
  if (v28)
  {
    v33 = swift_slowAlloc();
    v48 = v24;
    v34 = swift_slowAlloc();
    *v33 = 138412546;
    v35 = v29;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    *(v33 + 12) = 2112;
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    v49 = v29;
    v48(v37, v31, v32);
    v38 = _swift_stdlib_bridgeErrorToNSError();
    (*(v30 + 8))(v31, v32);
    *(v33 + 14) = v38;
    v34[1] = v38;
    _os_log_impl(&dword_2407CF000, v26, v27, "Caught and converting error %@ to repair error: %@", v33, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB0, &unk_2408D6830);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v34, -1, -1);
    MEMORY[0x245CC9F60](v33, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v31, v32);
  }

  v39 = *(v0 + 56);
  (*(*(v0 + 72) + 32))(v39, *(v0 + 88), *(v0 + 64));
  v40 = *MEMORY[0x277CED9C8];
  v41 = sub_2408D43B0();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v39, v40, v41);
  (*(v42 + 56))(v39, 0, 1, v41);
LABEL_11:
  v44 = *(v0 + 88);
  v43 = *(v0 + 96);
  v45 = *(v0 + 80);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_240860BE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507658, &qword_2408D8338);
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
  v10 = sub_2408D3EC0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_2408D3C80();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_2408D3A30();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v19 = sub_2408D43B0();
  v3[21] = v19;
  v20 = *(v19 - 8);
  v3[22] = v20;
  v21 = *(v20 + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = sub_2408D3490();
  v3[24] = v22;
  v23 = *(v22 - 8);
  v3[25] = v23;
  v24 = *(v23 + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240860EE8, 0, 0);
}

uint64_t sub_240860EE8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v2 + 104))(v1, *MEMORY[0x277CED1F8], v3);
  v4 = sub_2408D3480();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    (*(v6 + 16))(v5, v0[3], v7);
    v8 = (*(v6 + 88))(v5, v7);
    if (v8 == *MEMORY[0x277CED9C0])
    {
      v9 = v0[23];
      v10 = v0[20];
      v11 = v0[17];
      v12 = v0[18];
      (*(v0[22] + 96))(v9, v0[21]);
      (*(v12 + 32))(v10, v9, v11);
      v13 = swift_task_alloc();
      v0[27] = v13;
      *v13 = v0;
      v13[1] = sub_2408614AC;
      v14 = v0[20];
      v15 = v0[16];
      v16 = v0[4];

      return sub_240861F9C(v15, v14);
    }

    if (v8 == *MEMORY[0x277CED9A8])
    {
      v32 = v0[23];
      v34 = v0[18];
      v33 = v0[19];
      v35 = v0[17];
      v36 = v0[10];
      v37 = v0[4];
      (*(v0[22] + 96))(v32, v0[21]);
      (*(v34 + 32))(v33, v32, v35);
      v38 = sub_2408644E4();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v0[29] = v38;
      v0[30] = v39;
      v0[31] = v41;
      v0[32] = v43;
      sub_2408D3A10();
      v45 = swift_task_alloc();
      v0[33] = v45;
      *v45 = v0;
      v45[1] = sub_240861718;
      v46 = v0[13];
      v47 = v0[10];

      return sub_2408CE818(v46, v47, v38, v40, v42, v44);
    }

    if (v8 == *MEMORY[0x277CED9B8])
    {
      v48 = v0[23];
      v50 = v0[6];
      v49 = v0[7];
      v52 = v0[4];
      v51 = v0[5];
      (*(v0[22] + 96))(v48, v0[21]);
      (*(v50 + 32))(v49, v48, v51);
      v53 = *(v52 + 56);
      v54 = *(MEMORY[0x277CED878] + 4);
      v68 = (*MEMORY[0x277CED878] + MEMORY[0x277CED878]);
      v55 = swift_task_alloc();
      v0[35] = v55;
      *v55 = v0;
      v55[1] = sub_240861A14;
      v56 = v0[7];

      return v68(v56);
    }

    v58 = v0[22];
    v57 = v0[23];
    v59 = v0[21];
    (*(v58 + 56))(v0[2], 1, 1, v59);
    (*(v58 + 8))(v57, v59);
    v60 = v0[26];
    v61 = v0[23];
    v63 = v0[19];
    v62 = v0[20];
    v64 = v0[16];
    v65 = v0[13];
    v66 = v0[10];
    v67 = v0[7];

    v31 = v0[1];
  }

  else
  {
    if (qword_27E506938 != -1)
    {
      swift_once();
    }

    v18 = sub_2408D4B20();
    __swift_project_value_buffer(v18, qword_27E5073D0);
    v19 = sub_2408D4B10();
    v20 = sub_2408D4F30();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v19, v20, "Not allowing mach repair service calls, disabled", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    sub_240876078();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    swift_willThrow();
    v23 = v0[26];
    v24 = v0[23];
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[16];
    v28 = v0[13];
    v29 = v0[10];
    v30 = v0[7];

    v31 = v0[1];
  }

  return v31();
}

uint64_t sub_2408614AC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_240861DB0;
  }

  else
  {
    v3 = sub_2408615C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408615C0()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[2];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v4 + 32))(v6, v3, v5);
  (*(v2 + 104))(v6, *MEMORY[0x277CED998], v1);
  (*(v2 + 56))(v6, 0, 1, v1);
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_240861718()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 272) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_240861E94;
  }

  else
  {
    v6 = sub_240861888;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_240861888()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 176);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 96);
  v21 = *(v0 + 104);
  v22 = *(v0 + 168);
  v20 = *(v0 + 88);
  v9 = *(v0 + 16);

  (*(v6 + 8))(v5, v7);
  (*(v8 + 32))(v9, v21, v20);
  (*(v4 + 104))(v9, *MEMORY[0x277CED9A0], v22);
  (*(v4 + 56))(v9, 0, 1, v22);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v13 = *(v0 + 152);
  v12 = *(v0 + 160);
  v14 = *(v0 + 128);
  v15 = *(v0 + 104);
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_240861A14(char a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_240861B14, 0, 0);
}

uint64_t sub_240861B14()
{
  v29 = v0;
  if (qword_27E506938 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E5073D0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = 0x6465747065636361;
    }

    else
    {
      v10 = 0x64657463656A6572;
    }

    v11 = sub_2408CC504(v10, 0xE800000000000000, &v28);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v2, v3, "Model update was %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v17 = *(v0 + 16);
  (*(v16 + 104))(v17, *MEMORY[0x277CED9D0], v15);
  (*(v16 + 56))(v17, 0, 1, v15);
  v18 = *(v0 + 208);
  v19 = *(v0 + 184);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v25 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_240861DB0()
{
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_240861E94()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 272);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_240861F9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3A30();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240862060, 0, 0);
}

uint64_t sub_240862060()
{
  v24 = v0;
  if (qword_27E506938 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  v0[8] = __swift_project_value_buffer(v5, qword_27E5073D0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_2408763D8(&qword_27E507650, 255, MEMORY[0x277CED4A0]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Performing repair with model: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_2408622DC;
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[2];

  return sub_240862578(v21, v19);
}

uint64_t sub_2408622DC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240862418, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_240862418()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to perform repair with error: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[10];

  return v13();
}

uint64_t sub_240862578(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v4 = sub_2408D35F0();
  v3[62] = v4;
  v5 = *(v4 - 8);
  v3[63] = v5;
  v6 = *(v5 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v7 = sub_2408D4FD0();
  v3[66] = v7;
  v8 = *(v7 - 8);
  v3[67] = v8;
  v9 = *(v8 + 64) + 15;
  v3[68] = swift_task_alloc();
  v10 = sub_2408D4FC0();
  v3[69] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v12 = *(*(sub_2408D4C70() - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v13 = sub_2408D34E0();
  v3[72] = v13;
  v14 = *(v13 - 8);
  v3[73] = v14;
  v15 = *(v14 + 64) + 15;
  v3[74] = swift_task_alloc();
  v16 = sub_2408D3630();
  v3[75] = v16;
  v17 = *(v16 - 8);
  v3[76] = v17;
  v18 = *(v17 + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v19 = sub_2408D3C80();
  v3[79] = v19;
  v20 = *(v19 - 8);
  v3[80] = v20;
  v21 = *(v20 + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030) - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v23 = *(*(sub_2408D4260() - 8) + 64) + 15;
  v3[85] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v3[86] = v24;
  v25 = *(v24 - 8);
  v3[87] = v25;
  v26 = *(v25 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240862910, 0, 0);
}

uint64_t sub_240862910()
{
  v0[90] = *(v0[61] + 56);
  v1 = *(MEMORY[0x277CED868] + 4);
  v5 = (*MEMORY[0x277CED868] + MEMORY[0x277CED868]);
  v2 = swift_task_alloc();
  v0[91] = v2;
  *v2 = v0;
  v2[1] = sub_2408629C4;
  v3 = v0[60];

  return v5(v3);
}

uint64_t sub_2408629C4()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[89];
    v6 = v2[88];
    v7 = v2[85];
    v8 = v2[84];
    v9 = v2[83];
    v10 = v2[82];
    v11 = v2[81];
    v12 = v2[78];
    v13 = v2[77];
    v17 = v2[74];
    v18 = v2[71];
    v19 = v2[70];
    v20 = v2[68];
    v21 = v2[65];
    v14 = v2[64];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_240862BE8, 0, 0);
  }
}

id sub_240862BE8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = sub_2408644E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v0 + 736) = v3;
  *(v0 + 744) = v4;
  *(v0 + 752) = v6;
  *(v0 + 760) = v8;
  v134 = objc_opt_self();
  v10 = [v134 sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v125 = v3;
  v127 = v5;
  v130 = v7;
  v138 = v9;
  v13 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v14 = sub_2408D4150();
  *(v0 + 16) = sub_2408D4140();
  v15 = MEMORY[0x277CED7C0];
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  v109 = type metadata accessor for LocalSetupService();
  v16 = swift_allocObject();
  *(v0 + 768) = v16;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v16 + 56) = v10;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 112) = 0;
  *(v16 + 120) = sub_2407FF270;
  *(v16 + 64) = v13;
  v140 = v16;
  sub_2407D2554((v0 + 16), v16 + 72);
  if (qword_27E506940 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 712);
  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 672);
  v21 = *(v0 + 624);
  v110 = *(v0 + 680);
  v112 = *(v0 + 608);
  v115 = *(v0 + 592);
  v117 = *(v0 + 600);
  v119 = *(v0 + 584);
  v121 = *(v0 + 576);
  v22 = *(v0 + 488);
  v114 = *(v0 + 480);
  v23 = qword_27E5073E8;
  type metadata accessor for ProximityTransportConnector();
  v24 = swift_allocObject();
  *(v0 + 776) = v24;

  swift_defaultActor_initialize();
  *(v24 + 152) = 0;
  *(v24 + 136) = 0u;
  *(v24 + 120) = 0u;
  *(v24 + 112) = v23;
  sub_2408763D8(&qword_27E506EA0, 255, type metadata accessor for ProximityTransportConnector);
  v136 = v24;
  sub_2408D4280();
  sub_2408D3F40();
  v108 = *(v18 + 16);
  v108(v20, v17, v19);
  v25 = *(v18 + 56);
  *(v0 + 784) = v25;
  *(v0 + 792) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v129 = v25;
  v25(v20, 0, 1, v19);
  swift_beginAccess();
  sub_2408C70EC(v20, v110);
  swift_endAccess();
  sub_2408D39B0();
  sub_2408D3580();
  v26 = *(v112 + 8);
  v26(v21, v117);
  v27 = (*(v119 + 88))(v115, v121);
  if (v27 != *MEMORY[0x277CED250] && v27 != *MEMORY[0x277CED240] && v27 != *MEMORY[0x277CED248])
  {
    if (v27 == *MEMORY[0x277CED230])
    {
      v28 = *(v0 + 616);
      v29 = *(v0 + 600);
      v30 = *(v0 + 520);
      v32 = *(v0 + 504);
      v31 = *(v0 + 512);
      v33 = *(v0 + 496);
      v34 = *(v0 + 480);
      sub_2408D39B0();
      sub_2408D3610();
      v26(v28, v29);
      (*(v32 + 104))(v31, *MEMORY[0x277CED350], v33);
      LOBYTE(v34) = sub_2408D35E0();
      v35 = *(v32 + 8);
      v35(v31, v33);
      v35(v30, v33);
      if (v34)
      {
        if (qword_27E506938 != -1)
        {
          swift_once();
        }

        v36 = sub_2408D4B20();
        __swift_project_value_buffer(v36, qword_27E5073D0);
        v37 = sub_2408D4B10();
        v38 = sub_2408D4F40();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2407CF000, v37, v38, "This configuration (remote restricted) is not supported for repair yet", v39, 2u);
          MEMORY[0x245CC9F60](v39, -1, -1);
        }

        v122 = *(v0 + 712);
        v40 = *(v0 + 696);
        v41 = *(v0 + 688);
        v42 = *(v0 + 680);
        v43 = *(v0 + 672);
        v44 = *(v0 + 592);
        v45 = *(v0 + 584);
        v46 = *(v0 + 576);

        v47 = sub_2408D3990();
        sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
        swift_allocError();
        *v48 = 0xD000000000000010;
        v48[1] = 0x80000002408DAD70;
        (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277CED440], v47);
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        v49 = v122;
        sub_2408D3F40();
        v129(v43, 1, 1, v41);
        swift_beginAccess();
        sub_2408C70EC(v43, v42);
LABEL_21:
        swift_endAccess();

        (*(v40 + 8))(v49, v41);
        v61 = *(v0 + 712);
        v62 = *(v0 + 704);
        v63 = *(v0 + 680);
        v64 = *(v0 + 672);
        v65 = *(v0 + 664);
        v66 = *(v0 + 656);
        v67 = *(v0 + 648);
        v68 = *(v0 + 624);
        v69 = *(v0 + 616);
        v70 = *(v0 + 592);
        v132 = *(v0 + 568);
        v133 = *(v0 + 560);
        v137 = *(v0 + 544);
        v139 = *(v0 + 520);
        v141 = *(v0 + 512);

        v71 = *(v0 + 8);

        return v71();
      }

LABEL_16:
      if (qword_27E506938 != -1)
      {
        swift_once();
      }

      v50 = sub_2408D4B20();
      __swift_project_value_buffer(v50, qword_27E5073D0);
      v51 = sub_2408D4B10();
      v52 = sub_2408D4F30();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2407CF000, v51, v52, "Repair is not supported for this remote role", v53, 2u);
        MEMORY[0x245CC9F60](v53, -1, -1);
      }

      v123 = *(v0 + 712);
      v40 = *(v0 + 696);
      v41 = *(v0 + 688);
      v54 = *(v0 + 680);
      v55 = *(v0 + 672);
      v56 = *(v0 + 592);
      v57 = *(v0 + 584);
      v58 = *(v0 + 576);

      v59 = sub_2408D3990();
      sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
      swift_allocError();
      *v60 = 0xD000000000000017;
      v60[1] = 0x80000002408DAD50;
      (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277CED440], v59);
      swift_willThrow();
      (*(v57 + 8))(v56, v58);
      v49 = v123;
      sub_2408D3F40();
      v129(v55, 1, 1, v41);
      swift_beginAccess();
      sub_2408C70EC(v55, v54);
      goto LABEL_21;
    }

    if (v27 != *MEMORY[0x277CED258] && v27 != *MEMORY[0x277CED238])
    {
      goto LABEL_16;
    }
  }

  v116 = *(v0 + 704);
  v118 = *(v0 + 680);
  v120 = *(v0 + 688);
  v124 = *(v0 + 672);
  v104 = *(v0 + 568);
  v105 = *(v0 + 560);
  v72 = *(v0 + 552);
  v106 = *(v0 + 536);
  v111 = *(v0 + 544);
  v113 = *(v0 + 528);
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  v73 = [v134 sharedInstance];
  v74 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v75 = sub_2408D46B0();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  v78 = sub_2408D46A0();
  v79 = MEMORY[0x277CEDCC0];
  *(v0 + 80) = v75;
  *(v0 + 88) = v79;
  *(v0 + 56) = v78;
  v80 = sub_2408D4140();
  *(v0 + 120) = v14;
  *(v0 + 128) = MEMORY[0x277CED7C0];
  *(v0 + 96) = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  v84 = swift_allocObject();
  *(v0 + 800) = v84;
  swift_defaultActor_initialize();
  *(v84 + 15) = 0;
  v85 = MEMORY[0x277D84FA0];
  *(v84 + 23) = MEMORY[0x277D84FA0];
  *(v84 + 24) = v85;
  *(v84 + 30) = 0;
  *(v84 + 31) = 0;
  v86 = MEMORY[0x277D84F90];
  *(v84 + 32) = sub_2407F5454(MEMORY[0x277D84F90]);
  v87 = *(*v84 + 208);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  (*(*(v88 - 8) + 56))(&v84[v87], 1, 1, v88);
  *(v84 + 14) = v140;
  *(v84 + 16) = v74;
  *(v84 + 17) = v73;
  swift_beginAccess();
  v89 = *(v84 + 15);
  *(v84 + 15) = v136;

  sub_2407D2554((v0 + 56), (v84 + 200));
  sub_2407D2554((v0 + 96), (v84 + 144));

  v126 = v125;
  v128 = v127;
  v131 = v130;

  v107 = [v134 sharedInstance];
  v103 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507468, &qword_2408D7F10);
  v90 = *(v135 + 48);
  v91 = *(v135 + 52);
  v92 = swift_allocObject();
  *(v0 + 808) = v92;
  swift_defaultActor_initialize();
  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  *(v0 + 464) = v86;
  sub_2408763D8(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v106 + 104))(v111, *MEMORY[0x277D85260], v113);
  v93 = sub_2408D4FF0();

  *(v92 + 18) = 0;
  *(v92 + 14) = v93;
  *(v92 + 25) = 0;
  *(v92 + 26) = 0;
  v94 = *(*v92 + 200);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  (*(*(v95 - 8) + 56))(&v92[v94], 1, 1, v95);
  *(v92 + 15) = v140;
  *(v92 + 17) = v84;
  *(v92 + 19) = v103;
  *(v92 + 20) = v107;
  *(v92 + 21) = v126;
  *(v92 + 22) = v128;
  *(v92 + 23) = v131;
  *(v92 + 24) = v138;
  swift_beginAccess();
  *(v92 + 18) = v136;
  *(v0 + 160) = v109;
  *(v0 + 168) = sub_2408763D8(&qword_27E507470, 255, type metadata accessor for LocalSetupService);
  *(v0 + 136) = v140;
  type metadata accessor for LocalRepairService();
  v96 = swift_allocObject();
  v96[11] = 0;
  sub_2407D2554((v0 + 136), (v96 + 2));
  v96[7] = v126;
  v96[8] = v128;
  v96[9] = v131;
  v96[10] = v138;
  *(v92 + 16) = v96;
  sub_2407D917C(&qword_27E507478, &qword_27E507468, &qword_2408D7F10);

  v97 = v126;
  v98 = v128;
  v99 = v131;

  sub_2408D4280();
  sub_2408D3F40();
  v108(v124, v116, v120);
  v129(v124, 0, 1, v120);
  swift_beginAccess();
  sub_2408C70EC(v124, v118);
  swift_endAccess();
  v100 = swift_task_alloc();
  *(v0 + 816) = v100;
  *v100 = v0;
  v100[1] = sub_240863C98;
  v101 = *(v0 + 720);
  v102 = *(v0 + 656);

  return sub_240845250(v102, v101);
}

uint64_t sub_240863C98()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_240864238;
  }

  else
  {
    v3 = sub_240863DAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240863DAC()
{
  v55 = v0;
  v51 = v0[101];
  v53 = v0[100];
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[61];
  (*(v0[80] + 32))(v0[83], v0[82], v0[79]);
  sub_2408D3F40();
  v2(v7, 1, 1, v5);
  swift_beginAccess();
  sub_2408C70EC(v7, v6);
  swift_endAccess();

  v52 = *(v4 + 8);
  v52(v3, v5);
  if (qword_27E506938 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E5073D0);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[83];
    v13 = v0[81];
    v14 = v0[80];
    v15 = v0[79];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    (*(v14 + 16))(v13, v12, v15);
    v18 = sub_2408D4D40();
    v20 = sub_2408CC504(v18, v19, &v54);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2407CF000, v10, v11, "Finished setup with report: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  v32 = v0[98];
  v33 = v0[99];
  v38 = v0[97];
  v39 = v0[96];
  v36 = v0[94];
  v37 = v0[95];
  v34 = v0[92];
  v35 = v0[93];
  v21 = v0[89];
  v22 = v0[86];
  v23 = v0[85];
  v24 = v0[84];
  v25 = v0[83];
  v40 = v0[88];
  v41 = v0[82];
  v26 = v0[80];
  v27 = v0[79];
  v42 = v0[81];
  v43 = v0[78];
  v44 = v0[77];
  v45 = v0[74];
  v46 = v0[71];
  v47 = v0[70];
  v48 = v0[68];
  v49 = v0[65];
  v50 = v0[64];
  v28 = v0[61];
  v29 = v0[59];
  swift_beginAccess();
  (*(v26 + 16))(v29, v25, v27);
  (*(v26 + 8))(v25, v27);
  sub_2408D3F40();
  v32(v24, 1, 1, v22);
  swift_beginAccess();
  sub_2408C70EC(v24, v23);
  swift_endAccess();

  v52(v21, v22);

  v30 = v0[1];

  return v30();
}

uint64_t sub_240864238()
{
  v22 = v0[101];
  v23 = v0[100];
  v21 = v0[99];
  v1 = v0[98];
  v33 = v0[97];
  v35 = v0[96];
  v29 = v0[94];
  v31 = v0[95];
  v25 = v0[92];
  v27 = v0[93];
  v24 = v0[89];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[61];
  sub_2408D3F40();
  v1(v6, 1, 1, v4);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v8 = *(v3 + 8);
  v8(v2, v4);
  sub_2408D3F40();
  v1(v6, 1, 1, v4);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v8(v24, v4);
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[74];
  v26 = v0[71];
  v28 = v0[70];
  v30 = v0[68];
  v32 = v0[65];
  v34 = v0[64];
  v36 = v0[103];

  v19 = v0[1];

  return v19();
}

id sub_2408644E4()
{
  v1 = sub_2408D3C20();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = sub_2408D3630();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = *(v0 + 48);
  v17 = *(v0 + 64);
  v24[2] = v16;
  v24[1] = v17;
  sub_2408D39B0();
  sub_2408D3540();
  v18 = *(v9 + 8);
  v18(v15, v8);
  v25 = sub_2408D3AE0();
  v19 = *(v26 + 8);
  v20 = v7;
  v21 = v27;
  v19(v20, v27);
  sub_2408D39B0();
  sub_2408D3540();
  v18(v13, v8);
  v22 = sub_2408D3B20();
  v19(v5, v21);
  sub_24082A3C4(v22, v25);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240864758()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  return v0;
}

uint64_t sub_2408647A8()
{
  sub_240864758();

  return swift_deallocClassInstance();
}

double sub_24086484C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  sub_24083AB60(0, 0, v11, &unk_2408D7E68, v15);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_240864A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_2408C4014(a1, a2, WitnessTable);
}

uint64_t sub_240864AB0(uint64_t a1)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507420, &qword_2408D7EB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v74 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  v5 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  v90 = sub_2408D4BE0();
  v17 = *(v90 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v90);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v21 = sub_2408D4B20();
  v22 = __swift_project_value_buffer(v21, qword_27E507E50);
  v23 = *(v17 + 16);
  v23(v20, v89, v90);
  v82 = v22;
  v24 = sub_2408D4B10();
  LODWORD(v88) = sub_2408D4F20();
  v25 = os_log_type_enabled(v24, v88);
  v91 = v7;
  v80 = v23;
  v81 = v17 + 16;
  v83 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v86 = v26;
    v87 = swift_slowAlloc();
    *v26 = 138412290;
    sub_2408763D8(&qword_27E5073F0, 255, MEMORY[0x277D855E8]);
    v27 = v8;
    v28 = v90;
    swift_allocError();
    v23(v29, v20, v28);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    v31 = v28;
    v8 = v27;
    (*(v17 + 8))(v20, v31);
    v32 = v86;
    v33 = v87;
    *(v86 + 1) = v30;
    *v33 = v30;
    _os_log_impl(&dword_2407CF000, v24, v88, "Handling cancellation for error: %@", v32, 0xCu);
    sub_2407D9440(v33, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v32, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v90);
  }

  v88 = sub_240876184();
  v86 = *(v88 + 104);
  v87 = v88 + 104;
  v79 = (v8 + 32);
  *&v34 = 136315138;
  v74 = v34;
  v77 = (v8 + 8);
  v78 = (v8 + 16);
  v76 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  for (i = (v86)(v92, &type metadata for MachSetupService, v88); ; i = (v86)(v92, &type metadata for MachSetupService, v88))
  {
    v49 = i;
    v50 = *v36;
    if (*(*v36 + 16))
    {
      v51 = 0;
      v52 = (v50 + 64);
      v53 = 1 << *(v50 + 32);
      v54 = (v53 + 63) >> 6;
      while (1)
      {
        v56 = *v52++;
        v55 = v56;
        if (v56)
        {
          break;
        }

        v51 -= 64;
        if (!--v54)
        {
          goto LABEL_16;
        }
      }

      v53 = __clz(__rbit64(v55)) - v51;
LABEL_16:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      sub_2408C6844(v4, &v4[*(v58 + 48)], v53, *(v50 + 36));
      (*(*(v58 - 8) + 56))(v4, 0, 1, v58);
    }

    else
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      (*(*(v57 - 8) + 56))(v4, 1, 1, v57);
    }

    v49(v92, 0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
    if ((*(*(v59 - 8) + 48))(v4, 1, v59) == 1)
    {
      break;
    }

    v60 = *(v59 + 48);
    v61 = v85;
    v62 = *(v85 + 48);
    v63 = sub_2408D4260();
    v64 = *(v63 - 8);
    v65 = v84;
    (*(v64 + 32))(v84, v4, v63);
    v66 = *v79;
    v67 = &v65[v62];
    v45 = v91;
    (*v79)(v67, &v4[v60], v91);
    v66(v16, &v65[*(v61 + 48)], v45);
    v68 = v78;
    (*(v64 + 8))(v65, v63);
    v69 = *v68;
    v70 = v83;
    (*v68)(v83, v16, v45);
    v71 = sub_2408D4B10();
    v72 = sub_2408D4F20();
    if (os_log_type_enabled(v71, v72))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v92[0] = v38;
      *v37 = v74;
      v69(v75, v70, v91);
      v39 = sub_2408D4D40();
      v41 = v40;
      v42 = *v77;
      (*v77)(v70, v91);
      v43 = sub_2408CC504(v39, v41, v92);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_2407CF000, v71, v72, "Removed cancellable: %s and allowing it to handle cancellation", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x245CC9F60](v38, -1, -1);
      v44 = v37;
      v45 = v91;
      MEMORY[0x245CC9F60](v44, -1, -1);
    }

    else
    {

      v42 = *v77;
      (*v77)(v70, v45);
    }

    sub_2408763D8(&qword_27E5073F0, 255, MEMORY[0x277D855E8]);
    v46 = v90;
    v47 = swift_allocError();
    v80(v48, v89, v46);
    v92[0] = v47;
    sub_2408D3F30();
    v42(v16, v45);
  }

  return sub_2407D9440(v4, &qword_27E507420, &qword_2408D7EB0);
}

uint64_t sub_240865398(uint64_t a1)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507420, &qword_2408D7EB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v93 = &v77 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  v4 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v77 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v77 - v13;
  v14 = sub_2408D4BE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v19 = sub_2408D4B20();
  v20 = __swift_project_value_buffer(v19, qword_27E507E50);
  v22 = v15 + 16;
  v21 = *(v15 + 16);
  v21(v18, v89, v14);
  v84 = v20;
  v23 = sub_2408D4B10();
  v24 = sub_2408D4F20();
  v25 = os_log_type_enabled(v23, v24);
  v82 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v26 = 138412290;
    sub_2408763D8(&qword_27E5073F0, 255, MEMORY[0x277D855E8]);
    swift_allocError();
    v81 = v7;
    v27 = v24;
    v21(v28, v18, v14);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    (*(v15 + 8))(v18, v14);
    *(v26 + 4) = v29;
    v30 = v80;
    *v80 = v29;
    v31 = v27;
    v7 = v81;
    _os_log_impl(&dword_2407CF000, v23, v31, "Handling cancellation for error: %@", v26, 0xCu);
    sub_2407D9440(v30, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v30, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  else
  {

    v32 = (*(v15 + 8))(v18, v14);
  }

  v81 = v7 + 4;
  v33 = (v7 + 2);
  v32.n128_u64[0] = 136315138;
  v77 = v32;
  v80 = (v7 + 1);
  v79 = (v7 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = v14;
  v83 = v22;
  v92 = v6;
  while (1)
  {
    v48 = v90;
    swift_beginAccess();
    v49 = *(v48 + 32);
    if (*(v49 + 16))
    {
      v50 = 0;
      v51 = (v49 + 64);
      v52 = 1 << *(v49 + 32);
      v53 = (v52 + 63) >> 6;
      while (1)
      {
        v55 = *v51++;
        v54 = v55;
        if (v55)
        {
          break;
        }

        v50 -= 64;
        if (!--v53)
        {
          goto LABEL_16;
        }
      }

      v52 = __clz(__rbit64(v54)) - v50;
LABEL_16:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      v58 = v93;
      sub_2408C6844(v93, v93 + *(v57 + 48), v52, *(v49 + 36));
      (*(*(v57 - 8) + 56))(v58, 0, 1, v57);
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      (*(*(v56 - 8) + 56))(v93, 1, 1, v56);
    }

    swift_endAccess();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
    if ((*(*(v59 - 8) + 48))(v93, 1, v59) == 1)
    {
      return sub_2407D9440(v93, &qword_27E507420, &qword_2408D7EB0);
    }

    v60 = *(v59 + 48);
    v61 = v87;
    v62 = *(v87 + 48);
    v63 = sub_2408D4260();
    v64 = *(v63 - 8);
    v65 = v88;
    v66 = v33;
    v67 = v93;
    (*(v64 + 32))(v88, v93, v63);
    v68 = *v81;
    v69 = &v65[v62];
    v42 = v92;
    (*v81)(v69, v67 + v60, v92);
    v70 = v91;
    v68(v91, &v65[*(v61 + 48)], v42);
    (*(v64 + 8))(v65, v63);
    v71 = *v66;
    v72 = v86;
    v73 = v70;
    v33 = v66;
    (*v66)(v86, v73, v42);
    v74 = sub_2408D4B10();
    v75 = sub_2408D4F20();
    if (os_log_type_enabled(v74, v75))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v94 = v35;
      *v34 = v77.n128_u32[0];
      v71(v78, v72, v92);
      v36 = sub_2408D4D40();
      v38 = v37;
      v39 = *v80;
      (*v80)(v72, v92);
      v40 = sub_2408CC504(v36, v38, &v94);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2407CF000, v74, v75, "Removed cancellable: %s and allowing it to handle cancellation", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v41 = v35;
      v42 = v92;
      MEMORY[0x245CC9F60](v41, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);
    }

    else
    {

      v39 = *v80;
      (*v80)(v72, v42);
    }

    v43 = v82;
    sub_2408763D8(&qword_27E5073F0, 255, MEMORY[0x277D855E8]);
    v44 = v85;
    v45 = swift_allocError();
    v43(v46, v89, v44);
    v94 = v45;
    v47 = v91;
    sub_2408D3F30();

    v39(v47, v42);
  }
}

uint64_t (*sub_240865C64())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_240865D30()
{
  result = qword_27E507400;
  if (!qword_27E507400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507408, &qword_2408D7DF0);
    sub_2408763D8(&qword_27E507410, 255, MEMORY[0x277CED9D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507400);
  }

  return result;
}

uint64_t sub_240865DE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_2408763D8(&qword_27E507418, a2, type metadata accessor for MachRepairService);
  result = sub_2408763D8(&qword_27E506FA8, v3, type metadata accessor for MachRepairService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_240865E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507408, &qword_2408D7DF0);
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v8 = sub_2408D43B0();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = sub_2408D4B20();
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();
  v14 = sub_2408D4C40();
  v5[18] = v14;
  v15 = *(v14 - 8);
  v5[19] = v15;
  v16 = *(v15 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24086605C, 0, 0);
}

uint64_t sub_24086605C()
{
  v34 = v0;
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[4];
  v0[22] = __swift_project_value_buffer(v0[15], qword_27E507E50);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = v0[19];
    v11 = v0[20];
    v12 = v0[18];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315138;
    v5(v11, v9, v12);
    v14 = sub_2408D4D40();
    v16 = v15;
    (*(v10 + 8))(v9, v12);
    v17 = sub_2408CC504(v14, v16, &v33);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Handling incoming message: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
    v18 = v0[18];
    v19 = v0[19];

    (*(v19 + 8))(v9, v18);
  }

  v21 = v0[4];
  v20 = v0[5];
  v0[2] = v20;
  v0[23] = *(v20 + 24);

  v22 = sub_2408D4C10();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  v0[24] = v29;
  *(v29 + 16) = v21;
  *(v29 + 24) = v0 + 2;
  v30 = swift_task_alloc();
  v0[25] = v30;
  *v30 = v0;
  v30[1] = sub_240866320;

  return sub_24087A5F8(v22, v24, v26, v28, &unk_2408D7E98, v29);
}

uint64_t sub_240866320(char a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_24086645C, 0, 0);
}

uint64_t sub_24086645C()
{
  v58 = v0;
  if (*(v0 + 224) == 1)
  {
    v1 = *(v0 + 176);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Attempting to decode request", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 112);
    v6 = *(v0 + 80);
    v7 = *(v0 + 32);

    sub_2408763D8(&qword_27E5073F8, 255, MEMORY[0x277CED9D8]);
    sub_2408D4C30();
    v8 = *(v0 + 176);
    v25 = *(*(v0 + 88) + 16);
    v25(*(v0 + 104), *(v0 + 112), *(v0 + 80));
    v26 = sub_2408D4B10();
    v27 = sub_2408D4F20();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 104);
    if (v28)
    {
      v30 = *(v0 + 88);
      v31 = *(v0 + 96);
      v32 = *(v0 + 80);
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57[0] = v56;
      *v33 = 136315138;
      v25(v31, v29, v32);
      v34 = sub_2408D4D40();
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v29, v32);
      v38 = sub_2408CC504(v34, v36, v57);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2407CF000, v26, v27, "Successfully decoded request: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x245CC9F60](v56, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    else
    {
      v50 = *(v0 + 80);
      v51 = *(v0 + 88);

      v37 = *(v51 + 8);
      v37(v29, v50);
    }

    *(v0 + 208) = v37;
    v52 = swift_task_alloc();
    *(v0 + 216) = v52;
    *v52 = v0;
    v52[1] = sub_240866A24;
    v53 = *(v0 + 112);
    v54 = *(v0 + 72);
    v55 = *(v0 + 40);

    return sub_240860488(v54, v53);
  }

  else
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 40);
    sub_2408D4900();

    v11 = sub_2408D4B10();
    v12 = sub_2408D4F30();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    if (v13)
    {
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57[0] = v19;
      *v18 = 136315138;
      v20 = *(v17 + 40);
      v21 = sub_2408D4B50();
      v23 = sub_2408CC504(v21, v22, v57);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2407CF000, v11, v12, "Cancelling XPC session (%s) due to missing required entitlements", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x245CC9F60](v19, -1, -1);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    v24 = *(*(v0 + 40) + 40);
    sub_2408D4B60();
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);
    v41 = *(v0 + 136);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v44 = *(v0 + 96);
    v46 = *(v0 + 64);
    v45 = *(v0 + 72);
    v47 = *(v0 + 56);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_240866A24()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240866B20, 0, 0);
}

uint64_t sub_240866B20()
{
  v33 = v0;
  v1 = v0[22];
  sub_2407EEE04(v0[9], v0[8], &qword_27E507408, &qword_2408D7DF0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    sub_2407EEE04(v5, v6, &qword_27E507408, &qword_2408D7DF0);
    v10 = sub_2408D4D40();
    v12 = v11;
    sub_2407D9440(v5, &qword_27E507408, &qword_2408D7DF0);
    v13 = sub_2408CC504(v10, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received response %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2407D9440(v5, &qword_27E507408, &qword_2408D7DF0);
  }

  v14 = v0[26];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];
  v19 = v0[6];
  v20 = v0[4];
  sub_240865D30();
  sub_2408D4C20();
  sub_2407D9440(v18, &qword_27E507408, &qword_2408D7DF0);
  v14(v15, v16);
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[17];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];
  v28 = v0[8];
  v27 = v0[9];
  v29 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_240866D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507430, &qword_2408D7ED0);
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v8 = sub_2408D47A0();
  v5[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v10 = sub_2408D4B20();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = sub_2408D4C40();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240866F60, 0, 0);
}

uint64_t sub_240866F60()
{
  v34 = v0;
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[4];
  v0[21] = __swift_project_value_buffer(v0[14], qword_27E507E50);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  if (v8)
  {
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315138;
    v5(v11, v9, v12);
    v14 = sub_2408D4D40();
    v16 = v15;
    (*(v10 + 8))(v9, v12);
    v17 = sub_2408CC504(v14, v16, &v33);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Handling incoming message: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
    v18 = v0[17];
    v19 = v0[18];

    (*(v19 + 8))(v9, v18);
  }

  v21 = v0[4];
  v20 = v0[5];
  v0[2] = v20;
  v0[22] = *(v20 + 24);

  v22 = sub_2408D4C10();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  v0[23] = v29;
  *(v29 + 16) = v21;
  *(v29 + 24) = v0 + 2;
  v30 = swift_task_alloc();
  v0[24] = v30;
  *v30 = v0;
  v30[1] = sub_240867224;

  return sub_24087A5F8(v22, v24, v26, v28, &unk_2408D7EE0, v29);
}

uint64_t sub_240867224(char a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_240867360, 0, 0);
}

uint64_t sub_240867360()
{
  v53 = v0;
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 168);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Attempting to decode request", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 32);

    sub_2408763D8(&qword_27E507438, 255, MEMORY[0x277CEDCF8]);
    sub_2408D4C30();
    v8 = *(v0 + 168);
    sub_240875C00(*(v0 + 104), *(v0 + 96), MEMORY[0x277CEDCF8]);
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F20();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 96);
    if (v27)
    {
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136315138;
      sub_240875C00(v28, v29, MEMORY[0x277CEDCF8]);
      v33 = sub_2408D4D40();
      v35 = v34;
      sub_240875C68(v28, MEMORY[0x277CEDCF8]);
      v36 = sub_2408CC504(v33, v35, v52);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2407CF000, v25, v26, "Successfully decoded request: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x245CC9F60](v32, -1, -1);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    else
    {

      sub_240875C68(v28, MEMORY[0x277CEDCF8]);
    }

    v48 = swift_task_alloc();
    *(v0 + 200) = v48;
    *v48 = v0;
    v48[1] = sub_240867930;
    v49 = *(v0 + 104);
    v50 = *(v0 + 72);
    v51 = *(v0 + 40);

    return sub_24089F0FC(v50, v49);
  }

  else
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 40);
    sub_2408D4900();

    v11 = sub_2408D4B10();
    v12 = sub_2408D4F30();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    if (v13)
    {
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v52[0] = v19;
      *v18 = 136315138;
      v20 = *(v17 + 48);
      v21 = sub_2408D4B50();
      v23 = sub_2408CC504(v21, v22, v52);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2407CF000, v11, v12, "Cancelling XPC session (%s) due to missing required entitlements", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x245CC9F60](v19, -1, -1);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    v24 = *(*(v0 + 40) + 48);
    sub_2408D4B60();
    v38 = *(v0 + 152);
    v37 = *(v0 + 160);
    v39 = *(v0 + 128);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);
    v42 = *(v0 + 88);
    v44 = *(v0 + 64);
    v43 = *(v0 + 72);
    v45 = *(v0 + 56);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_240867930()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240867A2C, 0, 0);
}

uint64_t sub_240867A2C()
{
  v30 = v0;
  v1 = v0[21];
  sub_2407EEE04(v0[9], v0[8], &qword_27E507430, &qword_2408D7ED0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    sub_2407EEE04(v5, v6, &qword_27E507430, &qword_2408D7ED0);
    v10 = sub_2408D4D40();
    v12 = v11;
    sub_2407D9440(v5, &qword_27E507430, &qword_2408D7ED0);
    v13 = sub_2408CC504(v10, v12, &v29);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received response %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2407D9440(v5, &qword_27E507430, &qword_2408D7ED0);
  }

  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[6];
  v17 = v0[4];
  sub_240870878();
  sub_2408D4C20();
  sub_2407D9440(v15, &qword_27E507430, &qword_2408D7ED0);
  sub_240875C68(v14, MEMORY[0x277CEDCF8]);
  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_240867CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5076B0, &qword_2408D8400);
  v5[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = sub_2408D4290();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v11 = sub_2408D4B20();
  v5[28] = v11;
  v12 = *(v11 - 8);
  v5[29] = v12;
  v13 = *(v12 + 64) + 15;
  v5[30] = swift_task_alloc();
  v14 = sub_2408D4C40();
  v5[31] = v14;
  v15 = *(v14 - 8);
  v5[32] = v15;
  v16 = *(v15 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240867E94, 0, 0);
}

uint64_t sub_240867E94()
{
  v35 = v0;
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[17];
  v0[35] = __swift_project_value_buffer(v0[28], qword_27E507E50);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  if (v8)
  {
    v10 = v0[32];
    v11 = v0[33];
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v13 = 136315138;
    v5(v11, v9, v12);
    v14 = sub_2408D4D40();
    v16 = v15;
    (*(v10 + 8))(v9, v12);
    v17 = sub_2408CC504(v14, v16, &v34);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Handling incoming message: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
    v18 = v0[31];
    v19 = v0[32];

    (*(v19 + 8))(v9, v18);
  }

  v20 = v0[17];
  v21 = v0[18];
  v22 = *v21;
  v23 = sub_2408D4C10();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = swift_task_alloc();
  v0[36] = v30;
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;
  v31 = swift_task_alloc();
  v0[37] = v31;
  *v31 = v0;
  v31[1] = sub_240868144;

  return sub_24087A5F8(v23, v25, v27, v29, &unk_2408D8410, v30);
}

uint64_t sub_240868144(char a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x2822009F8](sub_240868264, 0, 0);
}

uint64_t sub_240868264()
{
  v58 = v0;
  if (*(v0 + 328) == 1)
  {
    v1 = *(v0 + 280);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Attempting to decode request", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 216);
    v6 = *(v0 + 184);
    v7 = *(v0 + 136);

    sub_2408763D8(&qword_27E5076B8, 255, MEMORY[0x277CED910]);
    sub_2408D4C30();
    v8 = *(v0 + 280);
    v25 = *(*(v0 + 192) + 16);
    v25(*(v0 + 208), *(v0 + 216), *(v0 + 184));
    v26 = sub_2408D4B10();
    v27 = sub_2408D4F20();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 208);
    if (v28)
    {
      v30 = *(v0 + 192);
      v31 = *(v0 + 200);
      v32 = *(v0 + 184);
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57[0] = v56;
      *v33 = 136315138;
      v25(v31, v29, v32);
      v34 = sub_2408D4D40();
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v29, v32);
      v38 = sub_2408CC504(v34, v36, v57);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2407CF000, v26, v27, "Successfully decoded request: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x245CC9F60](v56, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    else
    {
      v50 = *(v0 + 184);
      v51 = *(v0 + 192);

      v37 = *(v51 + 8);
      v37(v29, v50);
    }

    *(v0 + 304) = v37;
    v52 = swift_task_alloc();
    *(v0 + 312) = v52;
    *v52 = v0;
    v52[1] = sub_240868860;
    v53 = *(v0 + 216);
    v54 = *(v0 + 176);
    v55 = *(v0 + 144);

    return sub_2408B7244(v54, v53);
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 144);
    sub_2408D4900();
    sub_240876270(v10, v0 + 16);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F30();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315138;
      v19 = *(v0 + 24);
      v20 = sub_2408D4B50();
      v22 = v21;
      sub_2408762CC(v0 + 16);
      v23 = sub_2408CC504(v20, v22, v57);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2407CF000, v11, v12, "Cancelling XPC session (%s) due to missing required entitlements", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);

      (*(v15 + 8))(v14, v16);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      sub_2408762CC(v0 + 16);
    }

    v24 = *(*(v0 + 144) + 8);
    sub_2408D4B60();
    v40 = *(v0 + 264);
    v39 = *(v0 + 272);
    v41 = *(v0 + 240);
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 200);
    v46 = *(v0 + 168);
    v45 = *(v0 + 176);
    v47 = *(v0 + 160);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_240868860()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_240868974;
  }

  else
  {
    v3 = sub_240868A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240868974()
{
  v1 = v0[40];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_getErrorValue();
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[14];
  sub_2408D52A0();

  (*(v3 + 104))(v4, *MEMORY[0x277CED900], v2);
  (*(v3 + 56))(v4, 0, 1, v2);

  return MEMORY[0x2822009F8](sub_240868A60, 0, 0);
}

uint64_t sub_240868A60()
{
  v33 = v0;
  v1 = v0[35];
  sub_2407EEE04(v0[22], v0[21], &qword_27E5076B0, &qword_2408D8400);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    sub_2407EEE04(v5, v6, &qword_27E5076B0, &qword_2408D8400);
    v10 = sub_2408D4D40();
    v12 = v11;
    sub_2407D9440(v5, &qword_27E5076B0, &qword_2408D8400);
    v13 = sub_2408CC504(v10, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received response %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2407D9440(v5, &qword_27E5076B0, &qword_2408D8400);
  }

  v14 = v0[38];
  v15 = v0[27];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[17];
  sub_240876320();
  sub_2408D4C20();
  sub_2407D9440(v18, &qword_27E5076B0, &qword_2408D8400);
  v14(v15, v16);
  v22 = v0[33];
  v21 = v0[34];
  v23 = v0[30];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[25];
  v28 = v0[21];
  v27 = v0[22];
  v29 = v0[20];

  v30 = v0[1];

  return v30();
}

uint64_t sub_240868CDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_240868CFC, 0, 0);
}

uint64_t sub_240868CFC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_2408D4C10();
  v4 = *(v1 + 16);
  v0[9] = v4;
  v0[2] = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v4;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_240868DB4;

  return sub_24087959C();
}

uint64_t sub_240868DB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v4 + 96) = v10;
    *v10 = v6;
    v10[1] = sub_240868F3C;

    return sub_240879E58(a1);
  }
}

uint64_t sub_240868F3C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 72);

    v9 = *(v6 + 8);

    return v9(0);
  }

  else
  {
    *(v4 + 104) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24087644C, 0, 0);
  }
}

uint64_t sub_2408690A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2408690C4, 0, 0);
}

uint64_t sub_2408690C4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_2408D4C10();
  v4 = *(v1 + 16);
  v0[9] = v4;
  v0[2] = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v4;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_24086917C;

  return sub_24087959C();
}

uint64_t sub_24086917C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v4 + 96) = v10;
    *v10 = v6;
    v10[1] = sub_240869304;

    return sub_240879E58(a1);
  }
}

uint64_t sub_240869304(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 72);

    v9 = *(v6 + 8);

    return v9(0);
  }

  else
  {
    *(v4 + 104) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24086946C, 0, 0);
  }
}

uint64_t sub_24086946C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_240869500()
{
  v1 = v0[7];
  v0[2] = sub_2408D4C10();
  v0[3] = v2;
  v0[4] = v3;
  v4 = MEMORY[0x277D84F90];
  v0[5] = v5;
  v0[6] = v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2408695AC;

  return sub_24087959C();
}

uint64_t sub_2408695AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v4 + 80) = v9;
    *v9 = v6;
    v9[1] = sub_24086972C;

    return sub_240879E58(a1);
  }
}

uint64_t sub_24086972C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    *(v4 + 88) = a1 & 1;

    return MEMORY[0x2822009F8](sub_240869888, 0, 0);
  }
}

uint64_t sub_240869888()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_2408698F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2408699E8;

  return v7(a1);
}

uint64_t sub_2408699E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_240869AE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507670, &qword_2408D8348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507678, &unk_2408D8350);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_240869C28(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
  v10 = *(sub_2408D3970() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2408D3970() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_240869E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507618, &qword_2408D82E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_240869F04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2408D48A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
  v36 = a2;
  v13 = sub_2408D4CE0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2408763D8(&qword_27E5074C8, 255, MEMORY[0x277CEDDC0]);
      v23 = sub_2408D4CF0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24086AFBC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24086A1EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2408D3970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
  v36 = a2;
  v13 = sub_2408D4CE0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2408763D8(&qword_27E5075A8, 255, MEMORY[0x277CED3F8]);
      v23 = sub_2408D4CF0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24086B28C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24086A4D4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v8 = sub_2408D5320();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_2408D4D30();
      v15 = v14;
      if (v13 == sub_2408D4D30() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_2408D5240();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_24086B55C(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_24086A680(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2408D48A0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D0, &qword_2408D7FC0);
  result = sub_2408D50F0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
      result = sub_2408D4CE0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24086A9E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2408D3970();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075A0, &qword_2408D81C0);
  result = sub_2408D50F0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
      result = sub_2408D4CE0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24086AD40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507450, &unk_2408D7EF0);
  result = sub_2408D50F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v20 = sub_2408D5320();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24086AFBC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2408D48A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24086A680(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24086B744(MEMORY[0x277CEDDC0], &qword_27E5074D0, &qword_2408D7FC0);
      goto LABEL_12;
    }

    sub_24086BACC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
  v15 = sub_2408D4CE0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2408763D8(&qword_27E5074C8, 255, MEMORY[0x277CEDDC0]);
      v23 = sub_2408D4CF0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2408D5270();
  __break(1u);
  return result;
}

uint64_t sub_24086B28C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2408D3970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24086A9E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24086B744(MEMORY[0x277CED3F8], &qword_27E5075A0, &qword_2408D81C0);
      goto LABEL_12;
    }

    sub_24086BDEC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
  v15 = sub_2408D4CE0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2408763D8(&qword_27E5075A8, 255, MEMORY[0x277CED3F8]);
      v23 = sub_2408D4CF0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2408D5270();
  __break(1u);
  return result;
}

uint64_t sub_24086B55C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_24086AD40(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_24086B97C();
      goto LABEL_16;
    }

    sub_24086C10C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v11 = sub_2408D5320();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for AIDAServiceType(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_2408D4D30();
      v17 = v16;
      if (v15 == sub_2408D4D30() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_2408D5240();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2408D5270();
  __break(1u);
  return result;
}

void *sub_24086B744(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_2408D50E0();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_24086B97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507450, &unk_2408D7EF0);
  v2 = *v0;
  v3 = sub_2408D50E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24086BACC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2408D48A0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D0, &qword_2408D7FC0);
  v10 = sub_2408D50F0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
      result = sub_2408D4CE0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24086BDEC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2408D3970();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075A0, &qword_2408D81C0);
  v10 = sub_2408D50F0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
      result = sub_2408D4CE0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24086C10C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507450, &unk_2408D7EF0);
  result = sub_2408D50F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      v20 = v18;
      sub_2408D4D60();
      v21 = sub_2408D5320();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24086C360(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_2408D48A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_2407D9440(v6, &qword_27E5074C0, &qword_2408D9F60))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_24086D100(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24086C57C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_24086D3D4();

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_24086C694(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_2408D48A0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_2407D9440(v32, &qword_27E5074C0, &qword_2408D9F60);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
    v35 = sub_2408D4CE0();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_2408763D8(&qword_27E5074C8, 255, MEMORY[0x277CEDDC0]);
    v39 = sub_2408D4CF0();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_2407D9440(v26, &qword_27E5074C0, &qword_2408D9F60);
        a2 = sub_24086DA40(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_2408D4CE0();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_2408D4CF0();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_2408D4CF0();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_24086D564(v68, v69, v84, v26, &v93);

  MEMORY[0x245CC9F60](v68, -1, -1);
LABEL_52:
  sub_2407D17F4();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_24086D100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2408D48A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
  v35 = a1;
  v13 = sub_2408D4CE0();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_2408763D8(&qword_27E5074C8, 255, MEMORY[0x277CEDDC0]);
      v22 = sub_2408D4CF0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24086B744(MEMORY[0x277CEDDC0], &qword_27E5074D0, &qword_2408D7FC0);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_24086DFB0(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_24086D3D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v4 = sub_2408D5320();

  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = sub_2408D4D30();
    v11 = v10;
    if (v9 == sub_2408D4D30() && v11 == v12)
    {
      break;
    }

    v14 = sub_2408D5240();

    if (v14)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24086B97C();
    v18 = v20;
  }

  v15 = *(*(v18 + 48) + 8 * v6);
  sub_24086E2BC(v6);
  *v1 = v20;
  return v15;
}

uint64_t sub_24086D564(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_2408D48A0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_2407D9440(v12, &qword_27E5074C0, &qword_2408D9F60);
          v48 = v64;

          return sub_24086DA40(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
        v38 = sub_2408D4CE0();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_2408763D8(&qword_27E5074C8, 255, MEMORY[0x277CEDDC0]);
        v46 = sub_2408D4CF0();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24086DA40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2408D48A0();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D0, &qword_2408D7FC0);
  result = sub_2408D5100();
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
    sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
    result = sub_2408D4CE0();
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

uint64_t sub_24086DD6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507450, &unk_2408D7EF0);
  result = sub_2408D5100();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_2408D4D30();
    sub_2408D5300();
    v18 = v16;
    sub_2408D4D60();
    v19 = sub_2408D5320();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24086DFB0(int64_t a1)
{
  v3 = sub_2408D48A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2408D50A0();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
        v27 = sub_2408D4CE0();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_24086E2BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2408D50A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_2408D4D30();
        sub_2408D5300();
        v13 = v12;
        sub_2408D4D60();
        v14 = sub_2408D5320();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24086E49C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24086E528(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24086E53C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2408D3970();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_24086E620(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_24086E8EC((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_24086E85C(v13, v6, a2, a1);

    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void *sub_24086E7E4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24086EEFC(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_24086E85C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_24086E8EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_24086E8EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_28:
    v63 = 0;
    v31 = 0;
    v32 = v5 + 56;
    v33 = 1 << *(v5 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v5 + 56);
    v36 = (v33 + 63) >> 6;
    v37 = v4 + 56;
    v57 = v36;
    while (v35)
    {
      v38 = __clz(__rbit64(v35));
      v65 = (v35 - 1) & v35;
LABEL_40:
      v60 = v38 | (v31 << 6);
      v41 = *(*(v5 + 48) + 8 * v60);
      v42 = *(v4 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      v62 = v41;
      sub_2408D4D60();
      v4 = a4;
      v43 = sub_2408D5320();

      v44 = -1 << *(a4 + 32);
      v45 = v43 & ~v44;
      if ((*(v37 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = *(*(v4 + 48) + 8 * v45);
          v48 = sub_2408D4D30();
          v50 = v49;
          if (v48 == sub_2408D4D30() && v50 == v51)
          {

            goto LABEL_51;
          }

          v53 = sub_2408D5240();

          if (v53)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          v4 = a4;
          if (((*(v37 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_51:
        v4 = a4;
        *(a1 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        v35 = v65;
        v30 = __OFADD__(v63++, 1);
        v5 = a3;
        v36 = v57;
        if (v30)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_32:

        v35 = v65;
        v5 = a3;
        v36 = v57;
      }
    }

    v39 = v31;
    while (1)
    {
      v31 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v31 >= v36)
      {
        goto LABEL_54;
      }

      v40 = *(v32 + 8 * v31);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v65 = (v40 - 1) & v40;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v63 = 0;
    v64 = a3 + 56;
    v55 = v11;
    v56 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v61 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      v16 = *(v5 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      v59 = v15;
      sub_2408D4D60();
      v17 = sub_2408D5320();
      v5 = a3;

      v18 = -1 << *(a3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v64 + 8 * (v19 >> 6))) != 0)
      {
        v22 = ~v18;
        while (1)
        {
          v23 = *(*(v5 + 48) + 8 * v19);
          v24 = sub_2408D4D30();
          v26 = v25;
          if (v24 == sub_2408D4D30() && v26 == v27)
          {

            goto LABEL_25;
          }

          v29 = sub_2408D5240();

          if (v29)
          {
            break;
          }

          v19 = (v19 + 1) & v22;
          v20 = v19 >> 6;
          v5 = a3;
          v21 = 1 << v19;
          if (((1 << v19) & *(v64 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = a3;
LABEL_25:
        v7 = v56;
        a1[v20] |= v21;
        v10 = v61;
        v30 = __OFADD__(v63++, 1);
        v4 = a4;
        v11 = v55;
        if (v30)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v11 = v55;
        v7 = v56;
        v10 = v61;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_54:

        sub_24086DD6C(a1, a2, v63, v5);
        return;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v61 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24086ED9C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24086EEFC(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_24086E7E4(v9, v4, v2);
  result = MEMORY[0x245CC9F60](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24086EEFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 56) + 16 * v16;
    if (*(v17 + 8))
    {
      v19 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      result = swift_willThrowTypedImpl();
    }

    else if (*v17)
    {
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_24086F058(v5, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_24086F058(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24086F058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  result = sub_2408D51D0();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = a2;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v9 + 40);
    sub_2408D4D30();
    sub_2408D5300();
    v22 = v17;
    sub_2407D256C(v19, v20);
    sub_2408D4D60();
    v23 = sub_2408D5320();

    v24 = -1 << *(v9 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v9 + 48) + 8 * v27) = v22;
    v32 = *(v9 + 56) + 16 * v27;
    *v32 = v19;
    *(v32 + 8) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v10 = v37;
    v8 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
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

uint64_t sub_24086F308(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24086F3FC;

  return v6(v2 + 32);
}

uint64_t sub_24086F3FC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24086F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_24086F5A8;

  return sub_240874FE4(a4);
}

uint64_t sub_24086F5A8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_24086F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24086F76C;

  return sub_2408200E4(a2, a3, a4);
}

uint64_t sub_24086F76C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_24086F87C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a1;
  v6[8] = a6;
  v12 = sub_2408D3EC0();
  v6[9] = v12;
  v13 = *(v12 - 8);
  v6[10] = v13;
  v14 = *(v13 + 64) + 15;
  v6[11] = swift_task_alloc();
  v15 = sub_2408D3970();
  v6[12] = v15;
  v16 = *(v15 - 8);
  v6[13] = v16;
  v17 = *(v16 + 64) + 15;
  v6[14] = swift_task_alloc();
  v18 = sub_2408D38D0();
  v6[15] = v18;
  v19 = *(v18 - 8);
  v6[16] = v19;
  v20 = *(v19 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[5] = &type metadata for SymptomReportGenerator;
  v6[6] = &off_285285708;
  v21 = swift_allocObject();
  v6[2] = v21;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v22 = a2;
  v23 = a3;
  v24 = a4;

  return MEMORY[0x2822009F8](sub_24086FA70, a6, 0);
}

uint64_t sub_24086FA70()
{
  v47 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  v0[19] = __swift_project_value_buffer(v5, qword_27E506C48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v12 = 136315138;
    sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
    v13 = sub_2408D5220();
    v15 = v14;
    v45 = *(v10 + 8);
    v45(v9, v11);
    v16 = sub_2408CC504(v13, v15, &v46);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v6, v7, "Setup preflight check if repair is needed for account: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x245CC9F60](v44, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    v45 = *(v10 + 8);
    v45(v9, v11);
  }

  v17 = v0[14];
  v18 = [objc_opt_self() sharedInstance];
  sub_2408D37F0();
  v25 = v0[16];
  v26 = v0[17];
  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[12];
  v30 = v0[13];
  v31 = v0[7];

  sub_2408D38F0();
  (*(v30 + 8))(v28, v29);
  v32 = sub_2408D3880();
  v45(v26, v27);
  if (v32)
  {
    v33 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v35 = *v33;
    v34 = v33[1];
    v36 = v33[2];
    v37 = v33[3];
    v38 = swift_task_alloc();
    v0[20] = v38;
    *v38 = v0;
    v38[1] = sub_24086FF28;
    v39 = v0[11];
    v40 = v0[7];

    return sub_2408D139C(v39, v40, v35, v34, v36, v37);
  }

  else
  {
    v41 = sub_2408D4B10();
    v42 = sub_2408D4F20();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2407CF000, v41, v42, "Account is non-primary account. Skipping preflight repair.", v43, 2u);
      MEMORY[0x245CC9F60](v43, -1, -1);
    }

    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[14];
    v22 = v0[11];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    v23 = v0[1];

    return v23(0);
  }
}

uint64_t sub_24086FF28()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_24087011C;
  }

  else
  {
    v6 = sub_240870054;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240870054()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_2408D3E50();
  (*(v2 + 8))(v1, v3);
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v9 = v0[1];

  return v9(v4 & 1);
}

uint64_t sub_24087011C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Preflight check failed. Defaulting to skipping preflight repair.", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[14];
  v9 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_240870230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2407D379C;

  return sub_240865E6C(a1, a2, a3, a4, v10);
}

uint64_t sub_2408702F8(uint64_t a1)
{
  v4 = *(sub_2408D4C40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407D379C;

  return sub_240870230(a1, v7, v8, v1 + v5, (v1 + v6));
}

uint64_t sub_240870428(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2408698F0(a1, v5);
}

uint64_t sub_2408704E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240876464;

  return sub_240868CDC(a1, v4);
}

uint64_t sub_24087057C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240813A08;

  return sub_2408704E0(v2, v3);
}

uint64_t sub_240870628(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2408706C4;

  return sub_2408690A4(a1, v4);
}

uint64_t sub_2408706C4(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2408707CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240813744;

  return sub_240870628(v2, v3);
}

unint64_t sub_240870878()
{
  result = qword_27E507440;
  if (!qword_27E507440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507430, &qword_2408D7ED0);
    sub_2408763D8(&qword_27E507448, 255, MEMORY[0x277CEDCF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507440);
  }

  return result;
}

uint64_t sub_240870930(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240846920(a1, v5, v4);
}

uint64_t sub_2408709F8(uint64_t a1)
{
  v2 = sub_2408D3970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2407F5674(MEMORY[0x277D84F90]);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v15[1] = v3 + 16;
  v11 = (v3 + 8);

  for (i = 0; v9; i = v13)
  {
    v13 = i;
LABEL_8:
    (*(v3 + 16))(v6, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v2);
    sub_2407DF1B8(&v16, v6);
    v9 &= v9 - 1;
    (*v11)(v6, v2);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v16;
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  (*v11)(v6, v2);

  __break(1u);
  return result;
}

uint64_t sub_240870BF0(uint64_t a1)
{
  v2 = sub_2408D3970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075A0, &qword_2408D81C0);
    v10 = sub_2408D5100();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
      v18 = sub_2408D4CE0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2408763D8(&qword_27E5075A8, 255, MEMORY[0x277CED3F8]);
          v25 = sub_2408D4CF0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_240870F18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v65 = sub_2408D3970();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v65);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v63 = &v52 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v69 = a1;
  v68 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v21 < 1)
    {
      v40 = a4 + v21;
    }

    else
    {
      v38 = -v17;
      v55 = a4;
      v56 = (v10 + 16);
      v54 = (v10 + 8);
      v39 = a4 + v21;
      v40 = a4 + v21;
      v64 = a1;
      v57 = -v17;
      do
      {
        v52 = v40;
        v41 = a2 + v38;
        v58 = a2;
        v59 = a2 + v38;
        while (1)
        {
          if (a2 <= a1)
          {
            v69 = a2;
            v67 = v52;
            goto LABEL_59;
          }

          v53 = v40;
          v66 = a3 + v38;
          v42 = v39 + v38;
          v43 = a5;
          v44 = *v56;
          v45 = v65;
          v61 = a3;
          v44();
          v46 = v62;
          (v44)(v62, v41, v45);
          v47 = sub_2408D3960();
          v60 = *(sub_24086E620(v43, v47) + 2);

          v48 = sub_2408D3960();
          v49 = v43;
          v50 = *(sub_24086E620(v43, v48) + 2);

          v51 = *v54;
          (*v54)(v46, v45);
          v51(v63, v45);
          if (v50 < v60)
          {
            break;
          }

          v40 = v42;
          if (v61 < v39 || v66 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            a5 = v43;
            a1 = v64;
          }

          else
          {
            a5 = v43;
            a1 = v64;
            if (v61 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v42;
          a2 = v58;
          v41 = v59;
          a3 = v66;
          v38 = v57;
          if (v42 <= v55)
          {
            goto LABEL_57;
          }
        }

        if (v61 < v58 || v66 >= v58)
        {
          a3 = v66;
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          a5 = v49;
          a1 = v64;
          v40 = v53;
        }

        else
        {
          a5 = v43;
          a2 = v59;
          a3 = v66;
          a1 = v64;
          v40 = v53;
          if (v61 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v57;
      }

      while (v39 > v55);
    }

LABEL_57:
    v69 = a2;
    v67 = v40;
  }

  else
  {
    v20 = v19 * v17;
    v61 = a5;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v20;
    v67 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v10 + 16);
      v58 = v17;
      v59 = v10 + 16;
      v56 = (v10 + 8);
      v57 = v23;
      v66 = a3;
      do
      {
        v64 = a1;
        v24 = v63;
        v25 = v65;
        v26 = v57;
        (v57)(v63, a2, v65);
        v27 = v62;
        v26(v62, a4, v25);
        v28 = sub_2408D3960();
        v29 = v61;
        v30 = *(sub_24086E620(v61, v28) + 2);

        v31 = sub_2408D3960();
        v32 = *(sub_24086E620(v29, v31) + 2);

        v33 = *v56;
        (*v56)(v27, v25);
        (v33)(v24, v25);
        if (v32 >= v30)
        {
          v34 = v58;
          v37 = a4 + v58;
          v35 = v64;
          if (v64 < a4 || v64 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v64 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = v37;
          a4 += v34;
        }

        else
        {
          v34 = v58;
          v35 = v64;
          if (v64 < a2 || v64 >= a2 + v58)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v34;
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v64 == a2)
            {
              a2 += v58;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v34;
            }
          }
        }

        a1 = v35 + v34;
        v69 = a1;
      }

      while (a4 < v60 && a2 < v36);
    }
  }

LABEL_59:
  sub_24086E53C(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_240871538(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_24086E528(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2408D3970() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_240870F18(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_2408716F8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v175 = a1;
  v201[1] = *MEMORY[0x277D85DE8];
  v10 = sub_2408D3970();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v178 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v191 = &v172 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v199 = &v172 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v198 = &v172 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v188 = &v172 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v186 = &v172 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v172 - v25;
  MEMORY[0x28223BE20](v24);
  v172 = &v172 - v27;
  v201[0] = MEMORY[0x277D84F90];
  v185 = a3;
  v28 = a3[1];
  if (v28 >= 1)
  {
    v194 = (v26 + 8);
    v195 = v26 + 16;
    v183 = v26;
    v193 = (v26 + 32);
    swift_bridgeObjectRetain_n();
    v29 = 0;
    v184 = MEMORY[0x277D84F90];
    v200 = a5;
    v174 = a4;
    v196 = v10;
    while (1)
    {
      v176 = v29;
      if (v29 + 1 >= v28)
      {
        v42 = v29 + 1;
      }

      else
      {
        v187 = v28;
        v30 = *v185;
        v197 = v30;
        v31 = v183[9];
        v192 = &v30[v31 * (v29 + 1)];
        v32 = v183[2];
        v33 = v172;
        (v32)(v172);
        v34 = &v30[v31 * v29];
        v35 = v173;
        v181 = v32;
        (v32)(v173, v34, v10);
        v36 = sub_2408D3960();
        v189 = *(sub_24086E620(a5, v36) + 2);

        v37 = sub_2408D3960();
        v182 = *(sub_24086E620(a5, v37) + 2);

        v38 = v183[1];
        v38(v35, v10);
        v39 = v192;
        v180 = v38;
        v38(v33, v10);
        v40 = (v176 + 2);
        v190 = v31;
        v41 = &v197[v31 * (v176 + 2)];
        while (1)
        {
          v42 = v187;
          if (v187 == v40)
          {
            break;
          }

          v197 = v40;
          v43 = v181;
          (v181)(v186, v41, v10);
          v43(v188, v39, v10);
          v44 = sub_2408D3960();
          v45 = *(v44 + 32);
          v46 = v45 & 0x3F;
          v47 = ((1 << v45) + 63) >> 6;
          v48 = 8 * v47;

          v192 = v41;
          if (v46 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
          {
            v50 = a5;
            MEMORY[0x28223BE20](isStackAllocationSafe);
            bzero(&v172 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0), v48);
            sub_24086E8EC((&v172 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0)), v47, v44, a5);
            if (v6)
            {
              goto LABEL_147;
            }

            v52 = v51;
          }

          else
          {
            v66 = swift_slowAlloc();

            v67 = sub_24086E85C(v66, v47, v44, a5);
            if (v6)
            {
              while (1)
              {
LABEL_149:

                MEMORY[0x245CC9F60](v66, -1, -1);
                __break(1u);
              }
            }

            v52 = v67;

            MEMORY[0x245CC9F60](v66, -1, -1);
            v50 = a5;
          }

          v53 = v52[2];

          v54 = sub_2408D3960();
          v55 = *(v54 + 32);
          v56 = v55 & 0x3F;
          v57 = ((1 << v55) + 63) >> 6;
          v58 = 8 * v57;

          if (v56 <= 0xD || (v59 = swift_stdlib_isStackAllocationSafe(), (v59 & 1) != 0))
          {
            MEMORY[0x28223BE20](v59);
            bzero(&v172 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0), v58);
            sub_24086E8EC((&v172 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0)), v57, v54, v50);
            v61 = v60;
          }

          else
          {
            v68 = swift_slowAlloc();

            v61 = sub_24086E85C(v68, v57, v54, v50);

            MEMORY[0x245CC9F60](v68, -1, -1);
          }

          v62 = v182 < v189;
          v63 = v61[2];

          v10 = v196;
          v64 = v180;
          (v180)(v188, v196);
          v64(v186, v10);
          v65 = v63 >= v53;
          v40 = v197 + 1;
          v41 = &v190[v192];
          v39 = &v190[v39];
          a5 = v200;
          if (((v62 ^ v65) & 1) == 0)
          {
            v42 = v197;
            break;
          }
        }

        a4 = v174;
        v29 = v176;
        if (v182 < v189)
        {
          if (v42 < v176)
          {
            goto LABEL_139;
          }

          if (v176 < v42)
          {
            v69 = v190 * (v42 - 1);
            v70 = v42 * v190;
            v187 = v42;
            v71 = v42;
            v72 = v176;
            v73 = v176 * v190;
            do
            {
              if (v72 != --v71)
              {
                v74 = *v185;
                if (!*v185)
                {
                  goto LABEL_144;
                }

                v197 = *v193;
                (v197)(v178, &v74[v73], v196);
                if (v73 < v69 || &v74[v73] >= &v74[v70])
                {
                  v10 = v196;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v10 = v196;
                  if (v73 != v69)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v197)(&v74[v69], v178, v10);
              }

              ++v72;
              v69 -= v190;
              v70 -= v190;
              v73 += v190;
            }

            while (v72 < v71);
            a5 = v200;
            a4 = v174;
            v29 = v176;
            v42 = v187;
          }
        }
      }

      v75 = v185[1];
      if (v42 >= v75)
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v42, v29))
      {
        goto LABEL_138;
      }

      if (v42 - v29 >= a4)
      {
        goto LABEL_43;
      }

      v76 = v29 + a4;
      if (__OFADD__(v29, a4))
      {
        goto LABEL_140;
      }

      if (v76 >= v75)
      {
        v76 = v185[1];
      }

      if (v76 < v29)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_143:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_144:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_145:
        swift_bridgeObjectRelease_n();
        __break(1u);
      }

      if (v42 == v76)
      {
LABEL_43:
        v77 = v42;
        if (v42 < v29)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v137 = *v185;
        v138 = v183[9];
        v192 = v183[2];
        v139 = &v137[v138 * (v42 - 1)];
        v189 = -v138;
        v190 = v137;
        v140 = (v29 - v42);
        v177 = v138;
        v141 = &v137[v42 * v138];
        v179 = v76;
        do
        {
          v187 = v42;
          v180 = v141;
          v181 = v140;
          v182 = v139;
          while (1)
          {
            v197 = v140;
            v142 = v192;
            (v192)(v198, v141, v10);
            (v142)(v199, v139, v10);
            v143 = sub_2408D3960();
            v144 = *(v143 + 32);
            v145 = v144 & 0x3F;
            v146 = ((1 << v144) + 63) >> 6;
            v147 = 8 * v146;

            if (v145 <= 0xD || (v148 = swift_stdlib_isStackAllocationSafe(), (v148 & 1) != 0))
            {
              MEMORY[0x28223BE20](v148);
              bzero(&v172 - ((v147 + 15) & 0x3FFFFFFFFFFFFFF0), v147);
              a5 = v200;
              sub_24086E8EC((&v172 - ((v147 + 15) & 0x3FFFFFFFFFFFFFF0)), v146, v143, v200);
              if (v6)
              {
                goto LABEL_147;
              }

              v150 = v149;
            }

            else
            {
              v66 = swift_slowAlloc();

              v166 = sub_24086E85C(v66, v146, v143, a5);
              if (v6)
              {
                goto LABEL_149;
              }

              v150 = v166;

              MEMORY[0x245CC9F60](v66, -1, -1);
            }

            v151 = v150[2];

            v152 = sub_2408D3960();
            v153 = *(v152 + 32);
            v154 = v153 & 0x3F;
            v155 = ((1 << v153) + 63) >> 6;
            v156 = 8 * v155;

            if (v154 <= 0xD || (v157 = swift_stdlib_isStackAllocationSafe(), (v157 & 1) != 0))
            {
              MEMORY[0x28223BE20](v157);
              bzero(&v172 - ((v156 + 15) & 0x3FFFFFFFFFFFFFF0), v156);
              sub_24086E8EC((&v172 - ((v156 + 15) & 0x3FFFFFFFFFFFFFF0)), v155, v152, v200);
              v159 = v158;
            }

            else
            {
              v167 = swift_slowAlloc();

              v159 = sub_24086E85C(v167, v155, v152, a5);

              MEMORY[0x245CC9F60](v167, -1, -1);
            }

            v160 = v159[2];

            v161 = *v194;
            v10 = v196;
            (*v194)(v199, v196);
            v161(v198, v10);
            if (v160 >= v151)
            {
              break;
            }

            a5 = v200;
            v162 = v197;
            if (!v190)
            {
              goto LABEL_142;
            }

            v163 = *v193;
            v164 = v191;
            (*v193)(v191, v141, v10);
            swift_arrayInitWithTakeFrontToBack();
            v163(v139, v164, v10);
            v139 += v189;
            v141 += v189;
            v165 = __CFADD__(v162, 1);
            v140 = v162 + 1;
            if (v165)
            {
              goto LABEL_95;
            }
          }

          a5 = v200;
LABEL_95:
          v42 = (v187 + 1);
          v139 = &v182[v177];
          v140 = v181 - 1;
          v141 = &v180[v177];
          v77 = v179;
        }

        while (v187 + 1 != v179);
        if (v179 < v176)
        {
          goto LABEL_137;
        }
      }

      v179 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_240869E00(0, *(v184 + 2) + 1, 1, v184);
      }

      v79 = *(v184 + 2);
      v78 = *(v184 + 3);
      v80 = v79 + 1;
      v29 = v179;
      if (v79 >= v78 >> 1)
      {
        v168 = sub_240869E00((v78 > 1), v79 + 1, 1, v184);
        v29 = v179;
        v184 = v168;
      }

      v81 = v184;
      *(v184 + 2) = v80;
      v82 = v81 + 32;
      v83 = &v81[16 * v79 + 32];
      *v83 = v176;
      *(v83 + 1) = v29;
      v201[0] = v81;
      v197 = *v175;
      if (!v197)
      {
        goto LABEL_145;
      }

      if (v79)
      {
        break;
      }

LABEL_4:
      v28 = v185[1];
      a4 = v174;
      if (v29 >= v28)
      {
        goto LABEL_116;
      }
    }

    v84 = v184;
    v192 = v81 + 32;
    while (1)
    {
      v85 = v80 - 1;
      if (v80 >= 4)
      {
        break;
      }

      v86 = v183;
      if (v80 == 3)
      {
        v87 = *(v84 + 4);
        v88 = *(v84 + 5);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_64:
        if (v90)
        {
          goto LABEL_128;
        }

        v103 = &v84[16 * v80];
        v105 = *v103;
        v104 = *(v103 + 1);
        v106 = __OFSUB__(v104, v105);
        v107 = v104 - v105;
        v108 = v106;
        if (v106)
        {
          goto LABEL_131;
        }

        v109 = &v82[16 * v85];
        v111 = *v109;
        v110 = *(v109 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_134;
        }

        if (__OFADD__(v107, v112))
        {
          goto LABEL_135;
        }

        if (v107 + v112 >= v89)
        {
          if (v89 < v112)
          {
            v85 = v80 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v113 = &v84[16 * v80];
      v115 = *v113;
      v114 = *(v113 + 1);
      v97 = __OFSUB__(v114, v115);
      v107 = v114 - v115;
      v108 = v97;
LABEL_78:
      if (v108)
      {
        goto LABEL_130;
      }

      v116 = &v82[16 * v85];
      v118 = *v116;
      v117 = *(v116 + 1);
      v97 = __OFSUB__(v117, v118);
      v119 = v117 - v118;
      if (v97)
      {
        goto LABEL_133;
      }

      if (v119 < v107)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v85 - 1 >= v80)
      {
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
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v124 = *v185;
      if (!*v185)
      {
        goto LABEL_143;
      }

      v125 = v6;
      v126 = &v82[16 * v85 - 16];
      v127 = *v126;
      v128 = v85;
      v129 = &v82[16 * v85];
      v130 = *(v129 + 1);
      v131 = v86[9];
      v132 = &v124[v131 * *v126];
      v133 = &v124[v131 * *v129];
      v134 = &v124[v131 * v130];
      v135 = v200;

      sub_240870F18(v132, v133, v134, v197, v135);
      if (v125)
      {

        v201[0] = v184;
        goto LABEL_119;
      }

      if (v130 < v127)
      {
        goto LABEL_123;
      }

      v84 = v184;
      v136 = *(v184 + 2);
      if (v128 > v136)
      {
        goto LABEL_124;
      }

      *v126 = v127;
      *(v126 + 1) = v130;
      if (v128 >= v136)
      {
        goto LABEL_125;
      }

      v80 = v136 - 1;
      memmove(v129, v129 + 16, 16 * (v136 - 1 - v128));
      *(v84 + 2) = v136 - 1;
      v10 = v196;
      v82 = v192;
      v6 = 0;
      if (v136 <= 2)
      {
LABEL_3:
        v201[0] = v84;
        a5 = v200;
        v29 = v179;
        goto LABEL_4;
      }
    }

    v91 = &v82[16 * v80];
    v92 = *(v91 - 8);
    v93 = *(v91 - 7);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    v86 = v183;
    if (v97)
    {
      goto LABEL_126;
    }

    v96 = *(v91 - 6);
    v95 = *(v91 - 5);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_127;
    }

    v98 = &v84[16 * v80];
    v100 = *v98;
    v99 = *(v98 + 1);
    v97 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if (v97)
    {
      goto LABEL_129;
    }

    v97 = __OFADD__(v89, v101);
    v102 = v89 + v101;
    if (v97)
    {
      goto LABEL_132;
    }

    if (v102 >= v94)
    {
      v120 = &v82[16 * v85];
      v122 = *v120;
      v121 = *(v120 + 1);
      v97 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v97)
      {
        goto LABEL_136;
      }

      if (v89 < v123)
      {
        v85 = v80 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  swift_bridgeObjectRetain_n();
LABEL_116:
  v169 = *v175;
  if (!*v175)
  {
    swift_bridgeObjectRelease_n();
    __break(1u);
    while (1)
    {
LABEL_147:

      swift_willThrow();

      __break(1u);
    }
  }

  sub_240871538(v201, v169, v185, a5);
  if (v6)
  {

LABEL_119:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v171 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2408727C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v73 = a5;
  v74 = *MEMORY[0x277D85DE8];
  v11 = sub_2408D3970();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v65 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v55 - v17;
  result = MEMORY[0x28223BE20](v16);
  v71 = &v55 - v19;
  v57 = a2;
  if (a3 == a2)
  {
LABEL_2:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v21 = *a4;
  v23 = *(v12 + 16);
  v22 = v12 + 16;
  v24 = *(v22 + 56);
  v66 = (v22 - 8);
  v67 = v23;
  v25 = v21 + v24 * (a3 - 1);
  v62 = -v24;
  v63 = (v22 + 16);
  v26 = a1 - a3;
  v64 = v21;
  v56 = v24;
  v27 = v21 + v24 * a3;
  v68 = v22;
  v69 = v11;
LABEL_5:
  v60 = v25;
  v61 = a3;
  v58 = v27;
  v59 = v26;
  v70 = v26;
  while (1)
  {
    v28 = v67;
    v67(v71, v27, v11);
    v28(v72, v25, v11);
    v29 = sub_2408D3960();
    v30 = *(v29 + 32);
    v31 = v30 & 0x3F;
    v32 = ((1 << v30) + 63) >> 6;
    v33 = (8 * v32);

    if (v31 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v33 = swift_slowAlloc();
        v51 = v73;

        v52 = sub_24086E85C(v33, v32, v29, v51);
        if (v6)
        {
          goto LABEL_23;
        }

        v36 = v52;

        MEMORY[0x245CC9F60](v33, -1, -1);
        goto LABEL_9;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(&v55 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0), v33);
    sub_24086E8EC((&v55 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0)), v32, v29, v73);
    if (v6)
    {
      break;
    }

    v36 = v35;

LABEL_9:
    v37 = v36[2];

    v38 = sub_2408D3960();
    v39 = *(v38 + 32);
    v40 = v39 & 0x3F;
    v41 = ((1 << v39) + 63) >> 6;
    v42 = 8 * v41;

    if (v40 <= 0xD || (v43 = swift_stdlib_isStackAllocationSafe(), (v43 & 1) != 0))
    {
      MEMORY[0x28223BE20](v43);
      bzero(&v55 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0), v42);
      sub_24086E8EC((&v55 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0)), v41, v38, v73);
      v45 = v44;
    }

    else
    {
      v53 = swift_slowAlloc();
      v54 = v73;

      v45 = sub_24086E85C(v53, v41, v38, v54);

      MEMORY[0x245CC9F60](v53, -1, -1);
    }

    v11 = v69;
    v46 = v45[2];

    v47 = *v66;
    (*v66)(v72, v11);
    result = (v47)(v71, v11);
    if (v46 < v37)
    {
      if (!v64)
      {
        __break(1u);
      }

      v48 = *v63;
      v49 = v65;
      (*v63)(v65, v27, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = (v48)(v25, v49, v11);
      v25 += v62;
      v27 += v62;
      if (!__CFADD__(v70++, 1))
      {
        continue;
      }
    }

    a3 = v61 + 1;
    v25 = v60 + v56;
    v26 = v59 - 1;
    v27 = v58 + v56;
    if (v61 + 1 == v57)
    {
      goto LABEL_2;
    }

    goto LABEL_5;
  }

  swift_willThrow();

  __break(1u);
LABEL_23:

  result = MEMORY[0x245CC9F60](v33, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_240872D44(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2408D5210();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2408D3970();
        v8 = sub_2408D4DF0();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_2408D3970() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2408716F8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2408727C4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_240872EC8(void **a1, unint64_t a2)
{
  v4 = *(sub_2408D3970() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_24086F2E0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_240872D44(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_240872FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5076A0, &qword_2408D8388);
    v3 = sub_2408D5100();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2408D5300();

      sub_2408D4D60();
      result = sub_2408D5320();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2408D5240();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}