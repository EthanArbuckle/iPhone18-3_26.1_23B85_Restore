uint64_t sub_CF7F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  v6 = v3[224];
  *v5 = *v2;

  v7 = v3[223];
  v8 = v3[222];
  v9 = v3[221];
  v10 = v3[220];
  v11 = v3[207];
  v12 = v3[206];
  if (v1)
  {
  }

  else
  {
    v13 = v3[206];

    v4[225] = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_CFA08()
{
  v81 = v0;
  v77 = v0[225];
  v0[226] = v77;
  v1 = v0[168];
  v2 = v0[160];
  v3 = v0[159];
  v4 = sub_16DBBC();
  v0[227] = v4;
  sub_8B48();
  v7 = *(v2 + 16);
  v5 = v2 + 16;
  v6 = v7;
  v0[228] = v7;
  v0[229] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8 = sub_38B40();
  v7(v8);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v76 = v7;
  if (sub_4B3A8(v10))
  {
    v78 = v0[168];
    v11 = v0[160];
    v12 = v0[153];
    v13 = v0[151];
    v72 = v0[150];
    v74 = v0[159];
    sub_8BD8();
    v14 = sub_5D98C();
    v80 = v14;
    *v5 = 136315138;
    sub_8B48();
    sub_D4960();
    sub_D45F4(v12, v13, v15);
    v16 = sub_16E1EC();
    v18 = sub_3AB7C(v16, v17, &v80);

    *(v5 + 4) = v18;
    sub_D4F2C(&def_259DC, v19, v20, "#GetSleepAnalysisFlow: snippet model is %s");
    sub_2D64(v14);
    v6 = v76;
    sub_8A2C();
    sub_D4C6C();

    v21 = *(v11 + 8);
    v21(v78, v74);
  }

  else
  {
    v22 = v0[168];
    v23 = v0[160];
    v24 = v0[159];

    v21 = *(v23 + 8);
    v21(v22, v24);
  }

  v79 = v21;
  v0[230] = v21;
  v25 = v0[167];
  v26 = v0[159];
  v27 = v0[158];
  v28 = v0[157];
  sub_8B48();
  v29 = sub_38B40();
  v6(v29);
  sub_D4870();
  v30 = sub_387CC();
  sub_D45F4(v30, v31, v32);
  v33 = sub_16DBDC();
  v34 = sub_16E36C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[160];
  v37 = v0[157];
  if (v35)
  {
    v73 = v0[167];
    v75 = v0[159];
    v38 = v0[156];
    v39 = v0[154];
    sub_8BD8();
    v40 = sub_5D98C();
    v80 = v40;
    *v5 = 136315138;
    sub_D4870();
    sub_D45F4(v37, v38, v41);
    sub_8B9C();
    sub_16E1EC();
    sub_D4858();
    sub_D47F4(v37, v42);
    v43 = sub_C9C8();
    v46 = sub_3AB7C(v43, v44, v45);

    *(v5 + 4) = v46;
    _os_log_impl(&def_259DC, v33, v34, "#GetSleepAnalysisFlow: snippet header model is %s", v5, 0xCu);
    sub_2D64(v40);
    v6 = v76;
    sub_8A2C();
    sub_D4C6C();

    v47 = v73;
    v48 = v75;
  }

  else
  {

    sub_D4858();
    sub_D47F4(v37, v49);
    v47 = sub_C9C8();
  }

  v79(v47, v48);
  if (!v77)
  {
    v60 = v0[165];
    v61 = v0[159];
    sub_8B48();
    v62 = sub_38B40();
    v6(v62);
    sub_16DBDC();
    v63 = sub_16E37C();
    if (sub_1BA1C(v63))
    {
      v64 = sub_1BA38();
      sub_1BA50(v64);
      sub_1B9D0(&def_259DC, v65, v66, "Couldn't create sleep analysis dialog returning nil");
      sub_1BA00();
    }

    sub_D4C8C();
    v67 = sub_D4D84();
    (v79)(v67);
    sub_8284(v4 + 80, (v0 + 2));
    sub_82E0();
    sub_16C32C();

    sub_8334((v0 + 2));
    sub_D4858();
    sub_D47F4(v37, v68);
    sub_8748(0, &qword_1C57F8, &unk_172510);
    sub_8748(v5, &qword_1C5690, &dword_16F320);
    sub_D4948();
    sub_D47F4(0, v69);
    sub_D4914();
    sub_D4978();
    sub_D4B94();

    sub_5D948();
    sub_D4EB0();

    __asm { BRAA            X2, X16 }
  }

  v50 = v0[153];
  v0[90] = type metadata accessor for WellnessSnippets();
  sub_D4C3C();
  v0[91] = sub_D4798(v51, v52);
  sub_9910(v0 + 87);
  sub_1B9B4();
  sub_D4960();
  v53 = sub_38B40();
  sub_D45F4(v53, v54, v55);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[231] = v56;
  *v56 = v57;
  v56[1] = sub_D0064;
  sub_D4EB0();

  return sub_672C0();
}

uint64_t sub_D0064()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1848);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 696));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_D0148()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1328);
  v5 = *(v0 + 1272);
  sub_1B9B4();
  v6 = sub_8B9C();
  v2(v6);
  sub_C9294(v0 + 776, v0 + 576);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  if (sub_4B3A8(v8))
  {
    v28 = *(v0 + 1840);
    v9 = *(v0 + 1328);
    v10 = *(v0 + 1280);
    v11 = *(v0 + 1272);
    v12 = sub_8BD8();
    v30 = sub_CA30();
    *v12 = 136315138;
    sub_C9294(v0 + 576, v0 + 496);
    sub_2440(&qword_1C97E0, &qword_176150);
    sub_16E1EC();
    sub_2D64((v0 + 576));
    v13 = sub_D4D84();
    v16 = sub_3AB7C(v13, v14, v15);

    *(v12 + 4) = v16;
    _os_log_impl(&def_259DC, v7, v8, "#GetSleepAnalysisFlow: output is %s", v12, 0xCu);
    sub_2D64(v30);
    sub_8A2C();
    sub_8A2C();

    v17 = sub_C9F8();
    v28(v17);
  }

  else
  {
    v8 = *(v0 + 1840);
    v18 = *(v0 + 1328);
    v12 = *(v0 + 1280);
    v11 = *(v0 + 1272);

    sub_2D64((v0 + 576));
    v19 = sub_C9F8();
    v8(v19);
  }

  v20 = *(v0 + 1808);
  sub_D4D10();
  sub_C9294(v0 + 776, v0 + 536);
  v21 = swift_allocObject();
  sub_17464((v0 + 536), v21 + 16);
  sub_16C73C();
  v22 = sub_16C1DC();
  sub_8D14(v22);
  *(v0 + 1136) = sub_384FC();
  v29 = sub_16C32C();

  sub_2D64((v0 + 776));
  sub_D4858();
  sub_D47F4(v12, v23);
  sub_8748(v8, &qword_1C57F8, &unk_172510);
  sub_8748(v11, &qword_1C5690, &dword_16F320);

  sub_D4948();
  sub_D47F4(v27, v24);
  sub_D4914();
  sub_D4978();
  sub_D4BE8();

  sub_5D948();

  return v25(v29);
}

uint64_t sub_D0578()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1856);
  v6 = *v0;
  *v3 = v6;
  v2[233] = v7;
  v2[234] = v8;

  v9 = swift_task_alloc();
  v2[235] = v9;
  *v9 = v6;
  sub_D4E90(v9);
  v11 = sub_C98D8(v10 & 0xFFFFFFFFFFFFLL | 0x4965000000000000);

  return sub_66A84(v11, v12);
}

uint64_t sub_D06A8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1880);
  *v2 = *v0;
  *(v1 + 1888) = v5;
  *(v1 + 1896) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_D0794()
{
  v127 = v0;
  v106 = v0[237];
  v111 = v0[236];
  v120 = v0[234];
  v110 = v0[233];
  v107 = v0[218];
  v108 = v0[219];
  v113 = v0[217];
  v114 = v0[214];
  v112 = v0[211];
  v102 = v0[180];
  v103 = v0[181];
  v124 = v0[160];
  v116 = v0[164];
  v118 = v0[159];
  v1 = v0[158];
  v2 = v0[154];
  v3 = v0[153];
  v109 = v0[151];
  v4 = v0[150];
  v5 = v0[147];
  v105 = v0[146];
  v6 = v0[144];
  sub_D4870();
  sub_D45F4(v7, v5, v8);
  sub_388E4();
  sub_214C(v9, v10, v11, v2);
  v12 = sub_16D53C();
  sub_8D14(v12);

  sub_16D52C();
  [v6 averageAsleepDuration];
  sub_D4DD8();

  v123 = sub_16D50C();
  v0[238] = v123;

  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_16D52C();
  [v6 averageInBedDuration];
  sub_D4DD8();

  v122 = sub_16D50C();
  v0[239] = v122;

  sub_86B0(v103, v102, &qword_1C57F8, &unk_172510);
  v15 = sub_16C11C();
  sub_8AB4();
  sub_214C(v16, v17, v18, v15);
  v100 = v4[5];
  sub_8AB4();
  sub_214C(v19, v20, v21, v2);
  v22 = (v3 + v4[6]);
  v99 = (v3 + v4[7]);
  v23 = (v3 + v4[8]);
  v95 = (v3 + v4[9]);
  v101 = v4[11];
  v24 = (v3 + v4[10]);
  v97 = v4[13];
  v98 = v4[12];
  v96 = v4[14];
  v25 = (v3 + v4[15]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v3 + v4[16]);
  *v26 = 0;
  v26[1] = 0;
  v104 = (v3 + v4[17]);
  *v104 = 0;
  v104[1] = 0;
  sub_152BF0(v102);
  sub_8748(v102, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v27, v28, v29, v15);
  sub_1E634(v105, v3, &qword_1C63F0, &unk_1717F0);
  sub_1E634(v5, v3 + v100, &dword_1C63F8, &qword_171800);
  *v22 = v107;
  v22[1] = v108;
  *v99 = 0;
  v99[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *v95 = v110;
  v95[1] = v120;
  *v24 = v111;
  v24[1] = v106;
  *(v3 + v101) = v123;
  *(v3 + v98) = v122;
  *(v3 + v97) = 0;
  *(v3 + v96) = 0;
  sub_D45F4(v3, v109, type metadata accessor for SleepQueryModel);

  v30 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
  v32 = v31;

  sub_D47F4(v109, type metadata accessor for SleepQueryModel);
  *v26 = v30;
  v26[1] = v32;
  sub_D45F4(v3, v109, type metadata accessor for SleepQueryModel);

  swift_bridgeObjectRelease_n();

  v33 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
  v35 = v34;

  sub_D47F4(v109, type metadata accessor for SleepQueryModel);
  *v104 = v33;
  v104[1] = v35;
  v0[240] = sub_16DBBC();
  sub_8B48();
  v36 = *(v124 + 16);
  v0[241] = v36;
  v0[242] = (v124 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37 = sub_C9C8();
  (v36)(v37);
  v38 = sub_16DBDC();
  v39 = sub_16E36C();
  if (sub_4B3A8(v39))
  {
    v40 = v0[160];
    v117 = v0[159];
    v119 = v0[164];
    v41 = v0[153];
    v42 = v0[151];
    v115 = v0[150];
    sub_8BD8();
    v43 = sub_5D98C();
    v126[0] = v43;
    *v36 = 136315138;
    sub_8B48();
    sub_D4960();
    v44 = sub_A76B4();
    sub_D45F4(v44, v45, v46);
    v47 = sub_16E1EC();
    v49 = sub_3AB7C(v47, v48, v126);

    *(v36 + 4) = v49;
    sub_D4F2C(&def_259DC, v50, v51, "#GetSleepAnalysisFlow: snippet model is %s");
    sub_2D64(v43);
    sub_1BA00();
    sub_8A2C();

    v52 = *(v40 + 8);
    v52(v119, v117);
  }

  else
  {
    v53 = v0[164];
    v54 = v0[160];
    v55 = v0[159];

    v52 = *(v54 + 8);
    v56 = sub_C9E0();
    v52(v56, v57);
  }

  v0[243] = v52;
  v58 = v0[163];
  v59 = v0[159];
  v60 = v0[158];
  v61 = v0[155];
  sub_8B48();
  v62 = sub_C9C8();
  (v36)(v62);
  sub_D4870();
  v63 = sub_387CC();
  sub_D45F4(v63, v64, v65);
  v66 = sub_16DBDC();
  v67 = sub_16E36C();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[163];
  v70 = v0[160];
  v71 = v0[159];
  if (v68)
  {
    v125 = v0[163];
    v72 = v0[156];
    v73 = v0[155];
    v74 = v0[154];
    v121 = v52;
    v75 = sub_8BD8();
    v76 = sub_CA30();
    v126[0] = v76;
    *v75 = 136315138;
    sub_D4870();
    sub_D45F4(v73, v72, v77);
    v78 = sub_16E1EC();
    v80 = v79;
    sub_D4858();
    sub_D47F4(v73, v81);
    v82 = sub_3AB7C(v78, v80, v126);

    *(v75 + 4) = v82;
    sub_D4ECC(&def_259DC, v83, v84, "#GetSleepAnalysisFlow: snippet header model is %s");
    sub_2D64(v76);
    sub_1BA00();
    sub_8A2C();

    v121(v125, v71);
  }

  else
  {
    v85 = v0[155];

    sub_D4858();
    sub_D47F4(v85, v86);
    v52(v69, v71);
  }

  v87 = v0[207];
  v88 = v0[206];
  v89 = *(v0[145] + 264);
  v90 = v0[204] / v0[205];

  v91 = swift_task_alloc();
  v0[244] = v91;
  *v91 = v0;
  v91[1] = sub_D0F10;
  v92 = sub_C9E0();

  return sub_B0A0C(v92, v93, 0, v122, v123, v88);
}

uint64_t sub_D0F10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = v4[244];
  *v6 = *v2;

  v8 = v4[239];
  v9 = v4[238];
  v10 = v4[207];
  v11 = v4[206];
  if (v1)
  {
  }

  else
  {

    v5[245] = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D10CC()
{
  v1 = v0[153];
  v0[85] = type metadata accessor for WellnessSnippets();
  sub_D4C3C();
  v0[86] = sub_D4798(v2, v3);
  sub_9910(v0 + 82);
  sub_1B9B4();
  sub_D4960();
  v4 = sub_38B40();
  sub_D45F4(v4, v5, v6);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[246] = v7;
  *v7 = v8;
  v7[1] = sub_D11D4;
  v9 = v0[245];

  return sub_672C0();
}

uint64_t sub_D11D4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 1968);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 656));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_D12B8()
{
  v4 = *(v1 + 1960);
  sub_D4D10();
  sub_C9294(v1 + 616, v1 + 736);
  v5 = swift_allocObject();
  sub_17464((v1 + 736), v5 + 16);
  sub_16C73C();
  v6 = sub_16C1DC();
  sub_8D14(v6);
  *(v1 + 1128) = sub_384FC();
  v12 = sub_16C32C();

  sub_2D64((v1 + 616));
  sub_D4858();
  sub_D47F4(v3, v7);
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  sub_8748(v0, &qword_1C5690, &dword_16F320);

  sub_D4948();
  sub_D47F4(v11, v8);
  sub_D4914();
  sub_D4978();
  sub_D4BE8();

  sub_5D948();

  return v9(v12);
}

uint64_t sub_D1580()
{
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[162];
  v5 = v0[159];
  sub_1B9B4();
  v6 = sub_8B9C();
  v2(v6);
  v7 = sub_16DBDC();
  v8 = sub_16E37C();
  if (sub_1BA1C(v8))
  {
    v9 = sub_1BA38();
    sub_1BA50(v9);
    sub_1B9D0(&def_259DC, v10, v11, "Couldn't create detailed sleep analysis dialog returning nil");
    sub_1BA00();
  }

  v12 = v0[243];
  v13 = v0[207];
  v14 = v0[206];
  v33 = v0[181];
  v35 = v0[184];
  v15 = v0[162];
  v16 = v0[160];
  v17 = v0[159];
  v18 = v0[158];
  v37 = v0[153];
  v19 = v0[145];

  v20 = sub_D4D84();
  v12(v20);
  sub_8284(v19 + 80, (v0 + 42));
  sub_82E0();
  v39 = sub_16C32C();

  sub_8334((v0 + 42));
  sub_D4858();
  sub_D47F4(v18, v21);
  sub_8748(v33, &qword_1C57F8, &unk_172510);
  sub_8748(v35, &qword_1C5690, &dword_16F320);
  sub_D4948();
  sub_D47F4(v37, v22);
  sub_D4914();
  sub_D4AA8();
  v25 = v0[158];
  v26 = v0[157];
  v27 = v0[156];
  v28 = v0[155];
  v29 = v0[153];
  v30 = v0[152];
  v31 = v0[151];
  v32 = v0[149];
  v34 = v0[148];
  v36 = v0[147];
  v38 = v0[146];

  sub_5D948();

  return v23(v39);
}

void sub_D18CC()
{
  v0[226] = 0;
  v1 = v0[168];
  v2 = v0[160];
  v3 = v0[159];
  v0[227] = sub_16DBBC();
  sub_8B48();
  v5 = *(v2 + 16);
  v2 += 16;
  v4 = v5;
  v0[228] = v5;
  v0[229] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = sub_C9C8();
  (v5)(v6);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  v67 = v5;
  v68 = v2;
  if (sub_4B3A8(v8))
  {
    v69 = v0[168];
    v9 = v0[160];
    v10 = v0[153];
    v11 = v0[151];
    v63 = v0[150];
    v65 = v0[159];
    v12 = sub_8BD8();
    v4 = sub_CA30();
    v71[0] = v4;
    *v12 = 136315138;
    sub_8B48();
    sub_D4960();
    v13 = sub_A76B4();
    sub_D45F4(v13, v14, v15);
    v16 = sub_16E1EC();
    v18 = sub_3AB7C(v16, v17, v71);

    *(v12 + 4) = v18;
    _os_log_impl(&def_259DC, v7, v8, "#GetSleepAnalysisFlow: snippet model is %s", v12, 0xCu);
    sub_2D64(v4);
    sub_D4C6C();
    sub_8A2C();

    v19 = *(v9 + 8);
    v19(v69, v65);
  }

  else
  {
    v20 = v0[168];
    v21 = v0[160];
    v22 = v0[159];

    v19 = *(v21 + 8);
    v23 = sub_C9E0();
    (v19)(v23);
  }

  v0[230] = v19;
  v24 = v0[167];
  v25 = v0[159];
  v26 = v0[158];
  v27 = v0[157];
  sub_8B48();
  v28 = sub_C9C8();
  (v4)(v28);
  sub_D4870();
  v29 = sub_387CC();
  sub_D45F4(v29, v30, v31);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[167];
  v36 = v0[160];
  v66 = v0[159];
  v37 = v0[157];
  v70 = v19;
  if (v34)
  {
    v38 = v0[156];
    v64 = v0[167];
    v39 = v0[154];
    v40 = sub_8BD8();
    v4 = sub_CA30();
    v71[0] = v4;
    *v40 = 136315138;
    sub_D4870();
    v41 = sub_A76B4();
    sub_D45F4(v41, v42, v43);
    v44 = sub_16E1EC();
    v19 = v45;
    sub_D4858();
    sub_D47F4(v37, v46);
    v47 = sub_3AB7C(v44, v19, v71);

    *(v40 + 4) = v47;
    sub_D4ECC(&def_259DC, v48, v49, "#GetSleepAnalysisFlow: snippet header model is %s");
    sub_2D64(v4);
    sub_D4C6C();
    sub_8A2C();

    v70(v64, v66);
  }

  else
  {

    sub_D4858();
    sub_D47F4(v37, v50);
    v19(v35, v66);
  }

  v51 = v0[165];
  v52 = v0[159];
  sub_8B48();
  v53 = sub_C9C8();
  (v4)(v53);
  sub_16DBDC();
  v54 = sub_16E37C();
  if (sub_1BA1C(v54))
  {
    v55 = sub_1BA38();
    sub_1BA50(v55);
    sub_1B9D0(&def_259DC, v56, v57, "Couldn't create sleep analysis dialog returning nil");
    sub_1BA00();
  }

  sub_D4C8C();
  v58 = sub_D4D84();
  (v70)(v58);
  sub_8284(v52 + 80, (v0 + 2));
  sub_82E0();
  sub_16C32C();

  sub_8334((v0 + 2));
  sub_D4858();
  sub_D47F4(v19, v59);
  sub_8748(v32, &qword_1C57F8, &unk_172510);
  sub_8748(v67, &qword_1C5690, &dword_16F320);
  sub_D4948();
  sub_D47F4(v68, v60);
  sub_D4914();
  sub_D4978();
  sub_D4B94();

  sub_5D948();
  sub_D4EB0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_D1E60()
{
  sub_8A88();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v4 = sub_16C46C();
  v1[38] = v4;
  sub_888C(v4);
  v1[39] = v5;
  v7 = *(v6 + 64);
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[42] = v8;
  sub_888C(v8);
  v1[43] = v9;
  v11 = *(v10 + 64);
  v1[44] = sub_8BC0();
  v12 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  v1[45] = v12;
  sub_4348(v12);
  v14 = *(v13 + 64);
  v1[46] = sub_8BC0();
  v15 = sub_16DBEC();
  v1[47] = v15;
  sub_888C(v15);
  v1[48] = v16;
  v18 = *(v17 + 64);
  v1[49] = sub_8BC0();
  v19 = sub_16C09C();
  v1[50] = v19;
  sub_888C(v19);
  v1[51] = v20;
  v22 = *(v21 + 64);
  v1[52] = sub_8BC0();
  v23 = sub_16C0BC();
  v1[53] = v23;
  sub_888C(v23);
  v1[54] = v24;
  v26 = *(v25 + 64);
  v1[55] = sub_8BC0();
  v27 = sub_16BD9C();
  v1[56] = v27;
  sub_888C(v27);
  v1[57] = v28;
  v30 = *(v29 + 64);
  v1[58] = sub_8C38();
  v1[59] = swift_task_alloc();
  v31 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v31);
  v33 = *(v32 + 64);
  v1[60] = sub_8C38();
  v1[61] = swift_task_alloc();
  v34 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v34);
  v36 = *(v35 + 64);
  v1[62] = sub_8C38();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v37 = sub_16BF5C();
  v1[65] = v37;
  sub_888C(v37);
  v1[66] = v38;
  v40 = *(v39 + 64);
  v1[67] = sub_8C38();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v41 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v41);
  v43 = *(v42 + 64);
  v1[72] = sub_8C38();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v44 = sub_17960();

  return _swift_task_switch(v44, v45, v46);
}

