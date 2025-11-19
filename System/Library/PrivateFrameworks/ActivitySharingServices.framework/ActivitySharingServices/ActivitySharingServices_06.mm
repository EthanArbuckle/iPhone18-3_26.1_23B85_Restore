uint64_t sub_221F1BAE4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1648) = v3;
  if (v3)
  {
    v4 = *(v1 + 1552);

    v5 = sub_221F1BBFC;
  }

  else
  {
    v5 = sub_221F1BD68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F1BBFC()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1600);
  swift_willThrow();

  v5 = *(v0 + 1648);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);
  v8 = *(v0 + 1576);
  v9 = *(v0 + 1496);
  v10 = *(v0 + 1472);
  v11 = *(v0 + 1456);
  v12 = *(v0 + 1440);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v10 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
  v13 = *(v0 + 1400);
  v14 = *(v0 + 1392);
  v15 = *(v0 + 1368);
  v16 = *(v0 + 1360);
  v17 = *(v0 + 1336);
  v18 = *(v0 + 1312);
  v19 = *(v0 + 1304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_221F1BD68()
{
  v1 = v0[205];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[200];
  v5 = v0[197];
  v14 = v0[196];
  v6 = v0[161];
  v0[207] = v0[149];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 376), *(v6 + 400));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  v0[208] = sub_221EBCC48();
  v10 = sub_221FB64E8();
  v0[209] = v10;

  v0[18] = v0;
  v0[23] = v0 + 150;
  v0[19] = sub_221F1BF3C;
  v11 = swift_continuation_init();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[210] = v12;
  v0[127] = v12;
  v0[124] = v11;
  v0[120] = MEMORY[0x277D85DD0];
  v0[121] = 1107296256;
  v0[122] = sub_221EBCB58;
  v0[123] = &block_descriptor_13_0;
  [v8 handleSavedRecords:v10 forContact:v14 completion:v0 + 120];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F1BF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1688) = v2;
  if (v2)
  {
    v3 = sub_221F1C300;
  }

  else
  {
    v3 = sub_221F1C04C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F1C04C()
{
  v1 = v0[209];
  v2 = v0[197];
  v3 = v0[176];
  v4 = v0[151];
  v0[212] = v4;

  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_221E93000, v5, v6, "Saved relationship with invite request", v7, 2u);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v8 = v0[184];
  v9 = v0[176];

  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v8 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  v10 = sub_221FB61B8();
  v11 = sub_221FB65C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_221E93000, v10, v11, "Adding addresses to legacy relationship", v12, 2u);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v13 = [v4 addresses];
  if (v13)
  {
    v14 = v13;
    sub_221FB64F8();

    v15 = sub_221FB64E8();
  }

  else
  {
    v15 = 0;
  }

  v16 = v0[199];
  v17 = v0[161];
  [v16 setAddresses_];

  v18 = [v4 preferredReachableAddress];
  [v16 setPreferredReachableAddress_];

  __swift_project_boxed_opaque_existential_0Tm((v17 + 416), *(v17 + 440));
  v19 = v4;
  v20 = swift_task_alloc();
  v0[213] = v20;
  *v20 = v0;
  v20[1] = sub_221F1C484;
  v21 = v0[178];

  return sub_221E9AC64(v19, v21, 0);
}

uint64_t sub_221F1C300()
{
  v1 = v0[211];
  v2 = v0[209];
  v3 = v0[207];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[196];
  v8 = v0[194];
  v9 = v0[184];
  v20 = v0[187];
  v21 = v0[182];
  v22 = v0[180];
  swift_willThrow();

  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v9 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  v10 = v0[211];
  v11 = v0[175];
  v12 = v0[174];
  v13 = v0[171];
  v14 = v0[170];
  v15 = v0[167];
  v16 = v0[164];
  v17 = v0[163];

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F1C484(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1704);
  v6 = *v2;
  v4[214] = a1;
  v4[215] = v1;

  v7 = v3[212];
  if (v1)
  {
    v8 = v4[207];
    v9 = v4[194];

    v10 = sub_221F1C7F8;
  }

  else
  {

    v10 = sub_221F1C5DC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_221F1C5DC()
{
  v1 = v0[214];
  v2 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm((v0[161] + 416), *(v0[161] + 440));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[216] = v4;
  *v4 = v0;
  v4[1] = sub_221F1C6A8;
  v5 = v0[214];
  v6 = v0[178];

  return sub_221E9A43C(v2, v5, v6, 0);
}

uint64_t sub_221F1C6A8()
{
  v2 = *v1;
  v3 = *(*v1 + 1728);
  v4 = *v1;
  v2[217] = v0;

  v5 = v2[214];
  if (v0)
  {
    v6 = v2[207];
    v7 = v2[194];

    v8 = sub_221F1CBA0;
  }

  else
  {

    v8 = sub_221F1C9BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F1C7F8()
{
  v1 = v0[215];
  v2 = v0[212];
  v3 = v0[199];
  v0[263] = v2;
  v0[262] = v3;
  v0[261] = v1;
  v4 = v0[176];
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Invite failure after saving the relationship with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = v0[196];
  v13 = v0[161];

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v13 + 376), *(v13 + 400));
  v14 = v2;
  v15 = swift_task_alloc();
  v0[264] = v15;
  *v15 = v0;
  v15[1] = sub_221F20B38;
  v16 = v0[178];

  return sub_221EBAEA8(v14, v12, v16, 0);
}

uint64_t sub_221F1C9BC()
{
  v1 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm((v0[161] + 416), *(v0[161] + 440));
  v2 = swift_task_alloc();
  v0[218] = v2;
  *v2 = v0;
  v2[1] = sub_221F1CA74;
  v3 = v0[214];
  v4 = v0[178];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221F1CA74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1744);
  v9 = *v2;
  v3[219] = a1;
  v3[220] = v1;

  if (v1)
  {
    v5 = v3[207];
    v6 = v3[194];

    v7 = sub_221F1D294;
  }

  else
  {
    v7 = sub_221F1CD6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F1CBA0()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1592);
  *(v0 + 2104) = v2;
  *(v0 + 2096) = v3;
  *(v0 + 2088) = v1;
  v4 = *(v0 + 1408);
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Invite failure after saving the relationship with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = *(v0 + 1568);
  v13 = *(v0 + 1288);

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v13 + 376), *(v13 + 400));
  v14 = v2;
  v15 = swift_task_alloc();
  *(v0 + 2112) = v15;
  *v15 = v0;
  v15[1] = sub_221F20B38;
  v16 = *(v0 + 1424);

  return sub_221EBAEA8(v14, v12, v16, 0);
}

uint64_t sub_221F1CD6C()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1440);

  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  *(v0 + 1768) = v3;
  if (v3)
  {
    v4 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 296), *(*(v0 + 1288) + 320));
    v5 = swift_task_alloc();
    *(v0 + 1776) = v5;
    *v5 = v0;
    v5[1] = sub_221F1D160;
    v6 = *(v0 + 1592);
    v7 = *(v0 + 1568);

    return sub_221FB4FA4(v6, v7, v4);
  }

  else
  {
    v9 = *(v0 + 1752);
    v10 = *(v0 + 1656);
    v11 = *(v0 + 1552);
    v12 = *(v0 + 1440);
    v13 = *(v0 + 1408);

    v14 = v9;
    v15 = v12;
    v16 = sub_221FB61B8();
    v17 = sub_221FB65A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 1752);
      v19 = *(v0 + 1440);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v18;
      *v21 = v19;
      v21[1] = v18;
      v22 = v18;
      v23 = v19;
      _os_log_impl(&dword_221E93000, v16, v17, "Failed to create share item for participant: %@, share: %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    v24 = *(v0 + 1752);

    sub_221EA4994();
    v25 = swift_allocError();
    *v26 = 31;
    swift_willThrow();

    v27 = *(v0 + 1696);
    v28 = *(v0 + 1592);
    *(v0 + 2104) = v27;
    *(v0 + 2096) = v28;
    *(v0 + 2088) = v25;
    v29 = *(v0 + 1408);
    v30 = v25;
    v31 = sub_221FB61B8();
    v32 = sub_221FB65A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v25;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_221E93000, v31, v32, "Invite failure after saving the relationship with error: %@", v33, 0xCu);
      sub_221EA0558(v34);
      MEMORY[0x223DADA80](v34, -1, -1);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    v37 = *(v0 + 1568);
    v38 = *(v0 + 1288);

    [v27 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v38 + 376), *(v38 + 400));
    v39 = v27;
    v40 = swift_task_alloc();
    *(v0 + 2112) = v40;
    *v40 = v0;
    v40[1] = sub_221F20B38;
    v41 = *(v0 + 1424);

    return sub_221EBAEA8(v39, v37, v41, 0);
  }
}

uint64_t sub_221F1D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 1776);
  v11 = *v4;
  v5[223] = a1;
  v5[224] = a2;
  v5[225] = a3;
  v5[226] = v3;

  if (v3)
  {
    v7 = v5[207];
    v8 = v5[194];

    v9 = sub_221F1D460;
  }

  else
  {
    v9 = sub_221F1D634;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F1D294()
{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1592);
  *(v0 + 2104) = v2;
  *(v0 + 2096) = v3;
  *(v0 + 2088) = v1;
  v4 = *(v0 + 1408);
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Invite failure after saving the relationship with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = *(v0 + 1568);
  v13 = *(v0 + 1288);

  [v2 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v13 + 376), *(v13 + 400));
  v14 = v2;
  v15 = swift_task_alloc();
  *(v0 + 2112) = v15;
  *v15 = v0;
  v15[1] = sub_221F20B38;
  v16 = *(v0 + 1424);

  return sub_221EBAEA8(v14, v12, v16, 0);
}

uint64_t sub_221F1D460()
{
  v1 = *(v0 + 1768);

  v2 = *(v0 + 1808);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1592);
  *(v0 + 2104) = v3;
  *(v0 + 2096) = v4;
  *(v0 + 2088) = v2;
  v5 = *(v0 + 1408);
  v6 = v2;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "Invite failure after saving the relationship with error: %@", v9, 0xCu);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = *(v0 + 1568);
  v14 = *(v0 + 1288);

  [v3 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v14 + 376), *(v14 + 400));
  v15 = v3;
  v16 = swift_task_alloc();
  *(v0 + 2112) = v16;
  *v16 = v0;
  v16[1] = sub_221F20B38;
  v17 = *(v0 + 1424);

  return sub_221EBAEA8(v15, v13, v17, 0);
}

uint64_t sub_221F1D634()
{
  v1 = v0[224];
  v2 = v0[223];
  v3 = v0[201];
  v4 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 336), *(v0[161] + 360));
  v5 = swift_allocObject();
  v0[227] = v5;
  *(v5 + 16) = xmmword_221FB8D60;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = v4[3];
  v7 = v2;
  v8 = v1;
  v9 = *__swift_project_boxed_opaque_existential_0Tm(v4, v6);
  v10 = swift_task_alloc();
  v0[228] = v10;
  *v10 = v0;
  v10[1] = sub_221F1D748;
  v11 = v0[182];
  v12 = v0[178];

  return sub_221F997D4(v11, v5, v12, v9);
}

uint64_t sub_221F1D748()
{
  v2 = *v1;
  v3 = *(*v1 + 1824);
  v4 = *v1;
  v2[229] = v0;

  v5 = v2[227];
  if (v0)
  {
    v6 = v2[207];
    v7 = v2[194];

    v8 = sub_221F1DE34;
  }

  else
  {

    v8 = sub_221F1D89C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

id sub_221F1D89C()
{
  v1 = *(v0 + 1784);
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 336), *(*(v0 + 1288) + 360));
  sub_221F228F4(v1);
  *(v0 + 1840) = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v0 + 1792);
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 336), *(*(v0 + 1288) + 360));
  sub_221F228F4(v3);
  *(v0 + 1848) = v4;
  if (!v4)
  {
LABEL_11:

LABEL_12:
    v27 = *(v0 + 1800);
    v28 = *(v0 + 1792);
    v29 = *(v0 + 1784);
    v30 = *(v0 + 1768);
    v31 = *(v0 + 1752);
    v32 = *(v0 + 1656);
    v33 = *(v0 + 1552);

    sub_221EA4994();
    v34 = swift_allocError();
    *v35 = 40;
    swift_willThrow();

    v36 = *(v0 + 1696);
    v37 = *(v0 + 1592);
    *(v0 + 2104) = v36;
    *(v0 + 2096) = v37;
    *(v0 + 2088) = v34;
    v38 = *(v0 + 1408);
    v39 = v34;
    v40 = sub_221FB61B8();
    v41 = sub_221FB65A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v34;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_221E93000, v40, v41, "Invite failure after saving the relationship with error: %@", v42, 0xCu);
      sub_221EA0558(v43);
      MEMORY[0x223DADA80](v43, -1, -1);
      MEMORY[0x223DADA80](v42, -1, -1);
    }

    v46 = *(v0 + 1568);
    v47 = *(v0 + 1288);

    [v36 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v47 + 376), *(v47 + 400));
    v48 = v36;
    v49 = swift_task_alloc();
    *(v0 + 2112) = v49;
    *v49 = v0;
    v49[1] = sub_221F20B38;
    v24 = *(v0 + 1424);
    v25 = v48;
    v26 = v46;
    goto LABEL_15;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CE90C8]) init];
  *(v0 + 1856) = v5;
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  v7 = *(v0 + 1800);
  v8 = *(v0 + 1592);
  v9 = *(v0 + 1288);
  v10 = sub_221FB62E8();
  [v6 setActivityShareURL_];

  v11 = sub_221FB62E8();
  [v6 setRelationshipShareURL_];

  LOBYTE(v11) = *(v9 + 480);
  v12 = *(v9 + 481);
  *(v0 + 2144) = v12;
  v13 = *(v9 + 488);
  *(v0 + 1864) = v13;
  v14 = v7;
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v15 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v13);

    if (v15 == 2)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v12)
  {
LABEL_9:
    *(v0 + 1936) = MEMORY[0x277D84F90];
    v17 = *(v0 + 1752);
    v18 = *(v0 + 1568);
    v19 = *(v0 + 1288);
    v20 = *(v0 + 1696);
    v21 = [v17 recordID];
    [v20 setRelationshipZoneShareID_];

    __swift_project_boxed_opaque_existential_0Tm((v19 + 376), *(v19 + 400));
    v22 = v20;
    v23 = swift_task_alloc();
    *(v0 + 1944) = v23;
    *v23 = v0;
    v23[1] = sub_221F1E620;
    v24 = *(v0 + 1424);
    v25 = *(v0 + 1696);
    v26 = v18;
LABEL_15:

    return sub_221EBAEA8(v25, v26, v24, 0);
  }

  v51 = *(v0 + 1800);
  *(v0 + 1872) = [objc_opt_self() relationshipZone];
  result = [v51 UUID];
  if (result)
  {
    v52 = result;
    v53 = *(v0 + 1392);
    v54 = *(v0 + 1384);
    v55 = *(v0 + 1376);
    v56 = *(v0 + 1288);
    sub_221FB5C18();

    v57 = sub_221FB5BE8();
    v59 = v58;
    *(v0 + 1880) = v57;
    *(v0 + 1888) = v58;
    (*(v54 + 8))(v53, v55);
    v60 = *__swift_project_boxed_opaque_existential_0Tm((v56 + 256), *(v56 + 280));
    v61 = swift_task_alloc();
    *(v0 + 1896) = v61;
    *v61 = v0;
    v61[1] = sub_221F1E020;

    return sub_221F288AC(v57, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F1DE34()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v5 = *(v0 + 1832);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1592);
  *(v0 + 2104) = v6;
  *(v0 + 2096) = v7;
  *(v0 + 2088) = v5;
  v8 = *(v0 + 1408);
  v9 = v5;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221E93000, v10, v11, "Invite failure after saving the relationship with error: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v16 = *(v0 + 1568);
  v17 = *(v0 + 1288);

  [v6 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v17 + 376), *(v17 + 400));
  v18 = v6;
  v19 = swift_task_alloc();
  *(v0 + 2112) = v19;
  *v19 = v0;
  v19[1] = sub_221F20B38;
  v20 = *(v0 + 1424);

  return sub_221EBAEA8(v18, v16, v20, 0);
}

