BOOL sub_29D9EED98()
{
  sub_29D9F33D4(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  v56 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v59 = &v54 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v54 - v7;
  v9 = sub_29DA34644();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v58 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v54 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v54 - v17;
  sub_29DA34614();

  v19 = sub_29DA34634();
  v20 = sub_29DA34B64();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = v8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v57 = v16;
    v24 = v10;
    v25 = v9;
    v26 = v23;
    v60[0] = v23;
    *v22 = 136446210;
    v27 = HighlightAlertStateManager.description.getter();
    v29 = sub_29D9EBB44(v27, v28, v60);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_29D9BB000, v19, v20, "%{public}s: fetching context sync migration completed status", v22, 0xCu);
    sub_29D9C7968(v26);
    v30 = v26;
    v9 = v25;
    v10 = v24;
    v16 = v57;
    MEMORY[0x29ED6E4C0](v30, -1, -1);
    v31 = v22;
    v8 = v54;
    MEMORY[0x29ED6E4C0](v31, -1, -1);
  }

  v32 = *(v10 + 8);
  v32(v18, v9);
  v33 = *(v0 + 32);
  sub_29DA34BC4();
  v34 = v59;
  sub_29DA34614();
  sub_29D9F2FA8(v8, v34, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);

  v35 = sub_29DA34634();
  v36 = sub_29DA34B64();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v57 = v16;
    v38 = v37;
    v54 = swift_slowAlloc();
    v60[0] = v54;
    *v38 = 136446466;
    v39 = HighlightAlertStateManager.description.getter();
    v58 = v32;
    v40 = v34;
    v42 = sub_29D9EBB44(v39, v41, v60);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    v43 = MEMORY[0x29EDB9BC8];
    sub_29D9F2FA8(v34, v55, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    v44 = v8;
    v45 = sub_29DA34894();
    v47 = v46;
    sub_29D9F3014(v40, &qword_2A1A2E148, v43);
    v48 = v45;
    v8 = v44;
    v49 = sub_29D9EBB44(v48, v47, v60);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_29D9BB000, v35, v36, "%{public}s: received context sync migration completed date: %{public}s", v38, 0x16u);
    v50 = v54;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v50, -1, -1);
    MEMORY[0x29ED6E4C0](v38, -1, -1);

    v58(v57, v9);
  }

  else
  {

    sub_29D9F3014(v34, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    v32(v16, v9);
  }

  v51 = sub_29DA336F4();
  v52 = (*(*(v51 - 8) + 48))(v8, 1, v51) != 1;
  sub_29D9F3014(v8, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  return v52;
}

uint64_t sub_29D9EF4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_29DA336F4();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v6[20] = v10;
  v11 = *(v10 + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = sub_29DA34644();
  v6[22] = v12;
  v13 = *(v12 - 8);
  v6[23] = v13;
  v14 = *(v13 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EF638, 0, 0);
}

uint64_t sub_29D9EF638()
{
  v59 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  sub_29DA34614();

  v3 = sub_29DA34634();
  v4 = sub_29DA34B64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  if (v5)
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v10 = 136446210;
    v12 = HighlightAlertStateManager.description.getter();
    v14 = sub_29D9EBB44(v12, v13, &v58);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29D9BB000, v3, v4, "%{public}s: beginning alert state migration for all configurations", v10, 0xCu);
    sub_29D9C7968(v11);
    MEMORY[0x29ED6E4C0](v11, -1, -1);
    MEMORY[0x29ED6E4C0](v10, -1, -1);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  *(v0 + 216) = v15;
  v16 = sub_29D9FB6FC();
  *(v0 + 224) = v16;
  v17 = v16[2];
  *(v0 + 232) = v17;
  if (v17)
  {
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v20 = *(v18 + 80);
    *(v0 + 288) = v20;
    *(v0 + 240) = *(v18 + 72);
    *(v0 + 248) = 0;
    sub_29D9F2F34(v16 + ((v20 + 32) & ~v20), v19, type metadata accessor for HighlightAlertConfiguration);
    v21 = *v19;
    v22 = *(v19 + 8);
    v23 = *(v19 + 16) == 0;
    if (*(v19 + 16))
    {
      v24 = 0;
    }

    else
    {
      v24 = 0x7961446E65766553;
    }

    if (v23)
    {
      v25 = 0xE800000000000000;
    }

    else
    {
      v25 = 0;
    }

    sub_29D9D5C44(v21, v22, v24, v25, (v0 + 16));
    v27 = *(v0 + 48);
    v26 = *(v0 + 56);
    *(v0 + 256) = v27;
    *(v0 + 264) = v26;

    sub_29D9D6630(v0 + 16);
    v28 = swift_task_alloc();
    *(v0 + 272) = v28;
    *v28 = v0;
    v28[1] = sub_29D9EFA9C;
    v29 = *(v0 + 112);

    return sub_29D9F04D4(v27, v26);
  }

  else
  {

    v31 = *(v0 + 200);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = *(v0 + 112);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v33 + 8))(v32, v34);
    sub_29DA34614();

    v36 = sub_29DA34634();
    v37 = sub_29DA34B64();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = *(v0 + 176);
    v42 = *(v0 + 184);
    if (v38)
    {
      v57 = *(v0 + 216);
      v43 = *(v0 + 112);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v45;
      *v44 = 136446210;
      v46 = HighlightAlertStateManager.description.getter();
      v48 = sub_29D9EBB44(v46, v47, &v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D9BB000, v36, v37, "%{public}s: finished alert state migration", v44, 0xCu);
      sub_29D9C7968(v45);
      MEMORY[0x29ED6E4C0](v45, -1, -1);
      MEMORY[0x29ED6E4C0](v44, -1, -1);

      v49 = v57(v40, v41);
    }

    else
    {

      v49 = v39(v40, v41);
    }

    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v52 = *(v0 + 192);
    v53 = *(v0 + 168);
    v54 = *(v0 + 152);
    v55 = *(v0 + 128);
    (*(v0 + 120))(v49);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_29D9EFA9C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_29D9EFF34;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_29D9EFBB8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D9EFBB8()
{
  v42 = v0;
  sub_29D9F3070(*(v0 + 168), type metadata accessor for HighlightAlertConfiguration);
  v1 = *(v0 + 248) + 1;
  if (v1 == *(v0 + 232))
  {
    v2 = *(v0 + 224);

    v3 = *(v0 + 200);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v5 + 8))(v4, v6);
    sub_29DA34614();

    v8 = sub_29DA34634();
    v9 = sub_29DA34B64();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 216);
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v10)
    {
      v40 = *(v0 + 216);
      v15 = *(v0 + 112);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136446210;
      v18 = HighlightAlertStateManager.description.getter();
      v20 = sub_29D9EBB44(v18, v19, &v41);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D9BB000, v8, v9, "%{public}s: finished alert state migration", v16, 0xCu);
      sub_29D9C7968(v17);
      MEMORY[0x29ED6E4C0](v17, -1, -1);
      MEMORY[0x29ED6E4C0](v16, -1, -1);

      v21 = v40(v12, v13);
    }

    else
    {

      v21 = v11(v12, v13);
    }

    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v35 = *(v0 + 192);
    v36 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = *(v0 + 128);
    (*(v0 + 120))(v21);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    *(v0 + 248) = v1;
    v22 = *(v0 + 168);
    sub_29D9F2F34(*(v0 + 224) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 240) * v1, v22, type metadata accessor for HighlightAlertConfiguration);
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16) == 0;
    if (*(v22 + 16))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x7961446E65766553;
    }

    if (v25)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v27 = 0;
    }

    sub_29D9D5C44(v23, v24, v26, v27, (v0 + 16));
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    *(v0 + 256) = v29;
    *(v0 + 264) = v28;

    sub_29D9D6630(v0 + 16);
    v30 = swift_task_alloc();
    *(v0 + 272) = v30;
    *v30 = v0;
    v30[1] = sub_29D9EFA9C;
    v31 = *(v0 + 112);

    return sub_29D9F04D4(v29, v28);
  }
}

uint64_t sub_29D9EFF34()
{
  v78 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 192);
  v4 = *(v0 + 112);
  sub_29DA34614();

  v5 = v1;
  v6 = sub_29DA34634();
  v7 = sub_29DA34B84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 280);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v73 = *(v0 + 192);
    v74 = *(v0 + 216);
    v75 = *(v0 + 168);
    v11 = *(v0 + 112);
    v71 = *(v0 + 184) + 8;
    v72 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v77 = v13;
    *v12 = 136446723;
    v14 = HighlightAlertStateManager.description.getter();
    v16 = sub_29D9EBB44(v14, v15, &v77);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2081;
    v17 = sub_29D9EBB44(v10, v9, &v77);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = sub_29DA35154();
    v23 = sub_29D9EBB44(v21, v22, &v77);

    *(v12 + 24) = v23;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s: error migrating alert state configuration with identifier: %{private}s, error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    v74(v73, v72);
    v24 = v75;
  }

  else
  {
    v25 = *(v0 + 280);
    v26 = *(v0 + 264);
    v27 = *(v0 + 216);
    v29 = *(v0 + 184);
    v28 = *(v0 + 192);
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);

    v27(v28, v30);
    v24 = v31;
  }

  sub_29D9F3070(v24, type metadata accessor for HighlightAlertConfiguration);
  v32 = *(v0 + 248) + 1;
  if (v32 == *(v0 + 232))
  {
    v33 = *(v0 + 224);

    v34 = *(v0 + 200);
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = *(v0 + 136);
    v38 = *(v0 + 112);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v36 + 8))(v35, v37);
    sub_29DA34614();

    v39 = sub_29DA34634();
    v40 = sub_29DA34B64();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 216);
    v43 = *(v0 + 200);
    v44 = *(v0 + 176);
    v45 = *(v0 + 184);
    if (v41)
    {
      v76 = *(v0 + 216);
      v46 = *(v0 + 112);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v77 = v48;
      *v47 = 136446210;
      v49 = HighlightAlertStateManager.description.getter();
      v51 = sub_29D9EBB44(v49, v50, &v77);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_29D9BB000, v39, v40, "%{public}s: finished alert state migration", v47, 0xCu);
      sub_29D9C7968(v48);
      MEMORY[0x29ED6E4C0](v48, -1, -1);
      MEMORY[0x29ED6E4C0](v47, -1, -1);

      v52 = v76(v43, v44);
    }

    else
    {

      v52 = v42(v43, v44);
    }

    v65 = *(v0 + 200);
    v64 = *(v0 + 208);
    v66 = *(v0 + 192);
    v67 = *(v0 + 168);
    v68 = *(v0 + 152);
    v69 = *(v0 + 128);
    (*(v0 + 120))(v52);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    *(v0 + 248) = v32;
    v53 = *(v0 + 168);
    sub_29D9F2F34(*(v0 + 224) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 240) * v32, v53, type metadata accessor for HighlightAlertConfiguration);
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = *(v53 + 16) == 0;
    if (*(v53 + 16))
    {
      v57 = 0;
    }

    else
    {
      v57 = 0x7961446E65766553;
    }

    if (v56)
    {
      v58 = 0xE800000000000000;
    }

    else
    {
      v58 = 0;
    }

    sub_29D9D5C44(v54, v55, v57, v58, (v0 + 16));
    v60 = *(v0 + 48);
    v59 = *(v0 + 56);
    *(v0 + 256) = v60;
    *(v0 + 264) = v59;

    sub_29D9D6630(v0 + 16);
    v61 = swift_task_alloc();
    *(v0 + 272) = v61;
    *v61 = v0;
    v61[1] = sub_29D9EFA9C;
    v62 = *(v0 + 112);

    return sub_29D9F04D4(v60, v59);
  }
}

uint64_t sub_29D9F04D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for HighlightAlertState();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = sub_29DA34644();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9F064C, 0, 0);
}

uint64_t sub_29D9F064C()
{
  v28 = v0;
  v1 = v0[13];
  v3 = v0[3];
  v2 = v0[4];
  sub_29DA34614();

  v4 = sub_29DA34634();
  v5 = sub_29DA34B64();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  if (v6)
  {
    v10 = v0[4];
    v25 = v0[2];
    v26 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446467;
    v13 = HighlightAlertStateManager.description.getter();
    v15 = sub_29D9EBB44(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_29D9EBB44(v25, v26, &v27);
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: beginning alert state migration with key: %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v17 = v0[3];
  v16 = v0[4];
  v18 = v0[2];
  v19 = swift_task_alloc();
  v0[14] = v19;
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = v17;
  v20 = *(MEMORY[0x29EDCA478] + 4);
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_29D9F08A4;
  v22 = v0[10];
  v23 = v0[8];

  return MEMORY[0x2A1C73C80](v22, 0, 0, 0xD000000000000025, 0x800000029DA375D0, sub_29D9F2F9C, v19, v23);
}

uint64_t sub_29D9F08A4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_29D9F0DB0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_29D9F09C0;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D9F09C0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_29D9F2FA8(v0[10], v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_29D9F3014(v0[10], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    v4 = v0[13];
    v5 = v0[10];
    v6 = v0[7];
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_29D9F3014(v0[9], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9F131C(v7, v9, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[4];
    sub_29D9EE9AC(v0[9], v0[7]);
    v13 = *(v12 + 40);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_29D9F0BA4;
    v15 = v0[7];
    v16 = v0[2];
    v17 = v0[3];

    return sub_29D9DD118(v15, v16, v17, 1);
  }
}

uint64_t sub_29D9F0BA4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_29D9F0E5C;
  }

  else
  {
    v3 = sub_29D9F0CB8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9F0CB8()
{
  sub_29D9F3070(v0[7], type metadata accessor for HighlightAlertState);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  sub_29D9F3014(v0[10], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  sub_29D9F131C(v4, v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_29D9F0DB0()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  sub_29D9F131C(v3, v4, v2);
  v5 = v0[16];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_29D9F0E5C()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_29D9F3070(v0[7], type metadata accessor for HighlightAlertState);
  sub_29D9F3014(v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  sub_29D9F131C(v2, v4, v3);
  v5 = v0[18];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

id sub_29D9F0F44()
{
  v27[1] = *MEMORY[0x29EDCA608];
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = *(v0 + 32);
  v7 = sub_29DA33694();
  v8 = sub_29DA34824();
  v27[0] = 0;
  LODWORD(v6) = [v6 setDate:v7 forKey:v8 error:v27];

  v9 = v27[0];
  if (v6)
  {
    v10 = *MEMORY[0x29EDCA608];

    return v9;
  }

  else
  {
    v26 = v27[0];
    v12 = v27[0];
    v13 = sub_29DA335D4();

    swift_willThrow();
    sub_29DA34614();

    v14 = v13;
    v15 = sub_29DA34634();
    v16 = sub_29DA34B84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446466;
      v19 = HighlightAlertStateManager.description.getter();
      v21 = sub_29D9EBB44(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      swift_getErrorValue();
      v22 = sub_29DA35154();
      v24 = sub_29D9EBB44(v22, v23, v27);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_29D9BB000, v15, v16, "%{public}s: failed to set migration completion date with error: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v18, -1, -1);
      MEMORY[0x29ED6E4C0](v17, -1, -1);
    }

    else
    {
    }

    result = (*(v2 + 8))(v5, v1);
    v25 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t HighlightAlertStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D9F131C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();

  v10 = sub_29DA34634();
  v11 = sub_29DA34B64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446467;
    v15 = HighlightAlertStateManager.description.getter();
    v17 = sub_29D9EBB44(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_29D9EBB44(v19, a3, &v20);
    _os_log_impl(&dword_29D9BB000, v10, v11, "%{public}s: finished alert state migration with key: %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v14, -1, -1);
    MEMORY[0x29ED6E4C0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_29D9F151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D9F30D0();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v10 + 32))(&v13[v12], aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = *(a2 + 24);

  v15 = sub_29DA34824();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = sub_29D9F315C;
  v16[6] = v13;
  aBlock[4] = sub_29D9F31D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D9F2C98;
  aBlock[3] = &unk_2A24615D0;
  v17 = _Block_copy(aBlock);

  [v14 valueForKey:v15 callback:v17];
  _Block_release(v17);
}

uint64_t sub_29D9F1758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a5;
  v66 = a3;
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v69 = &v65 - v9;
  v10 = sub_29DA34644();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v65 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v65 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v65 - v17;
  sub_29D9F31FC();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = (&v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v26 = (&v65 - v25);
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v65 - v27;
  v29 = type metadata accessor for HighlightAlertState();
  v67 = *(v29 - 8);
  v68 = v29;
  v30 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F2F34(a1, v28, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_29D9EE9AC(v28, v32);
    sub_29DA34614();

    v41 = sub_29DA34634();
    v42 = sub_29DA34B64();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74 = v44;
      *v43 = 136446467;
      v45 = HighlightAlertStateManager.description.getter();
      v47 = sub_29D9EBB44(v45, v46, &v74);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2081;
      *(v43 + 14) = sub_29D9EBB44(v66, a4, &v74);
      _os_log_impl(&dword_29D9BB000, v41, v42, "%{public}s: found existing alert state for migration with key: %{private}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v44, -1, -1);
      MEMORY[0x29ED6E4C0](v43, -1, -1);
    }

    (*(v70 + 8))(v18, v71);
    v48 = v69;
    sub_29D9F2F34(v32, v69, type metadata accessor for HighlightAlertState);
    (*(v67 + 56))(v48, 0, 1, v68);
    sub_29D9F30D0();
    sub_29DA349E4();
    v49 = type metadata accessor for HighlightAlertState;
    v50 = v32;
    return sub_29D9F3070(v50, v49);
  }

  sub_29D9F3070(v28, sub_29D9F31FC);
  sub_29D9F2F34(a1, v26, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = *v26;
    sub_29D9C6144();
    if ((swift_dynamicCast() & 1) != 0 && !v73)
    {
      sub_29DA34614();

      v33 = sub_29DA34634();
      v34 = sub_29DA34B64();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74 = v36;
        *v35 = 136446467;
        v37 = HighlightAlertStateManager.description.getter();
        v39 = sub_29D9EBB44(v37, v38, &v74);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2081;
        *(v35 + 14) = sub_29D9EBB44(v66, a4, &v74);
        _os_log_impl(&dword_29D9BB000, v33, v34, "%{public}s: no existing alert state for migration with key: %{private}s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v36, -1, -1);
        MEMORY[0x29ED6E4C0](v35, -1, -1);
      }

      (*(v70 + 8))(v16, v71);
      (*(v67 + 56))(v69, 1, 1, v68);
      sub_29D9F30D0();
      return sub_29DA349E4();
    }
  }

  else
  {
    sub_29D9F3070(v26, sub_29D9F31FC);
  }

  sub_29D9F2F34(a1, v23, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v49 = sub_29D9F31FC;
    v50 = v23;
    return sub_29D9F3070(v50, v49);
  }

  v51 = *v23;
  v52 = v65;
  sub_29DA34614();

  v53 = a4;

  v54 = v51;
  v55 = sub_29DA34634();
  v56 = sub_29DA34B84();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136446723;
    v59 = HighlightAlertStateManager.description.getter();
    v61 = sub_29D9EBB44(v59, v60, &v74);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2081;
    *(v57 + 14) = sub_29D9EBB44(v66, v53, &v74);
    *(v57 + 22) = 2082;
    swift_getErrorValue();
    v62 = sub_29DA35154();
    v64 = sub_29D9EBB44(v62, v63, &v74);

    *(v57 + 24) = v64;
    _os_log_impl(&dword_29D9BB000, v55, v56, "%{public}s: failure fetching alert state for migration with key: %{private}s, error: %{public}s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v58, -1, -1);
    MEMORY[0x29ED6E4C0](v57, -1, -1);
  }

  (*(v70 + 8))(v52, v71);
  v74 = v51;
  sub_29D9F30D0();
  return sub_29DA349D4();
}

uint64_t sub_29D9F1FCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v107 = a7;
  v108 = a6;
  v104 = a5;
  v101 = a4;
  v100 = a1;
  v102 = sub_29DA34644();
  v103 = *(v102 - 8);
  v8 = *(v103 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v95 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v95 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v95 - v17;
  sub_29D9F31FC();
  v105 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v106 = (&v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v95 - v24;
  v26 = type metadata accessor for HighlightAlertState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29DA34884();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = v99;
    sub_29DA34614();
    v38 = v104;

    v39 = a2;
    v40 = sub_29DA34634();
    v41 = sub_29DA34B84();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v111[0] = v43;
      *v42 = 136446723;
      v44 = HighlightAlertStateManager.description.getter();
      v46 = sub_29D9EBB44(v44, v45, v111);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_29D9EBB44(v101, v38, v111);
      *(v42 + 22) = 2082;
      swift_getErrorValue();
      v47 = sub_29DA35154();
      v49 = v41;
      v50 = sub_29D9EBB44(v47, v48, v111);

      *(v42 + 24) = v50;
      _os_log_impl(&dword_29D9BB000, v40, v49, "%{public}s: received error fetching alert state with key: %{private}s, error: %{public}s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v43, -1, -1);
      MEMORY[0x29ED6E4C0](v42, -1, -1);
    }

    (*(v103 + 8))(v37, v102);
    v51 = v106;
    *v106 = a2;
    swift_storeEnumTagMultiPayload();
    v52 = a2;
    goto LABEL_20;
  }

  v98 = v27;
  v99 = v26;
  v96 = v30;
  v53 = v13;
  v97 = v18;
  v54 = v100;
  if (!v100)
  {
    v112 = 0u;
    v113 = 0u;
    v57 = v101;
    v58 = v104;
    goto LABEL_15;
  }

  v55 = v34;
  v56 = v33;
  v57 = v101;
  v109 = v101;
  v110 = v104;
  v58 = v104;

  sub_29DA34D84();
  if (!*(v54 + 16) || (v59 = sub_29DA1EE9C(v111), (v60 & 1) == 0))
  {
    sub_29D9F3314(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_15;
  }

  sub_29D9C790C(*(v100 + 56) + 32 * v59, &v112);
  sub_29D9F3314(v111);
  if (!*(&v113 + 1))
  {
LABEL_15:
    sub_29D9F3070(&v112, sub_29D9F326C);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v61 = v111[0];
    v62 = v111[1];
    sub_29DA34874();
    v63 = sub_29DA34864();
    v65 = v64;
    (*(v55 + 8))(v36, v56);
    if (v65 >> 60 != 15)
    {

      v87 = sub_29DA33474();
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      sub_29DA33464();
      sub_29D9F3368();
      v90 = v25;
      v91 = v99;
      sub_29DA33454();

      (*(v98 + 56))(v90, 0, 1, v91);
      v93 = v96;
      sub_29D9EE9AC(v90, v96);
      v94 = v106;
      sub_29D9F2F34(v93, v106, type metadata accessor for HighlightAlertState);
      swift_storeEnumTagMultiPayload();
      v108(v94);
      sub_29D9CFBBC(v63, v65);
      sub_29D9F3070(v94, sub_29D9F31FC);
      v84 = type metadata accessor for HighlightAlertState;
      v85 = v93;
      return sub_29D9F3070(v85, v84);
    }

    sub_29DA34614();

    v66 = sub_29DA34634();
    v67 = sub_29DA34B84();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v16;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v111[0] = v70;
      *v69 = 136446467;
      v71 = HighlightAlertStateManager.description.getter();
      v73 = sub_29D9EBB44(v71, v72, v111);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2081;
      v74 = sub_29D9EBB44(v61, v62, v111);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_29D9BB000, v66, v67, "%{public}s: unable to create data object from alert state value: %{private}s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v70, -1, -1);
      MEMORY[0x29ED6E4C0](v69, -1, -1);

      (*(v103 + 8))(v68, v102);
    }

    else
    {

      (*(v103 + 8))(v16, v102);
    }

    sub_29D9F32C0();
    v82 = swift_allocError();
    *v92 = 1;
    goto LABEL_19;
  }

LABEL_16:
  sub_29DA34614();

  v75 = sub_29DA34634();
  v76 = sub_29DA34B74();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v111[0] = v78;
    *v77 = 136446467;
    v79 = HighlightAlertStateManager.description.getter();
    v81 = sub_29D9EBB44(v79, v80, v111);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2081;
    *(v77 + 14) = sub_29D9EBB44(v57, v58, v111);
    _os_log_impl(&dword_29D9BB000, v75, v76, "%{public}s: alert state value not found for key: %{private}s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v78, -1, -1);
    MEMORY[0x29ED6E4C0](v77, -1, -1);
  }

  (*(v103 + 8))(v53, v102);
  sub_29D9F32C0();
  v82 = swift_allocError();
  *v83 = 0;
LABEL_19:
  v51 = v106;
  *v106 = v82;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v108(v51);
  v84 = sub_29D9F31FC;
  v85 = v51;
  return sub_29D9F3070(v85, v84);
}

uint64_t sub_29D9F2C98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_29DA347A4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_29D9F2D44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D9F2E3C;

  return v7(a1);
}

uint64_t sub_29D9F2E3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29D9F2F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9F2FA8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D9F33D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D9F3014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D9F33D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D9F3070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D9F30D0()
{
  if (!qword_2A1A2CB70)
  {
    sub_29D9F33D4(255, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9C6144();
    v0 = sub_29DA349F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB70);
    }
  }
}

uint64_t sub_29D9F315C(uint64_t a1)
{
  sub_29D9F30D0();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));

  return sub_29D9F1758(a1, v4, v5, v6, v7);
}

uint64_t sub_29D9F31E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D9F31FC()
{
  if (!qword_2A1A2C9E8)
  {
    type metadata accessor for HighlightAlertState();
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2C9E8);
    }
  }
}

void sub_29D9F326C()
{
  if (!qword_2A1A2DA78)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2DA78);
    }
  }
}

unint64_t sub_29D9F32C0()
{
  result = qword_2A1A2D1A0;
  if (!qword_2A1A2D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D1A0);
  }

  return result;
}

unint64_t sub_29D9F3368()
{
  result = qword_2A1A2D280;
  if (!qword_2A1A2D280)
  {
    type metadata accessor for HighlightAlertState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D280);
  }

  return result;
}

