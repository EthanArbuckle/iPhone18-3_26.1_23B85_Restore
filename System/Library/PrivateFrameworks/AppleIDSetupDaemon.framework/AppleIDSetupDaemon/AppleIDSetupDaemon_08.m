uint64_t sub_2408AACBC()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = v2[70];
  v6 = v2[69];
  v7 = v2[54];

  if (v0)
  {
    v8 = sub_2408AB4BC;
  }

  else
  {
    v8 = sub_2408AAF7C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408AAE20()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v13 = *v1;
  *(*v1 + 632) = v0;

  v4 = *(v2 + 616);
  v5 = *(v2 + 608);
  v6 = *(v2 + 600);
  if (v0)
  {
    v7 = *(v2 + 432);
    sub_2408B2DE8(*(v2 + 584), *(v2 + 592));
    v8 = sub_2408ABCE0;
  }

  else
  {
    v9 = *(v2 + 592);
    v10 = *(v2 + 584);
    v7 = *(v2 + 432);
    *(v2 + 808) = *(v2 + 296);
    v11 = *(v2 + 320);
    *(v2 + 816) = *(v2 + 304);
    *(v2 + 832) = v11;
    sub_2408B2DE8(v10, v9);
    v8 = sub_2408ABBDC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408AAF7C()
{
  v0[80] = *(v0[54] + 112);
  v1 = *(MEMORY[0x277CED858] + 4);
  v5 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v2 = swift_task_alloc();
  v0[81] = v2;
  *v2 = v0;
  v2[1] = sub_2408AB040;
  v3 = v0[59];

  return v5(v3);
}

uint64_t sub_2408AB040()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408AB16C, v3, 0);
}

uint64_t sub_2408AB16C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 440);
  sub_2408D4300();
  (*(v2 + 8))(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 448);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    v12 = v7[4];
  }

  else
  {
    sub_2408B4AE0(v7, MEMORY[0x277CED950]);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 20;
  }

  *(v0 + 688) = v12;
  *(v0 + 680) = v11;
  *(v0 + 672) = v10;
  *(v0 + 664) = v8;
  *(v0 + 656) = v9;
  *(v0 + 176) = v9;
  *(v0 + 184) = v8;
  *(v0 + 192) = v10;
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  *(v0 + 96) = xmmword_2408D8E50;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0;
  if (v8 == 20)
  {
    sub_2407D2028(v9, 0x14uLL);
    sub_2407D2028(0, 9uLL);
LABEL_12:
    v27 = swift_task_alloc();
    *(v0 + 696) = v27;
    *v27 = v0;
    v27[1] = sub_2408AB594;
    v28 = *(v0 + 432);
    v29 = *(v0 + 416);

    return sub_2408AC08C(v0 + 256, v29, v0 + 176);
  }

  *(v0 + 136) = v9;
  *(v0 + 144) = v8;
  *(v0 + 152) = v10;
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  sub_2408B3C10(v9, v8);
  v13 = MEMORY[0x245CC8890](v0 + 136, v0 + 96);
  sub_2407D2028(v9, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(v0 + 528);
  sub_2407D2028(v9, v8);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F20();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2407CF000, v15, v16, "Detected connection invalidation. Not attempting to send a response to the child device", v17, 2u);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  v21 = *(v0 + 488);
  v20 = *(v0 + 496);
  v22 = *(v0 + 472);
  v23 = *(v0 + 448);
  v24 = *(v0 + 408);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v24 = xmmword_2408D8E50;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 16) = 0;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2408AB4BC()
{
  sub_2408B4AE0(v0[65], MEMORY[0x277CEDB08]);
  v1 = v0[72];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[56];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408AB594()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v13 = *v1;
  *(*v1 + 704) = v0;

  v4 = *(v2 + 688);
  v5 = *(v2 + 680);
  v6 = *(v2 + 672);
  if (v0)
  {
    v7 = *(v2 + 432);
    sub_2407D2028(*(v2 + 656), *(v2 + 664));
    v8 = sub_2408AB800;
  }

  else
  {
    v9 = *(v2 + 664);
    v10 = *(v2 + 656);
    v7 = *(v2 + 432);
    v11 = *(v2 + 272);
    *(v2 + 712) = *(v2 + 256);
    *(v2 + 728) = v11;
    *(v2 + 744) = *(v2 + 288);
    sub_2407D2028(v10, v9);
    v8 = sub_2408AB6FC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408AB6FC()
{
  v1 = *(v0 + 744);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 408);
  v11 = *(v0 + 728);
  v12 = *(v0 + 712);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v8 = v12;
  *(v8 + 16) = v11;
  *(v8 + 32) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2408AB800()
{
  sub_2408B4AE0(v0[65], MEMORY[0x277CEDB08]);
  v1 = v0[88];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[56];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408AB8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v8 = *v1;
  *(*v1 + 760) = v0;

  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_2408ABB04;
  }

  else
  {
    v6 = *(v2 + 232);
    *(v2 + 768) = *(v2 + 216);
    *(v2 + 784) = v6;
    *(v2 + 800) = *(v2 + 248);
    v5 = sub_2408ABA04;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408ABA04()
{
  v1 = *(v0 + 800);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 408);
  v11 = *(v0 + 784);
  v12 = *(v0 + 768);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v8 = v12;
  *(v8 + 16) = v11;
  *(v8 + 32) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2408ABB04()
{
  sub_2408B4AE0(v0[65], MEMORY[0x277CEDB08]);
  v1 = v0[95];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[56];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408ABBDC()
{
  v1 = *(v0 + 840);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 408);
  v11 = *(v0 + 824);
  v12 = *(v0 + 808);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v8 = v12;
  *(v8 + 16) = v11;
  *(v8 + 32) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2408ABCE0()
{
  sub_2408B4AE0(v0[65], MEMORY[0x277CEDB08]);
  v1 = v0[79];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[56];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408ABDB8()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v10 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = v2[54];
    v5 = sub_2408ABFB0;
  }

  else
  {
    v6 = v2[107];
    v7 = v2[106];
    v8 = v2[54];

    v5 = sub_2408ABEEC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408ABEEC()
{
  v1 = v0[68];
  swift_willThrow();
  v2 = v0[68];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[59];
  v9 = v0[56];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2408ABFB0()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[68];

  v4 = v0[109];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[61];
  v8 = v0[62];
  v10 = v0[59];
  v11 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408AC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 264) = a3;
  *(v4 + 272) = v3;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  v5 = *(a3 + 16);
  *(v4 + 280) = *a3;
  *(v4 + 296) = v5;
  *(v4 + 312) = *(a3 + 32);
  v6 = sub_2408D44C0();
  *(v4 + 320) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AC15C, v3, 0);
}

uint64_t sub_2408AC15C()
{
  v28 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_2408D4B20();
  *(v0 + 360) = __swift_project_value_buffer(v2, qword_27E507CB8);
  sub_2407EEE04(v1, v0 + 16, &qword_27E507958, &qword_2408D9100);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();
  sub_2407D9440(v1, &qword_27E507958, &qword_2408D9100);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 8);
    if (v8 == 20)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v11 = *(v0 + 264);
      v12 = *v11;
      v13 = v11[4];
      *(v0 + 192) = *(v11 + 1);
      *(v0 + 208) = v13;
      *(v0 + 176) = v12;
      *(v0 + 184) = v8;
      sub_2408B2C28();
      v10 = sub_2408D5290();
      v9 = v14;
    }

    v15 = sub_2408CC504(v10, v9, &v27);

    *(v6 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v3, v4, "Sending completion state with finalError=%s to child device", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 264);
  v18 = *(v0 + 296);
  *(v0 + 56) = *(v0 + 280);
  *(v0 + 72) = v18;
  *(v0 + 88) = v16;
  sub_2407EEE04(v17, v0 + 96, &qword_27E507958, &qword_2408D9100);
  v19 = *(MEMORY[0x277CED570] + 4);
  v26 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v20 = swift_task_alloc();
  *(v0 + 368) = v20;
  v21 = sub_2408B3BA4();
  *v20 = v0;
  v20[1] = sub_2408AC404;
  v22 = *(v0 + 344);
  v23 = *(v0 + 256);
  v24 = MEMORY[0x277CEDB00];

  return v26(v22, v0 + 56, v24, v21);
}

uint64_t sub_2408AC404()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_2408AC744;
  }

  else
  {
    v5 = sub_2408AC51C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408AC51C()
{
  v18 = v0;
  v1 = v0[44];
  v2 = v0[42];
  sub_2408B309C(v0[43], v1);
  sub_2408B3C58(v1, v2, MEMORY[0x277CEDB08]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_2408D44B0();
    v11 = v10;
    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
    v12 = sub_2408CC504(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received response from child device after sending completion state. Response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
  }

  v0[48] = *(v0[34] + 112);
  v13 = *(MEMORY[0x277CED870] + 4);
  v16 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v14 = swift_task_alloc();
  v0[49] = v14;
  *v14 = v0;
  v14[1] = sub_2408AC938;

  return v16(sub_2408C282C, 0);
}

uint64_t sub_2408AC744()
{
  v22 = v0;
  v1 = v0[47];
  v2 = v0[45];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[47];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[29];
    v12 = sub_2408D5290();
    v14 = sub_2408CC504(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Received error after attempting to send completion state to child: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v15 = v0[47];
  v0[51] = *(v0[34] + 112);
  v16 = swift_task_alloc();
  v0[52] = v16;
  *(v16 + 16) = v15;
  v17 = *(MEMORY[0x277CED870] + 4);
  v20 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v18 = swift_task_alloc();
  v0[53] = v18;
  *v18 = v0;
  v18[1] = sub_2408ACF9C;

  return v20(sub_2408B3BF8, v16);
}

uint64_t sub_2408AC938()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 272);

  if (v0)
  {
    v7 = sub_2408ACEF8;
  }

  else
  {
    v7 = sub_2408ACA80;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2408ACA80()
{
  v50 = v0;
  v1 = v0[40];
  sub_2408B3C58(v0[44], v0[41], MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[45];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_2408D4B10();
      v13 = sub_2408D4F40();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[44];
      if (v14)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2407CF000, v12, v13, "Unexpectedly received migration completion acknowledgement when sending flow completion state to child device.", v16, 2u);
        MEMORY[0x245CC9F60](v16, -1, -1);
      }

      v11 = MEMORY[0x277CEDB08];
      v10 = v15;
      goto LABEL_10;
    }

    v38 = sub_2408D4B10();
    v39 = sub_2408D4F10();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2407CF000, v38, v39, "Child acknowledged flow completion state.", v40, 2u);
      MEMORY[0x245CC9F60](v40, -1, -1);
    }

    v41 = v0[44];
    v42 = v0[33];

    sub_2408B4AE0(v41, MEMORY[0x277CEDB08]);
    v18 = *(v42 + 8);
    if (v18 == 20)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v43 = v0[38];
    v44 = v0[39];
    v45 = v0[37];
    v46 = v0[33];
    v20 = v46[3];
    v21 = v46[4];
    v19 = v46[2];
    v17 = *v46;
    sub_2408B3C10(v0[35], v0[36]);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = sub_2408D4B10();
      v5 = sub_2408D4F40();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2407CF000, v4, v5, "Unexpectedly received migration info when sending flow completion state to child device.", v6, 2u);
        MEMORY[0x245CC9F60](v6, -1, -1);
      }

      v7 = v0[44];
      v8 = v0[41];

      v9 = MEMORY[0x277CEDB08];
      sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
      v10 = v8;
      v11 = v9;
LABEL_10:
      sub_2408B4AE0(v10, v11);
      v17 = 0;
      v18 = 0;
LABEL_11:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_12;
    }

    v29 = v0[41];
    v17 = *v29;
    v18 = v29[1];
    v19 = v29[2];
    v20 = v29[3];
    v21 = v29[4];
    sub_2408B3C10(*v29, v18);
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F10();
    sub_2408B2DE8(v17, v18);
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[44];
    if (v32)
    {
      v48 = v31;
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v34 = 136315138;
      v0[17] = v17;
      v0[18] = v18;
      v0[19] = v19;
      v0[20] = v20;
      v0[21] = v21;
      sub_2408B2C28();
      v35 = sub_2408D5290();
      v37 = sub_2408CC504(v35, v36, &v49);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_2407CF000, v30, v48, "Failed to send flow completion state to child device due to error: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x245CC9F60](v47, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);

      sub_2408B4AE0(v33, MEMORY[0x277CEDB08]);
    }

    else
    {

      sub_2408B4AE0(v33, MEMORY[0x277CEDB08]);
    }
  }

LABEL_12:
  v23 = v0[43];
  v22 = v0[44];
  v25 = v0[41];
  v24 = v0[42];
  v26 = v0[31];

  *v26 = v17;
  v26[1] = v18;
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = v21;
  v27 = v0[1];

  return v27();
}

uint64_t sub_2408ACEF8()
{
  sub_2408B4AE0(v0[44], MEMORY[0x277CEDB08]);
  v1 = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2408ACF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v10 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = sub_2408AD164;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[52];
    v8 = v2[34];

    v5 = sub_2408AD0CC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408AD0CC()
{
  v1 = v0[47];
  swift_willThrow();
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408AD164()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[47];

  v4 = v0[54];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[41];
  v7 = v0[42];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408AD208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = sub_2408D34E0();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v11 = sub_2408D4350();
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074F0, &qword_2408D8048) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v16 = sub_2408D3D60();
  v4[25] = v16;
  v17 = *(v16 - 8);
  v4[26] = v17;
  v4[27] = *(v17 + 64);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AD488, v3, 0);
}

uint64_t sub_2408AD488()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[10];
  v14 = v0[9];
  v5 = v0[7];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v3 + 16);
  v7(v1, v5, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v1, v4);
  v0[30] = sub_2408D3D80();
  v7(v1, v5, v4);
  sub_2407EEE04(v14, v15, &qword_27E507F00, &qword_2408D6D50);
  v10 = sub_2408D4760();
  (*(*(v10 - 8) + 56))(v16, 1, 1, v10);

  v0[31] = sub_2408D3D40();
  v0[32] = swift_allocObject();
  swift_weakInit();
  sub_2408B4B40(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);

  v12 = sub_2408D4E00();
  v0[33] = v12;
  v0[34] = v11;

  return MEMORY[0x2822009F8](sub_2408AD704, v12, v11);
}

uint64_t sub_2408AD704()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[10];
  sub_2408D3D00();

  return MEMORY[0x2822009F8](sub_2408AD79C, v3, 0);
}

uint64_t sub_2408AD79C()
{
  v0[35] = *(v0[10] + 112);
  v1 = *(MEMORY[0x277CED858] + 4);
  v5 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_2408AD860;
  v3 = v0[22];

  return v5(v3);
}

uint64_t sub_2408AD860()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408AD98C, v3, 0);
}

uint64_t sub_2408AD98C()
{
  v50 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  sub_2408D42C0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 104))(v5, *MEMORY[0x277CED258], v7);
  LOBYTE(v1) = MEMORY[0x245CC7910](v4, v5);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  if (v1)
  {
    v9 = v0[33];
    v10 = v0[34];

    return MEMORY[0x2822009F8](sub_2408ADDDC, v9, v10);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v11 = v0[31];
    v12 = v0[15];
    v13 = v0[11];
    v14 = v0[12];
    v15 = v0[8];
    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v17 = *(v14 + 16);
    v17(v12, v15, v13);

    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();

    if (os_log_type_enabled(v18, v19))
    {
      v45 = v0[31];
      v46 = v0[30];
      v20 = v17;
      v22 = v0[14];
      v21 = v0[15];
      v24 = v0[11];
      v23 = v0[12];
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v25 = 136315394;
      v20(v22, v21, v24);
      v26 = sub_2408D4D40();
      v28 = v27;
      (*(v23 + 8))(v21, v24);
      v29 = sub_2408CC504(v26, v28, &v49);

      *(v25 + 4) = v29;
      v17 = v20;
      *(v25 + 12) = 2080;
      v0[6] = v45;

      v30 = sub_2408D4D40();
      v32 = sub_2408CC504(v30, v31, &v49);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_2407CF000, v18, v19, "Registering transport %s using router %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v47, -1, -1);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    else
    {
      v33 = v0[15];
      v34 = v0[11];
      v35 = v0[12];

      (*(v35 + 8))(v33, v34);
    }

    v36 = v0[10];
    v17(v0[13], v0[8], v0[11]);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    v0[2] = v36;
    v0[5] = v37;
    v38 = *(MEMORY[0x277CED5A0] + 4);
    v48 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);

    v39 = swift_task_alloc();
    v0[37] = v39;
    v40 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80);
    *v39 = v0;
    v39[1] = sub_2408AE1D4;
    v41 = v0[31];
    v42 = v0[13];
    v43 = v0[11];

    return v48(v42, v0 + 2, v43, v40);
  }
}