uint64_t sub_221F1E020(uint64_t a1)
{
  v2 = *(*v1 + 1896);
  v4 = *v1;
  *(*v1 + 1904) = a1;

  return MEMORY[0x2822009F8](sub_221F1E120, 0, 0);
}

uint64_t sub_221F1E120()
{
  v1 = v0[238];
  v2 = v0[236];
  if (v1)
  {
    v3 = v0[236];
  }

  else
  {
    v4 = v0[235];
    v5 = objc_allocWithZone(MEMORY[0x277CE9108]);
    v6 = sub_221FB62E8();

    v1 = [v5 initWithRelationshipIdentifier_];
  }

  v0[239] = v1;
  v7 = *__swift_project_boxed_opaque_existential_0Tm((v0[161] + 256), *(v0[161] + 280));

  return MEMORY[0x2822009F8](sub_221F1E1FC, v7, 0);
}

uint64_t sub_221F1E1FC()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1832);
  *(v0 + 1920) = sub_221F5A3A4(*(v0 + 1800), *(v0 + 1872));
  *(v0 + 1928) = v2;
  if (v2)
  {
    v3 = *(v0 + 1848);
    v4 = *(v0 + 1840);
    v5 = *(v0 + 1656);
    v6 = *(v0 + 1552);

    v7 = sub_221F1E424;
  }

  else
  {
    v7 = sub_221F1E2D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F1E2D4()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1872);
  v4 = *(v0 + 1608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221FB81B0;
  *(v5 + 32) = v1;

  *(v0 + 1936) = v5;
  v6 = *(v0 + 1752);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1696);
  v10 = [v6 recordID];
  [v9 setRelationshipZoneShareID_];

  __swift_project_boxed_opaque_existential_0Tm((v8 + 376), *(v8 + 400));
  v11 = v9;
  v12 = swift_task_alloc();
  *(v0 + 1944) = v12;
  *v12 = v0;
  v12[1] = sub_221F1E620;
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1424);

  return sub_221EBAEA8(v13, v7, v14, 0);
}

uint64_t sub_221F1E424()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1768);
  v6 = *(v0 + 1752);

  v7 = *(v0 + 1928);
  v8 = *(v0 + 1800);
  v9 = *(v0 + 1696);
  *(v0 + 2104) = v9;
  *(v0 + 2096) = v8;
  *(v0 + 2088) = v7;
  v10 = *(v0 + 1408);
  v11 = v7;
  v12 = sub_221FB61B8();
  v13 = sub_221FB65A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_221E93000, v12, v13, "Invite failure after saving the relationship with error: %@", v14, 0xCu);
    sub_221EA0558(v15);
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  v18 = *(v0 + 1568);
  v19 = *(v0 + 1288);

  [v9 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v19 + 376), *(v19 + 400));
  v20 = v9;
  v21 = swift_task_alloc();
  *(v0 + 2112) = v21;
  *v21 = v0;
  v21[1] = sub_221F20B38;
  v22 = *(v0 + 1424);

  return sub_221EBAEA8(v20, v18, v22, 0);
}

uint64_t sub_221F1E620(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1944);
  v14 = *v2;
  *(v3 + 1952) = a1;
  *(v3 + 1960) = v1;

  if (v1)
  {
    v5 = *(v3 + 1936);
    v6 = *(v3 + 1848);
    v7 = *(v3 + 1840);
    v8 = *(v3 + 1800);
    v9 = *(v3 + 1696);
    v10 = *(v3 + 1656);
    v11 = *(v3 + 1552);

    v12 = sub_221F1ED48;
  }

  else
  {

    v12 = sub_221F1E79C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_221F1E79C()
{
  v1 = *(v0 + 1408);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1952);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Saved relationship with relationship zone share identifier: %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = *(v0 + 1280);

  if (v8)
  {
    v9 = *(v0 + 1800);
    v10 = *(v0 + 1280);
    v11 = *(v0 + 1272);
    v12 = sub_221FB62E8();
    [v9 setPreferredReachableService_];
  }

  v13 = *(v0 + 1800);
  v14 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 376), *(*(v0 + 1288) + 400));
  if ([v13 cloudType])
  {
    v15 = *(v0 + 1408);
    v16 = *(v0 + 1800);
    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1800);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_221E93000, v17, v18, "Attempting to save secure cloud relationship to legacy container %@", v20, 0xCu);
      sub_221EA0558(v21);
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    sub_221EA4994();
    v23 = swift_allocError();
    *v24 = 11;
    swift_willThrow();
    v25 = *(v0 + 1936);
    v26 = *(v0 + 1856);
    v27 = *(v0 + 1848);
    v28 = *(v0 + 1840);
    v29 = *(v0 + 1800);
    v30 = *(v0 + 1792);
    v31 = *(v0 + 1784);
    v32 = *(v0 + 1752);
    v33 = *(v0 + 1656);
    v59 = *(v0 + 1552);
    v60 = *(v0 + 1768);

    v34 = *(v0 + 1952);
    v35 = *(v0 + 1800);
    *(v0 + 2104) = v34;
    *(v0 + 2096) = v35;
    *(v0 + 2088) = v23;
    v36 = *(v0 + 1408);
    v37 = v23;
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v23;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_221E93000, v38, v39, "Invite failure after saving the relationship with error: %@", v40, 0xCu);
      sub_221EA0558(v41);
      MEMORY[0x223DADA80](v41, -1, -1);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    v44 = *(v0 + 1568);
    v45 = *(v0 + 1288);

    [v34 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v45 + 376), *(v45 + 400));
    v46 = v34;
    v47 = swift_task_alloc();
    *(v0 + 2112) = v47;
    *v47 = v0;
    v47[1] = sub_221F20B38;
    v48 = *(v0 + 1424);

    return sub_221EBAEA8(v46, v44, v48, 0);
  }

  else
  {
    v50 = *(v0 + 1936);
    v61 = *(v0 + 1800);
    v51 = *(v0 + 1632);
    v52 = *(v0 + 1616);
    v53 = *(v0 + 1568);
    v54 = *(v0 + 1424);
    v55 = *__swift_project_boxed_opaque_existential_0Tm(v14 + 6, v14[9]);
    v56 = sub_221FB6428();
    *(v0 + 1968) = v56;
    v57 = sub_221FB6428();
    *(v0 + 1976) = v57;
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1248;
    *(v0 + 216) = sub_221F1EF34;
    v58 = swift_continuation_init();
    *(v0 + 1080) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 1056) = v58;
    *(v0 + 1024) = MEMORY[0x277D85DD0];
    *(v0 + 1032) = 1107296256;
    *(v0 + 1040) = sub_221F68D78;
    *(v0 + 1048) = &block_descriptor_23_3;
    [v55 saveRelationship:v61 contact:v53 extraRecordsToSave:v56 extraRecordIDsToDelete:v57 cloudKitGroup:v54 activity:0 completion:v0 + 1024];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221F1ED48()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v5 = *(v0 + 1960);
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1696);
  *(v0 + 2104) = v7;
  *(v0 + 2096) = v6;
  *(v0 + 2088) = v5;
  v8 = *(v0 + 1408);
  v9 = v5;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221E93000, v10, v11, "Invite failure after saving the relationship with error: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v16 = *(v0 + 1568);
  v17 = *(v0 + 1288);

  [v7 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v17 + 376), *(v17 + 400));
  v18 = v7;
  v19 = swift_task_alloc();
  *(v0 + 2112) = v19;
  *v19 = v0;
  v19[1] = sub_221F20B38;
  v20 = *(v0 + 1424);

  return sub_221EBAEA8(v18, v16, v20, 0);
}

uint64_t sub_221F1EF34()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1984) = v2;
  if (v2)
  {
    v3 = sub_221F1F984;
  }

  else
  {
    v3 = sub_221F1F044;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F1F044()
{
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[210];
  v4 = v0[208];
  v5 = v0[202];
  v13 = v0[196];
  v6 = v0[161];
  v0[249] = v0[156];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 376), *(v6 + 400));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  v10 = sub_221FB64E8();
  v0[250] = v10;

  v0[34] = v0;
  v0[39] = v0 + 152;
  v0[35] = sub_221F1F1EC;
  v11 = swift_continuation_init();
  v0[143] = v3;
  v0[140] = v11;
  v0[136] = MEMORY[0x277D85DD0];
  v0[137] = 1107296256;
  v0[138] = sub_221EBCB58;
  v0[139] = &block_descriptor_26_1;
  [v8 handleSavedRecords:v10 forContact:v13 completion:v0 + 136];

  return MEMORY[0x282200938](v0 + 34);
}

uint64_t sub_221F1F1EC()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 2008) = v2;
  if (v2)
  {
    v3 = sub_221F1F70C;
  }

  else
  {
    v3 = sub_221F1F2FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_221F1F2FC()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1288);
  *(v0 + 2016) = *(v0 + 1224);

  LOBYTE(v2) = *(v3 + 480);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v4 = *(v0 + 1864);
    v5 = *(v0 + 2144);
    UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v6 == 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v0 + 2144) != 1)
  {
LABEL_6:
    v8 = *(v0 + 1408);
    v9 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 40), *(*(v0 + 1288) + 64));
    v10 = ASMakeActivityDataPreviewWithManager();
    *(v0 + 2032) = v10;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_221E93000, v11, v12, "Sending IDS request", v13, 2u);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    v14 = *(v0 + 1952);
    v15 = *(v0 + 1856);
    v16 = *(v0 + 1768);
    v17 = *(v0 + 1552);
    v18 = *(v0 + 1544);
    v19 = *(v0 + 1368);
    v20 = *(v0 + 1312);

    v10;

    v21 = v15;
    v22 = v16;
    sub_221FB6028();
    sub_221FB5BB8();
    result = [v14 outgoingHandshakeToken];
    if (result)
    {
      v24 = result;
      v25 = *(v0 + 1992);
      v26 = *(v0 + 1936);
      v27 = *(v0 + 1848);
      v28 = *(v0 + 1840);
      v29 = *(v0 + 1656);
      v30 = *(v0 + 1552);
      v31 = *(v0 + 1400);
      v32 = *(v0 + 1384);
      v41 = *(v0 + 1376);
      v42 = *(v0 + 1360);
      v33 = *(v0 + 1352);
      v43 = *(v0 + 1344);
      v44 = *(v0 + 1368);
      v45 = *(v0 + 1312);
      v46 = *(v0 + 1336);
      v47 = *(v0 + 1288);

      sub_221FB6318();

      sub_221FB5C28();
      sub_221FB5BE8();
      (*(v32 + 8))(v31, v41);
      (*(v33 + 16))(v42, v44, v43);
      sub_221FB5EF8();
      v34 = *__swift_project_boxed_opaque_existential_0Tm((v47 + 216), *(v47 + 240));
      v35 = swift_task_alloc();
      *(v0 + 2040) = v35;
      *v35 = v0;
      v35[1] = sub_221F1FFE0;
      v36 = *(v0 + 1336);
      v37 = *(v0 + 1264);
      v38 = *(v0 + 1256);

      return sub_221F42AEC(v38, v37, v36, 1103, 0, 0);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 376), *(*(v0 + 1288) + 400));
  v39 = swift_task_alloc();
  *(v0 + 2024) = v39;
  *v39 = v0;
  v39[1] = sub_221F1FBE0;
  v40 = *(v0 + 1992);

  return sub_221EBC594(v40);
}

uint64_t sub_221F1F70C()
{
  v1 = v0[251];
  v2 = v0[250];
  v3 = v0[249];
  v4 = v0[231];
  v5 = v0[230];
  v6 = v0[225];
  v27 = v0[242];
  v28 = v0[224];
  v7 = v0[223];
  v29 = v0[221];
  v30 = v0[232];
  v31 = v0[219];
  v8 = v0[207];
  v9 = v0[194];
  swift_willThrow();

  v10 = v0[251];
  v11 = v0[244];
  v12 = v0[225];
  v0[263] = v11;
  v0[262] = v12;
  v0[261] = v10;
  v13 = v0[176];
  v14 = v10;
  v15 = sub_221FB61B8();
  v16 = sub_221FB65A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_221E93000, v15, v16, "Invite failure after saving the relationship with error: %@", v17, 0xCu);
    sub_221EA0558(v18);
    MEMORY[0x223DADA80](v18, -1, -1);
    MEMORY[0x223DADA80](v17, -1, -1);
  }

  v21 = v0[196];
  v22 = v0[161];

  [v11 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v22 + 376), *(v22 + 400));
  v23 = v11;
  v24 = swift_task_alloc();
  v0[264] = v24;
  *v24 = v0;
  v24[1] = sub_221F20B38;
  v25 = v0[178];

  return sub_221EBAEA8(v23, v21, v25, 0);
}