uint64_t sub_D2244()
{
  v251 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = 1851392;
  v247 = sub_D4F4C();
  [v2 totalInBedDuration];
  v5 = v4;
  [v2 totalAsleepDuration];
  v7 = v6;
  v246 = sub_D4F4C();
  v8 = &off_1C4000;
  v245 = [v2 daysSummarized];
  v9 = sub_16D38C();
  sub_8D14(v9);
  sub_16D37C();
  v10 = &off_1C4000;
  v11 = [v1 start];
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 632);
    sub_16BF3C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  sub_D4F0C(v11, v14);
  v17 = sub_8B9C();
  sub_86FC(v17, v18, v19, v20);
  v21 = sub_A76DC();
  LODWORD(v16) = sub_369C(v21, v22, 1851392);
  v23 = *(v0 + 640);
  if (v16)
  {
    sub_8748(*(v0 + 640), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v3 = *(v0 + 568);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v26 = sub_D4E7C(v24);
    v27(v26);
    sub_8748(v23, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v28 = *(v24 + 8);
    v29 = sub_C9E0();
    v30(v29);
  }

  v31 = *(v0 + 280);
  sub_16D35C();

  v32 = &off_1C4000;
  v33 = [v31 end];
  if (v33)
  {
    v34 = v33;
    v35 = *(v0 + 616);
    sub_16BF3C();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = *(v0 + 624);
  v38 = *(v0 + 616);
  sub_D4F0C(v33, v36);
  v39 = sub_8B9C();
  sub_86FC(v39, v40, v41, v42);
  v43 = sub_A76DC();
  LODWORD(v38) = sub_369C(v43, v44, v3);
  v45 = *(v0 + 624);
  if (v38)
  {
    sub_8748(*(v0 + 624), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v46 = *(v0 + 568);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    v49 = sub_D4E7C(v47);
    v50(v49);
    sub_8748(v45, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v51 = *(v47 + 8);
    v52 = sub_C9E0();
    v53(v52);
    v32 = &off_1C4000;
  }

  v54 = *(v0 + 512);
  v55 = *(v0 + 448);
  v56 = *(v0 + 280);
  sub_16D34C();

  v57 = sub_16D36C();
  *(v0 + 648) = v57;

  sub_8AB4();
  sub_214C(v58, v59, v60, v55);
  v61 = [v56 start];
  if (v61)
  {
    v62 = v61;
    v63 = *(v0 + 560);
    v64 = *(v0 + 280);
    sub_16BF3C();

    v65 = [v64 end];
    if (v65)
    {
      v66 = v65;
      v67 = *(v0 + 568);
      v68 = *(v0 + 560);
      v69 = *(v0 + 552);
      v70 = *(v0 + 544);
      v71 = *(v0 + 528);
      v248 = v57;
      v72 = *(v0 + 520);
      v73 = *(v0 + 504);
      v241 = *(v0 + 512);
      v243 = *(v0 + 448);
      sub_16BF3C();

      v74 = *(v71 + 16);
      v75 = sub_D4E5C();
      v74(v75);
      (v74)(v70, v69, v72);
      v10 = &off_1C4000;
      sub_16BD5C();
      v76 = *(v71 + 8);
      v77 = v69;
      v8 = &off_1C4000;
      v76(v77, v72);
      v78 = v68;
      v32 = &off_1C4000;
      v79 = v72;
      v57 = v248;
      v76(v78, v79);
      v80 = sub_38B40();
      sub_8748(v80, v81, &dword_16F320);
      sub_388E4();
      sub_214C(v82, v83, v84, v243);
      v85 = sub_8B9C();
      sub_86FC(v85, v86, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v0 + 528) + 8))(*(v0 + 560), *(v0 + 520));
    }
  }

  v87 = *(v0 + 496);
  v88 = *(v0 + 448);
  v89 = *(*(v0 + 296) + 272);
  sub_12093C(v89, *(v0 + 512), *(v0 + 488));
  v90 = sub_C9C8();
  sub_86B0(v90, v91, v92, v93);
  if (sub_369C(v87, 1, v88) == 1)
  {
    sub_8748(*(v0 + 496), &qword_1C5690, &dword_16F320);
  }

  else
  {
    v240 = v89;
    v249 = v57;
    v94 = *(v0 + 608);
    v95 = *(v0 + 568);
    v96 = *(v0 + 528);
    v97 = *(v0 + 520);
    v99 = *(v0 + 432);
    v98 = *(v0 + 440);
    v100 = *(v0 + 416);
    v244 = *(v0 + 424);
    v101 = *(v0 + 400);
    v102 = *(v0 + 408);
    (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 496), *(v0 + 448));
    sub_16C08C();
    v103 = sub_D4E68();
    v104(v103);
    sub_16BF4C();
    sub_16C06C();
    v242 = *(v96 + 8);
    v242(v95, v97);
    v105 = *(v102 + 8);
    v106 = sub_D4D84();
    v107(v106);
    v108 = *(v99 + 8);
    v108(v98, v244);
    v109 = sub_369C(v94, 1, v97);
    v110 = *(v0 + 608);
    if (v109 == 1)
    {
      (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
      sub_8748(v110, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v111 = *(v0 + 568);
      v112 = *(v0 + 544);
      v238 = *(v0 + 536);
      v113 = *(v0 + 520);
      v114 = *(v0 + 472);
      v115 = *(v0 + 440);
      v116 = *(v0 + 424);
      (*(*(v0 + 528) + 32))();
      sub_16C08C();
      sub_16BD7C();
      sub_16BD4C();
      v236 = sub_16C07C();
      v242(v112, v113);
      v242(v111, v113);
      v117 = sub_C9E0();
      (v108)(v117);
      sub_16C08C();
      sub_16BD4C();
      v118 = sub_16C07C();
      v242(v111, v113);
      v119 = sub_C9E0();
      (v108)(v119);
      v121 = *(v0 + 448);
      v120 = *(v0 + 456);
      if (v236 & 1) != 0 && (v118)
      {
        v123 = *(v0 + 464);
        v122 = *(v0 + 472);
        v125 = *(v0 + 384);
        v124 = *(v0 + 392);
        v126 = *(v0 + 376);
        sub_16DBBC();
        sub_8B48();
        v127 = *(v125 + 16);
        v128 = sub_D4E5C();
        v129(v128);
        v130 = *(v120 + 16);
        v131 = sub_8427C();
        v132(v131);
        v133 = sub_16DBDC();
        v134 = sub_16E36C();
        v135 = os_log_type_enabled(v133, v134);
        v137 = *(v0 + 456);
        v136 = *(v0 + 464);
        v138 = *(v0 + 448);
        v139 = *(v0 + 384);
        v140 = *(v0 + 376);
        if (v135)
        {
          v239 = *(v0 + 392);
          v141 = sub_8BD8();
          v237 = sub_CA30();
          v250 = v237;
          *v141 = 136315138;
          sub_D4C54();
          sub_D4798(v142, v143);
          v235 = v140;
          v144 = sub_16E68C();
          v234 = v134;
          v146 = v145;
          log = v133;
          v147 = *(v137 + 8);
          v148 = sub_C9C8();
          v147(v148);
          v149 = v147;
          v150 = sub_3AB7C(v144, v146, &v250);

          *(v141 + 4) = v150;
          _os_log_impl(&def_259DC, log, v234, "%s seems like a request for last night, removing intervals from deep link", v141, 0xCu);
          sub_2D64(v237);
          sub_8A2C();
          sub_8A2C();

          (*(v139 + 8))(v239, v235);
        }

        else
        {

          v152 = *(v137 + 8);
          v153 = sub_C9C8();
          v152(v153);
          v149 = v152;
          v154 = *(v139 + 8);
          v155 = sub_387CC();
          v157(v155, v156);
        }

        v158 = *(v0 + 536);
        v159 = *(v0 + 520);
        v160 = *(v0 + 504);
        v162 = *(v0 + 480);
        v161 = *(v0 + 488);
        v163 = *(v0 + 472);
        v164 = *(v0 + 448);
        v165 = sub_D4B6C();
        sub_214C(v165, v166, v167, v164);
        sub_12093C(v240, v160, v162);
        sub_8748(v160, &qword_1C5690, &dword_16F320);
        v168 = sub_C9C8();
        (v242)(v168);
        (v149)(v163, v164);
        sub_1E634(v162, v161, &qword_1C57F8, &unk_172510);
      }

      else
      {
        v151 = *(v0 + 472);
        v242(*(v0 + 536), *(v0 + 520));
        (*(v120 + 8))(v151, v121);
      }
    }

    v8 = &off_1C4000;
    v57 = v249;
    v10 = &off_1C4000;
    v32 = &off_1C4000;
  }

  v169 = [*(v0 + 280) v10[338]];
  if (v169)
  {
    v170 = v169;
    v171 = *(v0 + 600);
    sub_16BF3C();

    v172 = 0;
  }

  else
  {
    v172 = 1;
  }

  v173 = *(v0 + 280);
  sub_214C(*(v0 + 600), v172, 1, *(v0 + 520));
  v174 = [v173 v32[339]];
  if (v174)
  {
    v177 = v174;
    v178 = *(v0 + 592);
    sub_16BF3C();
  }

  v179 = *(v0 + 288);
  v180 = 1;
  sub_5DC74(*(v0 + 592), v175, v176, *(v0 + 520));
  v181 = [v179 summaryStartDate];
  if (v181)
  {
    v182 = v181;
    v183 = *(v0 + 584);
    sub_16BF3C();

    v180 = 0;
  }

  v184 = *(v0 + 288);
  sub_214C(*(v0 + 584), v180, 1, *(v0 + 520));
  v185 = [v184 summaryEndDate];
  if (v185)
  {
    v188 = v185;
    v189 = *(v0 + 576);
    sub_16BF3C();
  }

  v190 = *(v0 + 600);
  v191 = *(v0 + 592);
  v192 = *(v0 + 584);
  v193 = *(v0 + 288);
  sub_5DC74(*(v0 + 576), v186, v187, *(v0 + 520));
  type metadata accessor for WellnessTime(0);
  sub_C9F8();
  sub_15BF80();
  v195 = v194;
  *(v0 + 656) = v194;
  if ([v193 v8[405]] == &def_259DC + 1)
  {
    v196 = *(v0 + 488);
    v198 = *(v0 + 360);
    v197 = *(v0 + 368);
    v199 = *(v0 + 288);
    v200 = *sub_2D20((*(v0 + 296) + 200), *(*(v0 + 296) + 224));
    v201 = sub_16D5CC();

    v202 = v199;
    v203 = sub_D4B6C();
    sub_214C(v203, v204, v205, v201);
    *(v197 + v198[5]) = 0;
    *(v197 + v198[6]) = 0;
    v206 = v198[7];
    sub_8AB4();
    sub_214C(v207, v208, v209, v201);
    *(v197 + v198[8]) = 0;
    *(v197 + v198[9]) = 0;
    *(v197 + v198[10]) = 0;
    *(v197 + v198[11]) = 0;
    sub_D3DA4(v197, v196, v57, v195, v247 > 0, v202);
    sub_6E354();
    *(v0 + 664) = v210;
    v211 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v212 = swift_task_alloc();
    *(v0 + 672) = v212;
    *v212 = v0;
    v212[1] = sub_D3038;
    sub_5E24C();

    __asm { BR              X3 }
  }

  v215 = sub_2D20((*(v0 + 296) + 200), *(*(v0 + 296) + 224));
  v216 = v215;
  if (v5 <= 0.0 || v7 <= 0.0)
  {
    v225 = *(v0 + 288);
    v226 = *v215;

    v227 = v225;
    v228 = swift_task_alloc();
    *(v0 + 688) = v228;
    *v228 = v0;
    v228[1] = sub_D3578;
    v229 = *(v0 + 488);
    v230 = *(v0 + 288);
    sub_5E24C();

    __asm { BR              X6 }
  }

  v217 = *(v0 + 488);
  v219 = *(v0 + 288);
  v218 = *(v0 + 296);
  v220 = swift_task_alloc();
  *(v0 + 696) = v220;
  *(v220 + 16) = v218;
  *(v220 + 24) = v217;
  *(v220 + 32) = v57;
  *(v220 + 40) = v195;
  *(v220 + 48) = v219;
  *(v220 + 56) = v246 / v245;
  v221 = *v216;
  v222 = swift_task_alloc();
  *(v0 + 704) = v222;
  *v222 = v0;
  v222[1] = sub_D3A44;
  sub_5E24C();

  return sub_72DB4();
}

uint64_t sub_D3038()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  v6 = *(v5 + 672);
  v7 = *(v5 + 664);
  v8 = *v1;
  sub_C990();
  *v9 = v8;
  *(v10 + 680) = v0;

  sub_8ACC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_D3154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v33 = *(v32 + 656);
  v34 = *(v32 + 648);
  v35 = *(v32 + 288);
  sub_D4CC8(*(v32 + 368));

  v36 = sub_D4A74(*(v32 + 208));
  sub_16C43C();
  v37 = sub_D4B7C();
  v38(v37);
  sub_D4A44();
  v39 = sub_D4D90();
  v40(v39);
  v41 = [v36 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v42 = sub_D4B28();
  sub_D4E40(v42);
  v54 = sub_16C32C();

  v43 = sub_D4DA0();
  v44(v43);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v35, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v54, a30, a31, a32);
}

uint64_t sub_D33A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v33 = v32[85];
  v34 = v32[82];
  v35 = v32[81];
  v36 = v32[36];
  sub_D4CC8(v32[46]);

  sub_D4DB0();
  sub_82E0();
  v46 = sub_16C32C();

  sub_8334((v32 + 2));
  sub_8748(v36, &qword_1C5690, &dword_16F320);
  sub_D4888();
  sub_8748(v35, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v46, a30, a31, a32);
}

uint64_t sub_D3578()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  v6 = *(v5 + 688);
  v7 = *v1;
  sub_C990();
  *v8 = v7;

  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_D367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v34 = sub_D4A74(*(v33 + 232));
  sub_16C43C();
  v35 = sub_D4B7C();
  v36(v35);
  sub_D4A44();
  v37 = sub_D4D90();
  v38(v37);
  v39 = [v34 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v40 = sub_D4B28();
  sub_D4E40(v40);
  v52 = sub_16C32C();

  v41 = sub_D4DA0();
  v42(v41);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_D38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  sub_D4DB0();
  sub_82E0();
  v44 = sub_16C32C();

  sub_8334(v33 + 16);
  sub_8748(v34, &qword_1C5690, &dword_16F320);
  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v44, a30, a31, a32);
}

uint64_t sub_D3A44()
{
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v3[31] = v1;
  v3[32] = v5;
  v3[33] = v0;
  v6 = *(v2 + 704);
  v7 = *v1;
  sub_C990();
  *v8 = v7;

  v9 = *(v2 + 696);
  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_D3B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v34 = sub_D4A74(*(v33 + 256));
  sub_16C43C();
  v35 = sub_D4B7C();
  v36(v35);
  sub_D4A44();
  v37 = sub_D4D90();
  v38(v37);
  v39 = [v34 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v40 = sub_D4B28();
  sub_D4E40(v40);
  v52 = sub_16C32C();

  v41 = sub_D4DA0();
  v42(v41);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_D3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_16BE9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v50 - v19;
  if (sub_369C(a2, 1, v12))
  {
    v21 = sub_16D5CC();
    sub_214C(v20, 1, 1, v21);
  }

  else
  {
    (*(v13 + 16))(v16, a2, v12);
    sub_61120(v20);
    (*(v13 + 8))(v16, v12);
  }

  sub_1E634(v20, a1, &qword_1C5800, &unk_16F510);
  v22 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  v23 = v22[8];
  v24 = *(a1 + v23);

  *(a1 + v23) = a3;
  v25 = v22[9];
  v26 = *(a1 + v25);

  *(a1 + v25) = a4;
  if (a5)
  {
    v27 = sub_16D53C();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_16D52C();
    [a6 totalAsleepDuration];
    sub_16D51C();

    v30 = sub_16D50C();

    v31 = v22[10];
    v32 = *(a1 + v31);

    *(a1 + v31) = v30;
    v33 = *(v27 + 48);
    v34 = *(v27 + 52);
    swift_allocObject();
    sub_16D52C();
    [a6 averageAsleepDuration];
    sub_16D51C();

    v35 = sub_16D50C();

    v36 = v22[5];
    v37 = *(a1 + v36);

    *(a1 + v36) = v35;
  }

  v38 = sub_16D53C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_16D52C();
  [a6 totalInBedDuration];
  sub_16D51C();

  v41 = sub_16D50C();

  v42 = v22[11];
  v43 = *(a1 + v42);

  *(a1 + v42) = v41;
  v44 = *(v38 + 48);
  v45 = *(v38 + 52);
  swift_allocObject();
  sub_16D52C();
  [a6 averageInBedDuration];
  sub_16D51C();

  v46 = sub_16D50C();

  v47 = v22[6];
  v48 = *(a1 + v47);

  *(a1 + v47) = v46;
  return result;
}

uint64_t sub_D414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v11 = sub_16BE9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  sub_208C0(*(a2 + 272));
  sub_16E23C();

  v23 = sub_16D5CC();
  sub_214C(v22, 0, 1, v23);
  v24 = type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(0);
  sub_1E634(v22, a1 + v24[7], &qword_1C5800, &unk_16F510);
  if (sub_369C(a3, 1, v11))
  {
    sub_214C(v20, 1, 1, v23);
  }

  else
  {
    (*(v12 + 16))(v15, a3, v11);
    sub_61120(v20);
    (*(v12 + 8))(v15, v11);
  }

  sub_1E634(v20, a1, &qword_1C5800, &unk_16F510);
  v25 = v24[14];
  v26 = *(a1 + v25);
  v27 = v46;

  *(a1 + v25) = v27;
  v28 = v24[15];
  v29 = *(a1 + v28);
  v30 = v47;

  *(a1 + v28) = v30;
  v31 = sub_16D53C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_16D52C();
  v34 = v48;
  [v48 averageAsleepDuration];
  sub_16D51C();

  v35 = sub_16D50C();

  v36 = v24[5];
  v37 = *(a1 + v36);

  *(a1 + v36) = v35;
  v38 = *(v31 + 48);
  v39 = *(v31 + 52);
  swift_allocObject();
  sub_16D52C();
  [v34 averageInBedDuration];
  sub_16D51C();

  v40 = sub_16D50C();

  v41 = v24[6];
  v42 = *(a1 + v41);

  *(a1 + v41) = v40;
  v44 = a1 + v24[13];
  *v44 = a7;
  *(v44 + 8) = 0;
  return result;
}

uint64_t sub_D44B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_D4854, 0, 0);
}

uint64_t sub_D44DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_CC0B4();
}

uint64_t sub_D45F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_8B38(v4);
  v6 = *(v5 + 16);
  v7 = sub_8B9C();
  v8(v7);
  return a2;
}

uint64_t sub_D4650()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D4688()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_C8CB0(v3, v4);
}

uint64_t sub_D4710()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_D4798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D47F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_D4888()
{
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[63];
  v10 = v0[61];
  v21 = v0[62];
  v22 = v0[60];
  v23 = v0[59];
  v24 = v0[58];
  v25 = v0[55];
  v26 = v0[52];
  v27 = v0[49];
  v11 = v0[44];
  *(v1 - 112) = v0[46];
  *(v1 - 104) = v11;
  v12 = v0[40];
  *(v1 - 96) = v0[41];
  *(v1 - 88) = v12;
}

uint64_t sub_D4914()
{
  result = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v7 = v0[194];
  v8 = v0[193];
  v9 = v0[192];
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[189];
  return result;
}

void sub_D4978()
{
  v2 = v0[188];
  v3 = v0[187];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];
  v8 = v0[180];
  v9 = v0[179];
  v10 = v0[178];
  v11 = v0[175];
  v12 = v0[172];
  v13 = v0[169];
  v14 = v0[168];
  v15 = v0[167];
  v16 = v0[166];
  v17 = v0[165];
  v18 = v0[164];
  v19 = v0[163];
  v1 = v0[162];
  v20 = v0[161];
}

uint64_t sub_D49F8()
{
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[125];
  v7 = v0[124];
  v8 = v0[121];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[114];
  v12 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
}

uint64_t sub_D4A44()
{

  return sub_16C75C();
}

id sub_D4A74@<X0>(void *a1@<X8>)
{
  v4 = v1[82];
  v5 = v1[81];
  *(v2 - 88) = v1[64];
  v6 = v1[43];
  v7 = v1[44];
  v9 = v1[41];
  v8 = v1[42];
  *(v2 - 104) = v4;
  *(v2 - 96) = v8;
  v10 = v1[39];
  v11 = v1[40];
  v12 = v1[37];
  v13 = v1[38];

  return a1;
}

void sub_D4AA8()
{
  v2 = v0[188];
  v3 = v0[187];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];
  v8 = v0[180];
  v9 = v0[179];
  v10 = v0[178];
  v11 = v0[175];
  v12 = v0[172];
  v13 = v0[169];
  v14 = v0[168];
  v15 = v0[167];
  v16 = v0[166];
  v17 = v0[165];
  v18 = v0[164];
  v19 = v0[163];
  v1 = v0[162];
  v20 = v0[161];
}

uint64_t sub_D4B28()
{
  v1 = v0[14];
  sub_2D20(v0 + 10, v0[13]);

  return sub_16C2FC();
}

uint64_t sub_D4B94()
{
  v9 = v0[158];
  v3 = v0[156];
  *(v1 - 176) = v0[157];
  *(v1 - 168) = v3;
  v4 = v0[153];
  *(v1 - 160) = v0[155];
  *(v1 - 152) = v4;
  v5 = v0[151];
  *(v1 - 144) = v0[152];
  *(v1 - 136) = v5;
  v6 = v0[148];
  *(v1 - 128) = v0[149];
  *(v1 - 120) = v6;
  v7 = v0[146];
  *(v1 - 112) = v0[147];
  *(v1 - 104) = v7;
}

uint64_t sub_D4BE8()
{
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v3 = v0[153];
  *(v1 - 192) = v0[155];
  *(v1 - 184) = v3;
  v4 = v0[151];
  *(v1 - 176) = v0[152];
  *(v1 - 168) = v4;
  v5 = v0[148];
  *(v1 - 160) = v0[149];
  *(v1 - 152) = v5;
  v6 = v0[146];
  *(v1 - 144) = v0[147];
  *(v1 - 136) = v6;
}

uint64_t sub_D4C6C()
{
  v2 = *(v0 - 112);
}

void sub_D4C8C()
{
  v4 = v1[207];
  v5 = v1[206];
  v6 = v1[181];
  v7 = v1[165];
  v8 = v1[160];
  v9 = v1[159];
  v10 = v1[158];
  v11 = v1[153];
  *(v2 - 112) = v1[184];
  *(v2 - 104) = v11;
  v12 = v1[145];
}

uint64_t sub_D4CC8(uint64_t a1)
{

  return sub_D47F4(a1, type metadata accessor for WellnessQueryingSleep_SimpleResultParameters);
}

uint64_t sub_D4CEC()
{
  v1 = v0[185];
  v2 = *(v0[186] + 16);
  return v0[191];
}

void sub_D4D10()
{
  v2 = v0[207];
  v3 = v0[206];
  v4 = v0[184];
  v5 = v0[181];
  v6 = v0[158];
  *(v1 - 136) = v0[153];
}

uint64_t sub_D4D68()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_D4DA0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_D4DB0()
{
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[64];
  v5 = v0[37] + 80;

  return sub_8284(v5, (v0 + 2));
}

uint64_t sub_D4DD8()
{

  return sub_16D51C();
}

uint64_t sub_D4E1C()
{
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 864);
  v5 = *(v0 + 1128);
}

uint64_t sub_D4E40(uint64_t a1)
{
  *(v1 + 272) = a1;

  return sub_16C28C();
}

void sub_D4ECC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_D4EEC(uint64_t a1)
{

  return sub_369C(v1, 1, a1);
}

uint64_t sub_D4F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + 520);

  return sub_214C(v2, a2, 1, v5);
}

void sub_D4F2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_D4F4C()
{
  v3 = *(v1 + 3216);

  return [v0 v3];
}

uint64_t type metadata accessor for TemperatureQueryModel()
{
  result = qword_1C9860;
  if (!qword_1C9860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureQueryModel.averageValueString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.averageValueString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.maxValueString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.maxValueString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.minValueString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.minValueString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValueString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 56));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.mostRecentValueString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 60));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.averageLabelString.getter()
{
  Model = type metadata accessor for TemperatureQueryModel();
  sub_20658(*(Model + 68));
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.averageLabelString.setter()
{
  v3 = sub_D78BC();
  result = sub_66A6C(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_D588C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_D5A34(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  if ((a2 & 1) == 0)
  {
    v15 = sub_16D3DC();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_16D3CC();
    sub_16D43C();

    sub_16D42C();

    sub_16D41C();

    if (a4)
    {
      sub_16D3AC();
      v18 = sub_16D5CC();
      if (sub_369C(v14, 1, v18) != 1)
      {
        v21 = sub_16D5BC();

        (*(*(v18 - 8) + 8))(v14, v18);
        return v21;
      }

      v19 = v14;
    }

    else
    {
      sub_16D3BC();
      v20 = sub_16D5CC();
      if (sub_369C(v12, 1, v20) != 1)
      {
        v21 = sub_16D5BC();

        (*(*(v20 - 8) + 8))(v12, v20);
        return v21;
      }

      v19 = v12;
    }

    sub_8748(v19, &qword_1C5800, &unk_16F510);
  }

  return 0;
}

uint64_t sub_D5C84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000000017F5C0 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x800000000017F600 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_16E6BC();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_D6144(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
    case 10:
      return 0xD000000000000015;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_17;
    case 9:
      v3 = 1450076525;
LABEL_17:
      result = v3 | 0x65756C6100000000;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x6972745374696E75;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D6334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D5C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D635C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D613C();
  *a1 = result;
  return result;
}

uint64_t sub_D6384(uint64_t a1)
{
  v2 = sub_D67F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D63C0(uint64_t a1)
{
  v2 = sub_D67F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TemperatureQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C97F0, &qword_176158);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_D67F0();
  sub_16E77C();
  v23[31] = 0;
  sub_16C11C();
  sub_D7874();
  sub_D7124(v12, v13);
  sub_205DC();
  sub_16E63C();
  if (!v1)
  {
    Model = type metadata accessor for TemperatureQueryModel();
    sub_669D0(Model[5]);
    v23[30] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v23[29] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v23[28] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v23[27] = 4;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[9]);
    v23[26] = 5;
    sub_20584();
    sub_16E62C();
    v15 = Model[10];
    v23[25] = 6;
    sub_16D5CC();
    sub_D788C();
    sub_D7124(v16, v17);
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[11]);
    v23[24] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v23[15] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v23[14] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v23[13] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v23[12] = 11;
    sub_20584();
    sub_16E61C();
    v18 = Model[16];
    v23[11] = 12;
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[17]);
    v23[10] = 13;
    sub_20584();
    sub_16E61C();
    v19 = Model[18];
    v23[9] = 14;
    type metadata accessor for SnippetHeaderModel();
    sub_D78A4();
    sub_D7124(v20, v21);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_D67F0()
{
  result = qword_1C97F8;
  if (!qword_1C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C97F8);
  }

  return result;
}

uint64_t TemperatureQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v106 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v107 = &v101 - v6;
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v120 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v101 - v13;
  v14 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v14);
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v121 = &v101 - v18;
  v122 = sub_2440(&qword_1C9800, &qword_176160);
  sub_42F0(v122);
  v118 = v19;
  v21 = *(v20 + 64);
  sub_433C();
  __chkstk_darwin(v22);
  v125 = &v101 - v23;
  Model = type metadata accessor for TemperatureQueryModel();
  v25 = (Model - 8);
  v26 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v117 = v29;
  sub_214C(v30, v31, v32, v29);
  sub_D78F0(v25[7]);
  v116 = v33;
  *(v33 + 8) = 1;
  sub_D78F0(v25[8]);
  v115 = v34;
  *(v34 + 8) = 1;
  sub_D78F0(v25[9]);
  v114 = v35;
  *(v35 + 8) = 1;
  sub_D78F0(v25[10]);
  v113 = v36;
  *(v36 + 8) = 1;
  sub_D78F0(v25[11]);
  v111 = v37;
  *(v37 + 8) = 1;
  v38 = v25[12];
  v39 = sub_16D5CC();
  v110 = v38;
  sub_8AB4();
  sub_214C(v40, v41, v42, v39);
  v43 = &v28[v25[13]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v109 = v43;
  v44 = &v28[v25[14]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v28[v25[15]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &v28[v25[16]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &v28[v25[17]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v108 = v25[18];
  sub_8AB4();
  v112 = v39;
  sub_214C(v48, v49, v50, v39);
  v51 = &v28[v25[19]];
  *v51 = 0;
  v51[1] = 0;
  v52 = v25[20];
  v53 = type metadata accessor for SnippetHeaderModel();
  v124 = v28;
  v105 = v52;
  sub_8AB4();
  sub_214C(v54, v55, v56, v53);
  v57 = v126[4];
  v58 = sub_2D20(v126, v126[3]);
  sub_D67F0();
  v59 = v123;
  sub_16E76C();
  if (v59)
  {
    v100 = v124;
  }

  else
  {
    v123 = v44;
    v104 = v45;
    v103 = v46;
    v102 = v47;
    v60 = v119;
    v101 = v53;
    v61 = v120;
    v62 = v118;
    v141 = 0;
    sub_D7874();
    sub_D7124(v63, v64);
    v65 = v121;
    sub_D7868();
    sub_16E5AC();
    v67 = v65;
    v68 = v124;
    sub_1E634(v67, v124, &qword_1C63F0, &unk_1717F0);
    v140 = 1;
    v69 = sub_16E59C();
    sub_D7858(v69, v70);
    v139 = 2;
    sub_D7848();
    v71 = sub_16E59C();
    sub_D7858(v71, v72);
    v138 = 3;
    sub_D7848();
    v73 = sub_16E59C();
    sub_D7858(v73, v74);
    v137 = 4;
    sub_D7848();
    v75 = sub_16E59C();
    sub_D7858(v75, v76);
    v136 = 5;
    sub_D7848();
    v77 = sub_16E59C();
    sub_D7858(v77, v78);
    v135 = 6;
    sub_D788C();
    sub_D7124(v79, v80);
    sub_D7868();
    sub_16E5AC();
    sub_1E634(v60, v68 + v110, &qword_1C5800, &unk_16F510);
    v134 = 7;
    sub_D7848();
    v81 = sub_16E58C();
    v82 = v109;
    *v109 = v81;
    v82[1] = v83;
    v133 = 8;
    sub_D7848();
    v84 = sub_16E58C();
    v85 = v123;
    *v123 = v84;
    v85[1] = v86;
    v132 = 9;
    sub_D7848();
    v87 = sub_16E58C();
    v88 = v104;
    *v104 = v87;
    v88[1] = v89;
    v131 = 10;
    sub_D7848();
    v90 = sub_16E58C();
    v91 = v103;
    *v103 = v90;
    v91[1] = v92;
    v130 = 11;
    sub_D7848();
    v93 = sub_16E58C();
    v94 = v102;
    *v102 = v93;
    v94[1] = v95;
    v129 = 12;
    sub_D7868();
    sub_16E5AC();
    sub_1E634(v61, &v124[v108], &qword_1C5800, &unk_16F510);
    v128 = 13;
    sub_D7848();
    *v51 = sub_16E58C();
    v51[1] = v96;
    v127 = 14;
    sub_D78A4();
    sub_D7124(v97, v98);
    v99 = v122;
    sub_D7868();
    sub_16E5AC();
    (*(v62 + 8))(v58, v99);
    v100 = v124;
    sub_1E634(v107, &v124[v105], &dword_1C63F8, &qword_171800);
    sub_D7030(v100, v106);
  }

  sub_2D64(v126);
  return sub_D6FD4(v100);
}

uint64_t sub_D6FD4(uint64_t a1)
{
  Model = type metadata accessor for TemperatureQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_D7030(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for TemperatureQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_D7124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D71B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_369C(v10, a2, v9);
  }

  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = sub_436C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[10];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v14 = a3[18];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[11] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_D7304(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v9 = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2440(&qword_1C5800, &unk_16F510);
    result = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[10];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[11] + 8) = a2;
        return result;
      }

      v11 = sub_2440(&dword_1C63F8, &qword_171800);
      v16 = a4[18];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

uint64_t sub_D7434()
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for TemperatureQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemperatureQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xD7708);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_D7744()
{
  result = qword_1C98D0;
  if (!qword_1C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98D0);
  }

  return result;
}

unint64_t sub_D779C()
{
  result = qword_1C98D8;
  if (!qword_1C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98D8);
  }

  return result;
}

unint64_t sub_D77F4()
{
  result = qword_1C98E0;
  if (!qword_1C98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98E0);
  }

  return result;
}