uint64_t sub_29D9F33C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D9E2040(a1, a2);
  }

  return a1;
}

void sub_29D9F33D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9F3428(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_29D9F3434(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29D9D02DC;

  return sub_29D9F2D44(a1, v5);
}

uint64_t sub_29D9F34EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29D9CFE50;

  return sub_29D9F2D44(a1, v5);
}

id sub_29D9F35A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for HighlightAlertConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D9F7A34(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightAlertConfiguration);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  sub_29D9F7B00(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_29D9F7B64;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DA05EEC;
  aBlock[3] = &unk_2A24616E8;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();

  v16 = [v15 blockOperationWithBlock_];
  _Block_release(v14);

  v17 = v16;
  [v17 addDependency_];
  [a2 addDependency_];

  return v17;
}

void sub_29D9F3834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v4 = sub_29DA336F4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v104 = sub_29DA33554();
  v103 = *(v104 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v104);
  v102 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HighlightAlertConfiguration(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = (&v97 - v16);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v99 = (&v97 - v19);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = (&v97 - v20);
  v22 = sub_29DA34644();
  v23 = *(v22 - 8);
  v105 = v22;
  v106 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v97 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v100 = &v97 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v97 - v33;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
LABEL_27:

      return;
    }

    v38 = v37;
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (!v39)
    {
LABEL_26:

      v36 = v38;
      goto LABEL_27;
    }

    v98 = v39;
    v40 = *&v38[qword_2A1A2D708];

    sub_29DA33B44();

    v41 = v108;
    if (v109 == 1)
    {
      v42 = v36;
      sub_29DA34614();
      sub_29D9F7A34(v107, v21, type metadata accessor for HighlightAlertConfiguration);
      v43 = v41;
      v44 = v41;
      v45 = sub_29DA34634();
      v46 = sub_29DA34B84();
      sub_29D9DC0B0(v41);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v97 = v38;
        v48 = v47;
        v49 = swift_slowAlloc();
        v108 = v49;
        *v48 = 136380931;
        v50 = *v21;
        v51 = v21[1];

        sub_29D9DC190(v21, type metadata accessor for HighlightAlertConfiguration);
        v52 = sub_29D9EBB44(v50, v51, &v108);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2082;
        swift_getErrorValue();
        v53 = sub_29DA35154();
        v55 = sub_29D9EBB44(v53, v54, &v108);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_29D9BB000, v45, v46, "HighlightAlert query operation for %{private}s returned error: %{public}s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v49, -1, -1);
        v56 = v48;
        v38 = v97;
        MEMORY[0x29ED6E4C0](v56, -1, -1);

        sub_29D9DC0B0(v44);
      }

      else
      {

        sub_29D9DC0B0(v41);
        sub_29D9DC190(v21, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v106 + 8))(v34, v105);
      v63 = v98;
      [v98 cancel];
      v36 = v42;
    }

    else
    {
      if (v108)
      {
        v97 = v38;
        v57 = v108;
        v58 = [v108 sampleType];
        v59 = v36;
        v60 = *&v36[qword_2A1A2D580];

        sub_29DA33B44();

        sub_29D9C706C(&v108, v110);
        v61 = sub_29DA33984();
        v62 = [v58 hk:v61 metadataValueDisplayTypeInStore:?];

        sub_29D9C7968(&v108);
        if (v62)
        {
          v63 = [v62 objectType];

          if (v63)
          {
            objc_opt_self();
            v64 = swift_dynamicCastObjCClass();
            if (v64)
            {
              v65 = v64;
              v66 = [v57 startDate];
              sub_29DA336C4();

              v67 = [v57 endDate];
              sub_29DA336C4();

              v68 = v102;
              sub_29DA33504();
              v69 = sub_29DA33534();
              *v70 = *v70 + 0.001;
              v69(&v108, 0);
              v71 = v98;
              if (HighlightAlertDailyAveragesOperation.configure(quantityType:dateInterval:)(v65, v68))
              {
                (*(v103 + 8))(v68, v104);
                sub_29D9DC0B0(v57);

                v38 = v71;
              }

              else
              {
                v89 = v100;
                sub_29DA34614();
                v90 = v99;
                sub_29D9F7A34(v107, v99, type metadata accessor for HighlightAlertConfiguration);
                v91 = sub_29DA34634();
                v92 = sub_29DA34B84();
                if (os_log_type_enabled(v91, v92))
                {
                  v93 = swift_slowAlloc();
                  v94 = swift_slowAlloc();
                  v108 = v94;
                  *v93 = 136380675;
                  v95 = v90[1];
                  v107 = *v90;

                  sub_29D9DC190(v90, type metadata accessor for HighlightAlertConfiguration);
                  v96 = sub_29D9EBB44(v107, v95, &v108);

                  *(v93 + 4) = v96;
                  _os_log_impl(&dword_29D9BB000, v91, v92, "HighlightAlert query for %{private}s passed invalid configuration to dailyAveragesOperation", v93, 0xCu);
                  sub_29D9C7968(v94);
                  MEMORY[0x29ED6E4C0](v94, -1, -1);
                  MEMORY[0x29ED6E4C0](v93, -1, -1);
                  sub_29D9DC0B0(v57);

                  (*(v106 + 8))(v100, v105);
                }

                else
                {
                  sub_29D9DC0B0(v57);

                  sub_29D9DC190(v90, type metadata accessor for HighlightAlertConfiguration);
                  (*(v106 + 8))(v89, v105);
                }

                (*(v103 + 8))(v68, v104);
                v36 = v59;
                v63 = v98;
                [v98 cancel];
                v38 = v97;
              }

              goto LABEL_25;
            }
          }
        }

        sub_29DA34614();
        sub_29D9F7A34(v107, v17, type metadata accessor for HighlightAlertConfiguration);
        v82 = sub_29DA34634();
        v83 = sub_29DA34BA4();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v108 = v85;
          *v84 = 136380675;
          v86 = *v17;
          v87 = v17[1];

          sub_29D9DC190(v17, type metadata accessor for HighlightAlertConfiguration);
          v88 = sub_29D9EBB44(v86, v87, &v108);

          *(v84 + 4) = v88;
          _os_log_impl(&dword_29D9BB000, v82, v83, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v84, 0xCu);
          sub_29D9C7968(v85);
          MEMORY[0x29ED6E4C0](v85, -1, -1);
          MEMORY[0x29ED6E4C0](v84, -1, -1);
          sub_29D9DC0B0(v57);
        }

        else
        {
          sub_29D9DC0B0(v57);

          sub_29D9DC190(v17, type metadata accessor for HighlightAlertConfiguration);
        }

        (*(v106 + 8))(v30, v105);
        v36 = v59;
        v38 = v97;
      }

      else
      {
        sub_29DA34614();
        sub_29D9F7A34(v107, v14, type metadata accessor for HighlightAlertConfiguration);
        v72 = sub_29DA34634();
        v73 = sub_29DA34BA4();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = v38;
          v76 = swift_slowAlloc();
          v108 = v76;
          *v74 = 136380675;
          v77 = v36;
          v78 = *v14;
          v79 = v14[1];

          sub_29D9DC190(v14, type metadata accessor for HighlightAlertConfiguration);
          v80 = sub_29D9EBB44(v78, v79, &v108);

          *(v74 + 4) = v80;
          v36 = v77;
          _os_log_impl(&dword_29D9BB000, v72, v73, "HighlightAlert query for %{private}s returned no samples", v74, 0xCu);
          sub_29D9C7968(v76);
          v81 = v76;
          v38 = v75;
          MEMORY[0x29ED6E4C0](v81, -1, -1);
          MEMORY[0x29ED6E4C0](v74, -1, -1);
        }

        else
        {

          sub_29D9DC190(v14, type metadata accessor for HighlightAlertConfiguration);
        }

        (*(v106 + 8))(v27, v105);
      }

      v63 = v98;
      [v98 cancel];
    }

LABEL_25:

    v38 = v63;
    goto LABEL_26;
  }
}

char *sub_29D9F449C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v194 = a6;
  v201 = a5;
  v213 = a4;
  v196 = sub_29DA336F4();
  v195 = *(v196 - 8);
  v7 = *(v195 + 64);
  MEMORY[0x2A1C7C4A8](v196);
  v205 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_29DA33754();
  v193 = *(v204 - 8);
  v9 = *(v193 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v204);
  v192 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v203 = &v187 - v12;
  v13 = MEMORY[0x29EDC9C68];
  sub_29D9F7A9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v200 = &v187 - v16;
  v207 = sub_29DA33964();
  v206 = *(v207 - 8);
  v17 = *(v206 + 64);
  MEMORY[0x2A1C7C4A8](v207);
  v202 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F7A9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v13);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v208 = (&v187 - v21);
  v22 = type metadata accessor for HighlightAlertSampleInfo(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HighlightAlertConfiguration(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8);
  v30 = (&v187 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v190 = (&v187 - v32);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v191 = (&v187 - v34);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v37 = (&v187 - v36);
  MEMORY[0x2A1C7C4A8](v35);
  v39 = (&v187 - v38);
  v40 = sub_29DA34644();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x2A1C7C4A8](v40);
  v45 = &v187 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v43);
  v197 = &v187 - v47;
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v198 = &v187 - v49;
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v199 = &v187 - v51;
  v52 = MEMORY[0x2A1C7C4A8](v50);
  v209 = &v187 - v53;
  MEMORY[0x2A1C7C4A8](v52);
  v210 = &v187 - v54;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v188 = v25;
  v211 = v40;
  v212 = v41;
  v56 = *a2;
  v57 = *(a2 + 8);
  v214 = result;
  v189 = a2;
  if (*(a2 + 16))
  {
    v58 = 0;
  }

  else
  {
    v58 = 0x7961446E65766553;
  }

  if (*(a2 + 16))
  {
    v59 = 0;
  }

  else
  {
    v59 = 0xE800000000000000;
  }

  v60 = v57;
  v61 = v214;
  sub_29D9D5C44(v56, v60, v58, v59, v220);
  v63 = v220[4];
  v62 = v220[5];

  sub_29D9D6630(v220);
  sub_29DA34B34();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    v78 = v211;
    sub_29DA34614();
    v79 = sub_29DA34634();
    v80 = sub_29DA34B84();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_29D9BB000, v79, v80, "HighlightAlert query operations went away unexpectedly", v81, 2u);
      MEMORY[0x29ED6E4C0](v81, -1, -1);
    }

    else
    {
    }

    return (*(v212 + 8))(v45, v78);
  }

  v65 = *(Strong + qword_2A1A2D708);
  v66 = Strong;

  sub_29DA33B44();

  v67 = v218;
  v68 = v219;
  swift_beginAccess();
  v69 = swift_unknownObjectWeakLoadStrong();
  if (!v69)
  {

    sub_29D9DC0B0(v67);
    goto LABEL_17;
  }

  v213 = v67;
  v70 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  v71 = v69;
  swift_beginAccess();
  v72 = *&v71[v70];

  sub_29DA33B44();

  v73 = v216;
  v74 = v217;
  v187 = v63;
  if (v217 == 1)
  {
    sub_29D9E5CE0(v216, 1);
    v75 = v73;
    sub_29D9C6144();
    if ((swift_dynamicCast() & 1) != 0 && ObjectType <= 1u)
    {
      sub_29D9E5CEC(v73, 1);
      v76 = 0;
      v77 = MEMORY[0x29EDCA190];
      if (!v68)
      {
        goto LABEL_25;
      }

LABEL_22:
      v82 = v213;
      v83 = v213;

      v84 = v210;
      sub_29DA34614();
      sub_29D9F7A34(v189, v39, type metadata accessor for HighlightAlertConfiguration);
      v85 = v82;
      v86 = sub_29DA34634();
      v87 = sub_29DA34B84();
      sub_29D9DC0B0(v82);
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v201 = v73;
        v89 = v88;
        v90 = swift_slowAlloc();
        LODWORD(v209) = v74;
        v91 = v90;
        v216 = v90;
        *v89 = 136380931;
        v92 = v77;
        v93 = *v39;
        v94 = v39[1];

        sub_29D9DC190(v39, type metadata accessor for HighlightAlertConfiguration);
        v95 = sub_29D9EBB44(v93, v94, &v216);

        *(v89 + 4) = v95;
        *(v89 + 12) = 2082;
        swift_getErrorValue();
        v96 = sub_29DA35154();
        v98 = sub_29D9EBB44(v96, v97, &v216);

        *(v89 + 14) = v98;
        _os_log_impl(&dword_29D9BB000, v86, v87, "HighlightAlert query operation for %{private}s returned error: %{public}s", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v91, -1, -1);
        MEMORY[0x29ED6E4C0](v89, -1, -1);

        sub_29D9DC0B0(v82);
        sub_29D9E5CEC(v92, v76);
        sub_29D9DC0B0(v82);
        sub_29D9E5CEC(v201, v209);
        v99 = *(v212 + 8);
        v100 = v210;
      }

      else
      {

        sub_29D9DC0B0(v82);
        sub_29D9E5CEC(v77, v76);
        sub_29D9DC0B0(v82);
        sub_29D9E5CEC(v73, v74);
        sub_29D9DC190(v39, type metadata accessor for HighlightAlertConfiguration);
        v99 = *(v212 + 8);
        v100 = v84;
      }

      return v99(v100, v211);
    }

    v76 = 1;
    v77 = v73;
    if (v68)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v76 = 0;
    v77 = v73;
    if (v68)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  if (v76)
  {
    v101 = v77;

    v102 = v209;
    sub_29DA34614();
    sub_29D9F7A34(v189, v37, type metadata accessor for HighlightAlertConfiguration);
    v103 = v77;
    v104 = sub_29DA34634();
    v105 = sub_29DA34B84();
    sub_29D9E5CEC(v77, 1);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v201 = v73;
      v107 = v106;
      v108 = v77;
      v109 = swift_slowAlloc();
      v216 = v109;
      *v107 = 136380931;
      v110 = *v37;
      v111 = v37[1];

      sub_29D9DC190(v37, type metadata accessor for HighlightAlertConfiguration);
      v112 = sub_29D9EBB44(v110, v111, &v216);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2082;
      swift_getErrorValue();
      v113 = sub_29DA35154();
      v115 = sub_29D9EBB44(v113, v114, &v216);

      *(v107 + 14) = v115;
      _os_log_impl(&dword_29D9BB000, v104, v105, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v109, -1, -1);
      MEMORY[0x29ED6E4C0](v107, -1, -1);

      sub_29D9E5CEC(v108, 1);
      sub_29D9E5CEC(v108, 1);
      sub_29D9DC0B0(v213);
      sub_29D9E5CEC(v201, v74);
    }

    else
    {

      sub_29D9E5CEC(v77, 1);
      sub_29D9E5CEC(v77, 1);
      sub_29D9DC0B0(v213);
      sub_29D9E5CEC(v73, v74);
      sub_29D9DC190(v37, type metadata accessor for HighlightAlertConfiguration);
    }

    v99 = *(v212 + 8);
    v100 = v102;
    return v99(v100, v211);
  }

  v116 = v213;
  v117 = v189;
  if (v213)
  {
    v210 = v62;
    sub_29D9DC0BC(v213);
    sub_29D9DC0BC(v116);
    sub_29D9DC0BC(v116);
    sub_29D9E5CE0(v77, 0);
    sub_29D9DC0D4();
    v118 = v188;
    sub_29DA34794();
    v119 = v208;
    v120 = v214;
    sub_29D9F5D00(v118, v77, v117, v201, v208);
    sub_29D9E5CEC(v77, 0);
    v121 = v200;
    sub_29DA1AF88(v118, v119, v117, v200);
    v122 = v206;
    v123 = v207;
    if ((*(v206 + 48))(v121, 1, v207) == 1)
    {

      sub_29D9F797C(v121, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      v124 = v198;
      sub_29DA34614();
      v125 = v117;
      v126 = v190;
      sub_29D9F7A34(v125, v190, type metadata accessor for HighlightAlertConfiguration);
      v127 = sub_29DA34634();
      v128 = sub_29DA34B84();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v201 = v73;
        v131 = v130;
        v216 = v130;
        *v129 = 136380675;
        v132 = v77;
        v133 = *v126;
        v134 = v126[1];

        sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
        v135 = sub_29D9EBB44(v133, v134, &v216);

        *(v129 + 4) = v135;
        _os_log_impl(&dword_29D9BB000, v127, v128, "HighlightAlert was unable to create a feed item for %{private}s", v129, 0xCu);
        sub_29D9C7968(v131);
        MEMORY[0x29ED6E4C0](v131, -1, -1);
        MEMORY[0x29ED6E4C0](v129, -1, -1);

        v136 = v213;
        sub_29D9DC0B0(v213);
        sub_29D9DC0B0(v136);
        sub_29D9E5CEC(v132, 0);
        sub_29D9DC0B0(v136);
        sub_29D9E5CEC(v201, v74);
        (*(v212 + 8))(v198, v211);
      }

      else
      {

        v181 = v213;
        sub_29D9DC0B0(v213);
        sub_29D9DC0B0(v181);
        sub_29D9E5CEC(v77, 0);
        sub_29D9DC0B0(v181);
        sub_29D9E5CEC(v73, v74);
        sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
        (*(v212 + 8))(v124, v211);
      }

      v182 = v119;
    }

    else
    {
      LODWORD(v209) = v74;
      (*(v122 + 32))(v202, v121, v123);
      sub_29D9F7A9C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
      v148 = sub_29DA34774();
      v149 = [v148 UUID];

      v150 = v203;
      sub_29DA33744();

      v151 = sub_29DA34774();
      v152 = [v151 endDate];

      sub_29DA336C4();
      v153 = v199;
      sub_29DA34614();
      v154 = v191;
      sub_29D9F7A34(v117, v191, type metadata accessor for HighlightAlertConfiguration);
      v155 = v193;
      v156 = v192;
      v157 = v204;
      (*(v193 + 16))(v192, v150, v204);
      v158 = v120;
      v159 = sub_29DA34634();
      v160 = sub_29DA34BA4();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v201 = v73;
        v162 = v161;
        v163 = swift_slowAlloc();
        v200 = v77;
        v164 = v163;
        v216 = v163;
        *v162 = 136446723;
        ObjectType = swift_getObjectType();
        sub_29D9F79EC();
        v165 = sub_29DA34894();
        LODWORD(v198) = v160;
        v167 = sub_29D9EBB44(v165, v166, &v216);

        *(v162 + 4) = v167;
        *(v162 + 12) = 2081;
        v168 = *v154;
        v169 = v154[1];

        sub_29D9DC190(v154, type metadata accessor for HighlightAlertConfiguration);
        v170 = sub_29D9EBB44(v168, v169, &v216);

        *(v162 + 14) = v170;
        *(v162 + 22) = 2081;
        v172 = MEMORY[0x29ED6C290](v171);
        v174 = v173;
        v214 = *(v155 + 8);
        (v214)(v156, v204);
        v175 = sub_29D9EBB44(v172, v174, &v216);
        v157 = v204;

        *(v162 + 24) = v175;
        _os_log_impl(&dword_29D9BB000, v159, v198, "[%{public}s]: Creating new %{private}s alert for daily averages with uuid %{private}s", v162, 0x20u);
        swift_arrayDestroy();
        v176 = v164;
        v77 = v200;
        MEMORY[0x29ED6E4C0](v176, -1, -1);
        v177 = v162;
        v73 = v201;
        MEMORY[0x29ED6E4C0](v177, -1, -1);

        (*(v212 + 8))(v199, v211);
      }

      else
      {

        v214 = *(v155 + 8);
        (v214)(v156, v157);
        sub_29D9DC190(v154, type metadata accessor for HighlightAlertConfiguration);
        (*(v212 + 8))(v153, v211);
      }

      v183 = v202;
      v184 = v203;
      v185 = v205;
      sub_29DA15594(v202, v203, v205, v194);
      sub_29DA34B34();

      v186 = v213;
      sub_29D9DC0B0(v213);
      sub_29D9DC0B0(v186);
      sub_29D9E5CEC(v77, 0);
      sub_29D9DC0B0(v186);
      sub_29D9E5CEC(v73, v209);

      (*(v195 + 8))(v185, v196);
      (v214)(v184, v157);
      (*(v206 + 8))(v183, v207);
      v182 = v208;
    }

    sub_29D9F797C(v182, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    return sub_29D9DC190(v188, type metadata accessor for HighlightAlertSampleInfo);
  }

  else
  {

    v137 = v197;
    sub_29DA34614();
    sub_29D9F7A34(v117, v30, type metadata accessor for HighlightAlertConfiguration);
    v138 = sub_29DA34634();
    v139 = sub_29DA34BA4();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v201 = v73;
      v142 = v141;
      v216 = v141;
      *v140 = 136380675;
      v143 = v77;
      v144 = *v30;
      v145 = v30[1];

      sub_29D9DC190(v30, type metadata accessor for HighlightAlertConfiguration);
      v146 = sub_29D9EBB44(v144, v145, &v216);

      *(v140 + 4) = v146;
      v77 = v143;
      v117 = v189;
      _os_log_impl(&dword_29D9BB000, v138, v139, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v140, 0xCu);
      sub_29D9C7968(v142);
      v147 = v142;
      v73 = v201;
      MEMORY[0x29ED6E4C0](v147, -1, -1);
      MEMORY[0x29ED6E4C0](v140, -1, -1);
    }

    else
    {

      sub_29D9DC190(v30, type metadata accessor for HighlightAlertConfiguration);
    }

    v178 = (*(v212 + 8))(v137, v211);
    v179 = v214;
    v180 = *&v214[qword_2A1A2D578];
    MEMORY[0x2A1C7C4A8](v178);
    *(&v187 - 2) = v117;

    sub_29DA33B54();
    sub_29D9E5CEC(v77, 0);
    sub_29D9DC0B0(0);
    sub_29D9E5CEC(v73, v74);
  }
}