uint64_t sub_2408ADDDC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 80);
  sub_2408D3D20();

  return MEMORY[0x2822009F8](sub_2408ADE60, v2, 0);
}

uint64_t sub_2408ADE60()
{
  v40 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E507CB8);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[31];
    v36 = v0[30];
    v10 = v7;
    v12 = v0[14];
    v11 = v0[15];
    v14 = v0[11];
    v13 = v0[12];
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v15 = 136315394;
    v10(v12, v11, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_2408CC504(v16, v18, &v39);

    *(v15 + 4) = v19;
    v7 = v10;
    *(v15 + 12) = 2080;
    v0[6] = v35;

    v20 = sub_2408D4D40();
    v22 = sub_2408CC504(v20, v21, &v39);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2407CF000, v8, v9, "Registering transport %s using router %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v37, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  else
  {
    v23 = v0[15];
    v24 = v0[11];
    v25 = v0[12];

    (*(v25 + 8))(v23, v24);
  }

  v26 = v0[10];
  v7(v0[13], v0[8], v0[11]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
  v0[2] = v26;
  v0[5] = v27;
  v28 = *(MEMORY[0x277CED5A0] + 4);
  v38 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);

  v29 = swift_task_alloc();
  v0[37] = v29;
  v30 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80);
  *v29 = v0;
  v29[1] = sub_2408AE1D4;
  v31 = v0[31];
  v32 = v0[13];
  v33 = v0[11];

  return v38(v32, v0 + 2, v33, v30);
}

uint64_t sub_2408AE1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_2408AE3F0;
  }

  else
  {
    v6 = *(v2 + 80);
    sub_2407D9440(v2 + 16, &qword_27E507FA0, &qword_2408D7FB0);
    v5 = sub_2408AE30C;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408AE30C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];

  v11 = v0[1];
  v12 = v0[31];

  return v11(v12);
}

uint64_t sub_2408AE3F0()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v14 = v0[13];

  sub_2407D9440((v0 + 2), &qword_27E507FA0, &qword_2408D7FB0);

  v11 = v0[1];
  v12 = v0[38];

  return v11();
}

uint64_t sub_2408AE4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2408AE520, 0, 0);
}

uint64_t sub_2408AE520()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = [objc_opt_self() sharedInstance];
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_2408AE7BC;
    v4 = v0[9];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];

    return sub_2408AEBCC(v7, v5, v6, v4);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E507CB8);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F40();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "AgeMigrationService was deallocated while handling request", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CED7E8], v13);
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2408AE7BC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_2408AE954;
  }

  else
  {
    v5 = sub_2408AE8F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2408AE8F0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2408AE954()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

void sub_2408AE9B8()
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v0 = sub_2408D4B20();
  __swift_project_value_buffer(v0, qword_27E507CB8);
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F20();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2407CF000, v1, v2, "Received router invalidation, cancelling service", v3, 2u);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_2408D3D70();
    sub_2408B4B40(&qword_27E506D20, 255, MEMORY[0x277CED590]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277CED580], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    sub_2407D917C(&qword_27E507908, &qword_27E5078F8, &unk_2408D9040);
    sub_2408D4270();
  }
}

uint64_t sub_2408AEBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_2408D4220();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_2408D3D60();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = sub_2408D4A40();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AED94, v4, 0);
}

uint64_t sub_2408AED94()
{
  v126 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 80);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 224);
  v123 = v6;
  if (v9)
  {
    v11 = *(v0 + 216);
    v12 = v6;
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v125[0] = v118;
    *v15 = 136315138;
    v12(v11, v10, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = v14;
    v20 = *(v13 + 8);
    v20(v10, v19);
    v21 = sub_2408CC504(v16, v18, v125);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Receiving request %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v118);
    MEMORY[0x245CC9F60](v118, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);

    v20 = *(v23 + 8);
    v20(v10, v22);
  }

  *(v0 + 232) = v20;
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 136);
  v27 = *(v0 + 96);
  (*(v25 + 104))(v24, *MEMORY[0x277CED568], v26);
  LOBYTE(v27) = sub_2408D3D50();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    v123(v28, *(v0 + 80), v29);
    v31 = (*(v30 + 88))(v28, v29);
    if (v31 == *MEMORY[0x277CEDE08])
    {
      v32 = *(v0 + 184);
      v33 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = *(v0 + 120);
      v35 = *(v0 + 128);
      v38 = *(v0 + 104);
      v37 = *(v0 + 112);
      v123(v32, *(v0 + 208), v33);
      (*(v34 + 96))(v32, v33);
      (*(v36 + 32))(v35, v32, v37);
      sub_2408D3F20();
      v39 = *(v38 + 144);
      v40 = *(MEMORY[0x277CED660] + 4);
      v41 = swift_task_alloc();
      *(v0 + 280) = v41;
      *v41 = v0;
      v41[1] = sub_2408AF93C;
      v42 = *(v0 + 128);
      v43 = *(v0 + 72);

      return MEMORY[0x28213F3D0](v43, v42, v39);
    }

    if (v31 == *MEMORY[0x277CEDDE8])
    {
      v59 = *(v0 + 192);
      v60 = *(v0 + 160);
      v61 = *(v0 + 168);
      v123(v59, *(v0 + 208), v60);
      (*(v61 + 96))(v59, v60);
      v62 = *v59;
      *(v0 + 240) = *v59;
      v63 = v59[1];
      *(v0 + 248) = v63;
      v64 = v59[2];
      *(v0 + 256) = v64;
      v65 = v59[3];
      *(v0 + 264) = v65;
      v66 = v59[4];
      *(v0 + 272) = v66;
      if (v63 == 21)
      {
        v107 = swift_task_alloc();
        *(v0 + 296) = v107;
        *v107 = v0;
        v107[1] = sub_2408AFA68;
        v108 = *(v0 + 104);
        v109 = *(v0 + 72);

        return sub_2408B05F8(v109);
      }

      else if (v63 == 22)
      {
        *(v0 + 312) = *(*(v0 + 104) + 112);
        v67 = *(MEMORY[0x277CED870] + 4);
        v124 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

        v68 = swift_task_alloc();
        *(v0 + 320) = v68;
        *v68 = v0;
        v68[1] = sub_2408AFB94;

        return v124(sub_2408C2260, 0);
      }

      else
      {
        *&v110 = v62;
        *(&v110 + 1) = v63;
        *&v111 = v64;
        *(&v111 + 1) = v65;
        *(v0 + 16) = v110;
        *(v0 + 32) = v111;
        *(v0 + 48) = v66;
        v112 = swift_task_alloc();
        *(v0 + 336) = v112;
        *v112 = v0;
        v112[1] = sub_2408AFF18;
        v113 = *(v0 + 104);
        v114 = *(v0 + 72);

        return sub_2408B2274(v114, v0 + 16);
      }
    }

    v84 = *(v0 + 88);
    v123(*(v0 + 176), *(v0 + 80), *(v0 + 160));

    v85 = sub_2408D4B10();
    v86 = sub_2408D4F30();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = *(v0 + 216);
      v88 = *(v0 + 168);
      v89 = *(v0 + 176);
      v122 = v20;
      v90 = *(v0 + 160);
      v117 = *(v0 + 88);
      v91 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v125[0] = v120;
      *v91 = 136315394;
      v123(v87, v89, v90);
      v92 = sub_2408D4D40();
      v94 = v93;
      v95 = v90;
      v20 = v122;
      v122(v89, v95);
      v96 = sub_2408CC504(v92, v94, v125);

      *(v91 + 4) = v96;
      *(v91 + 12) = 2080;
      *(v0 + 64) = v117;
      sub_2408D3D80();

      v97 = sub_2408D4D40();
      v99 = sub_2408CC504(v97, v98, v125);

      *(v91 + 14) = v99;
      _os_log_impl(&dword_2407CF000, v85, v86, "Server (child) received an unknown request %s from router %s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v120, -1, -1);
      MEMORY[0x245CC9F60](v91, -1, -1);
    }

    else
    {
      v101 = *(v0 + 168);
      v100 = *(v0 + 176);
      v102 = *(v0 + 160);

      v20(v100, v102);
    }

    v103 = *(v0 + 208);
    v104 = *(v0 + 160);
    v105 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    swift_allocError();
    (*(*(v105 - 8) + 104))(v106, *MEMORY[0x277CED7E0], v105);
    swift_willThrow();
    v20(v103, v104);
  }

  else
  {
    v44 = *(v0 + 88);
    v123(*(v0 + 200), *(v0 + 80), *(v0 + 160));

    v45 = sub_2408D4B10();
    v46 = sub_2408D4F30();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 216);
      v48 = *(v0 + 200);
      v116 = *(v0 + 168);
      v121 = v20;
      v49 = *(v0 + 160);
      v50 = *(v0 + 88);
      v51 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v125[0] = v119;
      *v51 = 136315394;
      v123(v47, v48, v49);
      v52 = sub_2408D4D40();
      v54 = v53;
      v121(v48, v49);
      v55 = sub_2408CC504(v52, v54, v125);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v0 + 56) = v50;
      sub_2408D3D80();

      v56 = sub_2408D4D40();
      v58 = sub_2408CC504(v56, v57, v125);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_2407CF000, v45, v46, "Client (parent) should not be receiving any requests. We only have one request from parent to child to request information for age migration. Received %s from router %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v119, -1, -1);
      MEMORY[0x245CC9F60](v51, -1, -1);
    }

    else
    {
      v69 = *(v0 + 200);
      v70 = *(v0 + 160);
      v71 = *(v0 + 168);

      v20(v69, v70);
    }

    v72 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    swift_allocError();
    (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277CED7E0], v72);
    swift_willThrow();
  }

  v75 = *(v0 + 216);
  v74 = *(v0 + 224);
  v77 = *(v0 + 200);
  v76 = *(v0 + 208);
  v79 = *(v0 + 184);
  v78 = *(v0 + 192);
  v80 = *(v0 + 176);
  v81 = *(v0 + 152);
  v82 = *(v0 + 128);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_2408AF93C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_2408B04E4;
  }

  else
  {
    v6 = sub_2408B038C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408AFA68()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_2408B01A4;
  }

  else
  {
    v6 = sub_2408B00B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408AFB94()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_2408AFE14;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 104);

    v5 = sub_2408AFCBC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408AFCBC()
{
  v1 = *(v0 + 72);
  sub_2408D44C0();
  swift_storeEnumTagMultiPayload();
  v2 = *MEMORY[0x277CEDE10];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168) + 8;
  v12 = *(v0 + 128);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2408AFE14()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[21];

  v2(v3, v4);
  v6 = v0[41];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2408AFF18()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[32];
  v8 = v2[31];
  v9 = v2[30];
  v10 = v2[13];
  sub_2408B305C(v9, v8);
  if (v0)
  {
    v11 = sub_2408B0298;
  }

  else
  {
    v11 = sub_2408B5308;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2408B00B0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 168) + 8;
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2408B01A4()
{
  v1 = *(v0 + 168) + 8;
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));
  v2 = *(v0 + 304);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408B0298()
{
  v1 = *(v0 + 168) + 8;
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));
  v2 = *(v0 + 344);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408B038C()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v2 = *MEMORY[0x277CEDE30];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168) + 8;
  v12 = *(v0 + 128);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2408B04E4()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[21];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1(v2, v3);
  v5 = v0[36];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2408B05F8(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = sub_2408D44C0();
  v2[56] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v5 = sub_2408D36A0();
  v2[59] = v5;
  v6 = *(v5 - 8);
  v2[60] = v6;
  v7 = *(v6 + 64) + 15;
  v2[61] = swift_task_alloc();
  v8 = sub_2408D36F0();
  v2[62] = v8;
  v9 = *(v8 - 8);
  v2[63] = v9;
  v10 = *(v9 + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v11 = sub_2408D3680();
  v2[66] = v11;
  v12 = *(v11 - 8);
  v2[67] = v12;
  v13 = *(v12 + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v14 = sub_2408D38D0();
  v2[70] = v14;
  v15 = *(v14 - 8);
  v2[71] = v15;
  v16 = *(v15 + 64) + 15;
  v2[72] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v18 = sub_2408D3970();
  v2[74] = v18;
  v19 = *(v18 - 8);
  v2[75] = v19;
  v20 = *(v19 + 64) + 15;
  v2[76] = swift_task_alloc();
  v21 = sub_2408D4350();
  v2[77] = v21;
  v22 = *(v21 - 8);
  v2[78] = v22;
  v23 = *(v22 + 64) + 15;
  v2[79] = swift_task_alloc();
  v24 = sub_2408D3430();
  v2[80] = v24;
  v25 = *(v24 - 8);
  v2[81] = v25;
  v26 = *(v25 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B0978, v1, 0);
}

uint64_t sub_2408B0978()
{
  v1 = *(v0[55] + 128);
  v0[2] = v0;
  v0[7] = v0 + 53;
  v0[3] = sub_2408B0A98;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507948, &qword_2408D90F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2408B21A4;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2408B0A98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 672) = v3;
  v4 = *(v1 + 440);
  if (v3)
  {
    v5 = sub_2408B12E4;
  }

  else
  {
    v5 = sub_2408B0BB8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408B0BB8()
{
  v1 = *(v0 + 424);
  *(v0 + 680) = v1;
  if (v1)
  {
    v2 = [v1 aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2408D4D30();
      v6 = v5;

      *(v0 + 688) = v4;
      *(v0 + 696) = v6;
      *(v0 + 704) = sub_2408D5050();
      *(v0 + 712) = v7;
      if (v7)
      {
        v8 = [v1 aa_pendingDOB];
        if (v8)
        {
          v9 = *(v0 + 664);
          v10 = *(v0 + 440);
          v11 = v8;
          sub_2408D3420();

          *(v0 + 720) = *(v10 + 112);
          v12 = *(MEMORY[0x277CED858] + 4);
          v46 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

          v13 = swift_task_alloc();
          *(v0 + 728) = v13;
          *v13 = v0;
          v13[1] = sub_2408B1408;
          v14 = *(v0 + 632);

          return v46(v14);
        }

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
          _os_log_impl(&dword_2407CF000, v29, v30, "Server (child) does not have a pending date of birth", v31, 2u);
          MEMORY[0x245CC9F60](v31, -1, -1);
        }

        *(v0 + 264) = 0;
        *(v0 + 272) = 6;
        sub_2408D41D0();
        sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
        *(v0 + 288) = 0;
        *(v0 + 296) = 0;
        *(v0 + 280) = 0;
        swift_allocError();
      }

      else
      {

        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v24 = sub_2408D4B20();
        __swift_project_value_buffer(v24, qword_27E507CB8);
        v25 = sub_2408D4B10();
        v26 = sub_2408D4F30();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_2407CF000, v25, v26, "Server (child) does not have an altDSID for the primary account", v27, 2u);
          MEMORY[0x245CC9F60](v27, -1, -1);
        }

        *(v0 + 224) = xmmword_2408D8E90;
        sub_2408D41D0();
        sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
        *(v0 + 248) = 0;
        *(v0 + 256) = 0;
        *(v0 + 240) = 0;
        swift_allocError();
      }
    }

    else
    {
      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      v20 = sub_2408D4B20();
      __swift_project_value_buffer(v20, qword_27E507CB8);
      v21 = sub_2408D4B10();
      v22 = sub_2408D4F30();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2407CF000, v21, v22, "Server(child) does not have a DSID for the primary account", v23, 2u);
        MEMORY[0x245CC9F60](v23, -1, -1);
      }

      *(v0 + 184) = xmmword_2408D8EA0;
      sub_2408D41D0();
      sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 200) = 0;
      swift_allocError();
    }

    sub_2408D4460();
    swift_willThrow();
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Server (child) does not have a primary account", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    *(v0 + 144) = xmmword_2408D8EB0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 160) = 0;
    swift_allocError();
    sub_2408D4460();
    swift_willThrow();
  }

  v32 = *(v0 + 664);
  v33 = *(v0 + 656);
  v34 = *(v0 + 632);
  v35 = *(v0 + 608);
  v36 = *(v0 + 584);
  v37 = *(v0 + 576);
  v38 = *(v0 + 552);
  v39 = *(v0 + 544);
  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v43 = *(v0 + 488);
  v44 = *(v0 + 464);
  v45 = *(v0 + 456);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_2408B12E4()
{
  v1 = v0[84];
  swift_willThrow();
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[79];
  v5 = v0[76];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[65];
  v11 = v0[64];
  v14 = v0[61];
  v15 = v0[58];
  v16 = v0[57];
  v17 = v0[84];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408B1408()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 440);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408B1534, v3, 0);
}