uint64_t sub_221F1F984()
{
  v1 = v0[248];
  v2 = v0[247];
  v3 = v0[246];
  swift_willThrow();

  v4 = v0[248];
  v5 = v0[242];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];
  v9 = v0[225];
  v10 = v0[224];
  v11 = v0[223];
  v12 = v0[219];
  v13 = v0[207];
  v30 = v0[194];
  v31 = v0[221];

  v14 = v0[244];
  v15 = v0[225];
  v0[263] = v14;
  v0[262] = v15;
  v0[261] = v4;
  v16 = v0[176];
  v17 = v4;
  v18 = sub_221FB61B8();
  v19 = sub_221FB65A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v4;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_221E93000, v18, v19, "Invite failure after saving the relationship with error: %@", v20, 0xCu);
    sub_221EA0558(v21);
    MEMORY[0x223DADA80](v21, -1, -1);
    MEMORY[0x223DADA80](v20, -1, -1);
  }

  v24 = v0[196];
  v25 = v0[161];

  [v14 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v25 + 376), *(v25 + 400));
  v26 = v14;
  v27 = swift_task_alloc();
  v0[264] = v27;
  *v27 = v0;
  v27[1] = sub_221F20B38;
  v28 = v0[178];

  return sub_221EBAEA8(v26, v24, v28, 0);
}

uint64_t sub_221F1FBE0()
{
  v1 = *(*v0 + 2024);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F1FCDC, 0, 0);
}

id sub_221F1FCDC()
{
  v1 = v0[176];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[161] + 40), *(v0[161] + 64));
  v3 = ASMakeActivityDataPreviewWithManager();
  v0[254] = v3;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v4, v5, "Sending IDS request", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v7 = v0[244];
  v8 = v0[232];
  v9 = v0[221];
  v10 = v0[194];
  v11 = v0[193];
  v12 = v0[171];
  v13 = v0[164];

  v3;

  v14 = v8;
  v15 = v9;
  sub_221FB6028();
  sub_221FB5BB8();
  result = [v7 outgoingHandshakeToken];
  if (result)
  {
    v17 = result;
    v18 = v0[249];
    v19 = v0[242];
    v20 = v0[231];
    v21 = v0[230];
    v22 = v0[207];
    v23 = v0[194];
    v24 = v0[175];
    v25 = v0[173];
    v32 = v0[172];
    v33 = v0[170];
    v26 = v0[169];
    v34 = v0[168];
    v35 = v0[171];
    v36 = v0[164];
    v37 = v0[167];
    v38 = v0[161];

    sub_221FB6318();

    sub_221FB5C28();
    sub_221FB5BE8();
    (*(v25 + 8))(v24, v32);
    (*(v26 + 16))(v33, v35, v34);
    sub_221FB5EF8();
    v27 = *__swift_project_boxed_opaque_existential_0Tm((v38 + 216), *(v38 + 240));
    v28 = swift_task_alloc();
    v0[255] = v28;
    *v28 = v0;
    v28[1] = sub_221F1FFE0;
    v29 = v0[167];
    v30 = v0[158];
    v31 = v0[157];

    return sub_221F42AEC(v31, v30, v29, 1103, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F1FFE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2040);
  v7 = *v2;
  *(v3 + 2048) = a1;
  *(v3 + 2056) = v1;

  if (v1)
  {
    v5 = sub_221F208DC;
  }

  else
  {
    v5 = sub_221F200F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F200F8()
{
  v1 = v0[244];
  v2 = v0[196];
  v3 = v0[161];
  [v1 setSentInvitation_];
  __swift_project_boxed_opaque_existential_0Tm((v3 + 376), *(v3 + 400));
  v4 = v1;
  v5 = swift_task_alloc();
  v0[258] = v5;
  *v5 = v0;
  v5[1] = sub_221F201DC;
  v6 = v0[244];
  v7 = v0[178];

  return sub_221EBAEA8(v6, v2, v7, 0);
}

uint64_t sub_221F201DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2064);
  v6 = *v2;
  *(v4 + 2072) = v1;

  if (v1)
  {
    v7 = sub_221F20554;
  }

  else
  {
    *(v4 + 2080) = a1;
    v7 = sub_221F20320;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F20320()
{
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  v3 = *(v0 + 2016);
  v19 = *(v0 + 1952);
  v20 = *(v0 + 2080);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1800);
  v12 = *(v0 + 1792);
  v17 = *(v0 + 1768);
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1752);
  v6 = *(v0 + 1568);
  v21 = *(v0 + 1472);
  v22 = *(v0 + 1496);
  v23 = *(v0 + 1456);
  v24 = *(v0 + 1440);
  v25 = *(v0 + 1400);
  v26 = *(v0 + 1392);
  v18 = *(v0 + 1368);
  v27 = *(v0 + 1360);
  v7 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);
  v28 = *(v0 + 1312);
  v29 = *(v0 + 1304);

  (*(v8 + 8))(v13, v9);
  (*(v7 + 8))(v18, v16);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v21 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F20554()
{
  v1 = v0[259];
  v2 = v0[176];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[259];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to save sent invitation %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v0[259];
  v12 = v0[256];
  v13 = v0[232];
  v35 = v0[254];
  v36 = v0[225];
  v37 = v0[224];
  v38 = v0[223];
  v14 = v0[221];
  v15 = v0[169];
  v42 = v0[168];
  v43 = v0[171];
  v40 = v0[219];
  v41 = v0[167];
  v16 = v0[166];
  v39 = v0[165];

  sub_221EA4994();
  v17 = swift_allocError();
  *v18 = 41;
  swift_willThrow();

  (*(v16 + 8))(v41, v39);
  (*(v15 + 8))(v43, v42);
  v19 = v0[252];
  v20 = v0[244];
  v0[263] = v20;
  v0[262] = v19;
  v0[261] = v17;
  v21 = v0[176];
  v22 = v17;
  v23 = sub_221FB61B8();
  v24 = sub_221FB65A8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v17;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_221E93000, v23, v24, "Invite failure after saving the relationship with error: %@", v25, 0xCu);
    sub_221EA0558(v26);
    MEMORY[0x223DADA80](v26, -1, -1);
    MEMORY[0x223DADA80](v25, -1, -1);
  }

  v29 = v0[196];
  v30 = v0[161];

  [v20 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v30 + 376), *(v30 + 400));
  v31 = v20;
  v32 = swift_task_alloc();
  v0[264] = v32;
  *v32 = v0;
  v32[1] = sub_221F20B38;
  v33 = v0[178];

  return sub_221EBAEA8(v31, v29, v33, 0);
}

uint64_t sub_221F208DC()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1784);
  v5 = *(v0 + 1752);
  v29 = *(v0 + 1368);
  v6 = *(v0 + 1352);
  v27 = *(v0 + 1768);
  v28 = *(v0 + 1344);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v29, v28);
  v10 = *(v0 + 2056);
  v11 = *(v0 + 2016);
  v12 = *(v0 + 1952);
  *(v0 + 2104) = v12;
  *(v0 + 2096) = v11;
  *(v0 + 2088) = v10;
  v13 = *(v0 + 1408);
  v14 = v10;
  v15 = sub_221FB61B8();
  v16 = sub_221FB65A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_221E93000, v15, v16, "Invite failure after saving the relationship with error: %@", v17, 0xCu);
    sub_221EA0558(v18);
    MEMORY[0x223DADA80](v18, -1, -1);
    MEMORY[0x223DADA80](v17, -1, -1);
  }

  v21 = *(v0 + 1568);
  v22 = *(v0 + 1288);

  [v12 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v22 + 376), *(v22 + 400));
  v23 = v12;
  v24 = swift_task_alloc();
  *(v0 + 2112) = v24;
  *v24 = v0;
  v24[1] = sub_221F20B38;
  v25 = *(v0 + 1424);

  return sub_221EBAEA8(v23, v21, v25, 0);
}

uint64_t sub_221F20B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2112);
  v6 = *v2;
  *(v4 + 2120) = a1;
  *(v4 + 2128) = v1;

  if (v1)
  {
    v7 = sub_221F21084;
  }

  else
  {
    v7 = sub_221F20C78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F20C78()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 2120);

  v4 = v3;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 2120);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    _os_log_impl(&dword_221E93000, v5, v6, "Updated relationship with withdraw event: %@", v9, 0xCu);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 2088);

  *(v0 + 1232) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(v0 + 1240);
  sub_221EC4754(33, v13);
  if ((v14 & 1) == 0)
  {

LABEL_10:
    v29 = *(v0 + 2120);
    v30 = *(v0 + 2096);
    v31 = *(v0 + 2088);
    v32 = *(v0 + 1584);
    v33 = *(v0 + 1568);
    v34 = *(v0 + 1496);
    v35 = *(v0 + 1472);
    v36 = *(v0 + 1456);
    v37 = *(v0 + 1440);
    swift_willThrow();

    __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
    [v35 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
    v38 = *(v0 + 2088);
    goto LABEL_11;
  }

  v15 = *(v0 + 1408);
  v16 = sub_221FB61B8();
  v17 = sub_221FB65A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_221E93000, v16, v17, "Friend doesn't have a secure cloud container", v18, 2u);
    MEMORY[0x223DADA80](v18, -1, -1);
  }

  v19 = *(v0 + 2096);
  v20 = *(v0 + 2088);
  v21 = *(v0 + 1584);
  v22 = *(v0 + 1568);
  v48 = *(v0 + 2120);
  v49 = *(v0 + 1472);
  v50 = *(v0 + 1496);
  v51 = *(v0 + 1456);
  v52 = *(v0 + 1440);
  v23 = *(v0 + 1304);
  v24 = *(v0 + 1296);

  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v27 = v26;
  sub_221EA4A40(v23, v26);
  *(v27 + *(v25 + 20)) = v20;
  swift_willThrow();
  v28 = v20;

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v49 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
LABEL_11:
  v39 = *(v0 + 1400);
  v40 = *(v0 + 1392);
  v41 = *(v0 + 1368);
  v42 = *(v0 + 1360);
  v43 = *(v0 + 1336);
  v44 = *(v0 + 1312);
  v45 = *(v0 + 1304);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_221F21084()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1584);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1440);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
  [v6 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
  v9 = *(v0 + 2128);
  v10 = *(v0 + 1400);
  v11 = *(v0 + 1392);
  v12 = *(v0 + 1368);
  v13 = *(v0 + 1360);
  v14 = *(v0 + 1336);
  v15 = *(v0 + 1312);
  v16 = *(v0 + 1304);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221F21250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F21298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 496) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_221F21388@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_221F21450@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221F219AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_221F21544()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x6962616C69617661;
  }

  *v0;
  return result;
}

uint64_t sub_221F2158C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
  if (v6 || (sub_221FB6B58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000221FC2990 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_221FB6B58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_221F2168C(uint64_t a1)
{
  v2 = sub_221F21B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221F216C8(uint64_t a1)
{
  v2 = sub_221F21B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221F21704(void *a1, __int16 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC310, qword_221FBBA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_221F21B90();
  sub_221FB6C78();
  v12[15] = a2;
  v12[14] = 0;
  sub_221F21C8C();
  sub_221FB6AE8();
  if (!v2)
  {
    v12[13] = HIBYTE(a2);
    v12[12] = 1;
    sub_221F21CE0();
    sub_221FB6AE8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_221F21894@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_221F219BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_221F218DC()
{
  sub_221EBEE88();
  sub_221EBEEDC();
  return sub_221FB5E68();
}

uint64_t sub_221F21930()
{
  sub_221EBEE88();
  sub_221EBEEDC();
  return sub_221FB5E78();
}

unint64_t sub_221F219AC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_221F219BC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC308, &qword_221FBBA90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_221F21B90();
  sub_221FB6C68();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12[14] = 0;
  sub_221F21BE4();
  sub_221FB6AD8();
  v9 = v12[15];
  v12[12] = 1;
  sub_221F21C38();
  sub_221FB6AD8();
  (*(v4 + 8))(v7, v3);
  v10 = v12[13];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9 | (v10 << 8);
}

unint64_t sub_221F21B90()
{
  result = qword_281307608[0];
  if (!qword_281307608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281307608);
  }

  return result;
}

unint64_t sub_221F21BE4()
{
  result = qword_2813079F0;
  if (!qword_2813079F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813079F0);
  }

  return result;
}

unint64_t sub_221F21C38()
{
  result = qword_281307DA8;
  if (!qword_281307DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DA8);
  }

  return result;
}

unint64_t sub_221F21C8C()
{
  result = qword_281307A00;
  if (!qword_281307A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A00);
  }

  return result;
}

unint64_t sub_221F21CE0()
{
  result = qword_281307DB8;
  if (!qword_281307DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndToEndEncryptionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndToEndEncryptionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSQueueBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSQueueBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureCloudAccountInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureCloudAccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221F22294()
{
  result = qword_27CFEC318;
  if (!qword_27CFEC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC318);
  }

  return result;
}

unint64_t sub_221F222EC()
{
  result = qword_27CFEC320;
  if (!qword_27CFEC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC320);
  }

  return result;
}

unint64_t sub_221F22344()
{
  result = qword_27CFEC328;
  if (!qword_27CFEC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC328);
  }

  return result;
}

unint64_t sub_221F2239C()
{
  result = qword_2813075F8;
  if (!qword_2813075F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813075F8);
  }

  return result;
}

unint64_t sub_221F223F4()
{
  result = qword_281307600;
  if (!qword_281307600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307600);
  }

  return result;
}

unint64_t sub_221F22448()
{
  result = qword_2813079F8;
  if (!qword_2813079F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813079F8);
  }

  return result;
}

unint64_t sub_221F2249C()
{
  result = qword_281307DB0;
  if (!qword_281307DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307DB0);
  }

  return result;
}

uint64_t sub_221F2250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221F2264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E96070;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221F2278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9606C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221F228F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = [a1 URL];
  if (v9)
  {
    v10 = v9;
    sub_221FB5AD8();

    v11 = sub_221FB5AE8();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_221FB5AE8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_221E9CF08(v6, v8);
  sub_221FB5AE8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_221F22AE0(v8);
    return 0;
  }

  else
  {
    v14 = sub_221FB5AB8();
    (*(v12 + 8))(v8, v11);
    return v14;
  }
}