uint64_t sub_29D9F5D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v188 = a4;
  v223 = a1;
  v10 = type metadata accessor for HighlightAlertSampleInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v213 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29DA34644();
  v214 = *(v13 - 8);
  v215 = v13;
  v14 = *(v214 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v222 = (&v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = sub_29DA34384();
  v202 = *(v203 - 8);
  v16 = *(v202 + 64);
  MEMORY[0x2A1C7C4A8](v203);
  v201 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_29DA34274();
  v198 = *(v200 - 8);
  v18 = *(v198 + 64);
  MEMORY[0x2A1C7C4A8](v200);
  v199 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_29DA34234();
  v195 = *(v197 - 8);
  v20 = *(v195 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v197);
  v196 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v194 = &v163 - v23;
  v191 = sub_29DA34204();
  v190 = *(v191 - 8);
  v24 = *(v190 + 64);
  MEMORY[0x2A1C7C4A8](v191);
  v193 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_29DA34394();
  v184 = *(v185 - 8);
  v26 = *(v184 + 64);
  MEMORY[0x2A1C7C4A8](v185);
  v186 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x29EDC9C68];
  sub_29D9F7A9C(0, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40], MEMORY[0x29EDC9C68]);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v189 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v187 = &v163 - v33;
  sub_29D9F7A9C(0, &qword_2A1A2CC98, MEMORY[0x29EDC4C80], v28);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v192 = &v163 - v36;
  v183 = sub_29DA340E4();
  v182 = *(v183 - 8);
  v37 = *(v182 + 64);
  MEMORY[0x2A1C7C4A8](v183);
  v181 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F7A9C(0, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00], v28);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39 - 8);
  v179 = &v163 - v41;
  v209 = sub_29DA34264();
  v180 = *(v209 - 8);
  v42 = *(v180 + 64);
  MEMORY[0x2A1C7C4A8](v209);
  v210 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_29DA341E4();
  v175 = *(v207 - 8);
  v44 = *(v175 + 64);
  v45 = MEMORY[0x2A1C7C4A8](v207);
  v176 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45);
  v208 = &v163 - v47;
  v178 = sub_29DA34374();
  v177 = *(v178 - 8);
  v48 = *(v177 + 64);
  v49 = MEMORY[0x2A1C7C4A8](v178);
  v174 = &v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v49);
  v217 = &v163 - v52;
  MEMORY[0x2A1C7C4A8](v51);
  v216 = &v163 - v53;
  v212 = sub_29DA343A4();
  v211 = *(v212 - 8);
  v54 = *(v211 + 64);
  v55 = MEMORY[0x2A1C7C4A8](v212);
  v206 = &v163 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x2A1C7C4A8](v55);
  v205 = &v163 - v58;
  MEMORY[0x2A1C7C4A8](v57);
  v220 = &v163 - v59;
  v221 = sub_29DA342F4();
  v219 = *(v221 - 8);
  v60 = *(v219 + 64);
  v61 = MEMORY[0x2A1C7C4A8](v221);
  v204 = &v163 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v61);
  v218 = &v163 - v63;
  v64 = sub_29DA336F4();
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x2A1C7C4A8](v64 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v225 = sub_29DA33554();
  v67 = *(v225 - 8);
  v68 = *(v67 + 64);
  v69 = MEMORY[0x2A1C7C4A8](v225);
  v71 = &v163 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v69);
  v224 = &v163 - v72;
  sub_29D9F7A9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v28);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v73 - 8);
  v76 = (&v163 - v75);
  if (*(a3 + 17) != 1)
  {
    goto LABEL_10;
  }

  v170 = a3;
  v172 = a2;
  v173 = a5;
  v171 = v6;
  v77 = *&v6[qword_2A1A2D580];

  sub_29DA33B44();

  sub_29D9C706C(v227, v227[3]);
  v78 = sub_29DA33984();
  sub_29D9F7A9C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v79 = v223;
  v80 = sub_29DA34774();
  v81 = [v80 sampleType];

  v82 = [v81 hk:v78 metadataValueDisplayTypeInStore:?];
  if (!v82)
  {

    sub_29D9C7968(v227);
    a5 = v173;
LABEL_10:
    v160 = type metadata accessor for HighlightAlertDiagramInfo(0);
    (*(*(v160 - 8) + 56))(v76, 1, 1, v160);
    return sub_29D9E9400(v76, a5);
  }

  v83 = [v82 objectType];

  v84 = [v83 identifier];
  v166 = sub_29DA34854();
  v169 = v85;

  sub_29D9C7968(v227);
  v86 = sub_29DA34774();
  v87 = [v86 startDate];

  sub_29DA336C4();
  v88 = sub_29DA34774();
  v89 = [v88 endDate];

  sub_29DA336C4();
  v90 = v224;
  sub_29DA33504();
  sub_29DA33544();
  v92 = v91;
  v168 = *(v67 + 8);
  result = v168(v90, v225);
  v94 = *MEMORY[0x29EDBA3B0] + *MEMORY[0x29EDBA3B8];
  if (__OFADD__(*MEMORY[0x29EDBA3B0], *MEMORY[0x29EDBA3B8]))
  {
    __break(1u);
  }

  else
  {
    v167 = v67 + 8;
    if (v92 > v94 && *(v172 + 16))
    {

      v95 = sub_29DA34774();
      v96 = [v95 startDate];

      sub_29DA336C4();
      v97 = sub_29DA34774();
      v98 = [v97 endDate];

      sub_29DA336C4();
      sub_29DA33504();
      v99 = v224;
      sub_29D9F75F8(v224);
      v100 = v71;
      v101 = v225;
      v168(v100, v225);
      v102 = type metadata accessor for HighlightAlertDiagramInfo(0);
      v103 = *(v102 + 20);
      v104 = v102;
      v215 = v102;
      (*(v67 + 16))(v76 + v103, v99, v101);
      v105 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
      v106 = *(v105 + 20);
      v164 = *(v105 + 24);
      v222 = type metadata accessor for HighlightAlertConfiguration(0);
      v107 = v222[11];
      v165 = v222[12];
      v171 = v107;
      (*(v219 + 104))(v218, *MEMORY[0x29EDC4C60], v221);
      v108 = v211;
      v109 = v212;
      (*(v211 + 104))(v220, *MEMORY[0x29EDC4D80], v212);
      v214 = *(v104 + 24);
      sub_29D9F7A9C(0, &qword_2A17D1628, MEMORY[0x29EDC4B60], MEMORY[0x29EDC9E90]);
      v110 = *(sub_29DA34254() - 8);
      v111 = *(v110 + 72);
      v213 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v223 = swift_allocObject();
      *(v223 + 16) = xmmword_29DA3AB40;
      v112 = *(v108 + 16);
      v113 = v188;
      v112(v205, v188, v109);
      v114 = v177;
      v115 = *(v177 + 16);
      v116 = v178;
      v115(v216, v113 + v106, v178);
      v117 = v175;
      (*(v175 + 16))(v208, v113 + v164, v207);
      (*(v219 + 16))(v204, v218, v221);
      v118 = v170;
      v115(v217, v170 + v165, v116);
      v112(v206, v220, v109);
      v119 = v180;
      v120 = &v171[v118];
      v121 = v210;
      (*(v180 + 16))(v210, v120, v209);
      v122 = sub_29DA34194();
      (*(*(v122 - 8) + 56))(v179, 1, 1, v122);
      v123 = *(v114 + 104);
      v123(v174, *MEMORY[0x29EDC4CA8], v116);
      (*(v117 + 104))(v176, *MEMORY[0x29EDC4B20], v207);
      (*(v182 + 104))(v181, *MEMORY[0x29EDC4918], v183);
      v124 = v216;
      v125 = v217;
      sub_29DA34244();
      (*(v184 + 104))(v186, *MEMORY[0x29EDC4D38], v185);
      (*(v119 + 104))(v121, *MEMORY[0x29EDC4B68], v209);
      v123(v124, *MEMORY[0x29EDC4CA0], v116);
      v123(v125, *MEMORY[0x29EDC4CB0], v116);
      (*(v190 + 104))(v193, *MEMORY[0x29EDC4B38], v191);
      v126 = *(v195 + 104);
      v127 = v197;
      v126(v194, *MEMORY[0x29EDC4B48], v197);
      v126(v196, *MEMORY[0x29EDC4B50], v127);
      v128 = v187;
      sub_29DA34214();
      v129 = sub_29DA34224();
      v130 = *(*(v129 - 8) + 56);
      v130(v128, 0, 1, v129);
      v130(v189, 1, 1, v129);
      v131 = v192;
      sub_29DA34324();
      v132 = sub_29DA34334();
      (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
      v133 = v199;
      (*(v198 + 104))(v199, *MEMORY[0x29EDC4BF8], v200);
      v134 = v201;
      (*(v202 + 104))(v201, *MEMORY[0x29EDC4D20], v203);
      v135 = v214;
      MEMORY[0x29ED6CEB0](v223, v131, v133, v134);
      (*(v211 + 8))(v220, v212);
      (*(v219 + 8))(v218, v221);
      v136 = *MEMORY[0x29EDC4C88];
      v137 = sub_29DA343B4();
      (*(*(v137 - 8) + 104))(v76 + v135, v136, v137);
      v138 = (v170 + v222[10]);
      v139 = *v138;
      LOBYTE(v136) = *(v138 + 8);
      v168(v224, v225);
      v140 = v169;
      *v76 = v166;
      v76[1] = v140;
      v141 = v215;
      v142 = v76 + *(v215 + 28);
      *v142 = v139;
      v142[8] = v136;
      *(v76 + *(v141 + 32)) = v172;
      *(v76 + *(v141 + 36)) = MEMORY[0x29EDCA190];
      (*(*(v141 - 8) + 56))(v76, 0, 1, v141);
      a5 = v173;
      return sub_29D9E9400(v76, a5);
    }

    v143 = v222;
    sub_29DA34614();
    v144 = v213;
    sub_29D9F7A34(v79, v213, type metadata accessor for HighlightAlertSampleInfo);
    v145 = v171;
    v146 = sub_29DA34634();
    v147 = sub_29DA34B84();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v227[0] = v149;
      *v148 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D9F79EC();
      v150 = sub_29DA34894();
      v152 = sub_29D9EBB44(v150, v151, v227);

      *(v148 + 4) = v152;
      *(v148 + 12) = 2050;
      v153 = sub_29DA34774();
      v154 = [v153 startDate];

      sub_29DA336C4();
      v155 = sub_29DA34774();
      v156 = [v155 endDate];

      sub_29DA336C4();
      v157 = v224;
      sub_29DA33504();
      sub_29DA33544();
      v159 = v158;
      v168(v157, v225);
      sub_29D9DC190(v144, type metadata accessor for HighlightAlertSampleInfo);
      *(v148 + 14) = v159;
      _os_log_impl(&dword_29D9BB000, v146, v147, "[%{public}s]: HighlightAlert omitting daily average diagram due to low duration / points: %{public}f", v148, 0x16u);
      sub_29D9C7968(v149);
      MEMORY[0x29ED6E4C0](v149, -1, -1);
      MEMORY[0x29ED6E4C0](v148, -1, -1);

      (*(v214 + 8))(v222, v215);
    }

    else
    {

      sub_29D9DC190(v144, type metadata accessor for HighlightAlertSampleInfo);
      (*(v214 + 8))(v143, v215);
    }

    v161 = v173;
    v162 = type metadata accessor for HighlightAlertDiagramInfo(0);
    return (*(*(v162 - 8) + 56))(v161, 1, 1, v162);
  }

  return result;
}

void sub_29D9F75F8(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_29DA336F4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x2A1C7C4A8](v1);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v30 = &v30 - v7;
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v33 = &v30 - v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v30 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v30 - v13;
  v15 = sub_29DA337A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  v20 = sub_29DA33764();
  (*(v16 + 8))(v19, v15);
  sub_29DA33524();
  v21 = sub_29DA33694();
  v22 = v2[1];
  v22(v12, v1);
  v23 = [v20 startOfDayForDate_];

  v31 = v14;
  sub_29DA336C4();

  sub_29DA334F4();
  v24 = sub_29DA33694();
  v22(v12, v1);
  v32 = v20;
  v25 = [v20 hk:v24 startOfTomorrowForDate:?];

  if (v25)
  {
    v26 = v30;
    sub_29DA336C4();

    v27 = v33;
    sub_29DA33664();
    v22(v26, v1);
    v28 = v2[2];
    v29 = v31;
    v28(v12, v31, v1);
    v28(v34, v27, v1);
    sub_29DA33504();

    v22(v27, v1);
    v22(v29, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D9F797C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9F7A9C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D9F79EC()
{
  result = qword_2A1A2CD30;
  if (!qword_2A1A2CD30)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CD30);
  }

  return result;
}

uint64_t sub_29D9F7A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D9F7A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9F7B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D9F7B64()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_29D9F3834(v2, v3, v4, v5);
}

uint64_t sub_29D9F7BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D9F7BE4()
{
  v1 = v0;
  sub_29D9C79FC(0, &qword_2A1A2D478, 0x29EDBA088);
  v0[2] = sub_29DA34BE4();
  v2 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_29DA33F94();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_29DA33F84();
  type metadata accessor for HighlightAlertsFeedItemGenerator();
  sub_29DA33F74();
  v1[6] = v5;
  v1[7] = sub_29D9FA650(&qword_2A1A2D508, MEMORY[0x29EDC3D50]);
  v1[3] = v8;
  return v1;
}

