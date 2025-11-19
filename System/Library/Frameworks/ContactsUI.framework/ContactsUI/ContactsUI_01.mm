uint64_t sub_199AA44B4()
{
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2280);
  v9 = *(v0 + 2392);
  v3 = sub_199DFA16C();
  *(v0 + 2464) = v3;
  v4 = swift_task_alloc();
  *(v0 + 2472) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = 0;
  *(v4 + 48) = v2;
  *(v4 + 56) = v0 + 1976;
  v5 = swift_task_alloc();
  *(v0 + 2480) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  *v5 = v0;
  v5[1] = sub_199AA4628;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2056, v3, v7, 0xD00000000000003ELL, 0x8000000199E44F90, sub_199AA7230, v4, v6);
}

uint64_t sub_199AA4628()
{
  v1 = *v0;

  v2 = *(v1 + 2456);
  v3 = *(v1 + 2448);

  return MEMORY[0x1EEE6DFA0](sub_199AA47BC, v3, v2);
}

uint64_t sub_199AA47BC()
{

  *(v0 + 2488) = *(v0 + 2056);
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA4880, v2, v1);
}

uint64_t sub_199AA4880()
{
  v1 = v0[311];

  if (v1)
  {
    v2 = v0[311];
    v3 = [v2 cnui_CGImageSnapshot];
    v4 = v2;
    v1 = v3;
  }

  v0[312] = v1;
  v5 = v0[296];
  v6 = v0[295];

  return MEMORY[0x1EEE6DFA0](sub_199AA4964, v6, v5);
}

uint64_t sub_199AA4964()
{
  v0[313] = qword_1EAF86EF0;

  v0[314] = sub_199DFA16C();
  v1 = sub_199DFA12C();
  v0[315] = v1;
  v0[316] = v2;

  return MEMORY[0x1EEE6DFA0](sub_199AA4A38, v1, v2);
}

uint64_t sub_199AA4A38()
{
  v1 = v0[313];
  v2 = v0[312];
  v3 = sub_199DFA16C();
  v0[317] = v3;
  v4 = swift_task_alloc();
  v0[318] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[319] = v5;
  v6 = sub_199A7A02C(0, &qword_1EAF71C10);
  *v5 = v0;
  v5[1] = sub_199AA4B90;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 263, v3, v7, 0xD000000000000027, 0x8000000199E44FD0, sub_199AA7234, v4, v6);
}

uint64_t sub_199AA4B90()
{
  v1 = *v0;

  v2 = *(v1 + 2528);
  v3 = *(v1 + 2520);

  return MEMORY[0x1EEE6DFA0](sub_199AA4D24, v3, v2);
}

uint64_t sub_199AA4D24()
{

  v0[320] = v0[263];
  v0[321] = sub_199DFA16C();
  v1 = sub_199DFA12C();
  v0[322] = v1;
  v0[323] = v2;

  return MEMORY[0x1EEE6DFA0](sub_199AA4E04, v1, v2);
}

uint64_t sub_199AA4E04()
{
  v1 = [objc_opt_self() stringFromContact:*(v0 + 2272) style:0];
  if (!v1)
  {
    v1 = [*(v0 + 2272) givenName];
  }

  v2 = v1;
  v21 = sub_199DF9F8C();
  v4 = v3;

  v20 = *(v0 + 2560);
  v5 = *(v0 + 2400);
  v6 = *(v0 + 2392);
  v7 = *(v0 + 2288);
  v8 = *(v0 + 2280);
  v9 = *(v0 + 2009);
  v10 = *(v0 + 2272);
  *(v0 + 2592) = v4;
  v11 = sub_199AA6C98(v10);
  v23 = v12;
  v24 = v11;
  v22 = v13;
  v15 = v14;
  *(v0 + 2600) = v13;
  *(v0 + 2608) = v14;
  *(v0 + 2616) = sub_199AA6DB4(v10, v6);
  v16 = swift_task_alloc();
  *(v0 + 2624) = v16;
  *(v16 + 16) = v7;
  *(v16 + 24) = v10;
  *(v16 + 32) = v9;
  *(v16 + 40) = v8;
  *(v16 + 48) = v5;
  *(v16 + 56) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72750);
  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  *(v0 + 2632) = v17;
  v17[2] = v6;
  v17[3] = v5;
  v17[4] = v20;
  v17[5] = v8;
  v17[6] = v21;
  v17[7] = v4;
  swift_asyncLet_begin();
  v18 = swift_task_alloc();
  *(v0 + 2640) = v18;
  v18[2] = v6;
  v18[3] = v5;
  v18[4] = v20;
  v18[5] = v8;
  v18[6] = v24;
  v18[7] = v22;
  v18[8] = v23;
  v18[9] = v15;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 2152, sub_199AA505C, v0 + 1936);
}

uint64_t sub_199AA505C()
{
  v1 = *(v0 + 2152);
  *(v0 + 2648) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 2200, sub_199AA50F8, v0 + 2016);
}

uint64_t sub_199AA50F8()
{
  v1 = *(v0 + 2200);
  *(v0 + 2656) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 1296, v0 + 2248, sub_199AA5194, v0 + 2064);
}

uint64_t sub_199AA5194()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);

  return MEMORY[0x1EEE6DFA0](sub_199AA5220, v2, v1);
}

uint64_t sub_199AA5220()
{
  v1 = *(v0 + 2248);
  *(v0 + 2664) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 2248, sub_199AA52BC, v0 + 2112);
}

uint64_t sub_199AA52BC()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);

  return MEMORY[0x1EEE6DFA0](sub_199AA5348, v2, v1);
}

uint64_t sub_199AA5348()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 2200, sub_199AA5400, v0 + 2160);
}

uint64_t sub_199AA5400()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);

  return MEMORY[0x1EEE6DFA0](sub_199AA548C, v2, v1);
}

uint64_t sub_199AA548C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 2152, sub_199AA5530, v0 + 2208);
}

uint64_t sub_199AA5530()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);

  return MEMORY[0x1EEE6DFA0](sub_199AA55BC, v2, v1);
}

uint64_t sub_199AA55BC()
{

  v1 = *(v0 + 2368);
  v2 = *(v0 + 2360);

  return MEMORY[0x1EEE6DFA0](sub_199AA565C, v2, v1);
}

uint64_t sub_199AA565C()
{
  v1 = v0[320];
  v2 = v0[300];
  v3 = v0[299];
  v4 = v0[297];
  v5 = v0[292];
  v6 = v0[290];

  v7 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
  v8 = sub_199DF9F5C();

  [v7 releaseKeepActiveAssertionForReason_];

  sub_199DFA3EC();
  v9 = CNUILogPosters();
  sub_199DF800C();
  sub_199DF7FFC();

  v4(v5, v6);
  v10 = v0[333];
  v11 = v0[332];
  v12 = v0[331];
  v13 = v0[327];
  v14 = v0[312];
  v15 = v0[283];

  *v15 = v13;
  v15[1] = v12;
  v15[2] = v14;
  v15[3] = v11;
  v15[4] = v10;
  v16 = v0[1];

  return v16();
}

uint64_t sub_199AA5824(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 72) = a3;
  *(v7 + 80) = a5;
  *(v7 + 49) = a4;
  *(v7 + 64) = a1;
  *(v7 + 104) = sub_199DFA17C();
  *(v7 + 112) = sub_199DFA16C();
  v9 = sub_199DFA12C();
  *(v7 + 120) = v9;
  *(v7 + 128) = v8;

  return MEMORY[0x1EEE6DFA0](sub_199AA58CC, v9, v8);
}

uint64_t sub_199AA58CC()
{
  v1 = sub_199AA6F9C(*(v0 + 72), *(v0 + 49));
  if (v1)
  {
    v2 = v1;

    *(v0 + 216) = v2;
    v3 = sub_199AA5E5C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    if (qword_1EAF71A78 != -1)
    {
      swift_once();
    }

    *(v0 + 136) = qword_1EAF86EF0;
    *(v0 + 16) = 2;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 2;

    *(v0 + 144) = sub_199DFA16C();
    *(v0 + 152) = sub_199DFA16C();
    v6 = sub_199DFA12C();
    v5 = v7;
    *(v0 + 160) = v6;
    *(v0 + 168) = v7;
    v3 = sub_199AA59EC;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_199AA59EC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v9 = *(v0 + 88);
  v3 = sub_199DFA16C();
  *(v0 + 176) = v3;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = vextq_s8(v9, v9, 8uLL);
  *(v4 + 40) = 0;
  *(v4 + 48) = v2;
  *(v4 + 56) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  *v5 = v0;
  v5[1] = sub_199AA5B3C;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 56, v3, v7, 0xD00000000000003ELL, 0x8000000199E44F90, sub_199AA768C, v4, v6);
}

uint64_t sub_199AA5B3C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_199AA5C9C, v3, v2);
}

uint64_t sub_199AA5C9C()
{

  *(v0 + 200) = *(v0 + 56);
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA5D28, v2, v1);
}

uint64_t sub_199AA5D28()
{
  v1 = v0[25];

  if (v1)
  {
    v2 = v0[25];
    v3 = [v2 cnui_CGImageSnapshot];
    v0[26] = v3;
    v4 = v2;
    v5 = v3;

    v6 = v0[15];
    v7 = v0[16];
    v8 = sub_199AA5DEC;
  }

  else
  {

    v6 = v0[15];
    v7 = v0[16];
    v8 = sub_199AA5E80;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_199AA5DEC()
{

  *(v0 + 216) = *(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_199AA5E5C, 0, 0);
}

uint64_t sub_199AA5E80()
{

  *(v0 + 216) = 0;

  return MEMORY[0x1EEE6DFA0](sub_199AA5E5C, 0, 0);
}

uint64_t sub_199AA5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_199AA5F18, 0, 0);
}

uint64_t sub_199AA5F18()
{
  *(v0 + 120) = sub_199DFA17C();
  *(v0 + 128) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA5FB0, v2, v1);
}

uint64_t sub_199AA5FB0()
{

  if (qword_1EAF71A78 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_199AA6048, 0, 0);
}

uint64_t sub_199AA6048()
{
  *(v0 + 136) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA60D4, v2, v1);
}

uint64_t sub_199AA60D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  *(v0 + 144) = qword_1EAF86EF0;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;

  *(v0 + 152) = sub_199DFA16C();
  *(v0 + 160) = sub_199DFA16C();
  v4 = sub_199DFA12C();
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;

  return MEMORY[0x1EEE6DFA0](sub_199AA6198, v4, v3);
}

uint64_t sub_199AA6198()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v10 = *(v0 + 72);
  v4 = sub_199DFA16C();
  *(v0 + 184) = v4;
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v10;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  *(v5 + 56) = v0 + 16;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  *v6 = v0;
  v6[1] = sub_199AA62E4;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 56, v4, v8, 0xD00000000000003ELL, 0x8000000199E44F90, sub_199AA768C, v5, v7);
}

uint64_t sub_199AA62E4()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_199AA6444, v3, v2);
}

uint64_t sub_199AA6444()
{

  *(v0 + 208) = *(v0 + 56);
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA64D0, v2, v1);
}

uint64_t sub_199AA64D0()
{
  v1 = *(v0 + 208);

  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = [v2 cnui_CGImageSnapshot];
    v4 = v2;
    v1 = v3;
  }

  *(v0 + 216) = v1;

  return MEMORY[0x1EEE6DFA0](sub_199AA7684, 0, 0);
}

uint64_t sub_199AA6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v10;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_199AA65C0, 0, 0);
}

uint64_t sub_199AA65C0()
{
  *(v0 + 136) = sub_199DFA17C();
  *(v0 + 144) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA6658, v2, v1);
}

uint64_t sub_199AA6658()
{

  if (qword_1EAF71A78 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_199AA66F0, 0, 0);
}

uint64_t sub_199AA66F0()
{
  *(v0 + 152) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA677C, v2, v1);
}

uint64_t sub_199AA677C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v6 = *(v0 + 104);

  *(v0 + 160) = qword_1EAF86EF0;
  *(v0 + 16) = v6;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;

  *(v0 + 168) = sub_199DFA16C();
  *(v0 + 176) = sub_199DFA16C();
  v4 = sub_199DFA12C();
  *(v0 + 184) = v4;
  *(v0 + 192) = v3;

  return MEMORY[0x1EEE6DFA0](sub_199AA6850, v4, v3);
}

uint64_t sub_199AA6850()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v10 = *(v0 + 72);
  v4 = sub_199DFA16C();
  *(v0 + 200) = v4;
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v10;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  *(v5 + 56) = v0 + 16;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  *v6 = v0;
  v6[1] = sub_199AA699C;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 56, v4, v8, 0xD00000000000003ELL, 0x8000000199E44F90, sub_199AA768C, v5, v7);
}

uint64_t sub_199AA699C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_199AA6AFC, v3, v2);
}

uint64_t sub_199AA6AFC()
{

  *(v0 + 224) = *(v0 + 56);
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AA6B88, v2, v1);
}

uint64_t sub_199AA6B88()
{
  v1 = *(v0 + 224);

  if (v1)
  {
    v2 = *(v0 + 224);
    v3 = [v2 cnui_CGImageSnapshot];
    v4 = v2;
    v1 = v3;
  }

  *(v0 + 232) = v1;

  return MEMORY[0x1EEE6DFA0](sub_199AA6C40, 0, 0);
}

uint64_t sub_199AA6C98(void *a1)
{
  v2 = [objc_opt_self() nameOrderForContact_];
  v3 = [a1 givenName];
  v4 = sub_199DF9F8C();
  v6 = v5;

  v7 = [a1 familyName];
  v8 = sub_199DF9F8C();
  v10 = v9;

  v11 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v11 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if (v2 == 1)
      {
        return v4;
      }
    }

    else
    {

      return v4;
    }
  }

  else
  {
  }

  return v8;
}

id sub_199AA6DB4(void *a1, uint64_t a2)
{
  v3 = [a1 wallpaper];
  if (v3 && (v4 = v3, v5 = [v3 metadata], v4, v5))
  {
    v6 = [v5 fontColorDescription];

    type metadata accessor for CNWallpaperColorDescriptionKey(0);
    sub_199A7A02C(0, &qword_1EAF75C70);
    sub_199AA75D8();
    sub_199DF9E9C();

    v7 = objc_opt_self();
    v8 = sub_199DF9E8C();

    v9 = [v7 colorFromDescription_];
  }

  else
  {
    v10 = [objc_opt_self() attributesForCNConfiguration_];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 titleColor];

      v13 = [v12 CGColor];
      if (v13)
      {
        return v13;
      }
    }

    v9 = [objc_opt_self() whiteColor];
  }

  v15 = [v9 CGColor];

  return v15;
}

id sub_199AA6F9C(void *a1, char a2)
{
  v4 = [a1 thumbnailImageData];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_199DF71FC();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_199AA7630(v6, v8);
  v10 = sub_199DF71DC();
  v11 = [v9 initWithData_];

  sub_199A9EF34(v6, v8);
  if (!v11)
  {
    sub_199A9EF34(v6, v8);
LABEL_6:
    v13 = [objc_opt_self() defaultSettingsWithCacheSize_];
    v14 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings_];

    v15 = objc_opt_self();
    v16 = [objc_opt_self() mainScreen];
    [v16 scale];
    v18 = v17;

    v19 = [v15 scopeWithPointSize:a2 & 1 scale:0 rightToLeft:250.0 style:{250.0, v18}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_199E37DF0;
    *(v20 + 32) = a1;
    sub_199A7A02C(0, &qword_1ED615BF0);
    v21 = a1;
    v22 = sub_199DFA0BC();

    v23 = [v14 avatarImageForContacts:v22 scope:v19];

    v12 = [v23 CGImage];
    swift_unknownObjectRelease();

    return v12;
  }

  v12 = [v11 CGImage];
  sub_199A9EF34(v6, v8);

  if (!v12)
  {
    goto LABEL_6;
  }

  return v12;
}

uint64_t sub_199AA723C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_199AA7314;

  return sub_199AA5824(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_199AA7314()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_199AA7408(uint64_t a1)
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
  v10[1] = sub_199AA7688;

  return sub_199AA5EEC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_199AA74DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7688;

  return sub_199AA6588(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_199AA75D8()
{
  result = qword_1EAF723C8;
  if (!qword_1EAF723C8)
  {
    type metadata accessor for CNWallpaperColorDescriptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF723C8);
  }

  return result;
}

uint64_t sub_199AA7630(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_199AA7690@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_199DFA40C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72758);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  sub_199DFA41C();

  sub_199AA7910();
  sub_199DF845C();
  v12 = *(v2 + 8);
  v12(v5, v1);
  v13 = [v10 defaultCenter];
  sub_199DFA41C();

  sub_199DF845C();
  v12(v5, v1);
  sub_199AA7970();
  return sub_199DF839C();
}

unint64_t sub_199AA7910()
{
  result = qword_1EAF71080;
  if (!qword_1EAF71080)
  {
    sub_199DFA40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71080);
  }

  return result;
}

unint64_t sub_199AA7970()
{
  result = qword_1EAF71468;
  if (!qword_1EAF71468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71468);
  }

  return result;
}

id sub_199AA7AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageControl.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AA7B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199AA7BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_199AA7C2C(void *a1)
{
  v3 = *v1;
  v4 = v1[3];
  v8 = *(v1 + 1);
  v9 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72770);
  MEMORY[0x19A8F7740](&v7, v5);
  [a1 setCurrentPage_];
  return [a1 setNumberOfPages_];
}

id sub_199AA7CB8@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = type metadata accessor for PageControl.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV10ContactsUI11PageControl11Coordinator_control];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

void sub_199AA7DF4()
{
  sub_199AA7F90();
  sub_199DF8EAC();
  __break(1u);
}

unint64_t sub_199AA7E20()
{
  result = qword_1EAF72768;
  if (!qword_1EAF72768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72768);
  }

  return result;
}

id sub_199AA7E74(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  [v3 setNumberOfPages_];
  v4 = objc_opt_self();
  v5 = [v4 lightGrayColor];
  [v3 setPageIndicatorTintColor_];

  v6 = [v4 grayColor];
  [v3 setCurrentPageIndicatorTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72778);
  sub_199DF900C();
  [v3 addTarget:v8 action:sel_updateCurrentPageWithSender_ forControlEvents:4096];

  return v3;
}

unint64_t sub_199AA7F90()
{
  result = qword_1EAF72780;
  if (!qword_1EAF72780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72780);
  }

  return result;
}