uint64_t sub_221F22AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_221F22B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F22BAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_221F22C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_221E9544C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F22D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F22EA8(char a1, uint64_t a2)
{
  *(v3 + 304) = a2;
  *(v3 + 312) = v2;
  *(v3 + 466) = a1;
  v4 = sub_221FB5C38();
  *(v3 + 320) = v4;
  v5 = *(v4 - 8);
  *(v3 + 328) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F22F78, 0, 0);
}

uint64_t sub_221F22F78()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 466);
  v4 = sub_221FB5BF8();
  *(v0 + 352) = *v2;
  v5 = ASInsertPlaceholderRelationshipEventForFriend();

  sub_221FB67C8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0Tm(v2 + 12, v2[15]);
  v10 = off_28355BEA0 + *off_28355BEA0;
  v6 = *(off_28355BEA0 + 1);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = sub_221F23100;
  v8 = *(v0 + 304);

  return (v10)(v8, &type metadata for RelationshipFinalizationCoordinator, &off_28355BE88);
}

uint64_t sub_221F23100()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F231FC, 0, 0);
}

uint64_t sub_221F231FC()
{
  v1 = v0[39];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v1[4]);
  v3 = v1[6];
  v0[46] = v3;
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 58;
  v0[3] = sub_221F23348;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[47] = v6;
  v0[25] = v6;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221FA909C;
  v0[21] = &block_descriptor_19;
  v0[22] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F23348()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_221F23CE4;
  }

  else
  {
    v3 = sub_221F23458;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F23458()
{
  v80 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v3 = sub_221FB5BF8();
  v4 = [v1 contactWithUUID_];
  *(v0 + 392) = v4;

  if (v4)
  {
    v5 = *(v0 + 466);
    v6 = [v4 relationshipStorage];
    *(v0 + 400) = [v6 primaryRelationship];

    v7 = [v4 relationshipStorage];
    *(v0 + 408) = [v7 secureCloudRelationship];

    v8 = [v4 relationshipStorage];
    v9 = [v8 legacyRelationship];
    *(v0 + 416) = v9;

    if (v5 != [v9 isMuteEnabled])
    {
      v10 = *(v0 + 376);
      v11 = *(v0 + 304);
      v12 = *(v0 + 466);
      v13 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 312) + 56), *(*(v0 + 312) + 80));
      v14 = sub_221FB5BF8();
      *(v0 + 424) = v14;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 465;
      *(v0 + 88) = sub_221F23DB0;
      v15 = swift_continuation_init();
      *(v0 + 264) = v10;
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_221FA909C;
      *(v0 + 232) = &block_descriptor_5_0;
      *(v0 + 240) = v15;
      [v13 setMuteEnabled:v12 forFriendWithUUID:v14 completion:v0 + 208];

      return MEMORY[0x282200938](v0 + 80);
    }

    if ([*(v0 + 400) cloudType] == 1)
    {
      v33 = *(v0 + 466);
      if (v33 != [*(v0 + 408) isMuteEnabled])
      {
        v34 = *(v0 + 312);
        if (*(v0 + 466))
        {
          v35 = 8;
        }

        else
        {
          v35 = 9;
        }

        [*(v0 + 408) insertEventWithType_];
        __swift_project_boxed_opaque_existential_0Tm((v34 + 136), *(v34 + 160));
        v36 = swift_task_alloc();
        *(v0 + 440) = v36;
        *v36 = v0;
        v36[1] = sub_221F24420;
        v37 = *(v0 + 408);
        v38 = *(v0 + 368);

        return sub_221EBAEA8(v37, 0, v38, 0);
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 344);
      v55 = *(v0 + 320);
      v56 = *(v0 + 328);
      v57 = *(v0 + 304);
      v58 = sub_221FB61D8();
      __swift_project_value_buffer(v58, qword_281307DF0);
      (*(v56 + 16))(v54, v57, v55);
      v59 = sub_221FB61B8();
      v60 = sub_221FB65A8();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 408);
      v63 = *(v0 + 392);
      v64 = *(v0 + 400);
      v65 = *(v0 + 344);
      v66 = *(v0 + 320);
      v67 = *(v0 + 328);
      if (v61)
      {
        v77 = *(v0 + 416);
        v78 = *(v0 + 392);
        v68 = swift_slowAlloc();
        v76 = v64;
        v69 = swift_slowAlloc();
        v79[0] = v69;
        *v68 = 136315138;
        sub_221EA8278();
        v75 = v62;
        v70 = sub_221FB6B08();
        v72 = v71;
        (*(v67 + 8))(v65, v66);
        v73 = sub_221EF4114(v70, v72, v79);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_221E93000, v59, v60, "Unable to update notification preference, no change to current preference for identifier %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x223DADA80](v69, -1, -1);
        MEMORY[0x223DADA80](v68, -1, -1);
      }

      else
      {

        (*(v67 + 8))(v65, v66);
      }
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v44 = sub_221FB61D8();
      __swift_project_value_buffer(v44, qword_281307DF0);
      v45 = sub_221FB61B8();
      v46 = sub_221FB65C8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_221E93000, v45, v46, "Secure cloud relationship is not primary not updating notification state", v47, 2u);
        MEMORY[0x223DADA80](v47, -1, -1);
      }

      v48 = *(v0 + 408);
      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
    }

    v51 = *(v0 + 344);
    v52 = *(v0 + 352);
    v53 = *(v0 + 336);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    [v52 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v43 = *(v0 + 8);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    v19 = *(v0 + 304);
    v20 = sub_221FB61D8();
    __swift_project_value_buffer(v20, qword_281307DF0);
    (*(v17 + 16))(v16, v19, v18);
    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 320);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79[0] = v28;
      *v27 = 136315138;
      sub_221EA8278();
      v29 = sub_221FB6B08();
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_221EF4114(v29, v31, v79);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_221E93000, v21, v22, "Unable to update notification preference, no contact for identifier: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223DADA80](v28, -1, -1);
      MEMORY[0x223DADA80](v27, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    sub_221EA4994();
    swift_allocError();
    *v39 = 21;
    swift_willThrow();
    v41 = *(v0 + 344);
    v40 = *(v0 + 352);
    v42 = *(v0 + 336);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    [v40 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v43 = *(v0 + 8);
  }

  return v43();
}

uint64_t sub_221F23CE4()
{
  v1 = v0[48];
  swift_willThrow();
  v2 = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 34, v0[37]);
  [v3 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F23DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_221F24330;
  }

  else
  {
    v3 = sub_221F23EC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F23EC0()
{
  v44 = v0;

  if ([*(v0 + 400) cloudType] == 1)
  {
    v1 = *(v0 + 466);
    if (v1 != [*(v0 + 408) isMuteEnabled])
    {
      v2 = *(v0 + 312);
      if (*(v0 + 466))
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      [*(v0 + 408) insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v2 + 136), *(v2 + 160));
      v4 = swift_task_alloc();
      *(v0 + 440) = v4;
      *v4 = v0;
      v4[1] = sub_221F24420;
      v5 = *(v0 + 408);
      v6 = *(v0 + 368);

      return sub_221EBAEA8(v5, 0, v6, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 344);
    v20 = *(v0 + 320);
    v21 = *(v0 + 328);
    v22 = *(v0 + 304);
    v23 = sub_221FB61D8();
    __swift_project_value_buffer(v23, qword_281307DF0);
    (*(v21 + 16))(v19, v22, v20);
    v24 = sub_221FB61B8();
    v25 = sub_221FB65A8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    v30 = *(v0 + 344);
    v31 = *(v0 + 320);
    v32 = *(v0 + 328);
    if (v26)
    {
      v41 = *(v0 + 416);
      v42 = *(v0 + 392);
      v33 = swift_slowAlloc();
      v40 = v29;
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      sub_221EA8278();
      v39 = v27;
      v35 = sub_221FB6B08();
      v37 = v36;
      (*(v32 + 8))(v30, v31);
      v38 = sub_221EF4114(v35, v37, &v43);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_221E93000, v24, v25, "Unable to update notification preference, no change to current preference for identifier %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DADA80](v34, -1, -1);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v30, v31);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_221E93000, v9, v10, "Secure cloud relationship is not primary not updating notification state", v11, 2u);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v12 = *(v0 + 408);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
  }

  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v17 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v16 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_221F24330()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  swift_willThrow();

  v7 = v0[54];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 34, v0[37]);
  [v8 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F24420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_221F24754;
  }

  else
  {
    v5 = sub_221F24534;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F24534()
{
  v1 = (v0 + 448);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *v1;
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *v1;
  if (v7)
  {
    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_221E93000, v5, v6, "Updated notification preference on secure cloud relationship: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);

    v14 = 408;
    v15 = 416;
  }

  else
  {

    v1 = (v0 + 416);
    v14 = 400;
    v15 = 408;
  }

  v16 = *(v0 + v15);
  v17 = *(v0 + v14);

  v18 = *(v0 + 344);
  v19 = *(v0 + 352);
  v20 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v19 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221F24754()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  v4 = *(v0 + 456);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v5 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F24840(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_221F24888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F2490C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F24A38(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F24B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F24C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F24DA0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221EE581C;

  return v9(a1, a2);
}

uint64_t sub_221F24EB8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F24FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9E350;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F25100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9E350;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F25230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F25358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E96070;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221F25498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_221F78008(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_221ED4B5C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_221ED6B78();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_221F554A0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_221F255B0()
{
  v1 = *(v0[20] + 112);
  v2 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v3 = sub_221FB62E8();
  v4 = [v2 initWithCategory:3 domainName:v3 healthStore:v1];
  v0[21] = v4;

  v5 = sub_221FB62E8();
  v0[22] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221F2575C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_98;
  v0[14] = v6;
  [v4 dataForKey:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F2575C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221F25DD4;
  }

  else
  {
    v5 = sub_221F2587C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221F2587C()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v2 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
LABEL_32:
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "No existing migration available items", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    v11 = 0;
    goto LABEL_7;
  }

  v8 = sub_221FB5998();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_221FB5988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC360, qword_221FBC270);
  sub_221F29714();
  sub_221FB5978();

  v14 = *(v0 + 80);
  v38 = MEMORY[0x277D84F90];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 40;
    v36 = v2;
    v37 = MEMORY[0x277D84F90];
    v35 = v3;
    while (1)
    {
      v18 = (v17 + 16 * v16);
      v19 = v16;
      v20 = 0x277CE9000uLL;
      while (1)
      {
        if (v19 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v22 = *(v18 - 1);
        v21 = *v18;
        v23 = objc_allocWithZone(*(v20 + 184));
        sub_221EBEF90(v22, v21);
        v24 = sub_221FB5B08();
        v25 = [v23 initWithData_];

        if (!v25)
        {
          if (qword_281307080 != -1)
          {
            swift_once();
          }

          v28 = sub_221FB61D8();
          __swift_project_value_buffer(v28, qword_281307DF0);
          v29 = sub_221FB61B8();
          v30 = sub_221FB65A8();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_221E93000, v29, v30, "Failed to decode migration available item", v31, 2u);
            v32 = v31;
            v20 = 0x277CE9000;
            MEMORY[0x223DADA80](v32, -1, -1);
          }

          sub_221EBEF30(v22, v21);

          goto LABEL_14;
        }

        v26 = [objc_opt_self() migrationAvailableItemWithCodableContainer_];

        v27 = sub_221EBEF30(v22, v21);
        if (v26)
        {
          break;
        }

LABEL_14:
        ++v19;
        v18 += 2;
        if (v15 == v19)
        {
          v3 = v35;
          v2 = v36;
          goto LABEL_30;
        }
      }

      MEMORY[0x223DAC7E0](v27);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      v16 = v19 + 1;
      sub_221FB6478();
      v37 = v38;
      v3 = v35;
      v33 = v15 - 1 == v19;
      v2 = v36;
      v17 = v14 + 40;
      if (v33)
      {
        goto LABEL_30;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_30:
  sub_221EBEFE4(v3, v2);

  v11 = v37;
LABEL_7:
  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221F25DD4()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "No existing migration available items: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_221F25F8C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F25FAC, v1, 0);
}

uint64_t sub_221F25FAC()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v29 = v0[18];
    }

    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    v4 = sub_221F77664(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v4);
    }

    v5 = 0;
    v3 = v32;
    v6 = v1 & 0xC000000000000001;
    v31 = v0[18] + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x223DACD50](v5, v0[18]);
      }

      else
      {
        v7 = *(v31 + 8 * v5);
      }

      v8 = v7;
      v9 = [v7 codableMigrationAvailableItemContainer];
      v10 = [v9 data];

      if (v10)
      {
        v11 = sub_221FB5B18();
        v13 = v12;
      }

      else
      {

        v11 = 0;
        v13 = 0xF000000000000000;
      }

      v15 = *(v32 + 16);
      v14 = *(v32 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_221F77664((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v32 + 16) = v15 + 1;
      v16 = v32 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v2 != v5);
  }

  v17 = sub_221FB59C8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC340, &unk_221FBC260);
  sub_221F295A8();
  v0[20] = sub_221FB59A8();
  v0[21] = v20;
  v21 = v0[19];

  v22 = *(v21 + 112);
  v23 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v24 = sub_221FB62E8();
  v25 = [v23 initWithCategory:3 domainName:v24 healthStore:v22];
  v0[22] = v25;

  v26 = sub_221FB5B08();
  v0[23] = v26;
  v27 = sub_221FB62E8();
  v0[24] = v27;
  v0[2] = v0;
  v0[3] = sub_221ECF258;
  v28 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_20;
  v0[14] = v28;
  [v25 setData:v26 forKey:v27 completion:v0 + 10];
  v4 = v0 + 2;

  return MEMORY[0x282200938](v4);
}

uint64_t sub_221F26384()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F263F0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_221F26440(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221F26494(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221F264DC()
{
  if (*(v0[2] + 120))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_221F265A8;
    v4 = v0[2];

    return sub_221F25590();
  }
}

uint64_t sub_221F265A8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221F266C0, v3, 0);
}