uint64_t sub_2408B1534()
{
  v142 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  sub_2408D4330();
  v5 = (*(v2 + 48))(v4, 1, v3);
  v6 = *(v0 + 584);
  if (v5 == 1)
  {
    v7 = *(v0 + 712);
    v8 = *(v0 + 696);

    sub_2407D9440(v6, &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E507CB8);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Server (child) does not have an IdMSAccount on its AgeMigrationModel", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = *(v0 + 680);
    v14 = *(v0 + 664);
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);

    *(v0 + 304) = xmmword_2408D8ED0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0;
    *(v0 + 320) = 0;
    swift_allocError();
    sub_2408D4460();
    swift_willThrow();

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    goto LABEL_24;
  }

  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 584), *(v0 + 592));
  sub_2408D38F0();
  sub_2408D38C0();
  v24 = v23;
  (*(v21 + 8))(v20, v22);
  if (!v24)
  {
    v59 = *(v0 + 712);
    v60 = *(v0 + 696);

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v61 = sub_2408D4B20();
    __swift_project_value_buffer(v61, qword_27E507CB8);
    v62 = sub_2408D4B10();
    v63 = sub_2408D4F30();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2407CF000, v62, v63, "Server (child) does not have an account username", v64, 2u);
      MEMORY[0x245CC9F60](v64, -1, -1);
    }

    v65 = *(v0 + 680);
    v66 = *(v0 + 648);
    v130 = *(v0 + 640);
    v135 = *(v0 + 664);
    v125 = *(v0 + 632);
    v67 = *(v0 + 624);
    v68 = *(v0 + 616);
    v69 = *(v0 + 608);
    v70 = *(v0 + 600);
    v71 = *(v0 + 592);

    *(v0 + 344) = 0;
    *(v0 + 352) = 17;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 360) = 0;
    swift_allocError();
    goto LABEL_23;
  }

  v25 = *(v0 + 608);
  v26 = *(v0 + 480);
  v27 = *(v0 + 488);
  v28 = *(v0 + 472);
  sub_2408D3780();
  if ((*(v26 + 88))(v27, v28) != *MEMORY[0x277CED390])
  {
    v72 = *(v0 + 696);
    v73 = *(v0 + 480);
    v74 = *(v0 + 488);
    v75 = *(v0 + 472);

    (*(v73 + 8))(v74, v75);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v76 = sub_2408D4B20();
    __swift_project_value_buffer(v76, qword_27E507CB8);
    v77 = sub_2408D4B10();
    v78 = sub_2408D4F30();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_2407CF000, v77, v78, "Server (child) either has nil model account or incorrect credential type.", v79, 2u);
      MEMORY[0x245CC9F60](v79, -1, -1);
    }

    v65 = *(v0 + 680);
    v66 = *(v0 + 648);
    v130 = *(v0 + 640);
    v135 = *(v0 + 664);
    v125 = *(v0 + 632);
    v67 = *(v0 + 624);
    v68 = *(v0 + 616);
    v69 = *(v0 + 608);
    v70 = *(v0 + 600);
    v71 = *(v0 + 592);

    *(v0 + 384) = xmmword_2408D8EC0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 400) = 0;
    swift_allocError();
LABEL_23:
    sub_2408D4460();
    swift_willThrow();

    (*(v70 + 8))(v69, v71);
    (*(v67 + 8))(v125, v68);
    (*(v66 + 8))(v135, v130);
LABEL_24:
    v80 = *(v0 + 664);
    v81 = *(v0 + 656);
    v82 = *(v0 + 632);
    v83 = *(v0 + 608);
    v84 = *(v0 + 584);
    v85 = *(v0 + 576);
    v86 = *(v0 + 552);
    v87 = *(v0 + 544);
    v88 = *(v0 + 520);
    v89 = *(v0 + 512);
    v126 = *(v0 + 488);
    v131 = *(v0 + 464);
    v136 = *(v0 + 456);

    v90 = *(v0 + 8);
    goto LABEL_25;
  }

  v133 = *(v0 + 696);
  v138 = *(v0 + 704);
  v123 = *(v0 + 688);
  v110 = *(v0 + 664);
  v106 = *(v0 + 656);
  v128 = *(v0 + 712);
  v29 = *(v0 + 648);
  v108 = *(v0 + 640);
  v30 = *(v0 + 552);
  v31 = *(v0 + 536);
  v32 = *(v0 + 528);
  v101 = *(v0 + 520);
  v33 = *(v0 + 504);
  v112 = *(v0 + 544);
  v114 = *(v0 + 512);
  v34 = *(v0 + 488);
  v35 = *(v0 + 496);
  v116 = *(v0 + 464);
  v120 = *(v0 + 448);
  (*(*(v0 + 480) + 96))(v34, *(v0 + 472));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507950, &qword_2408D90F8);
  v37 = *(v36 + 48);
  v38 = (v34 + *(v36 + 64));
  v102 = v38[1];
  v104 = *v38;
  (*(v31 + 32))(v30, v34, v32);
  (*(v33 + 32))(v101, v34 + v37, v35);
  (*(v29 + 16))(v106, v110, v108);
  (*(v31 + 16))(v112, v30, v32);
  (*(v33 + 16))(v114, v101, v35);
  sub_2408D4470();
  swift_storeEnumTagMultiPayload();
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 456);
  v40 = *(v0 + 464);
  v41 = sub_2408D4B20();
  __swift_project_value_buffer(v41, qword_27E507CB8);
  sub_2408B3C58(v40, v39, MEMORY[0x277CEDB08]);
  v42 = sub_2408D4B10();
  v111 = sub_2408D4F20();
  v43 = os_log_type_enabled(v42, v111);
  v117 = *(v0 + 680);
  v44 = *(v0 + 664);
  v45 = *(v0 + 648);
  v46 = *(v0 + 640);
  v47 = *(v0 + 624);
  v134 = *(v0 + 616);
  v139 = *(v0 + 632);
  v129 = *(v0 + 608);
  v48 = *(v0 + 600);
  v121 = *(v0 + 552);
  v124 = *(v0 + 592);
  v49 = *(v0 + 536);
  v118 = *(v0 + 528);
  v50 = *(v0 + 496);
  v51 = *(v0 + 504);
  v113 = v50;
  v115 = *(v0 + 520);
  v52 = *(v0 + 456);
  if (v43)
  {
    v109 = *(v0 + 648);
    v53 = swift_slowAlloc();
    v107 = v44;
    v54 = swift_slowAlloc();
    v141 = v54;
    *v53 = 136315138;
    v103 = v47;
    v105 = v46;
    v55 = sub_2408D44B0();
    v57 = v56;
    sub_2408B4AE0(v52, MEMORY[0x277CEDB08]);
    v58 = sub_2408CC504(v55, v57, &v141);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_2407CF000, v42, v111, "Sending response %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x245CC9F60](v54, -1, -1);
    MEMORY[0x245CC9F60](v53, -1, -1);

    (*(v51 + 8))(v115, v113);
    (*(v49 + 8))(v121, v118);
    (*(v48 + 8))(v129, v124);
    (*(v103 + 8))(v139, v134);
    (*(v109 + 8))(v107, v105);
  }

  else
  {

    sub_2408B4AE0(v52, MEMORY[0x277CEDB08]);
    (*(v51 + 8))(v115, v113);
    (*(v49 + 8))(v121, v118);
    (*(v48 + 8))(v129, v124);
    (*(v47 + 8))(v139, v134);
    (*(v45 + 8))(v44, v46);
  }

  v92 = *(v0 + 664);
  v93 = *(v0 + 656);
  v94 = *(v0 + 632);
  v95 = *(v0 + 608);
  v96 = *(v0 + 584);
  v97 = *(v0 + 576);
  v119 = *(v0 + 552);
  v122 = *(v0 + 544);
  v127 = *(v0 + 520);
  v132 = *(v0 + 512);
  v137 = *(v0 + 488);
  v140 = *(v0 + 456);
  v98 = *(v0 + 432);
  sub_2408B309C(*(v0 + 464), v98);
  v99 = *MEMORY[0x277CEDE10];
  v100 = sub_2408D4A50();
  (*(*(v100 - 8) + 104))(v98, v99, v100);

  v90 = *(v0 + 8);
LABEL_25:

  return v90();
}

uint64_t sub_2408B21A4(uint64_t a1, void *a2, void *a3)
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
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2408B2274(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_2408B2298, v2, 0);
}

uint64_t sub_2408B2298()
{
  v23 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507CB8);
  sub_2407EEE04(v1, v0 + 16, &qword_27E507958, &qword_2408D9100);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  sub_2407D9440(v1, &qword_27E507958, &qword_2408D9100);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 8);
    if (v8 == 20)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v11 = *(v0 + 104);
      v12 = *v11;
      v13 = v11[4];
      *(v0 + 72) = *(v11 + 1);
      *(v0 + 88) = v13;
      *(v0 + 56) = v12;
      *(v0 + 64) = v8;
      sub_2408B2C28();
      v10 = sub_2408D5290();
      v9 = v14;
    }

    v15 = sub_2408CC504(v10, v9, &v22);

    *(v6 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received completion request with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v16 = *(v0 + 104);
  *(v0 + 120) = *(*(v0 + 112) + 112);
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *(v17 + 16) = v16;
  v18 = *(MEMORY[0x277CED870] + 4);
  v21 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_2408B2528;

  return v21(sub_2408B3100, v17);
}

uint64_t sub_2408B2528()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = sub_2408B2718;
  }

  else
  {
    v6 = v2[15];
    v7 = v2[16];
    v8 = v2[14];

    v5 = sub_2408B2658;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408B2658()
{
  v1 = *(v0 + 96);
  sub_2408D44C0();
  swift_storeEnumTagMultiPayload();
  v2 = *MEMORY[0x277CEDE10];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408B2718()
{
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

void *sub_2408B2784(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2408B27F8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2408B2828(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_2408B28C4;

  return sub_2408A36E0((v2 + 2));
}

uint64_t sub_2408B28C4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_2408B2A08, v7, 0);
  }
}

uint64_t sub_2408B2A08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2408B2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2407D379C;

  return sub_240866D9C(a1, a2, a3, a4, v10);
}

uint64_t sub_2408B2AF8(uint64_t a1)
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

  return sub_2408B2A30(a1, v7, v8, v1 + v5, (v1 + v6));
}

unint64_t sub_2408B2C28()
{
  result = qword_27E5078F0;
  if (!qword_27E5078F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5078F0);
  }

  return result;
}

uint64_t sub_2408B2D2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2407DB6F0;

  return sub_2408B2828(a1, v1);
}

void sub_2408B2DDC(id a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_2407D2028(a1, a2);
  }
}

uint64_t sub_2408B2DE8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t sub_2408B2EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408B2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_2408D3D60() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return sub_2408AE4F8(a1, a2, a3, v10, v3 + v9);
}

uint64_t sub_2408B305C(uint64_t a1, unint64_t a2)
{
  if (a2 - 21 >= 2)
  {
    return sub_2407D2028(a1, a2);
  }

  return a1;
}

uint64_t sub_2408B309C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2408D44C0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2408B3108()
{
  result = qword_27E507978;
  if (!qword_27E507978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507978);
  }

  return result;
}

unint64_t sub_2408B31E8()
{
  result = qword_28130EF48;
  if (!qword_28130EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130EF48);
  }

  return result;
}

uint64_t sub_2408B3234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407DB6F0;

  return sub_2407F0714(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2408B32FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_240895308(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_2408B346C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2408D40F0() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2407DB6F0;

  return sub_24089C6C4(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_2408B3554(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2408B35AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2407DB6F0;

  return sub_2407F0014(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_2408B3670(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_24088C720(a1, v9, v10, v11, v1 + v6, v12, v1 + v8, v13);
}

uint64_t sub_2408B3814(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2407DB6F0;

  return sub_24088A548(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2408B3974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2408B39DC(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_240893550(a1, v9, v10, v11, v1 + v5, v12, v1 + v7, v1 + v8);
}

unint64_t sub_2408B3B50()
{
  result = qword_27E507A10;
  if (!qword_27E507A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A10);
  }

  return result;
}

unint64_t sub_2408B3BA4()
{
  result = qword_27E507A18;
  if (!qword_27E507A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A18);
  }

  return result;
}

uint64_t sub_2408B3C10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t sub_2408B3C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2408B3CC0()
{
  result = qword_27E507A28;
  if (!qword_27E507A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A28);
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_85Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2408B3F3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_2408948A8(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t objectdestroy_93Tm()
{
  v1 = sub_2408D40F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2408B4170(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2408D40F0() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2407DB6F0;

  return sub_24089BB80(a1, a2, v2 + 16, v2 + v7);
}

uint64_t objectdestroy_78Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_104Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_108Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
  v11 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2408B444C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_24088BBB8(a1, v9, v10, v11, v1 + v6, v12, v1 + v8, v13);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2408B4690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2407DB6F0;

  return sub_24088A184(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_127Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_132Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v7));
  v12 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2408B496C(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_240892CAC(a1, v9, v10, v11, v1 + v5, v12, v1 + v7, v1 + v8);
}

uint64_t sub_2408B4AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2408B4B40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2408B4B90(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = v36 - v6;
  v7 = sub_2408D4260();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = v36 - v12;
  v13 = sub_2408D4350();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v40 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2408D4FD0();
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v37 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2408D4FC0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v21 = sub_2408D4C70();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507680, &qword_2408D9330);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2408D71B0;
  *(v23 + 56) = &type metadata for BoolEntitlement;
  *(v23 + 64) = &off_281A84E68;
  *(v23 + 32) = 0xD00000000000002ALL;
  *(v23 + 40) = 0x80000002408DB390;
  *(v23 + 48) = 2;
  *(v2 + 16) = v23;
  type metadata accessor for AuditReport();
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v24 + 112) = 2;
  *(v24 + 116) = 0u;
  *(v24 + 132) = 0u;
  *(v24 + 148) = 1;
  *(v2 + 24) = v24;
  v25 = MEMORY[0x277D84F90];
  *(v2 + 32) = sub_2407F6144(MEMORY[0x277D84F90]);
  v36[1] = sub_2408B31E8();
  sub_2408D4C60();
  v48 = v25;
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v38 + 104))(v37, *MEMORY[0x277D85260], v39);
  v26 = sub_2408D4FF0();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  v27 = v41;
  *(v2 + 48) = v42;
  *(v2 + 56) = v27;
  *(v2 + 40) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A38, &qword_2408D9338);
  v28 = v27;

  sub_2408D4340();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507A40, &qword_27E507A38, &qword_2408D9338);
  v29 = sub_2408D4680();

  *(v3 + 64) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068);
  v30 = v43;
  sub_2408D4280();

  v31 = v45;
  v32 = v46;
  sub_2408D3F40();
  v33 = v44;
  v34 = v47;
  (*(v44 + 16))(v47, v30, v31);
  (*(v33 + 56))(v34, 0, 1, v31);
  swift_beginAccess();
  sub_2408C70EC(v34, v32);
  swift_endAccess();
  (*(v33 + 8))(v30, v31);
  return v3;
}