uint64_t sub_199AA7FE8()
{
  result = sub_199DFA63C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_199AA807C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    if (qword_1EAF71B18 != -1)
    {
      swift_once();
    }

    v4 = sub_199DF804C();
    __swift_project_value_buffer(v4, qword_1EAF86EF8);
    v5 = sub_199DF802C();
    v6 = sub_199DFA31C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v5, v6, "Unexpected FMFriendshipExpiration!", v7, 2u);
      MEMORY[0x19A8FA1A0](v7, -1, -1);
    }

    v3 = MEMORY[0x1E699C8B8];
  }

  else
  {
    v3 = qword_1E74E1340[a1];
  }

  v8 = *v3;
  v9 = sub_199DF74AC();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t sub_199AA81C4()
{
  v1 = sub_199DF743C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  result = 0;
  if (v6 != *MEMORY[0x1E699C890])
  {
    if (v6 == *MEMORY[0x1E699C898])
    {
      return 1;
    }

    else
    {
      if (v6 != *MEMORY[0x1E699C8A0])
      {
        if (qword_1EAF71B18 != -1)
        {
          swift_once();
        }

        v8 = sub_199DF804C();
        __swift_project_value_buffer(v8, qword_1EAF86EF8);
        v9 = sub_199DF802C();
        v10 = sub_199DFA31C();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_199A75000, v9, v10, "Unexpected FMLClientOrigin!", v11, 2u);
          MEMORY[0x19A8FA1A0](v11, -1, -1);
        }

        (*(v2 + 8))(v5, v1);
      }

      return 2;
    }
  }

  return result;
}

uint64_t sub_199AA83C4(uint64_t a1)
{
  v2 = sub_199DF743C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73CA0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v45 = &v45 - v10;
  v11 = sub_199DF742C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v45 - v18;
  v20 = sub_199DF758C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF752C();
  sub_199DF756C();
  (*(v21 + 8))(v24, v20);
  v25 = a1;
  v26 = sub_199DF9F5C();

  v27 = [objc_opt_self() handleWithIdentifier_];

  sub_199DF750C();
  (*(v12 + 16))(v16, v19, v11);
  v28 = (*(v12 + 88))(v16, v11);
  v29 = 0;
  if (v28 != *MEMORY[0x1E699C880])
  {
    if (v28 == *MEMORY[0x1E699C888])
    {
      v29 = 1;
    }

    else if (v28 == *MEMORY[0x1E699C870])
    {
      v29 = 2;
    }

    else if (v28 == *MEMORY[0x1E699C878])
    {
      v29 = 3;
    }

    else
    {
      if (v28 != *MEMORY[0x1E699C868])
      {
        result = sub_199DFA85C();
        __break(1u);
        return result;
      }

      v29 = 4;
    }
  }

  (*(v12 + 8))(v19, v11);
  v30 = v45;
  sub_199DF754C();
  v31 = sub_199DF723C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = 0;
  if (v33(v30, 1, v31) != 1)
  {
    v34 = sub_199DF721C();
    (*(v32 + 8))(v30, v31);
  }

  v35 = v46;
  sub_199DF751C();
  if (v33(v35, 1, v31) == 1)
  {
    v36 = 0;
  }

  else
  {
    v37 = sub_199DF721C();
    v38 = v35;
    v36 = v37;
    (*(v32 + 8))(v38, v31);
  }

  v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v40 = v47;
  sub_199DF753C();
  v41 = sub_199AA81C4();
  (*(v48 + 8))(v40, v49);
  v42 = [v39 initWithHandle:v27 handleType:v29 createDate:v34 expiry:v36 origin:v41 originatedFromTheSameClient:sub_199DF74FC() & 1];

  v43 = sub_199DF755C();
  (*(*(v43 - 8) + 8))(v25, v43);
  return v42;
}

uint64_t sub_199AA897C()
{
  v1 = *(*v0 + 88);
  v2 = sub_199DFA63C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199AA8A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72788);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v28 - v6;
  v8 = sub_199DF72BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v11, v12);
  (*(v14 + 16))(v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = sub_199DF9F5C();
  v16 = [objc_opt_self() bundleWithIdentifier_];

  sub_199DF72AC();
  v17 = sub_199DF9FAC();
  v19 = v18;
  sub_199DF72AC();
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = *(a2 + 16);
  if (v20)
  {
    v28[1] = v17;
    v28[2] = v19;
    v29 = v7;
    v36 = MEMORY[0x1E69E7CC0];
    sub_199A9C53C(0, v20, 0);
    v21 = v36;
    v22 = a2 + 32;
    v23 = MEMORY[0x1E69E6158];
    do
    {
      sub_199AA8E58(v22, v32);
      sub_199AA8E58(v32, &v30);
      if (v31)
      {
        sub_199A79A04(v32, &qword_1EAF72790);
        sub_199AA8F1C(&v30, &v33);
      }

      else
      {
        v34 = v23;
        v35 = sub_199AA8EC8();
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        sub_199A79A04(v32, &qword_1EAF72790);
        if (v31)
        {
          sub_199A79A04(&v30, &qword_1EAF72790);
        }
      }

      v36 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_199A9C53C((v24 > 1), v25 + 1, 1);
        v21 = v36;
      }

      *(v21 + 16) = v25 + 1;
      sub_199AA8F1C(&v33, v21 + 40 * v25 + 32);
      v22 += 40;
      --v20;
    }

    while (v20);
    v7 = v29;
  }

  v26 = sub_199DF9F9C();

  sub_199A79A04(v7, &qword_1EAF72788);
  return v26;
}

uint64_t sub_199AA8E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199AA8EC8()
{
  result = qword_1EAF72798;
  if (!qword_1EAF72798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72798);
  }

  return result;
}

uint64_t sub_199AA8F1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_199AA8F7C()
{
  sub_199DF729C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SourceType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_199AA9048(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AA9080()
{
  result = sub_199DF729C();
  if (v1 <= 0x3F)
  {
    result = sub_199A7A02C(319, &qword_1ED615BF0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SourceType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_199AA9278(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6172656D6163;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x6D6172676F6E6F6DLL;
  v6 = 0x696A6F6D65;
  if (a1 != 4)
  {
    v6 = 0x726F6C6F63;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0x736F746F6870;
  if (a1 != 1)
  {
    v7 = 0x696A6F6D656DLL;
  }

  if (!a1)
  {
    v7 = 0x6172656D6163;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 2)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x6D6172676F6E6F6DLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      if (a2 == 4)
      {
        if (v8 != 0x696A6F6D65)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 0x726F6C6F63)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 0x736F746F6870)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x696A6F6D656DLL;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_199DFA99C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_199AA9420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_199DFA99C();
  }

  return v11 & 1;
}

uint64_t sub_199AA9538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E656E6F6870;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1702129518;
  if (a1 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961646874726962;
  if (a1 != 3)
  {
    v8 = 0x52746361746E6F63;
    v7 = 0xEF6E6F6974616C65;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6464416C69616D65;
  v10 = 0xEC00000073736572;
  if (a1 != 1)
  {
    v9 = 0x64416C6174736F70;
    v10 = 0xED00007373657264;
  }

  if (!a1)
  {
    v9 = 0x6D754E656E6F6870;
    v10 = 0xEB00000000726562;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000073736572;
        if (v11 != 0x6464416C69616D65)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED00007373657264;
        if (v11 != 0x64416C6174736F70)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1702129518)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x6D6F74737563)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7961646874726962)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x52746361746E6F63;
    v2 = 0xEF6E6F6974616C65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_199DFA99C();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_199AA9798()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199AA988C()
{
  sub_199DF9FEC();
}

uint64_t sub_199AA9970()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199AA9A60()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199AA9BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199AAA570();
  *a1 = result;
  return result;
}

void sub_199AA9BD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6172656D6163;
  v5 = 0xE800000000000000;
  v6 = 0x6D6172676F6E6F6DLL;
  v7 = 0x696A6F6D65;
  if (v2 != 4)
  {
    v7 = 0x726F6C6F63;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0x736F746F6870;
  if (v2 != 1)
  {
    v8 = 0x696A6F6D656DLL;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_199AA9C80()
{
  result = qword_1EAF727A8;
  if (!qword_1EAF727A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF727A8);
  }

  return result;
}

uint64_t sub_199AA9D28()
{
  v0 = sub_199DF9F4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  sub_199DF9EEC();
  v5 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_199AA9EB0()
{
  v1 = sub_199DF96AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for CNWallpaperSuggestionsGallerySource(0) + 20)))
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69814D8], v1);
    return sub_199DF978C();
  }

  else
  {
    v6 = [objc_opt_self() systemGray2Color];
    return sub_199DF969C();
  }
}

uint64_t sub_199AAA0C0()
{
  v1 = sub_199DF96AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for CNWallpaperSuggestionsGallerySource(0) + 20)))
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69814D8], v1);
    sub_199DF978C();
    v7 = [objc_opt_self() currentTraitCollection];
    [v7 userInterfaceStyle];

    v8 = sub_199DF972C();

    return v8;
  }

  else
  {
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    return sub_199DF969C();
  }
}

uint64_t sub_199AAA428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF729C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_199AAA490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_199DF726C() & 1) == 0 || (sub_199AA9278(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  sub_199A7A02C(0, &qword_1EAF71000);
  return sub_199DFA4EC() & 1;
}

unint64_t sub_199AAA518()
{
  result = qword_1EAF714D8;
  if (!qword_1EAF714D8)
  {
    sub_199DF729C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714D8);
  }

  return result;
}

uint64_t sub_199AAA570()
{
  v0 = sub_199DFA8DC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t ContactCardActions.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t sub_199AAA64C()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t sub_199AAA694()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t ContactCardActions.init(actionsProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_199AAAE4C(a1, v27);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_199AAAEA8(v24, v23);
  sub_199AAAEA8(v23, v22);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_199AAAEA8(v22, __src);
  if (*&__src[24])
  {
    sub_199AA8F1C(__src, __dst);
  }

  else
  {
    *&__dst[24] = sub_199DF9B2C();
    *&__dst[32] = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(__dst);
    _s10ContactsUI23ContactCardDetailsStyleV25defaultBackgroundMaterial05SwiftB00I0Vvg_0();
    if (*&__src[24])
    {
      sub_199AAAF7C(__src);
    }
  }

  sub_199AA8F1C(__dst, &__src[216]);
  sub_199DF7BDC();
  *__src = v4;
  *&__src[8] = sub_199DF7B9C();
  *&__src[16] = sub_199DF7B8C();
  *&__src[24] = sub_199DF7BCC();
  sub_199AAAEA8(v20, &v11);
  if (v12)
  {
    sub_199AA8F1C(&v11, __dst);
  }

  else
  {
    v5 = sub_199DF7B3C();
    *&__dst[32] = MEMORY[0x1E697E0A8];
    *&__dst[24] = MEMORY[0x1E697E0B8];
    *__dst = v5;
    if (v12)
    {
      sub_199AAAF7C(&v11);
    }
  }

  sub_199AA8F1C(__dst, &__src[32]);
  *&__src[72] = sub_199DF7B8C();
  *&__src[80] = sub_199DF7BAC();
  sub_199AAAEA8(v18, &v11);
  if (v12)
  {
    sub_199AA8F1C(&v11, __dst);
  }

  else
  {
    v6 = sub_199DF7B2C();
    *&__dst[32] = MEMORY[0x1E697E0A8];
    *&__dst[24] = MEMORY[0x1E697E0B8];
    *__dst = v6;
    if (v12)
    {
      sub_199AAAF7C(&v11);
    }
  }

  sub_199AA8F1C(__dst, &__src[88]);
  sub_199AAAEA8(v16, &v11);
  if (v12)
  {
    sub_199AA8F1C(&v11, __dst);
  }

  else
  {
    v7 = sub_199DF7B4C();
    *&__dst[32] = MEMORY[0x1E697E0A8];
    *&__dst[24] = MEMORY[0x1E697E0B8];
    *__dst = v7;
    if (v12)
    {
      sub_199AAAF7C(&v11);
    }
  }

  sub_199AA8F1C(__dst, &__src[128]);
  sub_199AAAEA8(v14, &v11);
  if (v12)
  {
    sub_199AA8F1C(&v11, __dst);
  }

  else
  {
    v8 = sub_199DF7B5C();
    *&__dst[32] = MEMORY[0x1E697E0A8];
    *&__dst[24] = MEMORY[0x1E697E0B8];
    *__dst = v8;
    if (v12)
    {
      sub_199AAAF7C(&v11);
    }
  }

  sub_199AA8F1C(__dst, &__src[168]);
  v9 = sub_199DF7BEC();
  sub_199AAAF7C(v14);
  sub_199AAAF7C(v16);
  sub_199AAAF7C(v18);
  sub_199AAAF7C(v20);
  sub_199AAAF7C(v22);
  sub_199AAAF7C(v23);
  sub_199AAAF7C(v24);
  *&__src[256] = v9;
  *&__src[208] = 1;
  memcpy(__dst, __src, sizeof(__dst));
  ContactCardActions.init(actionsProvider:style:)(v27, __dst, a2);
  return sub_199AAAFE4(a1);
}

uint64_t ContactCardActions.init(actionsProvider:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_199AAAE4C(a1, v25);
  sub_199AAB038(a2, &v19);
  sub_199AAAE4C(v25, a3);
  v6 = v25[0];
  v5 = v25[1];
  v18 = &unk_1F0DE0968;
  swift_dynamicCastObjCProtocolUnconditional();
  objc_allocWithZone(sub_199DF7CDC());
  v7 = v6;
  v8 = v5;
  *(a3 + 40) = sub_199DF7CCC();
  v9 = type metadata accessor for ContactCardActions();
  sub_199AAB0E0(&v24, v17);
  sub_199AAB0E0(&v20, v16);
  sub_199AAB0E0(&v21, v15);
  sub_199AAB0E0(&v22, v14);
  sub_199AAB0E0(&v23, v13);

  sub_199DF7A3C();
  sub_199AAB144(a2);
  sub_199AAAFE4(a1);
  sub_199AAB144(&v19);
  result = sub_199AAAFE4(v25);
  *(a3 + *(v9 + 28)) = 2;
  return result;
}

uint64_t ContactCardActions.init(actionsProvider:style:placement:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_199AAAE4C(a1, a4);
  v9 = *a1;
  v8 = a1[1];
  swift_dynamicCastObjCProtocolUnconditional();
  objc_allocWithZone(sub_199DF7CDC());
  v10 = v9;
  v11 = v8;
  *(a4 + 40) = sub_199DF7CCC();
  v12 = type metadata accessor for ContactCardActions();
  sub_199AAF5A8();
  sub_199AAB144(a2);
  result = sub_199AAAFE4(a1);
  *(a4 + *(v12 + 28)) = qword_199E38318[v7];
  return result;
}

uint64_t ContactCardActions.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = type metadata accessor for ContactCardActions();
  v5 = v3;
  sub_199DF778C();
  v6 = *(v4 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727B8) + 36);
  v8 = sub_199DF7A4C();
  v9 = *(*(v8 - 8) + 16);

  return v9(a1 + v7, v1 + v6, v8);
}

uint64_t sub_199AAADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  sub_199DF778C();
  v6 = *(a1 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727B8) + 36);
  v8 = sub_199DF7A4C();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2 + v7, v2 + v6, v8);
}