uint64_t sub_221F266C0()
{
  v44 = v0;
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (qword_281307080 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v40 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315138;
    v7 = sub_221F292D4();
    v8 = MEMORY[0x223DAC810](v1, v7);
    v10 = sub_221EF4114(v8, v9, &v43);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Loaded migration available items %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v11 = sub_221ED7E68(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
    v12 = sub_221FB6868();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_9:
      v13 = 0;
      v41 = v1 & 0xFFFFFFFFFFFFFF8;
      v42 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v42)
        {
          v17 = MEMORY[0x223DACD50](v13, v1);
        }

        else
        {
          if (v13 >= *(v41 + 16))
          {
            goto LABEL_31;
          }

          v17 = *(v1 + 8 * v13 + 32);
        }

        v18 = v17;
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v0 = v1;
        v1 = [v17 relationshipIdentifier];
        v20 = sub_221FB6318();
        v22 = v21;

        v23 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v11;
        v25 = sub_221ED4B5C(v20, v22);
        v27 = v11[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_32;
        }

        v1 = v26;
        if (v11[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v35 = v25;
        sub_221ED6B78();
        v25 = v35;
        if (v1)
        {
LABEL_10:
          v14 = v25;

          v11 = v43;
          v15 = v43[7];
          v16 = *(v15 + 8 * v14);
          *(v15 + 8 * v14) = v23;

          goto LABEL_11;
        }

LABEL_22:
        v11 = v43;
        v43[(v25 >> 6) + 8] |= 1 << v25;
        v32 = (v11[6] + 16 * v25);
        *v32 = v20;
        v32[1] = v22;
        *(v11[7] + 8 * v25) = v23;

        v33 = v11[2];
        v29 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v29)
        {
          goto LABEL_33;
        }

        v11[2] = v34;
LABEL_11:
        ++v13;
        v1 = v0;
        if (v19 == v12)
        {
          goto LABEL_36;
        }
      }

      sub_221ED5174(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_221ED4B5C(v20, v22);
      if ((v1 & 1) != (v31 & 1))
      {

        return sub_221FB6B98();
      }

LABEL_21:
      if (v1)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

LABEL_36:
  v37 = v40[2];

  v38 = *(v37 + 120);
  *(v37 + 120) = v11;

  v39 = v40[1];

  return v39();
}

uint64_t sub_221F26AB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F26B54, v1, 0);
}

uint64_t sub_221F26B54()
{
  v0[5] = *(v0[3] + 128);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_221F26BF8;

  return sub_221F7E048();
}

uint64_t sub_221F26BF8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221F26D24, v3, 0);
}

uint64_t sub_221F26D24()
{
  v49 = v0;
  v1 = v0[3];
  if (*(v1 + 120))
  {
    v2 = v0[2];
    v44 = *(v1 + 120);

    v3 = sub_221ED7E68(MEMORY[0x277D84F90]);
    if (v2 >> 62)
    {
LABEL_32:
      if (v0[2] < 0)
      {
        v35 = v0[2];
      }

      v4 = sub_221FB6868();
      v45 = v0;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v0;
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v46 = v2 & 0xFFFFFFFFFFFFFF8;
        v47 = v2 & 0xC000000000000001;
        v2 = v0[2] + 32;
        while (1)
        {
          if (v47)
          {
            v9 = MEMORY[0x223DACD50](v5, v45[2]);
          }

          else
          {
            if (v5 >= *(v46 + 16))
            {
              goto LABEL_29;
            }

            v9 = *(v2 + 8 * v5);
          }

          v10 = v9;
          v0 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v11 = [v9 relationshipIdentifier];
          v12 = sub_221FB6318();
          v14 = v13;

          v15 = v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v3;
          v17 = sub_221ED4B5C(v12, v14);
          v19 = v3[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_30;
          }

          v23 = v18;
          if (v3[3] < v22)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v28 = v17;
          sub_221ED6B78();
          v17 = v28;
          if (v23)
          {
LABEL_5:
            v6 = v17;

            v3 = v48;
            v7 = v48[7];
            v8 = *(v7 + 8 * v6);
            *(v7 + 8 * v6) = v15;

            goto LABEL_6;
          }

LABEL_17:
          v3 = v48;
          v48[(v17 >> 6) + 8] |= 1 << v17;
          v25 = (v3[6] + 16 * v17);
          *v25 = v12;
          v25[1] = v14;
          *(v3[7] + 8 * v17) = v15;

          v26 = v3[2];
          v21 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v21)
          {
            goto LABEL_31;
          }

          v3[2] = v27;
LABEL_6:
          ++v5;
          if (v0 == v4)
          {
            goto LABEL_35;
          }
        }

        sub_221ED5174(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_221ED4B5C(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          return sub_221FB6B98();
        }

LABEL_16:
        if (v23)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

LABEL_35:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v44;
    sub_221F29320(v3, sub_221F29288, 0, v36, &v48);

    v37 = v48;
    v45[7] = v48;
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = v37;
      v40 = sub_221E9E980(*(v37 + 16), 0);
      v41 = sub_221E9EDC0(&v48, v40 + 4, v38, v39);

      sub_221E96470();
      if (v41 == v38)
      {
LABEL_39:
        v45[8] = v40;
        v42 = swift_task_alloc();
        v45[9] = v42;
        *v42 = v45;
        v42[1] = sub_221F27200;
        v43 = v45[3];

        return sub_221F25F8C(v40);
      }

      __break(1u);
    }

    v40 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v29 = v0[4];
  v30 = *(v1 + 128);
  v31 = sub_221FB64C8();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v30;

  sub_221FA7A78(0, 0, v29, &unk_221FB9A50, v32);

  v33 = v0[1];

  return v33();
}

uint64_t sub_221F27200()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_221F275C0;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_221F27328;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221F27328()
{
  v22 = v0;
  v1 = v0[3];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[7];

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);

  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_221F292D4();
    v11 = sub_221FB6298();
    v13 = v12;

    v14 = sub_221EF4114(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_221E93000, v5, v6, "Added items to map %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  v16 = *(v0[3] + 128);
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;

  sub_221FA7A78(0, 0, v15, &unk_221FBC1E0, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_221F275C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  v5 = *(v4 + 128);
  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_221FA7A78(0, 0, v3, &unk_221FBC1D8, v7);

  v8 = v0[1];
  v9 = v0[10];

  return v8();
}

uint64_t sub_221F276D8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F27774, v1, 0);
}

uint64_t sub_221F27774()
{
  v0[12] = *(v0[10] + 128);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_221F27818;

  return sub_221F7E048();
}

uint64_t sub_221F27818()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221F27944, v3, 0);
}

uint64_t sub_221F27944()
{
  v27 = v0;
  v1 = v0[10];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC330, &qword_221FBC200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;

    v5 = [v3 relationshipIdentifier];
    v6 = sub_221FB6318();
    v8 = v7;

    *(inited + 32) = v6;
    *(inited + 40) = v8;
    *(inited + 48) = v3;
    v9 = v3;
    v10 = sub_221ED7E68(inited);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEC338, &qword_221FBC208);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2;
    sub_221F29320(v10, sub_221F29288, 0, isUniquelyReferenced_nonNull_native, &v26);

    v12 = v26;
    v0[14] = v26;
    v20 = *(v12 + 16);
    if (v20)
    {
      v21 = v12;
      v22 = sub_221E9E980(*(v12 + 16), 0);
      v23 = sub_221E9EDC0(&v26, v22 + 4, v20, v21);

      sub_221E96470();
      if (v23 == v20)
      {
LABEL_10:
        v0[15] = v22;
        v24 = swift_task_alloc();
        v0[16] = v24;
        *v24 = v0;
        v24[1] = sub_221F27C80;
        v25 = v0[10];

        return sub_221F25F8C(v22);
      }

      __break(1u);
    }

    v22 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v13 = v0[11];
  v14 = *(v1 + 128);
  v15 = sub_221FB64C8();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  sub_221FA7A78(0, 0, v13, &unk_221FBC1F8, v16);

  v17 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F27C80()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_221F28040;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 80);

    v5 = sub_221F27DA8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221F27DA8()
{
  v23 = v0;
  v1 = v0[10];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[14];

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);

  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_221F292D4();
    v11 = sub_221FB6298();
    v13 = v12;

    v14 = sub_221EF4114(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_221E93000, v5, v6, "Added item to map %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[11];
  v16 = *(v0[10] + 128);
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;

  sub_221FA7A78(0, 0, v15, &unk_221FBC218, v18);

  v19 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_221F28040()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];

  v5 = *(v4 + 128);
  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_221FA7A78(0, 0, v3, &unk_221FBC210, v7);

  v8 = v0[1];
  v9 = v0[17];

  return v8();
}

uint64_t sub_221F28158()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F281F4, v0, 0);
}

uint64_t sub_221F281F4()
{
  v0[4] = *(v0[2] + 128);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_221F28298;

  return sub_221F7E048();
}

uint64_t sub_221F28298()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221F283C4, v3, 0);
}

uint64_t sub_221F283C4()
{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_221F28550;
    v3 = v0[2];
    v4 = MEMORY[0x277D84F90];

    return sub_221F25F8C(v4);
  }

  else
  {
    v6 = v0[3];
    v7 = *(v1 + 128);
    v8 = sub_221FB64C8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_221FA7A78(0, 0, v6, &unk_221FBC248, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221F28550()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_221F287A4;
  }

  else
  {
    v6 = sub_221F2867C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221F2867C()
{
  v1 = v0[2];
  v2 = sub_221ED7E68(MEMORY[0x277D84F90]);
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;

  v4 = v0[3];
  v5 = *(v0[2] + 128);
  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_221FA7A78(0, 0, v4, &unk_221FBC258, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F287A4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 128);
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_221FA7A78(0, 0, v1, &unk_221FBC250, v4);

  v5 = v0[1];
  v6 = v0[7];

  return v5();
}

uint64_t sub_221F288AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F288D0, v2, 0);
}

uint64_t sub_221F288D0()
{
  v1 = *(v0[4] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[2];
    v2 = v0[3];

    v4 = sub_221ED4B5C(v3, v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      v7 = v6;
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_221F2898C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F289B0, v2, 0);
}

uint64_t sub_221F289B0()
{
  v1 = *(v0[4] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[2];
    v2 = v0[3];

    sub_221ED4B5C(v3, v2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t sub_221F28A54(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F28AF0, v1, 0);
}

uint64_t sub_221F28AF0()
{
  v0[6] = *(v0[4] + 128);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_221F28B94;

  return sub_221F7E048();
}

uint64_t sub_221F28B94()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221F28CC0, v3, 0);
}

uint64_t sub_221F28CC0()
{
  v21 = v0;
  v1 = v0[4];
  v2 = *(v1 + 120);
  if (!v2)
  {
LABEL_5:
    v12 = v0[5];
    v13 = *(v1 + 128);
    v14 = sub_221FB64C8();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;

    sub_221FA7A78(0, 0, v12, &unk_221FBC228, v15);

    v16 = v0[1];

    return v16();
  }

  v3 = v0[3];
  v0[2] = v2;

  v4 = [v3 relationshipIdentifier];
  v5 = sub_221FB6318();
  v7 = v6;

  sub_221F25498(0, v5, v7);
  v8 = v0[2];
  v0[8] = v8;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_221E9E980(*(v8 + 16), 0);
    v11 = sub_221E9EDC0(&v20, v10 + 4, v9, v8);

    sub_221E96470();
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v0[9] = v10;
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_221F28F2C;
  v19 = v0[4];

  return sub_221F25F8C(v10);
}

uint64_t sub_221F28F2C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_221F29170;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_221F29054;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221F29054()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[8];

  v3 = v0[5];
  v4 = *(v0[4] + 128);
  v5 = sub_221FB64C8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_221FA7A78(0, 0, v3, &unk_221FBC238, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_221F29170()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];

  v5 = *(v4 + 128);
  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_221FA7A78(0, 0, v3, &unk_221FBC230, v7);

  v8 = v0[1];
  v9 = v0[11];

  return v8();
}

id sub_221F29288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_221F292D4()
{
  result = qword_281306E80;
  if (!qword_281306E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306E80);
  }

  return result;
}

uint64_t sub_221F29320(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_221ED4B5C(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_221ED6B78();
      }
    }

    else
    {
      v31 = v50;
      sub_221ED5174(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_221ED4B5C(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_221E96470();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221F295A8()
{
  result = qword_27CFEC348;
  if (!qword_27CFEC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC340, &unk_221FBC260);
    sub_221F2962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC348);
  }

  return result;
}

unint64_t sub_221F2962C()
{
  result = qword_27CFEC350;
  if (!qword_27CFEC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBD70, &unk_221FB9550);
    sub_221F296B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC350);
  }

  return result;
}

unint64_t sub_221F296B0()
{
  result = qword_27CFEC358;
  if (!qword_27CFEC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC358);
  }

  return result;
}

unint64_t sub_221F29714()
{
  result = qword_27CFEC368;
  if (!qword_27CFEC368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC360, qword_221FBC270);
    sub_221F29798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC368);
  }

  return result;
}

unint64_t sub_221F29798()
{
  result = qword_27CFEC370;
  if (!qword_27CFEC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC370);
  }

  return result;
}

id sub_221F297F4()
{
  v1 = v0;
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_221FB6978();

  v31 = 0xD000000000000012;
  v32 = 0x8000000221FC2A20;
  result = [*(v0 + 16) UUID];
  if (result)
  {
    v8 = result;
    sub_221FB5C18();

    v9 = sub_221FB5BE8();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    MEMORY[0x223DAC740](v9, v11);

    MEMORY[0x223DAC740](8236, 0xE200000000000000);
    v12 = 0xEE006E6F6974656CLL;
    v13 = 0x706D6F436C616F67;
    v14 = *(v1 + 40);
    v15 = 0xEF6E6F6974656C65;
    v16 = 0x4474756F6B726F77;
    if (v14 != 5)
    {
      v16 = 0x74697465706D6F63;
      v15 = 0xEF7473694C6E6F69;
    }

    v17 = 0xEB00000000746E65;
    v18 = 0x6D65766569686361;
    if (v14 != 3)
    {
      v18 = 0x74756F6B726F77;
      v17 = 0xE700000000000000;
    }

    if (*(v1 + 40) <= 4u)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v14 == 1)
    {
      v13 = 0xD000000000000019;
      v12 = 0x8000000221FC1BB0;
    }

    if (!*(v1 + 40))
    {
      v13 = 0xD000000000000015;
      v12 = 0x8000000221FC1BD0;
    }

    if (*(v1 + 40) <= 2u)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    if (*(v1 + 40) <= 2u)
    {
      v20 = v12;
    }

    else
    {
      v20 = v15;
    }

    MEMORY[0x223DAC740](v19, v20);

    MEMORY[0x223DAC740](8236, 0xE200000000000000);
    v21 = *v1;
    if (*v1 >> 62)
    {
      if (v21 < 0)
      {
        v27 = *v1;
      }

      v22 = sub_221FB6868();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v22;
    v23 = sub_221FB6B08();
    MEMORY[0x223DAC740](v23);

    MEMORY[0x223DAC740](0x202C6576617320, 0xE700000000000000);
    v24 = *(v1 + 8);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v28 = *(v1 + 8);
      }

      v25 = sub_221FB6868();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v25;
    v26 = sub_221FB6B08();
    MEMORY[0x223DAC740](v26);

    MEMORY[0x223DAC740](0x6574656C656420, 0xE700000000000000);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221F29B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_221F29BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F29C20(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F29D68()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[425];
  v2 = sub_221FB61D8();
  v0[426] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x6174614468737570, 0xEA00000000002928);
  v3 = *v1;
  v0[427] = *v1;

  return MEMORY[0x2822009F8](sub_221F29E50, v3, 0);
}