uint64_t sub_D7858(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_D78BC()
{

  return type metadata accessor for TemperatureQueryModel();
}

uint64_t sub_D78D8()
{

  return type metadata accessor for TemperatureQueryModel();
}

uint64_t sub_D78FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16DCCC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_2440(&qword_1C5610, &qword_1763B0);
  v14 = sub_8B38(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v24 - v17);
  sub_4B010(v2, &v24 - v17, &qword_1C5610, &qword_1763B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_16DC4C();
    sub_8B38(v19);
    return (*(v20 + 32))(a1, v18);
  }

  else
  {
    v22 = *v18;
    sub_16E38C();
    v23 = sub_16DDEC();
    sub_16DB9C();

    sub_16DCBC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v12, v4);
  }
}

void *PhoneRingsSnippet.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2440(&qword_1C5610, &qword_1763B0);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for PhoneRingsSnippet() + 20);

  return memcpy(v4, a1, 0xF1uLL);
}

uint64_t type metadata accessor for PhoneRingsSnippet()
{
  result = qword_1C99B8;
  if (!qword_1C99B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneRingsSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v2 = sub_16E10C();
  v3 = sub_42F0(v2);
  v109 = v4;
  v110 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v108 = v8 - v7;
  v9 = type metadata accessor for PhoneRingsSnippet();
  v10 = v9 - 8;
  v105 = *(v9 - 8);
  v104 = *(v105 + 64);
  __chkstk_darwin(v9);
  v103 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2440(&qword_1C98E8, &qword_1763B8);
  v12 = sub_8B38(v107);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v106 = &v89 - v15;
  v16 = sub_2440(&qword_1C98F0, &qword_1763C0);
  v17 = sub_888C(v16);
  v102 = v18;
  v101 = *(v19 + 64);
  v20 = __chkstk_darwin(v17);
  v100 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = (&v89 - v22);
  v23 = sub_16DF9C();
  v24 = sub_42F0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_4304();
  v31 = v30 - v29;
  v32 = *(v10 + 28);
  v98 = v1;
  memcpy(v124, (v1 + v32), 0xF1uLL);
  memcpy(v115, (v1 + v32), 0xF1uLL);
  sub_13E04(v124, v140);
  sub_16E01C();
  sub_16DC2C();
  (*(v26 + 104))(v31, enum case for Color.RGBColorSpace.sRGB(_:), v23);
  v33 = sub_16DFDC();
  sub_16DC1C();
  v34 = v118;
  v35 = v119;
  v36 = v120;
  v37 = v121;
  v38 = v122;
  v39 = v123;
  v40 = sub_16E00C();
  v42 = v41;
  v43 = sub_16E00C();
  v45 = v44;
  v125[0] = v34;
  v125[1] = __PAIR64__(v36, v35);
  v125[2] = v37;
  v125[3] = v38;
  v125[4] = v39;
  v125[5] = v33;
  LOWORD(v125[6]) = 256;
  *(&v125[6] + 2) = v113;
  HIWORD(v125[6]) = v114;
  v125[7] = v40;
  v125[8] = v42;
  v125[9] = v43;
  v125[10] = v44;
  memcpy(v116, v115, 0x128uLL);
  memcpy(&v116[296], v125, 0x58uLL);
  v126 = v34;
  v127 = v35;
  v128 = v36;
  v129 = v37;
  v130 = v38;
  v131 = v39;
  v132 = v33;
  v133 = 256;
  v134 = v113;
  v135 = v114;
  v136 = v40;
  v137 = v42;
  v138 = v43;
  v139 = v45;
  sub_4B010(v125, v140, &qword_1C98F8, &qword_1763C8);
  sub_8748(&v126, &qword_1C98F8, &qword_1763C8);
  LOBYTE(v40) = sub_16DE0C();
  sub_16DBFC();
  v96 = v47;
  v97 = v46;
  v94 = v49;
  v95 = v48;
  LOBYTE(v140[0]) = 0;
  LOBYTE(v42) = sub_16DE2C();
  sub_16DBFC();
  v92 = v51;
  v93 = v50;
  v90 = v53;
  v91 = v52;
  LOBYTE(v112[0]) = 0;
  LOBYTE(v43) = sub_16DE3C();
  sub_16DBFC();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v140[0]) = 0;
  LOBYTE(v45) = sub_16DE1C();
  sub_16DBFC();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v116[384] = 0;
  memcpy(v140, v116, 0x180uLL);
  LOBYTE(v140[48]) = v40;
  v140[49] = v97;
  v140[50] = v96;
  v140[51] = v95;
  v140[52] = v94;
  LOBYTE(v140[53]) = 0;
  LOBYTE(v140[54]) = v42;
  v140[55] = v93;
  v140[56] = v92;
  v140[57] = v91;
  v140[58] = v90;
  LOBYTE(v140[59]) = 0;
  LOBYTE(v140[60]) = v43;
  v140[61] = v55;
  v140[62] = v57;
  v140[63] = v59;
  v140[64] = v61;
  LOBYTE(v140[65]) = 0;
  *(&v140[65] + 1) = v112[0];
  HIDWORD(v140[65]) = *(v112 + 3);
  LOBYTE(v140[66]) = v45;
  *(&v140[66] + 1) = *v117;
  HIDWORD(v140[66]) = *&v117[3];
  v140[67] = v63;
  v140[68] = v65;
  v140[69] = v67;
  v140[70] = v69;
  LOBYTE(v140[71]) = 0;
  v70 = sub_16DCFC();
  v71 = v99;
  *v99 = v70;
  *(v71 + 8) = 0x401C000000000000;
  *(v71 + 16) = 0;
  v72 = sub_2440(&qword_1C9900, &qword_1763D0);
  v73 = v98;
  sub_D83C8(v98, (v71 + *(v72 + 44)));
  v74 = v103;
  sub_D94BC(v73, v103);
  memcpy(v112, v140, 0x239uLL);
  v75 = v100;
  sub_4B010(v71, v100, &qword_1C98F0, &qword_1763C0);
  v76 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v77 = (v104 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (*(v102 + 80) + v77 + 569) & ~*(v102 + 80);
  v79 = swift_allocObject();
  sub_D97F8(v74, v79 + v76);
  memcpy((v79 + v77), v112, 0x239uLL);
  sub_D985C(v75, v79 + v78);
  sub_4B010(v140, v112, &qword_1C9918, &qword_1763E8);
  sub_2440(&qword_1C9920, &qword_1763F0);
  sub_98C8(&qword_1C9928, &qword_1C9920, &qword_1763F0);
  v80 = v106;
  sub_16E08C();
  v81 = sub_16DFCC();
  v82 = sub_16DDFC();
  v83 = v108;
  v84 = &v80[*(v107 + 36)];
  v85 = v80;
  *v84 = v81;
  v84[8] = v82;
  v87 = v109;
  v86 = v110;
  (*(v109 + 104))(v83, enum case for ComponentStackBottomSpacing.none(_:), v110);
  sub_D99AC();
  sub_16DF4C();
  sub_8748(v140, &qword_1C9918, &qword_1763E8);
  (*(v87 + 8))(v83, v86);
  sub_8748(v85, &qword_1C98E8, &qword_1763B8);
  return sub_8748(v71, &qword_1C98F0, &qword_1763C0);
}

uint64_t sub_D83C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v79 = sub_2440(&qword_1C9A80, &qword_176520);
  v3 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v5 = &v58 - v4;
  v75 = sub_16DF9C();
  v6 = *(v75 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v75);
  v76 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C9908, &qword_1763D8);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v9);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v62 = &v58 - v14;
  v15 = __chkstk_darwin(v13);
  v74 = &v58 - v16;
  v17 = __chkstk_darwin(v15);
  v61 = &v58 - v18;
  v19 = __chkstk_darwin(v17);
  v73 = &v58 - v20;
  __chkstk_darwin(v19);
  v78 = &v58 - v21;
  v22 = *(type metadata accessor for PhoneRingsSnippet() + 20);
  v77 = a1;
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 152);
  if (v24)
  {
    v68 = v23[18];
    v25 = v24;
  }

  else
  {
    v25 = 0xE400000000000000;
    v68 = 1702260557;
  }

  v67 = 3157808;
  v26 = v23[21];
  if (v26)
  {
    v60 = v23[20];
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v60 = 3157808;
  }

  if (v23[23])
  {
    v28 = v23[22];
    v29 = v23[23];
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 4997443;
  }

  v30 = *(v6 + 104);
  v71 = enum case for Color.RGBColorSpace.sRGB(_:);
  v72 = v6 + 104;
  v70 = v30;
  v30(v76);

  v31 = sub_16DFDC();
  v80[0] = 0xC008000000000000;
  if (sub_DA2C8())
  {
    v80[0] = 0xC018000000000000;
  }

  *v5 = sub_16DCFC();
  *(v5 + 1) = 0xC014000000000000;
  v5[16] = 0;
  v69 = sub_2440(&qword_1C9A88, &qword_176528);
  sub_DA670(v68, v25, v80, v60, v27, v28, v29, v31, &v5[*(v69 + 44)]);

  v68 = sub_98C8(&qword_1C9A90, &qword_1C9A80, &qword_176520);
  sub_16DF3C();

  sub_8748(v5, &qword_1C9A80, &qword_176520);
  v32 = v23[13];
  if (v32)
  {
    v60 = v23[12];
    v33 = v32;
  }

  else
  {
    v33 = 0xE800000000000000;
    v60 = 0x6573696372657845;
  }

  v34 = v23[15];
  if (v34)
  {
    v59 = v23[14];
    v35 = v34;
  }

  else
  {
    v35 = 0xE300000000000000;
    v59 = 3157808;
  }

  if (v23[17])
  {
    v36 = v23[16];
    v37 = v23[17];
  }

  else
  {
    v37 = 0xE300000000000000;
    v36 = 5130573;
  }

  v70(v76, v71, v75);

  v38 = sub_16DFDC();
  v80[0] = 0xC008000000000000;
  if (sub_DA2C8())
  {
    v80[0] = 0xC018000000000000;
  }

  *v5 = sub_16DCFC();
  *(v5 + 1) = 0xC014000000000000;
  v5[16] = 0;
  sub_DA670(v60, v33, v80, v59, v35, v36, v37, v38, &v5[*(v69 + 44)]);

  sub_16DF3C();

  sub_8748(v5, &qword_1C9A80, &qword_176520);
  v39 = v23[25];
  if (v39)
  {
    v60 = v23[24];
    v40 = v39;
  }

  else
  {
    v40 = 0xE500000000000000;
    v60 = 0x646E617453;
  }

  v41 = v23[27];
  if (v41)
  {
    v67 = v23[26];
    v42 = v41;
  }

  else
  {
    v42 = 0xE300000000000000;
  }

  if (v23[29])
  {
    v43 = v23[28];
    v44 = v23[29];
  }

  else
  {
    v44 = 0xE300000000000000;
    v43 = 5460552;
  }

  v70(v76, v71, v75);

  v45 = sub_16DFDC();
  v80[0] = 0xC008000000000000;
  if (sub_DA2C8())
  {
    v80[0] = 0xC018000000000000;
  }

  *v5 = sub_16DCFC();
  *(v5 + 1) = 0xC014000000000000;
  v5[16] = 0;
  sub_DA670(v60, v40, v80, v67, v42, v43, v44, v45, &v5[*(v69 + 44)]);

  v46 = v61;
  sub_16DF3C();

  sub_8748(v5, &qword_1C9A80, &qword_176520);
  v48 = v64;
  v47 = v65;
  v49 = *(v64 + 16);
  v50 = v74;
  v49(v74, v78, v65);
  v51 = v62;
  v52 = v73;
  v49(v62, v73, v47);
  v53 = v63;
  v49(v63, v46, v47);
  v54 = v66;
  v49(v66, v50, v47);
  v55 = sub_2440(&qword_1C9910, &qword_1763E0);
  v49(&v54[*(v55 + 48)], v51, v47);
  v49(&v54[*(v55 + 64)], v53, v47);
  v56 = *(v48 + 8);
  v56(v46, v47);
  v56(v52, v47);
  v56(v78, v47);
  v56(v53, v47);
  v56(v51, v47);
  return (v56)(v74, v47);
}

uint64_t sub_D8CAC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v64 = a2;
  v72 = a4;
  v73 = a1;
  v70 = sub_2440(&qword_1C99F8, &qword_1764A8);
  v4 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v62 = (&v60 - v5);
  v65 = sub_2440(&qword_1C9A00, &qword_1764B0);
  v6 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = &v60 - v7;
  v67 = sub_2440(&qword_1C9A08, &qword_1764B8);
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v61 = (&v60 - v9);
  v10 = sub_2440(&qword_1C9A10, &qword_1764C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v60 - v14;
  v15 = sub_2440(&qword_1C9A18, &qword_1764C8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v60 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = sub_2440(&qword_1C9A20, &qword_1764D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v60 - v23;
  v25 = sub_16C12C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_16C14C();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v32 = sub_16E0DC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2440(&qword_1C9A28, &qword_1764D8);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v63 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v60 - v41;
  if (*(v73 + *(type metadata accessor for PhoneRingsSnippet() + 20) + 240))
  {
    v43 = 1;
  }

  else
  {
    *v29 = 0xD000000000000011;
    v29[1] = 0x800000000017F640;
    (*(v26 + 104))(v29, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v25);
    v44 = sub_16C17C();
    sub_214C(v24, 1, 1, v44);
    v45 = sub_16C18C();
    sub_214C(v20, 1, 1, v45);
    sub_214C(v60, 1, 1, v45);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    sub_16C13C();
    sub_16E0CC();
    (*(v33 + 32))(v42, v36, v32);
    v43 = 0;
  }

  sub_214C(v42, v43, 1, v32);
  v46 = sub_D9AAC();
  v47 = v69;
  if (v46)
  {
    v48 = sub_16DCFC();
    v49 = v61;
    *v61 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = sub_2440(&qword_1C9A50, &qword_1764F0);
    sub_D9D8C(v64, v66, (v49 + *(v50 + 44)));
    v51 = &qword_1C9A08;
    v52 = &qword_1764B8;
    sub_4B010(v49, v68, &qword_1C9A08, &qword_1764B8);
  }

  else
  {
    v53 = sub_16DCEC();
    v49 = v62;
    *v62 = v53;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v54 = sub_2440(&qword_1C9A30, &qword_1764E0);
    sub_DA044(v64, v66, (v49 + *(v54 + 44)));
    v51 = &qword_1C99F8;
    v52 = &qword_1764A8;
    sub_4B010(v49, v68, &qword_1C99F8, &qword_1764A8);
  }

  swift_storeEnumTagMultiPayload();
  sub_98C8(&qword_1C9A38, &qword_1C9A08, &qword_1764B8);
  sub_98C8(&qword_1C9A40, &qword_1C99F8, &qword_1764A8);
  sub_16DDCC();
  sub_8748(v49, v51, v52);
  v55 = v63;
  sub_4B010(v42, v63, &qword_1C9A28, &qword_1764D8);
  v56 = v71;
  sub_4B010(v47, v71, &qword_1C9A10, &qword_1764C0);
  v57 = v72;
  sub_4B010(v55, v72, &qword_1C9A28, &qword_1764D8);
  v58 = sub_2440(&qword_1C9A48, &qword_1764E8);
  sub_4B010(v56, v57 + *(v58 + 48), &qword_1C9A10, &qword_1764C0);
  sub_8748(v47, &qword_1C9A10, &qword_1764C0);
  sub_8748(v42, &qword_1C9A28, &qword_1764D8);
  sub_8748(v56, &qword_1C9A10, &qword_1764C0);
  return sub_8748(v55, &qword_1C9A28, &qword_1764D8);
}

uint64_t sub_D94BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D9520()
{
  v1 = type metadata accessor for PhoneRingsSnippet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_2440(&qword_1C98F0, &qword_1763C0);
  sub_888C(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  v10 = (v0 + v3);
  sub_2440(&qword_1C5610, &qword_1763B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_16DC4C();
    sub_8B38(v11);
    (*(v12 + 8))(v0 + v3);
  }

  else
  {
    v13 = *v10;
  }

  v14 = v2 | v7;
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v7 + 569) & ~v7;
  v17 = (v10 + *(v1 + 20));
  v18 = v17[13];

  v19 = v17[15];

  v20 = v17[17];

  v21 = v17[19];

  v22 = v17[21];

  v23 = v17[23];

  v24 = v17[25];

  v25 = v17[27];

  v26 = v17[29];

  v27 = *(v0 + v15 + 104);

  v28 = *(v0 + v15 + 120);

  v29 = *(v0 + v15 + 136);

  v30 = *(v0 + v15 + 152);

  v31 = *(v0 + v15 + 168);

  v32 = *(v0 + v15 + 184);

  v33 = *(v0 + v15 + 200);

  v34 = *(v0 + v15 + 216);

  v35 = *(v0 + v15 + 232);

  v36 = *(v0 + v15 + 320);

  v37 = *(v0 + v15 + 336);

  v38 = v0 + *(sub_2440(&qword_1C9900, &qword_1763D0) + 44) + v16;
  v39 = sub_2440(&qword_1C9908, &qword_1763D8);
  sub_8B38(v39);
  v41 = *(v40 + 8);
  v41(v38, v39);
  v42 = sub_2440(&qword_1C9910, &qword_1763E0);
  v41(v38 + *(v42 + 48), v39);
  v41(v38 + *(v42 + 64), v39);

  return _swift_deallocObject(v0, v16 + v9, v14 | 7);
}

uint64_t sub_D97F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D985C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C98F0, &qword_1763C0);
  sub_8B38(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_D98C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhoneRingsSnippet();
  sub_888C(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2440(&qword_1C98F0, &qword_1763C0) - 8);
  v9 = v1 + ((v7 + *(v8 + 80) + 569) & ~*(v8 + 80));

  return sub_D8CAC(v1 + v5, (v1 + v7), v9, a1);
}

unint64_t sub_D99AC()
{
  result = qword_1C9930;
  if (!qword_1C9930)
  {
    sub_9790(&qword_1C98E8, &qword_1763B8);
    sub_98C8(&qword_1C9938, &qword_1C9940, &qword_1763F8);
    sub_98C8(&qword_1C9948, &qword_1C9950, &qword_176400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9930);
  }

  return result;
}

uint64_t sub_D9AAC()
{
  v0 = sub_16DC4C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  sub_D78FC(&v16 - v6);
  v8 = v1[13];
  v8(v5, enum case for DynamicTypeSize.accessibility1(_:), v0);
  v9 = sub_16DC3C();
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9)
  {
    goto LABEL_5;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility2(_:), v0);
  v11 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v11)
  {
    goto LABEL_5;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility3(_:), v0);
  v12 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v12 & 1) != 0 || (sub_D78FC(v7), v8(v5, enum case for DynamicTypeSize.accessibility4(_:), v0), v13 = sub_16DC3C(), v10(v5, v0), v10(v7, v0), (v13))
  {
LABEL_5:
    v14 = 1;
  }

  else
  {
    sub_D78FC(v7);
    v8(v5, enum case for DynamicTypeSize.accessibility5(_:), v0);
    v14 = sub_16DC3C();
    v10(v5, v0);
    v10(v7, v0);
  }

  return v14 & 1;
}

uint64_t sub_D9D8C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2440(&qword_1C9A58, &qword_1764F8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v40[-v12 - 8];
  memcpy(v41, a1, 0x239uLL);
  sub_4B010(v41, v43, &qword_1C9918, &qword_1763E8);
  LOBYTE(a1) = sub_16DE3C();
  sub_16DBFC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_4B010(a2, v13, &qword_1C98F0, &qword_1763C0);
  v22 = &v13[*(sub_2440(&qword_1C9A60, &qword_176500) + 36)];
  *v22 = a1;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(a1) = sub_16DE2C();
  sub_16DBFC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v13[*(sub_2440(&qword_1C9A68, &qword_176508) + 36)];
  *v31 = a1;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(a1) = sub_16DE1C();
  sub_16DBFC();
  v32 = &v13[*(v7 + 44)];
  *v32 = a1;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  memcpy(v40, v41, sizeof(v40));
  sub_4B010(v13, v11, &qword_1C9A58, &qword_1764F8);
  memcpy(v42, v40, 0x239uLL);
  memcpy(a3, v40, 0x239uLL);
  v37 = sub_2440(&qword_1C9A70, &qword_176510);
  sub_4B010(v11, a3 + *(v37 + 48), &qword_1C9A58, &qword_1764F8);
  sub_4B010(v42, v43, &qword_1C9918, &qword_1763E8);
  sub_8748(v13, &qword_1C9A58, &qword_1764F8);
  sub_8748(v11, &qword_1C9A58, &qword_1764F8);
  memcpy(v43, v40, 0x239uLL);
  return sub_8748(v43, &qword_1C9918, &qword_1763E8);
}

uint64_t sub_DA044@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2440(&qword_1C9A68, &qword_176508);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v32[-v12 - 8];
  memcpy(v33, a1, 0x239uLL);
  sub_4B010(v33, v35, &qword_1C9918, &qword_1763E8);
  LOBYTE(a1) = sub_16DE0C();
  sub_16DBFC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_4B010(a2, v13, &qword_1C98F0, &qword_1763C0);
  v22 = &v13[*(sub_2440(&qword_1C9A60, &qword_176500) + 36)];
  *v22 = a1;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(a1) = sub_16DE1C();
  sub_16DBFC();
  v23 = &v13[*(v7 + 44)];
  *v23 = a1;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  memcpy(v32, v33, sizeof(v32));
  sub_4B010(v13, v11, &qword_1C9A68, &qword_176508);
  memcpy(v34, v32, 0x239uLL);
  memcpy(a3, v32, 0x239uLL);
  v28 = sub_2440(&qword_1C9A78, &qword_176518);
  sub_4B010(v11, &a3[*(v28 + 48)], &qword_1C9A68, &qword_176508);
  v29 = &a3[*(v28 + 64)];
  *v29 = 0;
  v29[8] = 1;
  sub_4B010(v34, v35, &qword_1C9918, &qword_1763E8);
  sub_8748(v13, &qword_1C9A68, &qword_176508);
  sub_8748(v11, &qword_1C9A68, &qword_176508);
  memcpy(v35, v32, 0x239uLL);
  return sub_8748(v35, &qword_1C9918, &qword_1763E8);
}

uint64_t sub_DA2C8()
{
  v0 = sub_16DC4C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  sub_D78FC(&v18 - v6);
  v8 = v1[13];
  v8(v5, enum case for DynamicTypeSize.accessibility1(_:), v0);
  v9 = sub_16DC3C();
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9)
  {
    goto LABEL_7;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility2(_:), v0);
  v11 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v11)
  {
    goto LABEL_7;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility3(_:), v0);
  v12 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v12)
  {
    goto LABEL_7;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility4(_:), v0);
  v13 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v13)
  {
    goto LABEL_7;
  }

  sub_D78FC(v7);
  v8(v5, enum case for DynamicTypeSize.accessibility5(_:), v0);
  v14 = sub_16DC3C();
  v10(v5, v0);
  v10(v7, v0);
  if (v14 & 1) != 0 || (sub_D78FC(v7), v8(v5, enum case for DynamicTypeSize.xxLarge(_:), v0), v15 = sub_16DC3C(), v10(v5, v0), v10(v7, v0), (v15))
  {
LABEL_7:
    v16 = 1;
  }

  else
  {
    sub_D78FC(v7);
    v8(v5, enum case for DynamicTypeSize.xxxLarge(_:), v0);
    v16 = sub_16DC3C();
    v10(v5, v0);
    v10(v7, v0);
  }

  return v16 & 1;
}