uint64_t sub_199AAAEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_199AAAF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContactCardActions()
{
  result = qword_1EAF727D0;
  if (!qword_1EAF727D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AAB0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_199AAB19C()
{
  result = qword_1EAF727C0;
  if (!qword_1EAF727C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF727C0);
  }

  return result;
}

void sub_199AAB234()
{
  sub_199DF7CDC();
  if (v0 <= 0x3F)
  {
    sub_199DF7A4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CNUIContactCardActionPlacement(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CNAvatarPosterPair.PairType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CNAvatarPosterPair.PairType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_199AAB430()
{
  result = qword_1EAF727E0;
  if (!qword_1EAF727E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF727B8);
    sub_199AAB51C(&qword_1EAF727E8, MEMORY[0x1E6996930]);
    sub_199AAB51C(&unk_1EAF727F0, type metadata accessor for ContactCardStyeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF727E0);
  }

  return result;
}

uint64_t sub_199AAB51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199AAB564()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF72800);
  __swift_project_value_buffer(v0, qword_1EAF72800);
  return sub_199DF803C();
}

id static ContactCardActionsProvider.descriptorForRequiredKeys.getter()
{
  sub_199AAB620();
  result = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_199AAB620()
{
  result = qword_1EAF72818;
  if (!qword_1EAF72818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF72818);
  }

  return result;
}

BOOL sub_199AAB6EC(void *a1, uint64_t *a2)
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

void *sub_199AAB71C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_199AAB748@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_199AAB824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id ContactCardActionsProvider.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  *a2 = a1;
  result = [objc_allocWithZone(CNContactContentUnitaryViewController) initForInlineContactCardWithContact_];
  if (result)
  {
    v5 = result;
    a2[1] = result;
    a2[3] = 0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakLoadStrong();
    v6 = a2[3];
    type metadata accessor for ContactCardActionsProviderHandler();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v7 + 24) = v6;
    swift_unknownObjectWeakAssign();
    v8 = v5;
    swift_unknownObjectRelease();
    a2[4] = v7;

    [v8 setActionsDelegate_];

    return [v8 setAllowsContactBlocking_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ContactCardActionsProvider.init(contact:actions:delegate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  *a4 = a1;
  result = [objc_allocWithZone(CNContactContentUnitaryViewController) initForInlineContactCardWithContact_];
  if (result)
  {
    v9 = result;
    a4[1] = result;
    a4[3] = a3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakLoadStrong();
    v10 = a4[3];
    type metadata accessor for ContactCardActionsProviderHandler();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 24) = v10;
    swift_unknownObjectWeakAssign();
    v12 = v9;
    swift_unknownObjectRelease();
    a4[4] = v11;

    [v12 setActionsDelegate_];

    if ((v7 & 3) == 1)
    {
      [v12 setAllowsContactBlocking_];
    }

    if ((v7 & 2) != 0)
    {
      [v12 setAllowsContactBlockingAndReporting_];
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ContactCardActionsProvider.init(contact:actions:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  *a3 = a1;
  v6 = [objc_allocWithZone(CNContactContentUnitaryViewController) initForInlineContactCardWithContact_];
  if (v6)
  {
    v7 = v6;
    a3[1] = v6;
    a3[3] = 0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakLoadStrong();
    v8 = a3[3];
    type metadata accessor for ContactCardActionsProviderHandler();
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v9 + 24) = v8;
    swift_unknownObjectWeakAssign();
    v10 = v7;
    swift_unknownObjectRelease();
    a3[4] = v9;

    [v10 setActionsDelegate_];

    if ((v5 & 3) == 1)
    {
      [v10 setAllowsContactBlocking_];
    }

    if ((v5 & 2) != 0)
    {

      [v10 setAllowsContactBlockingAndReporting_];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_199AABC98()
{
  result = qword_1EAF72820;
  if (!qword_1EAF72820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72820);
  }

  return result;
}

unint64_t sub_199AABCF0()
{
  result = qword_1EAF72828;
  if (!qword_1EAF72828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72828);
  }

  return result;
}

unint64_t sub_199AABD48()
{
  result = qword_1EAF72830;
  if (!qword_1EAF72830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72830);
  }

  return result;
}

unint64_t sub_199AABDA0()
{
  result = qword_1EAF72838;
  if (!qword_1EAF72838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72838);
  }

  return result;
}

uint64_t sub_199AABDF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_199AABE3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactCardActionsProvider.Actions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ContactCardActionsProvider.Actions(uint64_t result, int a2, int a3)
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

uint64_t sub_199AABF0C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EAF71E00 != -1)
  {
    swift_once();
  }

  v6 = sub_199DF804C();
  __swift_project_value_buffer(v6, qword_1EAF72800);
  v7 = a2;
  v8 = sub_199DF802C();
  v9 = sub_199DFA2FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 134218242;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2082;
    v12 = [v7 identifier];
    v13 = sub_199DF9F8C();
    v15 = v14;

    v16 = sub_199A9BE90(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_199A75000, v8, v9, "ContactCardActionsProvider notified of action %ld for contact with identifier: %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x19A8FA1A0](v11, -1, -1);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v20 = 2;
    (*(v18 + 8))(&v20, v7, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_199AAC158()
{
  sub_199A7C4E8(v0 + 16);

  return swift_deallocClassInstance();
}

void *ContactCardAllSections.init(contact:actionsProvider:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  sub_199AAC24C(a2, a4 + 8);
  result = memcpy((a4 + 48), a3, 0x108uLL);
  *(a4 + 312) = 0;
  *(a4 + 320) = 0;
  *(a4 + 328) = 0;
  return result;
}

void *ContactCardAllSections.init(contact:actionsProvider:style:propertyViewConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = *(a4 + 16);
  *a5 = a1;
  sub_199AAC24C(a2, a5 + 8);
  result = memcpy((a5 + 48), a3, 0x108uLL);
  *(a5 + 312) = v7;
  *(a5 + 320) = v8;
  *(a5 + 328) = v9;
  return result;
}

uint64_t ContactCardAllSections.body.getter@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF728A0);
  v3 = MEMORY[0x1EEE9AC00](v114, v2);
  v117 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v130 = (v101 - v6);
  v7 = sub_199DF7ADC();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v107 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ContactCardDetails(0);
  v11 = MEMORY[0x1EEE9AC00](v106, v10);
  v112 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v113 = v101 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF728A8);
  v16 = MEMORY[0x1EEE9AC00](v111, v15);
  v124 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v110 = v101 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v127 = v101 - v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF728B0);
  v24 = MEMORY[0x1EEE9AC00](v125, v23);
  v115 = v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v122 = v101 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v123 = v101 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v120 = v101 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v126 = v101 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v129 = v101 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF728C0);
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  v121 = v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = v101 - v49;
  v51 = *v1;
  v52 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  v53 = v51;
  [v52 init];
  v54 = sub_199DF7DBC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v104 = v54;
  v101[1] = v55 + 56;
  v102 = v56;
  (v56)(v43, 1, 1);
  v57 = objc_allocWithZone(MEMORY[0x1E6996648]);
  v58 = v53;
  [v57 init];
  v103 = v58;
  v105 = v43;
  sub_199DF7ACC();
  v119 = v50;
  v59 = v131;
  sub_199AAF5A8();
  sub_199AAAE4C(v59 + 8, &v149);
  sub_199AAB038(v59 + 48, v143);
  v60 = v129;
  sub_199AAAE4C(&v149, v129);
  v62 = v149;
  v61 = v150;
  v142 = &unk_1F0DE0968;
  swift_dynamicCastObjCProtocolUnconditional();
  v118 = sub_199DF7CDC();
  objc_allocWithZone(v118);
  v63 = v62;
  v64 = v61;
  *(v60 + 40) = sub_199DF7CCC();
  v65 = type metadata accessor for ContactCardActions();
  v128 = *(v65 + 24);
  sub_199AAB0E0(v148, &v139);
  sub_199AAB0E0(v144, v138);
  sub_199AAB0E0(v145, v137);
  sub_199AAB0E0(v146, v136);
  sub_199AAB0E0(v147, v135);

  v66 = v129;
  sub_199DF7A3C();
  sub_199AAB144(v143);
  sub_199AAAFE4(&v149);
  v128 = v65;
  *(v66 + *(v65 + 28)) = 1;
  v67 = v131;
  sub_199AAF5A8();
  sub_199AAB038(v67 + 48, v143);
  sub_199AAAE4C(v67 + 8, &v149);
  v68 = *(v67 + 312);
  v69 = *(v67 + 320);
  v70 = *(v67 + 328);
  v71 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_199AAD408(&v149, &v139, &qword_1EAF729D0);
  if (v139)
  {
    v72 = v140;
    sub_199AAAFE4(&v139);
    v132 = &unk_1F0DE0968;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
    }
  }

  else
  {
    sub_199A79A04(&v139, &qword_1EAF729D0);
  }

  v102(v105, 1, 1, v104);
  v139 = v68;
  v140 = v69;
  v141 = v70;
  sub_199AAEA84(&v139);
  [objc_allocWithZone(MEMORY[0x1E6996648]) init];
  v104 = v103;
  v103 = v71;
  v73 = v107;
  sub_199DF7ACC();
  v74 = v112;
  (*(v108 + 32))(v112, v73, v109);
  v109 = *(v106 + 20);
  sub_199AAB0E0(v148, &v139);
  sub_199AAB0E0(v144, v138);
  sub_199AAB0E0(v145, v137);
  sub_199AAB0E0(v146, v136);
  sub_199AAB0E0(v147, v135);

  sub_199DF7A3C();

  sub_199A79A04(&v149, &qword_1EAF729D0);
  sub_199AAB144(v143);
  v75 = v113;
  sub_199AAD334(v74, v113);
  v76 = v110;
  v77 = v131;
  sub_199AAF5A8();
  sub_199AAD334(v75, v76);
  sub_199AAD398(v76, v127);
  sub_199AAAE4C(v77 + 8, &v149);
  sub_199AAB038(v77 + 48, v143);
  v78 = v126;
  sub_199AAAE4C(&v149, v126);
  v80 = v149;
  v79 = v150;
  v134 = &unk_1F0DE0968;
  swift_dynamicCastObjCProtocolUnconditional();
  v81 = objc_allocWithZone(v118);
  v82 = v80;
  v83 = v79;
  *(v78 + 40) = sub_199DF7CCC();
  v113 = *(v128 + 24);
  sub_199AAB0E0(v148, &v139);
  sub_199AAB0E0(v144, v138);
  sub_199AAB0E0(v145, v137);
  sub_199AAB0E0(v146, v136);
  sub_199AAB0E0(v147, v135);

  sub_199DF7A3C();
  sub_199AAB144(v143);
  sub_199AAAFE4(&v149);
  *(v78 + *(v128 + 28)) = 2;
  v84 = v131;
  sub_199AAF5A8();
  sub_199AAB038(v84 + 48, v143);
  *v130 = v104;
  type metadata accessor for ContactCardShareLocation();
  sub_199AAB0E0(v148, &v149);
  sub_199AAB0E0(v144, &v139);
  sub_199AAB0E0(v145, v138);
  sub_199AAB0E0(v146, v137);
  sub_199AAB0E0(v147, v136);

  sub_199DF7A3C();
  sub_199AAB144(v143);
  v85 = v131;
  sub_199AAF5A8();
  sub_199AAAE4C(v85 + 8, &v149);
  sub_199AAB038(v85 + 48, v143);
  v86 = v120;
  sub_199AAAE4C(&v149, v120);
  v88 = v149;
  v87 = v150;
  v133 = &unk_1F0DE0968;
  swift_dynamicCastObjCProtocolUnconditional();
  objc_allocWithZone(v118);
  v89 = v88;
  v90 = v87;
  *(v86 + 40) = sub_199DF7CCC();
  v118 = *(v128 + 24);
  sub_199AAB0E0(v148, &v139);
  sub_199AAB0E0(v144, v138);
  sub_199AAB0E0(v145, v137);
  sub_199AAB0E0(v146, v136);
  sub_199AAB0E0(v147, v135);

  sub_199DF7A3C();
  sub_199AAB144(v143);
  sub_199AAAFE4(&v149);
  *(v86 + *(v128 + 28)) = 3;
  sub_199AAF5A8();
  v91 = v121;
  sub_199AAD408(v119, v121, &unk_1EAF728C0);
  v92 = v123;
  sub_199AAD408(v129, v123, &unk_1EAF728B0);
  v93 = v124;
  sub_199AAD408(v127, v124, &qword_1EAF728A8);
  sub_199AAD408(v126, v122, &unk_1EAF728B0);
  v94 = v117;
  sub_199AAD408(v130, v117, &qword_1EAF728A0);
  v95 = v115;
  sub_199AAD408(v86, v115, &unk_1EAF728B0);
  v96 = v91;
  v97 = v116;
  sub_199AAD408(v96, v116, &unk_1EAF728C0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF728D0);
  sub_199AAD408(v92, v97 + v98[12], &unk_1EAF728B0);
  sub_199AAD408(v93, v97 + v98[16], &qword_1EAF728A8);
  v99 = v122;
  sub_199AAD408(v122, v97 + v98[20], &unk_1EAF728B0);
  sub_199AAD408(v94, v97 + v98[24], &qword_1EAF728A0);
  sub_199AAD408(v95, v97 + v98[28], &unk_1EAF728B0);
  sub_199A79A04(v120, &unk_1EAF728B0);
  sub_199A79A04(v130, &qword_1EAF728A0);
  sub_199A79A04(v126, &unk_1EAF728B0);
  sub_199A79A04(v127, &qword_1EAF728A8);
  sub_199A79A04(v129, &unk_1EAF728B0);
  sub_199A79A04(v119, &unk_1EAF728C0);
  sub_199A79A04(v95, &unk_1EAF728B0);
  sub_199A79A04(v94, &qword_1EAF728A0);
  sub_199A79A04(v99, &unk_1EAF728B0);
  sub_199A79A04(v124, &qword_1EAF728A8);
  sub_199A79A04(v123, &unk_1EAF728B0);
  return sub_199A79A04(v121, &unk_1EAF728C0);
}

uint64_t sub_199AAD334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AAD398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF728A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AAD408(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AAD48C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
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

uint64_t sub_199AAD4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 329) = 1;
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

    *(result + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AAD57C()
{
  result = qword_1EAF728D8;
  if (!qword_1EAF728D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF728E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF728D8);
  }

  return result;
}

uint64_t ContactCardDetails.PropertyViewConfiguration.HighlightCategory.hashValue.getter()
{
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](0);
  return sub_199DFAABC();
}

uint64_t sub_199AAD684()
{
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](0);
  return sub_199DFAABC();
}

uint64_t sub_199AAD6F0()
{
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](0);
  return sub_199DFAABC();
}

uint64_t ContactCardDetails.PropertyViewConfiguration.highlightedLabeledValueIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

ContactsUI::ContactCardDetails::PropertyViewConfiguration __swiftcall ContactCardDetails.PropertyViewConfiguration.init(isMailVIP:highlightedLabeledValueIdentifiers:shouldColorEmphasizeHighlightedProperties:)(Swift::Bool isMailVIP, Swift::OpaquePointer highlightedLabeledValueIdentifiers, Swift::Bool shouldColorEmphasizeHighlightedProperties)
{
  *v3 = isMailVIP;
  *(v3 + 8) = highlightedLabeledValueIdentifiers;
  *(v3 + 16) = shouldColorEmphasizeHighlightedProperties;
  result.highlightedLabeledValueIdentifiers = highlightedLabeledValueIdentifiers;
  result.shouldColorEmphasizeHighlightedProperties = shouldColorEmphasizeHighlightedProperties;
  result.isMailVIP = isMailVIP;
  return result;
}

uint64_t sub_199AAD7C4()
{
  result = sub_199DF77AC();
  qword_1EAF728F0 = result;
  return result;
}

uint64_t static ContactCardDetails.descriptorsForRequiredKeys.getter()
{
  if (qword_1EAF71E08 != -1)
  {
    swift_once();
  }

  return sub_199DF81AC();
}

uint64_t ContactCardDetails.init(contact:contactStore:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v22 - v6;
  v8 = sub_199DF7ADC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_199AAD408(&v40, v39, &qword_1EAF727B0);
  sub_199AAD408(v39, v38, &qword_1EAF727B0);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_199AAD408(v38, v29, &qword_1EAF727B0);
  if (*&v29[24])
  {
    sub_199AA8F1C(v29, v43);
  }

  else
  {
    *(&v43[1] + 1) = sub_199DF9B2C();
    *&v43[2] = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(v43);
    _s10ContactsUI23ContactCardDetailsStyleV25defaultBackgroundMaterial05SwiftB00I0Vvg_0();
    if (*&v29[24])
    {
      sub_199A79A04(v29, &qword_1EAF727B0);
    }
  }

  sub_199AA8F1C(v43, &v29[216]);
  sub_199DF7BDC();
  *v29 = v13;
  *&v29[8] = sub_199DF7B9C();
  *&v29[16] = sub_199DF7B8C();
  *&v29[24] = sub_199DF7BCC();
  sub_199AAD408(v36, &v27, &qword_1EAF727B0);
  if (v28)
  {
    sub_199AA8F1C(&v27, v43);
  }

  else
  {
    v14 = sub_199DF7B3C();
    *&v43[2] = MEMORY[0x1E697E0A8];
    *(&v43[1] + 1) = MEMORY[0x1E697E0B8];
    *&v43[0] = v14;
    if (v28)
    {
      sub_199A79A04(&v27, &qword_1EAF727B0);
    }
  }

  sub_199AA8F1C(v43, &v29[32]);
  *&v29[72] = sub_199DF7B8C();
  *&v29[80] = sub_199DF7BAC();
  sub_199AAD408(v34, &v27, &qword_1EAF727B0);
  if (v28)
  {
    sub_199AA8F1C(&v27, v43);
  }

  else
  {
    v15 = sub_199DF7B2C();
    *&v43[2] = MEMORY[0x1E697E0A8];
    *(&v43[1] + 1) = MEMORY[0x1E697E0B8];
    *&v43[0] = v15;
    if (v28)
    {
      sub_199A79A04(&v27, &qword_1EAF727B0);
    }
  }

  sub_199AA8F1C(v43, &v29[88]);
  sub_199AAD408(v32, &v27, &qword_1EAF727B0);
  if (v28)
  {
    sub_199AA8F1C(&v27, v43);
  }

  else
  {
    v16 = sub_199DF7B4C();
    *&v43[2] = MEMORY[0x1E697E0A8];
    *(&v43[1] + 1) = MEMORY[0x1E697E0B8];
    *&v43[0] = v16;
    if (v28)
    {
      sub_199A79A04(&v27, &qword_1EAF727B0);
    }
  }

  sub_199AA8F1C(v43, &v29[128]);
  sub_199AAD408(v30, &v27, &qword_1EAF727B0);
  if (v28)
  {
    sub_199AA8F1C(&v27, v43);
  }

  else
  {
    v17 = sub_199DF7B5C();
    *&v43[2] = MEMORY[0x1E697E0A8];
    *(&v43[1] + 1) = MEMORY[0x1E697E0B8];
    *&v43[0] = v17;
    if (v28)
    {
      sub_199A79A04(&v27, &qword_1EAF727B0);
    }
  }

  sub_199AA8F1C(v43, &v29[168]);
  v18 = sub_199DF7BEC();
  sub_199A79A04(v30, &qword_1EAF727B0);
  sub_199A79A04(v32, &qword_1EAF727B0);
  sub_199A79A04(v34, &qword_1EAF727B0);
  sub_199A79A04(v36, &qword_1EAF727B0);
  sub_199A79A04(v38, &qword_1EAF727B0);
  sub_199A79A04(v39, &qword_1EAF727B0);
  sub_199A79A04(&v40, &qword_1EAF727B0);
  *&v29[256] = v18;
  *&v29[208] = 1;
  memcpy(v43, v29, 0x108uLL);
  sub_199AAB038(v43, v29);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_199AAD408(&v40, v39, &qword_1EAF729D0);
  if (v39[0])
  {
    v19 = v39[1];
    sub_199AAAFE4(v39);
    v26 = &unk_1F0DE0968;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
    }
  }

  else
  {
    sub_199A79A04(v39, &qword_1EAF729D0);
  }

  v20 = sub_199DF7DBC();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  [objc_allocWithZone(MEMORY[0x1E6996648]) init];
  v23 = a1;
  v24 = v24;
  sub_199DF7ACC();
  (*(v9 + 32))(v25, v12, v8);
  v22[1] = *(type metadata accessor for ContactCardDetails(0) + 20);
  sub_199AAB0E0(&v29[216], v39);
  sub_199AAB0E0(&v29[32], v38);
  sub_199AAB0E0(&v29[88], v36);
  sub_199AAB0E0(&v29[128], v34);
  sub_199AAB0E0(&v29[168], v32);

  sub_199DF7A3C();

  sub_199A79A04(&v40, &qword_1EAF729D0);
  sub_199AAB144(v29);
  return sub_199AAB144(v43);
}

uint64_t ContactCardDetails.init(contact:contactStore:style:propertyViewConfiguration:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v24 = sub_199DF7ADC();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v17 = a4[1];
  v18 = *(a4 + 16);
  v27 = a3;
  sub_199AAB038(a3, v38);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_199AAD408(v36, &v33, &qword_1EAF729D0);
  if (v33)
  {
    v19 = v34;
    sub_199AAAFE4(&v33);
    v28 = &unk_1F0DE0968;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
    }
  }

  else
  {
    sub_199A79A04(&v33, &qword_1EAF729D0);
  }

  v20 = sub_199DF7DBC();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v33 = v16;
  v34 = v17;
  v35 = v18;
  sub_199AAEA84(&v33);

  [objc_allocWithZone(MEMORY[0x1E6996648]) init];
  v23 = v25;
  v25 = a2;
  sub_199DF7ACC();
  (*(v12 + 32))(v26, v15, v24);
  v24 = *(type metadata accessor for ContactCardDetails(0) + 20);
  sub_199AAB0E0(&v43, &v33);
  sub_199AAB0E0(&v39, &v32);
  sub_199AAB0E0(&v40, &v31);
  sub_199AAB0E0(&v41, &v30);
  sub_199AAB0E0(&v42, &v29);

  sub_199DF7A3C();

  sub_199AAB144(v27);
  sub_199A79A04(v36, &qword_1EAF729D0);
  return sub_199AAB144(v38);
}