uint64_t sub_221F29E50()
{
  v1 = *(v0 + 3416);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3424) = v4;
  *v4 = v0;
  v4[1] = sub_221F29F3C;
  v5 = *(v0 + 3416);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F29F3C()
{
  v1 = *(*v0 + 3424);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2A038, 0, 0);
}

uint64_t sub_221F2A038()
{
  v1 = v0[426];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 369, v0[372]);
  sub_221E9DCE8(0xD00000000000007FLL, 0x8000000221FC2DA0, 0x6174614468737570, 0xEA00000000002928);
  __swift_project_boxed_opaque_existential_0Tm(v2 + 5, v2[8]);
  v3 = ASCloudKitGroupUserActionExplicit();
  v0[429] = v3;
  v4 = swift_task_alloc();
  v0[430] = v4;
  *v4 = v0;
  v4[1] = sub_221F2A138;

  return sub_221EEF754(v3, 0);
}

uint64_t sub_221F2A138()
{
  v2 = *(*v1 + 3440);
  v3 = *(*v1 + 3432);
  v6 = *v1;
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v4 = sub_221F3369C;
  }

  else
  {
    v4 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F2A284()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3400);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x7461446863746566, 0xEB00000000292861);
  v3 = *v1;
  *(v0 + 3408) = *v1;

  return MEMORY[0x2822009F8](sub_221F2A36C, v3, 0);
}

uint64_t sub_221F2A36C()
{
  v1 = *(v0 + 3408);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3416) = v4;
  *v4 = v0;
  v4[1] = sub_221F2A458;
  v5 = *(v0 + 3408);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2A458()
{
  v1 = *(*v0 + 3416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2A554, 0, 0);
}

uint64_t sub_221F2A554()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 369, v0[372]);
  v1 = swift_task_alloc();
  v0[428] = v1;
  *v1 = v0;
  v1[1] = sub_221F2A5F0;

  return sub_221F8E640();
}

uint64_t sub_221F2A5F0()
{
  v2 = *(*v1 + 3424);
  v5 = *v1;
  *(*v1 + 3432) = v0;

  if (v0)
  {
    v3 = sub_221F2A710;
  }

  else
  {

    v3 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2A710()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 3432);

  return v1();
}

uint64_t sub_221F2A774(uint64_t a1)
{
  *(v2 + 3408) = v1;
  *(v2 + 3400) = a1;
  return MEMORY[0x2822009F8](sub_221F2A798, 0, 0);
}

uint64_t sub_221F2A798()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[426];
  v2 = sub_221FB61D8();
  v0[427] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001ELL, 0x8000000221FC2D50);
  v3 = *v1;
  v0[428] = *v1;

  return MEMORY[0x2822009F8](sub_221F2A884, v3, 0);
}

uint64_t sub_221F2A884()
{
  v1 = *(v0 + 3424);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3432) = v4;
  *v4 = v0;
  v4[1] = sub_221F2A970;
  v5 = *(v0 + 3424);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2A970()
{
  v1 = *(*v0 + 3432);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2AA6C, 0, 0);
}

uint64_t sub_221F2AA6C()
{
  v1 = v0[427];
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD000000000000020, 0x8000000221FC2D70);
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v2 = swift_task_alloc();
  v0[430] = v2;
  *v2 = v0;
  v2[1] = sub_221F2AB4C;
  v3 = v0[425];

  return sub_221F6B068(v3);
}

uint64_t sub_221F2AB4C()
{
  v2 = *(*v1 + 3440);
  v5 = *v1;
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v3 = sub_221F2ACC4;
  }

  else
  {
    v3 = sub_221F2AC60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2AC60()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F2ACC4()
{
  sub_221E95288(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 3448);

  return v1();
}

uint64_t sub_221F2AD28(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2AE28, 0, 0);
}

uint64_t sub_221F2AE28()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[427];
  v2 = sub_221FB61D8();
  v0[432] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2C80);
  v3 = *v1;
  v0[433] = *v1;

  return MEMORY[0x2822009F8](sub_221F2AF14, v3, 0);
}

uint64_t sub_221F2AF14()
{
  v1 = *(v0 + 3464);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3472) = v4;
  *v4 = v0;
  v4[1] = sub_221F2B000;
  v5 = *(v0 + 3464);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2B000()
{
  v1 = *(*v0 + 3472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2B0FC, 0, 0);
}

uint64_t sub_221F2B0FC()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[432];
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD00000000000001ALL, 0x8000000221FC2D30);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
    v12 = swift_task_alloc();
    v0[435] = v12;
    *v12 = v0;
    v12[1] = sub_221F2B2D0;
    v13 = v0[431];

    return sub_221F6CC20(v13);
  }
}

uint64_t sub_221F2B2D0()
{
  v2 = *(*v1 + 3480);
  v5 = *v1;
  *(*v1 + 3488) = v0;

  if (v0)
  {
    v3 = sub_221F2B47C;
  }

  else
  {
    v3 = sub_221F2B3E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2B3E4()
{
  v1 = v0[428];
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_221F2B47C()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  v1 = v0[436];
  v2 = v0[431];
  v3 = v0[428];
  sub_221E95288((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_221F2B51C(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2B61C, 0, 0);
}

uint64_t sub_221F2B61C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000021, 0x8000000221FC2C30);
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    v8 = v0[431];
    v9 = v0[428];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[427];
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    v13 = *v12;
    v0[432] = *v12;

    return MEMORY[0x2822009F8](sub_221F2B80C, v13, 0);
  }
}

uint64_t sub_221F2B80C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2B8F8;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2B8F8()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2B9F4, 0, 0);
}

uint64_t sub_221F2B9F4()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v1 = swift_task_alloc();
  v0[434] = v1;
  *v1 = v0;
  v1[1] = sub_221F2BA98;
  v2 = v0[431];

  return sub_221F6E094(v2);
}

uint64_t sub_221F2BA98()
{
  v2 = *(*v1 + 3472);
  v5 = *v1;
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v3 = sub_221F336A0;
  }

  else
  {
    v3 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2BBAC(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2BCAC, 0, 0);
}

uint64_t sub_221F2BCAC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2C60);
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    v8 = v0[431];
    v9 = v0[428];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[427];
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    v13 = *v12;
    v0[432] = *v12;

    return MEMORY[0x2822009F8](sub_221F2BE9C, v13, 0);
  }
}

uint64_t sub_221F2BE9C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2BF88;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2BF88()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2C084, 0, 0);
}

uint64_t sub_221F2C084()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 262, v0[265]);
  v1 = swift_task_alloc();
  v0[434] = v1;
  *v1 = v0;
  v1[1] = sub_221F2C128;
  v2 = v0[431];

  return sub_221F6DBCC(v2);
}

uint64_t sub_221F2C128()
{
  v2 = *(*v1 + 3472);
  v5 = *v1;
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v3 = sub_221F2C23C;
  }

  else
  {
    v3 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2C23C()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  sub_221E95288((v0 + 2));
  v1 = v0[435];
  v2 = v0[431];
  v3 = v0[428];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221F2C2D0(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  return MEMORY[0x2822009F8](sub_221F2C2F8, 0, 0);
}

uint64_t sub_221F2C2F8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000013, 0x8000000221FC2C10);
  v3 = *v1;
  *(v0 + 3424) = *v1;

  return MEMORY[0x2822009F8](sub_221F2C3E0, v3, 0);
}

uint64_t sub_221F2C3E0()
{
  v1 = *(v0 + 3424);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3432) = v4;
  *v4 = v0;
  v4[1] = sub_221F2C4CC;
  v5 = *(v0 + 3424);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2C4CC()
{
  v1 = *(*v0 + 3432);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2C5C8, 0, 0);
}

uint64_t sub_221F2C5C8()
{
  __swift_project_boxed_opaque_existential_0Tm(v0 + 57, v0[60]);
  v1 = swift_task_alloc();
  v0[430] = v1;
  *v1 = v0;
  v1[1] = sub_221F2C670;
  v2 = v0[426];
  v3 = v0[425];

  return sub_221EE1974(v3, v2);
}

uint64_t sub_221F2C670()
{
  v2 = *(*v1 + 3440);
  v5 = *v1;
  *(*v1 + 3448) = v0;

  if (v0)
  {
    v3 = sub_221F3369C;
  }

  else
  {
    v3 = sub_221F336B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2C784(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2C884, 0, 0);
}

uint64_t sub_221F2C884()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000020, 0x8000000221FC2BE0);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2C96C, v3, 0);
}

uint64_t sub_221F2C96C()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2CA58;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2CA58()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2CB54, 0, 0);
}

uint64_t sub_221F2CB54()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 297, v0[300]);
    v11 = swift_task_alloc();
    v0[434] = v11;
    *v11 = v0;
    v11[1] = sub_221F2CCEC;
    v12 = v0[431];

    return sub_221F4519C(v12);
  }
}

uint64_t sub_221F2CCEC()
{
  v2 = *(*v1 + 3472);
  v5 = *v1;
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v3 = sub_221F336B4;
  }

  else
  {
    v3 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2CE00(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2CF00, 0, 0);
}

uint64_t sub_221F2CF00()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000020, 0x8000000221FC26C0);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2CFE8, v3, 0);
}

uint64_t sub_221F2CFE8()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2D0D4;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D0D4()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2D1D0, 0, 0);
}

uint64_t sub_221F2D1D0()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 277, v0[280]);
    v11 = swift_task_alloc();
    v0[434] = v11;
    *v11 = v0;
    v11[1] = sub_221F2CCEC;
    v12 = v0[431];

    return sub_221EFF0EC(v12);
  }
}

uint64_t sub_221F2D388()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3400);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000013, 0x8000000221FC2BC0);
  v3 = *v1;
  *(v0 + 3408) = *v1;

  return MEMORY[0x2822009F8](sub_221F2D470, v3, 0);
}

uint64_t sub_221F2D470()
{
  v1 = *(v0 + 3408);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3416) = v4;
  *v4 = v0;
  v4[1] = sub_221F2D55C;
  v5 = *(v0 + 3408);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D55C()
{
  v1 = *(*v0 + 3416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221E95200, 0, 0);
}

uint64_t sub_221F2D658(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2D758, 0, 0);
}

uint64_t sub_221F2D758()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD000000000000023, 0x8000000221FC2B90);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2D840, v3, 0);
}

uint64_t sub_221F2D840()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2D92C;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2D92C()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2DA28, 0, 0);
}

uint64_t sub_221F2DA28()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 272, v0[275]);
    v11 = swift_task_alloc();
    v0[434] = v11;
    *v11 = v0;
    v11[1] = sub_221F2CCEC;
    v12 = v0[431];

    return sub_221EB6F64(v12);
  }
}

uint64_t sub_221F2DBC0(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2DCC0, 0, 0);
}

uint64_t sub_221F2DCC0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000002ELL, 0x8000000221FC2B60);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2DDA8, v3, 0);
}

uint64_t sub_221F2DDA8()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2DE94;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2DE94()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2DF90, 0, 0);
}

uint64_t sub_221F2DF90()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 272, v0[275]);
    v11 = swift_task_alloc();
    v0[434] = v11;
    *v11 = v0;
    v11[1] = sub_221F2CCEC;
    v12 = v0[431];

    return sub_221EB753C(v12);
  }
}

uint64_t sub_221F2E128(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2E228, 0, 0);
}

uint64_t sub_221F2E228()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2B40);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2E310, v3, 0);
}

uint64_t sub_221F2E310()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2E3FC;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2E3FC()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2E4F8, 0, 0);
}

uint64_t sub_221F2E4F8()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 287, v0[290]);
    v11 = ASCloudKitGroupUserActionExplicit();
    v0[434] = v11;
    v12 = swift_task_alloc();
    v0[435] = v12;
    *v12 = v0;
    v12[1] = sub_221F2E6AC;
    v13 = v0[431];

    return sub_221EF560C(v13, 4, v11);
  }
}

uint64_t sub_221F2E6AC()
{
  v2 = *v1;
  v3 = *(*v1 + 3480);
  v4 = *v1;
  *(*v1 + 3488) = v0;

  if (v0)
  {
    v5 = sub_221F336B8;
  }

  else
  {
    v5 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F2E7E0(uint64_t a1)
{
  v2[426] = v1;
  v2[425] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v2[427] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v2[428] = v4;
  v5 = *(v4 - 8);
  v2[429] = v5;
  v6 = *(v5 + 64) + 15;
  v2[430] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2E8DC, 0, 0);
}

uint64_t sub_221F2E8DC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000002CLL, 0x8000000221FC2B10);
  v3 = *v1;
  *(v0 + 3448) = *v1;

  return MEMORY[0x2822009F8](sub_221F2E9C4, v3, 0);
}

uint64_t sub_221F2E9C4()
{
  v1 = *(v0 + 3448);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3456) = v4;
  *v4 = v0;
  v4[1] = sub_221F2EAB0;
  v5 = *(v0 + 3448);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2EAB0()
{
  v1 = *(*v0 + 3456);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2EBAC, 0, 0);
}