uint64_t sub_2408B51EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_24089E41C(a1, a2, v2);
}

unint64_t sub_2408B52A8()
{
  result = qword_27E507A60;
  if (!qword_27E507A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A60);
  }

  return result;
}

uint64_t sub_2408B5344()
{
  v0 = sub_2408D4B20();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v39 = &v37 - v4;
  v5 = sub_2408D3FC0();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2408D3FD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D3F80();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2408D4090();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D40A0();
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x277CED758])
  {
    (*(v19 + 96))(v22, v18);
    v25 = v43;
    v24 = v44;
    (*(v43 + 32))(v8, v22, v44);
    sub_2408D3FA0();
    v26 = sub_2408B5B30();
    (*(v10 + 8))(v13, v9);
    (*(v25 + 8))(v8, v24);
  }

  else if (v23 == *MEMORY[0x277CED750])
  {
    (*(v19 + 96))(v22, v18);
    v27 = v40;
    (*(v40 + 32))(v17, v22, v14);
    sub_2408D3F50();
    v26 = sub_2408B5B30();
    (*(v10 + 8))(v13, v9);
    (*(v27 + 8))(v17, v14);
  }

  else if (v23 == *MEMORY[0x277CED760])
  {
    v28 = v39;
    sub_2408D4920();
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F10();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2407CF000, v29, v30, "BLE connection invalidated after devices were paired. Showing error so user knows to restart the flow.", v31, 2u);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    (*(v41 + 8))(v28, v42);
    v26 = 1;
  }

  else
  {
    v32 = v38;
    sub_2408D4920();
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F20();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2407CF000, v33, v34, "BLE connection invalidation is either expected or not meaningful. No further action.", v35, 2u);
      MEMORY[0x245CC9F60](v35, -1, -1);
    }

    (*(v41 + 8))(v32, v42);
    (*(v19 + 8))(v22, v18);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_2408B58C4(void *a1)
{
  v2 = MEMORY[0x277CED360];
  a1[1] = sub_2408B5A20(&qword_27E507A68, MEMORY[0x277CED360]);
  a1[2] = sub_2408B5A20(&qword_27E507A70, v2);
  result = sub_2408B5A20(&qword_27E507A30, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_2408B5974(void *a1)
{
  v2 = MEMORY[0x277CED960];
  a1[1] = sub_2408B5A20(&qword_27E507A78, MEMORY[0x277CED960]);
  a1[2] = sub_2408B5A20(&qword_27E507A80, v2);
  result = sub_2408B5A20(&qword_27E507910, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_2408B5A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2408B5B30()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_2408D3FD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = *(v12 + 16);
  v22(&v44 - v20, v1, v11);
  v23 = (*(v12 + 88))(v21, v11);
  if (v23 != *MEMORY[0x277CED6A0])
  {
    if (v23 == *MEMORY[0x277CED698] || v23 == *MEMORY[0x277CED6A8])
    {
      (*(v12 + 8))(v21, v11);
      goto LABEL_6;
    }

    if (v23 != *MEMORY[0x277CED6B0])
    {
      if (v23 == *MEMORY[0x277CED6B8])
      {
        (*(v12 + 8))(v21, v11);
      }

      else if (v23 != *MEMORY[0x277CED690])
      {
        v34 = v46;
        sub_2408D4920();
        v22(v19, v1, v11);
        v35 = sub_2408D4B10();
        v36 = sub_2408D4F30();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v45 = v36;
          v38 = v37;
          v39 = swift_slowAlloc();
          v49 = v39;
          *v38 = 136315138;
          v22(v16, v19, v11);
          v44 = sub_2408D4D40();
          v41 = v40;
          v42 = *(v12 + 8);
          v42(v19, v11);
          v43 = sub_2408CC504(v44, v41, &v49);

          *(v38 + 4) = v43;
          _os_log_impl(&dword_2407CF000, v35, v45, "No further action for unknown pairing state %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          MEMORY[0x245CC9F60](v39, -1, -1);
          MEMORY[0x245CC9F60](v38, -1, -1);

          (*(v47 + 8))(v46, v48);
        }

        else
        {

          v42 = *(v12 + 8);
          v42(v19, v11);
          (*(v47 + 8))(v34, v48);
        }

        v42(v21, v11);
        return 0;
      }

      sub_2408D4920();
      v31 = sub_2408D4B10();
      v32 = sub_2408D4F20();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2407CF000, v31, v32, "No further action if pairing has not yet started or was cancelled", v33, 2u);
        MEMORY[0x245CC9F60](v33, -1, -1);
      }

      (*(v47 + 8))(v10, v48);
      return 0;
    }
  }

  (*(v12 + 96))(v21, v11);
  v24 = *(v21 + 1);

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  v26 = sub_2408D40F0();
  (*(*(v26 - 8) + 8))(&v21[v25], v26);
LABEL_6:
  sub_2408D4920();
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F10();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2407CF000, v27, v28, "BLE connection was invalidated while device was in a pairing code step. Showing error so user knows to restart.", v29, 2u);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  (*(v47 + 8))(v8, v48);
  return 1;
}

uint64_t sub_2408B6100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - v8;
  v9 = sub_2408D4260();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_2408D3630();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  type metadata accessor for AuditReport();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = 2;
  *(v19 + 116) = 0u;
  *(v19 + 132) = 0u;
  *(v19 + 148) = 1;
  *a3 = v19;
  v35[0] = sub_2407F6144(MEMORY[0x277D84F90]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AA0, &qword_2408D9480);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  a3[8] = sub_2408D4A70();
  v35[0] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AA8, &qword_2408D9488);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  a3[9] = sub_2408D4A70();
  a3[1] = a1;
  sub_2407D91C4(a2, (a3 + 3));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AB0, &qword_2408D9490);

  sub_2408D3550();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507AB8, &qword_27E507AB0, &qword_2408D9490);
  v26 = sub_2408D4680();

  a3[2] = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  sub_2407D917C(&qword_27E506DC0, &qword_27E506A70, qword_2408D75E0);
  sub_2408D4280();

  v27 = v33;
  sub_2408D3F40();
  v28 = v34;
  (*(v13 + 16))(v34, v16, v12);
  (*(v13 + 56))(v28, 0, 1, v12);
  v29 = sub_2408D4A80();
  sub_2408C70EC(v28, v27);
  v29(v35, 0);

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2408B653C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507A88);
  __swift_project_value_buffer(v0, qword_27E507A88);
  return sub_2408D4910();
}

uint64_t sub_2408B6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_2408D4290();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AC0, &unk_2408D94B0);
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

  return MEMORY[0x2822009F8](sub_2408B676C, 0, 0);
}

uint64_t sub_2408B676C()
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
  (*(v32 + 104))(v30, *MEMORY[0x277CED8E0], v31);
  v33 = *(MEMORY[0x277CEDE38] + 4);
  v34 = swift_task_alloc();
  v0[26] = v34;
  v35 = MEMORY[0x277CED910];
  sub_2408BDBD8(&qword_27E5076C8, MEMORY[0x277CED910]);
  sub_2408BDBD8(&qword_27E5076B8, v35);
  *v34 = v0;
  v34[1] = sub_2408B6B2C;
  v37 = v0[10];
  v36 = v0[11];
  v39 = v0[4];
  v38 = v0[5];

  return MEMORY[0x282140020](v36, v37);
}

uint64_t sub_2408B6B2C()
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
    v11 = sub_2408B6CAC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2408B6CAC()
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
  v7 = *MEMORY[0x277CED908];
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

uint64_t sub_2408B7244(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = sub_2408D4B20();
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_2408D4230();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v10 = sub_2408D4220();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AD0, &qword_2408D9600) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v14 = sub_2408D4C00();
  v3[39] = v14;
  v15 = *(v14 - 8);
  v3[40] = v15;
  v16 = *(v15 + 64) + 15;
  v3[41] = swift_task_alloc();
  v17 = sub_2408D47F0();
  v3[42] = v17;
  v18 = *(v17 - 8);
  v3[43] = v18;
  v19 = *(v18 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AD8, &qword_2408D9608);
  v3[49] = v20;
  v21 = *(v20 - 8);
  v3[50] = v21;
  v22 = *(v21 + 64) + 15;
  v3[51] = swift_task_alloc();
  v23 = sub_2408D3A60();
  v3[52] = v23;
  v24 = *(v23 - 8);
  v3[53] = v24;
  v25 = *(v24 + 64) + 15;
  v3[54] = swift_task_alloc();
  v26 = sub_2408D3630();
  v3[55] = v26;
  v27 = *(v26 - 8);
  v3[56] = v27;
  v28 = *(v27 + 64) + 15;
  v3[57] = swift_task_alloc();
  v29 = sub_2408D4290();
  v3[58] = v29;
  v30 = *(v29 - 8);
  v3[59] = v30;
  v31 = *(v30 + 64) + 15;
  v3[60] = swift_task_alloc();
  v32 = sub_2408D3490();
  v3[61] = v32;
  v33 = *(v32 - 8);
  v3[62] = v33;
  v34 = *(v33 + 64) + 15;
  v3[63] = swift_task_alloc();
  v35 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2408B7720, 0, 0);
}

uint64_t sub_2408B7720()
{
  v252 = v0;
  v251[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  (*(v2 + 104))(v1, *MEMORY[0x277CED228], v3);
  v4 = sub_2408D3480();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    v19 = *(v0 + 208);
    sub_2408D4930();
    v20 = sub_2408D4B10();
    v21 = sub_2408D4F30();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2407CF000, v20, v21, "Not allowing mach setup service calls, disabled", v22, 2u);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    v24 = *(v0 + 200);
    v23 = *(v0 + 208);
    v25 = *(v0 + 192);

    (*(v24 + 8))(v23, v25);
    sub_2408BDAD8();
    swift_allocError();
    swift_willThrow();
    goto LABEL_9;
  }

  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 464);
  (*(v6 + 16))(v5, *(v0 + 176), v7);
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == *MEMORY[0x277CED8F0])
  {
    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 440);
    v12 = *(v0 + 448);
    (*(*(v0 + 472) + 96))(v9, *(v0 + 464));
    (*(v12 + 32))(v10, v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 512) = v13;
    *v13 = v0;
    v13[1] = sub_2408B8D08;
    v14 = *(v0 + 456);
    v15 = *(v0 + 432);
    v16 = *(v0 + 184);
    v17 = *MEMORY[0x277D85DE8];

    return sub_2408B9D88(v15, v14);
  }

  if (v8 == *MEMORY[0x277CED8F8])
  {
    v39 = *(v0 + 472);
    v38 = *(v0 + 480);
    v40 = *(v0 + 464);
    (*(v39 + 56))(*(v0 + 168), 1, 1, v40);
    (*(v39 + 8))(v38, v40);
LABEL_12:
    v41 = *(v0 + 504);
    v42 = *(v0 + 480);
    v43 = *(v0 + 456);
    v44 = *(v0 + 432);
    v45 = *(v0 + 408);
    v47 = *(v0 + 376);
    v46 = *(v0 + 384);
    v49 = *(v0 + 360);
    v48 = *(v0 + 368);
    v50 = *(v0 + 352);
    v219 = *(v0 + 328);
    v221 = *(v0 + 304);
    v225 = *(v0 + 296);
    v228 = *(v0 + 288);
    v230 = *(v0 + 280);
    v234 = *(v0 + 272);
    v237 = *(v0 + 248);
    v240 = *(v0 + 240);
    v242 = *(v0 + 232);
    v246 = *(v0 + 208);

    v36 = *(v0 + 8);
    v51 = *MEMORY[0x277D85DE8];
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x277CED8C8])
  {
    v52 = *(v0 + 480);
    v53 = *(v0 + 384);
    v54 = *(v0 + 336);
    v55 = *(v0 + 344);
    v56 = *(v0 + 312);
    v57 = *(v0 + 320);
    v58 = *(v0 + 304);
    (*(*(v0 + 472) + 96))(v52, *(v0 + 464));
    v59 = *(v55 + 32);
    v59(v53, v52, v54);
    sub_2408D47E0();
    if ((*(v57 + 48))(v58, 1, v56) == 1)
    {
      sub_2407D9440(*(v0 + 304), &qword_27E507AD0, &qword_2408D9600);
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v60 = sub_2408D4B10();
      v61 = sub_2408D4F30();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2407CF000, v60, v61, "Unable to launch view service without CBDevice xpc representation", v62, 2u);
        MEMORY[0x245CC9F60](v62, -1, -1);
      }

      v63 = *(v0 + 384);
      v64 = *(v0 + 336);
      v65 = *(v0 + 344);

      v66 = sub_2408D3500();
      sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277CED2D0], v66);
      swift_willThrow();
      (*(v65 + 8))(v63, v64);
    }

    else
    {
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v93 = *(v0 + 376);
      v94 = *(v0 + 384);
      v95 = *(v0 + 336);
      v96 = *(v0 + 344);
      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v97 = *(v96 + 16);
      v97(v93, v94, v95);
      v98 = sub_2408D4B10();
      v99 = sub_2408D4F20();
      v100 = os_log_type_enabled(v98, v99);
      v101 = *(v0 + 376);
      v244 = v97;
      v231 = v59;
      if (v100)
      {
        v102 = *(v0 + 368);
        v104 = *(v0 + 336);
        v103 = *(v0 + 344);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = v97;
        v108 = v106;
        v251[0] = v106;
        *v105 = 136315138;
        v107(v102, v101, v104);
        v109 = sub_2408D4D40();
        v111 = v110;
        v248 = *(v103 + 8);
        v248(v101, v104);
        v112 = sub_2408CC504(v109, v111, v251);

        *(v105 + 4) = v112;
        _os_log_impl(&dword_2407CF000, v98, v99, "Asked to launch view service with configuration: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        MEMORY[0x245CC9F60](v108, -1, -1);
        MEMORY[0x245CC9F60](v105, -1, -1);
      }

      else
      {
        v127 = *(v0 + 336);
        v128 = *(v0 + 344);

        v248 = *(v128 + 8);
        v248(v101, v127);
      }

      v129 = *(v0 + 328);
      v130 = sub_2408D4BF0();
      v131 = objc_allocWithZone(MEMORY[0x277CBE020]);
      *(v0 + 160) = 0;
      v132 = [v131 initWithXPCObject:v130 error:v0 + 160];
      v133 = *(v0 + 160);
      v134 = *(v0 + 384);
      if (v132)
      {
        v135 = v132;
        v136 = *(v0 + 360);
        v222 = *(v0 + 352);
        v137 = *(v0 + 336);
        v138 = v133;
        v226 = v135;
        v139 = [v135 dictionaryRepresentation];
        v140 = sub_2408D4CB0();

        v244(v136, v134, v137);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AE8, &qword_2408D9610);
        v142 = objc_allocWithZone(v141);
        v143 = &v142[qword_27E507BB8];
        *v143 = nullsub_1;
        *(v143 + 1) = 0;
        v144 = &v142[qword_27E507BC0];
        *v144 = nullsub_1;
        *(v144 + 1) = 0;
        v145 = &v142[qword_27E507BC8];
        *v145 = nullsub_1;
        *(v145 + 1) = 0;
        *(v0 + 120) = v142;
        *(v0 + 128) = v141;
        v146 = objc_msgSendSuper2((v0 + 120), sel_init);
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AF0, &qword_2408D9618);
        v148 = *(v147 + 48);
        v149 = *(v147 + 52);
        v150 = swift_allocObject();
        *(v150 + qword_27E50ADE0) = 0;
        v231(v150 + qword_27E50ADD0, v136, v137);
        *(v150 + qword_27E50ADD8) = v146;
        *(v150 + qword_27E50ADE0) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AF8, &qword_2408D9620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2408D71B0;
        *(v0 + 136) = 0x656369766564;
        *(v0 + 144) = 0xE600000000000000;
        sub_2408D50D0();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B00, &qword_2408D9628);
        *(inited + 72) = v140;

        sub_2407F659C(inited);
        swift_setDeallocating();
        sub_2407D9440(inited + 32, &unk_27E506FE0, &qword_2408D9630);
        sub_2408BD1F8();

        v244(v222, v134, v137);

        v152 = sub_2408D4B10();
        v153 = sub_2408D4F10();

        v154 = os_log_type_enabled(v152, v153);
        v238 = *(v0 + 384);
        if (v154)
        {
          v155 = *(v0 + 368);
          v156 = *(v0 + 352);
          v216 = *(v0 + 344);
          v157 = *(v0 + 336);
          v223 = *(v0 + 320);
          v232 = *(v0 + 312);
          v235 = *(v0 + 328);
          v158 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          v251[0] = v217;
          *v158 = 136315394;
          v244(v155, v156, v157);
          v159 = sub_2408D4D40();
          v161 = v160;
          v248(v156, v157);
          v162 = sub_2408CC504(v159, v161, v251);

          *(v158 + 4) = v162;
          *(v158 + 12) = 2080;
          v163 = sub_2408D4CC0();
          v165 = v164;

          v166 = sub_2408CC504(v163, v165, v251);

          *(v158 + 14) = v166;
          _os_log_impl(&dword_2407CF000, v152, v153, "Launched view service with configuration: %s and device dictionary: %s", v158, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CC9F60](v217, -1, -1);
          MEMORY[0x245CC9F60](v158, -1, -1);

          swift_unknownObjectRelease();
          (*(v223 + 8))(v235, v232);
          v248(v238, v157);
        }

        else
        {
          v201 = *(v0 + 344);
          v200 = *(v0 + 352);
          v203 = *(v0 + 328);
          v202 = *(v0 + 336);
          v204 = *(v0 + 312);
          v205 = *(v0 + 320);

          swift_unknownObjectRelease();
          v248(v200, v202);
          (*(v205 + 8))(v203, v204);
          v248(v238, v202);
        }

        v206 = *(v0 + 464);
        v207 = *(v0 + 472);
        v208 = *(v0 + 168);
        (*(v207 + 104))(v208, *MEMORY[0x277CED908], v206);
        (*(v207 + 56))(v208, 0, 1, v206);
        goto LABEL_12;
      }

      v186 = *(v0 + 336);
      v185 = *(v0 + 344);
      v187 = *(v0 + 320);
      v188 = *(v0 + 328);
      v189 = *(v0 + 312);
      v190 = v133;
      sub_2408D33F0();

      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v187 + 8))(v188, v189);
      v248(v134, v186);
    }