uint64_t sub_29D9F7D24(uint64_t a1)
{
  v2 = sub_29DA33A54();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9FA528(0, &qword_2A1A2CC30, &qword_2A1A2D2A0, MEMORY[0x29EDC3C90], MEMORY[0x29EDB8AB0]);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v67 = &v66 - v7;
  v8 = sub_29DA339F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29DA33A24();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v66 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v66 - v20;
  v22 = sub_29DA33A44();
  v23 = sub_29DA338B4();
  v24 = sub_29DA338A4();

  if ((v24 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  v70 = v13;
  sub_29DA338B4();
  v25 = sub_29D9FA3BC(MEMORY[0x29EDCA190], &qword_2A1A2DB10, 0x29EDBAD78, &qword_2A1A2DB08, &qword_2A17D1638);
  sub_29D9F860C(v25);

  v26 = *(v9 + 104);
  v26(v12, *MEMORY[0x29EDC38A8], v8);
  sub_29DA33A14();
  sub_29DA33A34();
  sub_29D9C706C(v78, v78[3]);
  if (sub_29DA33974())
  {
    v69 = a1;
    v27 = *(v76 + 56);
    sub_29D9C706C((v76 + 24), *(v76 + 48));
    v28 = *(v27 + 8);
    if (sub_29DA33834() == 0xD000000000000020 && 0x800000029DA371A0 == v29)
    {

      v30 = v21;
    }

    else
    {
      v46 = sub_29DA35114();

      v30 = v21;
      if ((v46 & 1) == 0)
      {
        sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_29DA3AB40;
        v58 = *(v76 + 16);
        sub_29D9FA5EC(v76 + 24, v77);
        v59 = v75;
        v60 = v70;
        (*(v75 + 16))(v74, v21, v70);
        (*(v71 + 16))(v73, v69, v72);
        v61 = sub_29DA33FD4();
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v64 = v58;
        v65 = sub_29DA33FC4();
        *(v32 + 56) = v61;
        *(v32 + 64) = sub_29D9FA650(&qword_2A17D1630, MEMORY[0x29EDC3D70]);
        *(v32 + 32) = v65;
        (*(v59 + 8))(v21, v60);
        goto LABEL_11;
      }
    }

    v66 = v30;
    v47 = v74;
    v48 = v75;
    v49 = *(v75 + 16);
    v49(v74, v30, v70);
    v26(v12, *MEMORY[0x29EDC3898], v8);
    sub_29DA33A04();
    sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29DA3AB40;
    v50 = *(v76 + 16);
    sub_29D9FA5EC(v76 + 24, v77);
    v51 = v70;
    v49(v17, v47, v70);
    (*(v71 + 16))(v73, v69, v72);
    v52 = sub_29DA33FF4();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v55 = v50;
    v56 = sub_29DA33FE4();
    *(v32 + 56) = v52;
    *(v32 + 64) = sub_29D9FA650(&qword_2A1A2CCC0, MEMORY[0x29EDC3D80]);
    *(v32 + 32) = v56;
    v57 = *(v48 + 8);
    v57(v47, v51);
    v57(v66, v51);
  }

  else
  {
    sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29DA3AB40;
    v33 = *(v76 + 16);
    sub_29D9FA5EC(v76 + 24, v77);
    v34 = v74;
    v35 = v75;
    v76 = *(v75 + 16);
    (v76)(v74, v21, v70);
    (*(v71 + 16))(v73, a1, v72);
    v36 = sub_29DA33FB4();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = v33;
    v40 = sub_29DA33FA4();
    v77[3] = v36;
    v77[4] = sub_29D9FA650(&qword_2A1A2CCC8, MEMORY[0x29EDC3D60]);
    v77[0] = v40;
    sub_29D9FA590(0, &qword_2A1A2D2A0);
    v41 = v67;
    sub_29DA346B4();
    sub_29D9FA698();
    v42 = v69;
    sub_29DA34704();
    (*(v68 + 8))(v41, v42);
    v43 = v70;
    (v76)(v34, v21, v70);
    v44 = sub_29DA33B24();
    v45 = MEMORY[0x29EDC3A48];
    *(v32 + 56) = v44;
    *(v32 + 64) = v45;
    sub_29D9E1E30((v32 + 32));
    sub_29DA33B14();
    (*(v35 + 8))(v21, v43);
  }

LABEL_11:
  sub_29D9C7968(v78);
  return v32;
}

void sub_29D9F860C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29DA34D34())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D9FA774(0, &qword_2A1A2CA90, &qword_2A1A2CB38, 0x29EDBACB8, &qword_2A1A2CB30);
  v3 = sub_29DA34DC4();
LABEL_6:
  if (sub_29D9C79FC(0, &qword_2A1A2CB38, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29DA34D24();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      sub_29D9FA71C(&qword_2A1A2DB08, &qword_2A1A2DB10, 0x29EDBAD78);
      sub_29DA34AD4();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_29DA34D54())
        {
LABEL_55:
          sub_29D9FA76C();

          return;
        }

        sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_29D9FA12C(v36);
    }
  }

  if (v2)
  {

    sub_29DA34D24();
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9FA71C(&qword_2A1A2DB08, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29DA34AD4();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29DA34D54())
    {
      goto LABEL_55;
    }

    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_29DA34CA4();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_29D9F8B30()
{
  sub_29D9C7968((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_29D9F8B94()
{
  v0 = swift_allocObject();
  sub_29D9F7BE4();
  return v0;
}

void *sub_29D9F8BCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_29D9F7BE4();
  *a1 = v2;
  return result;
}

uint64_t sub_29D9F8C54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_29DA351B4();
  sub_29DA348D4();
  v9 = sub_29DA351E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_29DA35114() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_29D9F972C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D9F8DA4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29DA34D44();

    if (v17)
    {

      sub_29D9C79FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_29DA34D34();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_29D9F9020(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_29D9F948C(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_29D9F96A8(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_29D9C79FC(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_29DA34CA4();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_29DA34CB4();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_29D9F98AC(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D9F9020(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D9FA774(0, a3, a4, a5, a6);
    v10 = sub_29DA34DB4();
    v24 = v10;
    sub_29DA34D24();
    if (sub_29DA34D54())
    {
      sub_29D9C79FC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_29D9F948C(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_29DA34CA4();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_29DA34D54());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

uint64_t sub_29D9F9238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D9FA800();
  result = sub_29DA34DA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_29DA351B4();
      sub_29DA348D4();
      result = sub_29DA351E4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_29D9F948C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29D9FA774(0, a2, a3, a4, a5);
  result = sub_29DA34DA4();
  v10 = result;
  if (*(v7 + 16))
  {
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_29DA34CA4();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
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

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

unint64_t sub_29D9F96A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_29DA34CA4();
  v5 = -1 << *(a2 + 32);
  result = sub_29DA34D14();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D9F972C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D9F9238(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D9F9A54();
      goto LABEL_16;
    }

    sub_29D9F9CF8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_29DA351B4();
  sub_29DA348D4();
  result = sub_29DA351E4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29DA35114();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29DA35134();
  __break(1u);
  return result;
}

void sub_29D9F98AC(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_29D9F948C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D9F9BA4(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29D9F9F24(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_29DA34CA4();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_29D9C79FC(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_29DA34CB4();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29DA35134();
  __break(1u);
}

void *sub_29D9F9A54()
{
  v1 = v0;
  sub_29D9FA800();
  v2 = *v0;
  v3 = sub_29DA34D94();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_29D9F9BA4(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D9FA774(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29DA34D94();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_29D9F9CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D9FA800();
  result = sub_29DA34DA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_29DA351B4();

      sub_29DA348D4();
      result = sub_29DA351E4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_29D9F9F24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29D9FA774(0, a2, a3, a4, a5);
  result = sub_29DA34DA4();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_29DA34CA4();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

void sub_29D9FA12C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_29DA34CA4();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_29D9C79FC(0, &qword_2A1A2CB38, 0x29EDBACB8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_29DA34CB4();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

void (*sub_29D9FA26C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6D970](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D9FA858;
  }

  __break(1u);
  return result;
}

void (*sub_29D9FA2EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6D970](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D9FA36C;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9FA3BC(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29DA34D34())
  {
    v11 = sub_29D9C79FC(0, a2, a3);
    v12 = sub_29D9FA71C(a4, a2, a3);
    result = MEMORY[0x29ED6D630](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x29ED6D970](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D9F8DA4(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_29DA34D34();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_29D9FA528(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9FA590(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9FA590(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D9FA5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D9FA650(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D9FA698()
{
  result = qword_2A1A2CC38;
  if (!qword_2A1A2CC38)
  {
    sub_29D9FA528(255, &qword_2A1A2CC30, &qword_2A1A2D2A0, MEMORY[0x29EDC3C90], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CC38);
  }

  return result;
}

uint64_t sub_29D9FA71C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D9C79FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D9FA774(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D9C79FC(255, a3, a4);
    sub_29D9FA71C(a5, a3, a4);
    v9 = sub_29DA34DD4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D9FA800()
{
  if (!qword_2A1A2D438)
  {
    v0 = sub_29DA34DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D438);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for HighlightAlertReferenceLineKind(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HighlightAlertReferenceLineKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HighlightAlertReferenceLineKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_29D9FA8C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D9FA8DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_29D9FA918()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9FA9F4()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9FAABC()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9FAB94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D9FD4FC();
  *a2 = result;
  return result;
}

void sub_29D9FABC4(unint64_t *a1@<X8>)
{
  v2 = 0xEF656E694C65636ELL;
  v3 = 0x6572656665526F6ELL;
  v4 = 0x800000029DA369D0;
  v5 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000029DA369F0;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x800000029DA369B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D9FAD0C()
{
  v1 = 0x6572656665526F6ELL;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D9FADA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D9FD4FC();
  *a1 = result;
  return result;
}

uint64_t sub_29D9FADC8(uint64_t a1)
{
  v2 = sub_29D9FD868();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FAE04(uint64_t a1)
{
  v2 = sub_29D9FD868();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FAE4C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29D9FAE7C(uint64_t a1)
{
  v2 = sub_29D9FE14C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FAEB8(uint64_t a1)
{
  v2 = sub_29D9FE14C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FAF1C(void *a1)
{
  sub_29D9FE0E4(0, &qword_2A1A2CA40, sub_29D9FE14C, &type metadata for HighlightAlertReferenceLineKind.NoExtraData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE14C();
  sub_29DA35224();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D9FB078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000029DA376E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29DA35114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D9FB10C(uint64_t a1)
{
  v2 = sub_29D9FE090();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FB148(uint64_t a1)
{
  v2 = sub_29D9FE090();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FB184@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_29D9FE0E4(0, &qword_2A17D1668, sub_29D9FE090, &type metadata for HighlightAlertReferenceLineKind.ReferenceLineData.CodingKeys, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE090();
  sub_29DA35214();
  if (v2)
  {
    return sub_29D9C7968(a1);
  }

  v11 = v16;
  sub_29DA35044();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_29D9C7968(a1);
  *v11 = v13;
  return result;
}

uint64_t sub_29D9FB33C(void *a1)
{
  sub_29D9FE0E4(0, &qword_2A17D1678, sub_29D9FE090, &type metadata for HighlightAlertReferenceLineKind.ReferenceLineData.CodingKeys, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE090();
  sub_29DA35224();
  sub_29DA350C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D9FB4A8(void *a1, uint64_t a2, char a3)
{
  sub_29D9FE0E4(0, &qword_2A1A2CA48, sub_29D9FD868, &type metadata for HighlightAlertReferenceLineKind.CodingKeys, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FD868();
  sub_29DA35224();
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v16 = 1;
      }

      else
      {
        v17 = 2;
      }

      sub_29D9FD9B8();
    }

    else
    {
      v15 = 0;
      sub_29D9FD9B8();
    }
  }

  else
  {
    v19 = a2;
    v18 = 3;
    sub_29D9FD964();
  }

  sub_29DA350D4();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_29D9FB6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29D9FD548(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void *sub_29D9FB6FC()
{
  v252 = *MEMORY[0x29EDCA608];
  v0 = type metadata accessor for HighlightAlertConfiguration(0);
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v205 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v204 = &v204 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v210 = &v204 - v7;
  v209 = MEMORY[0x29EDC9E90];
  sub_29D9FDA4C(0, &qword_2A1A2DA98, type metadata accessor for HighlightAlertConfiguration, MEMORY[0x29EDC9E90]);
  v243 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v212 = v8 + 6 * v243;
  v9 = swift_allocObject();
  v211 = v9;
  *(v9 + 16) = xmmword_29DA3AF70;
  v213 = v8;
  v10 = v9 + v8;
  v11 = *MEMORY[0x29EDBA458];
  v222 = sub_29DA34854();
  v221 = v12;
  v13 = (v10 + v0[7]);
  v14 = type metadata accessor for HighlightAlertDistributionConfiguration();
  v15 = v14[7];
  LODWORD(v218) = *MEMORY[0x29EDC4D08];
  v16 = v218;
  v17 = sub_29DA34374();
  v18 = *(v17 - 8);
  v19 = *(v18 + 104);
  v20 = v18 + 104;
  v242 = v17;
  v19(&v13[v15], v16, v17);
  v240 = v20;
  v241 = v19;
  v21 = v14[8];
  v220 = *MEMORY[0x29EDC4C10];
  v22 = v220;
  v234 = sub_29DA34284();
  v23 = *(v234 - 8);
  v24 = *(v23 + 104);
  v232 = v23 + 104;
  v233 = v24;
  (v24)(&v13[v21], v22, v234);
  v25 = v14[9];
  v216 = *MEMORY[0x29EDC48E8];
  v26 = v216;
  v231 = sub_29DA34064();
  v27 = *(v231 - 8);
  v230 = *(v27 + 104);
  v225 = v27 + 104;
  v230(&v13[v25], v26, v231);
  v28 = v14[5];
  v229 = *MEMORY[0x29EDC4CD0];
  (v19)(&v13[v28]);
  *v13 = 0;
  v29 = &v13[v14[6]];
  *v29 = 3;
  v29[8] = 0;
  v13[v14[10]] = 2;
  v30 = &v13[v14[11]];
  *v30 = 0;
  v30[8] = 1;
  v250 = type metadata accessor for HighlightAlertKind(0);
  swift_storeEnumTagMultiPayload();
  v31 = v0[11];
  LODWORD(v214) = *MEMORY[0x29EDC4B90];
  v32 = v214;
  v33 = sub_29DA34264();
  v34 = *(v33 - 8);
  v35 = *(v34 + 104);
  v35(v10 + v31, v32, v33);
  v248 = v35;
  v249 = v34 + 104;
  v241((v10 + v0[12]), v218, v242);
  v36 = v0[9];
  v227 = sub_29DA34394();
  v37 = *(v227 - 8);
  v226 = *(v37 + 56);
  v235 = v37 + 56;
  v226(v10 + v36, 1, 1, v227);
  v38 = v0[14];
  v215 = *MEMORY[0x29EDC4B98];
  v223 = v33;
  (v35)(v10 + v38);
  v39 = *(v34 + 56);
  v224 = v34 + 56;
  v228 = v39;
  v39(v10 + v38, 0, 1, v33);
  v39(v10 + v0[15], 1, 1, v33);
  v39(v10 + v0[16], 1, 1, v33);
  v40 = v0[13];
  v239 = *MEMORY[0x29EDC4920];
  v41 = v239;
  v247 = sub_29DA340E4();
  v42 = *(v247 - 8);
  v43 = *(v42 + 104);
  v245 = v42 + 104;
  v246 = v43;
  v43(v10 + v40, v41, v247);
  v44 = v10 + v0[17];
  sub_29DA342D4();
  v45 = v0[18];
  v238 = *MEMORY[0x29EDC4BF8];
  v46 = v238;
  v237 = sub_29DA34274();
  v47 = *(v237 - 8);
  v236 = *(v47 + 104);
  v244 = v47 + 104;
  v236(v10 + v45, v46, v237);
  v217 = v10;
  v48 = v221;
  *v10 = v222;
  *(v10 + 8) = v48;
  *(v10 + 16) = 257;
  v49 = v10 + v0[19];
  strcpy(v49, "HighHeartRate");
  *(v49 + 14) = -4864;
  v50 = v10 + v0[10];
  *v50 = 1;
  *(v50 + 8) = 1;
  *(v10 + v0[8]) = 2;
  v51 = v10 + v243;
  v52 = *MEMORY[0x29EDBA498];
  v222 = sub_29DA34854();
  v221 = v53;
  v54 = (v51 + v0[7]);
  v55 = v218;
  v56 = v241;
  v57 = v242;
  v241(&v54[v14[7]], v218, v242);
  (v233)(&v54[v14[8]], v220, v234);
  v230(&v54[v14[9]], v216, v231);
  v56(&v54[v14[5]], v229, v57);
  *v54 = 0;
  v219 = v14;
  v58 = &v54[v14[6]];
  *v58 = 4;
  v58[8] = 0;
  v54[v14[10]] = 2;
  v59 = &v54[v14[11]];
  *v59 = 0;
  v59[8] = 1;
  swift_storeEnumTagMultiPayload();
  v60 = v223;
  v61 = v248;
  v248(v51 + v0[11], v214, v223);
  v56((v51 + v0[12]), v55, v57);
  v62 = v227;
  v63 = v226;
  v226(v51 + v0[9], 1, 1, v227);
  v64 = v60;
  v65 = v60;
  v66 = v228;
  v228(v51 + v0[14], 1, 1, v64);
  v67 = v0[15];
  v61(v51 + v67, v215, v65);
  v66(v51 + v67, 0, 1, v65);
  v66(v51 + v0[16], 1, 1, v65);
  v246(v51 + v0[13], v239, v247);
  v68 = v51 + v0[17];
  sub_29DA342D4();
  v236(v51 + v0[18], v238, v237);
  v69 = v221;
  *v51 = v222;
  *(v51 + 8) = v69;
  *(v51 + 16) = 257;
  v70 = v51 + v0[19];
  strcpy(v70, "LowHeartRate");
  *(v70 + 13) = 0;
  *(v70 + 14) = -5120;
  v71 = v51 + v0[10];
  *v71 = 1;
  *(v71 + 8) = 1;
  *(v51 + v0[8]) = 2;
  v208 = 2 * v243;
  v72 = v217 + 2 * v243;
  v73 = *MEMORY[0x29EDBA478];
  v207 = sub_29DA34854();
  v206 = v74;
  v63(v72 + v0[9], 1, 1, v62);
  v66(v72 + v0[14], 1, 1, v65);
  v66(v72 + v0[15], 1, 1, v65);
  v66(v72 + v0[16], 1, 1, v65);
  v75 = (v72 + v0[7]);
  v76 = v219;
  v77 = v241;
  v78 = v242;
  v241(&v75[v219[5]], v229, v242);
  v79 = v76[7];
  v216 = *MEMORY[0x29EDC4CC8];
  v77(&v75[v79]);
  v80 = v76[8];
  v215 = *MEMORY[0x29EDC4C20];
  v233(&v75[v80]);
  v81 = v76[9];
  LODWORD(v222) = *MEMORY[0x29EDC48E0];
  (v230)(&v75[v81]);
  *v75 = 0;
  v82 = &v75[v76[6]];
  *v82 = 0;
  v82[8] = 1;
  v75[v76[10]] = 0;
  v83 = &v75[v76[11]];
  *v83 = 0;
  v83[8] = 1;
  swift_storeEnumTagMultiPayload();
  v84 = v0[11];
  LODWORD(v221) = *MEMORY[0x29EDC4B68];
  (v248)(v72 + v84);
  v85 = v0[12];
  v220 = *MEMORY[0x29EDC4CF0];
  v86 = v77;
  v77((v72 + v85));
  v246(v72 + v0[13], v239, v247);
  v87 = v72 + v0[17];
  sub_29DA342D4();
  v236(v72 + v0[18], v238, v237);
  v88 = v206;
  *v72 = v207;
  *(v72 + 8) = v88;
  *(v72 + 16) = 1;
  v89 = (v72 + v0[19]);
  *v89 = 5132873;
  v89[1] = 0xE300000000000000;
  v90 = v72 + v0[10];
  *v90 = 0;
  *(v90 + 8) = 1;
  *(v72 + v0[8]) = 0;
  v91 = v217 + v208 + v243;
  v92 = *MEMORY[0x29EDBA440];
  v208 = sub_29DA34854();
  v207 = v93;
  v94 = (v91 + v0[7]);
  v95 = *MEMORY[0x29EDC4D00];
  v86(&v94[v76[7]], v95, v78);
  (v233)(&v94[v76[8]], *MEMORY[0x29EDC4C00], v234);
  v230(&v94[v76[9]], v222, v231);
  v96 = v223;
  v97 = v78;
  v86(&v94[v76[5]], v229, v78);
  *v94 = 0;
  v98 = &v94[v76[6]];
  *v98 = 5;
  v98[8] = 0;
  v94[v76[10]] = 1;
  v99 = &v94[v76[11]];
  *v99 = 0;
  v99[8] = 1;
  swift_storeEnumTagMultiPayload();
  v100 = v248;
  v248(v91 + v0[11], *MEMORY[0x29EDC4B80], v96);
  v86((v91 + v0[12]), v95, v97);
  v226(v91 + v0[9], 1, 1, v227);
  v246(v91 + v0[13], *MEMORY[0x29EDC4918], v247);
  v101 = v228;
  v228(v91 + v0[14], 1, 1, v96);
  v101(v91 + v0[15], 1, 1, v96);
  v102 = v101;
  v103 = v0[16];
  v100(v91 + v103, *MEMORY[0x29EDC4B88], v96);
  v102(v91 + v103, 0, 1, v96);
  v104 = MEMORY[0x29EDC4C50];
  sub_29D9FDA4C(0, &qword_2A1A2DA90, MEMORY[0x29EDC4C50], v209);
  v105 = *(sub_29DA342E4() - 8);
  v106 = *(v105 + 72);
  v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_29DA3AB40;
  sub_29DA342C4();
  v251 = v108;
  v109 = v0[17];
  sub_29D9FDAB0();
  sub_29D9FDA4C(0, &qword_2A1A2DB58, v104, MEMORY[0x29EDC9A40]);
  sub_29D9FDB08();
  sub_29DA34CD4();
  v110 = v238;
  v111 = v236;
  v112 = v237;
  v236(v91 + v0[18], v238, v237);
  v113 = v207;
  *v91 = v208;
  *(v91 + 8) = v113;
  *(v91 + 16) = 1;
  *(v91 + 17) = 1;
  v114 = (v91 + v0[19]);
  *v114 = 0x6573696F4ELL;
  v114[1] = 0xE500000000000000;
  v115 = v91 + v0[10];
  *v115 = 2;
  *(v115 + 8) = 1;
  *(v91 + v0[8]) = 1;
  v209 = (4 * v243);
  v116 = v217;
  v117 = v217 + 4 * v243;
  v118 = *MEMORY[0x29EDBA450];
  v208 = sub_29DA34854();
  v207 = v119;
  v120 = v0[7];
  swift_storeEnumTagMultiPayload();
  v226(v117 + v0[9], 1, 1, v227);
  v121 = v228;
  v228(v117 + v0[14], 1, 1, v96);
  v121(v117 + v0[15], 1, 1, v96);
  v121(v117 + v0[16], 1, 1, v96);
  v248(v117 + v0[11], v221, v96);
  v122 = v241;
  v123 = v242;
  v241((v117 + v0[12]), v220, v242);
  v246(v117 + v0[13], v239, v247);
  v124 = v117 + v0[17];
  sub_29DA342D4();
  v111(v117 + v0[18], v110, v112);
  v125 = v207;
  *v117 = v208;
  *(v117 + 8) = v125;
  *(v117 + 16) = 0;
  *(v117 + 17) = 1;
  v126 = (v117 + v0[19]);
  strcpy(v126, "HeadphoneAudio");
  v126[15] = -18;
  v127 = v117 + v0[10];
  *v127 = 0;
  *(v127 + 8) = 1;
  *(v117 + v0[8]) = 0;
  v128 = v209 + v243 + v116;
  v129 = *MEMORY[0x29EDBA490];
  v209 = sub_29DA34854();
  v208 = v130;
  v217 = 0x800000029DA376A0;
  v131 = &v128[v0[7]];
  v132 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
  v133 = v218;
  v134 = v123;
  v122(&v131[*(v132 + 20)], v218, v123);
  v135 = v219;
  v136 = *MEMORY[0x29EDC4D70];
  v137 = sub_29DA343A4();
  (*(*(v137 - 8) + 104))(v131, v136, v137);
  v138 = *(v132 + 24);
  v139 = *MEMORY[0x29EDC4B10];
  v140 = sub_29DA341E4();
  (*(*(v140 - 8) + 104))(&v131[v138], v139, v140);
  swift_storeEnumTagMultiPayload();
  v141 = v223;
  v248(&v128[v0[11]], v214, v223);
  v122(&v128[v0[12]], v133, v134);
  v142 = v227;
  v143 = v226;
  v226(&v128[v0[9]], 1, 1, v227);
  v144 = v228;
  v228(&v128[v0[14]], 1, 1, v141);
  v144(&v128[v0[15]], 1, 1, v141);
  v145 = v141;
  v144(&v128[v0[16]], 1, 1, v141);
  v246(&v128[v0[13]], v239, v247);
  v146 = &v128[v0[17]];
  sub_29DA342D4();
  v236(&v128[v0[18]], v238, v237);
  v147 = v208;
  *v128 = v209;
  *(v128 + 1) = v147;
  v128[16] = 1;
  v128[17] = 1;
  v148 = &v128[v0[19]];
  *v148 = 0xD000000000000010;
  *(v148 + 1) = v217;
  v149 = &v128[v0[10]];
  *v149 = 2;
  v149[8] = 1;
  v128[v0[8]] = 0;
  v150 = *MEMORY[0x29EDBA430];
  v217 = sub_29DA34854();
  v214 = v151;
  v218 = 0x800000029DA376C0;
  v152 = v210;
  v143(&v210[v0[9]], 1, 1, v142);
  v144((v152 + v0[14]), 1, 1, v145);
  v144((v152 + v0[15]), 1, 1, v145);
  v144((v152 + v0[16]), 1, 1, v145);
  v153 = (v152 + v0[7]);
  v155 = v241;
  v154 = v242;
  v241(&v153[v135[5]], v229, v242);
  v155(&v153[v135[7]], v216, v154);
  (v233)(&v153[v135[8]], v215, v234);
  v230(&v153[v135[9]], v222, v231);
  *v153 = 0;
  v156 = &v153[v135[6]];
  *v156 = 0;
  v156[8] = 1;
  v153[v135[10]] = 0;
  v157 = &v153[v135[11]];
  *v157 = 0;
  v157[8] = 1;
  swift_storeEnumTagMultiPayload();
  v248(v152 + v0[11], v221, v145);
  v155((v152 + v0[12]), v220, v154);
  v246(v152 + v0[13], v239, v247);
  v158 = v152 + v0[17];
  sub_29DA342D4();
  v236(v152 + v0[18], v238, v237);
  v159 = v214;
  *v152 = v217;
  *(v152 + 8) = v159;
  *(v152 + 16) = 1;
  v160 = (v152 + v0[19]);
  *v160 = 0xD000000000000014;
  v160[1] = v218;
  v161 = v152 + v0[10];
  *v161 = 0;
  *(v161 + 8) = 1;
  *(v152 + v0[8]) = 0;
  v162 = sub_29D9D5360(1uLL, 7, 1, v211);
  v162[2] = 7;
  sub_29D9F7B00(v152, v162 + v212);
  v163 = [objc_opt_self() sharedBehavior];
  if (!v163)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v164 = v163;
  v165 = [v163 features];

  if (!v165)
  {
    goto LABEL_11;
  }

  v166 = [v165 hermit];

  v167 = v205;
  if (v166)
  {
    v168 = *MEMORY[0x29EDBA460];
    v218 = sub_29DA34854();
    v217 = v169;
    v170 = v204;
    v226(v204 + v0[9], 1, 1, v227);
    v171 = v223;
    v172 = v228;
    v228(v170 + v0[14], 1, 1, v223);
    v172(v170 + v0[15], 1, 1, v171);
    v172(v170 + v0[16], 1, 1, v171);
    v173 = v162;
    v174 = (v170 + v0[7]);
    v175 = v219;
    v177 = v241;
    v176 = v242;
    v241(&v174[v219[5]], v229, v242);
    v177(&v174[v175[7]], v216, v176);
    (v233)(&v174[v175[8]], v215, v234);
    v230(&v174[v175[9]], v222, v231);
    *v174 = 0;
    v178 = &v174[v175[6]];
    *v178 = 0;
    v178[8] = 1;
    v174[v175[10]] = 0;
    v179 = &v174[v175[11]];
    *v179 = 0;
    v179[8] = 1;
    swift_storeEnumTagMultiPayload();
    v248(v170 + v0[11], v221, v171);
    v177((v170 + v0[12]), v220, v176);
    v246(v170 + v0[13], v239, v247);
    v180 = v170 + v0[17];
    sub_29DA342D4();
    v236(v170 + v0[18], v238, v237);
    v181 = v217;
    *v170 = v218;
    *(v170 + 8) = v181;
    *(v170 + 16) = 1;
    v182 = v170 + v0[19];
    strcpy(v182, "Hypertension");
    *(v182 + 13) = 0;
    *(v182 + 14) = -5120;
    v183 = v170 + v0[10];
    *v183 = 0;
    *(v183 + 8) = 1;
    *(v170 + v0[8]) = 0;
    v185 = v162[2];
    v184 = v162[3];
    if (v185 >= v184 >> 1)
    {
      v173 = sub_29D9D5360(v184 > 1, v185 + 1, 1, v162);
    }

    *(v173 + 16) = v185 + 1;
    sub_29D9F7B00(v204, v173 + v213 + v185 * v243);
    v162 = v173;
  }

  v186 = *MEMORY[0x29EDBA4D8];
  v218 = sub_29DA34854();
  v217 = v187;
  v226(v167 + v0[9], 1, 1, v227);
  v188 = v223;
  v189 = v228;
  v228(v167 + v0[14], 1, 1, v223);
  v189(v167 + v0[15], 1, 1, v188);
  v189(v167 + v0[16], 1, 1, v188);
  v190 = (v167 + v0[7]);
  v191 = v219;
  v192 = v241;
  v193 = v242;
  v241(&v190[v219[5]], v229, v242);
  v192(&v190[v191[7]], v216, v193);
  (v233)(&v190[v191[8]], v215, v234);
  v230(&v190[v191[9]], v222, v231);
  *v190 = 0;
  v194 = &v190[v191[6]];
  *v194 = 0;
  v194[8] = 1;
  v190[v191[10]] = 0;
  v195 = &v190[v191[11]];
  *v195 = 0;
  v195[8] = 1;
  swift_storeEnumTagMultiPayload();
  v248(v167 + v0[11], v221, v188);
  v192((v167 + v0[12]), v220, v193);
  v246(v167 + v0[13], v239, v247);
  v196 = v167 + v0[17];
  sub_29DA342D4();
  v236(v167 + v0[18], v238, v237);
  v197 = v217;
  *v167 = v218;
  *(v167 + 8) = v197;
  *(v167 + 16) = 1;
  v198 = (v167 + v0[19]);
  *v198 = 0x6E70417065656C53;
  v198[1] = 0xEA00000000006165;
  v199 = v167 + v0[10];
  *v199 = 0;
  *(v199 + 8) = 1;
  *(v167 + v0[8]) = 0;
  v201 = v162[2];
  v200 = v162[3];
  if (v201 >= v200 >> 1)
  {
    v162 = sub_29D9D5360(v200 > 1, v201 + 1, 1, v162);
  }

  v162[2] = v201 + 1;
  sub_29D9F7B00(v167, v162 + v213 + v201 * v243);
  v202 = *MEMORY[0x29EDCA608];
  return v162;
}

uint64_t sub_29D9FD4FC()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D9FD548(uint64_t *a1)
{
  sub_29D9FE0E4(0, &qword_2A1A2DAA8, sub_29D9FD868, &type metadata for HighlightAlertReferenceLineKind.CodingKeys, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v16[-v7];
  v9 = a1[4];
  v10 = sub_29D9C706C(a1, a1[3]);
  sub_29D9FD868();
  v11 = v10;
  sub_29DA35214();
  if (v1)
  {
    goto LABEL_10;
  }

  v12 = sub_29DA35064();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v12 + v13 + 31);

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v16[14] = 2;
        sub_29D9FD910();
        sub_29DA35054();
        (*(v5 + 8))(v8, v4);
        v11 = 2;
      }

      else
      {
        v16[15] = 3;
        sub_29D9FD8BC();
        sub_29DA35054();
        (*(v5 + 8))(v8, v4);
        v11 = v17;
      }
    }

    else if (v14)
    {
      v16[13] = 1;
      sub_29D9FD910();
      sub_29DA35054();
      (*(v5 + 8))(v8, v4);
      v11 = 1;
    }

    else
    {
      v16[12] = 0;
      sub_29D9FD910();
      sub_29DA35054();
      (*(v5 + 8))(v8, v4);
      v11 = 0;
    }

LABEL_10:
    sub_29D9C7968(a1);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_29D9FD868()
{
  result = qword_2A1A2DD98[0];
  if (!qword_2A1A2DD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A2DD98);
  }

  return result;
}

unint64_t sub_29D9FD8BC()
{
  result = qword_2A17D1640;
  if (!qword_2A17D1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1640);
  }

  return result;
}

unint64_t sub_29D9FD910()
{
  result = qword_2A1A2DD80;
  if (!qword_2A1A2DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD80);
  }

  return result;
}

unint64_t sub_29D9FD964()
{
  result = qword_2A17D1648;
  if (!qword_2A17D1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1648);
  }

  return result;
}

unint64_t sub_29D9FD9B8()
{
  result = qword_2A1A2CF80;
  if (!qword_2A1A2CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF80);
  }

  return result;
}

void sub_29D9FDA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D9FDAB0()
{
  result = qword_2A1A2DB88;
  if (!qword_2A1A2DB88)
  {
    sub_29DA342E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB88);
  }

  return result;
}

unint64_t sub_29D9FDB08()
{
  result = qword_2A1A2DB50;
  if (!qword_2A1A2DB50)
  {
    sub_29D9FDA4C(255, &qword_2A1A2DB58, MEMORY[0x29EDC4C50], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB50);
  }

  return result;
}

uint64_t sub_29D9FDBE0()
{
  result = type metadata accessor for HighlightAlertDistributionConfiguration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D9FDCAC()
{
  sub_29D9FDE68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HighlightAlertKind(319);
    if (v1 <= 0x3F)
    {
      sub_29D9FDA4C(319, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        sub_29DA34264();
        if (v3 <= 0x3F)
        {
          sub_29DA34374();
          if (v4 <= 0x3F)
          {
            sub_29DA340E4();
            if (v5 <= 0x3F)
            {
              sub_29D9FDA4C(319, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], MEMORY[0x29EDC9C68]);
              if (v6 <= 0x3F)
              {
                sub_29DA342E4();
                if (v7 <= 0x3F)
                {
                  sub_29DA34274();
                  if (v8 <= 0x3F)
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

void sub_29D9FDE68()
{
  if (!qword_2A1A2D010)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D010);
    }
  }
}

unint64_t sub_29D9FDEDC()
{
  result = qword_2A17D1650;
  if (!qword_2A17D1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1650);
  }

  return result;
}

unint64_t sub_29D9FDF34()
{
  result = qword_2A17D1658;
  if (!qword_2A17D1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1658);
  }

  return result;
}

unint64_t sub_29D9FDF8C()
{
  result = qword_2A17D1660;
  if (!qword_2A17D1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1660);
  }

  return result;
}

unint64_t sub_29D9FDFE4()
{
  result = qword_2A1A2DD88;
  if (!qword_2A1A2DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD88);
  }

  return result;
}

unint64_t sub_29D9FE03C()
{
  result = qword_2A1A2DD90;
  if (!qword_2A1A2DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD90);
  }

  return result;
}

unint64_t sub_29D9FE090()
{
  result = qword_2A17D1670;
  if (!qword_2A17D1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1670);
  }

  return result;
}

void sub_29D9FE0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29D9FE14C()
{
  result = qword_2A1A2CF98;
  if (!qword_2A1A2CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF98);
  }

  return result;
}

unint64_t sub_29D9FE1A0()
{
  result = qword_2A17D1680;
  if (!qword_2A17D1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1680);
  }

  return result;
}

unint64_t sub_29D9FE218()
{
  result = qword_2A17D1688;
  if (!qword_2A17D1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1688);
  }

  return result;
}

unint64_t sub_29D9FE270()
{
  result = qword_2A1A2CF88;
  if (!qword_2A1A2CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF88);
  }

  return result;
}

unint64_t sub_29D9FE2C8()
{
  result = qword_2A1A2CF90;
  if (!qword_2A1A2CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF90);
  }

  return result;
}

unint64_t sub_29D9FE320()
{
  result = qword_2A17D1690;
  if (!qword_2A17D1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1690);
  }

  return result;
}

unint64_t sub_29D9FE378()
{
  result = qword_2A17D1698;
  if (!qword_2A17D1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1698);
  }

  return result;
}

uint64_t type metadata accessor for HighlightAlertEventQueryOperation()
{
  result = qword_2A1A2D6F0;
  if (!qword_2A1A2D6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9FE428()
{
  result = sub_29DA336F4();
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

id sub_29D9FE508()
{
  v1 = qword_2A1A2D728;
  v2 = *&v0[qword_2A1A2D728];
  if (v2)
  {
    v3 = *&v0[qword_2A1A2D728];
  }

  else
  {
    v4 = sub_29D9FE56C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29D9FE56C(char *a1)
{
  v67 = a1;
  v1 = sub_29DA33554();
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29DA33794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9FF56C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29DA336F4();
  v68 = *(v12 - 8);
  v13 = v68;
  v14 = *(v68 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v58 = &v57 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v57 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v57 - v22;
  v24 = sub_29DA337A4();
  v61 = *(v24 - 8);
  v62 = v24;
  v25 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  v28 = *(v13 + 16);
  v28(v23, &v67[qword_2A1A2D720], v12);
  (*(v5 + 104))(v8, *MEMORY[0x29EDB9CB8], v4);
  v29 = v65;
  v57 = v23;
  v60 = v27;
  sub_29DA33774();
  v30 = v8;
  v31 = v68;
  (*(v5 + 8))(v30, v4);
  result = (*(v31 + 48))(v29, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v31 + 32))(v21, v29, v12);
    v28(v58, v21, v12);
    v33 = v57;
    v65 = v12;
    v28(v59, v57, v12);
    sub_29DA33504();
    v34 = objc_opt_self();
    v35 = sub_29DA334D4();
    v36 = [v34 predicateForSamplesWithinDateInterval:v35 options:0];

    v37 = v67;
    v38 = v67[qword_2A1A2D700 + 8];
    v39 = v33;
    v59 = v36;
    if (v38)
    {
      v40 = v36;
      v58 = 0;
    }

    else
    {
      v41 = [v34 predicateForCategorySamplesWithOperatorType:4 value:*&v67[qword_2A1A2D700]];
      sub_29D9FF658();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_29DA3B570;
      *(v42 + 32) = v36;
      *(v42 + 40) = v41;
      sub_29D9C79FC(0, &qword_2A1A2CB48, 0x29EDBA0A8);
      v43 = v41;
      v44 = v36;
      v45 = sub_29DA34944();

      v40 = [objc_opt_self() andPredicateWithSubpredicates_];
      v58 = v43;
    }

    v46 = *&v37[qword_2A1A2D710];
    v47 = [v37 name];
    if (v47)
    {
      v48 = v47;
      sub_29DA34854();
    }

    v49 = *&v37[qword_2A1A2D718];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29D9FF5D0();
    v51 = objc_allocWithZone(v50);
    v52 = v49;
    v53 = v40;
    v54 = sub_29DA344C4();

    (*(v63 + 8))(v66, v64);
    v55 = *(v68 + 8);
    v56 = v65;
    v55(v21, v65);
    v55(v39, v56);
    (*(v61 + 8))(v60, v62);
    return v54;
  }

  return result;
}

void sub_29D9FEC18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isCancelled] || (v2 = objc_msgSend(v1, sel_isFinished), v2))
    {
    }

    else
    {
      MEMORY[0x2A1C7C4A8](v2);
      sub_29DA33BF4();
    }
  }
}

void sub_29D9FECF8()
{
  v1 = [objc_opt_self() currentQueue];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + qword_2A1A2D710) identifier];
    sub_29DA34854();

    sub_29DA34B04();

    v5 = sub_29D9FE508();
    [v2 addOperation_];
  }

  else
  {
    sub_29DA34DF4();
    swift_getObjectType();
    v4 = sub_29DA35254();
    MEMORY[0x29ED6D450](v4);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
  }
}

void sub_29D9FEE6C(void *a1)
{
  v1 = a1;
  sub_29D9FECF8();
}

id sub_29D9FEEB4()
{
  v1 = v0;
  sub_29DA34AF4();
  result = [v0 isCancelled];
  if (result)
  {
    v3 = sub_29D9FE508();
    v4 = [v3 isCancelled];

    if ((v4 & 1) == 0)
    {
      [*&v1[qword_2A1A2D728] cancel];
    }

    sub_29D9FF514();
    v5 = swift_allocError();
    *v6 = 1;
    v7 = *&v1[qword_2A1A2D708];
    MEMORY[0x2A1C7C4A8](v5);

    sub_29DA33B54();

    return sub_29DA34B24();
  }

  return result;
}

uint64_t sub_29D9FEFE8(void *a1, char a2, char *a3)
{
  v6 = sub_29DA34644();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_29DA34614();
    v12 = a3;
    sub_29D9DC0BC(a1);
    v13 = sub_29DA34634();
    v14 = sub_29DA34B84();

    sub_29D9DC0B0(a1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v15 = 136380931;
      v16 = [*&v12[qword_2A1A2D710] identifier];
      v31 = v14;
      v17 = v16;
      v18 = sub_29DA34854();
      v33 = v12;
      v20 = v19;

      v21 = sub_29D9EBB44(v18, v20, &v34);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      swift_getErrorValue();
      v22 = sub_29DA35154();
      v24 = sub_29D9EBB44(v22, v23, &v34);

      *(v15 + 14) = v24;
      v12 = v33;
      _os_log_impl(&dword_29D9BB000, v13, v31, "HighlightAlert process query result failed for type: %{private}s, error: %{public}s", v15, 0x16u);
      v25 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v25, -1, -1);
      MEMORY[0x29ED6E4C0](v15, -1, -1);
    }

    v26 = (*(v7 + 8))(v11, v6);
    v27 = *&v12[qword_2A1A2D708];
    MEMORY[0x2A1C7C4A8](v26);
    *&v30[-16] = a1;
    v30[-8] = 1;
    sub_29D9DC0BC(a1);

    sub_29DA33B54();

    sub_29D9DC0B0(a1);
  }

  else
  {
    v28 = *&a3[qword_2A1A2D708];
    MEMORY[0x2A1C7C4A8](v9);
    *&v30[-16] = a1;
    v30[-8] = 0;

    sub_29DA33B54();
  }

  return sub_29DA34B14();
}

void sub_29D9FF380()
{
  v1 = *(v0 + qword_2A1A2D708);

  v2 = qword_2A1A2D720;
  v3 = sub_29DA336F4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_2A1A2D728);
}

id sub_29D9FF428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertEventQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9FF460(uint64_t a1)
{
  v2 = *(a1 + qword_2A1A2D708);

  v3 = qword_2A1A2D720;
  v4 = sub_29DA336F4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = *(a1 + qword_2A1A2D728);
}

unint64_t sub_29D9FF514()
{
  result = qword_2A1A2D6E8;
  if (!qword_2A1A2D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D6E8);
  }

  return result;
}

void sub_29D9FF56C()
{
  if (!qword_2A1A2E148)
  {
    sub_29DA336F4();
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2E148);
    }
  }
}

void sub_29D9FF5D0()
{
  if (!qword_2A1A2D4D8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2E010, 0x29EDBAD60);
    v0 = sub_29DA344D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D4D8);
    }
  }
}

void sub_29D9FF658()
{
  if (!qword_2A1A2E000)
  {
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2E000);
    }
  }
}

id sub_29D9FF6BC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(a1 + 8);
  sub_29D9DC0B0(*a1);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_29D9DC0BC(v3);
}

unint64_t sub_29D9FF72C()
{
  result = qword_2A17D16A0;
  if (!qword_2A17D16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16A0);
  }

  return result;
}

uint64_t ChangeDetectorError.hashValue.getter(unsigned __int8 a1)
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](a1);
  return sub_29DA351E4();
}

uint64_t AggregateChangeDetector.dispatchPending.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock);
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  return 0;
}

char *AggregateChangeDetector.__allocating_init(types:highFrequencyTypes:anchor:includeChangeDetails:name:healthStore:deliveryQueue:otherChangePublishers:changesHandler:)(int a1, int a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t (*a9)(), uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v18 = MEMORY[0x29EDCA190];
  v54 = MEMORY[0x29EDCA190];
  sub_29D9C64B8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v15[v17] = sub_29DA33B74();
  v22 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v54 = v18;
  v23 = MEMORY[0x29EDC3C80];
  sub_29DA05504(0, &qword_2A1A2D2C0, sub_29D9C6624, MEMORY[0x29EDC3C80]);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v15[v22] = sub_29DA33B74();
  v27 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  v28 = sub_29DA33854();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v15[v27] = sub_29DA33844();
  v31 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v32 = sub_29DA33A94();
  (*(*(v32 - 8) + 56))(&v15[v31], 1, 1, v32);
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = a7;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = a4;
  v33 = &v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
  *v33 = a5;
  v33[1] = a6;
  v34 = swift_allocObject();
  *(v34 + 16) = a10;
  *(v34 + 24) = a11;
  v54 = sub_29D9FFFF4;
  v55 = v34;
  sub_29DA05504(0, &qword_2A1A2D2A8, sub_29DA0001C, v23);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = a7;

  v39 = sub_29DA33B74();
  v40 = *&v15[v16];
  *&v15[v16] = v39;

  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = a8;
  v54 = a9;
  sub_29DA05504(0, &qword_2A1A2D2C8, sub_29DA000EC, v23);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = a8;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v53.receiver = v15;
  v53.super_class = v51;
  v45 = objc_msgSendSuper2(&v53, sel_init);
  v46 = *&v45[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries];
  v47 = v45;

  sub_29DA33B54();

  return v47;
}

char *AggregateChangeDetector.init(types:highFrequencyTypes:anchor:includeChangeDetails:name:healthStore:deliveryQueue:otherChangePublishers:changesHandler:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t (*a9)(), uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v11[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v18 = MEMORY[0x29EDCA190];
  v53 = MEMORY[0x29EDCA190];
  sub_29D9C64B8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v11[v17] = sub_29DA33B74();
  v22 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v53 = v18;
  v23 = MEMORY[0x29EDC3C80];
  sub_29DA05504(0, &qword_2A1A2D2C0, sub_29D9C6624, MEMORY[0x29EDC3C80]);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v11[v22] = sub_29DA33B74();
  v27 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  v28 = sub_29DA33854();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v11[v27] = sub_29DA33844();
  v31 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v32 = sub_29DA33A94();
  (*(*(v32 - 8) + 56))(&v12[v31], 1, 1, v32);
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = a7;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = a4;
  v33 = &v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
  *v33 = a5;
  v33[1] = a6;
  v34 = swift_allocObject();
  *(v34 + 16) = a10;
  *(v34 + 24) = a11;
  v53 = sub_29DA05664;
  v54 = v34;
  sub_29DA05504(0, &qword_2A1A2D2A8, sub_29DA0001C, v23);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = a7;

  v39 = sub_29DA33B74();
  v40 = *&v12[v16];
  *&v12[v16] = v39;

  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = a8;
  v53 = a9;
  sub_29DA05504(0, &qword_2A1A2D2C8, sub_29DA000EC, v23);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = a8;
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v52.receiver = v12;
  v52.super_class = type metadata accessor for AggregateChangeDetector();
  v45 = objc_msgSendSuper2(&v52, sel_init);
  v46 = *&v45[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries];
  v47 = v45;

  sub_29DA33B54();

  return v47;
}

uint64_t sub_29D9FFFF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_29DA0001C()
{
  result = qword_2A1A2C9C8;
  if (!qword_2A1A2C9C8)
  {
    sub_29DA0007C();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2A1A2C9C8);
  }

  return result;
}

void sub_29DA0007C()
{
  if (!qword_2A1A2D3E0)
  {
    sub_29DA33A94();
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D3E0);
    }
  }
}

void sub_29DA00120()
{
  if (!qword_2A1A2CC40)
  {
    sub_29DA33A94();
    v0 = sub_29DA34694();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CC40);
    }
  }
}