uint64_t sub_221F2EBAC()
{
  v1 = v0[429];
  v2 = v0[428];
  v3 = v0[427];
  v4 = v0[425];
  sub_221FB6148();
  sub_221FB5BD8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[427]);
    sub_221E9CEB4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[430];
    v7 = v0[427];
    sub_221E95288((v0 + 2));

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[425];
    (*(v0[429] + 32))(v0[430], v0[427], v0[428]);
    v11 = sub_221FB6138();
    __swift_project_boxed_opaque_existential_0Tm(v0 + 282, v0[285]);
    v12 = swift_task_alloc();
    v0[433] = v12;
    *v12 = v0;
    v12[1] = sub_221F2ED70;
    v13 = v0[430];

    return sub_221F22EA8(v11 & 1, v13);
  }
}

uint64_t sub_221F2ED70()
{
  v2 = *(*v1 + 3464);
  v5 = *v1;
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v3 = sub_221F336BC;
  }

  else
  {
    v3 = sub_221F336A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2EE84(uint64_t a1)
{
  v2[426] = v1;
  v2[425] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v2[427] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v2[428] = v4;
  v5 = *(v4 - 8);
  v2[429] = v5;
  v6 = *(v5 + 64) + 15;
  v2[430] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2EF80, 0, 0);
}

uint64_t sub_221F2EF80()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000003CLL, 0x8000000221FC2AD0);
  v3 = *v1;
  *(v0 + 3448) = *v1;

  return MEMORY[0x2822009F8](sub_221F2F068, v3, 0);
}

uint64_t sub_221F2F068()
{
  v1 = *(v0 + 3448);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3456) = v4;
  *v4 = v0;
  v4[1] = sub_221F2F154;
  v5 = *(v0 + 3448);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F336AC, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2F154()
{
  v1 = *(*v0 + 3456);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2F250, 0, 0);
}

uint64_t sub_221F2F250()
{
  v1 = v0[429];
  v2 = v0[428];
  v3 = v0[427];
  v4 = v0[425];
  sub_221FB5C88();
  sub_221FB5BD8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[427]);
    sub_221E9CEB4();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[430];
    v7 = v0[427];
    sub_221E95288((v0 + 2));

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[425];
    (*(v0[429] + 32))(v0[430], v0[427], v0[428]);
    v11 = sub_221FB5C78();
    __swift_project_boxed_opaque_existential_0Tm(v0 + 302, v0[305]);
    v12 = swift_task_alloc();
    v0[433] = v12;
    *v12 = v0;
    v12[1] = sub_221F2F414;
    v13 = v0[430];

    return sub_221EA6AB8(v11 & 1, v13);
  }
}

uint64_t sub_221F2F414()
{
  v2 = *(*v1 + 3464);
  v5 = *v1;
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v3 = sub_221F2F5C0;
  }

  else
  {
    v3 = sub_221F2F528;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2F528()
{
  v1 = v0[427];
  (*(v0[429] + 8))(v0[430], v0[428]);
  sub_221E95288((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_221F2F5C0()
{
  (*(v0[429] + 8))(v0[430], v0[428]);
  v1 = v0[434];
  v2 = v0[430];
  v3 = v0[427];
  sub_221E95288((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_221F2F660(uint64_t a1, uint64_t a2)
{
  v3[427] = v2;
  v3[426] = a2;
  v3[425] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[428] = swift_task_alloc();
  v5 = sub_221FB5C38();
  v3[429] = v5;
  v6 = *(v5 - 8);
  v3[430] = v6;
  v7 = *(v6 + 64) + 15;
  v3[431] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F2F760, 0, 0);
}

uint64_t sub_221F2F760()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3416);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0xD00000000000001FLL, 0x8000000221FC2870);
  v3 = *v1;
  *(v0 + 3456) = *v1;

  return MEMORY[0x2822009F8](sub_221F2F848, v3, 0);
}

uint64_t sub_221F2F848()
{
  v1 = *(v0 + 3456);
  v2 = sub_221F335D4();
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 3464) = v4;
  *v4 = v0;
  v4[1] = sub_221F2F934;
  v5 = *(v0 + 3456);

  return MEMORY[0x2822007B8](v0 + 16, v1, v2, 0x6D6E6F7269766E65, 0xED00002928746E65, sub_221F3362C, v5, &type metadata for SecureCloudEnvironment);
}

uint64_t sub_221F2F934()
{
  v1 = *(*v0 + 3464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F2FA30, 0, 0);
}

uint64_t sub_221F2FA30()
{
  v1 = v0[430];
  v2 = v0[429];
  v3 = v0[428];
  v4 = v0[426];
  v5 = v0[425];
  sub_221FB5BD8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_221F33634(v0[428]);
    sub_221E9CEB4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[431];
    v8 = v0[428];
    sub_221E95288((v0 + 2));

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[430] + 32))(v0[431], v0[428], v0[429]);
    __swift_project_boxed_opaque_existential_0Tm(v0 + 292, v0[295]);
    v11 = swift_task_alloc();
    v0[434] = v11;
    *v11 = v0;
    v11[1] = sub_221F2FBC8;
    v12 = v0[431];

    return sub_221F0B3BC(v12);
  }
}

uint64_t sub_221F2FBC8()
{
  v2 = *(*v1 + 3472);
  v5 = *v1;
  *(*v1 + 3480) = v0;

  if (v0)
  {
    v3 = sub_221F2FCDC;
  }

  else
  {
    v3 = sub_221F336A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F2FCDC()
{
  (*(v0[430] + 8))(v0[431], v0[429]);
  v1 = v0[435];
  v2 = v0[431];
  v3 = v0[428];
  sub_221E95288((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_221F2FD9C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000081, 0x8000000221FC2A40, 0x6574617669746361, 0xEA00000000002928);
  v4 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v4);
  sub_221F32250(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 792) = v5;
  v6 = *(v0 + 32);
  v5[1] = *(v0 + 16);
  v5[2] = v6;
  v5[3] = *(v0 + 48);
  v7 = *(MEMORY[0x277CE93C8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 800) = v8;
  *v8 = v0;
  v8[1] = sub_221F2FF28;

  return MEMORY[0x28213ACC8](1101, &unk_221FBC478, v5, v4, v3);
}

uint64_t sub_221F2FF28()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 792);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30040, 0, 0);
}

uint64_t sub_221F30040()
{
  v1 = *(v0 + 784);
  v3 = v1[4];
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v3);
  sub_221F32250(v1, v0 + 64);
  v4 = swift_allocObject();
  *(v0 + 808) = v4;
  v5 = *(v0 + 80);
  v4[1] = *(v0 + 64);
  v4[2] = v5;
  v4[3] = *(v0 + 96);
  v6 = *(MEMORY[0x277CE93C8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 816) = v7;
  *v7 = v0;
  v7[1] = sub_221F30150;

  return MEMORY[0x28213ACC8](1102, &unk_221FBC488, v4, v3, v2);
}

uint64_t sub_221F30150()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 808);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30268, 0, 0);
}

uint64_t sub_221F30268()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 112);
  v4 = swift_allocObject();
  *(v0 + 824) = v4;
  v5 = *(v0 + 128);
  v4[1] = *(v0 + 112);
  v4[2] = v5;
  v4[3] = *(v0 + 144);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 832) = v7;
  v8 = sub_221FB5E48();
  *v7 = v0;
  v7[1] = sub_221F30398;
  v9 = MEMORY[0x277CE93D0];

  return MEMORY[0x28213ACB8](1103, &unk_221FBC498, v4, v2, v8, v3, v9);
}

uint64_t sub_221F30398()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F304B0, 0, 0);
}

uint64_t sub_221F304B0()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 160);
  v4 = swift_allocObject();
  *(v0 + 840) = v4;
  v5 = *(v0 + 176);
  v4[1] = *(v0 + 160);
  v4[2] = v5;
  v4[3] = *(v0 + 192);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 848) = v7;
  *v7 = v0;
  v7[1] = sub_221F305D0;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1105, &unk_221FBC4A8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F305D0()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 840);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F306E8, 0, 0);
}

uint64_t sub_221F306E8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 208);
  v4 = swift_allocObject();
  *(v0 + 856) = v4;
  v5 = *(v0 + 224);
  v4[1] = *(v0 + 208);
  v4[2] = v5;
  v4[3] = *(v0 + 240);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 864) = v7;
  *v7 = v0;
  v7[1] = sub_221F30808;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1107, &unk_221FBC4B8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F30808()
{
  v1 = *(*v0 + 864);
  v2 = *(*v0 + 856);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30920, 0, 0);
}

uint64_t sub_221F30920()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 256);
  v4 = swift_allocObject();
  *(v0 + 872) = v4;
  v5 = *(v0 + 272);
  v4[1] = *(v0 + 256);
  v4[2] = v5;
  v4[3] = *(v0 + 288);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 880) = v7;
  *v7 = v0;
  v7[1] = sub_221F30A40;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1106, &unk_221FBC4C8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F30A40()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 872);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30B58, 0, 0);
}

uint64_t sub_221F30B58()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 304);
  v4 = swift_allocObject();
  *(v0 + 888) = v4;
  v5 = *(v0 + 320);
  v4[1] = *(v0 + 304);
  v4[2] = v5;
  v4[3] = *(v0 + 336);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 896) = v7;
  *v7 = v0;
  v7[1] = sub_221F30C78;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1150, &unk_221FBC4D8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F30C78()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30D90, 0, 0);
}

uint64_t sub_221F30D90()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 352);
  v4 = swift_allocObject();
  *(v0 + 904) = v4;
  v5 = *(v0 + 368);
  v4[1] = *(v0 + 352);
  v4[2] = v5;
  v4[3] = *(v0 + 384);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 912) = v7;
  *v7 = v0;
  v7[1] = sub_221F30EB0;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1108, &unk_221FBC4E8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F30EB0()
{
  v1 = *(*v0 + 912);
  v2 = *(*v0 + 904);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F30FC8, 0, 0);
}

uint64_t sub_221F30FC8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 400);
  v4 = swift_allocObject();
  *(v0 + 920) = v4;
  v5 = *(v0 + 416);
  v4[1] = *(v0 + 400);
  v4[2] = v5;
  v4[3] = *(v0 + 432);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 928) = v7;
  *v7 = v0;
  v7[1] = sub_221F310E8;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1110, &unk_221FBC4F8, v4, v2, v8, v3, v9);
}

uint64_t sub_221F310E8()
{
  v1 = *(*v0 + 928);
  v2 = *(*v0 + 920);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31200, 0, 0);
}

uint64_t sub_221F31200()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 448);
  v4 = swift_allocObject();
  *(v0 + 936) = v4;
  v5 = *(v0 + 464);
  v4[1] = *(v0 + 448);
  v4[2] = v5;
  v4[3] = *(v0 + 480);
  v6 = *(MEMORY[0x277CE93A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 944) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2A0, &qword_221FBC510);
  v9 = sub_221F32E08();
  *v7 = v0;
  v7[1] = sub_221F31340;

  return MEMORY[0x28213ACA8](1111, &unk_221FBC508, v4, v2, v8, v3, v9);
}

uint64_t sub_221F31340()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31458, 0, 0);
}

uint64_t sub_221F31458()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 496);
  v4 = swift_allocObject();
  *(v0 + 952) = v4;
  v5 = *(v0 + 512);
  v4[1] = *(v0 + 496);
  v4[2] = v5;
  v4[3] = *(v0 + 528);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 960) = v7;
  *v7 = v0;
  v7[1] = sub_221F31578;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1153, &unk_221FBC520, v4, v2, v8, v3, v9);
}

uint64_t sub_221F31578()
{
  v1 = *(*v0 + 960);
  v2 = *(*v0 + 952);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31690, 0, 0);
}

uint64_t sub_221F31690()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 544);
  v4 = swift_allocObject();
  *(v0 + 968) = v4;
  v5 = *(v0 + 560);
  v4[1] = *(v0 + 544);
  v4[2] = v5;
  v4[3] = *(v0 + 576);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 976) = v7;
  *v7 = v0;
  v7[1] = sub_221F317B0;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1156, &unk_221FBC530, v4, v2, v8, v3, v9);
}

uint64_t sub_221F317B0()
{
  v1 = *(*v0 + 976);
  v2 = *(*v0 + 968);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F318C8, 0, 0);
}

uint64_t sub_221F318C8()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 592);
  v4 = swift_allocObject();
  *(v0 + 984) = v4;
  v5 = *(v0 + 608);
  v4[1] = *(v0 + 592);
  v4[2] = v5;
  v4[3] = *(v0 + 624);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 992) = v7;
  *v7 = v0;
  v7[1] = sub_221F319E8;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1157, &unk_221FBC540, v4, v2, v8, v3, v9);
}

uint64_t sub_221F319E8()
{
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 984);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31B00, 0, 0);
}

uint64_t sub_221F31B00()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 640);
  v4 = swift_allocObject();
  *(v0 + 1000) = v4;
  v5 = *(v0 + 656);
  v4[1] = *(v0 + 640);
  v4[2] = v5;
  v4[3] = *(v0 + 672);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1008) = v7;
  v8 = sub_221FB6158();
  *v7 = v0;
  v7[1] = sub_221F31C30;
  v9 = MEMORY[0x277CE9440];

  return MEMORY[0x28213ACB8](1158, &unk_221FBC550, v4, v2, v8, v3, v9);
}

uint64_t sub_221F31C30()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 1000);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31D48, 0, 0);
}

uint64_t sub_221F31D48()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 688);
  v4 = swift_allocObject();
  *(v0 + 1016) = v4;
  v5 = *(v0 + 704);
  v4[1] = *(v0 + 688);
  v4[2] = v5;
  v4[3] = *(v0 + 720);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1024) = v7;
  v8 = sub_221FB5C98();
  *v7 = v0;
  v7[1] = sub_221F31E78;
  v9 = MEMORY[0x277CE9350];

  return MEMORY[0x28213ACB8](1159, &unk_221FBC560, v4, v2, v8, v3, v9);
}

uint64_t sub_221F31E78()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F31F90, 0, 0);
}

uint64_t sub_221F31F90()
{
  v1 = *(v0 + 784);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 1, v2);
  sub_221F32250(v1, v0 + 736);
  v4 = swift_allocObject();
  *(v0 + 1032) = v4;
  v5 = *(v0 + 752);
  v4[1] = *(v0 + 736);
  v4[2] = v5;
  v4[3] = *(v0 + 768);
  v6 = *(MEMORY[0x277CE93B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 1040) = v7;
  *v7 = v0;
  v7[1] = sub_221F320B0;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACB8](1160, &unk_221FBC570, v4, v2, v8, v3, v9);
}