uint64_t sub_DA670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v56 = a9;
  v57 = a8;
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v49 = a3;
  v55 = sub_2440(&qword_1C9A98, &qword_176530);
  v50 = *(v55 - 8);
  v11 = *(v50 + 64);
  v12 = __chkstk_darwin(v55);
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v49 - v14;
  v63 = a1;
  v64 = a2;
  sub_9854();

  v15 = sub_16DF0C();
  v17 = v16;
  v19 = v18;
  sub_16DE4C();
  v20 = sub_16DEFC();
  v22 = v21;
  v24 = v23;

  sub_DB238(v15, v17, v19 & 1);

  sub_16DE7C();
  v25 = sub_16DEDC();
  v27 = v26;
  v29 = v28;
  sub_DB238(v20, v22, v24 & 1);

  v63 = sub_16DFBC();
  v30 = sub_16DEEC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_DB238(v25, v27, v29 & 1);

  v63 = v30;
  v64 = v32;
  LOBYTE(v20) = v34 & 1;
  v65 = v34 & 1;
  *&v66[7] = v36;
  v37 = *v49;
  v38 = v58;
  sub_16DF3C();
  sub_DB238(v30, v32, v20);

  v39 = sub_16DCDC();
  LOBYTE(v63) = 0;
  sub_DAA60(v51, v52, v53, v54, v61);
  *&v60[7] = v61[0];
  *&v60[23] = v61[1];
  *&v60[39] = v61[2];
  *&v60[55] = v61[3];
  LOBYTE(v32) = v63;
  v40 = v50;
  v41 = *(v50 + 16);
  v42 = v59;
  v43 = v55;
  v41(v59, v38, v55);
  v44 = v56;
  v41(v56, v42, v43);
  v45 = *(sub_2440(&qword_1C9AA0, &qword_176538) + 48);
  v62[0] = v39;
  v62[1] = 0;
  LOBYTE(v62[2]) = v32;
  memcpy(&v62[2] + 1, v60, 0x47uLL);
  v46 = v57;
  v62[11] = v57;
  memcpy(&v44[v45], v62, 0x60uLL);

  sub_4B010(v62, &v63, &qword_1C9AA8, &qword_176540);
  v47 = *(v40 + 8);
  v47(v58, v43);
  v63 = v39;
  v64 = 0;
  v65 = v32;
  memcpy(v66, v60, sizeof(v66));
  v67 = v46;
  sub_8748(&v63, &qword_1C9AA8, &qword_176540);
  return (v47)(v59, v43);
}

uint64_t sub_DAA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v7 = sub_2440(&qword_1C9AB0, &qword_176548);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_16DEBC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v76 = a2;
  v70 = sub_9854();

  v16 = sub_16DF0C();
  v67 = v17;
  v19 = v18;
  v69 = enum case for Font.TextStyle.title2(_:);
  v20 = v12[13];
  v57 = v12 + 13;
  v68 = v20;
  v21 = v11;
  v58 = v11;
  v20(v15);
  v22 = enum case for Font.Design.rounded(_:);
  v62 = enum case for Font.Design.rounded(_:);
  v23 = sub_16DE5C();
  v55 = v23;
  v24 = *(v23 - 8);
  v61 = *(v24 + 104);
  v63 = v24 + 104;
  v61(v10, v22, v23);
  sub_214C(v10, 0, 1, v23);
  v56 = v15;
  sub_16DE9C();
  sub_8748(v10, &qword_1C9AB0, &qword_176548);
  v25 = v12[1];
  v59 = v12 + 1;
  v60 = v25;
  v25(v15, v21);
  LOBYTE(v23) = v19;
  v26 = v67;
  v27 = sub_16DEFC();
  v29 = v28;
  LOBYTE(v21) = v30;

  sub_DB238(v16, v26, v23 & 1);

  sub_16DE8C();
  v31 = sub_16DEDC();
  v66 = v32;
  v67 = v31;
  v65 = v33;
  v64 = v34;
  sub_DB238(v27, v29, v21 & 1);

  v75 = v71;
  v76 = v72;

  v35 = sub_16DF0C();
  v37 = v36;
  LOBYTE(v21) = v38;
  v39 = v56;
  v40 = v58;
  v68(v56, v69, v58);
  v41 = v55;
  v61(v10, v62, v55);
  sub_214C(v10, 0, 1, v41);
  sub_16DE9C();
  sub_8748(v10, &qword_1C9AB0, &qword_176548);
  v60(v39, v40);
  sub_16DE6C();
  sub_16DEAC();

  sub_16DECC();

  v42 = sub_16DEFC();
  v44 = v43;
  LOBYTE(v41) = v45;
  v47 = v46;

  sub_DB238(v35, v37, v21 & 1);

  v48 = v64 & 1;
  v74 = v64 & 1;
  LOBYTE(v75) = v64 & 1;
  LOBYTE(v39) = v41 & 1;
  v77 = v41 & 1;
  v49 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v65;
  *v73 = v67;
  v49[1] = v52;
  *(v49 + 16) = v48;
  v49[3] = v50;
  v49[4] = v42;
  v49[5] = v44;
  *(v49 + 48) = v39;
  v49[7] = v47;
  sub_DB248(v51, v52, v48);

  sub_DB248(v42, v44, v39);

  sub_DB238(v42, v44, v39);

  sub_DB238(v51, v52, v74);
}

uint64_t sub_DAF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C9958, qword_176460);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 104);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_DB050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C9958, qword_176460);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 104) = a2;
  }

  return result;
}

void sub_DB108()
{
  sub_DB17C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_DB17C()
{
  if (!qword_1C99C8)
  {
    sub_16DC4C();
    v0 = sub_16DC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C99C8);
    }
  }
}

uint64_t sub_DB1D4()
{
  sub_9790(&qword_1C98E8, &qword_1763B8);
  sub_D99AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DB238(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_DB248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_DB27C(char a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBool:a1 & 1];
}

uint64_t sub_DB30C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = sub_2440(&qword_1C67A8, &qword_171CC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  a3(0);
  sub_104478(a4, 255, a5);
  sub_1069FC();
  return sub_16C21C();
}

uint64_t sub_DB3B4()
{
  v0 = sub_2440(&qword_1C9D20, &qword_176760);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
  sub_104478(&qword_1C9D80, 255, type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy);
  return sub_16C21C();
}

uint64_t sub_DB460()
{
  sub_16E2AC();
  sub_1029C4(*(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8)));
  sub_8427C();

  return sub_16E30C();
}

__n128 sub_DB4B4(__int128 *a1)
{
  v9 = a1[1];
  v10 = *a1;
  v8 = a1[2];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  sub_102978();
  v4 = *(*v1 + 16);
  sub_1029F0(v4);
  v5 = *v1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v10;
  *(v6 + 48) = v9;
  result = v8;
  *(v6 + 64) = v8;
  *(v6 + 80) = v2;
  *(v6 + 88) = v3;
  *v1 = v5;
  return result;
}

uint64_t sub_DB530@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_3E204();
  sub_C1F30(a1);
  type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  v7 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v7;
  type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  v8 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v8;
  type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

void *sub_DB600(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    while (1)
    {
      v15 = _swiftEmptyArrayStorage;
      v6 = &v15;
      sub_16E4FC();
      if (v5 < 0)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = sub_16E48C();
        }

        else
        {
          if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_14;
          }

          v9 = *(a1 + 8 * i + 32);
        }

        v6 = v9;
        v13 = v9;
        sub_FF448(&v13, a2, &v14);
        if (v3)
        {
          goto LABEL_18;
        }

        v3 = 0;

        sub_16E4DC();
        v10 = v15[2];
        sub_16E50C();
        sub_16E51C();
        sub_16E4EC();
        if (v8 == v5)
        {

          return v15;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v5 = sub_16E54C();
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:

    __break(1u);
  }

  else
  {
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_DB798()
{
  type metadata accessor for SpecificMedLoggingFlow();
  sub_104478(&qword_1C67C8, v0, type metadata accessor for SpecificMedLoggingFlow);
  sub_8427C();
  return sub_16C33C();
}

uint64_t sub_DB820()
{
  sub_8A88();
  v1[3498] = v0;
  v1[3497] = v2;
  v3 = type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters(0);
  v1[3499] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[3500] = sub_8BC0();
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[3501] = sub_8BC0();
  v9 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[3502] = sub_8C38();
  v1[3503] = swift_task_alloc();
  v1[3504] = swift_task_alloc();
  v1[3505] = swift_task_alloc();
  v1[3506] = swift_task_alloc();
  v1[3507] = swift_task_alloc();
  v1[3508] = swift_task_alloc();
  v1[3509] = swift_task_alloc();
  v12 = sub_16BF5C();
  v1[3510] = v12;
  sub_888C(v12);
  v1[3511] = v13;
  v15 = *(v14 + 64);
  v1[3512] = sub_8C38();
  v1[3513] = swift_task_alloc();
  v1[3514] = swift_task_alloc();
  v1[3515] = swift_task_alloc();
  v1[3516] = swift_task_alloc();
  v1[3517] = swift_task_alloc();
  v16 = type metadata accessor for SpecificMedCompletedLogModel();
  v1[3518] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v1[3519] = sub_8C38();
  v1[3520] = swift_task_alloc();
  v1[3521] = swift_task_alloc();
  v1[3522] = swift_task_alloc();
  v1[3523] = swift_task_alloc();
  v1[3524] = swift_task_alloc();
  v1[3525] = swift_task_alloc();
  v1[3526] = swift_task_alloc();
  v19 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v19);
  v21 = *(v20 + 64);
  v1[3527] = sub_8C38();
  v1[3528] = swift_task_alloc();
  v1[3529] = swift_task_alloc();
  v1[3530] = swift_task_alloc();
  v1[3531] = swift_task_alloc();
  v1[3532] = swift_task_alloc();
  v1[3533] = swift_task_alloc();
  v1[3534] = swift_task_alloc();
  v1[3535] = swift_task_alloc();
  v1[3536] = swift_task_alloc();
  v1[3537] = swift_task_alloc();
  v1[3538] = swift_task_alloc();
  v1[3539] = swift_task_alloc();
  v1[3540] = swift_task_alloc();
  v1[3541] = swift_task_alloc();
  v1[3542] = swift_task_alloc();
  v1[3543] = swift_task_alloc();
  v22 = sub_16C46C();
  sub_4348(v22);
  v24 = *(v23 + 64);
  v1[3544] = sub_8BC0();
  v25 = sub_16C7BC();
  v1[3545] = v25;
  sub_888C(v25);
  v1[3546] = v26;
  v28 = *(v27 + 64);
  v1[3547] = sub_8C38();
  v1[3548] = swift_task_alloc();
  v1[3549] = swift_task_alloc();
  v1[3550] = swift_task_alloc();
  v1[3551] = swift_task_alloc();
  v1[3552] = swift_task_alloc();
  v1[3553] = swift_task_alloc();
  v1[3554] = swift_task_alloc();
  v1[3555] = swift_task_alloc();
  v1[3556] = swift_task_alloc();
  v1[3557] = swift_task_alloc();
  v1[3558] = swift_task_alloc();
  v29 = type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters();
  v1[3559] = v29;
  sub_4348(v29);
  v31 = *(v30 + 64);
  v1[3560] = sub_8C38();
  v1[3561] = swift_task_alloc();
  v1[3562] = swift_task_alloc();
  v32 = sub_2440(&qword_1C6990, &qword_1725A0);
  v1[3563] = v32;
  sub_4348(v32);
  v34 = *(v33 + 64);
  v1[3564] = sub_8C38();
  v1[3565] = swift_task_alloc();
  v35 = sub_16D5CC();
  v1[3566] = v35;
  sub_888C(v35);
  v1[3567] = v36;
  v38 = *(v37 + 64);
  v1[3568] = sub_8C38();
  v1[3569] = swift_task_alloc();
  v39 = type metadata accessor for SnippetHeaderModel();
  v1[3570] = v39;
  sub_4348(v39);
  v41 = *(v40 + 64);
  v1[3571] = sub_8BC0();
  v42 = sub_2440(&qword_1C89E8, &unk_1742E0);
  sub_4348(v42);
  v44 = *(v43 + 64);
  v1[3572] = sub_8C38();
  v1[3573] = swift_task_alloc();
  v45 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v45);
  v47 = *(v46 + 64);
  v1[3574] = sub_8BC0();
  v48 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v48);
  v50 = *(v49 + 64);
  v1[3575] = sub_8C38();
  v1[3576] = swift_task_alloc();
  v1[3577] = swift_task_alloc();
  v1[3578] = swift_task_alloc();
  v1[3579] = swift_task_alloc();
  v1[3580] = swift_task_alloc();
  v1[3581] = swift_task_alloc();
  v1[3582] = swift_task_alloc();
  v1[3583] = swift_task_alloc();
  v1[3584] = swift_task_alloc();
  v1[3585] = swift_task_alloc();
  v1[3586] = swift_task_alloc();
  v1[3587] = swift_task_alloc();
  v1[3588] = swift_task_alloc();
  v1[3589] = swift_task_alloc();
  v1[3590] = swift_task_alloc();
  v1[3591] = swift_task_alloc();
  v1[3592] = swift_task_alloc();
  v1[3593] = swift_task_alloc();
  v1[3594] = swift_task_alloc();
  v1[3595] = swift_task_alloc();
  v1[3596] = swift_task_alloc();
  v1[3597] = swift_task_alloc();
  v1[3598] = swift_task_alloc();
  v1[3599] = swift_task_alloc();
  v1[3600] = swift_task_alloc();
  v1[3601] = swift_task_alloc();
  v1[3602] = swift_task_alloc();
  v51 = sub_2440(&qword_1C69C0, &unk_174290);
  sub_4348(v51);
  v53 = *(v52 + 64);
  v1[3603] = sub_8C38();
  v1[3604] = swift_task_alloc();
  v1[3605] = swift_task_alloc();
  v1[3606] = swift_task_alloc();
  v1[3607] = swift_task_alloc();
  v54 = sub_16DBEC();
  v1[3608] = v54;
  sub_888C(v54);
  v1[3609] = v55;
  v57 = *(v56 + 64);
  v1[3610] = sub_8C38();
  v1[3611] = swift_task_alloc();
  v1[3612] = swift_task_alloc();
  v1[3613] = swift_task_alloc();
  v1[3614] = swift_task_alloc();
  v1[3615] = swift_task_alloc();
  v1[3616] = swift_task_alloc();
  v1[3617] = swift_task_alloc();
  v1[3618] = swift_task_alloc();
  v1[3619] = swift_task_alloc();
  v1[3620] = swift_task_alloc();
  v1[3621] = swift_task_alloc();
  v1[3622] = swift_task_alloc();
  v1[3623] = swift_task_alloc();
  v1[3624] = swift_task_alloc();
  v1[3625] = swift_task_alloc();
  v1[3626] = swift_task_alloc();
  v1[3627] = swift_task_alloc();
  v1[3628] = swift_task_alloc();
  v1[3629] = swift_task_alloc();
  v1[3630] = swift_task_alloc();
  v1[3631] = swift_task_alloc();
  v1[3632] = swift_task_alloc();
  v1[3633] = swift_task_alloc();
  v1[3634] = swift_task_alloc();
  v1[3635] = swift_task_alloc();
  v1[3636] = swift_task_alloc();
  v1[3637] = swift_task_alloc();
  v1[3638] = swift_task_alloc();
  v1[3639] = swift_task_alloc();
  v1[3640] = swift_task_alloc();
  v1[3641] = swift_task_alloc();
  v1[3642] = swift_task_alloc();
  v1[3643] = swift_task_alloc();
  v1[3644] = swift_task_alloc();
  v1[3645] = swift_task_alloc();
  v1[3646] = swift_task_alloc();
  v1[3647] = swift_task_alloc();
  v1[3648] = swift_task_alloc();
  v1[3649] = swift_task_alloc();
  v1[3650] = swift_task_alloc();
  v1[3651] = swift_task_alloc();
  v1[3652] = swift_task_alloc();
  v1[3653] = swift_task_alloc();
  v1[3654] = swift_task_alloc();
  v1[3655] = swift_task_alloc();
  v1[3656] = swift_task_alloc();
  v1[3657] = swift_task_alloc();
  v1[3658] = swift_task_alloc();
  v1[3659] = swift_task_alloc();
  v1[3660] = swift_task_alloc();
  v1[3661] = swift_task_alloc();
  v1[3662] = swift_task_alloc();
  v1[3663] = swift_task_alloc();
  v1[3664] = swift_task_alloc();
  v1[3665] = swift_task_alloc();
  v1[3666] = swift_task_alloc();
  v1[3667] = swift_task_alloc();
  v1[3668] = swift_task_alloc();
  v1[3669] = swift_task_alloc();
  v1[3670] = swift_task_alloc();
  v1[3671] = swift_task_alloc();
  v1[3672] = swift_task_alloc();
  v1[3673] = swift_task_alloc();
  v1[3674] = swift_task_alloc();
  v1[3675] = swift_task_alloc();
  v1[3676] = swift_task_alloc();
  v1[3677] = swift_task_alloc();
  v1[3678] = swift_task_alloc();
  v1[3679] = swift_task_alloc();
  v1[3680] = swift_task_alloc();
  v1[3681] = swift_task_alloc();
  v1[3682] = swift_task_alloc();
  v1[3683] = swift_task_alloc();
  v1[3684] = swift_task_alloc();
  v1[3685] = swift_task_alloc();
  v1[3686] = swift_task_alloc();
  v1[3687] = swift_task_alloc();
  v58 = sub_17960();

  return _swift_task_switch(v58, v59, v60);
}

uint64_t sub_DC334()
{
  v89 = v0;
  v3 = *(v0 + 29496);
  v4 = *(v0 + 28872);
  v5 = *(v0 + 28864);
  v6 = sub_16DBBC();
  *(v0 + 29504) = v6;
  sub_8B48();
  *(v0 + 29512) = *(v4 + 16);
  *(v0 + 29520) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_38B40();
  v8(v7);
  v9 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C();
    sub_1070D8();
    v86 = 0;
    v87 = 0;
    sub_106114(v10);
    v85 = v11;
    sub_106FFC();
    if (v1)
    {
      while (1)
      {
        v88 = *(v2 + 27608);
        sub_3A5A4(&v88, &v85, &v86, &v87);
        sub_1065A8();
      }
    }

    v12 = *(v0 + 29496);
    v13 = *(v0 + 28872);
    v14 = *(v0 + 28864);

    sub_105BB0(&def_259DC, v15, v16, "Specific med request: checking for defined value in schedule.");
    sub_3A5E0();

    v17 = *(v13 + 8);
    v18 = sub_C98B4();
    v19(v18);
  }

  else
  {
    v20 = *(v0 + 29496);
    v21 = *(v0 + 28872);
    v22 = *(v0 + 28864);

    v23 = *(v21 + 8);
    v24 = sub_C9F8();
    v25(v24);
    v6 = 0;
  }

  *(v0 + 29528) = v6;
  v26 = *(v0 + 28856);
  v27 = *(v0 + 28848);
  v28 = *(v0 + 27984);
  v29 = *(v28 + 16);
  sub_C9294(v28 + 24, v0 + 22336);
  v30 = *(v0 + 22368);
  sub_2D20((v0 + 22336), *(v0 + 22360));
  v31 = *(v30 + 8);

  v32 = sub_4B4EC();
  v31(v32);
  getMedScheduleWithDefinedValues(from:deviceState:)();

  sub_2D64((v0 + 20656));
  sub_2D64((v0 + 22336));
  v33 = sub_C9F8();
  sub_86B0(v33, v34, v35, v36);
  v37 = sub_2440(&qword_1C6988, &unk_176730);
  *(v0 + 29536) = v37;
  v38 = sub_C98CC();
  v40 = sub_369C(v38, v39, v37);
  v41 = *(v0 + 28848);
  if (v40 == 1)
  {
    sub_8748(v41, &qword_1C69C0, &unk_174290);
    v42 = 0;
  }

  else
  {
    v43 = (v41 + *(v37 + 48));
    v42 = *v43;
    v44 = v43[1];
    sub_8748(v41, &qword_1C89E8, &unk_1742E0);
    if (v44)
    {
      v45 = *(v0 + 28816);

      sub_38B40();
      sub_16E23C();
      v46 = 0;
      v47 = v44;
LABEL_18:

      v81 = 0;
      goto LABEL_20;
    }
  }

  sub_86B0(*(v0 + 28856), *(v0 + 28840), &qword_1C69C0, &unk_174290);
  v48 = sub_C98CC();
  v50 = sub_369C(v48, v49, v37);
  v51 = *(v0 + 28840);
  if (v50 == 1)
  {
    v52 = &qword_1C69C0;
    v53 = &unk_174290;
    v54 = *(v0 + 28840);
  }

  else
  {
    v55 = *(v0 + 28584);
    v56 = *(v0 + 28504);
    v57 = *(v51 + *(v37 + 48) + 8);

    v58 = sub_C9E0();
    sub_86FC(v58, v59, v60, v61);
    sub_8B20(v55, 1, v56);
    if (!v62)
    {
      v69 = *(v0 + 28592);
      v51 = *(v0 + 28584);
      v70 = *(v0 + 28088);
      v71 = *(v0 + 28080);
      v72 = *(*(v0 + 28504) + 48);
      v73 = *(v70 + 32);
      v74 = sub_C9F8();
      v75(v74);
      sub_388E4();
      sub_214C(v76, v77, v78, v71);
      (*(v70 + 8))(v51 + v72, v71);
      goto LABEL_16;
    }

    v54 = *(v0 + 28584);
    v52 = &qword_1C89E8;
    v53 = &unk_1742E0;
  }

  sub_8748(v54, v52, v53);
  v63 = *(v0 + 28592);
  v64 = *(v0 + 28080);
  sub_8AB4();
  sub_214C(v65, v66, v67, v68);
LABEL_16:
  v79 = *(v0 + 28592);
  sub_9BFAC(v79);
  sub_1070A8();
  sub_8748(v79, &qword_1C57E0, &unk_171C60);
  if (v51)
  {
    v80 = *(v0 + 28816);
    sub_C9F8();
    sub_16E23C();
    v47 = 0;
    v46 = 1;
    goto LABEL_18;
  }

  v47 = 0;
  v81 = 1;
  v46 = 1;
LABEL_20:
  *(v0 + 29552) = v42;
  *(v0 + 29544) = v47;
  *(v0 + 17793) = v46;
  sub_1071A0(*(v0 + 28816), v81);
  v82 = swift_task_alloc();
  *(v0 + 29560) = v82;
  *v82 = v0;
  v82[1] = sub_DC7E8;
  v83 = sub_C98D8(0x646567676F6CLL);

  return sub_66A84(v83, 0xE600000000000000);
}

uint64_t sub_DC7E8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 29560);
  v6 = *v0;
  *v3 = v6;
  v2[3696] = v7;
  v2[3697] = v8;

  v9 = swift_task_alloc();
  v2[3698] = v9;
  *v9 = v6;
  v9[1] = sub_DC91C;
  v10 = sub_C98D8(0x64657070696B73);

  return sub_66A84(v10, 0xE700000000000000);
}

uint64_t sub_DC91C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 29584);
  v6 = *v0;
  *v3 = v6;
  v2[3699] = v7;
  v2[3700] = v8;

  v9 = swift_task_alloc();
  v2[3701] = v9;
  *v9 = v6;
  v9[1] = sub_DCA4C;
  v10 = sub_C98D8(0x6E656B6174);

  return sub_66A84(v10, 0xE500000000000000);
}