void sub_29DA00188(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  AggregateChangeDetector.databaseChangesQuery(for:anchor:)(a3, a4);
  MEMORY[0x29ED6D4A0]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v24 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29DA34974();
  }

  sub_29DA34994();
  v8 = a5;
  if (a5 >> 62)
  {
    v25 = sub_29DA34D34();
    v8 = a5;
    v9 = v25;
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = *&a2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name + 8];
    v27 = v8 & 0xC000000000000001;
    v26 = *&a2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
    v12 = v8;
    do
    {
      if (v27)
      {
        v13 = MEMORY[0x29ED6D970](v10);
      }

      else
      {
        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = 1;
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = v15;
      v16[4] = v14;
      v17 = objc_allocWithZone(MEMORY[0x29EDBACC0]);
      aBlock[4] = sub_29DA054D8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DA04AD8;
      aBlock[3] = &unk_2A2461D88;
      v18 = _Block_copy(aBlock);
      v19 = a2;

      v20 = v14;
      v21 = [v17 initWithSampleType:v20 predicate:0 updateHandler:v18];
      _Block_release(v18);

      v22 = v21;
      if (v11)
      {
        v23 = sub_29DA34824();
      }

      else
      {
        v23 = 0;
      }

      [v22 setDebugIdentifier_];

      [v22 setObserveUnfrozenSeries_];

      MEMORY[0x29ED6D4A0]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29DA34974();
      }

      ++v10;
      sub_29DA34994();

      v8 = v12;
    }

    while (v9 != v10);
  }
}