uint64_t ContactCardDetails.init(contact:contactStore:style:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_199DF7ADC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  sub_199AAB038(a3, v32);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_199AAD408(v30, v29, &qword_1EAF729D0);
  if (v29[0])
  {
    v16 = v29[1];
    sub_199AAAFE4(v29);
    v24 = &unk_1F0DE0968;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
    }
  }

  else
  {
    sub_199A79A04(v29, &qword_1EAF729D0);
  }

  v17 = sub_199DF7DBC();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  [objc_allocWithZone(MEMORY[0x1E6996648]) init];
  v20 = a1;
  v21 = a2;
  sub_199DF7ACC();
  (*(v12 + 32))(v22, v15, v11);
  v19[1] = *(type metadata accessor for ContactCardDetails(0) + 20);
  sub_199AAB0E0(&v37, v29);
  sub_199AAB0E0(&v33, &v28);
  sub_199AAB0E0(&v34, &v27);
  sub_199AAB0E0(&v35, &v26);
  sub_199AAB0E0(&v36, &v25);

  sub_199DF7A3C();

  sub_199AAB144(v23);
  sub_199A79A04(v30, &qword_1EAF729D0);
  return sub_199AAB144(v32);
}

uint64_t ContactCardDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF7ADC();
  MEMORY[0x1EEE9AC00](v3, v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_199DF779C();
  v7 = *(type metadata accessor for ContactCardDetails(0) + 20);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72900) + 36);
  v9 = sub_199DF7A4C();
  return (*(*(v9 - 8) + 16))(a1 + v8, v1 + v7, v9);
}

uint64_t sub_199AAE830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_199DF7ADC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_199DF779C();
  v9 = *(a1 + 20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72900) + 36);
  v11 = sub_199DF7A4C();
  return (*(*(v11 - 8) + 16))(a2 + v10, v2 + v9, v11);
}

uint64_t sub_199AAE954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72958) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72960) + 28);
  v9 = sub_199DF7A4C();
  (*(*(v9 - 8) + 16))(v7 + v8, v3, v9);
  *v7 = KeyPath;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72968);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

id sub_199AAEA84(int *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E6996AE0]) init];
  [v4 setIsMailVIP_];
  v5 = *(v1 + 16);
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_199A9C55C(0, v5, 0);
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v14 + 16);
      v10 = *(v14 + 24);
      sub_199DF81AC();
      if (v9 >= v10 >> 1)
      {
        sub_199A9C55C((v10 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v11 = v14 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v12 = sub_199DFA0BC();

  [v4 setHighlightedLabeledValueIdentifiers_];

  [v4 setShouldColorEmphasizeHighlightedProperties_];
  return v4;
}

unint64_t sub_199AAEBE8()
{
  result = qword_1EAF72908;
  if (!qword_1EAF72908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72908);
  }

  return result;
}

uint64_t sub_199AAEC80()
{
  result = sub_199DF7ADC();
  if (v1 <= 0x3F)
  {
    result = sub_199DF7A4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_199AAED18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199AAED60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactCardDetails.PropertyViewConfiguration.HighlightCategory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContactCardDetails.PropertyViewConfiguration.HighlightCategory(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_199AAEE98()
{
  result = qword_1EAF72930;
  if (!qword_1EAF72930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72900);
    sub_199AAEF84(&qword_1EAF72938, MEMORY[0x1E6996940]);
    sub_199AAEF84(&unk_1EAF727F0, type metadata accessor for ContactCardStyeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72930);
  }

  return result;
}

uint64_t sub_199AAEF84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199AAF014()
{
  result = sub_199DF7A4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_199AAF09C()
{
  result = qword_1EAF72970;
  if (!qword_1EAF72970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72958);
    sub_199AA0B90(&qword_1EAF72978, &qword_1EAF72968);
    sub_199AA0B90(&qword_1EAF72980, &qword_1EAF72960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72970);
  }

  return result;
}

uint64_t ContactCardDetailsStyle.init(backgroundStyle:headerNameFont:propertyLabelFont:propertyLabelColor:propertyValueFont:propertyValueColor:separatorColor:allowEditingNotesInViewMode:groupPropertiesByType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, char a9)
{
  sub_199AAAEA8(a1, v46);
  sub_199AAAEA8(v46, v45);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_199AAAEA8(v45, &v32);
  if (v33)
  {
    sub_199AA8F1C(&v32, &v34);
  }

  else
  {
    v35 = sub_199DF9B2C();
    v36 = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(&v34);
    _s10ContactsUI23ContactCardDetailsStyleV25defaultBackgroundMaterial05SwiftB00I0Vvg_0();
    if (v33)
    {
      sub_199AAAF7C(&v32);
    }
  }

  sub_199AA8F1C(&v34, a8 + 216);
  sub_199DF7BDC();
  *a8 = v17;
  *(a8 + 8) = sub_199DF7B9C();
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = sub_199DF7B8C();
  }

  *(a8 + 16) = v18;

  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = sub_199DF7BCC();
  }

  *(a8 + 24) = v19;
  sub_199AAAEA8(v43, &v32);
  if (v33)
  {
    sub_199AA8F1C(&v32, &v34);
  }

  else
  {
    if (a3)
    {
      *(&v30 + 1) = MEMORY[0x1E69815C0];
      v31 = MEMORY[0x1E6981568];
      *&v29 = a3;
      sub_199AA8F1C(&v29, &v34);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v20 = sub_199DF7B3C();
      v35 = MEMORY[0x1E697E0B8];
      v36 = MEMORY[0x1E697E0A8];
      *&v34 = v20;
    }

    v21 = v33;
    swift_retain_n();
    if (v21)
    {
      sub_199AAAF7C(&v32);
    }
  }

  sub_199AA8F1C(&v34, a8 + 32);
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = sub_199DF7B8C();
  }

  *(a8 + 72) = v22;

  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = sub_199DF7BAC();
  }

  *(a8 + 80) = v23;
  sub_199AAAEA8(v41, &v32);
  if (v33)
  {
    sub_199AA8F1C(&v32, &v34);
  }

  else
  {
    if (a5)
    {
      *(&v30 + 1) = MEMORY[0x1E69815C0];
      v31 = MEMORY[0x1E6981568];
      *&v29 = a5;
      sub_199AA8F1C(&v29, &v34);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v24 = sub_199DF7B2C();
      v35 = MEMORY[0x1E697E0B8];
      v36 = MEMORY[0x1E697E0A8];
      *&v34 = v24;
      if (*(&v30 + 1))
      {
        sub_199AAAF7C(&v29);
      }
    }

    v25 = v33;
    swift_retain_n();
    if (v25)
    {
      sub_199AAAF7C(&v32);
    }
  }

  sub_199AA8F1C(&v34, a8 + 88);
  sub_199AAAEA8(v39, &v32);
  if (v33)
  {
    sub_199AA8F1C(&v32, &v34);
  }

  else
  {
    v26 = sub_199DF7B4C();
    v35 = MEMORY[0x1E697E0B8];
    v36 = MEMORY[0x1E697E0A8];
    *&v34 = v26;
    if (v33)
    {
      sub_199AAAF7C(&v32);
    }
  }

  sub_199AA8F1C(&v34, a8 + 128);
  sub_199AAAEA8(v37, &v32);
  if (v33)
  {
    sub_199AA8F1C(&v32, &v34);
  }

  else
  {
    v27 = sub_199DF7B5C();
    v35 = MEMORY[0x1E697E0B8];
    v36 = MEMORY[0x1E697E0A8];
    *&v34 = v27;
    if (v33)
    {
      sub_199AAAF7C(&v32);
    }
  }

  sub_199AA8F1C(&v34, a8 + 168);
  if (!a6)
  {
    a6 = sub_199DF7BEC();
  }

  sub_199AAAF7C(a1);
  sub_199AAAF7C(v37);
  sub_199AAAF7C(v39);
  sub_199AAAF7C(v41);
  sub_199AAAF7C(v43);
  sub_199AAAF7C(v45);
  result = sub_199AAAF7C(v46);
  *(a8 + 256) = a6;
  *(a8 + 208) = a7 & 1;
  *(a8 + 209) = a9 & 1;
  return result;
}

uint64_t sub_199AAF5A8()
{
  sub_199AAB0E0(v0 + 216, v6);
  sub_199AAB0E0(v0 + 32, v5);
  sub_199AAB0E0(v0 + 88, v4);
  sub_199AAB0E0(v0 + 128, v3);
  sub_199AAB0E0(v0 + 168, v2);

  return sub_199DF7A3C();
}

uint64_t ContactCardDetailsStyle.headerNameFont.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.propertyLabelFont.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.propertyLabelColor.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.propertyLabelStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 32);

  return sub_199AA8F1C(a1, v1 + 32);
}

uint64_t ContactCardDetailsStyle.propertyValueFont.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.propertyValueColor.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.propertyValueStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 88);

  return sub_199AA8F1C(a1, v1 + 88);
}

uint64_t ContactCardDetailsStyle.primaryButtonLabelStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 128);

  return sub_199AA8F1C(a1, v1 + 128);
}

uint64_t ContactCardDetailsStyle.secondaryButtonLabelStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 168);

  return sub_199AA8F1C(a1, v1 + 168);
}

uint64_t ContactCardDetailsStyle.backgroundStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 216);

  return sub_199AA8F1C(a1, v1 + 216);
}

uint64_t ContactCardDetailsStyle.separatorColor.setter(uint64_t a1)
{

  *(v1 + 256) = a1;
  return result;
}

uint64_t ContactCardDetailsStyle.init(backgroundStyle:headerNameFontSize:headerNameFont:propertyLabelFont:propertyLabelColor:propertyValueFont:propertyValueColor:separatorColor:allowEditingNotesInViewMode:groupPropertiesByType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12)
{
  sub_199AAAEA8(a1, v51);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_199AAAEA8(v51, &v38);
  if (v39)
  {
    sub_199AA8F1C(&v38, &v40);
  }

  else
  {
    v41 = sub_199DF9B2C();
    v42 = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    _s10ContactsUI23ContactCardDetailsStyleV25defaultBackgroundMaterial05SwiftB00I0Vvg_0();
    if (v39)
    {
      sub_199AAAF7C(&v38);
    }
  }

  sub_199AA8F1C(&v40, a9 + 216);
  if (a3)
  {
    sub_199DF7BDC();
    *a9 = v21;
    if (a4)
    {
LABEL_7:
      v22 = a4;
      goto LABEL_10;
    }
  }

  else
  {
    *a9 = a2;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  v22 = sub_199DF7B9C();
LABEL_10:
  *(a9 + 8) = v22;

  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = sub_199DF7B8C();
  }

  *(a9 + 16) = v23;

  if (a6)
  {
    v24 = a6;
  }

  else
  {
    v24 = sub_199DF7BCC();
  }

  *(a9 + 24) = v24;
  sub_199AAAEA8(v49, &v38);
  if (v39)
  {
    sub_199AA8F1C(&v38, &v40);
  }

  else
  {
    if (a6)
    {
      *(&v36 + 1) = MEMORY[0x1E69815C0];
      v37 = MEMORY[0x1E6981568];
      *&v35 = a6;
      sub_199AA8F1C(&v35, &v40);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v25 = sub_199DF7B3C();
      v41 = MEMORY[0x1E697E0B8];
      v42 = MEMORY[0x1E697E0A8];
      *&v40 = v25;
    }

    v26 = v39;
    swift_retain_n();
    if (v26)
    {
      sub_199AAAF7C(&v38);
    }
  }

  sub_199AA8F1C(&v40, a9 + 32);
  if (a7)
  {
    v27 = a7;
  }

  else
  {
    v27 = sub_199DF7B8C();
  }

  *(a9 + 72) = v27;

  if (a8)
  {
    v28 = a8;
  }

  else
  {
    v28 = sub_199DF7BAC();
  }

  *(a9 + 80) = v28;
  sub_199AAAEA8(v47, &v38);
  if (v39)
  {
    sub_199AA8F1C(&v38, &v40);
  }

  else
  {
    if (a8)
    {
      *(&v36 + 1) = MEMORY[0x1E69815C0];
      v37 = MEMORY[0x1E6981568];
      *&v35 = a8;
      sub_199AA8F1C(&v35, &v40);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v29 = sub_199DF7B2C();
      v41 = MEMORY[0x1E697E0B8];
      v42 = MEMORY[0x1E697E0A8];
      *&v40 = v29;
      if (*(&v36 + 1))
      {
        sub_199AAAF7C(&v35);
      }
    }

    v30 = v39;
    swift_retain_n();
    if (v30)
    {
      sub_199AAAF7C(&v38);
    }
  }

  sub_199AA8F1C(&v40, a9 + 88);
  sub_199AAAEA8(v45, &v38);
  if (v39)
  {
    sub_199AA8F1C(&v38, &v40);
  }

  else
  {
    v31 = sub_199DF7B4C();
    v41 = MEMORY[0x1E697E0B8];
    v42 = MEMORY[0x1E697E0A8];
    *&v40 = v31;
    if (v39)
    {
      sub_199AAAF7C(&v38);
    }
  }

  v32 = a10;
  sub_199AA8F1C(&v40, a9 + 128);
  sub_199AAAEA8(v43, &v38);
  if (v39)
  {
    sub_199AA8F1C(&v38, &v40);
  }

  else
  {
    v33 = sub_199DF7B5C();
    v41 = MEMORY[0x1E697E0B8];
    v42 = MEMORY[0x1E697E0A8];
    *&v40 = v33;
    if (v39)
    {
      sub_199AAAF7C(&v38);
    }
  }

  sub_199AA8F1C(&v40, a9 + 168);
  if (!a10)
  {
    v32 = sub_199DF7BEC();
  }

  sub_199AAAF7C(a1);
  sub_199AAAF7C(v43);
  sub_199AAAF7C(v45);
  sub_199AAAF7C(v47);
  sub_199AAAF7C(v49);
  result = sub_199AAAF7C(v51);
  *(a9 + 256) = v32;
  *(a9 + 208) = a11 & 1;
  *(a9 + 209) = a12 & 1;
  return result;
}

uint64_t ContactCardDetailsStyle.init(backgroundStyle:headerNameFontSize:headerNameFont:propertyLabelFont:propertyLabelColor:propertyLabelStyle:propertyValueFont:propertyValueColor:propertyValueStyle:primaryButtonLabelStyle:secondaryButtonLabelStyle:separatorColor:allowEditingNotesInViewMode:groupPropertiesByType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16)
{
  sub_199AAAEA8(a1, &v42);
  if (v43)
  {
    sub_199AA8F1C(&v42, &v44);
  }

  else
  {
    v45 = sub_199DF9B2C();
    v46 = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(&v44);
    _s10ContactsUI23ContactCardDetailsStyleV25defaultBackgroundMaterial05SwiftB00I0Vvg_0();
    if (v43)
    {
      sub_199AAAF7C(&v42);
    }
  }

  sub_199AA8F1C(&v44, a9 + 216);
  if (a3)
  {
    sub_199DF7BDC();
    *a9 = v24;
    if (a4)
    {
LABEL_7:
      v25 = a4;
      goto LABEL_10;
    }
  }

  else
  {
    *a9 = a2;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  v25 = sub_199DF7B9C();
LABEL_10:
  *(a9 + 8) = v25;

  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = sub_199DF7B8C();
  }

  *(a9 + 16) = v26;

  if (a6)
  {
    v27 = a6;
  }

  else
  {
    v27 = sub_199DF7BCC();
  }

  *(a9 + 24) = v27;
  sub_199AAAEA8(a7, &v42);
  if (v43)
  {
    sub_199AA8F1C(&v42, &v44);
  }

  else
  {
    if (a6)
    {
      *(&v40 + 1) = MEMORY[0x1E69815C0];
      v41 = MEMORY[0x1E6981568];
      *&v39 = a6;
      sub_199AA8F1C(&v39, &v44);
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v28 = sub_199DF7B3C();
      v45 = MEMORY[0x1E697E0B8];
      v46 = MEMORY[0x1E697E0A8];
      *&v44 = v28;
    }

    v29 = v43;
    swift_retain_n();
    if (v29)
    {
      sub_199AAAF7C(&v42);
    }
  }

  sub_199AA8F1C(&v44, a9 + 32);
  if (a8)
  {
    v30 = a8;
  }

  else
  {
    v30 = sub_199DF7B8C();
  }

  *(a9 + 72) = v30;

  if (a10)
  {
    v31 = a10;
  }

  else
  {
    v31 = sub_199DF7BAC();
  }

  *(a9 + 80) = v31;
  sub_199AAAEA8(a11, &v42);
  if (v43)
  {
    sub_199AA8F1C(&v42, &v44);
  }

  else
  {
    if (a10)
    {
      *(&v40 + 1) = MEMORY[0x1E69815C0];
      v41 = MEMORY[0x1E6981568];
      *&v39 = a10;
      sub_199AA8F1C(&v39, &v44);
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v32 = sub_199DF7B2C();
      v45 = MEMORY[0x1E697E0B8];
      v46 = MEMORY[0x1E697E0A8];
      *&v44 = v32;
      if (*(&v40 + 1))
      {
        sub_199AAAF7C(&v39);
      }
    }

    v33 = v43;
    swift_retain_n();
    if (v33)
    {
      sub_199AAAF7C(&v42);
    }
  }

  sub_199AA8F1C(&v44, a9 + 88);
  sub_199AAAEA8(a12, &v42);
  if (v43)
  {
    sub_199AA8F1C(&v42, &v44);
  }

  else
  {
    v34 = sub_199DF7B4C();
    v45 = MEMORY[0x1E697E0B8];
    v46 = MEMORY[0x1E697E0A8];
    *&v44 = v34;
    if (v43)
    {
      sub_199AAAF7C(&v42);
    }
  }

  v35 = a14;
  sub_199AA8F1C(&v44, a9 + 128);
  sub_199AAAEA8(a13, &v42);
  if (v43)
  {
    sub_199AA8F1C(&v42, &v44);
  }

  else
  {
    v36 = sub_199DF7B5C();
    v45 = MEMORY[0x1E697E0B8];
    v46 = MEMORY[0x1E697E0A8];
    *&v44 = v36;
    if (v43)
    {
      sub_199AAAF7C(&v42);
    }
  }

  sub_199AA8F1C(&v44, a9 + 168);
  if (!a14)
  {
    v35 = sub_199DF7BEC();
  }

  sub_199AAAF7C(a13);
  sub_199AAAF7C(a12);
  sub_199AAAF7C(a11);
  sub_199AAAF7C(a7);
  result = sub_199AAAF7C(a1);
  *(a9 + 256) = v35;
  *(a9 + 208) = a15 & 1;
  *(a9 + 209) = a16 & 1;
  return result;
}