uint64_t sub_DCA4C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 29608);
  *v2 = *v0;
  *(v1 + 29616) = v5;
  *(v1 + 29624) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_DCB38()
{
  sub_8A88();
  sub_208C0(88);
  *(v0 + 29632) = v1;
  v2 = swift_task_alloc();
  *(v0 + 29640) = v2;
  *v2 = v0;
  v2[1] = sub_DCBD8;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_DCBD8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[3466] = v0;
  v1[3467] = v3;
  v1[3468] = v4;
  sub_38800();
  v6 = *(v5 + 29640);
  v8 = *(v7 + 29632);
  v9 = *v0;
  sub_C990();
  *v10 = v9;
  *(v12 + 29648) = v11;

  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_DCCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = (v12 + 30648);
  v14 = *(v12 + 29648);
  v15 = *(v12 + 28568);
  v16 = *(v12 + 28552);
  v17 = *(v12 + 27984);
  if (v14)
  {
    v18 = *(v12 + 27736);
  }

  else
  {
    v18 = 0x697461636964654DLL;
  }

  if (v14)
  {
    v19 = *(v12 + 29648);
  }

  else
  {
    v19 = 0xEB00000000736E6FLL;
  }

  v495 = *(v12 + 29648);

  sub_16E23C();
  sub_25948(0x58u);
  sub_106508();
  sub_208C0(88);
  v20 = sub_C9F8();
  SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)(v20, v21, v19, v22, v23, v24);
  v502 = (v12 + 20104);
  memcpy((v12 + 20104), (v17 + 224), 0x41uLL);
  v25 = *(v12 + 20104);
  v26 = *(v12 + 20112);
  v27 = *(v12 + 20120);
  v28 = *(v12 + 20128);
  *(v12 + 29656) = v28;
  v29 = *(v12 + 20136);
  *(v12 + 29664) = v29;
  v30 = *(v12 + 20144);
  v31 = *(v12 + 20145) | ((*(v12 + 20149) | (*(v12 + 20151) << 16)) << 32);
  *v13 = v30;
  v32 = *(v12 + 20152);
  *(v12 + 29672) = v32;
  v33 = *(v12 + 20160);
  *(v12 + 29680) = v33;
  v34 = *(v12 + 20168);
  switch(v34 >> 6)
  {
    case 1u:
      v78 = v26;
      v79 = *(v12 + 29520);
      v80 = *(v12 + 29512);
      v81 = *(v12 + 29504);
      v82 = *(v12 + 29056);
      v83 = *(v12 + 28864);
      v84 = v27;
      v85 = v25;
      sub_106204();
      v86 = sub_C9C8();
      v80(v86);
      sub_106F60();
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      *(v87 + 24) = v78;
      *(v87 + 32) = v84;
      *(v87 + 40) = v28;
      sub_106F60();
      v88 = swift_allocObject();
      *(v88 + 16) = v85;
      *(v88 + 24) = v78;
      *(v88 + 32) = v84;
      *(v88 + 40) = v28;
      sub_106F60();
      v89 = swift_allocObject();
      v485 = v85;
      *(v89 + 16) = v85;
      *(v89 + 24) = v78;
      *(v89 + 32) = v84;
      v477 = v28;
      *(v89 + 40) = v28;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_10374C(v502, v12 + 17800);
      v499 = v78;

      v475 = v84;

      v484 = sub_16DBDC();
      v493 = sub_16E36C();
      sub_106420();
      v503 = swift_allocObject();
      *(v503 + 16) = 32;
      sub_106420();
      v489 = swift_allocObject();
      *(v489 + 16) = 8;
      sub_106264();
      v90 = swift_allocObject();
      *(v90 + 16) = sub_103840;
      *(v90 + 24) = v87;
      sub_106264();
      v91 = swift_allocObject();
      *(v91 + 16) = sub_1038F4;
      *(v91 + 24) = v90;
      sub_106420();
      v92 = swift_allocObject();
      *(v92 + 16) = 32;
      sub_106420();
      v93 = swift_allocObject();
      *(v93 + 16) = 8;
      sub_106264();
      v94 = swift_allocObject();
      *(v94 + 16) = sub_10386C;
      *(v94 + 24) = v88;
      sub_106264();
      v95 = swift_allocObject();
      *(v95 + 16) = sub_104B28;
      *(v95 + 24) = v94;
      sub_106420();
      v96 = swift_allocObject();
      *(v96 + 16) = 32;
      sub_106420();
      v97 = swift_allocObject();
      *(v97 + 16) = 8;
      sub_106264();
      v98 = swift_allocObject();
      *(v98 + 16) = sub_1038B8;
      *(v98 + 24) = v89;
      sub_106264();
      v99 = swift_allocObject();
      *(v99 + 16) = sub_104B28;
      *(v99 + 24) = v98;
      *(v12 + 30216) = sub_2440(&qword_1C9D10, &qword_176750);
      v100 = swift_allocObject();
      sub_61090(v100, 9);
      *v101 = sub_1038EC;
      v101[1] = v503;
      v101[2] = sub_104B38;
      v101[3] = v489;
      v101[4] = sub_1038FC;
      v101[5] = v91;
      v101[6] = sub_104B38;
      v101[7] = v92;
      v101[8] = sub_104B38;
      v101[9] = v93;
      v101[10] = sub_1049F0;
      v101[11] = v95;
      v101[12] = sub_104B38;
      v101[13] = v96;
      v101[14] = sub_104B38;
      v101[15] = v97;
      v101[16] = sub_1049F0;
      v101[17] = v99;

      if (os_log_type_enabled(v484, v493))
      {
        v102 = *(v12 + 29528);
        v103 = sub_3A58C();
        swift_slowAlloc();
        sub_106ABC(770);
        v104 = sub_105734();
        sub_3A5A4(v104, v105, v106, v107);
        if (v102)
        {

          goto LABEL_104;
        }

        v189 = sub_105734();
        sub_3A5A4(v189, v190, v191, v192);

        v369 = sub_105734();
        sub_3A5A4(v369, v370, v371, v372);

        v382 = sub_105734();
        sub_3A5A4(v382, v383, v384, v385);

        v394 = sub_105734();
        sub_3A5A4(v394, v395, v396, v397);

        v407 = sub_105734();
        sub_3A5A4(v407, v408, v409, v410);

        v415 = sub_105734();
        sub_3A5A4(v415, v416, v417, v418);

        v423 = sub_105734();
        sub_3A5A4(v423, v424, v425, v426);

        v431 = sub_105734();
        sub_3A5A4(v431, v432, v433, v434);
        v435 = *(v12 + 29056);
        v436 = *(v12 + 28872);
        v437 = *(v12 + 28864);

        _os_log_impl(&def_259DC, v484, v493, "Entering .scheduleSelected case with value (scheduleID: %s), potentially medicationIDs: (%s), confirmationStatus: (%s)", v103, 0x20u);
        swift_arrayDestroy();
        sub_8A2C();
        sub_3A5E0();

        v155 = *(v436 + 8);
        v155(v435, v437);
        v156 = 0;
      }

      else
      {
        v153 = *(v12 + 29056);
        v154 = *(v12 + 28872);
        v494 = *(v12 + 28864);

        v155 = *(v154 + 8);
        v155(v153, v494);
        v156 = *(v12 + 29528);
      }

      *(v12 + 30232) = v155;
      *(v12 + 30224) = v156;
      v157 = *(v12 + 27984);
      sub_16DA3C();
      v158 = sub_16DA2C();
      *(v12 + 30240) = v158;
      sub_37750();
      v159 = *(v157 + 16);

      v160 = getMedStatus(from:)();

      v161 = sub_DB27C(v160 & 1);
      sub_106D40(v161, "setMedStatus:");

      sub_10348C(v485, v499, v158);
      isa = v475;
      if (v475)
      {
        isa = sub_16E2BC().super.isa;
        v163 = isa;
      }

      else
      {
        v163 = 0;
      }

      sub_106D40(isa, "setMedicationIDs:");

      switch(v477)
      {
        case 3:
          v194 = sub_16E3BC(1).super.super.isa;
          sub_106D40(v194, "setConfirmedAsScheduled:");

          v195 = sub_16E3BC(0).super.super.isa;
          sub_106D40(v195, "setConfirmedAsNeeded:");

          v166 = 0;
          goto LABEL_60;
        case 5:
          v193 = 1;
          break;
        case 4:
          v164 = sub_16E3BC(1).super.super.isa;
          sub_106D40(v164, "setConfirmedAsScheduled:");

          v165 = sub_16E3BC(0).super.super.isa;
          sub_106D40(v165, "setConfirmedAsNeeded:");

          v166 = 1;
LABEL_60:
          v196 = sub_DB27C(v166);
          v197 = &selRef_setMedStatus_;
          goto LABEL_63;
        default:
          v193 = 0;
          break;
      }

      v198 = sub_16E3BC(v193).super.super.isa;
      sub_106D40(v198, "setConfirmedAsScheduled:");

      v196 = sub_16E3BC(0).super.super.isa;
      v197 = &selRef_setConfirmedAsNeeded_;
LABEL_63:
      v199 = *(v12 + 27984);
      [v158 *v197];

      *(v12 + 30248) = *(v199 + 352);
      *(v12 + 16) = v12;
      *(v12 + 56) = v12 + 27800;
      *(v12 + 24) = sub_F2344;
      v200 = swift_continuation_init();
      *(v12 + 20648) = sub_2440(&qword_1C9D18, &qword_176758);
      *(v12 + 20624) = v200;
      *(v12 + 20592) = _NSConcreteStackBlock;
      *(v12 + 20600) = 1107296256;
      sub_10660C();
      *(v12 + 20608) = v201;
      *(v12 + 20616) = &unk_1BBAC8;
      [swift_unknownObjectRetain() handleLogSpecificMedications:v158 completion:v12 + 20592];
      goto LABEL_99;
    case 2u:
      goto LABEL_28;
    case 3u:
      v70 = v30 | (v31 << 8);
      if (v27 | v26 | v25 | v28 | v29 | v32 | v33 | v70 || v34 != 192)
      {
        v108 = v34 == 192 && v25 == 7;
        if (!v108 || v27 | v26 | v28 | v29 | v32 | v33 | v70)
        {
LABEL_28:
          v133 = *(v12 + 29624);
          v134 = *(v12 + 29600);
          v135 = *(v12 + 29576);
          v136 = *(v12 + 29544);
          v500 = *(v12 + 28856);
          sub_106360();
          v137 = *(v12 + 27984);
          v138 = *(v12 + 27976);
          sub_10374C(v502, v12 + v139);

          sub_376FC(v502);
          sub_8284(v137 + 64, v12 + 1888);
          sub_6361C((v12 + 1888), (v12 + 1728));
          sub_82E0();
          sub_16C4EC();
          sub_8334(v12 + 1728);
          sub_105424();
          sub_103BA0(v18, v140);
          sub_8748(v16, &qword_1C5800, &unk_16F510);
          sub_8748(v500, &qword_1C69C0, &unk_174290);
          sub_104F9C();
          sub_1056B8();

          sub_105BE0();
          sub_8CC0();

          __asm { BRAA            X1, X16 }
        }

        v109 = *(v12 + 29624);
        v110 = *(v12 + 29600);
        v111 = *(v12 + 29576);
        v112 = *(v12 + 29544);
        v113 = *(v12 + 29520);
        v114 = *(v12 + 29512);
        v115 = *(v12 + 29504);
        v116 = *(v12 + 28896);
        v117 = *(v12 + 28864);

        sub_106F48();

        sub_106CBC();

        sub_1069B4();

        sub_106204();
        v118 = sub_105C00();
        v114(v118);
        v119 = sub_16DBDC();
        sub_16E36C();
        sub_106A08();
        if (sub_10623C())
        {
          v120 = sub_3A58C();
          sub_105A28(v120);
          v121 = *(v12 + 29528);
          if (*(v117 + 16))
          {
            while (1)
            {
              v506 = *(v117 + 32);
              v122 = sub_105734();
              sub_3A5A4(v122, v123, v124, v125);
              sub_1065A8();
            }
          }

          v126 = *(v12 + 28896);
          v127 = *(v12 + 28872);
          v128 = *(v12 + 28864);

          sub_105BB0(&def_259DC, v129, v130, "Received .rejectedConfirmation code, creating output.");
          sub_3A5E0();

          v131 = *(v127 + 8);
          v132 = sub_1064C0();
          v131(v132);
        }

        else
        {
          v227 = *(v12 + 28896);
          v228 = *(v12 + 28872);
          v229 = *(v12 + 28864);

          v131 = *(v228 + 8);
          v230 = sub_C9F8();
          v131(v230);
        }

        *(v12 + 30584) = v131;
        v231 = *(v12 + 28600);
        v232 = *(v12 + 28528);
        sub_1069E4();
        *(v12 + 30592) = v131;
        sub_8AB4();
        sub_214C(v233, v234, v235, v236);

        v237 = swift_task_alloc();
        *(v12 + 30600) = v237;
        *v237 = v12;
        v237[1] = sub_FD4A0;
        v238 = *(v12 + 28600);
        _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
        sub_8CC0();

        return sub_166794();
      }

      v71 = *(v12 + 27984);
      sub_16DA3C();
      v72 = sub_16DA2C();
      *(v12 + 29688) = v72;
      sub_37750();
      v73 = *(v71 + 16);

      v74 = getMedStatus(from:)();

      v75 = sub_DB27C(v74 & 1);
      sub_106DC4(v75, "setMedStatus:");

      v76 = *(v71 + 16);

      getUSOMedNames(from:)();
      sub_1068E8();

      if (v74)
      {
        sub_16E2BC();
        sub_456D0();
      }

      else
      {
        v76 = 0;
      }

      v173 = *(v12 + 29536);
      v174 = *(v12 + 28856);
      v175 = *(v12 + 28832);
      sub_106DC4(v77, "setMedicationIDs:");

      sub_86B0(v174, v175, &qword_1C69C0, &unk_174290);
      sub_8B20(v175, 1, v173);
      if (v108)
      {
        v176 = *(v12 + 28576);
        v177 = *(v12 + 28504);
        sub_8748(*(v12 + 28832), &qword_1C69C0, &unk_174290);
        sub_8AB4();
        sub_214C(v178, v179, v180, v177);
      }

      else
      {
        v181 = *(v12 + 28576);
        v182 = *(v12 + 28504);
        v183 = *(*(v12 + 28832) + *(*(v12 + 29536) + 48) + 8);

        v184 = sub_C9C8();
        sub_86FC(v184, v185, v186, v187);
        sub_8B20(v181, 1, v182);
        if (!v188)
        {
          v240 = *(v12 + 28520);
          v241 = *(v12 + 28512);
          v242 = *(v12 + 28504);
          v243 = *(v12 + 28088);
          v244 = *(v12 + 28080);
          sub_86FC(*(v12 + 28576), v240, &qword_1C6990, &qword_1725A0);
          sub_86B0(v240, v241, &qword_1C6990, &qword_1725A0);
          v245 = *(v242 + 48);
          v246 = sub_16BEEC().super.isa;
          v247 = *(v243 + 8);
          v247(v241 + v245, v244);
          v248 = (v247)(v241, v244);
          sub_106DC4(v248, "setStartTime:");

          sub_86B0(v240, v241, &qword_1C6990, &qword_1725A0);
          v249 = *(v242 + 48);
          v250 = sub_16BEEC().super.isa;
          v247(v241 + v249, v244);
          v251 = (v247)(v241, v244);
          sub_106DC4(v251, "setEndTime:");

          v252 = v240;
          v253 = &qword_1C6990;
          v254 = &qword_1725A0;
          goto LABEL_73;
        }
      }

      v252 = *(v12 + 28576);
      v253 = &qword_1C89E8;
      v254 = &unk_1742E0;
LABEL_73:
      sub_8748(v252, v253, v254);
      v255 = *(v12 + 29536);
      v256 = *(v12 + 28824);
      sub_86B0(*(v12 + 28856), v256, &qword_1C69C0, &unk_174290);
      sub_8B20(v256, 1, v255);
      if (v108)
      {
        sub_8748(*(v12 + 28824), &qword_1C69C0, &unk_174290);
        v260 = 0;
      }

      else
      {
        v257 = *(v12 + 29536);
        v258 = *(v12 + 28824);
        v259 = *(v258 + *(v257 + 48) + 8);

        v260 = *(v258 + *(v257 + 64));
        sub_8748(v258, &qword_1C89E8, &unk_1742E0);
      }

      v261 = *(v12 + 29520);
      v262 = *(v12 + 29512);
      v263 = *(v12 + 29504);
      v264 = *(v12 + 29488);
      v265 = *(v12 + 28864);
      v266 = sub_DB27C(v260);
      sub_106DC4(v266, "setHasMeridiem:");

      sub_106204();
      v267 = sub_8427C();
      (v262)(v267);
      v268 = sub_16DBDC();
      sub_16E36C();
      v269 = sub_106A70();
      v501 = v72;
      if (os_log_type_enabled(v268, v265))
      {
        v270 = sub_3A58C();
        sub_105A28(v270);
        v271 = *(v269 + 16);
        v272 = *(v12 + 29528);
        for (i = 32; v271; --v271)
        {
          v507 = *(v269 + i);
          v274 = sub_105734();
          sub_3A5A4(v274, v275, v276, v277);
          i += 16;
        }

        v278 = *(v12 + 29488);
        v279 = *(v12 + 28872);
        v280 = *(v12 + 28864);

        sub_1063E8(&def_259DC, v281, v265, "Specific med request: checking for dosage and dosageUnit in task");
        sub_3A5E0();

        v283 = *(v279 + 8);
        v262 = v279 + 8;
        v282 = v283;
        v284 = sub_38E50();
        v283(v284);
      }

      else
      {
        v285 = *(v12 + 29488);
        v286 = *(v12 + 28872);
        v287 = *(v12 + 28864);

        v282 = *(v286 + 8);
        v288 = sub_C9F8();
        v282(v288);
        v272 = *(v12 + 29528);
      }

      *(v12 + 29696) = v282;
      sub_106B28();
      v289 = getMedDosageValue(from:)();
      v291 = v290;

      v505 = v282;
      if ((v291 & 1) == 0)
      {
        sub_106F84();
        v292 = *(v12 + 29504);
        v293 = *(v12 + 29480);
        v294 = *(v12 + 28864);
        v295 = sub_FEFD4(*&v289);
        sub_106DC4(v295, "setDosage:");
        sub_106204();
        (v282)(v293, v292, v294);
        sub_106F78();
        v296 = swift_allocObject();
        *(v296 + 16) = v295;
        v490 = v295;
        v297 = sub_16DBDC();
        v265 = sub_16E36C();
        sub_106420();
        v298 = swift_allocObject();
        *(v298 + 16) = 64;
        sub_106420();
        v299 = swift_allocObject();
        sub_106AF0(v299);
        sub_106264();
        v300 = swift_allocObject();
        *(v300 + 16) = sub_104B34;
        *(v300 + 24) = v296;
        sub_106264();
        v262 = swift_allocObject();
        *(v262 + 16) = sub_104B30;
        *(v262 + 24) = v300;
        sub_2440(&qword_1C9D10, &qword_176750);
        v301 = sub_106F30();
        sub_61090(v301, 3);
        *v302 = sub_104B38;
        v302[1] = v298;
        v302[2] = sub_104B38;
        v302[3] = v299;
        v302[4] = sub_1049F4;
        v302[5] = v262;

        if (os_log_type_enabled(v297, v265))
        {
          sub_3A58C();
          v303 = sub_93228();
          sub_106ABC(258);
          v304 = sub_105734();
          sub_3A5A4(v304, v305, v306, v307);
          if (v272)
          {
LABEL_89:

            goto LABEL_102;
          }

          v308 = sub_105734();
          sub_3A5A4(v308, v309, v310, v311);

          v312 = sub_105734();
          sub_3A5A4(v312, v313, v314, v315);
          v316 = *(v12 + 29480);
          sub_106258();

          sub_107170(&def_259DC, v297, v265, "Specific med request: parsed dosage (%@) in task");
          sub_8748(v303, &qword_1C57B8, &qword_1715A0);
          sub_8A2C();
          sub_3A5E0();

          v317 = v316;
          v282 = v505;
          (v505)(v317, 0);
          v272 = 0;
        }

        else
        {
          v318 = *(v12 + 29480);
          v265 = *(v12 + 28872);
          v319 = *(v12 + 28864);

          v320 = sub_38E50();
          v282 = v505;
          v505(v320);
        }
      }

      sub_106B28();
      v321 = getMedDosageUnit(from:)();
      v323 = v322;

      if (v323)
      {
        v324 = *(v12 + 29520);
        v325 = *(v12 + 29512);
        v326 = *(v12 + 29504);
        v327 = *(v12 + 29472);
        v328 = *(v12 + 28864);
        sub_1035A8(v321, v323, v72);
        sub_106204();
        v329 = sub_13298();
        v325(v329);
        sub_106264();
        v330 = swift_allocObject();
        *(v330 + 16) = v321;
        *(v330 + 24) = v323;

        v331 = sub_16DBDC();
        v332 = sub_16E36C();
        sub_106420();
        v333 = swift_allocObject();
        *(v333 + 16) = 32;
        v262 = v332;
        sub_106420();
        v334 = swift_allocObject();
        sub_106AF0(v334);
        sub_106264();
        v335 = swift_allocObject();
        *(v335 + 16) = sub_104B2C;
        *(v335 + 24) = v330;
        sub_106264();
        v336 = swift_allocObject();
        *(v336 + 16) = sub_104B28;
        *(v336 + 24) = v335;
        sub_2440(&qword_1C9D10, &qword_176750);
        v337 = sub_106F30();
        sub_61090(v337, 3);
        *v338 = sub_104B38;
        v338[1] = v333;
        v338[2] = sub_104B38;
        v338[3] = v334;
        v338[4] = sub_1049F0;
        v338[5] = v336;

        if (os_log_type_enabled(v331, v262))
        {
          v339 = sub_3A58C();
          v340 = sub_CA30();
          sub_106ABC(258);
          v341 = sub_105734();
          sub_3A5A4(v341, v342, v343, v344);
          if (v272)
          {
            goto LABEL_89;
          }

          v373 = sub_105734();
          sub_3A5A4(v373, v374, v375, v376);

          v386 = sub_105734();
          sub_3A5A4(v386, v387, v388, v389);
          v398 = v339;
          v399 = *(v12 + 29472);
          v400 = v340;
          v265 = *(v12 + 28872);
          v401 = *(v12 + 28864);

          _os_log_impl(&def_259DC, v331, v262, "Specific med request: parsed dosageUnit (%s) in task", v398, 0xCu);
          sub_2D64(v400);
          sub_8A2C();
          sub_3A5E0();

          v402 = sub_C9F8();
          v282 = v505;
          v505(v402);
          v272 = 0;
        }

        else
        {
          v345 = *(v12 + 29472);
          v262 = *(v12 + 28872);
          v265 = *(v12 + 28864);

          v346 = sub_106FE4();
          v282 = v505;
          v505(v346);
        }

        v72 = v501;
      }

      else
      {
      }

      sub_105A08();
      v347 = *(v12 + 29464);
      v348 = *(v12 + 28864);
      sub_38474();
      v349 = sub_105BF0();
      (v262)(v349);
      v350 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v351 = sub_3A58C();
        sub_105A28(v351);
        if (*(v265 + 16))
        {
          while (1)
          {
            v508 = *(v265 + 32);
            v352 = sub_105734();
            sub_3A5A4(v352, v353, v354, v355);
            sub_1066E4();
          }
        }

        v356 = *(v12 + 29464);
        sub_106E50();
        sub_105AAC(&def_259DC, v357, v358, "Specific med request is being sent to intent handler for handling.");
        sub_3A5E0();

        (v505)(v356, 32);
      }

      else
      {
        v359 = *(v12 + 29464);
        sub_10654C();

        v360 = sub_38E50();
        v282(v360);
      }

      *(v12 + 29704) = v272;
      *(v12 + 29712) = *(*(v12 + 27984) + 352);
      *(v12 + 144) = v12;
      *(v12 + 184) = v12 + 27920;
      *(v12 + 152) = sub_E0044;
      v361 = swift_continuation_init();
      *(v12 + 20584) = sub_2440(&qword_1C9D18, &qword_176758);
      *(v12 + 20560) = v361;
      *(v12 + 20528) = _NSConcreteStackBlock;
      *(v12 + 20536) = 1107296256;
      sub_10660C();
      *(v12 + 20544) = v362;
      *(v12 + 20552) = &unk_1BC298;
      [swift_unknownObjectRetain() handleLogSpecificMedications:v72 completion:v12 + 20528];