LABEL_9:
    v26 = *(v0 + 504);
    v27 = *(v0 + 480);
    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 408);
    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v35 = *(v0 + 352);
    v218 = *(v0 + 328);
    v220 = *(v0 + 304);
    v224 = *(v0 + 296);
    v227 = *(v0 + 288);
    v229 = *(v0 + 280);
    v233 = *(v0 + 272);
    v236 = *(v0 + 248);
    v239 = *(v0 + 240);
    v241 = *(v0 + 232);
    v245 = *(v0 + 208);

    v36 = *(v0 + 8);
    v37 = *MEMORY[0x277D85DE8];
LABEL_13:

    return v36();
  }

  if (v8 == *MEMORY[0x277CED8D0])
  {
    v68 = *(v0 + 480);
    v69 = *(v0 + 296);
    v70 = *(v0 + 256);
    v71 = *(v0 + 264);
    v72 = *(v0 + 184);
    (*(*(v0 + 472) + 96))(v68, *(v0 + 464));
    (*(v71 + 32))(v69, v68, v70);
    v73 = *(v72 + 72);
    sub_2408D4A90();
    v74 = *(v0 + 152);
    *(v0 + 536) = v74;
    if (!v74)
    {
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v167 = *(v0 + 296);
      v169 = *(v0 + 264);
      v168 = *(v0 + 272);
      v170 = *(v0 + 256);
      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v171 = *(v169 + 16);
      v171(v168, v167, v170);
      v172 = sub_2408D4B10();
      v173 = sub_2408D4F30();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = *(v0 + 272);
        v175 = *(v0 + 280);
        v176 = *(v0 + 256);
        v177 = *(v0 + 264);
        v178 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v251[0] = v249;
        *v178 = 136315138;
        v171(v175, v174, v176);
        v179 = sub_2408D4D40();
        v181 = v180;
        v182 = v176;
        v183 = *(v177 + 8);
        v183(v174, v182);
        v184 = sub_2408CC504(v179, v181, v251);

        *(v178 + 4) = v184;
        _os_log_impl(&dword_2407CF000, v172, v173, "Unable to receive peer anisette request, no remote setup service: %s", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v249);
        MEMORY[0x245CC9F60](v249, -1, -1);
        MEMORY[0x245CC9F60](v178, -1, -1);
      }

      else
      {
        v210 = *(v0 + 264);
        v209 = *(v0 + 272);
        v211 = *(v0 + 256);

        v183 = *(v210 + 8);
        v183(v209, v211);
      }

      v212 = *(v0 + 296);
      v213 = *(v0 + 256);
      v214 = sub_2408D3500();
      sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(*(v214 - 8) + 104))(v215, *MEMORY[0x277CED2A8], v214);
      swift_willThrow();
      v183(v212, v213);
      goto LABEL_9;
    }

    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 288);
    v75 = *(v0 + 296);
    v77 = *(v0 + 256);
    v78 = *(v0 + 264);
    *(v0 + 544) = __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
    v79 = *(v78 + 16);
    v79(v76, v75, v77);
    v80 = sub_2408D4B10();
    v81 = sub_2408D4F10();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 288);
    if (v82)
    {
      v84 = *(v0 + 280);
      v247 = v81;
      v86 = *(v0 + 256);
      v85 = *(v0 + 264);
      v87 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v251[0] = v243;
      *v87 = 136315138;
      v79(v84, v83, v86);
      v88 = sub_2408D4D40();
      v90 = v89;
      v91 = *(v85 + 8);
      v91(v83, v86);
      v92 = sub_2408CC504(v88, v90, v251);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_2407CF000, v80, v247, "Sending peer anisette request: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v243);
      MEMORY[0x245CC9F60](v243, -1, -1);
      MEMORY[0x245CC9F60](v87, -1, -1);
    }

    else
    {
      v191 = *(v0 + 256);
      v192 = *(v0 + 264);

      v91 = *(v192 + 8);
      v91(v83, v191);
    }

    *(v0 + 552) = v91;
    v193 = sub_2408D3F00();
    *(v0 + 560) = v194;
    v250 = (v193 + *v193);
    v195 = v193[1];
    v196 = swift_task_alloc();
    *(v0 + 568) = v196;
    *v196 = v0;
    v196[1] = sub_2408B94E8;
    v197 = *(v0 + 296);
    v198 = *(v0 + 248);
    v199 = *MEMORY[0x277D85DE8];

    return v250(v198, v197);
  }

  else
  {
    v114 = *(v0 + 472);
    v113 = *(v0 + 480);
    v115 = *(v0 + 464);
    if (v8 != *MEMORY[0x277CED8E8])
    {
      (*(v114 + 56))(*(v0 + 168), 1, 1, *(v0 + 464));
      (*(v114 + 8))(v113, v115);
      goto LABEL_12;
    }

    v117 = *(v0 + 400);
    v116 = *(v0 + 408);
    v118 = *(v0 + 392);
    v119 = *(v0 + 184);
    (*(v114 + 96))(*(v0 + 480), *(v0 + 464));
    (*(v117 + 32))(v116, v113, v118);
    v120 = *(v119 + 16);
    v121 = MEMORY[0x277CED878];
    v122 = *(MEMORY[0x277CED878] + 4);
    v123 = *MEMORY[0x277CED878];
    v124 = swift_task_alloc();
    *(v0 + 528) = v124;
    *v124 = v0;
    v124[1] = sub_2408B9064;
    v125 = *(v0 + 408);
    v126 = *MEMORY[0x277D85DE8];

    return ((v123 + v121))(v125);
  }
}

uint64_t sub_2408B8D08()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 512);
  v7 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_2408B9A0C;
  }

  else
  {
    v3 = sub_2408B8E48;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408B8E48()
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[21];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v5 + 32))(v6, v3, v4);
  (*(v2 + 104))(v6, *MEMORY[0x277CED8F8], v1);
  (*(v2 + 56))(v6, 0, 1, v1);
  v7 = v0[63];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[54];
  v11 = v0[51];
  v13 = v0[47];
  v12 = v0[48];
  v15 = v0[45];
  v14 = v0[46];
  v16 = v0[44];
  v20 = v0[41];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[30];
  v28 = v0[29];
  v29 = v0[26];

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_2408B9064(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 528);
  v6 = *v1;
  *(*v1 + 584) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2408B9190, 0, 0);
}

uint64_t sub_2408B9190()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F20();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 584);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 0x6465747065636361;
    }

    else
    {
      v9 = 0x64657463656A6572;
    }

    v10 = sub_2408CC504(v9, 0xE800000000000000, v40);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v1, v2, "Model update was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = *(v0 + 400);
    v11 = *(v0 + 408);
    v13 = *(v0 + 392);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 464);
  v15 = *(v0 + 472);
  v16 = *(v0 + 168);
  (*(v15 + 104))(v16, *MEMORY[0x277CED908], v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  v17 = *(v0 + 504);
  v18 = *(v0 + 480);
  v19 = *(v0 + 456);
  v20 = *(v0 + 432);
  v21 = *(v0 + 408);
  v23 = *(v0 + 376);
  v22 = *(v0 + 384);
  v25 = *(v0 + 360);
  v24 = *(v0 + 368);
  v26 = *(v0 + 352);
  v30 = *(v0 + 328);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 288);
  v34 = *(v0 + 280);
  v35 = *(v0 + 272);
  v36 = *(v0 + 248);
  v37 = *(v0 + 240);
  v38 = *(v0 + 232);
  v39 = *(v0 + 208);

  v27 = *(v0 + 8);
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

uint64_t sub_2408B94E8()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 568);
  v9 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = *(v2 + 560);

    v5 = sub_2408B9BC0;
  }

  else
  {
    v5 = sub_2408B9638;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2408B9638()
{
  v61 = v0;
  v60[1] = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v2 = v0[68];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[28];

  v7 = *(v6 + 16);
  v7(v4, v3, v5);
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[69];
  v12 = v0[67];
  v13 = v0[37];
  v14 = v0[32];
  v56 = v12;
  v58 = v0[33];
  v15 = v0[30];
  if (v10)
  {
    v52 = v0[32];
    v54 = v0[69];
    v16 = v0[28];
    v17 = v0[29];
    log = v8;
    v18 = v0[27];
    v50 = v0[37];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60[0] = v20;
    *v19 = 136315138;
    v7(v17, v15, v18);
    v21 = sub_2408D4D40();
    v22 = v9;
    v24 = v23;
    (*(v16 + 8))(v15, v18);
    v25 = sub_2408CC504(v21, v24, v60);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2407CF000, log, v22, "Received peer anisette response: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);

    v54(v50, v52);
  }

  else
  {
    v27 = v0[27];
    v26 = v0[28];

    (*(v26 + 8))(v15, v27);
    v11(v13, v14);
  }

  v28 = v0[58];
  v29 = v0[59];
  v30 = v0[21];
  (*(v0[28] + 32))(v30, v0[31], v0[27]);
  (*(v29 + 104))(v30, *MEMORY[0x277CED8D8], v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  v31 = v0[63];
  v32 = v0[60];
  v33 = v0[57];
  v34 = v0[54];
  v35 = v0[51];
  v37 = v0[47];
  v36 = v0[48];
  v39 = v0[45];
  v38 = v0[46];
  v40 = v0[44];
  v44 = v0[41];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  loga = v0[35];
  v51 = v0[34];
  v53 = v0[31];
  v55 = v0[30];
  v57 = v0[29];
  v59 = v0[26];

  v41 = v0[1];
  v42 = *MEMORY[0x277D85DE8];

  return v41();
}

uint64_t sub_2408B9A0C()
{
  v25 = *MEMORY[0x277D85DE8];
  (*(v0[56] + 8))(v0[57], v0[55]);
  v1 = v0[63];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[44];
  v14 = v0[65];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[26];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2408B9BC0()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 552);
  v2 = *(v0 + 296);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  v1(v2, v3);
  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 408);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v13 = *(v0 + 360);
  v12 = *(v0 + 368);
  v14 = *(v0 + 352);
  v18 = *(v0 + 576);
  v19 = *(v0 + 328);
  v20 = *(v0 + 304);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_2408B9D88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2408D35F0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_2408D34E0();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = sub_2408D3630();
  v3[17] = v11;
  v12 = *(v11 - 8);
  v3[18] = v12;
  v13 = *(v12 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B9F3C, 0, 0);
}

uint64_t sub_2408B9F3C()
{
  (*(v0[18] + 16))(v0[19], v0[8], v0[17]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2408B9FF4;
  v2 = v0[19];
  v3 = v0[9];
  v4 = v0[7];

  return sub_2408BA8A8(v4, v2);
}

uint64_t sub_2408B9FF4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2408BA1AC;
  }

  else
  {
    v3 = sub_2408BA108;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408BA108()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2408BA1AC()
{
  v1 = *(v0 + 168);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (!swift_dynamicCast())
  {
LABEL_8:
    v10 = *(v0 + 128);
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v13 = *(v0 + 8);

    return v13();
  }

  v3 = *(v0 + 152);

  if (sub_2408D35A0())
  {
    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E507A88);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, "Throwing custom manual implementation error", v7, 2u);
      MEMORY[0x245CC9F60](v7, -1, -1);
    }

    v8 = sub_2408D3500();
    sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CED2B8], v8);
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v15 = sub_2408D4B20();
  __swift_project_value_buffer(v15, qword_27E507A88);
  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2407CF000, v16, v17, "Creating manual model modifications and calling setup again", v18, 2u);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  v19 = *(v0 + 152);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 112);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v31 = *(v0 + 104);
  v32 = *(v0 + 80);

  v25 = sub_2408D3970();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = sub_2408D3510();
  sub_2408D4640();
  v26(v0 + 16, 0);
  (*(v22 + 104))(v21, *MEMORY[0x277CED230], v31);
  sub_2408D3590();
  (*(v24 + 104))(v23, *MEMORY[0x277CED350], v32);
  sub_2408D3620();
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_2408BA630;
  v28 = *(v0 + 152);
  v29 = *(v0 + 72);
  v30 = *(v0 + 56);

  return sub_2408BA8A8(v30, v28);
}

uint64_t sub_2408BA630()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2408BA7F0;
  }

  else
  {
    v3 = sub_2408BA744;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408BA744()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2408BA7F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2408BA8A8(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B08, &qword_2408D9658);
  v3[65] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v6 = sub_2408D34E0();
  v3[67] = v6;
  v7 = *(v6 - 8);
  v3[68] = v7;
  v8 = *(v7 + 64) + 15;
  v3[69] = swift_task_alloc();
  v9 = sub_2408D35F0();
  v3[70] = v9;
  v10 = *(v9 - 8);
  v3[71] = v10;
  v11 = *(v10 + 64) + 15;
  v3[72] = swift_task_alloc();
  v12 = sub_2408D3A60();
  v3[73] = v12;
  v13 = *(v12 - 8);
  v3[74] = v13;
  v14 = *(v13 + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030) - 8) + 64) + 15;
  v3[79] = swift_task_alloc();
  v16 = *(*(sub_2408D4260() - 8) + 64) + 15;
  v3[80] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v3[81] = v17;
  v18 = *(v17 - 8);
  v3[82] = v18;
  v19 = *(v18 + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BAB5C, 0, 0);
}