uint64_t sub_199AB03E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199AB0428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199AB04DC(uint64_t a1)
{
  v2 = sub_199DF7A4C();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_199DF89FC();
}

id ContactCardHeader.init(contact:actionsProvider:style:includeInlineActions:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v31 - v13;
  v15 = sub_199DF7ADC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  sub_199AAAE4C(a2, v47);
  v33 = a3;
  sub_199AAB038(a3, v41);
  v20 = v48;
  v40[5] = &unk_1F0DE0968;
  v21 = swift_dynamicCastObjCProtocolConditional();
  v22 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  v32 = a1;
  if (!v21)
  {
    v29 = a1;
    [v22 init];
    v30 = sub_199DF7DBC();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    [objc_allocWithZone(MEMORY[0x1E6996648]) init];
    sub_199DF7ACC();
    goto LABEL_5;
  }

  v23 = v20;
  [v22 init];
  v24 = sub_199DF7DBC();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  result = [v23 geminiDataSource];
  if (result)
  {
    v26 = result;
    v27 = [result geminiManager];

    [objc_allocWithZone(MEMORY[0x1E6996648]) init];
    v28 = a1;
    sub_199DF7ACC();
    (*(v16 + 32))(v35, v19, v15);
LABEL_5:
    type metadata accessor for ContactCardHeader();
    sub_199AAB0E0(&v46, v40);
    sub_199AAB0E0(&v42, &v39);
    sub_199AAB0E0(&v43, &v38);
    sub_199AAB0E0(&v44, &v37);
    sub_199AAB0E0(&v45, &v36);

    sub_199DF7A3C();

    sub_199AAB144(v33);
    sub_199AAAFE4(v34);
    sub_199AAB144(v41);
    return sub_199AAAFE4(v47);
  }

  __break(1u);
  return result;
}

id ContactCardHeader.init(contact:actionsProvider:style:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = sub_199DF7ADC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v32 - v18;
  v20 = *(a2 + 8);
  v34 = a2;
  v35 = &unk_1F0DE0968;
  v21 = swift_dynamicCastObjCProtocolConditional();
  v22 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  if (!v21)
  {
    v29 = a1;
    [v22 init];
    v30 = sub_199DF7DBC();
    (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
    [objc_allocWithZone(MEMORY[0x1E6996648]) init];
    sub_199DF7ACC();
    goto LABEL_5;
  }

  v23 = v20;
  [v22 init];
  v24 = sub_199DF7DBC();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  result = [v23 geminiDataSource];
  if (result)
  {
    v26 = result;
    v27 = [result geminiManager];

    [objc_allocWithZone(MEMORY[0x1E6996648]) init];
    v28 = a1;
    sub_199DF7ACC();
    (*(v8 + 32))(a4, v11, v7);
LABEL_5:
    type metadata accessor for ContactCardHeader();
    v31 = v33;
    sub_199AAF5A8();

    sub_199AAB144(v31);
    return sub_199AAAFE4(v34);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ContactCardHeader()
{
  result = qword_1EAF729A8;
  if (!qword_1EAF729A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactCardHeader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF7ADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF764C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  sub_199DF763C();
  sub_199AB0F8C();
  sub_199DF93EC();
  (*(v10 + 8))(v13, v9);
  KeyPath = swift_getKeyPath();
  v15 = *(type metadata accessor for ContactCardHeader() + 20);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF729A0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72960) + 28);
  v18 = sub_199DF7A4C();
  result = (*(*(v18 - 8) + 16))(v16 + v17, v2 + v15, v18);
  *v16 = KeyPath;
  return result;
}

unint64_t sub_199AB0F8C()
{
  result = qword_1EAF72998;
  if (!qword_1EAF72998)
  {
    sub_199DF764C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72998);
  }

  return result;
}

uint64_t sub_199AB1000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_199DF7ADC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_199DF764C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v4, v6);
  sub_199DF763C();
  sub_199AB0F8C();
  sub_199DF93EC();
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  v17 = *(a1 + 20);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF729A0) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72960) + 28);
  v20 = sub_199DF7A4C();
  result = (*(*(v20 - 8) + 16))(v18 + v19, v4 + v17, v20);
  *v18 = KeyPath;
  return result;
}

unint64_t sub_199AB1244()
{
  result = qword_1EAF729C0;
  if (!qword_1EAF729C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF729A0);
    sub_199DF764C();
    sub_199AB0F8C();
    swift_getOpaqueTypeConformance2();
    sub_199AB1300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF729C0);
  }

  return result;
}

unint64_t sub_199AB1300()
{
  result = qword_1EAF72980;
  if (!qword_1EAF72980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72980);
  }

  return result;
}

uint64_t ContactCardInlineActions.ActionType.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

_BYTE *ContactCardInlineActions.GroupAction.init(type:handler:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ContactCardInlineActions.init(contact:actionsProvider:style:actionTypes:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v48 = a1;
  v41 = a5;
  v36 = sub_199DF76DC();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  sub_199AAAE4C(a2, v61);
  v38 = a3;
  sub_199AAB038(a3, v55);
  sub_199AAB0E0(&v60, v54);
  sub_199AAB0E0(&v56, v53);
  sub_199AAB0E0(&v57, &v52);
  sub_199AAB0E0(&v58, &v51);
  sub_199AAB0E0(&v59, &v50);
  v40 = v48;

  v10 = v41;
  sub_199DF7A3C();
  sub_199AB1878(v61, v53);
  if (v53[0])
  {
    sub_199AAC24C(v53, v54);
    v11 = v54[1];
    v12 = v37;
    v13 = *(v37 + 16);
    if (v13)
    {
      v53[0] = MEMORY[0x1E69E7CC0];
      v14 = v40;
      v34 = v11;
      v15 = v11;
      sub_199A9C5BC(0, v13, 0);
      v16 = v53[0];
      v47 = *(v7 + 104);
      v46 = *MEMORY[0x1E69968F0];
      v45 = *MEMORY[0x1E6996900];
      v44 = *MEMORY[0x1E69968F8];
      v43 = *MEMORY[0x1E69968E8];
      v48 = (v7 + 104);
      v42 = v7 + 32;
      v17 = 32;
      v18 = v35;
      v19 = v36;
      do
      {
        v20 = v46;
        if (*(v12 + v17) == 2)
        {
          v20 = v45;
        }

        v21 = v44;
        if (!*(v12 + v17))
        {
          v21 = v43;
        }

        if (*(v12 + v17) <= 1u)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        v47(v18, v22, v19);
        v53[0] = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_199A9C5BC(v23 > 1, v24 + 1, 1);
          v16 = v53[0];
        }

        *(v16 + 16) = v24 + 1;
        (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v18, v19);
        ++v17;
        --v13;
      }

      while (v13);

      v25 = v40;
      v10 = v41;
    }

    else
    {
      v25 = v40;
      v30 = v40;
      v31 = v11;
    }

    v49 = &unk_1F0DE0968;
    swift_dynamicCastObjCProtocolUnconditional();
    v32 = objc_allocWithZone(sub_199DF79CC());
    v27 = sub_199DF79AC();

    sub_199AAB144(v38);
    sub_199AAAFE4(v39);
    v29 = v54;
  }

  else
  {

    sub_199AB18E8(v53);
    v26 = objc_allocWithZone(sub_199DF79CC());
    v27 = sub_199DF797C();
    v28 = v40;

    sub_199AAB144(v38);
    v29 = v39;
  }

  sub_199AAAFE4(v29);
  sub_199AAB144(v55);
  sub_199AB18E8(v61);
  result = type metadata accessor for ContactCardInlineActions();
  *(v10 + *(result + 20)) = v27;
  return result;
}

uint64_t sub_199AB1878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF729D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AB18E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF729D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContactCardInlineActions()
{
  result = qword_1EAF72A08;
  if (!qword_1EAF72A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactCardInlineActions.init(style:groupActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_199DF799C();
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_199DF76DC();
  v8 = *(v44 - 8);
  v10 = MEMORY[0x1EEE9AC00](v44, v9);
  v40 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v43 = &v29 - v13;
  v29 = a1;
  sub_199AAB038(a1, v51);
  sub_199AAB0E0(&v56, &v50);
  sub_199AAB0E0(&v52, &v49);
  sub_199AAB0E0(&v53, &v48);
  sub_199AAB0E0(&v54, &v47);
  sub_199AAB0E0(&v55, &v46);

  sub_199DF7A3C();
  v14 = *(v30 + 16);
  if (v14)
  {
    v16 = *(v8 + 104);
    v15 = v8 + 104;
    v39 = v16;
    v33 = *MEMORY[0x1E69968F0];
    v35 = *MEMORY[0x1E6996900];
    v32 = *MEMORY[0x1E69968F8];
    v34 = *MEMORY[0x1E69968E8];
    v37 = (v15 - 96);
    v38 = (v15 - 88);
    v36 = v42 + 32;
    v17 = v30 + 48;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v17 - 16) > 1u)
      {
        v19 = v35;
        if (*(v17 - 16) != 2)
        {
          v19 = v33;
        }
      }

      else
      {
        v19 = v34;
        if (*(v17 - 16))
        {
          v19 = v32;
        }
      }

      v20 = *(v17 - 8);
      v22 = v43;
      v21 = v44;
      v23 = v15;
      v39(v43, v19, v44);
      (*v38)(v40, v22, v21);
      sub_199A9A57C(v20);
      sub_199A9A57C(v20);
      sub_199DF798C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_199AB2BA4(0, v18[2] + 1, 1, v18, &qword_1EAF72A98, &unk_199E38C60, MEMORY[0x1E69969A0]);
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        v18 = sub_199AB2BA4(v24 > 1, v25 + 1, 1, v18, &qword_1EAF72A98, &unk_199E38C60, MEMORY[0x1E69969A0]);
      }

      v17 += 24;
      sub_199A9A5FC(v20);
      (*v37)(v43, v44);
      v18[2] = v25 + 1;
      (*(v42 + 32))(v18 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v45, v41);
      --v14;
      v15 = v23;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (!v18[2])
  {
  }

  v26 = objc_allocWithZone(sub_199DF79CC());
  v27 = sub_199DF797C();
  sub_199AAB144(v29);
  sub_199AAB144(v51);
  result = type metadata accessor for ContactCardInlineActions();
  *(v31 + *(result + 20)) = v27;
  return result;
}

uint64_t ContactCardInlineActions.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729D8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = sub_199DF7AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(type metadata accessor for ContactCardInlineActions() + 20));
  v14 = sub_199DF7B7C();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = v13;
  sub_199DF7AEC();
  sub_199AB3038();
  sub_199DF93EC();
  (*(v9 + 8))(v12, v8);
  KeyPath = swift_getKeyPath();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729E8) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72960) + 28);
  v19 = sub_199DF7A4C();
  result = (*(*(v19 - 8) + 16))(v17 + v18, v2, v19);
  *v17 = KeyPath;
  return result;
}

uint64_t sub_199AB20A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729D8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = sub_199DF7AFC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + *(a1 + 20));
  v16 = sub_199DF7B7C();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v15;
  sub_199DF7AEC();
  sub_199AB3038();
  sub_199DF93EC();
  (*(v11 + 8))(v14, v10);
  KeyPath = swift_getKeyPath();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729E8) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72960) + 28);
  v21 = sub_199DF7A4C();
  result = (*(*(v21 - 8) + 16))(v19 + v20, v4, v21);
  *v19 = KeyPath;
  return result;
}

void *sub_199AB22B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72648);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199AB23E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_199AB24F4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A78);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A80) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A80) - 8);
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

char *sub_199AB26E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199AB2840(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_199AB2944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_199AB2A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72A40);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_199AB2BA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_199AB2D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_199AB2EA8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_199AB2F2C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72A50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_199AB2FB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_199AB3038()
{
  result = qword_1EAF71490;
  if (!qword_1EAF71490)
  {
    sub_199DF7AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71490);
  }

  return result;
}

unint64_t sub_199AB3094()
{
  result = qword_1EAF729F8;
  if (!qword_1EAF729F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF729F8);
  }

  return result;
}

uint64_t sub_199AB312C()
{
  result = sub_199DF7A4C();
  if (v1 <= 0x3F)
  {
    result = sub_199DF79CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_199AB31EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_199AB3248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_199AB32AC()
{
  result = qword_1EAF72A20;
  if (!qword_1EAF72A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF729E8);
    sub_199DF7AFC();
    sub_199AB3038();
    swift_getOpaqueTypeConformance2();
    sub_199AB1300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72A20);
  }

  return result;
}

uint64_t ContactCardSensitiveContentActions.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF7D1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v14[1] = &unk_1F0DE0968;
  v9 = 1;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v10 = *v1;
    v11 = v8;
    v12 = v10;
    sub_199DF7D0C();
    (*(v4 + 32))(a1, v7, v3);
    v9 = 0;
  }

  return (*(v4 + 56))(a1, v9, 1, v3);
}

uint64_t sub_199AB34D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = 1;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v5 = *v1;
    v6 = v3;
    v7 = v5;
    sub_199DF7D0C();
    v4 = 0;
  }

  v8 = sub_199DF7D1C();
  return (*(*(v8 - 8) + 56))(a1, v4, 1, v8);
}

uint64_t sub_199AB3598(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_199AB35E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AB363C()
{
  result = qword_1EAF72AB0;
  if (!qword_1EAF72AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72AB8);
    sub_199AB36C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72AB0);
  }

  return result;
}

unint64_t sub_199AB36C0()
{
  result = qword_1EAF72AC0;
  if (!qword_1EAF72AC0)
  {
    sub_199DF7D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72AC0);
  }

  return result;
}

uint64_t ContactCardSharedProfile.init(contact:contactStore:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v6 - v2;
  v4 = sub_199DF7DBC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  [objc_allocWithZone(MEMORY[0x1E6996648]) init];
  return sub_199DF7ACC();
}

uint64_t ContactCardSharedProfile.body.getter()
{
  v1 = sub_199DF7ADC();
  MEMORY[0x1EEE9AC00](v1, v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_199DF7B0C();
}

uint64_t sub_199AB38FC()
{
  v1 = sub_199DF7ADC();
  MEMORY[0x1EEE9AC00](v1, v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_199DF7B0C();
}

uint64_t type metadata accessor for ContactCardSharedProfile()
{
  result = qword_1EAF72AD0;
  if (!qword_1EAF72AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AB3A38()
{
  result = sub_199DF7ADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_199AB3AA4()
{
  result = qword_1EAF72AE0;
  if (!qword_1EAF72AE0)
  {
    sub_199DF7B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72AE0);
  }

  return result;
}

uint64_t ContactCardShareLocation.init(contact:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for ContactCardShareLocation();
  sub_199AAF5A8();

  return sub_199AAB144(a2);
}

uint64_t type metadata accessor for ContactCardShareLocation()
{
  result = qword_1EAF72AF8;
  if (!qword_1EAF72AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactCardShareLocation.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() unifiedMeContactMonitor];
  v4 = [v3 isMeContact_];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72AE8);
  v7 = v5;
  if (v4)
  {
    v8 = *(*(v5 - 8) + 56);

    return v8(a1, 1, 1, v5);
  }

  else
  {
    v10 = MEMORY[0x1EEE9AC00](v5, v6);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v10, v13);
    *(&v18 - 2) = v1;
    v19 = v14;
    sub_199DF77DC();
    sub_199AB415C(&qword_1EAF72AF0, MEMORY[0x1E6996970]);
    sub_199DF9A1C();
    v15 = *(type metadata accessor for ContactCardShareLocation() + 20);
    v16 = *(v7 + 36);
    v17 = sub_199DF7A4C();
    (*(*(v17 - 8) + 16))(&v12[v16], &v1[v15], v17);
    sub_199AB3E2C(v12, a1);
    return (*(v19 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_199AB3DE8()
{
  v1 = **(v0 + 16);

  return MEMORY[0x1EEDF7D38](v1, 0);
}

uint64_t sub_199AB3E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72AE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_199AB3EE4()
{
  result = sub_199A7DDB0();
  if (v1 <= 0x3F)
  {
    result = sub_199DF7A4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_199AB3F68()
{
  result = qword_1EAF72B08;
  if (!qword_1EAF72B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72B10);
    sub_199AB3FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72B08);
  }

  return result;
}

unint64_t sub_199AB3FEC()
{
  result = qword_1EAF72B18;
  if (!qword_1EAF72B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72AE8);
    sub_199AB40A8();
    sub_199AB415C(&unk_1EAF727F0, type metadata accessor for ContactCardStyeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72B18);
  }

  return result;
}

unint64_t sub_199AB40A8()
{
  result = qword_1EAF72B20;
  if (!qword_1EAF72B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72B28);
    sub_199AB415C(&qword_1EAF72AF0, MEMORY[0x1E6996970]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72B20);
  }

  return result;
}

uint64_t sub_199AB415C(unint64_t *a1, void (*a2)(uint64_t))
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

id ContactCardSIMPicker.init(actionsProvider:)@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = [objc_opt_self() deviceSupportsGemini];
  v5 = *a1;
  *a2 = *a1;
  sub_199AAC24C(a1, a2 + 8);

  return v5;
}

id ContactCardSIMPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF78BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() unifiedMeContactMonitor];
  v9 = *v1;
  v10 = [v8 isMeContact_];

  if ((v10 & 1) != 0 || *(v1 + 48) != 1)
  {
    v12 = 1;
    return (*(v4 + 56))(a1, v12, 1, v3);
  }

  v11 = *(v1 + 16);
  v18[1] = &unk_1F0DE0968;
  v12 = 1;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    return (*(v4 + 56))(a1, v12, 1, v3);
  }

  v13 = v11;
  v14 = v9;
  result = [v13 geminiDataSource];
  if (result)
  {
    v16 = result;
    v17 = [result geminiManager];

    sub_199DF78AC();
    (*(v4 + 32))(a1, v7, v3);
    v12 = 0;
    return (*(v4 + 56))(a1, v12, 1, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_199AB441C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_199AB4464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AB44C4()
{
  result = qword_1EAF72B30;
  if (!qword_1EAF72B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72B38);
    sub_199AB4548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72B30);
  }

  return result;
}

unint64_t sub_199AB4548()
{
  result = qword_1EAF72B40;
  if (!qword_1EAF72B40)
  {
    sub_199DF78BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72B40);
  }

  return result;
}