uint64_t sub_221F320B0()
{
  v1 = *(*v0 + 1040);
  v2 = *(*v0 + 1032);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_221F321C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F29D48();
}

uint64_t sub_221F32288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F321C0();
}

uint64_t sub_221F3231C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F2A264();
}

uint64_t sub_221F323AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221F3231C();
}

uint64_t sub_221F32440(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F2A774(a1);
}

uint64_t sub_221F324D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32440(a1);
}

uint64_t sub_221F32570(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2AD28(v2, v3);
}

uint64_t sub_221F32614(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32570(a1);
}

uint64_t sub_221F326AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2BBAC(v2, v3);
}

uint64_t sub_221F32750(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F326AC(a1);
}

uint64_t sub_221F327E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2B51C(v2, v3);
}

uint64_t sub_221F3288C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F327E8(a1);
}

uint64_t sub_221F32924(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2C2D0(v2, v3);
}

uint64_t sub_221F329C8(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32924(a1);
}

uint64_t sub_221F32A60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2C784(v2, v3);
}

uint64_t sub_221F32B04(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32A60(a1);
}

uint64_t sub_221F32B9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2CE00(v2, v3);
}

uint64_t sub_221F32C40(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32B9C(a1);
}

uint64_t sub_221F32CD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221E952DC;

  return sub_221F2D368();
}

uint64_t sub_221F32D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F32CD8(a1);
}

unint64_t sub_221F32E08()
{
  result = qword_281306F50;
  if (!qword_281306F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC2A0, &qword_221FBC510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F50);
  }

  return result;
}

uint64_t sub_221F32E84(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2D658(v2, v3);
}

uint64_t sub_221F32F28(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32E84(a1);
}

uint64_t sub_221F32FC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2DBC0(v2, v3);
}

uint64_t sub_221F33064(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F32FC0(a1);
}

uint64_t sub_221F330FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2E128(v2, v3);
}

uint64_t sub_221F331A0(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F330FC(a1);
}

uint64_t sub_221F33238(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F2E7E0(a1);
}

uint64_t sub_221F332D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33238(a1);
}

uint64_t sub_221F33368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F2EE84(a1);
}

uint64_t sub_221F33400(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33368(a1);
}

uint64_t sub_221F33498(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E963B4;

  return sub_221F2F660(v2, v3);
}

uint64_t sub_221F3353C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221F33498(a1);
}

unint64_t sub_221F335D4()
{
  result = qword_281307270;
  if (!qword_281307270)
  {
    type metadata accessor for SecureCloudActivationGateway();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307270);
  }

  return result;
}

uint64_t sub_221F33634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_221F336CC()
{
  [*__swift_project_boxed_opaque_existential_0Tm(&v0[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator] *&v0[OBJC:sel_removeObserver_ IVAR:v0 :? :? :? TtC23ActivitySharingServices17MigrationObserver:?cloudKitCoordinator + 24])];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221F337FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_221F33820, 0, 0);
}

uint64_t sub_221F33820()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A8, &unk_221FBC660);
  v6 = sub_221F35DE8();
  *v4 = v0;
  v4[1] = sub_221F33918;

  return MEMORY[0x28213AEC8](&unk_221FBC658, v2, v5, v6);
}

void sub_221F33918()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    MEMORY[0x2822009F8](sub_221F33A54, 0, 0);
  }
}

uint64_t sub_221F33A54()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F33AB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F33ADC, 0, 0);
}

uint64_t sub_221F33ADC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[4] = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Storing migration available item %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = *__swift_project_boxed_opaque_existential_0Tm((v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_221F33CA4;
  v13 = v0[3];

  return sub_221F276D8(v13);
}

uint64_t sub_221F33CA4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F33DD8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_221F33DD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  if (v7)
  {
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to store migration available item: %@, error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F33F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_221F33F90, 0, 0);
}

uint64_t sub_221F33F90()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(*(v0 + 40) + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v2 = *v1;
  *(v0 + 72) = *v1;

  return MEMORY[0x2822009F8](sub_221F3400C, v2, 0);
}

uint64_t sub_221F3400C()
{
  v7 = v0;
  v1 = *(*(v0 + 72) + 120);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = sub_221E9E980(*(v1 + 16), 0);
      v4 = sub_221E9EDC0(&v6, v3 + 4, v2, v1);

      sub_221E96470();
      if (v4 == v2)
      {
        goto LABEL_6;
      }

      __break(1u);
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_6:
  *(v0 + 80) = v3;

  return MEMORY[0x2822009F8](sub_221F3410C, 0, 0);
}

uint64_t sub_221F3410C()
{
  v59 = v0;
  v1 = *(v0 + 80);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_221ED84F8(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v5 = 0;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v56 = v1 & 0xC000000000000001;
    v53 = v52[10] + 32;
    while (1)
    {
      if (v56)
      {
        v8 = MEMORY[0x223DACD50](v5, v52[10]);
      }

      else
      {
        if (v5 >= *(v55 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v53 + 8 * v5);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = [v8 systemFieldsOnlyRecord];
      v12 = [v11 recordID];

      if ((v3 & 0xC000000000000001) != 0)
      {
        if (v3 < 0)
        {
          v1 = v3;
        }

        else
        {
          v1 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        v13 = v9;
        v14 = sub_221FB6868();
        if (__OFADD__(v14, 1))
        {
          goto LABEL_34;
        }

        v3 = sub_221F10AD8(v1, v14 + 1);
      }

      else
      {
        v15 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v3;
      v1 = v3;
      v17 = sub_221ED4CAC(v12);
      v19 = *(v3 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_33;
      }

      v23 = v18;
      if (*(v3 + 24) < v22)
      {
        sub_221ED60E0(v22, isUniquelyReferenced_nonNull_native);
        v3 = v58;
        v1 = v58;
        v17 = sub_221ED4CAC(v12);
        if ((v23 & 1) != (v24 & 1))
        {
          sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);

          return sub_221FB6B98();
        }

LABEL_22:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v1 = &v58;
      v27 = v2;
      v28 = v17;
      sub_221ED7424();
      v17 = v28;
      v2 = v27;
      v3 = v58;
      if (v23)
      {
LABEL_4:
        v6 = *(v3 + 56);
        v7 = *(v6 + 8 * v17);
        *(v6 + 8 * v17) = v9;

        goto LABEL_5;
      }

LABEL_23:
      *(v3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
      *(*(v3 + 48) + 8 * v17) = v12;
      *(*(v3 + 56) + 8 * v17) = v9;

      v25 = *(v3 + 16);
      v21 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v26;
LABEL_5:
      ++v5;
      if (v10 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (v52[10] < 0)
    {
      v30 = v52[10];
    }
  }

LABEL_39:
  v31 = v52[10];
  v32 = v52[6];

  v58 = v2;
  if (v32 >> 62)
  {
LABEL_69:
    v57 = v32 & 0xFFFFFFFFFFFFFF8;
    v52[6];
    v33 = sub_221FB6868();
  }

  else
  {
    v57 = v32 & 0xFFFFFFFFFFFFFF8;
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v52[6];
  v52[11] = v2;
  if (!v33)
  {
    v54 = v2;
    goto LABEL_64;
  }

  v2 = 0;
  v35 = v32 & 0xC000000000000001;
  v36 = v34 + 32;
  v54 = MEMORY[0x277D84F90];
  do
  {
    v37 = v2;
    while (1)
    {
      if (v35)
      {
        v38 = MEMORY[0x223DACD50](v37, v52[6]);
      }

      else
      {
        if (v37 >= *(v57 + 16))
        {
          goto LABEL_68;
        }

        v38 = *(v36 + 8 * v37);
      }

      v39 = v38;
      v2 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      v40 = sub_221FB6A38();
      if (!v40)
      {
        goto LABEL_44;
      }

      v32 = v52;
      v52[3] = v40;
      sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
      swift_dynamicCast();
      v41 = v52[2];

      if (v41)
      {
        goto LABEL_59;
      }

LABEL_45:
      ++v37;
      if (v2 == v33)
      {
        goto LABEL_64;
      }
    }

    if (!*(v3 + 16) || (v32 = v3, v42 = sub_221ED4CAC(v38), (v43 & 1) == 0))
    {
LABEL_44:

      goto LABEL_45;
    }

    v44 = *(*(v3 + 56) + 8 * v42);

    if (!v44)
    {
      goto LABEL_45;
    }

LABEL_59:
    MEMORY[0x223DAC7E0]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_221FB6458();
    }

    v32 = &v58;
    sub_221FB6478();
    v54 = v58;
    v52[11] = v58;
  }

  while (v2 != v33);
LABEL_64:
  v46 = v52[5];

  v52[4] = v54;
  v47 = swift_task_alloc();
  v52[12] = v47;
  *(v47 + 16) = v46;
  v48 = *(MEMORY[0x277CE94D8] + 4);
  v49 = swift_task_alloc();
  v52[13] = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A8, &unk_221FBC660);
  v51 = sub_221F35DE8();
  *v49 = v52;
  v49[1] = sub_221F346A8;

  return MEMORY[0x28213AEC8](&unk_221FBC690, v47, v50, v51);
}

void sub_221F346A8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_221F347EC, 0, 0);
  }
}

uint64_t sub_221F347EC()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F34850(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F34874, 0, 0);
}

uint64_t sub_221F34874()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  v0[4] = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Removing migration available item %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = *__swift_project_boxed_opaque_existential_0Tm((v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v10 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_221F34A3C;
  v13 = v0[3];

  return sub_221F28A54(v13);
}

uint64_t sub_221F34A3C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F34B70, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_221F34B70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  if (v7)
  {
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to remove migration available item: %@, error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F34D80()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[3] = __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Full fetch type, clearing all migration available items", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *__swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore + 24));
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_221F34EE8;

  return sub_221F28158();
}

uint64_t sub_221F34EE8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F3501C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_221F3501C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed clear all migration available items, error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_221F35294(void *a1, int a2, void *a3, int a4, void *aBlock, const char *a6)
{
  v9 = _Block_copy(aBlock);
  sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
  v10 = sub_221FB6438();
  _Block_copy(v9);
  v11 = a3;
  v12 = a1;
  sub_221F357C0(v10, v12, v9, a6);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_221F3556C(unint64_t a1, void *a2, void (**a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v11 = sub_221FB61D8();
  __swift_project_value_buffer(v11, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000007CLL, 0x8000000221FC2EA0, 0xD000000000000031, 0x8000000221FC2F70);
  if (a1 >> 62)
  {
    if (sub_221FB6868())
    {
      goto LABEL_5;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v12 = sub_221FB64C8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;
    v13[5] = a1;
    v13[6] = sub_221F36194;
    v13[7] = v10;
    v14 = a2;

    sub_221FA7A78(0, 0, v9, &unk_221FBC680, v13);
  }

  a3[2](a3);
}

void sub_221F357C0(unint64_t a1, void *a2, void *aBlock, const char *a4)
{
  _Block_copy(aBlock);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v14 = MEMORY[0x223DAC810](a1, v13);
    v16 = sub_221EF4114(v14, v15, &v17);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_221E93000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  _Block_copy(aBlock);
  sub_221F3556C(a1, a2, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_221F35984(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v18 = sub_221FB61D8();
  v19 = __swift_project_value_buffer(v18, qword_281307DF0);

  v44 = v19;
  v20 = sub_221FB61B8();
  v21 = sub_221FB65C8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = v10;
    v23 = v22;
    v41 = swift_slowAlloc();
    v45 = v41;
    *v23 = 136315138;
    v24 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
    v25 = MEMORY[0x223DAC810](a1, v24);
    v40 = a4;
    v42 = a5;
    v27 = v21;
    v28 = v17;
    v29 = a1;
    v30 = a2;
    v31 = a3;
    v32 = a6;
    v33 = sub_221EF4114(v25, v26, &v45);

    *(v23 + 4) = v33;
    a6 = v32;
    a3 = v31;
    a2 = v30;
    a1 = v29;
    v17 = v28;
    _os_log_impl(&dword_221E93000, v20, v27, v40, v23, 0xCu);
    v34 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223DADA80](v34, -1, -1);
    v35 = v23;
    v10 = v43;
    MEMORY[0x223DADA80](v35, -1, -1);
  }

  sub_221E9DCE8(0xD00000000000007CLL, 0x8000000221FC2EA0, 0xD000000000000041, 0x8000000221FC2F20);
  v36 = sub_221FB64C8();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = a1;
  v37[5] = v10;
  v37[6] = a2;
  v37[7] = a3;

  v38 = v10;

  sub_221FA7A78(0, 0, v17, a6, v37);
}

uint64_t sub_221F35C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E963B4;

  return sub_221F337FC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F35D4C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221F33AB8(a1, v4);
}

unint64_t sub_221F35DE8()
{
  result = qword_27CFEC3B0;
  if (!qword_27CFEC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC3A8, &unk_221FBC660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC3B0);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_221F35E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E9544C;

  return sub_221F337FC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F35F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E963B4;

  return sub_221F33F6C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_221F36044(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F34850(a1, v4);
}

uint64_t sub_221F360E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221F34D60(a1, v4, v5, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_221F361C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_221F36208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F36520(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  swift_unknownObjectRetain();
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_221F36620;

  return sub_221F37654(v11, a3);
}

uint64_t sub_221F36620(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  swift_unknownObjectRelease();
  if (v1)
  {
    if (v6)
    {
      v12 = *(v4 + 48);
      v13 = sub_221FB5A98();

      (v12)[2](v12, 0, v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v14 = *(v4 + 48);
    v14[2](v14, a1 & 1, 0);
    _Block_release(v14);
  }

  v15 = *(v11 + 8);

  return v15();
}

uint64_t sub_221F369CC(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a2;

  return MEMORY[0x2822009F8](sub_221F36A68, 0, 0);
}

uint64_t sub_221F36A68()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD000000000000040, 0x8000000221FC32E0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer), *(v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_221F36B98;
  v5 = v0[2];
  v4 = v0[3];

  return sub_221EEF754(v5, v4);
}

uint64_t sub_221F36B98()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_221F36D4C;
  }

  else
  {
    v3 = sub_221F36CAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}