uint64_t type metadata accessor for AggregateChangeDetector()
{
  result = qword_2A1A2CD00;
  if (!qword_2A1A2CD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AggregateChangeDetector.start()()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v21 = *&v0[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  v18 = v0;
  v19 = &v22;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  if (v22)
  {
    swift_willThrow();
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges];
    MEMORY[0x2A1C7C4A8](v7);
    *(&v17 - 2) = v1;

    sub_29DA33B54();

    sub_29DA34614();
    v9 = v1;
    v10 = sub_29DA34634();
    v11 = sub_29DA34BA4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DA04CAC();
      v14 = sub_29DA34894();
      v16 = sub_29D9EBB44(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D9BB000, v10, v11, "%{public}s Started.", v12, 0xCu);
      sub_29D9C7968(v13);
      MEMORY[0x29ED6E4C0](v13, -1, -1);
      MEMORY[0x29ED6E4C0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_29DA007C8(uint64_t a1, void **a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state);
  if (v3 == 1)
  {
    sub_29DA052B8();
    v4 = swift_allocError();
    *v6 = 0;
    goto LABEL_5;
  }

  if (v3 != 2)
  {
    *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) = 1;
    v9 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries);

    sub_29DA33B44();

    if (v16 >> 62)
    {
      v10 = sub_29DA34D34();
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    v11 = a1;
    v12 = 0;
    v13 = *(v11 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore);
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x29ED6D970](v12);
      }

      else
      {
        v14 = *(v16 + 8 * v12 + 32);
      }

      v15 = v14;
      ++v12;
      [v13 executeQuery_];
    }

    while (v10 != v12);
LABEL_17:

    return;
  }

  sub_29DA052B8();
  v4 = swift_allocError();
  *v5 = 2;
LABEL_5:
  v7 = *a2;
  *a2 = v4;
}

uint64_t sub_29DA00984(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers);
  sub_29DA33B44();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = (v9 + 32);
    do
    {
      v10 = *v5;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29DA00120();
      sub_29DA05484(&qword_2A1A2CC48, sub_29DA00120);

      sub_29DA34734();

      MEMORY[0x29ED6D4A0](v6);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29DA34974();
      }

      sub_29DA34994();

      ++v5;
      --v4;
    }

    while (v4);
  }
}

Swift::Void __swiftcall AggregateChangeDetector.stop()()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *&v0[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  v15 = v0;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  sub_29DA34614();
  v6 = v0;
  v7 = sub_29DA34634();
  v8 = sub_29DA34BA4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DA04CAC();
    v11 = sub_29DA34894();
    v13 = sub_29D9EBB44(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D9BB000, v7, v8, "%{public}s Stopped.", v9, 0xCu);
    sub_29D9C7968(v10);
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AggregateChangeDetector.dispatchChanges()()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = 0;
  sub_29DA0007C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29DA34614();
  v11 = v0;
  v12 = sub_29DA34634();
  v13 = sub_29DA34BA4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136446210;
    v16 = v11;
    v28 = v1;
    v17 = v16;
    v18 = [v16 description];
    v19 = v2;
    v20 = sub_29DA34854();
    v29 = v11;
    v22 = v21;

    v23 = sub_29D9EBB44(v20, v22, &v31);
    v11 = v29;

    *(v15 + 4) = v23;
    _os_log_impl(&dword_29D9BB000, v12, v13, "%{public}s dispatching changes", v15, 0xCu);
    v24 = v27;
    sub_29D9C7968(v27);
    MEMORY[0x29ED6E4C0](v24, -1, -1);
    v25 = v15;
    v9 = v30;
    MEMORY[0x29ED6E4C0](v25, -1, -1);

    v26 = (*(v19 + 8))(v5, v28);
  }

  else
  {

    v26 = (*(v2 + 8))(v5, v1);
  }

  v31 = *&v11[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  MEMORY[0x2A1C7C4A8](v26);
  *(&v27 - 4) = v9;
  *(&v27 - 3) = v11;
  *(&v27 - 2) = &v32;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  if (v32)
  {
    swift_willThrow();
  }

  else
  {
    AggregateChangeDetector.send(_:)(v9);
  }

  sub_29DA055F8(v9, sub_29DA04D18);
}

void sub_29DA0115C(uint64_t a1, uint64_t a2, void **a3)
{
  sub_29DA04EAC(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending;
  if ((*(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) & 1) == 0)
  {
    v26 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state);
    if (v26 == 2)
    {
      sub_29DA052B8();
      v27 = swift_allocError();
      v29 = 2;
    }

    else
    {
      if (v26 == 1)
      {
        AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(1, (&v31 - v15));
        sub_29DA0530C(v16, a1, sub_29DA04D18);
LABEL_10:
        sub_29DA02618(a1, a2);
        return;
      }

      sub_29DA052B8();
      v27 = swift_allocError();
      v29 = 1;
    }

    *v28 = v29;
    v30 = *a3;
    *a3 = v27;

    goto LABEL_10;
  }

  sub_29DA052B8();
  v18 = swift_allocError();
  *v19 = 0;
  v20 = *a3;
  *a3 = v18;

  sub_29DA05184(a1, v14, sub_29DA04D18);
  sub_29DA0007C();
  v22 = (*(*(v21 - 8) + 48))(v14, 1, v21);
  sub_29DA055F8(v14, sub_29DA04D18);
  if (v22 != 1)
  {
    *(a2 + v17) = 0;
    v23 = sub_29DA33A94();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    v24 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA0530C(v9, a2 + v24, sub_29DA04EAC);
    swift_endAccess();
    v25 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = 0;
  }
}

uint64_t sub_29DA01460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DA04D18(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DA0007C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_29DA34614();
  v20 = a5;
  v21 = sub_29DA34634();
  v22 = sub_29DA34BA4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v23;
    v45 = swift_slowAlloc();
    v49 = v45;
    *v23 = 136446210;
    v24 = v20;
    v46 = v10;
    v25 = v24;
    v26 = [v24 description];
    v44 = v11;
    v27 = v26;
    v28 = sub_29DA34854();
    v42 = v22;
    v29 = a4;
    v30 = v28;
    v47 = a6;
    v32 = v31;

    v33 = v30;
    a4 = v29;
    v34 = sub_29D9EBB44(v33, v32, &v49);

    v35 = v43;
    *(v43 + 1) = v34;
    v36 = v35;
    _os_log_impl(&dword_29D9BB000, v21, v42, "%{public}s received Observer changes", v35, 0xCu);
    v37 = v45;
    sub_29D9C7968(v45);
    MEMORY[0x29ED6E4C0](v37, -1, -1);
    MEMORY[0x29ED6E4C0](v36, -1, -1);

    v38 = (*(v44 + 8))(v14, v46);
  }

  else
  {

    v38 = (*(v11 + 8))(v14, v10);
  }

  v49 = *&v20[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  MEMORY[0x2A1C7C4A8](v38);
  *&v41[-48] = v20;
  *&v41[-40] = v39;
  *&v41[-32] = v18;
  *&v41[-24] = a4;
  *&v41[-16] = v48;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  AggregateChangeDetector.send(_:)(v18);
  return sub_29DA055F8(v18, sub_29DA04D18);
}

void sub_29DA01810(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, void *a5)
{
  sub_29DA04D18(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) == 2 || (swift_beginAccess(), (*a2 & 1) != 0))
  {
    swift_beginAccess();
    *a2 = 0;
  }

  else
  {
    v14 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = a4;
    v15 = a4;

    sub_29DA05504(0, &qword_2A17D1710, sub_29DA05568, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3AB40;
    *(inited + 32) = a5;
    *(inited + 40) = [objc_opt_self() sampleTypeChangeWithSampleType:a5 dateInterval:0 hasUnfrozenSeries:0];
    v17 = sub_29DA21630(inited);
    swift_setDeallocating();
    sub_29DA055F8(inited + 32, sub_29DA05568);
    AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(v17, 0);

    if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v13);
      sub_29DA0530C(v13, a3, sub_29DA04D18);
    }

    sub_29DA02618(a3, a1);
  }
}

id AggregateChangeDetector.databaseChangesQuery(for:anchor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = objc_allocWithZone(MEMORY[0x29EDBAEC8]);
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  v6 = v2;
  v7 = sub_29DA34944();
  v16[4] = sub_29DA05288;
  v16[5] = v4;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = sub_29DA04BAC;
  v16[3] = &unk_2A2461C98;
  v8 = _Block_copy(v16);
  v9 = [v5 initWithTypes:v7 anchor:a2 resultsHandler:v8];

  _Block_release(v8);

  [v9 setIncludeChangeDetails_];
  v10 = &v6[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
  v11 = *&v6[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name + 8];
  if (v11)
  {
    v12 = *v10;
    v13 = v9;
    v11 = sub_29DA34824();
  }

  else
  {
    v14 = v9;
  }

  [v9 setDebugIdentifier_];

  return v9;
}

uint64_t sub_29DA01BD8(uint64_t a1, NSObject *a2, NSObject *a3, NSObject *a4, void *a5)
{
  v51 = a4;
  v8 = sub_29DA34644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DA0007C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_29DA34614();
  v18 = a2;
  v19 = a5;
  v20 = sub_29DA34634();
  v21 = sub_29DA34BA4();
  v50 = v18;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v12;
    v45 = v21;
    v23 = v22;
    v46 = swift_slowAlloc();
    v53 = v46;
    *v23 = 136446466;
    v24 = v19;
    v48 = v9;
    v25 = a3;
    v26 = v24;
    v27 = [v24 description];
    v47 = v8;
    v28 = v27;
    v29 = sub_29DA34854();
    v44 = v20;
    v30 = v29;
    v31 = v16;
    v32 = a2;
    v34 = v33;

    a3 = v25;
    v35 = sub_29D9EBB44(v30, v34, &v53);
    a2 = v32;
    v16 = v31;

    *(v23 + 4) = v35;
    *(v23 + 12) = 2082;
    v52 = a2;
    sub_29D9E2188(0, &qword_2A1A2DAF8, &qword_2A1A2DB00, 0x29EDBAD38, MEMORY[0x29EDC9C68]);
    v36 = v50;
    v37 = sub_29DA34894();
    v39 = sub_29D9EBB44(v37, v38, &v53);

    *(v23 + 14) = v39;
    v40 = v44;
    _os_log_impl(&dword_29D9BB000, v44, v45, "%{public}s received DB Changes for anchor %{public}s", v23, 0x16u);
    v41 = v46;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v41, -1, -1);
    MEMORY[0x29ED6E4C0](v23, -1, -1);

    v42 = (*(v48 + 8))(v49, v47);
  }

  else
  {

    v42 = (*(v9 + 8))(v12, v8);
  }

  v53 = *(&v19->isa + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock);
  MEMORY[0x2A1C7C4A8](v42);
  *(&v44 - 6) = v19;
  *(&v44 - 5) = v16;
  *(&v44 - 4) = a3;
  *(&v44 - 3) = a2;
  *(&v44 - 2) = v51;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

  sub_29DA33F54();

  AggregateChangeDetector.send(_:)(v16);
  return sub_29DA055F8(v16, sub_29DA04D18);
}

void sub_29DA02020(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  sub_29DA04D18(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    if (a3)
    {
      AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(a3, a4);
    }

    else
    {
      v14 = a5;
      if (!a5)
      {
        sub_29DA052B8();
        v14 = swift_allocError();
        *v15 = 3;
      }

      v16 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
      *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = v14;
      v17 = a5;
    }

    if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v13);
      sub_29DA0530C(v13, a2, sub_29DA04D18);
    }

    sub_29DA02618(a2, a1);
  }
}

uint64_t sub_29DA02168(uint64_t a1)
{
  sub_29DA04D18(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_29DA0007C();
    v9 = (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v10 = *&v7[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
    MEMORY[0x2A1C7C4A8](v9);
    *(&v10 - 4) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 2) = a1;
    sub_29DA33854();
    sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

    sub_29DA33F54();

    AggregateChangeDetector.send(_:)(v5);

    return sub_29DA055F8(v5, sub_29DA04D18);
  }

  return result;
}

void sub_29DA0233C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29DA04D18(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    sub_29DA34614();
    v15 = a1;
    v16 = sub_29DA34634();
    v17 = sub_29DA34BA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = v18;
      v36 = swift_slowAlloc();
      v39 = v36;
      *v18 = 136446210;
      v19 = v15;
      v38 = v9;
      v20 = v19;
      v21 = [v19 description];
      v37 = a3;
      v22 = v21;
      v23 = sub_29DA34854();
      v34 = v17;
      v24 = a2;
      v25 = v23;
      v27 = v26;

      v9 = v38;
      v28 = v25;
      a2 = v24;
      v29 = sub_29D9EBB44(v28, v27, &v39);

      v30 = v35;
      *(v35 + 1) = v29;
      _os_log_impl(&dword_29D9BB000, v16, v34, "%{public}s received Changes for publisher", v30, 0xCu);
      v31 = v36;
      sub_29D9C7968(v36);
      MEMORY[0x29ED6E4C0](v31, -1, -1);
      MEMORY[0x29ED6E4C0](v30, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v32 = sub_29DA33A74();
    AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(v32, 0);

    if (*(v15 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v9);
      sub_29DA0530C(v9, a2, sub_29DA04D18);
    }

    sub_29DA02618(a2, v15);
  }
}

void sub_29DA02618(uint64_t a1, uint64_t a2)
{
  sub_29DA04EAC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA05184(a1, v11, sub_29DA04D18);
  sub_29DA0007C();
  LODWORD(a1) = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_29DA055F8(v11, sub_29DA04D18);
  if (a1 != 1)
  {
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) = 0;
    v13 = sub_29DA33A94();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA0530C(v7, a2 + v14, sub_29DA04EAC);
    swift_endAccess();
    v15 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = 0;
  }
}