uint64_t sub_2408BAB5C()
{
  v0[85] = *(v0[64] + 16);
  v1 = *(MEMORY[0x277CED868] + 4);
  v5 = (*MEMORY[0x277CED868] + MEMORY[0x277CED868]);
  v2 = swift_task_alloc();
  v0[86] = v2;
  *v2 = v0;
  v2[1] = sub_2408BAC10;
  v3 = v0[63];

  return v5(v3);
}

uint64_t sub_2408BAC10()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[84];
    v6 = v2[83];
    v7 = v2[80];
    v8 = v2[79];
    v9 = v2[78];
    v10 = v2[77];
    v11 = v2[76];
    v12 = v2[75];
    v13 = v2[72];
    v17 = v2[69];
    v14 = v2[66];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2408BADFC, 0, 0);
  }
}

id sub_2408BADFC()
{
  v1 = v0;
  v81 = objc_opt_self();
  v101 = [v81 sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *(v0 + 672);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v82 = *(v0 + 640);
  v83 = *(v0 + 632);
  v7 = *(v0 + 568);
  v95 = *(v0 + 560);
  v86 = *(v0 + 576);
  v88 = *(v0 + 552);
  v97 = *(v0 + 544);
  v98 = *(v0 + 536);
  v90 = *(v0 + 520);
  v93 = *(v0 + 528);
  v84 = *(v0 + 512);
  v85 = *(v0 + 504);
  v8 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v9 = sub_2408D4150();
  *(v0 + 16) = sub_2408D4140();
  v10 = MEMORY[0x277CED7C0];
  v79 = v9;
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  type metadata accessor for LocalSetupService();
  v11 = swift_allocObject();
  *(v0 + 696) = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = sub_2407FF270;
  *(v11 + 48) = 0;
  *(v11 + 56) = v101;
  *(v11 + 64) = v8;
  v12 = v11;
  sub_2407D2554((v0 + 16), v11 + 72);
  v102 = v12;
  *(v0 + 464) = v12;
  sub_2408BDBD8(&qword_27E5070B8, type metadata accessor for LocalSetupService);
  sub_2408D3650();
  sub_2408D3F40();
  v80 = *(v5 + 16);
  v80(v83, v4, v6);
  v13 = *(v5 + 56);
  *(v0 + 704) = v13;
  *(v0 + 712) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14 = v6;
  v15 = v13;
  v13(v83, 0, 1, v14);
  *(v0 + 720) = *(v84 + 64);
  v16 = sub_2408D4A80();
  sub_2408C70EC(v83, v82);
  v16(v0 + 136, 0);
  sub_2408D3610();
  sub_2408D3580();
  v17 = *(v90 + 48);
  *(v0 + 776) = v17;
  (*(v7 + 32))(v93, v86, v95);
  (*(v97 + 32))(v93 + v17, v88, v98);
  v18 = (*(v7 + 88))(v93, v95);
  if (v18 == *MEMORY[0x277CED350])
  {
    if ((*(*(v0 + 544) + 88))(v93 + v17, *(v0 + 536)) == *MEMORY[0x277CED230])
    {
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v19 = sub_2408D4B20();
      __swift_project_value_buffer(v19, qword_27E507A88);
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F10();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2407CF000, v20, v21, "Restricted to local setup", v22, 2u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }

      v23 = swift_task_alloc();
      *(v1 + 728) = v23;
      *v23 = v1;
      v23[1] = sub_2408BBA00;
      v24 = *(v1 + 680);
      v25 = *(v1 + 616);

      return sub_2407F7188(v25, v24);
    }

    goto LABEL_20;
  }

  if (v18 != *MEMORY[0x277CED348] || (*(*(v0 + 544) + 88))(v93 + v17, *(v0 + 536)) != *MEMORY[0x277CED230])
  {
LABEL_20:
    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v49 = sub_2408D4B20();
    __swift_project_value_buffer(v49, qword_27E507A88);
    v50 = sub_2408D4B10();
    v51 = sub_2408D4F10();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2407CF000, v50, v51, "Remote setup is not restricted, proceeding", v52, 2u);
      MEMORY[0x245CC9F60](v52, -1, -1);
    }

    v100 = v15;

    v92 = [v81 sharedInstance];
    v89 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v53 = sub_2408D46B0();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = sub_2408D46A0();
    v57 = MEMORY[0x277CEDCC0];
    *(v1 + 80) = v53;
    *(v1 + 88) = v57;
    *(v1 + 56) = v56;
    if (qword_27E506910 != -1)
    {
      swift_once();
    }

    v58 = *(v1 + 664);
    v59 = *(v1 + 648);
    v87 = *(v1 + 640);
    v60 = *(v1 + 632);
    v96 = *(v1 + 512);
    v61 = qword_27E506C40;
    type metadata accessor for ProximityTransportConnector();
    v62 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v62 + 152) = 0;
    *(v62 + 136) = 0u;
    *(v62 + 120) = 0u;
    *(v62 + 112) = v61;
    v63 = sub_2408D4140();
    *(v1 + 120) = v79;
    *(v1 + 128) = MEMORY[0x277CED7C0];
    *(v1 + 96) = v63;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    v67 = swift_allocObject();
    *(v1 + 744) = v67;
    swift_defaultActor_initialize();
    *(v67 + 15) = 0;
    v68 = MEMORY[0x277D84FA0];
    *(v67 + 23) = MEMORY[0x277D84FA0];
    *(v67 + 24) = v68;
    *(v67 + 30) = 0;
    *(v67 + 31) = 0;
    *(v67 + 32) = sub_2407F5454(MEMORY[0x277D84F90]);
    v69 = *(*v67 + 208);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
    (*(*(v70 - 8) + 56))(&v67[v69], 1, 1, v70);
    *(v67 + 14) = v102;
    *(v67 + 16) = v89;
    *(v67 + 17) = v92;
    swift_beginAccess();
    v71 = *(v67 + 15);
    *(v67 + 15) = v62;

    sub_2407D2554((v1 + 56), (v67 + 200));
    sub_2407D2554((v1 + 96), (v67 + 144));
    sub_2407D917C(&qword_27E507628, &qword_27E507460, &unk_2408D7F00);
    sub_2408D4280();
    sub_2408D3F40();
    v80(v60, v58, v59);
    v100(v60, 0, 1, v59);
    v72 = sub_2408D4A80();
    sub_2408C70EC(v60, v87);
    v72(v1 + 168, 0);
    swift_allocObject();
    swift_weakInit();
    v73 = objc_allocWithZone(sub_2408D3F20());
    v74 = sub_2408D3EF0();
    *(v1 + 752) = *(v96 + 72);
    *(v1 + 472) = v74;
    v75 = v74;
    sub_2408D4AA0();

    v76 = swift_task_alloc();
    *(v1 + 760) = v76;
    *v76 = v1;
    v76[1] = sub_2408BBEAC;
    v77 = *(v1 + 680);
    v78 = *(v1 + 608);

    return (sub_240813C98)(v78, v77, 0);
  }

  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v99 = v15;
  v26 = sub_2408D4B20();
  __swift_project_value_buffer(v26, qword_27E507A88);
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F30();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2407CF000, v27, v28, "Both roles are restricted.", v29, 2u);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  v30 = *(v1 + 656);
  v31 = *(v1 + 648);
  v32 = *(v1 + 640);
  v33 = *(v1 + 632);
  v34 = *(v1 + 568);
  v91 = *(v1 + 560);
  v94 = *(v1 + 672);
  v35 = *(v1 + 528);

  sub_24080D664();
  swift_allocError();
  *v36 = 0;
  v36[1] = 0;
  swift_willThrow();
  (*(v34 + 8))(v35, v91);
  sub_2408D3F40();
  v99(v33, 1, 1, v31);
  v37 = sub_2408D4A80();
  sub_2408C70EC(v33, v32);
  v37(v1 + 360, 0);

  (*(v30 + 8))(v94, v31);
  v38 = *(v1 + 672);
  v39 = *(v1 + 664);
  v40 = *(v1 + 640);
  v41 = *(v1 + 632);
  v42 = *(v1 + 624);
  v43 = *(v1 + 616);
  v44 = *(v1 + 608);
  v45 = *(v1 + 600);
  v46 = *(v1 + 576);
  v47 = *(v1 + 552);
  v103 = *(v1 + 528);

  v48 = *(v1 + 8);

  return v48();
}

uint64_t sub_2408BBA00()
{
  v2 = *(*v1 + 728);
  v5 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = sub_2408BC714;
  }

  else
  {
    v3 = sub_2408BBB14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408BBB14()
{
  v37 = v0;
  (*(v0[74] + 32))(v0[78], v0[77], v0[73]);
  (*(v0[71] + 8))(v0[66], v0[70]);
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507A88);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[78];
    v5 = v0[75];
    v6 = v0[74];
    v7 = v0[73];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    (*(v6 + 16))(v5, v4, v7);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v36);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished setup with report: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v26 = v0[89];
  v27 = v0[90];
  v13 = v0[84];
  v28 = v0[87];
  v29 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v24 = v0[79];
  v25 = v0[88];
  v17 = v0[78];
  v30 = v0[77];
  v31 = v0[76];
  v18 = v0[74];
  v19 = v0[73];
  v32 = v0[75];
  v33 = v0[72];
  v34 = v0[69];
  v35 = v0[66];
  v20 = v0[62];
  swift_beginAccess();
  (*(v18 + 16))(v20, v17, v19);
  (*(v18 + 8))(v17, v19);
  sub_2408D3F40();
  v25(v24, 1, 1, v15);
  v21 = sub_2408D4A80();
  sub_2408C70EC(v24, v16);
  v21(v0 + 37, 0);

  (*(v14 + 8))(v13, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2408BBEAC()
{
  v2 = *(*v1 + 760);
  v5 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_2408BC44C;
  }

  else
  {
    v3 = sub_2408BBFC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408BBFC0()
{
  v52 = v0;
  v43 = *(v0 + 752);
  v47 = *(v0 + 744);
  v49 = *(v0 + 776);
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v37 = *(v0 + 720);
  v39 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 544);
  v45 = *(v0 + 536);
  v41 = *(v0 + 528);
  (*(*(v0 + 592) + 32))(*(v0 + 624), *(v0 + 608), *(v0 + 584));
  sub_2408D3F40();
  v2(v6, 1, 1, v4);
  v8 = sub_2408D4A80();
  sub_2408C70EC(v6, v5);
  v8(v0 + 264, 0);
  *(v0 + 488) = 0;
  sub_2408D4AA0();

  (*(v3 + 8))(v39, v4);
  (*(v7 + 8))(v41 + v49, v45);
  (*(*(v0 + 568) + 8))(*(v0 + 528), *(v0 + 560));
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E507A88);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 624);
    v13 = *(v0 + 600);
    v14 = *(v0 + 592);
    v15 = *(v0 + 584);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    (*(v14 + 16))(v13, v12, v15);
    v18 = sub_2408D4D40();
    v20 = sub_2408CC504(v18, v19, &v51);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2407CF000, v10, v11, "Finished setup with report: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  v34 = *(v0 + 712);
  v35 = *(v0 + 720);
  v21 = *(v0 + 672);
  v36 = *(v0 + 696);
  v38 = *(v0 + 664);
  v22 = *(v0 + 656);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v32 = *(v0 + 632);
  v33 = *(v0 + 704);
  v25 = *(v0 + 624);
  v40 = *(v0 + 616);
  v42 = *(v0 + 608);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  v44 = *(v0 + 600);
  v46 = *(v0 + 576);
  v48 = *(v0 + 552);
  v50 = *(v0 + 528);
  v28 = *(v0 + 496);
  swift_beginAccess();
  (*(v26 + 16))(v28, v25, v27);
  (*(v26 + 8))(v25, v27);
  sub_2408D3F40();
  v33(v32, 1, 1, v23);
  v29 = sub_2408D4A80();
  sub_2408C70EC(v32, v24);
  v29(v0 + 296, 0);

  (*(v22 + 8))(v21, v23);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2408BC44C()
{
  v26 = *(v0 + 752);
  v27 = *(v0 + 744);
  v31 = *(v0 + 776);
  v1 = *(v0 + 712);
  v29 = *(v0 + 720);
  v2 = *(v0 + 704);
  v34 = *(v0 + 696);
  v32 = *(v0 + 672);
  v3 = *(v0 + 664);
  v23 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v28 = *(v0 + 568);
  v30 = *(v0 + 560);
  v7 = *(v0 + 544);
  v24 = *(v0 + 528);
  v25 = *(v0 + 536);
  sub_2408D3F40();
  v2(v6, 1, 1, v4);
  v8 = sub_2408D4A80();
  sub_2408C70EC(v6, v5);
  v8(v0 + 200, 0);
  *(v0 + 480) = 0;
  sub_2408D4AA0();

  v9 = *(v23 + 8);
  v9(v3, v4);
  (*(v7 + 8))(v24 + v31, v25);
  (*(v28 + 8))(v24, v30);
  sub_2408D3F40();
  v2(v6, 1, 1, v4);
  v10 = sub_2408D4A80();
  sub_2408C70EC(v6, v5);
  v10(v0 + 232, 0);

  v9(v32, v4);
  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  v19 = *(v0 + 576);
  v20 = *(v0 + 552);
  v33 = *(v0 + 528);
  v35 = *(v0 + 768);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2408BC714()
{
  v1 = v0[89];
  v2 = v0[88];
  v21 = v0[90];
  v23 = v0[87];
  v3 = v0[84];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  (*(v0[71] + 8))(v0[66], v0[70]);
  sub_2408D3F40();
  v2(v7, 1, 1, v5);
  v8 = sub_2408D4A80();
  sub_2408C70EC(v7, v6);
  v8(v0 + 41, 0);

  (*(v4 + 8))(v3, v5);
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[69];
  v22 = v0[66];
  v24 = v0[92];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2408BC8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BC99C, 0, 0);
}