uint64_t sub_199AB45A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall ContactCardSwiftUIViewController.runPPTTest(testName:options:)(Swift::String testName, Swift::OpaquePointer options)
{
  object = testName._object;
  rawValue = options._rawValue;
  countAndFlagsBits = testName._countAndFlagsBits;
  v39 = sub_199DF9DFC();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF9E1C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF9DDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_199DF9E3C();
  v33 = v14;
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v31 - v21;
  sub_199A7A02C(0, &qword_1EAF71D20);
  v34 = sub_199DFA39C();
  sub_199DF9E2C();
  *v13 = 1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E7F48], v9);
  MEMORY[0x19A8F7C30](v19, v13);
  (*(v10 + 8))(v13, v9);
  v32 = *(v15 + 8);
  v32(v19, v14);
  v23 = swift_allocObject();
  v24 = countAndFlagsBits;
  v25 = v36;
  v23[2] = v36;
  v23[3] = v24;
  v26 = rawValue;
  v23[4] = object;
  v23[5] = v26;
  aBlock[4] = sub_199AB4BA0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  sub_199DF81AC();
  sub_199DF81AC();

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199A79A64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199AA0B90(&qword_1EAF71CD0, &unk_1EAF74150);
  v29 = v39;
  sub_199DFA68C();
  v30 = v34;
  MEMORY[0x19A8F8150](v22, v8, v4, v27);
  _Block_release(v27);

  (*(v42 + 8))(v4, v29);
  (*(v40 + 8))(v8, v41);
  v32(v22, v33);
}

void sub_199AB4A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_hostingController;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = v7;
    sub_199DF8DEC();
  }

  else
  {
    sub_199DFA71C();

    MEMORY[0x19A8F7E00](a2, a3);
    MEMORY[0x19A8F7E00](0xD00000000000001FLL, 0x8000000199E45610);
    sub_199DFA85C();
    __break(1u);
  }
}

void *ContactCardSwiftUIViewController.hostingController.getter()
{
  v1 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *ContactCardSwiftUIViewController.contact.getter()
{
  v1 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ContactCardSwiftUIViewController.contact.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    sub_199A7A02C(0, &qword_1ED615BF0);
    v6 = a1;
    v7 = v5;
    v8 = sub_199DFA4EC();

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (a1)
  {
    v9 = a1;
LABEL_8:
    sub_199AB5030();
    v11 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    swift_beginAccess();
    *(v2 + v11) = 0;
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  if (*(v2 + v10) == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
}

void sub_199AB4EC8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_199AB4F30(v5);
}

uint64_t sub_199AB4F30(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    sub_199A7A02C(0, &qword_1ED615BF0);
    v6 = v5;
    v7 = a1;
    v8 = sub_199DFA4EC();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    result = swift_beginAccess();
    if (*(v2 + v9) != 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_199AB5030();
  v11 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  result = swift_beginAccess();
  *(v2 + v11) = 0;
  return result;
}

void sub_199AB5030()
{
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BC0);
  MEMORY[0x1EEE9AC00](v197, v1);
  v204 = &v182 - v2;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BC8);
  MEMORY[0x1EEE9AC00](v202, v3);
  v193 = &v182 - v4;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BD0);
  v201 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v5);
  v210 = &v182 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BD8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v200 = &v182 - v13;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BE0);
  MEMORY[0x1EEE9AC00](v199, v14);
  v198 = &v182 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BE8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v205 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v209 = &v182 - v21;
  v22 = sub_199DF7ADC();
  v211 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v196 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v212 = &v182 - v27;
  v28 = sub_199DF6FAC();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v208 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v207 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v39 = &v182 - v38;
  MEMORY[0x1EEE9AC00](v37, v40);
  v206 = &v182 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72990);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v195 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v194 = &v182 - v48;
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v182 - v50;
  if ((v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_isInlineContactCard] & 1) == 0)
  {
    v52 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
    swift_beginAccess();
    v53 = *&v0[v52];
    if (v53)
    {
      v192 = v51;
      Strong = swift_unknownObjectWeakLoadStrong();
      v189 = v16;
      if (Strong)
      {
        sub_199DF79CC();
        v55 = v53;
        v56 = sub_199DF79BC();
        v57 = *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_inlineActionsViewModel];
        *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_inlineActionsViewModel] = v56;
      }

      v58 = *&v0[v52];
      v59 = v192;
      if (v58)
      {
        v60 = sub_199DF7DBC();
        v61 = *(v60 - 8);
        v186 = *(v61 + 56);
        v185 = v61 + 56;
        v186(v59, 1, 1, v60);
        v62 = *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration];
        v190 = v22;
        v187 = v11;
        if (v62)
        {
          v183 = v60;
          v63 = *(v29 + 56);
          v64 = v206;
          v63(v206, 1, 1, v28);
          v184 = v58;
          v65 = v58;
          v188 = v62;
          if ([v188 body])
          {
            sub_199DF6FDC();
            sub_199A79A04(v64, &unk_1EAF72BF0);
            v63(v39, 0, 1, v28);
            sub_199AB7794(v39, v64, &unk_1EAF72BF0);
          }

          v66 = v188;
          v67 = [v188 actions];
          v68 = MEMORY[0x1E69E7CC0];
          if (v67)
          {
            v69 = v67;
            sub_199A7A02C(0, &unk_1EAF72C20);
            v70 = sub_199DFA0CC();

            if (v70 >> 62)
            {
              goto LABEL_27;
            }

            v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v71)
            {
              while (1)
              {
                v182 = v0;
                v214 = v68;
                sub_199A9C55C(0, v71 & ~(v71 >> 63), 0);
                if (v71 < 0)
                {
                  break;
                }

                v66 = 0;
                v68 = v214;
                v72 = v70;
                v213 = v70 & 0xC000000000000001;
                v191 = v70 & 0xFFFFFFFFFFFFFF8;
                v0 = v182;
                v73 = v70;
                while (1)
                {
                  v70 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    break;
                  }

                  if (v213)
                  {
                    v74 = MEMORY[0x19A8F8520](v66, v72);
                  }

                  else
                  {
                    if (v66 >= *(v191 + 16))
                    {
                      goto LABEL_26;
                    }

                    v74 = *(v72 + 8 * v66 + 32);
                  }

                  v75 = v74;
                  v76 = [v74 title];
                  if (!v76)
                  {
                    goto LABEL_54;
                  }

                  v77 = v76;
                  v78 = sub_199DF9F8C();
                  v80 = v79;

                  v215 = v78;
                  v216 = v80;
                  v81 = sub_199DFA06C();
                  v83 = v82;

                  v214 = v68;
                  v85 = *(v68 + 16);
                  v84 = *(v68 + 24);
                  if (v85 >= v84 >> 1)
                  {
                    sub_199A9C55C((v84 > 1), v85 + 1, 1);
                    v0 = v182;
                    v68 = v214;
                  }

                  *(v68 + 16) = v85 + 1;
                  v86 = v68 + 16 * v85;
                  *(v86 + 32) = v81;
                  *(v86 + 40) = v83;
                  ++v66;
                  v72 = v73;
                  if (v70 == v71)
                  {

                    v64 = v206;
                    v66 = v188;
                    goto LABEL_29;
                  }
                }

                __break(1u);
LABEL_26:
                __break(1u);
LABEL_27:
                v71 = sub_199DFA87C();
                if (!v71)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_28:

            v64 = v206;
          }

LABEL_29:
          v90 = [v66 title];
          sub_199DF6FDC();
          v91 = [v66 titleIconSymbolName];
          if (v91)
          {
            v92 = v91;
            sub_199DF9F8C();
          }

          v93 = [v66 titleIconColor];
          sub_199AAD408(v64, v207, &unk_1EAF72BF0);
          v94 = [v66 trailingDisclosureSystemImageName];
          if (v94)
          {
            v95 = v94;
            sub_199DF9F8C();
          }

          v96 = v188;
          [v188 allowsCopy];
          v97 = v194;
          sub_199DF7DAC();

          sub_199A79A04(v64, &unk_1EAF72BF0);
          v89 = v192;
          sub_199A79A04(v192, &qword_1EAF72990);
          v186(v97, 0, 1, v183);
          sub_199AB7794(v97, v89, &qword_1EAF72990);
          v88 = v184;
        }

        else
        {
          v87 = v58;
          v88 = v58;
          v89 = v192;
        }

        v98 = *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contactStore];
        v213 = swift_unknownObjectWeakLoadStrong();
        v99 = objc_opt_self();
        v100 = v88;
        v101 = v98;
        v102 = [v99 currentEnvironment];
        v103 = [v102 authorizationContext];

        sub_199AAD408(v89, v195, &qword_1EAF72990);
        v104 = *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration];
        v105 = *&v0[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_geminiManager];
        v106 = objc_opt_self();
        v107 = v105;
        v108 = v104;
        v109 = [v106 unifiedMeContactMonitor];
        [v109 isMeContact_];

        v110 = v212;
        v111 = v100;
        sub_199DF7ACC();
        v112 = v211;
        v113 = (*(v211 + 16))(v196, v110, v190);
        MEMORY[0x1EEE9AC00](v113, v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72C00);
        sub_199AB757C();
        v115 = v210;
        sub_199DF765C();
        v116 = [objc_opt_self() currentTraitCollection];
        v117 = [v116 horizontalSizeClass];

        if (v117 == 1)
        {
          v118 = v201;
          v119 = v203;
          (*(v201 + 16))(v204, v115, v203);
          swift_storeEnumTagMultiPayload();
          sub_199AB76B0();
          sub_199AA0B90(&qword_1EAF714B0, &qword_1EAF72BD0);
          v120 = v187;
          sub_199DF8EDC();
        }

        else
        {
          v121 = v193;
          v122 = &v193[*(v202 + 36)];
          v123 = *(sub_199DF896C() + 20);
          v124 = *MEMORY[0x1E697F468];
          v125 = sub_199DF8D1C();
          (*(*(v125 - 8) + 104))(&v122[v123], v124, v125);
          __asm { FMOV            V0.2D, #26.0 }

          *v122 = _Q0;
          *&v122[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10) + 36)] = 256;
          v131 = v201;
          v119 = v203;
          (*(v201 + 16))(v121, v115, v203);
          sub_199AAD408(v121, v204, &qword_1EAF72BC8);
          swift_storeEnumTagMultiPayload();
          sub_199AB76B0();
          sub_199AA0B90(&qword_1EAF714B0, &qword_1EAF72BD0);
          v115 = v210;
          v118 = v131;
          v120 = v187;
          sub_199DF8EDC();
          v132 = v121;
          v112 = v211;
          sub_199A79A04(v132, &qword_1EAF72BC8);
        }

        v133 = v209;
        (*(v118 + 8))(v115, v119);
        v134 = v200;
        sub_199AB7794(v120, v200, &qword_1EAF72BD8);
        v135 = sub_199DF88CC();
        v136 = sub_199DF918C();
        v137 = v134;
        v138 = v198;
        sub_199AB7794(v137, v198, &qword_1EAF72BD8);
        v139 = v138 + *(v199 + 36);
        *v139 = v135;
        *(v139 + 8) = v136;
        sub_199AB7794(v138, v133, &qword_1EAF72BE0);
        *(v133 + *(v189 + 52)) = v111;
        v140 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_hostingController;
        swift_beginAccess();
        v141 = *&v0[v140];
        if (v141)
        {
          sub_199AAD408(v133, v205, &qword_1EAF72BE8);
          sub_199AA0B90(&qword_1EAF71190, &qword_1EAF72BE8);
          v142 = v111;
          v143 = v141;
          v214 = sub_199DF995C();
          sub_199DF8E0C();

          sub_199A79A04(v133, &qword_1EAF72BE8);
          (*(v112 + 8))(v212, v190);
        }

        else
        {
          sub_199AAD408(v133, v205, &qword_1EAF72BE8);
          sub_199AA0B90(&qword_1EAF71190, &qword_1EAF72BE8);
          v144 = v111;
          v214 = sub_199DF995C();
          v145 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C18));
          v146 = sub_199DF8DFC();
          v147 = *&v0[v140];
          *&v0[v140] = v146;
          v148 = v146;

          v149 = v148;
          [v0 addChildViewController_];
          v150 = [v0 view];
          if (!v150)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v151 = v150;
          v152 = [v149 view];
          if (!v152)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v153 = v152;
          [v151 addSubview_];

          v154 = [v149 view];
          if (!v154)
          {
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          [v154 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
          v155 = swift_allocObject();
          *(v155 + 16) = xmmword_199E38F10;
          v156 = [v149 view];

          if (!v156)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v157 = [v156 leadingAnchor];

          v158 = [v0 view];
          if (!v158)
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v159 = v158;
          v160 = [v158 leadingAnchor];

          v161 = [v157 constraintEqualToAnchor_];
          *(v155 + 32) = v161;
          v162 = [v149 view];

          if (!v162)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v163 = [v162 trailingAnchor];

          v164 = [v0 view];
          if (!v164)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v165 = v164;
          v166 = [v164 trailingAnchor];

          v167 = [v163 constraintEqualToAnchor_];
          *(v155 + 40) = v167;
          v168 = [v149 view];

          if (!v168)
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v169 = [v168 topAnchor];

          v170 = [v0 view];
          if (!v170)
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v171 = v170;
          v172 = [v170 topAnchor];

          v173 = [v169 constraintEqualToAnchor_];
          *(v155 + 48) = v173;
          v174 = [v149 view];

          if (!v174)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v175 = [v174 bottomAnchor];

          v176 = [v0 view];
          if (!v176)
          {
LABEL_65:
            __break(1u);
            return;
          }

          v177 = v176;
          v178 = objc_opt_self();
          v179 = [v177 bottomAnchor];

          v180 = [v175 constraintEqualToAnchor_];
          *(v155 + 56) = v180;
          sub_199A7A02C(0, &qword_1EAF71D18);
          v181 = sub_199DFA0BC();

          [v178 activateConstraints_];

          [v149 didMoveToParentViewController_];
          sub_199A79A04(v209, &qword_1EAF72BE8);
          (*(v211 + 8))(v212, v190);
        }

        sub_199A79A04(v192, &qword_1EAF72990);
      }
    }
  }
}

void (*ContactCardSwiftUIViewController.contact.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 120) = v6;
  v7 = v6;
  return sub_199AB6648;
}

void sub_199AB6648(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 120);
  v3 = *v4;
  v6 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      if (!v3)
      {
        goto LABEL_15;
      }

      sub_199A7A02C(0, &qword_1ED615BF0);
      v8 = v3;
      v9 = v7;
      v10 = sub_199DFA4EC();

      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v3)
    {
      v14 = v3;
      goto LABEL_15;
    }

    v16 = v2[16];
    v17 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    swift_beginAccess();
    if (*(v16 + v17) != 1)
    {
LABEL_16:

      v3 = *v4;
      goto LABEL_20;
    }

LABEL_15:
    v18 = v2[16];
    sub_199AB5030();
    v19 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    swift_beginAccess();
    *(v18 + v19) = 0;
    goto LABEL_16;
  }

  if (v7)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    sub_199A7A02C(0, &qword_1ED615BF0);
    v11 = v3;
    v12 = v7;
    v13 = sub_199DFA4EC();

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v3)
  {
    v15 = v3;
LABEL_18:
    v22 = v2[16];
    sub_199AB5030();
    v23 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    swift_beginAccess();
    *(v22 + v23) = 0;
    goto LABEL_19;
  }

  v20 = v2[16];
  v21 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  if (*(v20 + v21) == 1)
  {
    goto LABEL_18;
  }

LABEL_19:

LABEL_20:

  free(v2);
}

uint64_t ContactCardSwiftUIViewController.forceReload.getter()
{
  v1 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ContactCardSwiftUIViewController.forceReload.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_199AB69B0()
{
  result = sub_199DF766C();
  qword_1EAF72B50 = result;
  return result;
}

uint64_t static ContactCardSwiftUIViewController.descriptorsForRequiredKeys.getter()
{
  if (qword_1EAF71E10 != -1)
  {
    swift_once();
  }

  return sub_199DF81AC();
}

void sub_199AB6B84(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration);
  *(v1 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v2 = a1;
    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_10:
    v6 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
    swift_beginAccess();
    *(v1 + v6) = 0;
    sub_199AB5030();

    return;
  }

  v4 = v1;
  sub_199A7A02C(0, &qword_1EAF71020);
  v2 = v2;
  v7 = v3;
  v5 = sub_199DFA4EC();

  if ((v5 & 1) == 0)
  {
    v1 = v4;
    goto LABEL_10;
  }
}

id ContactCardSwiftUIViewController.__allocating_init(contact:contactStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContact:a1 contactStore:a2 actionsProvider:0 customViewConfiguration:0 propertyViewConfiguration:0 isInlineContactCard:0 geminiManager:0];

  return v5;
}

id ContactCardSwiftUIViewController.init(contact:contactStore:)(void *a1, void *a2)
{
  v5 = [v2 initWithContact:a1 contactStore:a2 actionsProvider:0 customViewConfiguration:0 propertyViewConfiguration:0 isInlineContactCard:0 geminiManager:0];

  return v5;
}

id sub_199AB6E3C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, char a6, void *a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_hostingController] = 0;
  v13 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  *&v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact] = 0;
  v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_inlineActionsViewModel] = 0;
  v14 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration;
  *&v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration] = 0;
  v15 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration;
  *&v7[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration] = 0;
  sub_199DF7A2C();
  sub_199DF7A0C();
  sub_199DF7A1C();

  swift_beginAccess();
  v16 = *&v7[v13];
  *&v8[v13] = a1;
  v17 = a1;

  *&v8[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contactStore] = a2;
  swift_unknownObjectWeakAssign();
  v18 = *&v8[v14];
  *&v8[v14] = a4;
  v19 = a2;
  v20 = a4;

  v21 = *&v8[v15];
  *&v8[v15] = a5;
  v22 = a5;

  v8[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_isInlineContactCard] = a6;
  *&v8[OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_geminiManager] = a7;
  v33.receiver = v8;
  v33.super_class = ObjectType;
  v23 = a7;
  v24 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72BB8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_199E37D40;
  v26 = sub_199DF80EC();
  v27 = MEMORY[0x1E69DC130];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  v28 = v24;
  sub_199DFA34C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v28;
}