uint64_t AggregateChangeDetector.send(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA34744();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v47 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29DA34764();
  v46 = *(v48 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA0007C();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16);
  v21 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = v41 - v23;
  (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x1B8))(v22);
  sub_29DA05184(a1, v15, sub_29DA04D18);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    v25 = sub_29DA04D18;
    v26 = v15;
  }

  else
  {
    v41[0] = v7;
    v27 = sub_29DA05374(v15, v24, sub_29DA0007C);
    v41[1] = v41;
    v52 = 0;
    aBlock[0] = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock);
    MEMORY[0x2A1C7C4A8](v27);
    v41[-2] = v1;
    v41[-1] = &v52;
    sub_29DA33854();
    sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8]);

    sub_29DA33F54();

    v28 = v52;
    if (v52)
    {
      v44 = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue);
      sub_29DA05184(v24, v21, sub_29DA0007C);
      v29 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = v28;
      sub_29DA05374(v21, v30 + v29, sub_29DA0007C);
      aBlock[4] = sub_29DA053E4;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DA05EEC;
      aBlock[3] = &unk_2A2461CE8;
      v31 = _Block_copy(aBlock);
      swift_retain_n();
      v32 = v2;
      v33 = v45;
      sub_29DA34754();
      v50 = MEMORY[0x29EDCA190];
      sub_29DA05484(&qword_2A1A2CC10, MEMORY[0x29EDCA248]);
      sub_29DA05448(0);
      sub_29DA05484(&qword_2A1A2CBB0, sub_29DA05448);
      v34 = v47;
      v35 = v41[0];
      sub_29DA34CD4();
      MEMORY[0x29ED6D7A0](0, v33, v34, v31);
      _Block_release(v31);

      (*(v49 + 8))(v34, v35);
      (*(v46 + 8))(v33, v48);
      sub_29DA055F8(v24, sub_29DA0007C);
    }

    v37 = v42;
    sub_29DA34614();
    v38 = sub_29DA34634();
    v39 = sub_29DA34B94();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_29D9BB000, v38, v39, "AggregateChangeDetector alive without a handler", v40, 2u);
      MEMORY[0x29ED6E4C0](v40, -1, -1);
    }

    (*(v43 + 8))(v37, v44);
    v25 = sub_29DA0007C;
    v26 = v24;
  }

  return sub_29DA055F8(v26, v25);
}

uint64_t sub_29DA02F28(uint64_t result, uint64_t *a2)
{
  if (*(result + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    v3 = *a2;
    *a2 = *(result + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler);
  }

  return result;
}

uint64_t sub_29DA02F88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v10 = a1;
  v11 = sub_29DA34634();
  v12 = sub_29DA34BA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v5;
    v14 = v13;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v14 = 136446210;
    v15 = v10;
    v16 = [v15 description];
    v17 = sub_29DA34854();
    v27 = a3;
    v18 = v17;
    v20 = v19;

    v21 = sub_29D9EBB44(v18, v20, &v28);

    *(v14 + 4) = v21;
    a3 = v27;
    _os_log_impl(&dword_29D9BB000, v11, v12, "%{public}s calling handler", v14, 0xCu);
    v22 = v25;
    sub_29D9C7968(v25);
    MEMORY[0x29ED6E4C0](v22, -1, -1);
    MEMORY[0x29ED6E4C0](v14, -1, -1);

    (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_29DA33B44();
  (v28)(a3);
}

uint64_t AggregateChangeDetector.lock_stop()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) = 2;
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) = 0;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler);
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries);

  sub_29DA33B44();

  if (v14 >> 62)
  {
    result = sub_29DA34D34();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = 0;
  v7 = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x29ED6D970](v6);
    }

    else
    {
      v8 = *(v14 + 8 * v6 + 32);
    }

    v9 = v8;
    ++v6;
    [v7 stopQuery_];
  }

  while (v5 != v6);
LABEL_10:

  v10 = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges);

  sub_29DA33B44();

  if (!(v14 >> 62))
  {
    v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_12;
    }
  }

  result = sub_29DA34D34();
  v11 = result;
  if (!result)
  {
  }

LABEL_12:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x29ED6D970](i);
      }

      else
      {
        v13 = *(v14 + 8 * i + 32);
      }

      sub_29DA346A4();
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

id AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04EAC(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29DA33A94();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError];
  if (!v19)
  {
    v50 = a2;
    v51 = 0;
    v48 = v9;
    v49 = v6;
    v23 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA05184(&v2[v23], v13, sub_29DA04EAC);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_29DA055F8(v13, sub_29DA04EAC);
      if (a1)
      {
LABEL_5:
        v2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 1;
      }
    }

    else
    {
      v46 = v5;
      v47 = v2;
      v37 = *(v15 + 32);
      v37(v18, v13, v14);
      v38 = sub_29DA33A74();
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = sub_29DA34D34();
      }

      else
      {
        v39 = *(v38 + 16);
      }

      v2 = v47;
      if (v39)
      {
        v42 = v50;
        v37(v50, v18, v14);
        sub_29DA0007C();
        v44 = v43;
        swift_storeEnumTagMultiPayload();
        (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
LABEL_15:
        v20 = v51;
        return v20;
      }

      (*(v15 + 8))(v18, v14);
      v5 = v46;
      if (a1)
      {
        goto LABEL_5;
      }
    }

    v24 = v48;
    sub_29DA34614();
    v25 = v2;
    v26 = sub_29DA34634();
    v27 = sub_29DA34BA4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = v29;
      *v28 = 136446210;
      v30 = v25;
      v31 = [v30 description];
      v32 = sub_29DA34854();
      v33 = v5;
      v35 = v34;

      v36 = sub_29D9EBB44(v32, v35, &v52);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_29D9BB000, v26, v27, "%{public}s not creating result. No pending change set.", v28, 0xCu);
      sub_29D9C7968(v29);
      MEMORY[0x29ED6E4C0](v29, -1, -1);
      MEMORY[0x29ED6E4C0](v28, -1, -1);

      (*(v49 + 8))(v24, v33);
    }

    else
    {

      (*(v49 + 8))(v24, v5);
    }

    v40 = v50;
    sub_29DA0007C();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_15;
  }

  *a2 = v19;
  v20 = v19;
  sub_29DA0007C();
  v22 = v21;
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  return v20;
}

uint64_t AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29DA336F4();
  v200 = *(v6 - 8);
  v7 = *(v200 + 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v176 = &v162 - v12;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v179 = &v162 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v178 = &v162 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v177 = &v162 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v183 = &v162 - v19;
  v185 = sub_29DA33554();
  v199 = *(v185 - 8);
  v20 = *(v199 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v185);
  v182 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v192 = &v162 - v23;
  sub_29D9E5E4C(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v188 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v175 = &v162 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v186 = &v162 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v191 = &v162 - v32;
  sub_29DA04EAC(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v33 - 8);
  v187 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v38 = &v162 - v37;
  v39 = sub_29DA33A94();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v43 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  swift_beginAccess();
  sub_29DA05184(v3 + v44, v38, sub_29DA04EAC);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_29DA055F8(v38, sub_29DA04EAC);
    v45 = a2;

    v46 = v187;
    sub_29DA33A64();
    (*(v40 + 56))(v46, 0, 1, v39);
    swift_beginAccess();
    sub_29DA0530C(v46, v3 + v44, sub_29DA04EAC);
    return swift_endAccess();
  }

  v195 = v40;
  v196 = v44;
  (*(v40 + 32))(v43, v38, v39);
  v48 = a2;
  v169 = v39;
  if (!a2)
  {
    v48 = sub_29DA33A84();
  }

  v171 = v48;
  v167 = v10;
  v173 = v3;
  v49 = a2;
  v202 = sub_29DA33A74();
  v168 = v6;
  v172 = v43;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v50 = 0;
    v51 = 0;
    v197 = sub_29DA34EB4() | 0x8000000000000000;
    v198 = 0;
  }

  else
  {
    v52 = -1 << *(a1 + 32);
    v50 = ~v52;
    v53 = *(a1 + 64);
    v197 = a1;
    v198 = a1 + 64;
    v54 = -v52;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v51 = v55 & v53;
  }

  v56 = v185;

  v57 = 0;
  v170 = v50;
  v58 = (v50 + 64) >> 6;
  v189 = (v199 + 56);
  v166 = v200 + 8;
  v165 = v200 + 32;
  v181 = (v199 + 8);
  v180 = (v199 + 48);
  v60 = v195;
  v59 = v196;
  v62 = v197;
  v61 = v198;
  v194 = v58;
  while ((v62 & 0x8000000000000000) != 0)
  {
    v71 = sub_29DA34F44();
    if (!v71)
    {
      goto LABEL_93;
    }

    v73 = v72;
    v201 = v71;
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    swift_dynamicCast();
    v70 = v203;
    v201 = v73;
    sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80);
    swift_dynamicCast();
    v199 = v51;
    v200 = v203;
    v67 = v57;
    if (!v70)
    {
LABEL_93:
      sub_29D9FA76C();

      v159 = v187;
      sub_29DA33A64();
      v160 = v169;
      (*(v60 + 8))(v172, v169);
      (*(v60 + 56))(v159, 0, 1, v160);
      v161 = v173;
      swift_beginAccess();
      sub_29DA0530C(v159, v161 + v59, sub_29DA04EAC);
      swift_endAccess();
    }

LABEL_24:
    v74 = v202;
    if ((v202 & 0xC000000000000001) != 0)
    {
      v190 = v202 & 0xC000000000000001;
      if (v202 < 0)
      {
        v75 = v202;
      }

      else
      {
        v75 = v202 & 0xFFFFFFFFFFFFFF8;
      }

      v76 = v70;
      v77 = sub_29DA34F34();

      v78 = 0x29F359000;
      if (!v77 || (v201 = v77, sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80), swift_dynamicCast(), (v79 = v203) == 0))
      {
        v80 = v200;
        v81 = v200;
        v82 = sub_29DA34D34();
        if (__OFADD__(v82, 1))
        {
          goto LABEL_96;
        }

        v74 = sub_29DA04F48(v75, v82 + 1);
        v202 = v74;
LABEL_39:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = v74;
        v93 = sub_29DA1EE58(v70);
        v95 = *(v74 + 16);
        v96 = (v94 & 1) == 0;
        v97 = __OFADD__(v95, v96);
        v98 = v95 + v96;
        if (v97)
        {
          goto LABEL_95;
        }

        v99 = v94;
        if (*(v74 + 24) >= v98)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v157 = v93;
          sub_29DA2AE60();
          v93 = v157;
          v101 = v203;
          if (v99)
          {
            goto LABEL_12;
          }

LABEL_45:
          v101[(v93 >> 6) + 8] |= 1 << v93;
          *(v101[6] + 8 * v93) = v70;
          *(v101[7] + 8 * v93) = v80;
          v64 = v70;

          v102 = v101[2];
          v97 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v97)
          {
            goto LABEL_97;
          }

          v101[2] = v103;
        }

        else
        {
          sub_29DA29EB0(v98, isUniquelyReferenced_nonNull_native);
          v93 = sub_29DA1EE58(v70);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_101;
          }

LABEL_44:
          v101 = v203;
          if ((v99 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_12:
          v63 = v101[7];
          v64 = *(v63 + 8 * v93);
          *(v63 + 8 * v93) = v80;
        }

        v202 = v101;
        goto LABEL_14;
      }
    }

    else
    {
      v78 = 0x29F359000uLL;
      if (!*(v202 + 16) || (v83 = sub_29DA1EE58(v70), (v84 & 1) == 0) || (v85 = *(*(v74 + 56) + 8 * v83), v79 = v85, !v85))
      {
        v80 = v200;
        v91 = v200;
        goto LABEL_39;
      }

      v190 = 0;
    }

    v86 = *(v78 + 3600);
    v193 = v79;
    v87 = [v79 v86];
    v88 = v188;
    v89 = v186;
    if (v87)
    {
      v184 = 1;
      v90 = v200;
    }

    else
    {
      v104 = *(v78 + 3600);
      v90 = v200;
      v184 = [v200 v104];
    }

    v105 = [v193 dateInterval];
    if (v105)
    {
      v106 = v105;
      sub_29DA334E4();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }

    v108 = *v189;
    (*v189)(v89, v107, 1, v56);
    v109 = v89;
    v110 = v191;
    sub_29DA05374(v109, v191, sub_29D9E5E4C);
    v111 = [v90 dateInterval];
    if (!v111)
    {
      goto LABEL_67;
    }

    v174 = v108;
    v112 = v111;
    sub_29DA334E4();

    v113 = [v193 dateInterval];
    if (!v113)
    {
      (*v181)(v192, v56);
      v108 = v174;
LABEL_67:
      sub_29DA055F8(v110, sub_29D9E5E4C);
      v108(v110, 1, 1, v56);
      goto LABEL_68;
    }

    v114 = v113;
    sub_29DA334E4();

    v115 = v177;
    sub_29DA33524();
    v116 = v178;
    sub_29DA33524();
    v164 = sub_29DA05484(&qword_2A17D1700, MEMORY[0x29EDB9BC8]);
    v117 = v168;
    v118 = sub_29DA347F4();
    v119 = *v166;
    v163 = *v166;
    v120 = (v118 & 1) == 0;
    if (v118)
    {
      v121 = v115;
    }

    else
    {
      v121 = v116;
    }

    if (v120)
    {
      v122 = v115;
    }

    else
    {
      v122 = v116;
    }

    v119(v121, v117);
    v123 = *v165;
    (*v165)(v183, v122, v117);
    v124 = v176;
    sub_29DA334F4();
    v125 = v167;
    sub_29DA334F4();
    v126 = sub_29DA34804();
    v127 = (v126 & 1) == 0;
    if (v126)
    {
      v128 = v124;
    }

    else
    {
      v128 = v125;
    }

    if (v127)
    {
      v129 = v124;
    }

    else
    {
      v129 = v125;
    }

    v163(v128, v117);
    v130 = v117;
    v56 = v185;
    v123(v179, v129, v130);
    v131 = v175;
    v110 = v191;
    v88 = v188;
    sub_29DA33504();
    v132 = *v181;
    (*v181)(v182, v56);
    v132(v192, v56);
    sub_29DA055F8(v110, sub_29D9E5E4C);
    v174(v131, 0, 1, v56);
    v133 = v131;
    v90 = v200;
    sub_29DA05374(v133, v110, sub_29D9E5E4C);
LABEL_68:
    sub_29DA05184(v110, v88, sub_29D9E5E4C);
    v134 = (*v180)(v88, 1, v56);
    v135 = v70;
    if (v134 == 1)
    {
      v136 = 0;
    }

    else
    {
      v136 = sub_29DA334D4();
      (*v181)(v88, v56);
    }

    v137 = [objc_opt_self() sampleTypeChangeWithSampleType:v135 dateInterval:v136 hasUnfrozenSeries:v184];

    if (v137)
    {
      if (v190)
      {
        if (v74 < 0)
        {
          v138 = v74;
        }

        else
        {
          v138 = v74 & 0xFFFFFFFFFFFFFF8;
        }

        v139 = sub_29DA34D34();
        if (__OFADD__(v139, 1))
        {
          goto LABEL_99;
        }

        v140 = sub_29DA04F48(v138, v139 + 1);
        v202 = v140;
      }

      else
      {
        v140 = v202;
      }

      v142 = swift_isUniquelyReferenced_nonNull_native();
      v203 = v140;
      v143 = sub_29DA1EE58(v135);
      v145 = *(v140 + 16);
      v146 = (v144 & 1) == 0;
      v97 = __OFADD__(v145, v146);
      v147 = v145 + v146;
      if (v97)
      {
        goto LABEL_98;
      }

      v148 = v144;
      if (*(v140 + 24) >= v147)
      {
        if ((v142 & 1) == 0)
        {
          v158 = v143;
          sub_29DA2AE60();
          v143 = v158;
        }
      }

      else
      {
        sub_29DA29EB0(v147, v142);
        v143 = sub_29DA1EE58(v135);
        if ((v148 & 1) != (v149 & 1))
        {
          goto LABEL_101;
        }
      }

      v150 = v191;
      v151 = v203;
      if (v148)
      {
        v152 = v203[7];
        v153 = *(v152 + 8 * v143);
        *(v152 + 8 * v143) = v137;

        sub_29DA055F8(v150, sub_29D9E5E4C);
      }

      else
      {
        v203[(v143 >> 6) + 8] |= 1 << v143;
        *(v151[6] + 8 * v143) = v135;
        *(v151[7] + 8 * v143) = v137;
        v154 = v135;

        sub_29DA055F8(v150, sub_29D9E5E4C);
        v155 = v151[2];
        v97 = __OFADD__(v155, 1);
        v156 = v155 + 1;
        if (v97)
        {
          goto LABEL_100;
        }

        v151[2] = v156;
      }

      v202 = v151;
    }

    else
    {
      v141 = sub_29DA1F38C(v135);

      sub_29DA055F8(v110, sub_29D9E5E4C);
    }

LABEL_14:
    v57 = v67;
    v61 = v198;
    v51 = v199;
    v60 = v195;
    v59 = v196;
    v62 = v197;
    v58 = v194;
  }

  v65 = v57;
  v66 = v51;
  v67 = v57;
  if (v51)
  {
LABEL_20:
    v199 = (v66 - 1) & v66;
    v68 = (v67 << 9) | (8 * __clz(__rbit64(v66)));
    v69 = *(*(v62 + 56) + v68);
    v70 = *(*(v62 + 48) + v68);
    v200 = v69;
    if (!v70)
    {
      goto LABEL_93;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v58)
    {
      goto LABEL_93;
    }

    v66 = *(v61 + 8 * v67);
    ++v65;
    if (v66)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  result = sub_29DA35144();
  __break(1u);
  return result;
}

id AggregateChangeDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AggregateChangeDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregateChangeDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DA04AD8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a4;
  v7(v11, sub_29DA054E4, v9, a4);
}

uint64_t sub_29DA04BAC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a4)
  {
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80);
    sub_29D9D0160();
    v6 = sub_29DA347A4();
  }

  v11 = a2;
  v12 = a3;
  v13 = a5;
  v10(v11, a3, v6, a5);
}

unint64_t sub_29DA04CAC()
{
  result = qword_2A1A2CCF8;
  if (!qword_2A1A2CCF8)
  {
    type metadata accessor for AggregateChangeDetector();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CCF8);
  }

  return result;
}

unint64_t sub_29DA04D5C()
{
  result = qword_2A17D16F0;
  if (!qword_2A17D16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16F0);
  }

  return result;
}

void sub_29DA04DC8()
{
  sub_29DA04EAC(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29DA04EF4()
{
  result = qword_2A17D16F8;
  if (!qword_2A17D16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16F8);
  }

  return result;
}

uint64_t sub_29DA04F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29DA051EC();
    v2 = sub_29DA34FA4();
    v20 = v2;
    sub_29DA34EB4();
    v3 = sub_29DA34F44();
    if (v3)
    {
      v4 = v3;
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_29DA29EB0(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_29DA34CA4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_29DA34F44();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return v2;
}

uint64_t sub_29DA05184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA051EC()
{
  if (!qword_2A1A2CA70)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    sub_29D9D0160();
    v0 = sub_29DA34FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CA70);
    }
  }
}

uint64_t sub_29DA05290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DA052B8()
{
  result = qword_2A17D1708;
  if (!qword_2A17D1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1708);
  }

  return result;
}

uint64_t sub_29DA0530C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA05374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA053E4()
{
  sub_29DA0007C();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_29DA02F88(v3, v4, v5);
}

uint64_t sub_29DA05484(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DA05504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DA05568()
{
  if (!qword_2A17D1718)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17D1718);
    }
  }
}