LABEL_99:
      sub_8CC0();

      return _swift_continuation_await(v363);
    default:
      v491 = *(v12 + 29520);
      v486 = *(v12 + 29512);
      v35 = *(v12 + 29504);
      v496 = *(v12 + 29216);
      v498 = v26;
      v483 = v34 & 0x3F;
      v36 = *(v12 + 28864);
      v37 = v27;
      v38 = v25;
      v471 = v33;
      sub_106204();
      sub_106844();
      v486();
      v39 = *v13;
      sub_106AFC();
      v478 = swift_allocObject();
      *(v478 + 16) = v38;
      *(v478 + 24) = v498;
      v40 = sub_106454(v478);
      *(v40 + 64) = v32;
      *(v40 + 72) = v471;
      *(v40 + 80) = v483;
      sub_106AFC();
      v482 = swift_allocObject();
      *(v482 + 16) = v38;
      *(v482 + 24) = v498;
      v41 = sub_106454(v482);
      *(v41 + 64) = v32;
      *(v41 + 72) = v471;
      *(v41 + 80) = v483;
      sub_106AFC();
      v480 = swift_allocObject();
      *(v480 + 16) = v38;
      *(v480 + 24) = v498;
      v42 = sub_106454(v480);
      *(v42 + 64) = v32;
      *(v42 + 72) = v471;
      *(v42 + 80) = v483;
      sub_10374C(v502, v12 + 19312);
      sub_106AFC();
      v487 = swift_allocObject();
      *(v487 + 16) = v38;
      *(v487 + 24) = v498;
      v43 = sub_106454(v487);
      *(v43 + 64) = v32;
      *(v43 + 72) = v471;
      *(v43 + 80) = v483;
      sub_107188(19384);
      sub_106AFC();
      v466 = swift_allocObject();
      *(v466 + 16) = v38;
      *(v466 + 24) = v498;
      v474 = v37;
      v476 = v28;
      v44 = sub_106454(v466);
      *(v44 + 64) = v32;
      *(v44 + 72) = v471;
      *(v44 + 80) = v483;
      sub_107188(19456);
      memcpy((v12 + 19168), v502, 0x41uLL);
      *(v12 + 19232) &= 0x3Fu;
      sub_107188(19528);
      sub_107188(19600);
      sub_86B0(v12 + 19168, v12 + 19672, &qword_1C9D30, &qword_1767C8);
      oslog = sub_16DBDC();
      v467 = sub_16E36C();
      sub_106420();
      v473 = swift_allocObject();
      *(v473 + 16) = 32;
      sub_106420();
      v492 = swift_allocObject();
      sub_106AF0(v492);
      sub_106264();
      v45 = swift_allocObject();
      *(v45 + 16) = sub_103D04;
      *(v45 + 24) = v478;
      sub_106264();
      v46 = swift_allocObject();
      *(v46 + 16) = sub_104B28;
      *(v46 + 24) = v45;
      v47 = v46;
      sub_106420();
      v48 = swift_allocObject();
      *(v48 + 16) = 32;
      v49 = v48;
      sub_106420();
      v497 = swift_allocObject();
      *(v497 + 16) = 8;
      sub_106264();
      v50 = swift_allocObject();
      *(v50 + 16) = sub_103D1C;
      *(v50 + 24) = v482;
      sub_106264();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_104B28;
      *(v51 + 24) = v50;
      v52 = v51;
      sub_106420();
      v470 = swift_allocObject();
      *(v470 + 16) = 32;
      sub_106420();
      v53 = swift_allocObject();
      *(v53 + 16) = 8;
      sub_106264();
      v54 = swift_allocObject();
      *(v54 + 16) = sub_103D34;
      *(v54 + 24) = v480;
      sub_106264();
      v55 = swift_allocObject();
      *(v55 + 16) = sub_104B28;
      *(v55 + 24) = v54;
      sub_106420();
      v481 = swift_allocObject();
      *(v481 + 16) = 32;
      sub_106420();
      v479 = swift_allocObject();
      *(v479 + 16) = 8;
      sub_106264();
      v56 = swift_allocObject();
      *(v56 + 16) = sub_103D4C;
      *(v56 + 24) = v487;
      sub_106264();
      v472 = swift_allocObject();
      *(v472 + 16) = sub_104B28;
      *(v472 + 24) = v56;
      sub_106420();
      v57 = swift_allocObject();
      *(v57 + 16) = 32;
      v58 = v57;
      sub_106420();
      v59 = swift_allocObject();
      *(v59 + 16) = 8;
      v60 = v59;
      sub_106264();
      v61 = swift_allocObject();
      *(v61 + 16) = sub_103DA8;
      *(v61 + 24) = v466;
      sub_106264();
      v488 = swift_allocObject();
      *(v488 + 16) = sub_104B28;
      *(v488 + 24) = v61;
      *(v12 + 29976) = sub_2440(&qword_1C9D10, &qword_176750);
      v62 = swift_allocObject();
      sub_61090(v62, 15);
      *v63 = sub_104B38;
      v63[1] = v473;
      v63[2] = sub_104B38;
      v63[3] = v492;
      v63[4] = sub_1049F0;
      v63[5] = v47;
      v63[6] = sub_104B38;
      v63[7] = v49;
      v63[8] = sub_104B38;
      v63[9] = v497;
      v63[10] = sub_1049F0;
      v63[11] = v52;
      v63[12] = sub_104B38;
      v63[13] = v470;
      v63[14] = sub_104B38;
      v63[15] = v53;
      v63[16] = sub_1049F0;
      v63[17] = v55;
      v63[18] = sub_104B38;
      v63[19] = v481;
      v63[20] = sub_104B38;
      v63[21] = v479;
      v63[22] = sub_1049F0;
      v63[23] = v472;
      v63[24] = sub_104B38;
      v63[25] = v58;
      v63[26] = sub_104B38;
      v63[27] = v60;
      v63[28] = sub_1049F0;
      v63[29] = v488;

      if (!os_log_type_enabled(oslog, v467))
      {
        v143 = *(v12 + 29216);
        v144 = *(v12 + 28872);
        v468 = *(v12 + 28864);

        v145 = *(v144 + 8);
        v145(v143, v468);
        v146 = *(v12 + 29528);
LABEL_32:
        *(v12 + 29992) = v145;
        *(v12 + 29984) = v146;
        v147 = *(v12 + 27984);
        sub_16DA3C();
        v148 = sub_16DA2C();
        *(v12 + 30000) = v148;
        *(v12 + 30008) = sub_37750();
        sub_1071B8();
        v149 = getMedStatus(from:)();

        v150 = sub_DB27C(v149 & 1);
        sub_106D58(v150, "setMedStatus:");

        if (v498)
        {
          v151 = sub_16E1AC();
          v152 = v151;
        }

        else
        {
          v152 = 0;
        }

        sub_106D58(v151, "setScheduleID:");

        sub_103660(v148, &selRef_scheduleID);
        if (v167)
        {
        }

        else
        {
          v168 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v168, "setLogAsNeeded:");
        }

        if (v483 == 3)
        {
          v203 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v203, "setConfirmedAsScheduled:");

          v204 = sub_16E3BC(0).super.super.isa;
          sub_106D58(v204, "setConfirmedAsNeeded:");

          v206.super.super.isa = sub_DB27C(0);
          v207 = &selRef_setMedStatus_;
        }

        else if (v483 == 2)
        {
          v202 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v202, "setConfirmedAsScheduled:");

          v206.super.super.isa = sub_16E3BC(0).super.super.isa;
          v207 = &selRef_setConfirmedAsNeeded_;
        }

        else
        {
          v205 = sub_16E3BC(v483 == 1).super.super.isa;
          sub_106D58(v205, "setConfirmedAsNeeded:");

          v206.super.super.isa = sub_16E3BC(0).super.super.isa;
          v207 = &selRef_setConfirmedAsScheduled_;
        }

        v208 = *(v12 + 27984);
        [v148 *v207];

        sub_2440(&qword_1C6828, &qword_1767D0);
        v209 = swift_allocObject();
        v210 = sub_61090(v209, 1);
        v212 = v211;
        memcpy((v12 + 19744), v502, 0x41uLL);
        *(v12 + 19808) &= 0x3Fu;
        sub_86B0(v12 + 19744, v12 + 19816, &qword_1C9D30, &qword_1767C8);

        *v212 = v474;
        v212[1] = v476;
        v213 = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v210);
        sub_1034E4(v213, v148);
        sub_C9294(v208 + 400, v12 + 21496);
        v214 = *(v12 + 21528);
        sub_2D20((v12 + 21496), *(v12 + 21520));
        v215 = *(v214 + 8);
        v504 = v215 + *v215;
        v216 = v215[1];
        v217 = swift_task_alloc();
        *(v12 + 30016) = v217;
        *v217 = v12;
        v217[1] = sub_EA4F8;
        sub_8CC0();

        return v222(v218, v219, v220, v221, v222, v223, v224, v225, a9, a10, a11, a12);
      }

      v64 = *(v12 + 29528);
      v65 = sub_3A58C();
      swift_slowAlloc();
      sub_106ABC(1282);
      v66 = sub_105734();
      sub_3A5A4(v66, v67, v68, v69);
      if (!v64)
      {

        v169 = sub_105734();
        sub_3A5A4(v169, v170, v171, v172);

        v365 = sub_105734();
        sub_3A5A4(v365, v366, v367, v368);

        v378 = sub_105734();
        sub_3A5A4(v378, v379, v380, v381);

        v390 = sub_105734();
        sub_3A5A4(v390, v391, v392, v393);

        v403 = sub_105734();
        sub_3A5A4(v403, v404, v405, v406);

        v411 = sub_105734();
        sub_3A5A4(v411, v412, v413, v414);

        v419 = sub_105734();
        sub_3A5A4(v419, v420, v421, v422);

        v427 = sub_105734();
        sub_3A5A4(v427, v428, v429, v430);

        v438 = sub_105734();
        sub_3A5A4(v438, v439, v440, v441);

        v442 = sub_105734();
        sub_3A5A4(v442, v443, v444, v445);

        v446 = sub_105734();
        sub_3A5A4(v446, v447, v448, v449);

        v450 = sub_105734();
        sub_3A5A4(v450, v451, v452, v453);

        v454 = sub_105734();
        sub_3A5A4(v454, v455, v456, v457);

        v458 = sub_105734();
        sub_3A5A4(v458, v459, v460, v461);
        v462 = *(v12 + 29216);
        v463 = *(v12 + 28872);
        v464 = *(v12 + 28864);

        _os_log_impl(&def_259DC, oslog, v467, "Entering .nameSelected case with value (scheduleID: %s), (medicationID: %s), strength (%s), strengthUnit (%s), confirmationStatus (%s", v65, 0x34u);
        swift_arrayDestroy();
        sub_8A2C();
        sub_3A5E0();

        v145 = *(v463 + 8);
        v465 = sub_13298();
        (v145)(v465);
        v146 = 0;
        goto LABEL_32;
      }

LABEL_102:

LABEL_104:

      sub_8CC0();
  }
}

uint64_t sub_E0044()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_E0114()
{
  sub_38AB4();
  v589 = v8;
  v590 = v9;
  sub_38664();
  v588 = v2;
  v10 = *(v2 + 29712);
  v11 = *(v2 + 27920);
  *(v2 + 29720) = v11;
  v12 = swift_unknownObjectRelease();
  v13 = (*(&stru_20.maxprot + (swift_isaMask & *v11)))(v12);
  switch(v13)
  {
    case 'e':
      v574 = v11;
      sub_1058C8();
      v14 = *(v2 + 29456);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v15 = sub_105C00();
      v7(v15);
      v16 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v17 = sub_3A58C();
        sub_105654(v17);
        if (v0)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v18 = *(v2 + 29696);
        v19 = *(v2 + 29456);
        sub_10669C();
        sub_105AAC(&def_259DC, v20, v21, "Received .requiresAuthorization, returning AskAuthorizationFlow");
        sub_3A5E0();

        v22 = sub_C9F8();
        v18(v22);
      }

      else
      {
        v3 = *(v2 + 29696);
        v196 = *(v2 + 29456);
        sub_106258();

        v197 = sub_1058E8();
        v3(v197);
      }

      v198 = *(v2 + 29688);
      sub_105B60();
      v199 = *(v2 + 27984);
      v200 = *(v2 + 27976);
      sub_C9294(v199 + 24, v2 + 1152);
      sub_8284(v199 + 64, v2 + 1192);
      sub_789CC((v2 + 1352));
      v201 = sub_78A24();
      v202 = sub_78A50();
      *(v2 + 1144) = 88;
      *(v2 + 1392) = v201;
      *(v2 + 1400) = v202;
      sub_84F0();
      sub_16C4EC();

      sub_106900();
      sub_8544(v2 + 1144);
      goto LABEL_112;
    case 'f':
      goto LABEL_12;
    case 'g':
      sub_105C30();
      v81 = *(v2 + 29544);
      v82 = *(v2 + 27984);
      sub_10642C();
      if (v83)
      {
        m = v83;
      }

      else
      {
        m = 0xE700000000000000;
      }

      memcpy((v2 + 19096), (v82 + 224), 0x41uLL);
      *(v82 + 224) = 1;
      *(v82 + 232) = 0u;
      v84 = v82 + 232;
      *(v84 + 16) = 0u;
      *(v84 + 32) = 0u;
      *(v84 + 48) = 0;
      *(v84 + 56) = -64;
      sub_376FC(v2 + 19096);
      sub_10543C();
      v573 = v11;
      v87 = sub_103600(v11, v85, v86);
      if (v87)
      {
        v88 = v87;
        m = *(v2 + 29704);
        v89 = *(v2 + 27984);

        v569 = sub_DB600(v88, v89);
        v587 = &_swiftEmptySetSingleton;
        v90 = sub_3B35C(v88);
        for (i = 0; v90 != i; ++i)
        {
          v92 = sub_16BC94(v88);
          sub_3B360(i, v92, v88);
          if (v92)
          {
            v93 = v88[i + 4];
          }

          else
          {
            v93 = sub_16E48C();
          }

          v94 = v93;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_211;
          }

          v95 = v587;
          v96 = sub_103660(v93, &selRef_schedule);
          v98 = sub_FF684(v96, v97, v95);

          if (v98)
          {

            goto LABEL_167;
          }

          v99 = sub_103660(v94, &selRef_schedule);
          sub_102A30(&v578, v99, v100);
        }

LABEL_167:
        v460 = *(v2 + 27984);

        sub_1071B8();
        v461 = getLocalizedMedName(from:)();
        v463 = v462;

        if (v463)
        {
          v464 = v90 != i;
          v556 = *(v2 + 29688);
          v566 = *(v2 + 28856);
          v562 = *(v2 + 28816);
          v559 = *(v2 + 28568);
          v465 = *(v2 + 27984);
          v466 = *(v2 + 27976);
          sub_8284(v465 + 64, v2 + 5568);
          sub_C9294(v465 + 24, v2 + 22936);
          v467 = sub_3B35C(v569);
          sub_789CC(&v578);
          type metadata accessor for MedNameDisambiguationStrategy();
          swift_allocObject();
          sub_1C4B0((v2 + 5568), &v578, (v2 + 22936), v461, v463, v467, v464);

          sub_16C73C();
          *(v2 + 27808) = sub_FF7AC();
          sub_FF924();
          v468 = sub_106AC8();
          sub_2440(v468, v469);
          sub_1066B8(&qword_1C9D50);
          sub_1069D8(27808);
          sub_16C4CC();

          sub_106900();

          sub_105424();
          sub_103BA0(v559, v470);
          sub_8748(v562, &qword_1C5800, &unk_16F510);
          v309 = v566;
          goto LABEL_169;
        }

        sub_105A08();
        v43 = *(v2 + 29376);
        v485 = *(v2 + 28864);

        sub_38474();
        v486 = sub_105BF0();
        (v88)(v486);
        v16 = sub_16DBDC();
        sub_16E37C();
        sub_106C68();
        v487 = sub_106530();
        v488 = *(v2 + 29696);
        v489 = *(v2 + 29376);
        v490 = *(v2 + 28872);
        v491 = *(v2 + 28864);
        if (v487)
        {
          v492 = sub_3A58C();
          sub_105690(v492);
          sub_1028F0(i, v493, v494, v495);

          sub_1062FC(&def_259DC, v496, v497, "Needed name disambiguation but unable to unwrap med name from task. Returning GenericErrorFlow");
          sub_3A5E0();
        }

        else
        {
        }

        v538 = sub_387CC();
        v488(v538);
        v157 = *(v2 + 29688);
        v539 = sub_105674();
        sub_8284(v539, v2 + 5888);
        v159 = 6368;
LABEL_203:
        v161 = sub_106BC0();
LABEL_204:
        sub_6361C(v161, v160);
        sub_82E0();
        sub_16C4EC();

        sub_106900();
        v537 = v2 + v159;
        goto LABEL_205;
      }

      v398 = 6528;
      v399 = "/usr/lib/swift/libswiftCoreLocation.dylib";
      sub_1059C0();
      v409 = *(v2 + 29368);
      sub_1058F8();
      v410 = sub_38408();
      (v84)(v410);
      v16 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (!sub_106220())
      {
        v500 = *(v2 + 29696);
        v43 = *(v2 + 29368);
        goto LABEL_179;
      }

      v411 = sub_3A58C();
      sub_105654(v411);
      for (j = 32; v409; --v409)
      {
        sub_10599C(*(v84 + j));
        j += 16;
      }

      v406 = *(v2 + 29696);
      v43 = *(v2 + 29368);
      sub_10669C();
      sub_105AAC(&def_259DC, v413, v414, "Needed name disambiguation but intentResponse.matchingMeds was nil.");
      sub_3A5E0();

      v398 = 6528;
      goto LABEL_150;
    case 'h':
      sub_1059D0();
      v71 = *(v2 + 29360);
      sub_105A3C();
      if (v75)
      {
        v76 = v74;
      }

      else
      {
        v76 = v72;
      }

      if (v73)
      {
        v77 = v73;
      }

      else
      {
        v77 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(2);
      sub_376FC(v2 + 18952);
      sub_105B70();
      v78 = sub_106194();
      v6(v78);
      v79 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v80 = sub_3A58C();
        sub_105654(v80);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v209 = *(v2 + 29696);
      v210 = *(v2 + 29360);
      sub_106258();

      v211 = sub_1058E8();
      v209(v211);
      v565 = *(v2 + 29704);
      v212 = sub_103600(v573, &selRef_matchingSchedules, &type metadata accessor for MatchedMedSchedule);
      if (v212)
      {
        m = v212;
        v587 = sub_3A690(0);
        v570 = sub_3B35C(m);
        for (k = 0; v570 != k; k = k + 1)
        {
          v214 = sub_16BC94(m);
          sub_3B360(k, v214, m);
          if (v214)
          {
            v215 = *(m + 8 * k + 32);
          }

          else
          {
            v215 = sub_16E48C();
          }

          v216 = v215;
          if (__OFADD__(k, 1))
          {
LABEL_211:
            __break(1u);
            JUMPOUT(0xE3120);
          }

          v217 = sub_103660(v215, &selRef_scheduleID);
          if (!v218)
          {
            sub_106FF0();
LABEL_196:
            v517 = *(v2 + 29520);
            v518 = *(v2 + 29512);
            v519 = *(v2 + 29504);
            v43 = *(v2 + 29352);
            v520 = *(v2 + 28864);

            sub_38474();
            v521 = sub_8B9C();
            v518(v521);
            v522 = sub_16DBDC();
            v523 = sub_16E36C();
            v524 = sub_3A5EC(0);
            v525 = os_log_type_enabled(v522, v523);
            v526 = *(v2 + 29696);
            v527 = *(v2 + 29352);
            v528 = *(v2 + 28872);
            v529 = *(v2 + 28864);
            if (v525)
            {
              v530 = sub_3A58C();
              sub_105690(v530);
              m = v565;
              sub_1028F0(v524, v531, v532, v533);

              _os_log_impl(&def_259DC, v522, v523, "Missing fields while unpacking matchingScheduleObjects from intentResponse, returning GenericErrorFlow", v43, 2u);
              sub_3A5E0();
            }

            else
            {
            }

            v534 = sub_105B50();
            v526(v534);
            v535 = *(v2 + 29688);
            v16 = *(v2 + 28856);
            sub_106360();
            v536 = *(v2 + 27976);
            sub_8284(*(v2 + 27984) + 64, v2 + 7488);
            v399 = (&stru_1E78 + 8);
            sub_6361C((v2 + 7488), (v2 + 7808));
            sub_82E0();
            sub_16C4EC();

            goto LABEL_200;
          }

          v219 = v217;
          v220 = v218;
          v221 = sub_103660(v216, &selRef_schedule);
          if (!v222)
          {
            sub_106FF0();
LABEL_195:

            m = v220;
            goto LABEL_196;
          }

          v223 = v221;
          v224 = v222;
          v225 = sub_103660(v216, &selRef_medName);
          if (!v226)
          {
            sub_106FF0();
LABEL_194:

            goto LABEL_195;
          }

          v227 = v225;
          v228 = v226;
          v229 = sub_103660(v216, &selRef_remainingMedCount);
          if (!v230)
          {
            sub_106FF0();

            goto LABEL_194;
          }

          *&v580 = v219;
          *(&v580 + 1) = v220;
          v581 = v223;
          v582 = v224;
          v583 = v227;
          v584 = v228;
          v585 = v229;
          v586 = v230;
          sub_DB4B4(&v580);
        }

        v510 = *(v2 + 29688);
        v568 = *(v2 + 28856);
        v564 = *(v2 + 28816);
        v561 = *(v2 + 28568);
        v511 = *(v2 + 27984);
        v512 = *(v2 + 27976);

        type metadata accessor for MedScheduleDisambiguationStrategy();
        sub_8284(v511 + 64, v2 + 7328);
        sub_C9294(v511 + 24, v2 + 23136);
        sub_789CC(&v578);
        sub_AAC28((v2 + 7328), &v578, (v2 + 23136));

        sub_16C73C();
        sub_1070E4();
        *(v2 + 27832) = sub_FF868();
        sub_FF964();
        v513 = sub_106AC8();
        sub_2440(v513, v514);
        sub_1066B8(&qword_1C9D40);
        sub_1069D8(27832);
        sub_1069F0();
        sub_16C4CC();

        sub_106900();

LABEL_116:

        sub_105424();
        sub_103BA0(v561, v308);
        sub_8748(v564, &qword_1C5800, &unk_16F510);
        v309 = v568;
LABEL_169:
        sub_8748(v309, &qword_1C69C0, &unk_174290);
LABEL_170:
      }

      else
      {
        v398 = 7968;
        v399 = &loc_2100;
        sub_105A08();
        v400 = *(v2 + 29344);
        v401 = *(v2 + 28864);
        sub_38474();
        v402 = sub_105BF0();
        v77(v402);
        v16 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v403 = sub_3A58C();
          sub_105858(v403);
          v404 = *(v76 + 16);
          v405 = 32;
          for (m = v565; v404; --v404)
          {
            sub_10599C(*(v76 + v405));
            v405 += 16;
          }

          v406 = *(v2 + 29696);
          v43 = *(v2 + 29344);
          sub_10669C();
          sub_105AAC(&def_259DC, v407, v408, "Needed schedule disambiguation but intentResponse.matchingSchedules was nil.");
          sub_3A5E0();

          v398 = 7968;
LABEL_150:
          v415 = sub_C9F8();
          v406(v415);
        }

        else
        {
          v500 = *(v2 + 29696);
          v43 = *(v2 + 29344);
LABEL_179:
          sub_106258();

          v501 = sub_1058E8();
          v500(v501);
        }

        v502 = *(v2 + 29688);
        v503 = sub_105674();
        sub_8284(v503, v2 + v398);
        sub_6361C((v2 + v398), &v399[v2]);
        sub_82E0();
        sub_16C4EC();

LABEL_200:
        sub_106900();

        v537 = &v399[v2];
LABEL_205:
        sub_8334(v537);
        sub_105424();
        sub_103BA0(m, v540);
        v288 = v43;
LABEL_206:
        sub_8748(v288, &qword_1C5800, &unk_16F510);
        sub_8748(v16, &qword_1C69C0, &unk_174290);
      }

      sub_1053F0();
      sub_105CB8();
      v543 = *(v2 + 28120);
      v544 = *(v2 + 28112);
      v545 = *(v2 + 28104);
      v546 = *(v2 + 28096);
      v548 = *(v2 + 28072);
      v550 = *(v2 + 28064);
      v552 = *(v2 + 28056);
      v554 = *(v2 + 28048);
      v557 = *(v2 + 28040);
      v560 = *(v2 + 28032);
      v563 = *(v2 + 28024);
      v567 = *(v2 + 28016);
      v572 = *(v2 + 28008);
      v577 = *(v2 + 28000);

      sub_C9BC();
      sub_106574();

      return v541();
    case 'i':
      sub_1058C8();
      v62 = *(v2 + 29400);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v63 = sub_105C00();
      v7(v63);
      v64 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v65 = sub_3A58C();
        sub_105858(v65);
        sub_106C14();
        if (v5)
        {
          while (1)
          {
            sub_10599C(*(v11 + v3));
            sub_1065A8();
          }
        }

        v66 = *(v2 + 29696);
        v67 = *(v2 + 29400);
        sub_106404();
        sub_105BB0(&def_259DC, v68, v69, "Received failure intent response, creating output.");
        sub_3A5E0();

        v70 = sub_105B00();
        v66(v70);
      }

      else
      {
        v203 = *(v2 + 29696);
        v0 = *(v2 + 29400);
        sub_106258();

        v204 = sub_1058E8();
        v203(v204);
      }

      sub_1069E4();
      *(v2 + 29832) = v64;
      v206 = *(v205 + 16);

      getLocalizedMedName(from:)();
      sub_106EF8();
      if (v0)
      {
        v207 = *(v2 + 28760);
        sub_8427C();
        sub_16E23C();

        v208 = 0;
      }

      else
      {
        v208 = 1;
      }

      v394 = *(v2 + 27984);
      sub_214C(*(v2 + 28760), v208, 1, *(v2 + 28528));
      sub_FF3F0(v394);
      v395 = swift_task_alloc();
      *(v2 + 29840) = v395;
      *v395 = v2;
      v395[1] = sub_E5D10;
      v396 = *(v2 + 28816);
      sub_C98D8(*(v2 + 28760));
      sub_106574();

      return sub_1678C4();
    case 'j':
      sub_1059D0();
      v107 = *(v2 + 29336);
      sub_105A3C();
      if (v108)
      {
        v109 = v108;
      }

      else
      {
        v109 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(4);
      sub_376FC(v2 + 18808);
      sub_105B70();
      v110 = sub_106194();
      v6(v110);
      v111 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v112 = sub_3A58C();
        sub_105654(v112);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v252 = *(v2 + 29696);
      v253 = *(v2 + 29336);
      sub_106258();

      v254 = sub_1058E8();
      v252(v254);
      m = *(v2 + 29704);
      sub_10543C();
      v257 = sub_103600(v573, v255, v256);
      if (v257)
      {
        v258 = v257;
        v259 = *(*(v2 + 27984) + 16);

        v260 = getLocalizedMedName(from:)();
        v262 = v261;

        if (v262)
        {
          sub_105930();
          v555 = *(v2 + 27976);
          v553 = v260;
          v263 = v11[2];

          v551 = getMedStatus(from:)();

          sub_8284((v11 + 8), v2 + 8768);
          v264 = sub_105618();
          v549 = sub_FFA7C(v264, &CATWrapperSimple.__allocating_init(options:globals:));
          v265 = sub_105600();
          v547 = sub_FFA7C(v265, &CATWrapper.__allocating_init(options:globals:));
          sub_789CC((v2 + 23416));
          type metadata accessor for LogMedAsScheduledConfirmationStrategy();
          v266 = swift_allocObject();
          v267 = *(v2 + 23440);
          v268 = *(v2 + 23448);
          v269 = sub_37BE8(v2 + 23416, v267);
          v270 = *(v267 - 8);
          v271 = *(v270 + 64);
          v272 = sub_8BC0();
          (*(v270 + 16))(v272, v269, v267);
          v273 = sub_98AFC(v553, v262, v551 & 1, v258, (v2 + 8768), v549, v547, v272, v266, v267, v268);
          sub_2D64((v2 + 23416));

          sub_16C73C();
          sub_1060FC();
          *(v2 + 27864) = sub_DB30C(v273, &v578, v274, v275, type metadata accessor for LogMedAsScheduledConfirmationStrategy);
          sub_FF9A4();
          sub_1070A8();
          v276 = sub_387CC();
          sub_2440(v276, v277);
          sub_1055E8();
          sub_98C8(v278, &qword_1C67A8, &qword_171CC0);
          sub_106844();
          sub_16C4CC();

          sub_106900();

          goto LABEL_116;
        }

        v471 = *(v2 + 29520);
        v472 = *(v2 + 29512);
        v473 = *(v2 + 29504);
        v43 = *(v2 + 29328);
        v474 = *(v2 + 28864);

        sub_1B9B4();
        v475 = sub_105BF0();
        v472(v475);
        v16 = sub_16DBDC();
        sub_16E37C();
        sub_106C68();
        sub_106530();
        v476 = *(v2 + 29696);
        v477 = *(v2 + 29328);
        sub_106CEC();
        if (v478)
        {
          v479 = sub_3A58C();
          sub_105690(v479);
          sub_1028F0(v471, v480, v481, v482);

          sub_1062FC(&def_259DC, v483, v484, "Needed confirmation log as scheduled but unable to unwrap med name from task. Returning GenericErrorFlow");
          sub_3A5E0();
        }

        else
        {
        }

        v515 = sub_387CC();
        v476(v515);
        v157 = *(v2 + 29688);
        v516 = sub_105674();
        sub_8284(v516, v2 + 8928);
        v159 = 9408;
      }

      else
      {
        sub_105A08();
        v43 = *(v2 + 29320);
        v427 = *(v2 + 28864);
        sub_38474();
        v428 = sub_105BF0();
        v109(v428);
        v16 = sub_16DBDC();
        sub_16E36C();
        sub_106C68();
        sub_106530();
        v429 = *(v2 + 29696);
        v430 = *(v2 + 29320);
        sub_106CEC();
        if (v431)
        {
          v432 = sub_3A58C();
          sub_105690(v432);
          sub_1028F0(v11, v433, v434, v435);

          sub_1062FC(&def_259DC, v436, v437, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
          sub_3A5E0();
        }

        else
        {
        }

        v506 = sub_387CC();
        v429(v506);
        v157 = *(v2 + 29688);
        v507 = sub_105674();
        sub_8284(v507, v2 + 9568);
        v159 = 9728;
      }

      goto LABEL_203;
    case 'k':
      sub_1059D0();
      v101 = *(v2 + 29312);
      sub_105A3C();
      if (v102)
      {
        v103 = v102;
      }

      else
      {
        v103 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(3);
      sub_376FC(v2 + 18664);
      sub_105B70();
      v104 = sub_106194();
      v6(v104);
      v105 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v106 = sub_3A58C();
        sub_105654(v106);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v231 = *(v2 + 29696);
      v232 = *(v2 + 29312);
      sub_106258();

      v233 = sub_1058E8();
      v231(v233);
      m = *(v2 + 29704);
      sub_10543C();
      v178 = v573;
      if (sub_103600(v573, v234, v235))
      {
        sub_105930();
        sub_1070C0();
        type metadata accessor for LogMedAsNeededConfirmationStrategy();
        sub_8284((v11 + 8), v2 + 10048);
        v236 = sub_105618();
        sub_FFA7C(v236, &CATWrapperSimple.__allocating_init(options:globals:));
        v237 = sub_105600();
        sub_FFA7C(v237, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(&v578);
        v238 = sub_106B88();
        v243 = sub_143FF8(v238, v239, v240, v241, v242);

        sub_16C73C();
        sub_106650();
        *(v2 + 27896) = sub_DB30C(v243, &v578, v244, v245, type metadata accessor for LogMedAsNeededConfirmationStrategy);
        sub_FF9E4();
        sub_1070B4();
        v246 = sub_106AC8();
        sub_2440(v246, v247);
        sub_1055E8();
        sub_106B7C();
        sub_98C8(v248, v249, v250);
        goto LABEL_106;
      }

      sub_105A08();
      v43 = *(v2 + 29304);
      v416 = *(v2 + 28864);
      sub_38474();
      v417 = sub_105BF0();
      v103(v417);
      v16 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      sub_106530();
      v418 = *(v2 + 29696);
      v419 = *(v2 + 29304);
      sub_106CEC();
      if (v420)
      {
        v421 = sub_3A58C();
        sub_105690(v421);
        sub_1028F0(v11, v422, v423, v424);

        sub_1062FC(&def_259DC, v425, v426, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        sub_3A5E0();
      }

      else
      {
      }

      v504 = sub_387CC();
      v418(v504);
      v157 = *(v2 + 29688);
      v505 = sub_105674();
      sub_8284(v505, v2 + 10208);
      v159 = 10368;
      goto LABEL_203;
    case 'l':
      sub_1059C0();
      v135 = *(v2 + 29280);
      sub_1058F8();
      v136 = sub_38408();
      v4(v136);
      v137 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v138 = v11;
        v139 = sub_3A58C();
        sub_105654(v139);
        if (v135)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v140 = *(v2 + 29696);
        v141 = *(v2 + 29280);
        sub_10669C();
        sub_105AAC(&def_259DC, v142, v143, "SpecificMedLoggingFlow received .statusBothSkipped intent response, creating output.");
        sub_3A5E0();

        v144 = sub_C9F8();
        v140(v144);
        v11 = v138;
      }

      else
      {
        v310 = *(v2 + 29696);
        v311 = *(v2 + 29280);
        sub_106258();

        v312 = sub_1058E8();
        v310(v312);
      }

      v313 = *(v2 + 28440);
      v314 = *(v2 + 28352);
      v315 = *(v2 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v316, v317);
      v318 = 1;
      sub_16C7AC();
      *(v2 + 29888) = *(v315 + 336);

      sub_10543C();
      v321 = sub_103600(v11, v319, v320);
      if (v321)
      {
        v322 = sub_9AE60(v321);

        if (v322 && (sub_146C80(v322), v323))
        {
          v324 = *(v2 + 28752);
          sub_16E23C();

          v318 = 0;
        }

        else
        {
          v318 = 1;
        }
      }

      sub_214C(*(v2 + 28752), v318, 1, *(v2 + 28528));
      v381 = swift_task_alloc();
      *(v2 + 29896) = v381;
      *v381 = v2;
      v381[1] = sub_E7098;
      sub_C98D8(*(v2 + 28752));
      sub_106574();

      return sub_1683D0();
    case 'm':
      sub_1059D0();
      v56 = *(v2 + 29296);
      sub_105A3C();
      if (v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(5);
      sub_376FC(v2 + 18592);
      sub_105B70();
      v59 = sub_106194();
      v6(v59);
      v60 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v61 = sub_3A58C();
        sub_105654(v61);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v175 = *(v2 + 29696);
      v176 = *(v2 + 29296);
      sub_106258();

      v177 = sub_1058E8();
      v175(v177);
      m = *(v2 + 29704);
      sub_10543C();
      v178 = v573;
      if (!sub_103600(v573, v179, v180))
      {
        sub_105A08();
        v43 = *(v2 + 29288);
        v383 = *(v2 + 28864);
        sub_38474();
        v384 = sub_105BF0();
        v58(v384);
        v16 = sub_16DBDC();
        sub_16E36C();
        sub_106C68();
        sub_106530();
        v385 = *(v2 + 29696);
        v386 = *(v2 + 29288);
        sub_106CEC();
        if (v387)
        {
          v388 = sub_3A58C();
          sub_105690(v388);
          sub_1028F0(v11, v389, v390, v391);

          sub_1062FC(&def_259DC, v392, v393, "Needed confirmation update to status but intentResponse.matchingMeds was nil.");
          sub_3A5E0();
        }

        else
        {
        }

        v498 = sub_387CC();
        v385(v498);
        v157 = *(v2 + 29688);
        v499 = sub_105674();
        sub_8284(v499, v2 + 10848);
        v159 = 11008;
        goto LABEL_203;
      }

      sub_105930();
      sub_1070C0();
      type metadata accessor for MedUpdateLogStatusStrategy();
      sub_8284((v11 + 8), v2 + 10688);
      v181 = sub_105618();
      sub_FFA7C(v181, &CATWrapperSimple.__allocating_init(options:globals:));
      v182 = sub_105600();
      sub_FFA7C(v182, &CATWrapper.__allocating_init(options:globals:));
      sub_789CC(&v578);
      v183 = sub_106B88();
      v188 = sub_143FF8(v183, v184, v185, v186, v187);

      sub_16C73C();
      sub_106668();
      *(v2 + 27928) = sub_DB30C(v188, &v578, v189, v190, type metadata accessor for MedUpdateLogStatusStrategy);
      sub_FFAF8();
      sub_1070B4();
      v191 = sub_106AC8();
      sub_2440(v191, v192);
      sub_1055E8();
      sub_106B7C();
      sub_98C8(v193, v194, v195);
LABEL_106:
      sub_106E2C();

      sub_106900();

      sub_105424();
      sub_103BA0(v561, v251);
      sub_8748(v564, &qword_1C5800, &unk_16F510);
      sub_8748(v568, &qword_1C69C0, &unk_174290);
      goto LABEL_170;
    case 'n':
      v573 = v11;
      v120 = *(v2 + 29624);
      v121 = *(v2 + 29600);
      v122 = *(v2 + 29576);
      v123 = *(v2 + 29544);
      v124 = *(v2 + 29520);
      v125 = *(v2 + 29512);
      v126 = *(v2 + 29504);
      m = *(v2 + 29240);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v127 = sub_105C00();
      v125(v127);
      v128 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v129 = sub_3A58C();
        sub_105654(v129);
        v122 = 32;
        if (v126)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v130 = *(v2 + 29696);
        v131 = *(v2 + 29240);
        sub_106600();

        sub_105AAC(&def_259DC, v132, v133, "SpecificMedLoggingFlow received .needsConfirmMixedLogging in intent response, creating confirmation.");
        sub_3A5E0();

        v134 = sub_1063DC();
        v130(v134, 32);
      }

      else
      {
        v289 = *(v2 + 29696);
        v290 = *(v2 + 29240);
        sub_106258();

        v291 = sub_1058E8();
        v289(v291);
        m = *(v2 + 29704);
      }

      memcpy((v2 + 19024), (*(v2 + 27984) + 224), 0x41uLL);
      sub_106934();
      sub_10543C();
      v294 = sub_103600(v573, v292, v293);
      if (v294)
      {
        v295 = v294;
        sub_105930();
        v296 = *(v2 + 27976);
        v297 = *(v122 + 16);

        v298 = getMedStatus(from:)();

        sub_DB530(&v578);
        v299 = sub_105618();
        v300 = sub_FFA7C(v299, &CATWrapperSimple.__allocating_init(options:globals:));
        v301 = sub_105600();
        v302 = sub_FFA7C(v301, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v579);
        type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
        swift_allocObject();
        sub_68120(v298 & 1, v295, &v578, v300, v302, v579);

        sub_16C73C();
        *(v2 + 27936) = sub_DB3B4();
        sub_FFB38();
        sub_1070B4();
        v303 = sub_106AC8();
        sub_2440(v303, v304);
        sub_1055E8();
        sub_106B7C();
        sub_98C8(v305, v306, v307);
        sub_106E2C();

        sub_106900();

        goto LABEL_116;
      }

      sub_105A08();
      v43 = *(v2 + 29232);
      v438 = *(v2 + 28864);
      sub_38474();
      v439 = sub_105BF0();
      v121(v439);
      v16 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      sub_106530();
      v440 = *(v2 + 29696);
      v441 = *(v2 + 29232);
      sub_106CEC();
      if (v442)
      {
        v443 = sub_3A58C();
        sub_105690(v443);
        sub_1028F0(v122, v444, v445, v446);

        sub_1062FC(&def_259DC, v447, v448, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
        sub_3A5E0();
      }

      else
      {
      }

      v508 = sub_387CC();
      v440(v508);
      v157 = *(v2 + 29688);
      v509 = sub_105674();
      sub_8284(v509, v2 + 12448);
      v159 = 12608;
      goto LABEL_203;
    case 'o':
      sub_1059C0();
      v47 = *(v2 + 29256);
      sub_1058F8();
      v48 = sub_38408();
      v4(v48);
      v49 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v50 = sub_3A58C();
        sub_105858(v50);
        sub_106C14();
        if (v5)
        {
          while (1)
          {
            sub_10599C(*(v11 + v3));
            sub_1065A8();
          }
        }

        v51 = *(v2 + 29696);
        v52 = *(v2 + 29256);
        sub_106404();
        sub_105BB0(&def_259DC, v53, v54, "SpecificMedLoggingFlow received .allMedsLoggedAlready in intent response, creating output.");
        sub_3A5E0();

        v55 = sub_105B00();
        v51(v55);
      }

      else
      {
        v162 = *(v2 + 29696);
        v163 = *(v2 + 29256);
        sub_106258();

        v164 = sub_1058E8();
        v162(v164);
      }

      v165 = *(v2 + 28432);
      v166 = *(v2 + 28352);
      v167 = *(v2 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v168, v169);
      sub_16C7AC();
      *(v2 + 29936) = *(v167 + 336);
      v170 = *(v167 + 16);

      getMedStatus(from:)();

      swift_task_alloc();
      sub_179E8();
      *(v2 + 29944) = v171;
      *v171 = v172;
      sub_106FA4(v171);
      sub_106574();

      return sub_16746C();
    case 'p':
      v575 = v11;
      sub_1058C8();
      v14 = *(v2 + 29432);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v113 = sub_105C00();
      v7(v113);
      v16 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        v114 = sub_3A58C();
        sub_105654(v114);
        if (v0)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v115 = *(v2 + 29696);
        v116 = *(v2 + 29432);
        sub_10669C();
        sub_105AAC(&def_259DC, v117, v118, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0();

        v119 = sub_C9F8();
        v115(v119);
      }

      else
      {
        v3 = *(v2 + 29696);
        v279 = *(v2 + 29432);
        sub_106258();

        v280 = sub_1058E8();
        v3(v280);
      }

      v281 = *(v2 + 29688);
      sub_105B60();
      v282 = *(v2 + 27984);
      v283 = *(v2 + 27976);
      v284 = *(v282 + 16);
      sub_8284(v282 + 64, v2 + 216);
      sub_C9294(v282 + 24, v2 + 376);

      sub_789CC((v2 + 424));
      v285 = sub_87C00();
      v286 = sub_87C2C();
      sub_309A0((v2 + 480));
      *(v2 + 208) = v284;
      *(v2 + 416) = 0;
      *(v2 + 464) = v285;
      *(v2 + 472) = v286;
      sub_87F90();
      sub_16C4EC();

      sub_106900();
      sub_A9C4C(v2 + 208);
LABEL_112:
      sub_105424();
      sub_103BA0(v3, v287);
      v288 = v14;
      goto LABEL_206;
    default:
      if (v13 == 4)
      {
        sub_1059C0();
        v145 = *(v2 + 29448);
        sub_1058F8();
        v146 = sub_38408();
        v4(v146);
        v147 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v148 = v11;
          v149 = sub_3A58C();
          sub_105654(v149);
          if (v145)
          {
            while (1)
            {
              sub_105958();
              sub_1066E4();
            }
          }

          v150 = *(v2 + 29696);
          v151 = *(v2 + 29448);
          sub_10669C();
          sub_105AAC(&def_259DC, v152, v153, "Received successful intent response, creating output.");
          sub_3A5E0();

          v154 = sub_C9F8();
          v150(v154);
          v11 = v148;
        }

        else
        {
          v325 = *(v2 + 29696);
          v326 = *(v2 + 29448);
          sub_106258();

          v327 = sub_1058E8();
          v325(v327);
        }

        sub_10543C();
        v330 = sub_103600(v11, v328, v329);
        if (!v330)
        {
          v330 = sub_3A600(0);
        }

        v331 = *(v2 + 28808);
        v332 = *(v2 + 28528);
        v333 = *(v2 + 28496);
        v334 = *(v2 + 28472);
        v335 = *(v2 + 27984);
        sub_102308(v330);

        v336 = v335[2];
        v337 = v11;
        sub_456D0();

        v338 = sub_C9C8();
        sub_FF05C(v338, v339);
        v340 = (v333 + *(v334 + 36));
        v341 = *v340;
        *(v2 + 29728) = *v340;
        LOBYTE(v336) = *(v340 + 8);
        *(v2 + 17794) = v336;
        sub_8AB4();
        sub_214C(v342, v343, v344, v332);
        if ((v336 & 1) == 0)
        {
          v345 = *(v2 + 28808);
          v346 = *(v2 + 28800);
          v347 = *(v2 + 28528);
          sub_2440(&qword_1C8C78, &unk_1747C0);
          v348 = swift_allocObject();
          v349 = sub_61090(v348, 1);
          v350[3] = &type metadata for Double;
          v350[4] = &protocol witness table for Double;
          *v350 = v341;
          v351 = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v349);
          sub_106A50(v351);
          sub_16E23C();

          v352 = sub_106FE4();
          sub_8748(v352, v353, &unk_16F510);
          sub_388E4();
          sub_214C(v354, v355, v356, v347);
          v357 = sub_8427C();
          sub_86FC(v357, v358, &qword_1C5800, &unk_16F510);
        }

        v359 = *(v2 + 28808);
        v360 = *(v2 + 28792);
        v361 = *(v2 + 28784);
        v362 = *(v2 + 28496);
        v363 = *(v2 + 28472);
        *(v2 + 29736) = *(*(v2 + 27984) + 336);
        v576 = *v362;
        v571 = v362[1];
        sub_86B0(&v362[v363[6]], v360, &qword_1C5800, &unk_16F510);
        v364 = v363[8];
        v365 = &v362[v363[7]];
        v366 = *v365;
        v367 = v365[8];
        v368 = v362[v364];
        sub_106B7C();
        sub_86B0(v369, v370, v371, &unk_16F510);

        sub_103660(v335, &selRef_dosageUnit);
        if (v372)
        {
          v373 = *(v2 + 28776);
          sub_16E23C();

          v374 = 0;
        }

        else
        {
          v374 = 1;
        }

        v449 = *(v2 + 28496);
        v450 = *(v2 + 28472);
        sub_214C(*(v2 + 28776), v374, 1, *(v2 + 28528));
        LOBYTE(v449) = *(v449 + *(v450 + 44));
        v451 = swift_task_alloc();
        *(v2 + 29744) = v451;
        *v451 = v2;
        v451[1] = sub_E3150;
        v452 = *(v2 + 28816);
        v453 = *(v2 + 28792);
        v454 = *(v2 + 28784);
        v455 = *(v2 + 28776);
        v592 = v449;
        v591 = v455;
        sub_8CC0();

        return sub_167D00();
      }

      else
      {
        if (v13 != 5)
        {
LABEL_12:
          v573 = v11;
          v32 = *(v2 + 29624);
          v33 = *(v2 + 29600);
          v34 = *(v2 + 29576);
          v35 = *(v2 + 29544);
          v36 = *(v2 + 29520);
          v37 = *(v2 + 29512);
          v38 = *(v2 + 29504);
          m = *(v2 + 29224);
          sub_106120();

          sub_1069C0();

          sub_1069B4();

          sub_1061A4();
          v39 = sub_105C00();
          v37(v39);
          v16 = sub_16DBDC();
          sub_16E36C();
          sub_10699C();
          if (sub_106220())
          {
            v40 = sub_3A58C();
            sub_105654(v40);
            for (n = 32; v38; --v38)
            {
              sub_10599C(*(n + 26216));
              n += 16;
            }

            v42 = *(v2 + 29696);
            v43 = *(v2 + 29224);
            sub_10669C();
            sub_105AAC(&def_259DC, v44, v45, "Intent response code was not an expected one or is one we're not handling yet, returning nil output.");
            sub_3A5E0();

            v46 = sub_C9F8();
            v42(v46);
          }

          else
          {
            v155 = *(v2 + 29696);
            v43 = *(v2 + 29224);
            sub_106258();

            v156 = sub_1058E8();
            v155(v156);
          }

          v157 = *(v2 + 29688);
          v158 = sub_105674();
          sub_8284(v158, v2 + 1408);
          v159 = 13088;
          v160 = (v2 + 13088);
          v161 = (v2 + 1408);
          goto LABEL_204;
        }

        sub_1058C8();
        v23 = *(v2 + 29424);
        sub_106120();

        sub_1069C0();

        sub_106730();

        sub_1061A4();
        v24 = sub_105C00();
        v7(v24);
        v25 = sub_16DBDC();
        sub_16E37C();
        sub_106A08();
        if (sub_10623C())
        {
          v26 = sub_3A58C();
          sub_105858(v26);
          sub_106C14();
          if (v5)
          {
            while (1)
            {
              sub_10599C(*(v11 + v3));
              sub_1065A8();
            }
          }

          v27 = *(v2 + 29696);
          v28 = *(v2 + 29424);
          sub_106404();
          sub_105BB0(&def_259DC, v29, v30, "Received failure intent response, creating output.");
          sub_3A5E0();

          v31 = sub_105B00();
          v27(v31);
        }

        else
        {
          v375 = *(v2 + 29696);
          v0 = *(v2 + 29424);
          sub_106258();

          v376 = sub_1058E8();
          v375(v376);
        }

        sub_1069E4();
        *(v2 + 29776) = v25;
        v378 = *(v377 + 16);

        getLocalizedMedName(from:)();
        sub_106EF8();
        if (v0)
        {
          v379 = *(v2 + 28768);
          sub_8427C();
          sub_16E23C();

          v380 = 0;
        }

        else
        {
          v380 = 1;
        }

        sub_1071A0(*(v2 + 28768), v380);
        v457 = swift_task_alloc();
        *(v2 + 29784) = v457;
        *v457 = v2;
        v457[1] = sub_E4994;
        v458 = *(v2 + 28816);
        sub_C98D8(*(v2 + 28768));
        sub_106574();

        return sub_167658();
      }
  }
}