uint64_t sub_2408BC99C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2408BCB04, Strong, 0);
  }

  else
  {
    v3 = sub_2408D3500();
    sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277CED2A8], v3);
    swift_willThrow();
    v5 = v0[10];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2408BCB04()
{
  v1 = *(v0[11] + 240);
  v0[12] = v1;
  if (v1)
  {

    v2 = sub_2408BCC04;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v0[15] = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v2 = sub_2408BCE44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BCC04()
{
  v1 = v0[12];
  (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
  v2 = *(MEMORY[0x277CED570] + 4);
  v9 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_2408BDBD8(&qword_27E506D28, MEMORY[0x277CED828]);
  *v3 = v0;
  v3[1] = sub_2408BCD10;
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[5];

  return v9(v7, v5, v6, v4);
}

uint64_t sub_2408BCD10()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = sub_2408BCEB0;
  }

  else
  {
    v6 = sub_2407E818C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2408BCE44()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408BCEB0()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

double sub_2408BCF1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2408D4C40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  v13 = sub_2408D4E60();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_240876270(v3, v20);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v7 + 32))(v15 + v14, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v20[3];
  v16[2] = v20[2];
  v16[3] = v17;
  v16[4] = v20[4];
  v18 = v20[1];
  *v16 = v20[0];
  v16[1] = v18;
  sub_24083AB60(0, 0, v12, &unk_2408D95F0, v15);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void (*sub_2408BD138(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2408D4A80();
  return sub_2408BD1AC;
}

void sub_2408BD1AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_2408BD1F8()
{
  v1 = v0;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507B20);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    v7 = sub_2408D4CC0();
    v9 = sub_2408CC504(v7, v8, &v46);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Launching view service with user info: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  sub_2408D47C0();
  sub_2408D47D0();
  v10 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v11 = sub_2408D4D00();

  v12 = sub_2408D4D00();

  v13 = [v10 initWithServiceName:v11 viewControllerClassName:v12];

  v14 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v16 = sub_2408D4C90();
  [v14 setUserInfo_];

  v17 = qword_27E50ADE0;
  v18 = *(v1 + qword_27E50ADE0);
  if (v18)
  {
    v19 = *(v1 + qword_27E50ADD8);
    v20 = v18;
    [v20 unregisterObserver_];
    [v20 invalidate];
  }

  v21 = [objc_opt_self() newHandleWithDefinition:v13 configurationContext:v14];
  v22 = *(v1 + v17);
  *(v1 + v17) = v21;

  v23 = sub_2408D4B10();
  v24 = sub_2408D4F10();

  v43 = v13;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = v15;
    v27 = swift_slowAlloc();
    *v25 = 136315138;
    v44 = *(v1 + v17);
    v46 = v27;
    v28 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B10, &qword_2408D9678);
    v29 = sub_2408D4D40();
    v31 = sub_2408CC504(v29, v30, &v46);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_2407CF000, v23, v24, "Activating a new alert handle: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v32 = v27;
    v15 = v26;
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v25, -1, -1);
  }

  v33 = *(v1 + v17);
  if (v33)
  {
    [v33 registerObserver_];
    v34 = *(v1 + v17);
    if (v34)
    {
      [v34 activateWithContext_];
    }
  }

  v35 = sub_2408D4B10();
  v36 = sub_2408D4F10();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 136315138;
    v45 = *(v1 + v17);
    v46 = v38;
    v39 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B10, &qword_2408D9678);
    v40 = sub_2408D4D40();
    v42 = sub_2408CC504(v40, v41, &v46);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2407CF000, v35, v36, "Activated a new alert handle: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x245CC9F60](v38, -1, -1);
    MEMORY[0x245CC9F60](v37, -1, -1);
  }
}

uint64_t sub_2408BD750(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2408B6588(a1, a2, v2);
}

uint64_t sub_2408BD7F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2408BD840(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2408BD938(uint64_t a1)
{
  *(a1 + 8) = sub_2408BD968();
  result = sub_2407F6B14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2408BD968()
{
  result = qword_27E507AC8;
  if (!qword_27E507AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507AC8);
  }

  return result;
}

uint64_t sub_2408BD9BC(uint64_t a1)
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

  return sub_240867CA4(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_2408BDAD8()
{
  result = qword_27E507AE0;
  if (!qword_27E507AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507AE0);
  }

  return result;
}

uint64_t sub_2408BDB2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2408BC8D8(a1, a2, v2);
}

uint64_t sub_2408BDBD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2408BDC34()
{
  result = qword_27E507B18;
  if (!qword_27E507B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507B18);
  }

  return result;
}

uint64_t sub_2408BDC8C()
{
  result = sub_2408D47F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2408BDD34()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507B20);
  __swift_project_value_buffer(v0, qword_27E507B20);
  return sub_2408D4930();
}

uint64_t sub_2408BDD80()
{
  v1 = qword_27E50ADD0;
  v2 = sub_2408D47F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2408BDE00()
{
  sub_2408BDD80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2408BDED0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2408BDEBC(v4);
}

uint64_t sub_2408BDF4C(void *a1, const char *a2, void *a3)
{
  v6 = v3;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E507B20);
  v9 = a1;
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_2407CF000, v10, v11, a2, v12, 0xCu);
    sub_2407DB3B0(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  v15 = v6 + *a3;
  v16 = *(v15 + 8);
  return (*v15)(v9);
}

void sub_2408BE0A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2408BDF38(v4);
}

uint64_t sub_2408BE10C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E507B20);
  v7 = a1;
  v8 = a2;
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v14 = v7;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507CB0, qword_2408D97F8);
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v9, v10, "handle: %@ did invalidate with error: %s", v11, 0x16u);
    sub_2407DB3B0(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v19 = *(v3 + qword_27E507BC8 + 8);
  return (*(v3 + qword_27E507BC8))(v7, a2);
}

void sub_2408BE304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_2408BE10C(v6, a4);
}

id sub_2408BE3A0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ViewServiceLaunchController.RemoteAlertHandleObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2408BE3FC(uint64_t a1)
{
  v2 = *(a1 + qword_27E507BB8 + 8);

  v3 = *(a1 + qword_27E507BC0 + 8);

  v4 = *(a1 + qword_27E507BC8 + 8);
}

uint64_t sub_2408BE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3);
}

uint64_t sub_2408BE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

void sub_2408BE710(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_2408104CC();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_2408BE80C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507CB8);
  __swift_project_value_buffer(v0, qword_27E507CB8);
  return sub_2408D48F0();
}

uint64_t *sub_2408BE858()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2408B2C28();
  v2 = swift_allocError();
  *v3 = xmmword_2408D73A0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  sub_2408BEA58(v2);

  v4 = v0[14];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  sub_2407D9440(v0 + *(*v0 + 144), &qword_27E507328, &qword_2408D7900);
  v5 = *(v0 + *(*v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2408BE9E0(uint64_t a1)
{
  sub_2408BE858();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_2408BEA58(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
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
    v40 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = v5;
    v38 = v20;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v19 = 136315394;
    v21 = sub_2408D53B0();
    v23 = v4;
    v24 = sub_2408CC504(v21, v22, &v43);

    *(v19 + 4) = v24;
    v4 = v23;
    *(v19 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    v27 = v38;
    *v38 = v26;
    _os_log_impl(&dword_2407CF000, v16, v17, "%s handling isolated cancellation with error: %@", v19, 0x16u);
    sub_2407D9440(v27, &qword_27E506AB0, &unk_2408D6830);
    v28 = v27;
    v5 = v41;
    MEMORY[0x245CC9F60](v28, -1, -1);
    v29 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x245CC9F60](v29, -1, -1);
    v30 = v19;
    v9 = v40;
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(*v2 + 144);
  swift_beginAccess();
  sub_2408C26DC(v2 + v31, v13);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2407D9440(v13, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_2407D9440(v13, &qword_27E507328, &qword_2408D7900);
    v42 = a1;
    v32 = a1;
    sub_2408D4E90();
    (*(v6 + 8))(v9, v5);
  }

  v33 = *(*v2 + 128);
  v42 = a1;
  v34 = *(v4 + 80);
  v35 = *(*(v4 + 88) + 8);
  sub_2408D3640();
  if (*(v2 + *(*v2 + 152)))
  {
    v42 = a1;
    sub_2408D3D80();
    sub_2408C27A8(&qword_27E506DB8, MEMORY[0x277CED5B0]);

    sub_2408D4270();
  }

  v36 = v2[14];
  v42 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068);
  sub_2408D4270();
}

uint64_t sub_2408BEF38(uint64_t a1, void *a2)
{
  v3 = sub_2408D42F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = a2;
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (!swift_dynamicCast())
  {
    sub_2408D4440();
  }

  v8 = v13;
  v9 = v14;
  *v6 = v12;
  *(v6 + 1) = v8;
  *(v6 + 4) = v9;
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408BF02C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D42F0();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BF0C0, 0, 0);
}

uint64_t sub_2408BF0C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2408D4300();
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  sub_2408C274C(v1);
  if (v3 == 2)
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E507CB8);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v7)
    {
      v9 = "Client is remaining in failed state";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E507CB8);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v11)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
      goto LABEL_10;
    }
  }

  v13 = v0[5];
  v14 = v0[2];

  v15 = *v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v16 - 8) + 104))(v14, v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2408BF2EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D4220();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BF3B0, v2, 0);
}

uint64_t sub_2408BF3B0()
{
  v1 = *(v0[4] + *(*v0[4] + 152));
  v0[8] = v1;
  if (v1)
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    v2 = *(MEMORY[0x277CED570] + 4);
    v16 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v3 = swift_task_alloc();
    v0[9] = v3;
    v4 = sub_2408C27A8(&qword_27E506D28, MEMORY[0x277CED828]);
    *v3 = v0;
    v3[1] = sub_2408BF610;
    v5 = v0[7];
    v6 = v0[5];
    v7 = v0[2];

    return v16(v7, v5, v6, v4);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E507CB8);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F40();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "We should only be performing an anisette request as part of migration, which should have established the router", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    sub_2408B2C28();
    swift_allocError();
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    swift_willThrow();
    v14 = v0[7];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2408BF610()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_2408BF91C, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_2408BF784;
    v6 = v3[4];
    v7 = v3[2];

    return sub_2408BFA30(v7);
  }
}

uint64_t sub_2408BF784()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_2408BF988;
  }

  else
  {
    v6 = sub_2408BF8B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408BF8B0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2408BF91C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408BF988()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = sub_2408D4230();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[12];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2408BFA30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D3980();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_2408D3800();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507D50, &qword_2408D99B8);
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = sub_2408D4230();
  v2[13] = v11;
  v12 = *(v11 - 8);
  v2[14] = v12;
  v13 = *(v12 + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E507D58, &unk_2408D99C0);
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BFC58, v1, 0);
}

uint64_t sub_2408BFC58()
{
  v2 = v0 + 15;
  v1 = v0[15];
  v3 = v0[14];
  v5 = v0 + 13;
  v4 = v0[13];
  (*(v3 + 16))(v1, v0[2], v4);
  if ((*(v3 + 88))(v1, v4) != *MEMORY[0x277CED830])
  {
    v21 = v0[14];
LABEL_8:
    v30 = v0[18];
    v31 = v0[15];
    v32 = v0[12];
    v33 = v0[10];
    v35 = v0[6];
    v34 = v0[7];
    (*(v21 + 8))(*v2, *v5);

    v36 = v0[1];

    return v36();
  }

  v2 = v0 + 18;
  v6 = v0[18];
  v7 = v0[17];
  v5 = v0 + 16;
  v8 = v0[16];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[11];
  (*(v0[14] + 96))(v9, v0[13]);
  (*(v7 + 32))(v6, v9, v8);
  sub_2408D4AD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[5] + 32))(v0[7], v13, v0[4]);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[5];
    v18 = sub_2408D4B20();
    __swift_project_value_buffer(v18, qword_27E507CB8);
    v47 = *(v17 + 16);
    v47(v14, v15, v16);
    v19 = sub_2408D4B10();
    v48 = sub_2408D4F30();
    v20 = os_log_type_enabled(v19, v48);
    v21 = v0[17];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[4];
    v25 = v0[5];
    if (v20)
    {
      log = v19;
      v26 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v26 = 138412290;
      sub_2408C27A8(&qword_27E506D18, MEMORY[0x277CED418]);
      swift_allocError();
      v45 = v22;
      v47(v27, v23, v24);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v25 + 8);
      v29(v23, v24);
      *(v26 + 4) = v28;
      *v44 = v28;
      _os_log_impl(&dword_2407CF000, log, v48, "Anisette data fetch failed due to error: %@", v26, 0xCu);
      sub_2407D9440(v44, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v44, -1, -1);
      MEMORY[0x245CC9F60](v26, -1, -1);

      v29(v45, v24);
    }

    else
    {

      v43 = *(v25 + 8);
      v43(v23, v24);
      v43(v22, v24);
    }

    goto LABEL_8;
  }

  v38 = v0[10];
  v39 = v0[3];
  (*(v0[9] + 32))(v38, v13, v0[8]);
  v0[19] = *(v39 + 112);
  v40 = swift_task_alloc();
  v0[20] = v40;
  *(v40 + 16) = v38;
  v41 = *(MEMORY[0x277CED870] + 4);
  v49 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v42 = swift_task_alloc();
  v0[21] = v42;
  *v42 = v0;
  v42[1] = sub_2408C012C;

  return v49(sub_2408C26D4, v40);
}

uint64_t sub_2408C012C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 176) = v0;

  v7 = *(v2 + 24);
  if (v0)
  {
    v8 = sub_2408C0378;
  }

  else
  {
    v8 = sub_2408C0298;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408C0298()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[7];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2408C0378()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];
  v9 = v0[22];

  return v8();
}

void sub_2408C0460(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v3 = sub_2408D3800();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2408D3680();
  v85 = *(v88 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v67 - v10;
  v12 = sub_2408D36A0();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = sub_2408D36F0();
  v87 = *(v19 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_2408D4330();
  v24 = sub_2408D3970();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v25 + 48;
  if (v26(v11, 1, v24))
  {
    sub_2407D9440(v11, &unk_27E506A20, &unk_2408D67F0);
LABEL_11:
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v57 = sub_2408D4B20();
    __swift_project_value_buffer(v57, qword_27E507CB8);
    v58 = sub_2408D4B10();
    v59 = sub_2408D4F30();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2407CF000, v58, v59, "Cannot update anisette package because account credential is incorrect", v60, 2u);
      MEMORY[0x245CC9F60](v60, -1, -1);
    }

    return;
  }

  v76 = v27;
  v77 = v26;
  v78 = v24;
  v79 = v23;
  v80 = v22;
  v75 = v16;
  v28 = v86;
  sub_2408D3780();
  sub_2407D9440(v11, &unk_27E506A20, &unk_2408D67F0);
  v29 = v89;
  v30 = (*(v89 + 88))(v18, v12);
  if (v30 != *MEMORY[0x277CED390])
  {
    (*(v29 + 8))(v18, v12);
    goto LABEL_11;
  }

  v69 = v30;
  v31 = *(v29 + 96);
  v70 = v12;
  v31(v18, v12);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507950, &qword_2408D90F8);
  v33 = *(v32 + 48);
  v67 = v32;
  v34 = &v18[*(v32 + 64)];
  v36 = *v34;
  v35 = *(v34 + 1);
  v68 = v36;
  v71 = v35;
  v37 = *(v87 + 32);
  v74 = v19;
  v37(v80, &v18[v33], v19);
  v38 = *(v85 + 8);
  v73 = v85 + 8;
  v72 = v38;
  v38(v18, v88);
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v39 = sub_2408D4B20();
  __swift_project_value_buffer(v39, qword_27E507CB8);
  v40 = sub_2408D4B10();
  v41 = sub_2408D4F10();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v83;
  v44 = v84;
  v45 = v81;
  v46 = v28;
  v47 = v78;
  if (v42)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2407CF000, v40, v41, "Updating anisette package on model", v48, 2u);
    MEMORY[0x245CC9F60](v48, -1, -1);
  }

  (*(v45 + 16))(v46, v43, v82);
  sub_2408D3670();
  v49 = sub_2408D4320();
  v51 = v77(v50, 1, v47);
  v52 = v80;
  v53 = v74;
  if (v51)
  {

    v49(v90, 0);
    v54 = v44;
    v55 = v87;
    v56 = v88;
  }

  else
  {
    v61 = *(v67 + 48);
    v62 = v75;
    v63 = &v75[*(v67 + 64)];
    v64 = v44;
    v54 = v44;
    v56 = v88;
    (*(v85 + 16))(v75, v64, v88);
    v55 = v87;
    v65 = &v62[v61];
    v52 = v80;
    (*(v87 + 16))(v65, v80, v53);
    v66 = v71;
    *v63 = v68;
    *(v63 + 1) = v66;
    (*(v89 + 104))(v62, v69, v70);
    sub_2408D3790();
    v49(v90, 0);
  }

  v72(v54, v56);
  (*(v55 + 8))(v52, v53);
}

uint64_t sub_2408C0BB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D42F0();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C0C48, 0, 0);
}