Swift::Void __swiftcall ContactCardSwiftUIViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_199AB5030();
}

uint64_t sub_199AB71FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_inlineActionsViewModel);
  if (!v4)
  {
    v4 = a2;
  }

  sub_199AB7608();
  sub_199AB765C();
  v5 = v4;
  result = sub_199DF8EDC();
  *a3 = v7;
  *(a3 + 8) = v8;
  return result;
}

id ContactCardSwiftUIViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_199DF9F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ContactCardSwiftUIViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199AB74BC()
{
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_inlineActionsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_propertyViewConfiguration) = 0;
  sub_199DFA85C();
  __break(1u);
}

unint64_t sub_199AB757C()
{
  result = qword_1EAF71238;
  if (!qword_1EAF71238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF72C00);
    sub_199AB7608();
    sub_199AB765C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71238);
  }

  return result;
}

unint64_t sub_199AB7608()
{
  result = qword_1EAF71B10;
  if (!qword_1EAF71B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B10);
  }

  return result;
}

unint64_t sub_199AB765C()
{
  result = qword_1EAF71A58;
  if (!qword_1EAF71A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A58);
  }

  return result;
}

unint64_t sub_199AB76B0()
{
  result = qword_1EAF71338;
  if (!qword_1EAF71338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72BC8);
    sub_199AA0B90(&qword_1EAF714B0, &qword_1EAF72BD0);
    sub_199AA0B90(&qword_1EAF713D8, &qword_1EAF72C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71338);
  }

  return result;
}

uint64_t sub_199AB7794(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 WrappedInlineActions.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_199DF9B5C();
  sub_199DF897C();
  v4 = v3;
  sub_199DF9B5C();
  sub_199DF863C();
  *a1 = v4;
  *(a1 + 8) = 10;
  *(a1 + 80) = v13;
  *(a1 + 96) = v14;
  result = v15;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 112) = v15;
  *(a1 + 128) = v6;
  return result;
}

uint64_t InlineActions.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729D8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = sub_199DF7B7C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v5;
  return sub_199DF7AEC();
}

uint64_t sub_199AB79E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF729D8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = sub_199DF7B7C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v5;
  return sub_199DF7AEC();
}

uint64_t getEnumTagSinglePayload for ContactCardView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ContactCardView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AB7B50()
{
  result = qword_1EAF72C30;
  if (!qword_1EAF72C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72C38);
    sub_199AB7BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C30);
  }

  return result;
}

unint64_t sub_199AB7BDC()
{
  result = qword_1EAF72C40;
  if (!qword_1EAF72C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72C48);
    sub_199AB7C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C40);
  }

  return result;
}

unint64_t sub_199AB7C68()
{
  result = qword_1EAF72C50;
  if (!qword_1EAF72C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C50);
  }

  return result;
}

uint64_t sub_199AB7CE4()
{
  type metadata accessor for CNPosterSnapshotter();
  result = swift_allocObject();
  qword_1EAF86EF0 = result;
  return result;
}

uint64_t sub_199AB7D10(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int8x16_t *a7)
{
  v20 = a2;
  v21 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C78);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_199AB7ED8(a3, a4, a5, a6, v21, sub_199ABC6BC, v18);
}

uint64_t sub_199AB7E88(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C78);
  return sub_199DFA13C();
}

void sub_199AB7ED8(void *a1, void *a2, void *a3, void *a4, int8x16_t *a5, uint64_t (*a6)(), uint64_t a7)
{
  v128 = a6;
  v127 = a4;
  v126 = a3;
  v137 = *MEMORY[0x1E69E9840];
  v11 = sub_199DF9DFC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_199DF9E1C();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  if (a5[2].i8[0] == 2)
  {
    v21 = vorrq_s8(*a5, a5[1]);
    if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
    {
      v75 = [a2 titleString];
      if (!v75)
      {
        sub_199DF9F8C();
        v75 = sub_199DF9F5C();
      }

      v76 = objc_opt_self();
      v135 = v128;
      v136 = a7;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = sub_199B77770;
      v134 = &block_descriptor_46;
      v77 = _Block_copy(&aBlock);

      [v76 incomingCallSnapshotForConfiguration:a1 nameString:v75 includingCallButtons:0 windowScene:v127 completionBlock:v77];
      _Block_release(v77);

      return;
    }
  }

  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v15;
  v119 = v20;
  v120 = v18;
  v121 = v12;
  v122 = v11;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v124 = v22 + 16;
  v123 = a2;
  v23 = sub_199ABA0A0(a5, a2);
  v125 = [objc_allocWithZone(CNPRSPosterConfigurationAttributes) initWithCNConfiguration_];
  v24 = [v125 extensionIdentifier];
  v25 = 0.5;
  if (v24)
  {
    v26 = v24;
    v27 = sub_199DF9F8C();
    v29 = v28;

    if (v27 == 0xD00000000000002CLL && 0x8000000199E456C0 == v29)
    {

      v30 = v127;
LABEL_9:
      +[CNWallpaperUtilities monogramPosterOffset]_0();
      v25 = v32;
      goto LABEL_10;
    }

    v31 = sub_199DFA99C();

    v30 = v127;
    if (v31)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = v127;
  }

LABEL_10:
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = a5[1];
  *(v34 + 24) = *a5;
  *(v34 + 16) = v33;
  *(v34 + 40) = v35;
  v36 = a5[2].u8[0];
  *(v34 + 56) = v36;
  *(v34 + 64) = v23;
  *(v34 + 72) = a1;
  *(v34 + 80) = v30;
  *(v34 + 88) = v22;
  *(v34 + 96) = v25;
  *(v34 + 104) = v128;
  *(v34 + 112) = a7;
  if (v36 != 2 || a5->i64[0] != 1 || a5[1].i64[0] | a5[1].i64[1] | a5->i64[1])
  {
    if (!v126)
    {
      v71 = swift_allocObject();
      *(v71 + 16) = sub_199ABA25C;
      *(v71 + 24) = v34;

      v72 = v30;
      v73 = a1;

      v74 = v23;
      sub_199ABC078(a5, &aBlock);

      sub_199ABB878(v73, v123, sub_199ABA298, v71);

      return;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      v78 = v30;
      v79 = a1;

      sub_199ABC078(a5, &aBlock);

      goto LABEL_35;
    }

    v123 = Strong;
    v56 = v126;
    v57 = v126;

    v58 = v30;
    v59 = a1;

    v41 = v23;
    v116 = v57;
    sub_199ABC078(a5, &aBlock);
    v60 = sub_199ABA2C0(a5, v41, v59, v56, v58);
    v61 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
    aBlock = 0;
    v115 = v61;
    v126 = v60;
    v62 = [v61 latestSnapshotBundleForRequest:v60 error:&aBlock];
    v127 = v41;
    if (v62)
    {
      v45 = v62;
      v63 = aBlock;
      v64 = [v41 levelSets];
      sub_199A7A02C(0, &qword_1EAF71088);
      v48 = sub_199DFA0CC();

      if (v48 >> 62)
      {
        if (sub_199DFA87C())
        {
          goto LABEL_26;
        }
      }

      else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_26:
        if ((v48 & 0xC000000000000001) != 0)
        {
          v65 = a7;
          v66 = MEMORY[0x19A8F8520](0, v48);
        }

        else
        {
          if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_46;
          }

          v65 = a7;
          v66 = *(v48 + 32);
        }

        v67 = v66;

        v68 = [v45 snapshotForLevelSet_];

        v69 = v124;
        swift_beginAccess();
        v70 = *v69;
        *v69 = v68;

        a7 = v65;
        v41 = v127;
LABEL_41:
        swift_beginAccess();
        v84 = *v69;
        if (!*v69)
        {
          v96 = swift_allocObject();
          v97 = a5[1];
          *(v96 + 24) = *a5;
          *(v96 + 16) = v41;
          *(v96 + 40) = v97;
          *(v96 + 56) = a5[2].i8[0];
          *(v96 + 60) = v25;
          *(v96 + 64) = v128;
          *(v96 + 72) = a7;
          v135 = sub_199ABC0B0;
          v136 = v96;
          aBlock = MEMORY[0x1E69E9820];
          v132 = 1107296256;
          v133 = sub_199AB9D24;
          v134 = &block_descriptor_1;
          v98 = _Block_copy(&aBlock);

          v99 = v41;
          sub_199ABC078(a5, v130);

          v100 = v115;
          v101 = v126;
          [v115 executeSnapshotRequest:v126 completion:v98];

          v102 = v116;
          _Block_release(v98);

          return;
        }

        sub_199A7A02C(0, &qword_1EAF71D20);
        v85 = a7;
        v86 = v84;
        v124 = sub_199DFA39C();
        v87 = swift_allocObject();
        v88 = a5[1];
        *(v87 + 24) = *a5;
        *(v87 + 16) = v86;
        *(v87 + 40) = v88;
        *(v87 + 56) = a5[2].i8[0];
        *(v87 + 60) = v25;
        *(v87 + 64) = v128;
        *(v87 + 72) = v85;
        v135 = sub_199ABC8C4;
        v136 = v87;
        aBlock = MEMORY[0x1E69E9820];
        v132 = 1107296256;
        v133 = sub_199AB45A0;
        v134 = &block_descriptor_29;
        v89 = _Block_copy(&aBlock);

        sub_199ABC078(a5, v130);
        v90 = v86;
        v91 = v117;
        sub_199DF9E0C();
        v130[0] = MEMORY[0x1E69E7CC0];
        sub_199ABC208(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
        sub_199ABC0BC();
        v92 = v118;
        v93 = v122;
        sub_199DFA68C();
        v94 = v124;
        MEMORY[0x19A8F8190](0, v91, v92, v89);

        _Block_release(v89);

        v95 = v116;
        goto LABEL_51;
      }
    }

    else
    {
      v80 = aBlock;
      v81 = sub_199DF717C();

      swift_willThrow();
    }

    v69 = v124;
    goto LABEL_41;
  }

  swift_beginAccess();
  v37 = swift_weakLoadStrong();

  v38 = v30;
  v39 = a1;
  if (!v37)
  {
LABEL_35:

    return;
  }

  v40 = v39;
  v127 = v37;

  v41 = v23;
  v42 = sub_199ABA2C0(a5, v41, v40, 0, v38);
  v43 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
  aBlock = 0;
  v123 = v43;
  v126 = v42;
  v44 = [v43 latestSnapshotBundleForRequest:v42 error:&aBlock];
  if (v44)
  {
    v45 = v44;
    v46 = aBlock;
    v47 = [v41 levelSets];
    sub_199A7A02C(0, &qword_1EAF71088);
    v48 = sub_199DFA0CC();

    if (!(v48 >> 62))
    {
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v116 = v41;
        if ((v48 & 0xC000000000000001) != 0)
        {
          v49 = a7;
          v50 = MEMORY[0x19A8F8520](0, v48);
        }

        else
        {
          if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v49 = a7;
          v50 = *(v48 + 32);
        }

        v51 = v50;

        v52 = [v45 snapshotForLevelSet_];

        v53 = v124;
        swift_beginAccess();
        v54 = *v53;
        *v53 = v52;

        a7 = v49;
        v41 = v116;
        goto LABEL_49;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (sub_199DFA87C())
    {
      goto LABEL_17;
    }

LABEL_47:

    goto LABEL_48;
  }

  v82 = aBlock;
  v83 = sub_199DF717C();

  swift_willThrow();
LABEL_48:
  v53 = v124;
LABEL_49:
  swift_beginAccess();
  v103 = *v53;
  if (*v53)
  {
    sub_199A7A02C(0, &qword_1EAF71D20);
    v104 = v103;
    v124 = sub_199DFA39C();
    v105 = swift_allocObject();
    v106 = a5[1];
    *(v105 + 24) = *a5;
    *(v105 + 16) = v104;
    *(v105 + 40) = v106;
    *(v105 + 56) = a5[2].i8[0];
    *(v105 + 60) = v25;
    *(v105 + 64) = v128;
    *(v105 + 72) = a7;
    v135 = sub_199ABC8C4;
    v136 = v105;
    aBlock = MEMORY[0x1E69E9820];
    v132 = 1107296256;
    v133 = sub_199AB45A0;
    v134 = &block_descriptor_43;
    v107 = _Block_copy(&aBlock);

    v128 = v104;
    v91 = v117;
    sub_199DF9E0C();
    v129 = MEMORY[0x1E69E7CC0];
    sub_199ABC208(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
    sub_199ABC0BC();
    v92 = v118;
    v93 = v122;
    sub_199DFA68C();
    v94 = v124;
    MEMORY[0x19A8F8190](0, v91, v92, v107);

    _Block_release(v107);

LABEL_51:
    (*(v121 + 8))(v92, v93);
    (*(v119 + 8))(v91, v120);

    return;
  }

  v108 = swift_allocObject();
  v109 = a5[1];
  *(v108 + 24) = *a5;
  *(v108 + 16) = v41;
  *(v108 + 40) = v109;
  *(v108 + 56) = a5[2].i8[0];
  *(v108 + 60) = v25;
  *(v108 + 64) = v128;
  *(v108 + 72) = a7;
  v135 = sub_199ABC8C0;
  v136 = v108;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = sub_199AB9D24;
  v134 = &block_descriptor_36;
  v110 = _Block_copy(&aBlock);

  v111 = v41;

  v112 = v123;
  v113 = v126;
  [v123 executeSnapshotRequest:v126 completion:v110];

  _Block_release(v110);
}

void sub_199AB900C(void *a1, float a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a9;
  v63[11] = *MEMORY[0x1E69E9840];
  v17 = sub_199DF9DFC();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_199DF9E1C();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v24 = sub_199ABA2C0(a4, a5, a6, a1, a7);
    v25 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
    aBlock = 0;
    v51 = v25;
    v52 = v24;
    v26 = [v25 latestSnapshotBundleForRequest:v24 error:&aBlock];
    if (v26)
    {
      v27 = v26;
      v28 = aBlock;
      v29 = [a5 levelSets];
      sub_199A7A02C(0, &qword_1EAF71088);
      v30 = sub_199DFA0CC();

      if (v30 >> 62)
      {
        if (sub_199DFA87C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x19A8F8520](0, v30);
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v31 = *(v30 + 32);
        }

        v32 = v31;

        v33 = [v27 snapshotForLevelSet_];

        swift_beginAccess();
        v34 = *(a8 + 16);
        *(a8 + 16) = v33;

        goto LABEL_12;
      }
    }

    else
    {
      v35 = aBlock;
      v36 = sub_199DF717C();

      swift_willThrow();
    }

LABEL_12:
    swift_beginAccess();
    v37 = *(a8 + 16);
    if (v37)
    {
      sub_199A7A02C(0, &qword_1EAF71D20);
      v38 = v37;
      v39 = sub_199DFA39C();
      v40 = swift_allocObject();
      v41 = *(a4 + 16);
      *(v40 + 24) = *a4;
      *(v40 + 16) = v38;
      *(v40 + 40) = v41;
      *(v40 + 56) = *(a4 + 32);
      *(v40 + 60) = a2;
      *(v40 + 64) = v56;
      *(v40 + 72) = a10;
      v61 = sub_199ABC8C4;
      v62 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_199AB45A0;
      v60 = &block_descriptor_87;
      v42 = _Block_copy(&aBlock);
      sub_199ABC078(a4, v63);

      v43 = v38;
      sub_199DF9E0C();
      v63[0] = MEMORY[0x1E69E7CC0];
      sub_199ABC208(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
      sub_199ABC0BC();
      sub_199DFA68C();
      MEMORY[0x19A8F8190](0, v23, v20, v42);

      _Block_release(v42);
      (*(v55 + 8))(v20, v17);
      (*(v53 + 8))(v23, v54);
    }

    else
    {
      v44 = swift_allocObject();
      v45 = *(a4 + 16);
      *(v44 + 24) = *a4;
      *(v44 + 16) = a5;
      *(v44 + 40) = v45;
      *(v44 + 56) = *(a4 + 32);
      *(v44 + 60) = a2;
      *(v44 + 64) = v56;
      *(v44 + 72) = a10;
      v61 = sub_199ABC8C0;
      v62 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_199AB9D24;
      v60 = &block_descriptor_80;
      v46 = _Block_copy(&aBlock);
      v47 = a5;
      sub_199ABC078(a4, v63);

      v48 = v51;
      v49 = v52;
      [v51 executeSnapshotRequest:v52 completion:v46];
      _Block_release(v46);
    }
  }
}

id sub_199AB96C4(float a1)
{
  v3 = [v1 cnui_CGImageSnapshot];
  Width = CGImageGetWidth(v3);
  Height = CGImageGetHeight(v3);
  if (Height >= Width)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  v7 = (Width - v6) * 0.5;
  v8 = a1 * Height - v6 * 0.5;
  v9 = v6;
  v10 = CGImageCreateWithImageInRect(v3, *(&v6 - 2));
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_199AB9798(float a1, uint64_t a2, void *a3, void *a4, void *a5, _OWORD *a6, void (*a7)(void, void *), uint64_t a8)
{
  v48 = a6;
  v14 = sub_199DF9DFC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_199DF9E1C();
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v46 = v21;
    v47 = v15;
    v49 = a8;
    v24 = a3;
    v25 = [v24 snapshotBundle];
    if (!v25)
    {
LABEL_14:

      goto LABEL_15;
    }

    v26 = v25;
    v27 = [a5 levelSets];
    sub_199A7A02C(0, &qword_1EAF71088);
    v28 = sub_199DFA0CC();

    if (v28 >> 62)
    {
      if (sub_199DFA87C())
      {
        goto LABEL_5;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x19A8F8520](0, v28);
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v29 = *(v28 + 32);
      }

      v30 = v29;

      v45 = v30;
      v31 = [v26 snapshotForLevelSet_];
      if (v31)
      {
        v32 = v31;
        sub_199A7A02C(0, &qword_1EAF71D20);
        v43 = sub_199DFA39C();
        v33 = swift_allocObject();
        v44 = v19;
        v34 = v48;
        v35 = v49;
        v36 = v48[1];
        *(v33 + 24) = *v48;
        *(v33 + 16) = v32;
        *(v33 + 40) = v36;
        *(v33 + 56) = *(v34 + 32);
        *(v33 + 60) = a1;
        *(v33 + 64) = a7;
        *(v33 + 72) = v35;
        aBlock[4] = sub_199ABC19C;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_199AB45A0;
        aBlock[3] = &block_descriptor_52;
        v37 = _Block_copy(aBlock);
        v42 = v32;
        sub_199ABC078(v34, v50);

        sub_199DF9E0C();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_199ABC208(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
        sub_199ABC0BC();
        sub_199DFA68C();
        v38 = v43;
        MEMORY[0x19A8F8190](0, v23, v18, v37);

        _Block_release(v37);
        (*(v47 + 8))(v18, v14);
        (*(v46 + 8))(v23, v44);
        return;
      }

      v24 = v45;
      goto LABEL_13;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  if (a4)
  {
    v39 = a4;
    a7(0, a4);
    v40 = a4;
  }

  else
  {
    sub_199ABC148();
    v41 = swift_allocError();
    a7(0, v41);
    v40 = v41;
  }
}

void sub_199AB9C90(void *a1, uint64_t a2, void (*a3)(void), float a4)
{
  if (*(a2 + 32) != 2 || (*a2 == 2 ? (v6 = (*(a2 + 16) | *(a2 + 24) | *(a2 + 8)) == 0) : (v6 = 0), !v6 || (v7 = sub_199AB96C4(a4)) == 0))
  {
    v7 = a1;
  }

  v8 = v7;
  a3();
}

void sub_199AB9D24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_199AB9DC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_199ABC268(a3, sub_199ABC5BC);
}

uint64_t sub_199AB9F10(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C70);
  return sub_199DFA13C();
}