uint64_t sub_E3150()
{
  sub_3868C();
  sub_38664();
  sub_38CAC();
  v3 = v1;
  sub_C990();
  *v4 = v1;
  v5 = v1[3718];
  v6 = *v2;
  sub_38388();
  *v7 = v6;
  v1[3719] = v8;

  sub_8C88();
  v10 = *(v9 + 29736);
  if (v0)
  {
    sub_1062C8();
    v11 = v3[3599];
    v12 = v3[3598];
    v13 = v3[3597];
    sub_10642C();

    v14 = sub_8B9C();
    sub_8748(v14, v15, &unk_16F510);
    sub_8748(v12, &qword_1C5800, &unk_16F510);
    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v16 = v3[3599];
    v17 = v3[3598];
    v18 = v3[3597];
    v19 = *(v9 + 29736);

    v20 = sub_C9F8();
    sub_8748(v20, v21, &unk_16F510);
    sub_8748(v17, &qword_1C5800, &unk_16F510);
    v22 = sub_38B40();
    sub_8748(v22, v23, &unk_16F510);
  }

  sub_105A74();
  sub_8CC0();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_E334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = *(v38 + 29752);
  v40 = *(v38 + 28464);
  sub_106464();
  sub_16C43C();
  sub_37FFC();
  v41 = sub_10631C();
  sub_B9BF4(v41, v42, v43);
  sub_16C7AC();
  v44 = [v39 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v45 = *(v38 + 21680);
  v46 = *(v38 + 21688);
  sub_3820C((v38 + 21656));
  v47 = sub_17970();
  v48(v47);
  v49 = *(v38 + 21640);
  v50 = *(v38 + 21648);
  sub_38138((v38 + 21616));
  if (sub_16C40C())
  {
    v51 = sub_105C94();
  }

  else
  {
    v54 = sub_106474();
    sub_C9294(v54, v38 + 21576);
    v55 = *(v38 + 21600);
    v56 = *(v38 + 21608);
    sub_3820C((v38 + 21576));
    v57 = sub_17970();
    v58(v57);
    v59 = *(v38 + 21560);
    v60 = *(v38 + 21568);
    sub_38138((v38 + 21536));
    sub_16C3FC();
    sub_2D64((v38 + 21536));
    v51 = sub_105A84((v38 + 21576));
    if (v61)
    {
      v53 = 0;
    }

    else
    {
      v53 = 4;
    }
  }

  v62 = *(v38 + 28344);
  sub_106680(v51, v52, v53);
  sub_106DF8();
  v63 = *(v38 + 21480);
  v64 = *(v38 + 21488);
  v65 = sub_1057EC();
  v66(v65);
  v67 = *(v38 + 21440);
  v68 = *(v38 + 21448);
  sub_38138((v38 + 21416));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v69 = sub_106474();
    sub_C9294(v69, v38 + 21376);
    v70 = *(v38 + 21400);
    v71 = *(v38 + 21408);
    sub_3820C((v38 + 21376));
    v72 = sub_17970();
    v73(v72);
    v74 = *(v38 + 21360);
    v75 = *(v38 + 21368);
    sub_38138((v38 + 21336));
    sub_16C3FC();
    sub_2D64((v38 + 21336));
    sub_2D64((v38 + 21376));
    sub_2D64((v38 + 21416));
    sub_2D64((v38 + 21456));
  }

  v76 = *(v38 + 17793);
  v77 = *(v38 + 28136);
  v78 = *(v38 + 27984);
  sub_16D69C();
  v79 = *(v78 + 16);

  v185 = getMedStatus(from:)();

  sub_16BF4C();
  v80 = *(v78 + 16);

  v81 = getLocalizedMedName(from:)();
  v180 = v82;
  v183 = v81;

  if (v76)
  {
    v192 = sub_103660(*(v38 + 29720), &selRef_medSchedule);
    v84 = v83;
  }

  else
  {
    v192 = *(v38 + 29552);
    v84 = *(v38 + 29544);
  }

  v175 = *(v38 + 17794);
  v173 = *(v38 + 29728);
  v85 = *(v38 + 29720);
  sub_106C98();
  v86 = *(v38 + 28568);
  v87 = *(v38 + 28560);
  v88 = *(v38 + 28344);
  v89 = *(v38 + 28336);
  v90 = *(v38 + 28208);
  v91 = *(v38 + 28144);
  v92 = *(v38 + 28136);
  v93 = *(v38 + 28072);
  v171 = sub_103660(v94, &selRef_dosageUnit);
  v177 = v95;
  sub_86B0(v88, v89, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  sub_1055D0();
  sub_1039B4(v86, v93);
  sub_388E4();
  sub_214C(v96, v97, v98, v87);
  v99 = v90 + v91[8];
  sub_16C11C();
  v194 = v99;
  sub_8AB4();
  v191 = v100;
  sub_214C(v101, v102, v103, v100);
  v195 = v90 + v91[19];
  sub_8AB4();
  sub_214C(v104, v105, v106, v87);
  sub_1069CC(v185);
  v90[1] = sub_BA66C();
  v90[2] = v107;
  v90[3] = v183;
  v90[4] = v180;
  v90[5] = v192;
  v90[6] = v84;
  if (v84)
  {
    v108 = 0;
  }

  else
  {
    v108 = v173;
  }

  v109 = v90 + v91[9];
  v110 = (v90 + v91[10]);
  v111 = v91[11];
  sub_107110((v84 != 0) | v175);
  *v110 = sub_147C94(v108, v87);
  v110[1] = v112;
  if (v84)
  {

    v113 = 0;
    v114 = 0;
    v115 = v192;
    v116 = v84;
  }

  else
  {
    v116 = 0xE900000000000064;
    v115 = 0x656465654E207341;
    v114 = v177;
    v113 = v171;
  }

  v117 = (v90 + v111);
  v193 = *(v38 + 29752);
  v118 = 0xE500000000000000;
  if (v186)
  {
    v118 = v186;
  }

  v187 = v118;
  v119 = *(v38 + 29616);
  v120 = 0xE700000000000000;
  if (v188)
  {
    v120 = v188;
  }

  v189 = v120;
  v121 = *(v38 + 28336);
  v122 = *(v38 + 28208);
  v123 = *(v38 + 28144);
  v170 = *(v38 + 28136);
  v124 = *(v38 + 28088);
  v125 = *(v38 + 28080);
  v126 = *(v38 + 28008);
  v190 = *(v38 + 27984);
  if (!*(v38 + 29624))
  {
    v119 = 0x6E656B6154;
  }

  v181 = v119;
  v184 = *(v38 + 28072);
  if (*(v38 + 29600))
  {
    v127 = *(v38 + 29592);
  }

  else
  {
    v127 = 0x64657070696B53;
  }

  v128 = 0x646567676F4CLL;
  if (*(v38 + 29576))
  {
    v128 = *(v38 + 29568);
  }

  v176 = v128;
  v178 = v127;
  *v117 = v113;
  v117[1] = v114;
  v129 = (v122 + v123[12]);
  v130 = v122 + v123[13];
  v172 = v123[14];
  v174 = v123[15];
  v131 = (v122 + v123[16]);
  v132 = (v122 + v123[17]);
  v133 = (v122 + v123[18]);
  *v129 = v115;
  v129[1] = v116;
  sub_147DA8(v121);
  sub_8748(v121, &qword_1C57F8, &unk_172510);
  (*(v124 + 8))(v170, v125);
  sub_388E4();
  sub_214C(v134, v135, v136, v191);
  v137 = sub_1E634(v126, v194, &qword_1C63F0, &unk_1717F0);
  v145 = sub_10674C(v137, v138, v139, v140, v141, v142, v143, v144, v169, v170, v172, v174, v176, v178, v181, v184);
  *v131 = v147;
  v131[1] = v146;
  *v132 = v179;
  v132[1] = v189;
  *v133 = v182;
  v133[1] = v187;
  sub_1E634(v145, v195, &dword_1C63F8, &qword_171800);
  sub_C9294(v190 + 296, v38 + 21096);
  v148 = *(v38 + 21120);
  v149 = *(v38 + 21128);
  *(v38 + 21080) = sub_106160();
  sub_1055B8();
  *(v38 + 21088) = sub_104478(v150, 255, v151);
  sub_9910((v38 + 21056));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v152 = sub_38DA0();
  v153 = sub_60CF0(v152, 1);
  *v154 = v193;
  *(v38 + 29760) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v153);
  v155 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v156 = v193;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 29768) = v157;
  *v157 = v158;
  v157[1] = sub_E3A1C;
  v159 = *(v38 + 28464);
  v160 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_E3A1C()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 29768);
  v7 = *(v6 + 29760);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 21056));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_E3B24()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3719];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  v25 = v0[3571];
  v23 = v0[3601];
  v24 = v0[3562];
  v4 = v0[3546];
  v21 = v0[3545];
  v22 = v0[3558];
  v20 = v0[3543];
  v5 = v0[3526];
  v6 = v0[3497];
  sub_106898(v7);
  sub_106F14();
  sub_387F4();
  v8 = swift_allocObject();
  sub_106C24(v8);
  sub_1068F4();
  v0[3493] = sub_16C1BC();
  sub_106E10();

  sub_106900();
  sub_2D64(v0 + 2662);
  sub_1055A0();
  sub_103BA0(v5, v9);
  sub_8748(v20, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v22, v21);
  sub_8B60();
  sub_8748(v10, v11, v12);
  sub_1054D0();
  sub_103BA0(v24, v13);
  sub_105424();
  sub_103BA0(v25, v14);
  sub_8B60();
  sub_8748(v15, v16, v17);
  sub_8748(v26, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E4254()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v2 = v0[3680];
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3712];
  v6 = v0[3680];
  sub_106568();
  if (v7)
  {
    v8 = sub_3A58C();
    v9 = sub_1054E8(v8);
    sub_106A88(v9, v10, v11, v12);

    sub_105B90(&def_259DC, v13, v14, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v15 = sub_105A64();
  v5(v15);
  v16 = v0[3715];
  v17 = v0[3711];
  v18 = v0[3607];
  v19 = v0[3602];
  v20 = v0[3601];
  v21 = v0[3571];
  v22 = v0[3562];
  v23 = v0[3497];
  sub_8284(v0[3498] + 64, (v0 + 1456));
  sub_6361C(v0 + 1456, v0 + 256);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 256));
  sub_8748(v20, &qword_1C5800, &unk_16F510);
  sub_1054D0();
  sub_103BA0(v22, v24);
  sub_105424();
  sub_103BA0(v21, v25);
  sub_8748(v19, &qword_1C5800, &unk_16F510);
  sub_8748(v18, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E4994()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 29784);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 29792) = v8;
  *(v9 + 29800) = v0;

  sub_8C88();
  v11 = *(v10 + 29776);
  v12 = *(v1 + 28768);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_E4B08()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3724];
  v3 = v0[3557];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v4 = sub_10631C();
  sub_B9BF4(v4, v5, v6);
  sub_16C7AC();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v1 + 24, (v0 + 2762));
  sub_8284(v1 + 64, (v0 + 376));
  sub_C9294(v1 + 296, (v0 + 2752));
  v0[3726] = *(v1 + 336);
  v0[3727] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3728] = v8;
  *v8 = v9;
  v8[1] = sub_E4C68;
  v10 = v0[3724];
  v11 = v0[3557];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_E4C68()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 29824);
  v7 = *(v6 + 29816);
  v8 = *(v6 + 29808);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 22016));
  sub_C938(v2 + 3008);
  sub_2D64((v2 + 22096));
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