uint64_t sub_2408C0C48()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2408D4300();
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  v5 = *(*(v4 - 8) + 104);
  if (v3 == 7)
  {
    v5(v0[2], *MEMORY[0x277CEDCB0], v4);
  }

  else
  {
    v6 = v0[5];
    v5(v0[2], *MEMORY[0x277CEDCA8], v4);
    sub_2408C274C(v6);
  }

  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408C0D58()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2408D3FD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2408D4090();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x277CED690], v2);
  sub_2408D3F70();
  (*(v8 + 104))(v11, *MEMORY[0x277CED750], v7);
  v12 = sub_2408D42A0();
  sub_2408D40B0();
  v12(v14, 0);
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C0F90(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4090();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D4130();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_2408D3F80();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_2408D4350();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1164, 0, 0);
}

uint64_t sub_2408C1164()
{
  v51 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960]);
    v13 = sub_2408D5220();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_2408CC504(v13, v15, &v50);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v6, v7, "askForConfirmationOnParentDevice: Model was updated to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x245CC9F60](v49, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[3];
  sub_2408D42B0();
  sub_2408D40A0();
  (*(v17 + 8))(v18, v19);
  if ((*(v22 + 88))(v20, v21) == *MEMORY[0x277CED750])
  {
    v24 = v0[11];
    v25 = v0[12];
    v26 = v0[10];
    v27 = v0[6];
    (*(v0[5] + 96))(v27, v0[4]);
    (*(v24 + 32))(v25, v27, v26);
    v28 = sub_2408D3F60();
    if (v28 == 2)
    {
      v29 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v30 = MEMORY[0x277CEDCA8];
    }

    else
    {
      v37 = v28;
      v38 = sub_2408D4B10();
      v39 = sub_2408D4F10();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 67109120;
        v41 = v37 & 1;
        *(v40 + 4) = v41;
        _os_log_impl(&dword_2407CF000, v38, v39, "Connection decision has been made: %{BOOL}d", v40, 8u);
        MEMORY[0x245CC9F60](v40, -1, -1);
      }

      else
      {

        LOBYTE(v41) = v37 & 1;
      }

      v29 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      *v29 = v41;
      v30 = MEMORY[0x277CEDCB0];
    }

    v42 = *v30;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v43 - 8) + 104))(v29, v42, v43);
    v44 = v0[15];
    v45 = v0[12];
    v46 = v0[9];
    v47 = v0[6];

    v36 = v0[1];
  }

  else
  {
    v31 = v0[15];
    v32 = v0[12];
    v33 = v0[9];
    (*(v0[5] + 8))(v0[6], v0[4]);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277CED520], v34);
    swift_willThrow();

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_2408C16B0()
{
  v0 = sub_2408D36A0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2408D42F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2408D4480();
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v4 = sub_2408D4320();
  v6 = v5;
  v7 = sub_2408D3970();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_2408D4490();
    sub_2408D3790();
  }

  return v4(v9, 0);
}

uint64_t sub_2408C1824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D42F0();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_2408D4350();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1914, 0, 0);
}

uint64_t sub_2408C1914()
{
  v34 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v33);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Updated model in migrationInfoReceived: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2408C274C(v0[5]);
LABEL_9:
    v22 = v0[2];
    v23 = *MEMORY[0x277CEDCB0];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    goto LABEL_11;
  }

  v25 = v0[5];
  v26 = v0[2];
  v27 = *MEMORY[0x277CEDCA8];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  sub_2408C274C(v25);
LABEL_11:
  v29 = v0[8];
  v30 = v0[5];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2408C1C54()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2408D42D0();
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C1CF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D42F0();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_2408D4350();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1DE4, 0, 0);
}

uint64_t sub_2408C1DE4()
{
  v34 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v33);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Updated model in migrationInfoReceived: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2408C274C(v0[5]);
LABEL_9:
    v22 = v0[2];
    v23 = *MEMORY[0x277CEDCB0];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    goto LABEL_11;
  }

  v25 = v0[5];
  v26 = v0[2];
  v27 = *MEMORY[0x277CEDCA8];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  sub_2408C274C(v25);
LABEL_11:
  v29 = v0[8];
  v30 = v0[5];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2408C2124()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2408D4440();
  v4 = v7;
  *v3 = *&v6[8];
  *(v3 + 1) = v4;
  *(v3 + 4) = v8;
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C21DC()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C2260()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507CB8);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Child received migration step finished command. Updating model to dismiss CFU", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C23B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2 + 2;
  v5 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_2408D42F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 20)
  {
    *&v16 = v3;
    *(&v16 + 1) = v4;
    v17 = *v6;
    v18 = v6[2];
    v19 = xmmword_2408D73A0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    sub_2408B3C10(v3, v4);
    if (MEMORY[0x245CC8890](&v16, &v19))
    {
      sub_2407D9440(a2, &qword_27E507958, &qword_2408D9100);
    }

    else
    {
      v13 = v17;
      *v12 = v16;
      *(v12 + 1) = v13;
      *(v12 + 4) = v18;
    }
  }

  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C2504(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407D379C;

  return sub_2408BF2EC(a1, a2);
}

uint64_t sub_2408C25B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 80);
  v4 = *(a2 + 88);
  type metadata accessor for AgeMigrationService();
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2408C265C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2408C2698(void (*a1)(void))
{
  a1();

  return sub_2408D53B0();
}

uint64_t sub_2408C26DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408C274C(uint64_t a1)
{
  v2 = sub_2408D42F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2408C27A8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2408C2834()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2407CF000, v7, v8, "ConnectionManager deinit", v9, 2u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener;
  [*&v1[OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener] invalidate];
  [*&v1[v10] setDelegate_];
  v11 = type metadata accessor for ConnectionManager();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

id sub_2408C29F4()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener;
  v8 = [*(v1 + OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener) serviceName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2408D4D30();
    v12 = v11;
  }

  else
  {
    v10 = sub_2408D4720();
    v12 = v13;
  }

  sub_2408D4930();

  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    v19 = sub_2408CC504(v10, v12, &v22);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v14, v15, "Starting XPC listener for Mach service %s...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x245CC9F60](v18, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);

    (*(v3 + 8))(v6, v21);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  [*(v1 + v7) setDelegate_];
  return [*(v1 + v7) resume];
}

uint64_t sub_2408C2C84()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C2D40, 0, 0);
}

id sub_2408C2D40()
{
  v1 = v0[4];
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Checking in Managed Accounts", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);
  [objc_opt_self() sharedInstance];
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (result)
  {
    v9 = sub_2408D4250();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[5] = sub_2408D4240();
    v12 = *(MEMORY[0x277CED8A8] + 4);
    v14 = (*MEMORY[0x277CED8A8] + MEMORY[0x277CED8A8]);
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = sub_2408C2F0C;

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2408C2F0C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2408C3038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_240880598(a3, v27 - v11);
  v13 = sub_2408D4E60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2407D9440(v12, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2408D4E00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2408D4D50() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2408C3370(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2408D4B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  if (sub_2408D4820() == a1 && v16 == a2)
  {

LABEL_5:
    sub_2408D4930();
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "Received notification to check in Managed Accounts", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    sub_2408D4E40();
    v21 = sub_2408D4E60();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_2408C3038(0, 0, v7, &unk_2408D9B08, v22);

    return sub_2407D9440(v7, &unk_27E506BD0, &qword_2408D7AB0);
  }

  v17 = sub_2408D5240();

  if (v17)
  {
    goto LABEL_5;
  }

  sub_2408D4930();

  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2408CC504(a1, a2, &v29);
    _os_log_impl(&dword_2407CF000, v24, v25, "No special handling written for XPC event: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_2408C3708(void *a1)
{

  v2 = sub_2408D4D00();

  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_2408D5070();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v5)
    {
      return 1;
    }
  }

  else
  {
    sub_2407D9440(v8, &qword_27E507FA0, &qword_2408D7FB0);
  }

  return 0;
}

id sub_2408C3810(void *a1)
{
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_2408C3708(a1);
  if ((v10 & 1) == 0)
  {
    sub_2408D4930();
    v35 = sub_2408D4B10();
    v36 = sub_2408D4F30();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2407CF000, v35, v36, "Client does not have any valid entitlemnts.", v37, 2u);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return (v10 & 1);
  }

  v11 = objc_opt_self();
  result = [v11 defaultStore];
  if (result)
  {
    v13 = result;
    v39 = v2;
    v14 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v44[3] = sub_2407EEDBC(0, &qword_28130EF40, 0x277CED1E8);
    v44[4] = &off_285284100;
    v44[0] = v14;
    result = [v11 defaultStore];
    if (result)
    {
      v15 = result;
      v16 = type metadata accessor for AISSignOutService();
      sub_2407D91C4(v44, v41);
      v17 = v42;
      v18 = v43;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v20 = *(*(v17 - 8) + 64);
      MEMORY[0x28223BE20](v19);
      v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22);
      v40 = v15;
      v24 = sub_2407EEDBC(0, &qword_28130EF88, 0x277CB8F48);
      v25 = sub_2408802E4(v22, &v40, v16, v17, v24, v18, &off_285284110);
      v26 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      [a1 setExportedObject_];
      sub_2408D43F0();
      v27 = MEMORY[0x245CC8820]();
      [a1 setExportedInterface_];

      [a1 resume];
      sub_2408D4930();
      v28 = a1;
      v29 = sub_2408D4B10();
      v30 = sub_2408D4F20();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_2407CF000, v29, v30, "New connection accepted: %@", v31, 0xCu);
        sub_2407D9440(v32, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v32, -1, -1);
        MEMORY[0x245CC9F60](v31, -1, -1);
        v34 = v26;
      }

      else
      {
        v34 = v29;
        v29 = v26;
      }

      v38 = v39;

      (*(v3 + 8))(v9, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      return (v10 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t sub_2408C3CF0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2407D379C;

  return sub_2408C2C84();
}

uint64_t sub_2408C3D9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2408698F0(a1, v5);
}

uint64_t sub_2408C3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 112);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2408C4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v91 = a2;
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507420, &qword_2408D7EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v74 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  v7 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v93 = &v74 - v15;
  v16 = sub_2408D4BE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v21 = sub_2408D4B20();
  v22 = __swift_project_value_buffer(v21, qword_27E507E50);
  v23 = v17 + 16;
  v24 = *(v17 + 16);
  v24(v20, v88, v16);
  v82 = v22;
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F20();
  v27 = os_log_type_enabled(v25, v26);
  v80 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v89 = v28;
    v90 = swift_slowAlloc();
    *v28 = 138412290;
    sub_2408C6998(&qword_27E5073F0, MEMORY[0x277D855E8]);
    swift_allocError();
    v24(v29, v20, v16);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    (*(v17 + 8))(v20, v16);
    v31 = v89;
    v32 = v90;
    *(v89 + 1) = v30;
    *v32 = v30;
    _os_log_impl(&dword_2407CF000, v25, v26, "Handling cancellation for error: %@", v31, 0xCu);
    sub_2407D9440(v32, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v31, -1, -1);
  }

  else
  {

    v33 = (*(v17 + 8))(v20, v16);
  }

  v89 = *(v92 + 104);
  v90 = v92 + 104;
  v78 = (v77 + 16);
  v79 = (v77 + 32);
  v33.n128_u64[0] = 136315138;
  v74 = v33;
  v77 += 8;
  v76 = v77 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83 = v16;
  v84 = v6;
  v81 = v23;
  for (i = (v89)(v94, v91, v92); ; i = (v89)(v94, v91, v92))
  {
    v42 = i;
    v43 = *v35;
    if (*(*v35 + 16))
    {
      v44 = 0;
      v45 = (v43 + 64);
      v46 = 1 << *(v43 + 32);
      v47 = (v46 + 63) >> 6;
      while (1)
      {
        v49 = *v45++;
        v48 = v49;
        if (v49)
        {
          break;
        }

        v44 -= 64;
        if (!--v47)
        {
          goto LABEL_16;
        }
      }

      v46 = __clz(__rbit64(v48)) - v44;
LABEL_16:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      sub_2408C6844(v6, &v6[*(v51 + 48)], v46, *(v43 + 36));
      (*(*(v51 - 8) + 56))(v6, 0, 1, v51);
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      (*(*(v50 - 8) + 56))(v6, 1, 1, v50);
    }

    v42(v94, 0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
    if ((*(*(v52 - 8) + 48))(v6, 1, v52) == 1)
    {
      break;
    }

    v53 = *(v52 + 48);
    v54 = v87;
    v55 = *(v87 + 48);
    v56 = sub_2408D4260();
    v57 = *(v56 - 8);
    v58 = v86;
    (*(v57 + 32))(v86, v6, v56);
    v59 = *v79;
    (*v79)(&v58[v55], &v6[v53], v9);
    v60 = v93;
    v59(v93, &v58[*(v54 + 48)], v9);
    (*(v57 + 8))(v58, v56);
    v61 = *v78;
    v62 = v85;
    (*v78)(v85, v60, v9);
    v63 = sub_2408D4B10();
    v64 = sub_2408D4F20();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v94[0] = v66;
      *v65 = v74.n128_u32[0];
      v61(v75, v62, v9);
      v67 = sub_2408D4D40();
      v68 = v62;
      v69 = v67;
      v71 = v70;
      v36 = *v77;
      (*v77)(v68, v9);
      v72 = sub_2408CC504(v69, v71, v94);

      *(v65 + 4) = v72;
      _os_log_impl(&dword_2407CF000, v63, v64, "Removed cancellable: %s and allowing it to handle cancellation", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x245CC9F60](v66, -1, -1);
      MEMORY[0x245CC9F60](v65, -1, -1);
    }

    else
    {

      v36 = *v77;
      (*v77)(v62, v9);
    }

    v37 = v80;
    sub_2408C6998(&qword_27E5073F0, MEMORY[0x277D855E8]);
    v38 = v83;
    v39 = swift_allocError();
    v37(v40, v88, v38);
    v94[0] = v39;
    v41 = v93;
    sub_2408D3F30();

    v36(v41, v9);
    v6 = v84;
  }

  return sub_2407D9440(v6, &qword_27E507420, &qword_2408D7EB0);
}

uint64_t sub_2408C4910()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507E50);
  __swift_project_value_buffer(v0, qword_27E507E50);
  return sub_2408D4900();
}

unint64_t sub_2408C495C(int64_t a1, uint64_t a2)
{
  v4 = sub_2408D4260();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2408D50A0();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2408C6998(&qword_27E507E68, MEMORY[0x277CED8B0]);
      v24 = sub_2408D4CE0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2408C4CAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2408D50A0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2408D4D30();
      sub_2408D5300();
      v11 = v10;
      sub_2408D4D60();
      v12 = sub_2408D5320();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_2408D38D0() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_2408C4EB0(int64_t a1, uint64_t a2)
{
  v4 = sub_2408D38D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2408D50A0();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2408C6998(qword_27E507E70, MEMORY[0x277CED3D8]);
      v24 = sub_2408D4CE0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_2408D3770() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2408C51F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2408D50A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2408D5300();

      sub_2408D4D60();
      v13 = sub_2408D5320();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_2408C53A4()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_2408D4260();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
  v6 = *v0;
  v7 = sub_2408D51B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2408C5700()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
  v2 = *v0;
  v3 = sub_2408D51B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_2408C5870()
{
  v1 = v0;
  v30 = sub_2408D38D0();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
  v4 = *v0;
  v5 = sub_2408D51B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2408C5ADC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_2408D38D0();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
  v7 = *v0;
  v8 = sub_2408D51B0();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_2408C69E0(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_2407F64A8(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_2408C5DE8()
{
  v1 = v0;
  v2 = sub_2408D38D0();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
  v6 = *v0;
  v7 = sub_2408D51B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = v26 + 16 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v29;
        *(v32 + 8) = v30;
        result = sub_240875D9C(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_2408C607C()
{
  v1 = v0;
  v43 = sub_2408D3770();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2408D38D0();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
  v6 = *v0;
  v7 = sub_2408D51B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2408C63D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
  v2 = *v0;
  v3 = sub_2408D51B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2408C6540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  v2 = *v0;
  v3 = sub_2408D51B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_2407D256C(v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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