void sub_199AB9F60(void (*a1)(void))
{
  v2 = [objc_opt_self() labelColor];
  a1();
}

void sub_199AB9FCC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a1 && (v8 = [a1 CGImage]) != 0)
  {
    v9 = v8;
    v10 = v8;
    sub_199ABC268(v9, a6);
  }

  else
  {
    a3();
  }
}

id sub_199ABA0A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) && *(a1 + 32) != 1)
  {
    v7 = [objc_opt_self() contentsOnlySnapshotDefinitionWithContext:a2 attachmentIdentifiers:0];

    return v7;
  }

  else
  {
    v3 = objc_opt_self();
    v4 = sub_199DFA0BC();
    v5 = [v3 contentsAndOverlayContentSnapshotDefinitionWithContext:a2 attachmentIdentifiers:v4];

    return v5;
  }
}

uint64_t sub_199ABA1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

id sub_199ABA2C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!*(a1 + 32))
  {
    v158 = [objc_allocWithZone(CNPRUISPosterAppearanceObservingAttachmentProvider) initWithConfiguration_];
    v11 = [v158 overlayContentView];
    v12 = [objc_opt_self() attributesForCNConfiguration_];
    v151 = a3;
    v155 = a4;
    v147 = v12;
    if (v12)
    {
      v13 = [v12 titleFont];
    }

    else
    {
      v13 = 0;
    }

    v41 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v41 setAlignment_];
    [v41 setMaximumLineHeight_];
    v42 = [objc_allocWithZone(CNPRPosterLabel) initWithFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_199E37D40;
    v44 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    *(inited + 64) = sub_199A7A02C(0, &qword_1EAF71050);
    *(inited + 40) = v41;
    v45 = v42;
    v46 = v44;
    v47 = v41;
    sub_199B4B370(inited);
    swift_setDeallocating();
    sub_199ABC1A0(inited + 32);
    v48 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v49 = sub_199DF9F5C();
    type metadata accessor for Key(0);
    sub_199ABC208(&qword_1EAF71078, type metadata accessor for Key);
    v50 = sub_199DF9E8C();

    v51 = [v48 initWithString:v49 attributes:v50];

    [v45 setAttributedText_];
    [v45 setAdjustsFontSizeToFitWidth_];
    v52 = v45;
    [v52 setTranslatesAutoresizingMaskIntoConstraints_];
    [v52 setNumberOfLines_];
    if (!v13 || (v53 = [v13 fontWithSize_]) == 0)
    {
      v54 = *MEMORY[0x1E69DB958];
      v55 = objc_opt_self();
      v53 = [v55 systemFontOfSize:64.0 weight:v54];
      v56 = [v53 fontDescriptor];
      v57 = [v56 fontDescriptorWithDesign_];

      if (v57)
      {
        v58 = [v55 fontWithDescriptor:v57 size:64.0];

        v53 = v58;
      }
    }

    [v52 setFont_];

    if (v155)
    {
      v59 = v155;
    }

    else
    {
      v59 = [objc_opt_self() labelColor];
    }

    v60 = v155;
    [v52 setTextColor_];

    [v11 addSubview_];
    v61 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_199E39130;
    v63 = [v52 widthAnchor];
    v64 = [v11 widthAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 multiplier:0.9];

    *(v62 + 32) = v65;
    v66 = [v52 centerXAnchor];
    v67 = [v11 centerXAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v62 + 40) = v68;
    v69 = [v52 bottomAnchor];

    v70 = [v11 bottomAnchor];
    [v11 bounds];
    v72 = [v69 constraintEqualToAnchor:v70 constant:v71 * -0.325];

    *(v62 + 48) = v72;
    sub_199A7A02C(0, &qword_1EAF71D18);
    v73 = sub_199DFA0BC();

    [v61 activateConstraints_];

    v74 = [v158 overlayContentAttachment];
    if (v74)
    {
      v75 = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_199E37DF0;
      *(v76 + 32) = v75;
      sub_199A7A02C(0, &qword_1EAF71058);
      v77 = v75;
      v78 = sub_199DFA0BC();

      v79 = [objc_opt_self() requestForConfiguration:v151 definition:a2 interfaceOrientation:1 windowScene:a5 attachments:v78];

      return v79;
    }

    v81 = [objc_opt_self() requestForConfiguration:v151 definition:a2 interfaceOrientation:1];

    return v81;
  }

  v7 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
    v145 = *(a1 + 16);
    v8 = [objc_allocWithZone(CNPRUISPosterAppearanceObservingAttachmentProvider) initWithConfiguration_];
    v157 = [v8 overlayContentView];
    v9 = [objc_opt_self() attributesForCNConfiguration_];
    v146 = v9;
    v150 = a3;
    v152 = a2;
    v144 = v8;
    if (v9)
    {
      v142 = [v9 titleFont];
    }

    else
    {
      v142 = 0;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v15 setAlignment_];
    [v15 setMaximumLineHeight_];
    v16 = [objc_allocWithZone(CNPRPosterLabel) initWithFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C60);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_199E37D40;
    v18 = *MEMORY[0x1E69DB688];
    *(v17 + 32) = *MEMORY[0x1E69DB688];
    v141 = sub_199A7A02C(0, &qword_1EAF71050);
    *(v17 + 64) = v141;
    *(v17 + 40) = v15;
    v19 = v16;
    v20 = v18;
    v21 = v15;
    sub_199B4B370(v17);
    swift_setDeallocating();
    sub_199ABC1A0(v17 + 32);
    v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v23 = sub_199DF9F5C();
    type metadata accessor for Key(0);
    sub_199ABC208(&qword_1EAF71078, type metadata accessor for Key);
    v24 = sub_199DF9E8C();

    v25 = [v22 initWithString:v23 attributes:v24];

    [v19 setAttributedText_];
    [v19 setAdjustsFontSizeToFitWidth_];
    v26 = v19;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    [v26 setNumberOfLines_];
    v27 = v142;
    if (!v142 || (v28 = [v142 fontWithSize_]) == 0)
    {
      v140 = v26;
      v29 = *MEMORY[0x1E69DB958];
      v30 = objc_opt_self();
      v28 = [v30 systemFontOfSize:72.0 weight:v29];
      v31 = [v28 fontDescriptor];
      v32 = [v31 fontDescriptorWithDesign_];

      if (v32)
      {
        v33 = [v30 fontWithDescriptor:v32 size:72.0];

        v28 = v33;
      }

      v27 = v142;
    }

    [v26 setFont_];

    if (a4)
    {
      v34 = a4;
    }

    else
    {
      v34 = [objc_opt_self() labelColor];
    }

    v35 = a4;
    [v26 setTextColor_];

    [v157 addSubview_];
    v36 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v36 = v145 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = v20;
      v143 = v35;
      if (v146)
      {
        v38 = [v146 titleFont];
      }

      else
      {
        v38 = 0;
      }

      v82 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
      [v82 setAlignment_];
      [v82 setMaximumLineHeight_];
      v83 = [objc_allocWithZone(CNPRPosterLabel) initWithFrame_];
      v84 = swift_initStackObject();
      *(v84 + 16) = xmmword_199E37D40;
      *(v84 + 32) = v37;
      *(v84 + 64) = v141;
      *(v84 + 40) = v82;
      v85 = v37;
      v39 = v83;
      v86 = v82;
      sub_199B4B370(v84);
      swift_setDeallocating();
      sub_199ABC1A0(v84 + 32);
      v87 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v88 = sub_199DF9F5C();
      v89 = sub_199DF9E8C();

      v90 = [v87 initWithString:v88 attributes:v89];

      [v39 setAttributedText_];
      [v39 setAdjustsFontSizeToFitWidth_];
      [v39 setTranslatesAutoresizingMaskIntoConstraints_];

      [v39 setNumberOfLines_];
      v40 = v157;
      if (!v38 || (v91 = [v38 fontWithSize_]) == 0)
      {
        v92 = *MEMORY[0x1E69DB958];
        v93 = objc_opt_self();
        v91 = [v93 systemFontOfSize:72.0 weight:v92];
        v94 = [v91 fontDescriptor];
        v95 = [v94 fontDescriptorWithDesign_];

        if (v95)
        {
          v96 = [v93 fontWithDescriptor:v95 size:72.0];

          v91 = v96;
        }
      }

      [v39 setFont_];

      v97 = v143;
      if (!a4)
      {
        v97 = [objc_opt_self() labelColor];
      }

      v98 = v143;
      [v39 setTextColor_];

      [v157 addSubview_];
    }

    else
    {
      v39 = 0;
      v40 = v157;
    }

    [v40 bounds];
    v100 = v99 * 0.2;
    if (v39)
    {
      v156 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_199E39120;
      v102 = v39;
      v103 = [v26 widthAnchor];
      v104 = [v157 widthAnchor];
      v105 = [v103 constraintEqualToAnchor:v104 multiplier:0.9];

      *(v101 + 32) = v105;
      v106 = [v26 centerXAnchor];
      v107 = [v157 centerXAnchor];
      v108 = [v106 constraintEqualToAnchor_];

      *(v101 + 40) = v108;
      v109 = [v26 bottomAnchor];

      v110 = v102;
      v111 = [v110 topAnchor];
      v112 = [v109 constraintEqualToAnchor:v111 constant:5.0];

      *(v101 + 48) = v112;
      v113 = [v110 widthAnchor];
      v40 = v157;
      v114 = [v157 widthAnchor];
      v115 = [v113 constraintEqualToAnchor:v114 multiplier:0.9];

      *(v101 + 56) = v115;
      v116 = [v110 centerXAnchor];
      v117 = [v157 centerXAnchor];
      v118 = [v116 constraintEqualToAnchor_];

      *(v101 + 64) = v118;
      v119 = [v110 bottomAnchor];

      v120 = [v157 bottomAnchor];
      v121 = [v119 constraintEqualToAnchor:v120 constant:-v100];

      *(v101 + 72) = v121;
      sub_199A7A02C(0, &qword_1EAF71D18);
      v122 = sub_199DFA0BC();

      [v156 activateConstraints_];
    }

    else
    {
      v123 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_199E39130;
      v125 = [v26 widthAnchor];
      v126 = [v40 widthAnchor];
      v127 = [v125 constraintEqualToAnchor:v126 multiplier:0.9];

      *(v124 + 32) = v127;
      v128 = [v26 centerXAnchor];
      v129 = [v40 centerXAnchor];
      v130 = [v128 constraintEqualToAnchor_];

      *(v124 + 40) = v130;
      v131 = [v26 bottomAnchor];

      v132 = [v40 bottomAnchor];
      v133 = [v131 constraintEqualToAnchor:v132 constant:-v100];

      *(v124 + 48) = v133;
      sub_199A7A02C(0, &qword_1EAF71D18);
      v122 = sub_199DFA0BC();

      [v123 activateConstraints_];
    }

    v134 = [v144 overlayContentAttachment];
    if (v134)
    {
      v135 = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_199E37DF0;
      *(v136 + 32) = v135;
      sub_199A7A02C(0, &qword_1EAF71058);
      v137 = v135;
      v138 = sub_199DFA0BC();

      v139 = [objc_opt_self() requestForConfiguration:v150 definition:v152 interfaceOrientation:1 windowScene:a5 attachments:v138];

      return v139;
    }

    v81 = [objc_opt_self() requestForConfiguration:v150 definition:v152 interfaceOrientation:1];

    return v81;
  }

  v14 = [objc_opt_self() requestForConfiguration:a3 definition:a2 interfaceOrientation:1];

  return v14;
}

uint64_t sub_199ABB878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = sub_199DF9DFC();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_199DF9E1C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v13);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  v16[2] = sub_199ABC250;
  v16[3] = v15;
  v16[4] = v5;
  v16[5] = a3;
  v16[6] = a4;
  v17 = objc_opt_self();
  swift_retain_n();

  v18 = [v17 contentsOnlySnapshotDefinitionWithContext:a2 attachmentIdentifiers:0];
  v19 = [objc_allocWithZone(CNPRSPosterConfigurationAttributes) initWithCNConfiguration_];
  v20 = [v19 extensionIdentifier];
  v21 = 0.5;
  if (v20)
  {
    v22 = v20;
    v23 = sub_199DF9F8C();
    v25 = v24;

    if (v23 == 0xD00000000000002CLL && 0x8000000199E456C0 == v25)
    {
    }

    else
    {
      v26 = sub_199DFA99C();

      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    +[CNWallpaperUtilities monogramPosterOffset]_0();
    v21 = v27;
  }

LABEL_7:
  swift_weakInit();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v28 = [objc_opt_self() requestForConfiguration:a1 definition:v18 interfaceOrientation:1];
    v29 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
    aBlock = 0;
    v30 = [v29 latestSnapshotBundleForRequest:v28 error:&aBlock];
    if (v30)
    {
      v31 = v30;
      v32 = aBlock;
      v33 = [v18 levelSets];
      sub_199A7A02C(0, &qword_1EAF71088);
      v34 = sub_199DFA0CC();

      if (v34 >> 62)
      {
        if (sub_199DFA87C())
        {
LABEL_11:
          if ((v34 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x19A8F8520](0, v34);
          }

          else
          {
            if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v35 = *(v34 + 32);
          }

          v36 = v35;

          v37 = [v31 snapshotForLevelSet_];

          if (v37)
          {
            sub_199A7A02C(0, &qword_1EAF71D20);
            v38 = v37;
            v54 = sub_199DFA39C();
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            *(v39 + 24) = 1;
            *(v39 + 40) = 0;
            *(v39 + 48) = 0;
            *(v39 + 32) = 0;
            *(v39 + 56) = 2;
            *(v39 + 60) = v21;
            *(v39 + 64) = sub_199ABC258;
            *(v39 + 72) = v16;
            v66 = sub_199ABC8C4;
            v67 = v39;
            aBlock = MEMORY[0x1E69E9820];
            v63 = 1107296256;
            v64 = sub_199AB45A0;
            v65 = &block_descriptor_72;
            v52 = _Block_copy(&aBlock);
            v53 = v38;

            sub_199DF9E0C();
            v61 = MEMORY[0x1E69E7CC0];
            sub_199ABC208(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
            sub_199ABC0BC();
            v51 = v19;
            v40 = v56;
            v41 = v59;
            sub_199DFA68C();
            v42 = v52;
            v43 = v54;
            MEMORY[0x19A8F8190](0, v60, v40, v52);

            _Block_release(v42);

            v44 = v53;

            (*(v58 + 8))(v40, v41);
            (*(v55 + 8))(v60, v57);
            swift_weakDestroy();
          }

          goto LABEL_20;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v46 = aBlock;
      v47 = sub_199DF717C();

      swift_willThrow();
    }

LABEL_20:
    v48 = swift_allocObject();
    *(v48 + 16) = v18;
    *(v48 + 24) = 1;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 32) = 0;
    *(v48 + 56) = 2;
    *(v48 + 60) = v21;
    *(v48 + 64) = sub_199ABC258;
    *(v48 + 72) = v16;
    v66 = sub_199ABC8C0;
    v67 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_199AB9D24;
    v65 = &block_descriptor_65;
    v49 = _Block_copy(&aBlock);

    v50 = v18;

    [v29 executeSnapshotRequest:v28 completion:v49];

    _Block_release(v49);

    return swift_weakDestroy();
  }

  return swift_weakDestroy();
}

unint64_t sub_199ABC0BC()
{
  result = qword_1EAF71CD0;
  if (!qword_1EAF71CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71CD0);
  }

  return result;
}

unint64_t sub_199ABC148()
{
  result = qword_1EAF72C58;
  if (!qword_1EAF72C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C58);
  }

  return result;
}

uint64_t sub_199ABC1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199ABC208(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_199ABC268(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    v22 = [objc_opt_self() labelColor];
    a2();
LABEL_13:
    v20 = v22;
    goto LABEL_16;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v22 = a1;
  v5 = [v4 initWithCGImage_];
  v6 = [v5 CGImage];
  if (v6)
  {
    v7 = v6;
    v8 = vcvtd_n_f64_s64(CGImageGetHeight(v6), 1uLL);
    Width = CGImageGetWidth(v7);
    v24.size.height = vcvtd_n_f64_s64(CGImageGetHeight(v7), 1uLL);
    v24.origin.x = 0.0;
    v24.origin.y = v8;
    v24.size.width = Width;
    v10 = CGImageCreateWithImageInRect(v7, v24);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() colorsForImageRef_];
      sub_199A7A02C(0, &qword_1EAF71C10);
      v13 = sub_199DFA0CC();

      goto LABEL_8;
    }
  }

  v7 = [objc_opt_self() colorsForUIImage_];
  sub_199A7A02C(0, &qword_1EAF71C10);
  v13 = sub_199DFA0CC();
LABEL_8:

  if (v13 >> 62)
  {
    if (sub_199DFA87C() >= 1)
    {
      goto LABEL_10;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_10:
    v14 = objc_opt_self();
    sub_199A7A02C(0, &qword_1EAF71C10);
    v15 = sub_199DFA0BC();

    v16 = [v14 backgroundColorsPreferWhiteForegroundText_];

    v17 = objc_opt_self();
    v18 = &selRef_whiteColor;
    if (!v16)
    {
      v18 = &selRef_blackColor;
    }

    v19 = [v17 *v18];
    a2();

    goto LABEL_13;
  }

  v21 = [objc_opt_self() labelColor];
  a2();

  v20 = v21;
LABEL_16:
}