void sub_E4DA8()
{
  sub_3868C();
  sub_38664();
  if (v1[2770])
  {
    v3 = v1[3724];
    v4 = v1[3715];
    v5 = v1[3711];
    sub_1062A0();
    v36 = v1[3557];
    v37 = v6;
    v8 = sub_10628C(v7);
    sub_106FB8(v8);
    sub_106AD4();
    sub_387F4();
    v9 = swift_allocObject();
    sub_106810(v9);
    v1[3474] = sub_1066F0();
    sub_1069D8(27792);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v1 + 2772);
    (*(v0 + 8))(v36, v2);
    sub_105424();
    sub_103BA0(v37, v10);
    sub_8748(v38, &qword_1C5800, &unk_16F510);
    sub_8748(v39, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v11 = v1[3677];
    v12 = v1[3608];
    sub_8748(v1 + v13, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v14 = sub_38408();
    v2(v14);
    v15 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v12 = v1[3725];
      v16 = v1[3712];
      v17 = v1[3677];
      v18 = sub_106514();
      sub_105ACC(v18);

      sub_1061C4(&def_259DC, v19, v20, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v21 = sub_105B50();
      v16(v21);
    }

    else
    {
      v22 = v1[3712];
      v11 = v1[3677];
      sub_106258();

      v23 = sub_1058E8();
      v22(v23);
    }

    v24 = v1[3724];
    v25 = v1[3715];
    v26 = v1[3711];
    v40 = v1[3607];
    sub_106360();
    v27 = v1[3557];
    v28 = v1[3546];
    v29 = sub_10591C();
    sub_8284(v29, (v1 + 336));
    sub_6361C(v1 + 336, v1 + 356);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v1 + 356));
    v30 = *(v28 + 8);
    v31 = sub_387CC();
    v32(v31);
    sub_105424();
    sub_103BA0(v12, v33);
    sub_8748(v11, &qword_1C5800, &unk_16F510);
    sub_8748(v40, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E560C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v3 = v1[3676];
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3676];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C();
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 416));
  sub_6361C(v1 + 416, v1 + 436);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 436));
  sub_105424();
  sub_103BA0(v0, v20);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E5D10()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 29840);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 29848) = v8;
  *(v9 + 29856) = v0;

  sub_8C88();
  v11 = *(v10 + 29832);
  v12 = *(v1 + 28760);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_E5E84()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3731];
  v3 = v0[3556];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v4 = sub_10631C();
  sub_B9BF4(v4, v5, v6);
  sub_16C7AC();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_8284(v1 + 64, (v0 + 536));
  sub_C9294(v1 + 296, (v0 + 2822));
  v0[3733] = *(v1 + 336);
  v0[3734] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3735] = v8;
  *v8 = v9;
  v8[1] = sub_E5FDC;
  v10 = v0[3731];
  v11 = v0[3556];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_E5FDC()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 29880);
  v7 = *(v6 + 29872);
  v8 = *(v6 + 29864);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 22576));
  sub_C938(v2 + 4288);
  sub_2D64((v2 + 22776));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

void sub_E6118()
{
  sub_3868C();
  sub_38664();
  if (v1[2860])
  {
    v3 = v1[3731];
    v4 = v1[3715];
    v5 = v1[3711];
    sub_1062A0();
    v43 = v1[3556];
    v44 = v6;
    v8 = sub_10628C(v7);
    sub_106FB8(v8);
    sub_106AD4();
    sub_387F4();
    v9 = swift_allocObject();
    sub_106810(v9);
    v1[3471] = sub_1066F0();
    sub_1069D8(27768);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v1 + 2862);
    (*(v0 + 8))(v43, v2);
    sub_105424();
    sub_103BA0(v44, v10);
    sub_8748(v45, &qword_1C5800, &unk_16F510);
    sub_8748(v47, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v11 = v1[3674];
    v12 = v1[3608];
    sub_8748(v1 + v13, &qword_1C5ED0, &qword_171090);
    sub_1B9B4();
    v14 = sub_38408();
    v2(v14);
    v15 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v16 = v1[3732];
      v17 = v1[3712];
      v18 = v1[3674];
      v19 = v1[3609];
      v20 = v1[3608];
      v21 = sub_3A58C();
      sub_105ACC(v21);

      sub_1061C4(&def_259DC, v22, v23, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0();

      v24 = sub_4B4EC();
      v17(v24);
    }

    else
    {
      v25 = v1[3712];
      v26 = v1[3674];
      sub_106258();

      v27 = sub_1058E8();
      v25(v27);
    }

    v28 = v1[3731];
    v29 = v1[3715];
    v30 = v1[3711];
    sub_106438();
    v46 = v31;
    v48 = v32;
    v33 = v1[3571];
    v34 = v1[3556];
    v35 = v1[3546];
    v36 = sub_10591C();
    sub_8284(v36, (v1 + 496));
    sub_6361C(v1 + 496, v1 + 516);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v1 + 516));
    v37 = *(v35 + 8);
    v38 = sub_387CC();
    v39(v38);
    sub_105424();
    sub_103BA0(v33, v40);
    sub_8748(v46, &qword_1C5800, &unk_16F510);
    sub_8748(v48, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E6990()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v3 = v1[3673];
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3673];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C();
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationNoMatch_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 576));
  v20 = sub_106BC0();
  sub_6361C(v20, v21);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 636));
  sub_105424();
  sub_103BA0(v0, v22);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E7098()
{
  sub_76D68();
  sub_38CAC();
  v3 = v1;
  sub_C990();
  *v4 = v1;
  v5 = v1[3737];
  v6 = *v2;
  sub_38388();
  *v7 = v6;
  v1[3738] = v8;
  v1[3739] = v0;

  sub_8C88();
  v10 = *(v9 + 29888);
  if (v0)
  {
    sub_1062C8();
    v11 = v3[3594];
    sub_10642C();

    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[3594], &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_E7250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3868C();
  v207 = v40;
  sub_38664();
  v41 = *(v38 + 28440);
  v42 = *(v38 + 27984);
  v43 = [*(v38 + 29904) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v44 = *(v38 + 25640);
  v45 = *(v38 + 25648);
  sub_3820C((v38 + 25616));
  v46 = sub_17970();
  v47(v46);
  v48 = *(v38 + 25680);
  v49 = *(v38 + 25688);
  sub_38138((v38 + 25656));
  if (sub_16C40C())
  {
    v50 = sub_105C94();
  }

  else
  {
    v53 = sub_106474();
    sub_C9294(v53, v38 + 25696);
    v54 = *(v38 + 25720);
    v55 = *(v38 + 25728);
    sub_3820C((v38 + 25696));
    v56 = sub_17970();
    v57(v56);
    v58 = *(v38 + 25760);
    v59 = *(v38 + 25768);
    sub_38138((v38 + 25736));
    sub_16C3FC();
    sub_106D88();
    v50 = sub_105A84((v38 + 25696));
    if (v60)
    {
      v52 = 0;
    }

    else
    {
      v52 = 4;
    }
  }

  v61 = *(v38 + 28328);
  sub_106680(v50, v51, v52);
  sub_106DF8();
  v62 = *(v38 + 25800);
  v63 = *(v38 + 25808);
  v64 = sub_1057EC();
  v65(v64);
  v66 = *(v38 + 20720);
  v67 = *(v38 + 20728);
  sub_38138((v38 + 20696));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v68 = sub_106474();
    sub_C9294(v68, v38 + 23256);
    v69 = *(v38 + 23280);
    v70 = *(v38 + 23288);
    sub_3820C((v38 + 23256));
    v71 = sub_17970();
    v72(v71);
    v73 = *(v38 + 25600);
    v67 = *(v38 + 25608);
    sub_38138((v38 + 25576));
    sub_16C3FC();
    sub_105820();
  }

  v74 = *(v38 + 29720);
  v75 = sub_16D69C();
  v206 = v76;
  sub_10543C();
  v79 = sub_103600(v74, v77, v78);
  if (!v79 || (sub_9AE60(v79), sub_5E188(), , !v67) || (sub_146C80(v67), !v80))
  {
    sub_106130();
    v92 = *(v38 + 29272);
    v93 = *(v38 + 28864);

    sub_106F48();

    sub_106CBC();

    sub_1069B4();

    sub_105B70();
    v94 = sub_A77C4();
    v75(v94);
    v95 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v96 = *(v38 + 29912);
      v97 = *(v38 + 29696);
      v98 = *(v38 + 29272);
      v99 = sub_106514();
      sub_1054E8(v99);
      sub_1028F0(v92, v100, v101, v102);

      sub_1061C4(&def_259DC, v103, v104, "No loggedTime present nested inside intentResponse, returning GenericErrorFlow");
      sub_3A5E0();

      v105 = sub_105B50();
      v97(v105);
    }

    else
    {
      v106 = *(v38 + 29696);
      v107 = *(v38 + 29272);
      sub_106258();

      v108 = sub_1058E8();
      v106(v108);
    }

    v109 = *(v38 + 29904);
    v110 = *(v38 + 29720);
    v111 = *(v38 + 29688);
    sub_105BD0();
    v201 = *(v38 + 28440);
    v202 = *(v38 + 28568);
    v112 = *(v38 + 28368);
    v113 = *(v38 + 28360);
    v114 = *(v38 + 28328);
    v115 = *(v38 + 27976);
    sub_8284(*(v38 + 27984) + 64, v38 + 11328);
    sub_6361C((v38 + 11328), (v38 + 11488));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v38 + 11488);
    sub_8748(v114, &qword_1C57F8, &unk_172510);
    (*(v112 + 8))(v201, v113);
    sub_105424();
    sub_103BA0(v202, v116);
    sub_8748(v204, &qword_1C5800, &unk_16F510);
    sub_8748(v206, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v81 = *(v38 + 17793);
  v82 = *(v38 + 27984);
  v83 = *(v82 + 16);

  v200 = getMedStatus(from:)();

  v84 = *(v82 + 16);

  getLocalizedMedName(from:)();

  v205 = v75;
  if (v81)
  {
    v85 = *(v38 + 29720);
    sub_10543C();
    v89 = sub_103600(v86, v87, v88);
    if (v89 && (sub_9AE60(v89), sub_5E188(), , v81))
    {
      v90 = sub_16B9FC(v81);
      v197 = v91;
      v198 = v90;
    }

    else
    {
      v197 = 0;
      v198 = 0;
    }
  }

  else
  {
    v197 = *(v38 + 29544);
    v198 = *(v38 + 29552);
  }

  v203 = *(v38 + 29904);
  v119 = *(v38 + 29624);
  v120 = *(v38 + 29616);
  v121 = *(v38 + 29600);
  v122 = *(v38 + 29592);
  v123 = *(v38 + 29576);
  v124 = *(v38 + 29568);
  sub_107044();
  v125 = *(v38 + 28328);
  v189 = *(v38 + 28320);
  v126 = *(v38 + 28200);
  v127 = *(v38 + 28144);
  v128 = *(v38 + 28064);
  sub_107008();
  sub_86B0(v129, v130, &qword_1C57F8, &unk_172510);
  v196 = sub_14D35C();
  if (v123)
  {
    v131 = v124;
  }

  else
  {
    v131 = 0x646567676F4CLL;
  }

  v132 = 0xE600000000000000;
  if (v123)
  {
    v132 = v123;
  }

  v194 = v132;
  v195 = v131;
  if (v121)
  {
    v133 = v122;
  }

  else
  {
    v133 = 0x64657070696B53;
  }

  v134 = 0xE700000000000000;
  if (v121)
  {
    v134 = v121;
  }

  v192 = v134;
  v193 = v133;
  if (v119)
  {
    v135 = v120;
  }

  else
  {
    v135 = 0x6E656B6154;
  }

  v136 = 0xE500000000000000;
  if (v119)
  {
    v136 = v119;
  }

  v190 = v136;
  v191 = v135;
  sub_1055D0();
  sub_1039B4(v187, v128);
  sub_388E4();
  sub_214C(v137, v138, v139, v184);
  v186 = *(v127 + 32);
  v185 = sub_16C11C();
  sub_8AB4();
  sub_214C(v140, v141, v142, v143);
  v144 = v126 + *(v127 + 36);
  v145 = (v126 + *(v127 + 40));
  v146 = (v126 + *(v127 + 44));
  v188 = *(v127 + 76);
  v147 = sub_106150(v188);
  sub_214C(v147, v148, v149, v184);
  sub_1069CC(v200);
  sub_107070();
  *(v126 + 40) = v198;
  *(v126 + 48) = v197;
  *v144 = 0;
  *(v144 + 8) = 1;

  v150 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v145 = sub_147C94(v150, v151);
  v145[1] = v152;
  v153 = 0x656465654E207341;
  if (v197)
  {
    v153 = v198;
  }

  *v146 = 0;
  v146[1] = 0;
  v154 = v126 + *(v127 + 48);
  v155 = (v126 + *(v127 + 52));
  v156 = *(v127 + 56);
  v157 = *(v127 + 60);
  v158 = (v126 + *(v127 + 64));
  v159 = (v126 + *(v127 + 68));
  sub_106D10(v153);
  sub_147DA8(v189);
  sub_8748(v189, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v160, v161, v162, v185);
  sub_1E634(v197, v126 + v186, &qword_1C63F0, &unk_1717F0);
  *v155 = v205;
  v155[1] = v206;
  *(v126 + v156) = 0;
  *(v126 + v157) = v196 & 1;
  *v158 = v195;
  v158[1] = v194;
  *v159 = v193;
  v159[1] = v192;
  *v127 = v191;
  *(v127 + 8) = v190;
  sub_1E634(v128, v126 + v188, &dword_1C63F8, &qword_171800);
  sub_C9294(v199 + 296, v38 + 25456);
  v163 = *(v38 + 25480);
  v164 = *(v38 + 25488);
  *(v38 + 24840) = sub_106160();
  sub_1055B8();
  *(v38 + 24848) = sub_104478(v165, 255, v166);
  sub_9910((v38 + 24816));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v167 = sub_38DA0();
  v168 = sub_60CF0(v167, 1);
  *v169 = v203;
  *(v38 + 29920) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v168);
  v170 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v171 = v203;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 29928) = v172;
  *v172 = v173;
  v172[1] = sub_E7FF4;
  v174 = *(v38 + 28440);
  sub_1057CC();
  sub_8CC0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12, a13, a14, a15, a16, a17, v38, v39, v207, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_E7FF4()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 29928);
  v7 = *(v6 + 29920);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 24816));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

void sub_E80FC()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3738];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  v4 = v0[3571];
  v5 = v0[3555];
  sub_1067EC();
  v16 = v0[3541];
  v6 = v0[3525];
  v7 = v0[3497];
  sub_106898(v8);
  sub_106968();
  sub_387F4();
  v9 = swift_allocObject();
  sub_106850(v9);
  sub_1068F4();
  v0[3494] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3187);
  sub_1055A0();
  sub_103BA0(v6, v10);
  sub_8748(v16, &qword_1C57F8, &unk_172510);
  v11 = sub_107058();
  v12(v11);
  sub_105424();
  sub_103BA0(v17, v13);
  sub_8748(v18, &qword_1C5800, &unk_16F510);
  sub_8748(v19, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E87F4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v2 = v0[3658];
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3712];
  v6 = v0[3658];
  sub_106568();
  if (v7)
  {
    v8 = sub_3A58C();
    v9 = sub_1054E8(v8);
    sub_106A88(v9, v10, v11, v12);

    sub_105B90(&def_259DC, v13, v14, "Couldn't create specificMedicationStatusBothSkipped_Dialog, returning GenericErrorFlow");
    sub_3A5E0();
  }

  else
  {
  }

  v15 = sub_105A64();
  v5(v15);
  v16 = v0[3715];
  v17 = v0[3711];
  sub_105BD0();
  v18 = v0[3571];
  v19 = v0[3555];
  v20 = v0[3546];
  v21 = sub_10591C();
  sub_8284(v21, (v0 + 1476));
  sub_6361C(v0 + 1476, v0 + 1496);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1496));
  v22 = *(v20 + 8);
  v23 = sub_387CC();
  v24(v23);
  sub_105424();
  sub_103BA0(v18, v25);
  sub_8748(v28, &qword_1C5800, &unk_16F510);
  sub_8748(v29, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E8F1C()
{
  sub_107214();
  sub_C9EC();
  sub_38CAC();
  sub_C990();
  *v3 = v1;
  v4 = *(v1 + 29944);
  v5 = *v2;
  sub_38388();
  *v6 = v5;
  *(v1 + 29952) = v7;

  sub_8C88();
  v9 = *(v8 + 29936);
  if (v0)
  {
    sub_1062C8();
    sub_10642C();
  }

  else
  {
    v10 = *(v8 + 29936);
  }

  sub_105A74();
  sub_107200();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_E908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = 24936;
  v41 = *(v38 + 28432);
  v42 = *(v38 + 27984);
  v43 = [*(v38 + 29952) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  v44 = *(v38 + 24960);
  v45 = *(v38 + 24968);
  sub_3820C((v38 + 24936));
  v46 = sub_17970();
  v47(v46);
  v48 = *(v38 + 25000);
  v49 = *(v38 + 25008);
  sub_38138((v38 + 24976));
  if (sub_16C40C())
  {
    v50 = sub_105C94();
  }

  else
  {
    v39 = 25056;
    v42 = 25016;
    v53 = sub_106474();
    sub_C9294(v53, v38 + 25016);
    v54 = *(v38 + 25040);
    v55 = *(v38 + 25048);
    sub_3820C((v38 + 25016));
    v56 = sub_17970();
    v57(v56);
    v58 = *(v38 + 25080);
    v59 = *(v38 + 25088);
    sub_38138((v38 + 25056));
    sub_16C3FC();
    sub_106D88();
    v50 = sub_105A84((v38 + 25016));
    if (v60)
    {
      v52 = 0;
    }

    else
    {
      v52 = 4;
    }
  }

  v61 = *(v38 + 28312);
  sub_106680(v50, v51, v52);
  sub_106DF8();
  v62 = *(v38 + 25120);
  v63 = *(v38 + 25128);
  v64 = sub_1057EC();
  v65(v64);
  v66 = *(v38 + 25160);
  v67 = *(v38 + 25168);
  sub_38138((v38 + 25136));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v39 = 25176;
    v40 = 25216;
    v68 = sub_106474();
    sub_C9294(v68, v38 + 25176);
    v69 = *(v38 + 25200);
    v70 = *(v38 + 25208);
    sub_3820C((v38 + 25176));
    v71 = sub_17970();
    v72(v71);
    v73 = *(v38 + 25240);
    v74 = *(v38 + 25248);
    sub_38138((v38 + 25216));
    sub_16C3FC();
    sub_105820();
  }

  v75 = *(v38 + 17793);
  v76 = *(v38 + 28128);
  v77 = *(v38 + 27984);
  sub_16D69C();
  sub_1071B8();
  v234 = getMedStatus(from:)();

  sub_16BF4C();
  if (v75)
  {
    v78 = *(v38 + 29720);
    sub_10543C();
    v82 = sub_103600(v79, v80, v81);
    if (v82 && (sub_9AE60(v82), sub_1068E8(), , v77))
    {
      sub_16B9FC(v77);
      v230 = v83;
    }

    else
    {
      v230 = 0;
    }
  }

  else
  {
    sub_106F90();
  }

  sub_1067C4(*(v38 + 29952));
  v84 = *(v38 + 28312);
  v200 = v85;
  v206 = *(v38 + 28304);
  v86 = *(v38 + 28192);
  v87 = *(v38 + 28144);
  v88 = *(v38 + 28128);
  sub_106490();
  v89 = *(v38 + 28056);
  sub_106C58();
  v235 = v90;
  sub_86B0(v91, v92, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  if (v75)
  {
    v93 = v42;
  }

  else
  {
    v93 = 0x646567676F4CLL;
  }

  v94 = 0xE600000000000000;
  if (v75)
  {
    v94 = v75;
  }

  v232 = v94;
  v233 = v93;
  v227 = v40;
  if (v39)
  {
    v95 = 25136;
  }

  else
  {
    v95 = 0x6E656B6154;
  }

  v96 = 0xE500000000000000;
  if (v39)
  {
    v96 = v39;
  }

  v221 = v96;
  v223 = v95;
  sub_1055D0();
  sub_1039B4(v200, v89);
  sub_388E4();
  v97 = v176;
  sub_214C(v98, v99, v100, v176);
  v188 = sub_106EC0();
  sub_8AB4();
  sub_214C(v101, v102, v103, v104);
  v105 = v86 + v87[9];
  v106 = (v86 + v87[10]);
  v107 = v86 + v87[11];
  v201 = v87[19];
  v108 = sub_106150(v201);
  sub_214C(v108, v109, v110, v176);
  sub_1069CC(v234);
  v111 = sub_BA66C();
  sub_106A20(v111, v112, v113, v114, v115, v116, v117, v118, v176, v182, v188, v194, v201, v206, v211, v89, v218, v221, v223, v225, v227, 25096, v230);
  v119 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v106 = sub_147C94(v119, v120);
  v106[1] = v121;
  sub_1065B4(v97, v177, v183, v189, v195, v202, v207);
  v122 = sub_8748(v107, &qword_1C57F8, &unk_172510);
  v130 = sub_10701C(v122, v123, v124, v125, v126, v127, v128, v129, v178, v184, v190, v196, v203, v208, v212, v215, v219);
  v131(v130);
  sub_388E4();
  v135 = sub_214C(v132, v133, v134, v191);
  v141 = sub_106EA4(v135, v136, &qword_1C63F0, &unk_1717F0, v137, v138, v139, v140, v179, v185, v191, v197);
  sub_1064CC(v141, v142, v143, v144, v145, v146, v147, v148, v180, v186, v192, v198, v204, v209, v213, v216, v220, v222, v224, v226, v228, v229, v231, v232, v233);
  sub_106E88(v149, v150, &dword_1C63F8, &qword_171800, v151, v152, v153, v154, v181, v187, v193, v199, v205, v210, v214, v217);
  sub_C9294(v235 + 296, v38 + 25296);
  v155 = *(v38 + 25320);
  v156 = *(v38 + 25328);
  *(v38 + 25360) = sub_106160();
  sub_1055B8();
  *(v38 + 25368) = sub_104478(v157, 255, v158);
  sub_9910((v38 + 25336));
  sub_105584();
  sub_106D70();
  sub_10658C();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v159 = sub_38DA0();
  v160 = sub_60CF0(v159, 1);
  *v161 = v236;
  *(v38 + 29960) = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v160);
  v162 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v163 = v236;
  swift_task_alloc();
  sub_179E8();
  *(v38 + 29968) = v164;
  *v164 = v165;
  v164[1] = sub_E95D0;
  v166 = *(v38 + 28432);
  v167 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v167, v168, v169, v170, v171, v172, v173, v174, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}