uint64_t sub_29DA055F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for HighlightAlertsFeedItemGenerator()
{
  result = qword_2A1A2E130;
  if (!qword_2A1A2E130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA056BC()
{
  sub_29DA1BF9C(319, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_29DA057BC(uint64_t a1)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x29EDCA190];
  }

  v1 = 0;
  v2 = MEMORY[0x29EDCA190];
  v24 = a1 + 32;
  while (1)
  {
    v4 = *(v24 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v22 = *(v24 + 8 * v1);
      }

      v6 = sub_29DA34D34();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_29DA34D34();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x29EDCA190];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_29DA34D34();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_29DA34E14();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v6)
    {
      goto LABEL_40;
    }

    v29 = v6;
    v26 = v2;
    v27 = v1;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_29D9D5EE4();
      sub_29DA243A0(&qword_2A17D1720, sub_29D9D5EE4);
      for (i = 0; i != v14; ++i)
      {
        v16 = sub_29D9FA2EC(v28, i, v4);
        v18 = *v17;
        (v16)(v28, 0);
        *(v10 + 8 * v12 + 32 + 8 * i) = v18;
      }
    }

    else
    {
      sub_29D9C79FC(0, &qword_2A1A2D480, 0x29EDBA080);
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    v1 = v27;
    if (v29 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v29);
      v21 = v19 + v29;
      if (v20)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v25)
    {
      return v2;
    }
  }

  result = sub_29DA34D34();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_29DA05A90@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v21[1] = a2;
  v22 = a1;
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = v21 - v15;
  sub_29DA22690(v5, v21 - v15, &qword_2A1A2E148, v12);
  v17 = 1;
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v18 = a3;
LABEL_5:
    v19 = sub_29DA33554();
    return (*(*(v19 - 8) + 56))(v18, v17, 1, v19);
  }

  (*(v8 + 32))(v11, v16, v7);
  v18 = a3;
  v22(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v17 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t sub_29DA05CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_29DA33964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v16 = MEMORY[0x29EDC3840];
    sub_29DA243E8(a1, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
    sub_29DA1F4D8(a2, a3, v10);

    return sub_29DA243E8(v10, &qword_2A1A2DA38, v16);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_29DA2AB3C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_29DA05EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_29DA05F30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for HighlightAlertConfiguration(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D9D5394(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_29D9D5394((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_29DA060C0(uint64_t a1)
{
  v1 = a1;
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_29DA34D34();
    result = MEMORY[0x29EDCA190];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x29EDCA190];
    sub_29DA34E64();
    result = sub_29DA34EA4();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x29EDCA190];
  sub_29DA34E64();
  v5 = -1 << *(v1 + 32);
  result = sub_29DA34CE4();
  v6 = *(v1 + 36);
  v24 = result;
  v25 = v6;
  v26 = 0;
LABEL_7:
  v7 = 0;
  v21 = v2;
  while (v7 < v2)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v24;
    v16 = v25;
    v17 = v26;
    sub_29DA21110(v24, v25, v26, v1);
    sub_29DA34E44();
    v18 = v1;
    v19 = *(v27 + 16);
    sub_29DA34E74();
    sub_29DA34E84();
    result = sub_29DA34E54();
    if (v22)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v1 = v18;
      if (sub_29DA34EE4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v21;
      sub_29DA24068(0, &qword_2A1A2D4C0, MEMORY[0x29EDC98D0]);
      v20 = sub_29DA347B4();
      sub_29DA34F54();
      result = v20(v23, 0);
    }

    else
    {
      sub_29DA20FAC(v15, v16, v17, v18);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_29DA2410C(v15, v16, v17);
      v24 = v9;
      v25 = v11;
      v26 = v13 & 1;
      v1 = v18;
      v2 = v21;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_29DA2410C(v24, v25, v26);
      return v27;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29DA06358()
{
  sub_29DA1E70C();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_29DA33B84();

  return v3;
}

uint64_t sub_29DA06454(unint64_t *a1, void (*a2)(uint64_t))
{
  sub_29DA1E934(0, a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_29DA33B84();

  return v5;
}

id sub_29DA064F8(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v53 = sub_29DA34C24();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA34C14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = sub_29DA34764();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  *&v2[qword_2A1A2D568] = 0;
  v52 = qword_2A1A2E140;
  sub_29D9C79FC(0, &qword_2A1A2DAE8, 0x29EDCA548);
  sub_29DA34754();
  v57[0] = MEMORY[0x29EDCA190];
  sub_29DA243A0(&qword_2A1A2DAF0, MEMORY[0x29EDCA288]);
  sub_29DA1BF9C(0, &qword_2A1A2DB38, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29DA1C000();
  sub_29DA34CD4();
  (*(v3 + 104))(v6, *MEMORY[0x29EDCA2A8], v53);
  *&v2[v52] = sub_29DA34C44();
  v11 = qword_2A1A2D560;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x29EDBA088]) init];
  v12 = qword_2A1A2D598;
  sub_29DA1E70C();
  v14 = v13;
  v15 = *(v13 + 48);
  v16 = *(v13 + 52);
  swift_allocObject();
  *&v2[v12] = sub_29DA33BB4();
  v17 = qword_2A1A2D570;
  v18 = *(v14 + 48);
  v19 = *(v14 + 52);
  swift_allocObject();
  *&v2[v17] = sub_29DA33BB4();
  v20 = qword_2A1A2D588;
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v2[v20] = sub_29DA33BB4();
  v24 = qword_2A1A2D590;
  sub_29DA1E934(0, &qword_2A1A2CCF0, type metadata accessor for HighlightAlertStateChanges);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v2[v24] = sub_29DA33BB4();
  v28 = qword_2A1A2D5A0;
  v29 = MEMORY[0x29EDCA190];
  v57[0] = MEMORY[0x29EDCA190];
  sub_29DA1BF9C(0, &qword_2A1A2DFC8, sub_29DA1EAAC, MEMORY[0x29EDC3C80]);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *&v2[v28] = sub_29DA33B74();
  v33 = qword_2A1A2D578;
  v57[0] = MEMORY[0x29EDCA1A0];
  sub_29DA1EAE0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v2[v33] = sub_29DA33B74();
  v37 = qword_2A1A2D5A8;
  v57[0] = sub_29DA21738(v29);
  sub_29DA21930();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v2[v37] = sub_29DA33B74();
  v41 = v54;
  sub_29D9FA5EC(v54, v57);
  sub_29DA219A4();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *&v2[qword_2A1A2D580] = sub_29DA33B74();
  v45 = MEMORY[0x29EDB9BC8];
  v46 = v55;
  sub_29DA22690(v55, &v2[qword_2A1A312F0], &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  v47 = type metadata accessor for HighlightAlertsFeedItemGenerator();
  v56.receiver = v2;
  v56.super_class = v47;
  v48 = objc_msgSendSuper2(&v56, sel_init);
  v49 = sub_29DA34024();
  sub_29DA34B44();

  sub_29DA34B34();
  sub_29DA243E8(v46, &qword_2A1A2E148, v45);
  sub_29D9C7968(v41);
  return v48;
}

uint64_t sub_29DA06AAC()
{
  v1 = *(v0 + qword_2A1A2D580);

  v2 = *(v0 + qword_2A1A2D598);

  v3 = *(v0 + qword_2A1A2D570);

  v4 = *(v0 + qword_2A1A2D588);

  v5 = *(v0 + qword_2A1A2D590);

  v6 = *(v0 + qword_2A1A2D5A0);

  v7 = *(v0 + qword_2A1A2D578);

  v8 = *(v0 + qword_2A1A2D5A8);

  return sub_29DA243E8(v0 + qword_2A1A312F0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
}

id sub_29DA06B9C()
{
  v1 = sub_29DA34024();
  sub_29DA34B54();

  sub_29DA34B34();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HighlightAlertsFeedItemGenerator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29DA06C18(void *a1)
{
  v1 = a1;
  v2 = sub_29DA34024();
  sub_29DA34B54();

  sub_29DA34B34();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HighlightAlertsFeedItemGenerator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29DA06C9C(uint64_t a1)
{
  v2 = *(a1 + qword_2A1A2D580);

  v3 = *(a1 + qword_2A1A2D598);

  v4 = *(a1 + qword_2A1A2D570);

  v5 = *(a1 + qword_2A1A2D588);

  v6 = *(a1 + qword_2A1A2D590);

  v7 = *(a1 + qword_2A1A2D5A0);

  v8 = *(a1 + qword_2A1A2D578);

  v9 = *(a1 + qword_2A1A2D5A8);

  return sub_29DA243E8(a1 + qword_2A1A312F0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29DA06D98()
{
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = v12 - v3;
  sub_29DA34B34();
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = v0;
  v5 = v0;
  sub_29DA33B84();

  v6 = v12[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  if (sub_29D9EED98())
  {
    sub_29DA06FC8(v8);
  }

  else
  {
    v9 = sub_29DA34A34();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;
    v10[5] = sub_29DA22048;
    v10[6] = v7;
    sub_29D9ED414(0, 0, v4, &unk_29DA3B998, v10);
  }
}

uint64_t sub_29DA06FC8(uint64_t a1)
{
  v1 = *(a1 + qword_2A1A2D580);

  sub_29DA33B44();

  sub_29D9C706C(v3, v3[3]);
  if (sub_29DA33974())
  {
    sub_29DA34B34();
    sub_29DA0A7D8();
  }

  else
  {
    sub_29DA34B34();
    sub_29DA0A304();
  }

  return sub_29D9C7968(v3);
}

void sub_29DA070B0(void *a1)
{
  v1 = a1;
  sub_29DA06D98();
}

id sub_29DA070F8()
{
  v1 = v0;
  sub_29DA34AF4();
  v2 = qword_2A1A2D568;
  v3 = *&v0[qword_2A1A2D568];
  if (v3)
  {
    v4 = v3;
    AggregateChangeDetector.stop()();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  sub_29DA34B34();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  if (qword_2A1A2E018 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v1 name:qword_2A1A31338 object:0];

  v7 = [v5 defaultCenter];
  if (qword_2A1A2CB18 != -1)
  {
    swift_once();
  }

  [v7 removeObserver:v1 name:qword_2A1A312D0 object:0];

  v8 = [v5 defaultCenter];
  if (qword_2A1A2DAE0 != -1)
  {
    swift_once();
  }

  [v8 removeObserver:v1 name:qword_2A1A31330 object:0];

  sub_29DA1E70C();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v1;
  sub_29DA33B84();

  [v18 setSuspended_];

  v10 = *&v9[qword_2A1A2D560];
  [v10 setSuspended_];
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v9;
  v11 = v9;
  sub_29DA33B84();

  [v18 setSuspended_];

  result = [v11 isCancelled];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v11;
    v13 = v11;
    sub_29DA33B84();

    [v18 cancelAllOperations];

    [v10 cancelAllOperations];
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v13;
    v14 = v13;
    sub_29DA33B84();

    [v18 cancelAllOperations];

    return sub_29DA34B24();
  }

  return result;
}

void sub_29DA074E4()
{
  sub_29DA1BF9C(0, &qword_2A1A2D360, MEMORY[0x29EDB9918], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v39 - v2;
  v4 = sub_29DA33594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v39 - v10;
  if (qword_2A1A2E018 != -1)
  {
    swift_once();
  }

  v51 = qword_2A1A31338;
  v12 = qword_2A1A2CB18;
  v41 = qword_2A1A31338;
  if (v12 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v52 = qword_2A1A312D0;
  v13 = qword_2A1A2DAE0;
  v42 = qword_2A1A312D0;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A31330;
  v53 = qword_2A1A31330;
  v47 = sub_29DA33814();
  v15 = (v5 + 32);
  v40 = v14;
  v16 = MEMORY[0x29EDCA190];
  v17 = 32;
  v46 = v11;
  do
  {
    v18 = *&v50[v17];
    sub_29DA33804();
    sub_29DA337F4();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_29DA243E8(v3, &qword_2A1A2D360, MEMORY[0x29EDB9918]);
    }

    else
    {
      v19 = *v15;
      (*v15)(v11, v3, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_29D9D54CC(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_29D9D54CC(v20 > 1, v21 + 1, 1, v16);
      }

      v16[2] = v21 + 1;
      v22 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21;
      v11 = v46;
      v19(v22, v46, v4);
    }

    v17 += 8;
  }

  while (v17 != 56);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v23 = v16[2];
  if (v23)
  {
    v25 = *(v5 + 16);
    v24 = v5 + 16;
    v26 = v16 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v46 = 0x800000029DA38060;
    v47 = v25;
    v27 = *(v24 + 56);
    v44 = v24;
    v45 = v27;
    v28 = (v24 - 8);
    v29 = v43;
    v30 = v39;
    do
    {
      v47(v30, v26, v4);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_29DA34DF4();

      v48 = 0xD00000000000001FLL;
      v49 = v46;
      v31 = sub_29DA33574();
      v32 = sub_29DA34854();
      v34 = v33;

      MEMORY[0x29ED6D450](v32, v34);

      sub_29DA34B34();

      sub_29DA07ABC(v30);
      (*v28)(v30, v4);
      v26 += v45;
      --v23;
    }

    while (v23);
  }

  else
  {

    v29 = v43;
    sub_29DA34B34();
  }

  sub_29DA34B34();
  v35 = objc_opt_self();
  v36 = [v35 defaultCenter];
  [v36 addObserver:v29 selector:sel_handleNotification_ name:v41 object:0];

  v37 = [v35 defaultCenter];
  [v37 addObserver:v29 selector:sel_handleNotification_ name:v42 object:0];

  v38 = [v35 defaultCenter];
  [v38 addObserver:v29 selector:sel_handleNotification_ name:v40 object:0];
}

uint64_t sub_29DA07ABC(void *a1)
{
  v165 = a1;
  v161 = sub_29DA33594();
  v164 = *(v161 - 8);
  v2 = v164[8];
  v3 = MEMORY[0x2A1C7C4A8](v161);
  v151 = &v145[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v145[-v5];
  v7 = sub_29DA34644();
  v159 = *(v7 - 8);
  v160 = v7;
  v8 = *(v159 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v152 = &v145[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v163 = &v145[-v11];
  v12 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v145[-v15];
  v17 = sub_29DA336F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v156 = &v145[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v162 = &v145[-v23];
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v145[-v25];
  v155 = v27;
  MEMORY[0x2A1C7C4A8](v24);
  v29 = &v145[-v28];
  sub_29DA22690(v1 + qword_2A1A312F0, v16, &qword_2A1A2E148, v12);
  v30 = *(v18 + 48);
  v31 = v26;
  if (v30(v16, 1, v17) == 1)
  {
    sub_29DA336E4();
    if (v30(v16, 1, v17) != 1)
    {
      sub_29DA243E8(v16, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    (*(v18 + 32))(v29, v16, v17);
  }

  sub_29DA34614();
  v32 = v164[2];
  v33 = v161;
  v150 = (v164 + 2);
  v149 = v32;
  v32(v6, v165, v161);
  v34 = *(v18 + 16);
  v34(v26, v29, v17);
  v158 = v29;
  v153 = v34;
  v154 = v18 + 16;
  v34(v162, v29, v17);
  v35 = v1;
  v36 = v18;
  v37 = sub_29DA34634();
  v38 = sub_29DA34BA4();

  v39 = os_log_type_enabled(v37, v38);
  v157 = v35;
  if (v39)
  {
    v40 = v33;
    v41 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    aBlock = v147;
    *v41 = 136446978;
    v42 = [v35 description];
    v43 = sub_29DA34854();
    v146 = v38;
    v44 = v43;
    v46 = v45;

    v47 = sub_29D9EBB44(v44, v46, &aBlock);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2082;
    v48 = sub_29DA33574();
    v49 = sub_29DA34854();
    v51 = v50;

    v148 = v164[1];
    v148(v6, v40);
    v52 = sub_29D9EBB44(v49, v51, &aBlock);

    *(v41 + 14) = v52;
    *(v41 + 22) = 2082;
    sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
    v53 = sub_29DA350F4();
    v55 = v54;
    v56 = *(v36 + 8);
    (v56)(v31, v17);
    v57 = sub_29D9EBB44(v53, v55, &aBlock);

    *(v41 + 24) = v57;
    *(v41 + 32) = 2082;
    v58 = v162;
    sub_29DA33644();
    v59 = sub_29DA34A44();
    v61 = v60;
    (v56)(v58, v17);
    v62 = v56;
    v63 = sub_29D9EBB44(v59, v61, &aBlock);

    *(v41 + 34) = v63;
    _os_log_impl(&dword_29D9BB000, v37, v146, "%{public}s: handling notification %{public}s at target date: %{public}s (%{public}s)", v41, 0x2Au);
    v64 = v147;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v64, -1, -1);
    MEMORY[0x29ED6E4C0](v41, -1, -1);
  }

  else
  {

    v62 = *(v36 + 8);
    (v62)(v162, v17);
    (v62)(v31, v17);
    v148 = v164[1];
    v148(v6, v33);
  }

  v65 = *(v159 + 8);
  v65(v163, v160);
  v66 = v17;
  v67 = sub_29DA33574();
  v68 = qword_2A1A2E018;
  v69 = v67;
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = sub_29DA34854();
  v72 = v71;
  if (v70 == sub_29DA34854() && v72 == v73)
  {

    goto LABEL_15;
  }

  v74 = sub_29DA35114();

  if (v74)
  {

LABEL_15:
    v75 = v157;
    v76 = sub_29DA08A88(v165, v157);
    if (v77)
    {
      v78 = v76;
      v79 = v77;
      sub_29DA1E70C();
      swift_getKeyPath();
      swift_getKeyPath();
      v166 = v75;
      v80 = v75;
      v164 = v62;
      v81 = v80;
      sub_29DA33B84();

      v82 = aBlock;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = v156;
      v85 = v158;
      v153(v156, v158, v66);
      v86 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v87 = swift_allocObject();
      *(v87 + 2) = v83;
      *(v87 + 3) = v78;
      *(v87 + 4) = v79;
      (*(v36 + 32))(&v87[v86], v84, v66);
      v171 = sub_29DA242A0;
      v172 = v87;
      aBlock = MEMORY[0x29EDCA5F8];
      v168 = 1107296256;
      v169 = sub_29DA05EEC;
      v170 = &unk_2A2462910;
      v88 = _Block_copy(&aBlock);

      [v82 addOperationWithBlock_];
      _Block_release(v88);

      v89 = v85;
      v90 = v66;
      return (v164)(v89, v90);
    }

    return (v62)(v158, v66);
  }

  v92 = qword_2A1A2CB18;
  v93 = v69;
  if (v92 != -1)
  {
    swift_once();
  }

  v94 = sub_29DA34854();
  v96 = v95;
  if (v94 == sub_29DA34854() && v96 == v97)
  {
  }

  else
  {
    v98 = sub_29DA35114();

    if ((v98 & 1) == 0)
    {
      if (qword_2A1A2DAE0 != -1)
      {
        swift_once();
      }

      v112 = sub_29DA34854();
      v114 = v113;
      if (v112 == sub_29DA34854() && v114 == v115)
      {
      }

      else
      {
        v116 = sub_29DA35114();

        if ((v116 & 1) == 0)
        {
          v163 = v66;
          v164 = v62;
          v126 = v152;
          sub_29DA34614();
          v127 = v151;
          v128 = v161;
          v149(v151, v165, v161);
          v129 = v157;
          v130 = sub_29DA34634();
          v131 = sub_29DA34B84();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = v127;
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            aBlock = v134;
            *v133 = 136446466;
            v135 = [v129 description];
            v136 = sub_29DA34854();
            v165 = v36;
            v138 = v137;

            v139 = sub_29D9EBB44(v136, v138, &aBlock);

            *(v133 + 4) = v139;
            *(v133 + 12) = 2082;
            v140 = sub_29DA33574();
            v141 = sub_29DA34854();
            v143 = v142;

            v148(v132, v161);
            v144 = sub_29D9EBB44(v141, v143, &aBlock);

            *(v133 + 14) = v144;
            _os_log_impl(&dword_29D9BB000, v130, v131, "%{public}s: received unsupported notification %{public}s", v133, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6E4C0](v134, -1, -1);
            MEMORY[0x29ED6E4C0](v133, -1, -1);

            v65(v152, v160);
          }

          else
          {

            v148(v127, v128);
            v65(v126, v160);
          }

          v89 = v158;
          v90 = v163;
          return (v164)(v89, v90);
        }
      }

      v117 = v157;
      v118 = sub_29DA08A88(v165, v157);
      if (v119)
      {
        v120 = v118;
        v121 = v119;
        v122 = *&v117[qword_2A1A2D560];
        v123 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v124 = swift_allocObject();
        *(v124 + 2) = v123;
        *(v124 + 3) = v120;
        *(v124 + 4) = v121;
        v171 = sub_29DA241B0;
        v172 = v124;
        aBlock = MEMORY[0x29EDCA5F8];
        v168 = 1107296256;
        v169 = sub_29DA05EEC;
        v170 = &unk_2A2462870;
        v125 = _Block_copy(&aBlock);

        [v122 addOperationWithBlock_];
        _Block_release(v125);
      }

      return (v62)(v158, v66);
    }
  }

  v99 = v157;
  v100 = sub_29DA08A88(v165, v157);
  if (v101)
  {
    v102 = v100;
    v103 = v101;
    v165 = *&v99[qword_2A1A2D560];
    v104 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = v156;
    v106 = v36;
    v107 = v158;
    v153(v156, v158, v66);
    v108 = v62;
    v109 = (*(v106 + 80) + 40) & ~*(v106 + 80);
    v110 = swift_allocObject();
    *(v110 + 2) = v104;
    *(v110 + 3) = v102;
    *(v110 + 4) = v103;
    (*(v106 + 32))(&v110[v109], v105, v66);
    v171 = sub_29DA241BC;
    v172 = v110;
    aBlock = MEMORY[0x29EDCA5F8];
    v168 = 1107296256;
    v169 = sub_29DA05EEC;
    v170 = &unk_2A24628C0;
    v111 = _Block_copy(&aBlock);

    [v165 addOperationWithBlock_];
    _Block_release(v111);
    return v108(v107, v66);
  }

  return (v62)(v158, v66);
}