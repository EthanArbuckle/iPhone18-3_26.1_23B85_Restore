uint64_t sub_329B4()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 3536);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 3544) = v8;

  sub_8C88();
  v11 = *(v10 + 3528);
  v12 = *(v1 + 3304);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_32B28()
{
  sub_C9EC();
  v1 = *(v0 + 3456);
  v2 = *(v0 + 3056);
  v3 = [*(v0 + 3544) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v2 + 24, v0 + 1736);
  sub_8284(v2 + 64, v0 + 1136);
  sub_8388(v2 + 296, v0 + 1656);
  *(v0 + 3552) = *(v2 + 336);
  *(v0 + 3560) = *(v2 + 344);

  swift_task_alloc();
  sub_179E8();
  *(v0 + 3568) = v4;
  *v4 = v5;
  v4[1] = sub_32C64;
  v6 = *(v0 + 3544);
  v7 = *(v0 + 3456);
  sub_385E4();
  sub_38F74();

  return sub_9AEDC();
}

uint64_t sub_32C64()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = v4[446];
  v6 = v4[445];
  v7 = v4[444];
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 1656));
  sub_C938(v2 + 1136);
  sub_2D64((v2 + 1736));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_32D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  if (*(v44 + 2000))
  {
    v46 = *(v44 + 3544);
    v47 = *(v44 + 3456);
    v48 = *(v44 + 3440);
    v49 = *(v44 + 3432);
    v50 = *(v44 + 3040);
    sub_17464((v44 + 1976), v44 + 2056);
    sub_8388(v44 + 2056, v44 + 2256);
    sub_387F4();
    swift_allocObject();
    sub_3888C((v44 + 2256));
    v51 = sub_16C1DC();
    sub_38964(v51);
    *(v44 + 3032) = sub_384FC();
    sub_16C4EC();

    sub_2D64((v44 + 2056));
    v52 = *(v48 + 8);
    v53 = sub_C9F8();
    v54(v53);
  }

  else
  {
    sub_385F4();
    v55 = *(v44 + 3384);
    v56 = *(v44 + 3312);
    sub_8748(v44 + 1976, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v57 = sub_38408();
    v45(v57);
    v58 = sub_16DBDC();
    v59 = sub_16E36C();
    if (sub_1BA1C(v59))
    {
      v60 = sub_1BA38();
      sub_1BA50(v60);
      sub_1B9D0(&def_259DC, v61, v62, "Couldn't create output, returning GenericErrorFlow");
      sub_1BA00();
    }

    v63 = *(v44 + 3544);
    v64 = *(v44 + 3520);
    v65 = *(v44 + 3440);
    a34 = *(v44 + 3432);
    a35 = *(v44 + 3456);
    v66 = *(v44 + 3384);
    v67 = *(v44 + 3320);
    v68 = *(v44 + 3312);
    v69 = *(v44 + 3056);
    v70 = *(v44 + 3040);

    v71 = sub_387CC();
    v64(v71);
    sub_8284(v69 + 64, v44 + 16);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v44 + 16);
    (*(v65 + 8))(a35, a34);
  }

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = v38[422];
  v41 = v38[414];
  sub_385D8();
  swift_beginAccess();
  v42 = sub_38408();
  v39(v42);
  sub_16DBDC();
  v43 = sub_16E36C();
  if (sub_1BA1C(v43))
  {
    v44 = sub_1BA38();
    sub_1BA50(v44);
    sub_1B9D0(&def_259DC, v45, v46, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v47 = v38[440];
  sub_38620();
  v48 = v38[422];
  sub_38724();
  v49 = sub_386B4();
  v47(v49);
  sub_8284(v40 + 64, (v38 + 82));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v38 + 82));
  v50 = sub_38930();
  v51(v50);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_33308()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 3584);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 3592) = v8;

  sub_8C88();
  v11 = *(v10 + 3576);
  v12 = *(v1 + 3296);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_3347C()
{
  sub_C9EC();
  v1 = 0xD000000000000010;
  v2 = *(v0 + 3456);
  v3 = *(v0 + 3056);
  v4 = [*(v0 + 3592) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v3 + 24, v0 + 2296);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2328);
  sub_3820C((v0 + 2296));
  v7 = sub_17970();
  v8(v7);
  v9 = *(v0 + 2360);
  v10 = *(v0 + 2368);
  sub_38138((v0 + 2336));
  if ((sub_16C40C() & 1) == 0)
  {
    sub_8388(v3 + 24, v0 + 2376);
    v11 = *(v0 + 2400);
    v12 = *(v0 + 2408);
    sub_3820C((v0 + 2376));
    v13 = sub_17970();
    v14(v13);
    v15 = *(v0 + 2440);
    v16 = *(v0 + 2448);
    sub_38138((v0 + 2416));
    sub_16C3FC();
    sub_2D64((v0 + 2416));
    sub_2D64((v0 + 2376));
  }

  sub_2D64((v0 + 2336));
  sub_2D64((v0 + 2296));
  v17 = *(v0 + 3272);
  sub_16BE8C();
  sub_8388(v3 + 24, v0 + 2456);
  v18 = *(v0 + 2480);
  v19 = *(v0 + 2488);
  sub_3820C((v0 + 2456));
  v20 = sub_17970();
  v21(v20);
  v22 = *(v0 + 2520);
  v23 = *(v0 + 2528);
  sub_38138((v0 + 2496));
  if (sub_16C40C())
  {
    sub_2D64((v0 + 2496));
    sub_2D64((v0 + 2456));
    v24 = "calendarIdentifier";
  }

  else
  {
    sub_8388(v3 + 24, v0 + 2536);
    v25 = *(v0 + 2560);
    v26 = *(v0 + 2568);
    sub_3820C((v0 + 2536));
    v27 = sub_17970();
    v28(v27);
    v29 = *(v0 + 2600);
    v30 = *(v0 + 2608);
    sub_38138((v0 + 2576));
    sub_16C3FC();
    sub_2D64((v0 + 2576));
    sub_2D64((v0 + 2536));
    sub_2D64((v0 + 2496));
    sub_2D64((v0 + 2456));
    sub_38CE8();
    if (v31)
    {
      v1 = v32;
    }

    if (v31)
    {
      v24 = v34;
    }

    else
    {
      v24 = v33;
    }
  }

  *(v0 + 3608) = v24;
  *(v0 + 3600) = v1;
  v35 = swift_task_alloc();
  *(v0 + 3616) = v35;
  *v35 = v0;
  v36 = sub_383B8(v35);

  return sub_66A84(v36, v37);
}

uint64_t sub_3375C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3616);
  v6 = *v0;
  *v3 = v6;
  v2[453] = v7;
  v2[454] = v8;

  v9 = swift_task_alloc();
  v2[455] = v9;
  *v9 = v6;
  v10 = sub_3822C(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_33878()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3640);
  v6 = *v0;
  *v3 = v6;
  v2[456] = v7;
  v2[457] = v8;

  v9 = swift_task_alloc();
  v2[458] = v9;
  *v9 = v6;
  v10 = sub_38398(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_33994()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 3664);
  *v2 = *v0;
  *(v1 + 3672) = v5;
  *(v1 + 3680) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_33A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_38C90();
  sub_38E2C();
  v134 = *(v36 + 3680);
  v135 = *(v36 + 3672);
  v37 = *(v36 + 3224);
  v38 = *(v36 + 3208);
  v39 = *(v36 + 3176);
  v40 = *(v36 + 3056);
  v41 = *(v36 + 3048);
  sub_16E23C();
  sub_38B4C();
  v42 = (v37 + *(v38 + 20));
  *v42 = 0xD000000000000023;
  v42[1] = v43;
  v44 = (v37 + *(v38 + 24));
  *v44 = 0xD000000000000036;
  v44[1] = 0x800000000017BF80;
  v45 = *(v40 + 16);

  HIDWORD(a36) = getMedStatus(from:)();

  sub_16BF4C();
  v46 = sub_372A0(v41, &selRef_matchingMeds);
  if (v46 && (v47 = sub_9AE60(v46), , v47))
  {
    v48 = sub_16BA08(v47);
    v124 = v49;
    v125 = v48;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v50 = sub_372A0(*(v36 + 3048), &selRef_matchingMeds);
  if (v50 && (v51 = sub_9AE60(v50), , v51))
  {
    v119 = sub_16B9FC(v51);
    v120 = v52;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v131 = *(v36 + 3680);
  v128 = *(v36 + 3656);
  v129 = *(v36 + 3648);
  v122 = *(v36 + 3632);
  v123 = *(v36 + 3624);
  v127 = *(v36 + 3608);
  v126 = *(v36 + 3600);
  v133 = *(v36 + 3592);
  v115 = *(v36 + 3264);
  v53 = *(v36 + 3224);
  v54 = *(v36 + 3208);
  v132 = *(v36 + 3200);
  v55 = *(v36 + 3192);
  v56 = *(v36 + 3184);
  v109 = *(v36 + 3176);
  v117 = *(v36 + 3160);
  v118 = *(v36 + 3152);
  v57 = *(v36 + 3144);
  v121 = v57;
  v116 = *(v36 + 3128);
  v130 = *(v36 + 3056);
  sub_372FC(*(v36 + 3272), v115);
  *(v36 + 2640) = &type metadata for WellnessFeatureFlagsKey;
  *(v36 + 2648) = sub_3736C();
  *(v36 + 2616) = 4;
  HIDWORD(a24) = sub_16C86C();
  sub_2D64((v36 + 2616));
  sub_381F4();
  sub_374DC(v53, v57, v58);
  sub_388E4();
  sub_214C(v59, v60, v61, v54);
  v114 = v56[8];
  v108 = sub_16C11C();
  sub_8AB4();
  sub_214C(v62, v63, v64, v65);
  v107 = v55 + v56[9];
  v66 = (v55 + v56[10]);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = (v55 + v56[11]);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v55 + v56[12]);
  *v68 = 0;
  v68[1] = 0xE000000000000000;
  v69 = (v55 + v56[13]);
  sub_38B4C();
  *v69 = 0xD000000000000010;
  v69[1] = v70;
  v111 = v56[14];
  *(v55 + v111) = 0;
  v110 = v56[15];
  *(v55 + v110) = 0;
  v112 = (v55 + v56[16]);
  *v112 = 0;
  v112[1] = 0;
  v71 = (v55 + v56[17]);
  *v71 = 0;
  v71[1] = 0;
  v72 = (v55 + v56[18]);
  *v72 = 0;
  v72[1] = 0;
  v113 = v56[19];
  sub_8AB4();
  sub_214C(v73, v74, v75, v54);
  *v55 = BYTE4(a36) & 1;
  *(v55 + 8) = sub_BA66C();
  *(v55 + 16) = v76;
  *(v55 + 24) = v125;
  *(v55 + 32) = v124;
  *(v55 + 40) = v119;
  *(v55 + 48) = v120;
  *v107 = 0;
  *(v107 + 8) = 1;
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v77 = 0x656465654E207341;
  if (v120)
  {
    v77 = v119;
  }

  v78 = 0xE900000000000064;
  if (v120)
  {
    v78 = v120;
  }

  *v67 = 0;
  v67[1] = 0;
  *v68 = v77;
  v68[1] = v78;

  sub_147DA8(v115);
  sub_8748(v115, &qword_1C57F8, &unk_172510);
  (*(v117 + 8))(v109, v118);
  v79 = sub_38744();
  sub_214C(v79, v80, v81, v108);
  sub_38EFC(&qword_1C63F0, &unk_1717F0, v114);
  v82 = 0x646567676F4CLL;
  if (v122)
  {
    v82 = v123;
  }

  *v69 = v126;
  v69[1] = v127 | 0x8000000000000000;
  v83 = 0xE600000000000000;
  if (v122)
  {
    v83 = v122;
  }

  v84 = 0x64657070696B53;
  if (v128)
  {
    v84 = v129;
  }

  *(v55 + v111) = 0;
  *(v55 + v110) = BYTE4(a24) & 1;
  v85 = 0xE700000000000000;
  if (v128)
  {
    v85 = v128;
  }

  *v112 = v82;
  v112[1] = v83;
  v86 = v135;
  if (!v134)
  {
    v86 = 0x6E656B6154;
  }

  *v71 = v84;
  v71[1] = v85;
  v87 = 0xE500000000000000;
  if (v134)
  {
    v87 = v131;
  }

  *v72 = v86;
  v72[1] = v87;
  sub_3769C(v121, v55 + v113, &dword_1C63F8, &qword_171800);
  sub_37478(v55, v132);
  sub_8388(v130 + 296, v36 + 1336);
  v88 = *(v36 + 1368);
  sub_2D20((v36 + 1336), *(v36 + 1360));
  *(v36 + 1320) = type metadata accessor for WellnessSnippets();
  sub_381DC();
  *(v36 + 1328) = sub_37C38(v89, 255, v90);
  v91 = sub_9910((v36 + 1296));
  sub_374DC(v132, v91, type metadata accessor for SpecificMedCompletedLogModel);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v92 = sub_38DA0();
  *(v36 + 3688) = v92;
  *(v92 + 16) = xmmword_170F70;
  *(v92 + 32) = v133;
  v93 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v94 = v133;
  swift_task_alloc();
  sub_179E8();
  *(v36 + 3696) = v95;
  *v95 = v96;
  v95[1] = sub_3406C;
  v97 = *(v36 + 3456);
  sub_38C74();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v98, v99, v100, v101, v102, v103, v104, v105, a9, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, a24, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, a36, v132, v133);
}

uint64_t sub_3406C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3696);
  v6 = *(v4 + 3688);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 1296));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  v45 = *(v44 + 3592);
  v63 = *(v44 + 3456);
  v46 = *(v44 + 3440);
  v47 = *(v44 + 3432);
  v48 = *(v44 + 3272);
  v49 = *(v44 + 3224);
  v50 = *(v44 + 3200);
  v51 = *(v44 + 3040);
  sub_2D64((v44 + 1336));
  sub_8388(v44 + 2656, v44 + 2216);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v44 + 2216));
  v52 = sub_16C1DC();
  sub_389CC(v52);
  *(v44 + 3008) = sub_384FC();
  sub_16C4EC();

  sub_2D64((v44 + 2656));
  sub_375C0(v50, type metadata accessor for SpecificMedCompletedLogModel);
  sub_381C4();
  sub_375C0(v49, v53);
  sub_8748(v48, &qword_1C57F8, &unk_172510);
  (*(v46 + 8))(v63, v47);

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v63, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_343EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = v38[421];
  v41 = v38[414];
  sub_385D8();
  swift_beginAccess();
  v42 = sub_38408();
  v39(v42);
  sub_16DBDC();
  v43 = sub_16E36C();
  if (sub_1BA1C(v43))
  {
    v44 = sub_1BA38();
    sub_1BA50(v44);
    sub_1B9D0(&def_259DC, v45, v46, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v47 = v38[440];
  sub_38620();
  v48 = v38[421];
  sub_38724();
  v49 = sub_386B4();
  v47(v49);
  sub_8284(v40 + 64, (v38 + 22));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v38 + 22));
  v50 = sub_38930();
  v51(v50);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_34620()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 3712);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 3720) = v8;

  sub_8C88();
  v11 = *(v10 + 3704);
  v12 = *(v1 + 3288);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_34F14()
{
  sub_C9EC();
  v3 = v2;
  sub_C9D4();
  v5 = v4;
  sub_38388();
  *v6 = v5;
  v8 = *(v7 + 3744);
  v9 = *(v7 + 3736);
  v10 = *v1;
  sub_C990();
  *v11 = v10;
  *(v5 + 3752) = v0;

  if (!v0)
  {
    *(v5 + 3760) = v3;
  }

  sub_8ACC();
  sub_38F74();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_35040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  v41 = v40[470];
  v42 = v40[466];
  v43 = v40[432];
  v44 = v40[430];
  v90 = v40[429];
  v86 = v40[465];
  v88 = v40[407];
  v45 = v40[388];
  v82 = v40[387];
  v84 = v40[390];
  v46 = v40[382];
  v47 = v40[381];
  v48 = v40[380];
  sub_3898C(v40[386]);

  sub_8388(v46 + 64, (v40 + 272));
  v49 = v40[276];
  sub_2D20(v40 + 272, v40[275]);
  sub_16C2FC();
  sub_2D64(v40 + 272);
  sub_16C4FC();

  (*(v45 + 8))(v84, v82);
  sub_8748(v88, &qword_1C57F8, &unk_172510);
  (*(v44 + 8))(v43, v90);

  sub_37F20();
  v61 = v51;
  v62 = v50;
  v63 = v40[416];
  v64 = v40[413];
  v65 = v40[412];
  v66 = v40[411];
  v67 = v40[410];
  v68 = v40[409];
  v69 = v40[408];
  v70 = v40[407];
  v71 = v40[406];
  v72 = v40[405];
  v73 = v40[404];
  v74 = v40[403];
  v75 = v40[402];
  v76 = v40[400];
  v77 = v40[399];
  v78 = v40[397];
  v79 = v40[396];
  v80 = v40[393];
  v81 = v40[392];
  v83 = v40[391];
  v85 = v40[390];
  v87 = v40[389];
  v89 = v40[386];
  v91 = v40[384];

  sub_C9BC();
  sub_38AD0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v83, v85, v87, v89, v91, a37, a38, a39, a40);
}

uint64_t sub_3535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  v39 = v38[469];
  v40 = v38[466];
  v41 = v38[439];
  v42 = v38[438];
  v43 = v38[437];
  v44 = v38[420];
  v45 = v38[414];
  v46 = v38[382];
  v47 = v38[381];
  sub_3898C(v38[386]);

  sub_385D8();
  swift_beginAccess();
  v48 = sub_38DF0();
  v42(v48);
  v49 = sub_16DBDC();
  v50 = sub_16E37C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = sub_1BA38();
    *v51 = 0;
    _os_log_impl(&def_259DC, v49, v50, "Couldn't create loggenericmedrejectedconfirmationresultset pattern, returning GenericErrorFlow", v51, 2u);
    sub_8A2C();
  }

  v73 = v38[432];
  v74 = v38[466];
  v52 = v38[430];
  v53 = v38[420];
  v54 = v38[415];
  v55 = v38[414];
  v71 = v38[407];
  v72 = v38[429];
  v69 = v38[465];
  v70 = v38[390];
  v56 = v38[388];
  v57 = v38[387];
  v58 = v38[382];
  v59 = v38[380];

  (*(v54 + 8))(v53, v55);
  sub_8284(v58 + 64, (v38 + 62));
  sub_82E0();
  sub_16C4EC();

  sub_8334((v38 + 62));
  (*(v56 + 8))(v70, v57);
  sub_8748(v71, &qword_1C57F8, &unk_172510);
  (*(v52 + 8))(v73, v72);

  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v69, v70, v71, v72, v73, v74, a35, a36, a37, a38);
}

uint64_t sub_35678()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 3800);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 3808) = v8;

  sub_38A38();
  v11 = *(v10 + 3792);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 3792);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_357A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_3868C();
  sub_38664();
  v69 = v20[476];
  v21 = v20[436];
  v22 = v20[435];
  v23 = v20[434];
  v24 = v20[433];
  v25 = v20[431];
  v26 = v20[428];
  v27 = v20[427];
  v28 = v20[425];
  v29 = v20[382];
  sub_16C43C();
  v30 = sub_38DF0();
  v24(v30);
  sub_16C75C();
  v31 = v28;
  v32 = v29;
  v22(v26, v31);
  sub_16C7AC();
  v33 = [v69 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v29 + 24, (v20 + 267));
  v34 = v20[270];
  v35 = v20[271];
  sub_3820C(v20 + 267);
  v36 = sub_17970();
  v37(v36);
  v38 = v20[265];
  v39 = v20[266];
  sub_38138(v20 + 262);
  if ((sub_16C40C() & 1) == 0)
  {
    sub_8388(v32 + 24, (v20 + 252));
    v40 = v20[255];
    v41 = v20[256];
    sub_3820C(v20 + 252);
    v42 = sub_17970();
    v43(v42);
    v44 = v20[225];
    v45 = v20[226];
    sub_38138(v20 + 222);
    sub_16C3FC();
    sub_2D64(v20 + 222);
    sub_2D64(v20 + 252);
  }

  sub_2D64(v20 + 262);
  sub_2D64(v20 + 267);
  sub_38E44();
  v46 = v20[405];
  sub_16BE8C();
  sub_8388(v32 + 24, (v20 + 212));
  v47 = v20[215];
  v48 = v20[216];
  sub_3820C(v20 + 212);
  v49 = sub_17970();
  v50(v49);
  v51 = v20[205];
  v52 = v20[206];
  sub_38138(v20 + 202);
  if (sub_16C40C())
  {
    sub_2D64(v20 + 202);
    sub_2D64(v20 + 212);
    v53 = "calendarIdentifier";
  }

  else
  {
    sub_8388(v32 + 24, (v20 + 337));
    v54 = v20[340];
    v55 = v20[341];
    sub_3820C(v20 + 337);
    v56 = sub_17970();
    v57(v56);
    v58 = v20[175];
    v59 = v20[176];
    sub_38138(v20 + 172);
    sub_16C3FC();
    sub_2D64(v20 + 172);
    sub_2D64(v20 + 337);
    sub_2D64(v20 + 202);
    sub_2D64(v20 + 212);
    sub_38CE8();
    if (v60)
    {
      v27 = v61;
    }

    if (v60)
    {
      v53 = v63;
    }

    else
    {
      v53 = v62;
    }
  }

  v20[478] = v53;
  v20[477] = v27;
  v64 = swift_task_alloc();
  v20[479] = v64;
  *v64 = v20;
  sub_383B8(v64);
  sub_8CC0();

  return sub_66A84(v65, v66);
}

uint64_t sub_35AF4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3832);
  v6 = *v0;
  *v3 = v6;
  v2[480] = v7;
  v2[481] = v8;

  v9 = swift_task_alloc();
  v2[482] = v9;
  *v9 = v6;
  v10 = sub_3822C(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_35C10()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3856);
  v6 = *v0;
  *v3 = v6;
  v2[483] = v7;
  v2[484] = v8;

  v9 = swift_task_alloc();
  v2[485] = v9;
  *v9 = v6;
  v10 = sub_38398(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_35D2C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3880);
  v6 = *v0;
  *v3 = v6;
  v2[486] = v7;
  v2[487] = v8;

  v9 = swift_task_alloc();
  v2[488] = v9;
  *v9 = v6;
  v10 = sub_38554(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_35E54()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 3904);
  v8 = *v0;
  sub_C990();
  *v9 = v8;
  v4[489] = v10;

  v4[490] = v2;
  v11 = swift_task_alloc();
  v4[491] = v11;
  *v11 = v8;
  sub_3853C(v11);

  return sub_66E84();
}

uint64_t sub_35F78()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[369] = v0;
  v1[370] = v3;
  v1[371] = v4;
  sub_38800();
  v6 = *(v5 + 3928);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  *(v10 + 3936) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_364F0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 3952);
  v6 = *(v4 + 3944);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 1536));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_365F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  v45 = *(v44 + 3808);
  v46 = *(v44 + 3448);
  v47 = *(v44 + 3440);
  v48 = *(v44 + 3432);
  v49 = *(v44 + 3240);
  v50 = *(v44 + 3216);
  v64 = *(v44 + 3456);
  v65 = *(v44 + 3072);
  v51 = *(v44 + 3040);
  sub_2D64((v44 + 1496));
  sub_8388(v44 + 1456, v44 + 1576);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v44 + 1576));
  v52 = sub_16C1DC();
  sub_8D14(v52);
  *(v44 + 3024) = sub_384FC();
  sub_16C4EC();

  sub_2D64((v44 + 1456));
  sub_381C4();
  sub_375C0(v50, v53);
  sub_8748(v49, &qword_1C57F8, &unk_172510);
  v54 = *(v47 + 8);
  v54(v46, v48);
  v54(v64, v48);
  sub_38418();

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, v65, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_36874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  v39 = v38[472];
  v40 = v38[471];
  v41 = v38[437];
  v42 = v38[416];
  v43 = v38[414];
  sub_385D8();
  swift_beginAccess();
  v44 = sub_38408();
  v40(v44);
  sub_16DBDC();
  v45 = sub_16E37C();
  if (sub_1BA1C(v45))
  {
    v46 = sub_1BA38();
    sub_1BA50(v46);
    sub_1B9D0(&def_259DC, v47, v48, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v49 = v38[473];
  sub_38620();
  v50 = v38[416];
  sub_38724();
  v51 = sub_386B4();
  v49(v51);
  sub_8284(v42 + 64, (v38 + 42));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v38 + 42));
  v52 = sub_38930();
  v53(v52);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_36AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = v38[418];
  v41 = v38[414];
  sub_385D8();
  swift_beginAccess();
  v42 = sub_38408();
  v39(v42);
  sub_16DBDC();
  v43 = sub_16E37C();
  if (sub_1BA1C(v43))
  {
    v44 = sub_1BA38();
    sub_1BA50(v44);
    sub_1B9D0(&def_259DC, v45, v46, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v47 = v38[440];
  sub_38620();
  v48 = v38[418];
  sub_38724();
  v49 = sub_386B4();
  v47(v49);
  sub_8284(v40 + 64, (v38 + 122));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v38 + 122));
  v50 = sub_38930();
  v51(v50);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_36CE4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v21 = sub_3B35C(*a2);
  v22 = type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters(0);
  v23 = a1 + v22[14];
  *v23 = v21;
  *(v23 + 8) = 0;
  v24 = v22[12];
  sub_8748(a1 + v24, &qword_1C5800, &unk_16F510);
  v25 = sub_16D5CC();
  sub_214C(a1 + v24, 1, 1, v25);
  v26 = *(a3 + 16);

  getMedStatus(from:)();

  sub_16E23C();
  sub_214C(v20, 0, 1, v25);
  sub_3769C(v20, a1 + v22[15], &qword_1C5800, &unk_16F510);
  v27 = sub_372A0(v38, &selRef_matchingMeds);
  if (v27)
  {
    v28 = v27;
    if (sub_3B35C(v27))
    {
      sub_3B360(0, (v28 & 0xC000000000000001) == 0, v28);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = sub_16E48C();
      }

      else
      {
        v29 = *(v28 + 32);
      }

      v30 = v29;

      sub_146C80(v30);
      if (v31)
      {
        sub_16E23C();

        sub_214C(v15, 0, 1, v25);
        (*(*(v25 - 8) + 32))(v18, v15, v25);
        sub_214C(v18, 0, 1, v25);
        return sub_3769C(v18, a1 + v22[11], &qword_1C5800, &unk_16F510);
      }
    }

    else
    {
    }
  }

  v32 = 1;
  sub_214C(v15, 1, 1, v25);
  sub_16BF4C();
  v33 = sub_16BF5C();
  sub_214C(v10, 0, 1, v33);
  sub_9BFAC(v10);
  v35 = v34;
  sub_8748(v10, &qword_1C57E0, &unk_171C60);
  if (v35)
  {
    sub_16E23C();

    v32 = 0;
  }

  sub_214C(v18, v32, 1, v25);
  if (sub_369C(v15, 1, v25) != 1)
  {
    sub_8748(v15, &qword_1C5800, &unk_16F510);
  }

  return sub_3769C(v18, a1 + v22[11], &qword_1C5800, &unk_16F510);
}

uint64_t sub_370D4()
{
  v1 = *(v0 + 16);

  sub_2D64((v0 + 24));
  sub_C938(v0 + 64);
  sub_37C80(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_2D64((v0 + 296));
  v2 = *(v0 + 336);

  v3 = *(v0 + 344);

  v4 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_2D64((v0 + 360));
  return v0;
}

uint64_t sub_37150()
{
  sub_370D4();

  return _swift_deallocClassInstance(v0, 401, 7);
}

uint64_t sub_371CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return sub_25D60();
}

uint64_t sub_37268()
{
  type metadata accessor for GenericMedLoggingFlow();

  return sub_16C37C();
}

uint64_t sub_372A0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_16D86C();
  v4 = sub_16E2CC();

  return v4;
}

uint64_t sub_372FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3736C()
{
  result = qword_1C6770;
  if (!qword_1C6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6770);
  }

  return result;
}

uint64_t sub_373C0()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_373F4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_374DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_8B38(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3753C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_375C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_37618()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_3769C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  sub_8B38(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

unint64_t sub_37750()
{
  result = qword_1C6798;
  if (!qword_1C6798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6798);
  }

  return result;
}

uint64_t sub_377C0()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37844()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_378C8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_3794C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_379D4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37A5C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37AE0()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37B64()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37BE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_37C38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_37C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = a9 >> 6;
  if (v9 != 1)
  {
    if (v9)
    {
      return result;
    }
  }
}

uint64_t sub_37CFC()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_37D94()
{
  result = v0[1202];
  v2 = v0[1201];
  v3 = v0[1200];
  v4 = v0[1199];
  v5 = v0[1198];
  v6 = v0[1197];
  v7 = v0[1196];
  v8 = v0[1195];
  v9 = v0[1194];
  v10 = v0[1193];
  v12 = v0[1192];
  v13 = v0[1191];
  v14 = v0[1190];
  v15 = v0[1189];
  v16 = v0[1188];
  v17 = v0[1187];
  v18 = v0[1186];
  v19 = v0[1185];
  v20 = v0[1184];
  v21 = v0[1183];
  v22 = v0[1182];
  v23 = v0[1181];
  v24 = v0[1180];
  v25 = v0[1179];
  v26 = v0[1178];
  v27 = v0[1177];
  v28 = v0[1176];
  v29 = v0[1175];
  v30 = v0[1174];
  v31 = v0[1173];
  v32 = v0[1172];
  v33 = v0[1171];
  v34 = v0[1170];
  v35 = v0[1169];
  v36 = v0[1168];
  v37 = v0[1167];
  v11 = v0[1164];
  v38 = v0[1163];
  return result;
}

uint64_t sub_37E68()
{
  result = v0[1202];
  v2 = v0[1201];
  v3 = v0[1200];
  v4 = v0[1199];
  v5 = v0[1198];
  v6 = v0[1197];
  v7 = v0[1196];
  v8 = v0[1195];
  v9 = v0[1194];
  v10 = v0[1193];
  v11 = v0[1192];
  v12 = v0[1191];
  return result;
}

uint64_t sub_37E9C()
{
  v13 = v0[1160];
  v3 = v0[1158];
  *(v1 - 224) = v0[1159];
  *(v1 - 216) = v3;
  v4 = v0[1156];
  *(v1 - 208) = v0[1157];
  *(v1 - 200) = v4;
  v5 = v0[1154];
  *(v1 - 192) = v0[1155];
  *(v1 - 184) = v5;
  v6 = v0[1150];
  *(v1 - 176) = v0[1153];
  *(v1 - 168) = v6;
  v7 = v0[1148];
  *(v1 - 160) = v0[1149];
  *(v1 - 152) = v7;
  v8 = v0[1146];
  *(v1 - 144) = v0[1147];
  *(v1 - 136) = v8;
  v9 = v0[1143];
  *(v1 - 128) = v0[1145];
  *(v1 - 120) = v9;
  v10 = v0[1140];
  *(v1 - 112) = v0[1141];
  *(v1 - 104) = v10;
  v11 = v0[1138];
  *(v1 - 96) = v0[1139];
  *(v1 - 88) = v11;
}

uint64_t sub_37F20()
{
  result = v0[432];
  v2 = v0[431];
  v3 = v0[428];
  v4 = v0[427];
  v5 = v0[424];
  v6 = v0[423];
  v7 = v0[422];
  v8 = v0[421];
  v9 = v0[420];
  v10 = v0[419];
  v11 = v0[418];
  v12 = v0[417];
  return result;
}

uint64_t sub_37F54()
{
  v7 = v0[416];
  v8 = v0[413];
  v9 = v0[412];
  v10 = v0[411];
  v11 = v0[410];
  v12 = v0[409];
  v13 = v0[408];
  v14 = v0[407];
  v15 = v0[406];
  v16 = v0[405];
  v17 = v0[404];
  v18 = v0[403];
  v19 = v0[402];
  v20 = v0[400];
  v21 = v0[399];
  v22 = v0[397];
  v23 = v0[396];
  v3 = v0[392];
  *(v1 - 136) = v0[393];
  *(v1 - 128) = v3;
  v4 = v0[390];
  *(v1 - 120) = v0[391];
  *(v1 - 112) = v4;
  v5 = v0[386];
  *(v1 - 104) = v0[389];
  *(v1 - 96) = v5;
  *(v1 - 88) = v0[384];
}

uint64_t sub_38014()
{
  v11 = v0[1190];
  v12 = v0[1189];
  v13 = v0[1188];
  v14 = v0[1187];
  v15 = v0[1186];
  v16 = v0[1185];
  v17 = v0[1184];
  v18 = v0[1183];
  v19 = v0[1182];
  v20 = v0[1181];
  v21 = v0[1180];
  v22 = v0[1179];
  v23 = v0[1178];
  v24 = v0[1177];
  v25 = v0[1176];
  v26 = v0[1175];
  v27 = v0[1174];
  v28 = v0[1173];
  v29 = v0[1172];
  v30 = v0[1171];
  v31 = v0[1170];
  v32 = v0[1169];
  v33 = v0[1168];
  v34 = v0[1167];
  v35 = v0[1164];
  v36 = v0[1163];
  v37 = v0[1160];
  v38 = v0[1159];
  v39 = v0[1158];
  v40 = v0[1157];
  v3 = v0[1155];
  *(v1 - 240) = v0[1156];
  *(v1 - 232) = v3;
  v4 = v0[1153];
  *(v1 - 224) = v0[1154];
  *(v1 - 216) = v4;
  v5 = v0[1149];
  *(v1 - 208) = v0[1150];
  *(v1 - 200) = v5;
  v6 = v0[1147];
  *(v1 - 192) = v0[1148];
  *(v1 - 184) = v6;
  v7 = v0[1145];
  *(v1 - 176) = v0[1146];
  *(v1 - 168) = v7;
  v8 = v0[1141];
  *(v1 - 160) = v0[1143];
  *(v1 - 152) = v8;
  v9 = v0[1139];
  *(v1 - 144) = v0[1140];
  *(v1 - 136) = v9;
  *(v1 - 128) = v0[1138];
}

void sub_3815C()
{
  v2 = v0[416];
  v3 = v0[413];
  v4 = v0[412];
  v5 = v0[411];
  v6 = v0[410];
  v7 = v0[409];
  v8 = v0[408];
  v9 = v0[407];
  v10 = v0[406];
  v11 = v0[405];
  v12 = v0[404];
  v13 = v0[403];
  v14 = v0[402];
  v15 = v0[400];
  v1 = v0[399];
  v16 = v0[397];
}

void *sub_3820C(void *a1)
{
  result = sub_2D20(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_38250()
{
  v12 = v0[1190];
  v13 = v0[1189];
  v14 = v0[1188];
  v15 = v0[1187];
  v16 = v0[1186];
  v17 = v0[1185];
  v18 = v0[1184];
  v19 = v0[1183];
  v20 = v0[1182];
  v21 = v0[1181];
  v22 = v0[1180];
  v23 = v0[1179];
  v24 = v0[1178];
  v25 = v0[1177];
  v26 = v0[1176];
  v27 = v0[1175];
  v28 = v0[1174];
  v29 = v0[1173];
  v30 = v0[1172];
  v31 = v0[1171];
  v32 = v0[1170];
  v33 = v0[1169];
  v34 = v0[1168];
  v35 = v0[1167];
  v36 = v0[1164];
  v37 = v0[1163];
  v38 = v0[1160];
  v39 = v0[1159];
  v40 = v0[1158];
  v3 = v0[1156];
  *(v1 - 248) = v0[1157];
  *(v1 - 240) = v3;
  v4 = v0[1154];
  *(v1 - 232) = v0[1155];
  *(v1 - 224) = v4;
  v5 = v0[1150];
  *(v1 - 216) = v0[1153];
  *(v1 - 208) = v5;
  v6 = v0[1148];
  *(v1 - 200) = v0[1149];
  *(v1 - 192) = v6;
  v7 = v0[1146];
  *(v1 - 184) = v0[1147];
  *(v1 - 176) = v7;
  v8 = v0[1143];
  *(v1 - 168) = v0[1145];
  *(v1 - 160) = v8;
  v9 = v0[1140];
  *(v1 - 152) = v0[1141];
  *(v1 - 144) = v9;
  v10 = v0[1138];
  *(v1 - 136) = v0[1139];
  *(v1 - 128) = v10;
}

uint64_t sub_383D8(uint64_t a1)
{

  return sub_374DC(v1, a1, type metadata accessor for GenericMedCompletedLogModel);
}

uint64_t sub_38418()
{
  v2 = *(v0 - 128);

  return sub_375C0(v2, type metadata accessor for GenericMedCompletedLogModel);
}

uint64_t sub_38450()
{
  v2 = *(v0 + 9320);

  return swift_beginAccess();
}

uint64_t sub_38474()
{

  return swift_beginAccess();
}

uint64_t sub_384B8()
{
  v6 = v0[396];
  v7 = v0[393];
  v8 = v0[392];
  v3 = v0[390];
  *(v1 - 160) = v0[391];
  *(v1 - 152) = v3;
  v4 = v0[386];
  *(v1 - 144) = v0[389];
  *(v1 - 136) = v4;
  *(v1 - 128) = v0[384];
}

uint64_t sub_384FC()
{

  return sub_16C1CC();
}

void sub_3851C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_38584()
{
  v1 = v0[1206];
  v2 = v0[1205];
  v3 = v0[1204];
}

char *sub_385A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1152];
  v3 = v1[1151];
  v4 = v1[1136];
  return v1 + a1;
}

void sub_385F4()
{
  v1 = v0[439];
  v2 = v0[438];
  v3 = v0[437];
}

uint64_t sub_38604()
{
}

void sub_38620()
{
  *(v1 - 88) = v0[432];
  v2 = v0[430];
  v3 = v0[429];
}

BOOL sub_38670(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_386C4@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 240);
  return result;
}

void sub_386DC()
{
  v3 = v1[1166];
  v4 = v1[1165];
  v5 = v1[1137];
  v6 = v1[1136];
}

void sub_386FC()
{
  v1 = v0[1206];
  v2 = v0[1205];
  v3 = v0[1204];
}

void sub_38724()
{
  v3 = v1[415];
  v4 = v1[414];
  v5 = v1[382];
  v6 = v1[380];
}

uint64_t sub_38754(uint64_t a1)
{
  sub_17464((v1 + v2), a1 + 16);

  return sub_16C73C();
}

BOOL sub_387B0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_3880C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2[1145];
  *(v4 - 128) = v2[1143];
  v6 = v2[1136];
  sub_2D64((v2 + a1));

  return sub_8388(v2 + v1, v2 + v3);
}

uint64_t sub_3888C(__int128 *a1)
{
  sub_17464(a1, v1 + 16);

  return sub_16C73C();
}

uint64_t sub_388B8(unint64_t *a1)
{

  return sub_98C8(a1, v1, v2);
}

void *sub_388F0()
{
  v2 = (*(v0 - 248) + 224);

  return memcpy((v0 - 208), v2, 0x41uLL);
}

void sub_38910()
{
  *(v3 - 136) = v2[1151];
  *(v3 - 128) = v0;
  v5 = v2[1137];
  v6 = v2[1136];
}

uint64_t sub_38940(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_98C8(a1, a2, a3);
}

uint64_t sub_38964(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_3898C(uint64_t a1)
{

  return sub_375C0(a1, type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters);
}

void sub_389B0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_389CC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_389E8()
{

  return sub_376FC(v0 + 4952);
}

double sub_38A00@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 224) = a1;
  result = 0.0;
  *(v1 + 232) = 0u;
  v3 = v1 + 232;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = -64;
  return result;
}

uint64_t sub_38A44(uint64_t *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v2));
  return sub_2D64((v1 + v3));
}

uint64_t sub_38A6C(uint64_t *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v3));
  return sub_2D64((v1 + v2));
}

void sub_38A94()
{
  v3 = v1[1166];
  v4 = v1[1165];
  v5 = v1[1137];
  v6 = v1[1136];
}

uint64_t sub_38AEC()
{

  return sub_16C4EC();
}

uint64_t sub_38B08@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 264);
  return result;
}

void sub_38B24()
{
  v2 = v1 + v0[8];
  v3 = v0[9];
  v6 = v1 + v0[10];
  v7 = v0[7];
  v4 = v0[11];
  v5 = v0[12];
}

uint64_t sub_38B58()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_38B74(void *a1)
{
  sub_2D20(a1, v1);

  return type metadata accessor for WellnessSnippets();
}

void sub_38BA4()
{
}

uint64_t sub_38BBC()
{
  v2 = *(v0 + 9200);
  v3 = *(v0 + 9096);

  return sub_16C45C();
}

uint64_t sub_38BD8(__int128 *a1)
{
  sub_17464(a1, v2 + v1);

  return sub_8388(v2 + v1, v2 + v3);
}

void sub_38C18()
{
  v3 = *(v1 + 9216);
  *(v2 - 144) = *(v1 + 9208);
  *(v2 - 136) = v0;
}

void sub_38C28()
{
  v1 = v0[1250];
  v2 = v0[1249];
  v3 = v0[1248];
}

uint64_t sub_38CF4()
{

  return sub_8388(v2 + 24, v0 + v1);
}

uint64_t sub_38D0C()
{

  return sub_16C4EC();
}

uint64_t sub_38D28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v15 - 88);

  return sub_3769C(v17, v14 + a14, a3, a4);
}

void sub_38D44()
{
  v3 = v1[1166];
  v4 = v1[1165];
  v5 = v1[1137];
}

uint64_t sub_38D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 88);

  return sub_374DC(v3, v6, a3);
}

uint64_t sub_38D7C(uint64_t a1)
{
  *(v1 - 360) = a1;

  return swift_slowAlloc();
}

uint64_t sub_38DA0()
{

  return swift_allocObject();
}

uint64_t sub_38E20()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 136);
  return *(v1 - 128);
}

uint64_t sub_38E84()
{
  *(v1 - 120) = *(v0 + 9096);

  return sub_16E23C();
}

void sub_38EA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_38EC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_38EE4()
{

  return sub_16C7AC();
}

uint64_t sub_38EFC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_3769C(v3, v4 + a3, a1, a2);
}

uint64_t sub_38F14()
{

  return sub_8388(v1 + 24, v0 + v2);
}

uint64_t sub_38F2C()
{

  return sub_16D62C();
}

uint64_t sub_38F44()
{
}

uint64_t sub_38F88(char a1)
{
  v1 = a1;
  result = qword_171E20[a1];
  v3 = qword_172008[v1];
  return result;
}

uint64_t sub_38FA8()
{
  v0 = sub_16E6CC();

  if (v0 >= 0x3D)
  {
    return 61;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_39008(char a1)
{
  result = 0x7265702074656566;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 40:
    case 45:
      sub_39A14();
      return v12 | 3;
    case 3:
      return 0x65702073656C696DLL;
    case 4:
      return 0x6C696B5F666C6168;
    case 5:
    case 42:
      sub_39A14();
      return v14 | 2;
    case 6:
    case 7:
      v10 = 1920298856;
      return v10 | 0x7265705F00000000;
    case 8:
      return 0xD000000000000010;
    case 9:
      sub_39A14();
      return v8 | 4;
    case 10:
      return 0x70206574756E696DLL;
    case 11:
      return 0xD000000000000010;
    case 12:
      v7 = 0x6574756E696DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x705F000000000000;
    case 13:
      return 0xD000000000000010;
    case 14:
      return 0x705F646E6F636573;
    case 15:
      v7 = 0x646E6F636573;
      return v7 & 0xFFFFFFFFFFFFLL | 0x705F000000000000;
    case 16:
      v4 = 1767994483;
      goto LABEL_47;
    case 17:
      v10 = 1885697139;
      return v10 | 0x7265705F00000000;
    case 18:
      v11 = 9;
      return v11 | 0xD000000000000010;
    case 19:
      sub_39A14();
      return v13 | 8;
    case 20:
      return 0x6D6172676F6C696BLL;
    case 21:
      return 1835102823;
    case 22:
      return 0x646E756F70;
    case 23:
      v5 = 1852798067;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 24:
      return 1751346793;
    case 25:
      v9 = 1701603693;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 26:
      return 0x74656D69746E6563;
    case 27:
      return 0x6574656D6F6C696BLL;
    case 28:
      return 0x73726574656DLL;
    case 29:
      return 1952802150;
    case 30:
      v9 = 1685217657;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 31:
      return 0x6E6F68746172616DLL;
    case 32:
      return 0x6569726F6C6163;
    case 33:
      return 0x6F6C61636F6C696BLL;
    case 34:
      v5 = 1819635562;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 35:
      return 0x6C756F6A6F6C696BLL;
    case 36:
      return 0x655F657669746361;
    case 37:
      return 0x5F676E6974736572;
    case 38:
      return 7172194;
    case 39:
      v4 = 1702127980;
      goto LABEL_47;
    case 41:
    case 43:
      return 0x5F7265705F707563;
    case 44:
      sub_39A14();
      return v6 | 7;
    case 46:
      v11 = 5;
      return v11 | 0xD000000000000010;
    case 47:
      return 0x5F666F5F74696E75;
    case 48:
      return 1734897005;
    case 49:
      return 0x6D5F687461657262;
    case 50:
      v4 = 1701344367;
LABEL_47:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 51:
      result = 0x737569736C6563;
      break;
    case 52:
      result = 0x65686E6572686166;
      break;
    case 53:
      result = 1885697139;
      break;
    case 54:
      result = 0x746867696C66;
      break;
    case 55:
      result = 0x6168636C65656877;
      break;
    case 56:
      result = 0x656B6F727473;
      break;
    case 57:
      result = 0x676E696D6D697773;
      break;
    case 58:
      result = 7364972;
      break;
    case 59:
      result = 0x6574756E696DLL;
      break;
    case 60:
      result = 1920298856;
      break;
    default:
      sub_39A14();
      result = v3 | 1;
      break;
  }

  return result;
}

uint64_t sub_3975C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_38FA8();
  *a2 = result;
  return result;
}

uint64_t sub_3978C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39008(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC4)
  {
    if (a2 + 60 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 60) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 61;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3D;
  v5 = v6 - 61;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MeasurementUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 60 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 60) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC3)
  {
    v6 = ((a2 - 196) >> 8) + 1;
    *result = a2 + 60;
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
        JUMPOUT(0x3991CLL);
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
          *result = a2 + 60;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_39958()
{
  result = qword_1C67E0;
  if (!qword_1C67E0)
  {
    sub_9790(&qword_1C67E8, qword_171D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C67E0);
  }

  return result;
}

unint64_t sub_399C0()
{
  result = qword_1C67F0;
  if (!qword_1C67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C67F0);
  }

  return result;
}

uint64_t getLocalizedMedName(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_16CC1C();

  return v1;
}

char *getUsoMedNames(from:)(uint64_t a1)
{
  v2 = sub_16C9CC();
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  if (a1)
  {

    result = sub_16CA0C();
    if (result)
    {
      v15 = result;
      v16 = 0;
      v51 = *(result + 2);
      v52 = v5 + 16;
      v46 = a1;
      v47 = (v5 + 32);
      v17 = (v5 + 8);
      v49 = &_swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          if (v51 == v16)
          {

            v31 = v49[2];
            if (v31)
            {
              v32 = v49 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
              v51 = *(v5 + 72);
              v33 = *(v5 + 16);
              v34 = &_swiftEmptyArrayStorage;
              do
              {
                v35 = v50;
                v33(v50, v32, v2);
                v36 = sub_16C9AC();
                v38 = v37;
                (*v17)(v35, v2);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_3A724(0, *(v34 + 2) + 1, 1, v34);
                  v34 = v42;
                }

                v40 = *(v34 + 2);
                v39 = *(v34 + 3);
                if (v40 >= v39 >> 1)
                {
                  sub_3A724(v39 > 1, v40 + 1, 1, v34);
                  v34 = v43;
                }

                *(v34 + 2) = v40 + 1;
                v41 = &v34[16 * v40];
                *(v41 + 4) = v36;
                *(v41 + 5) = v38;
                v32 += v51;
                --v31;
              }

              while (v31);
            }

            else
            {

              return &_swiftEmptyArrayStorage;
            }

            return v34;
          }

          if (v16 >= *(v15 + 2))
          {
            __break(1u);
            return result;
          }

          v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v19 = *(v5 + 72);
          (*(v5 + 16))(v13, &v15[v18 + v19 * v16], v2);
          v20 = sub_16C9BC();
          if (v21)
          {
            break;
          }

LABEL_12:
          result = (*v17)(v13, v2);
          ++v16;
        }

        if (v20 == 0x64695F6D657469 && v21 == 0xE700000000000000)
        {
        }

        else
        {
          v23 = sub_16E6BC();

          if ((v23 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v24 = *v47;
        (*v47)(v48, v13, v2);
        v25 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v25;
        v53 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3B114(0, v25[2] + 1, 1);
          v27 = v53;
        }

        v29 = v27[2];
        v28 = v27[3];
        v30 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          v45 = v24;
          v49 = (v29 + 1);
          sub_3B114(v28 > 1, v29 + 1, 1);
          v30 = v49;
          v24 = v45;
          v27 = v53;
        }

        ++v16;
        v27[2] = v30;
        v49 = v27;
        result = (v24)(v27 + v18 + v29 * v19, v48, v2);
      }
    }
  }

  return 0;
}

uint64_t hasMedDosage(from:)(uint64_t result)
{
  if (result)
  {

    v1 = sub_16CC2C();

    if (v1)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getUsoMedDosageUnit(from:)(uint64_t a1)
{
  v3 = sub_16DBEC();
  v4 = sub_42F0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  if (!a1)
  {
    return 0;
  }

  v14 = sub_16CC2C();
  v48 = v11;
  if (v14)
  {
    v15 = v14;
    v16 = sub_16CC3C();

    if (v16)
    {
      if (sub_3A700(v16))
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
          if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_42:
            sub_16E48C();
LABEL_22:

            sub_16C9EC();

            if (!v49[0])
            {
              goto LABEL_32;
            }

            v30 = sub_16CDEC();

            if (v30)
            {
              v34 = sub_16CCBC();
              v36 = v35;

              if (v36)
              {
                v30 = 1702063972;
                if (v34 == 1702063972 && v36 == 0xE400000000000000)
                {
                }

                else
                {
                  v38 = sub_16E6BC();

                  if ((v38 & 1) == 0)
                  {

                    return 0;
                  }
                }

                swift_beginAccess();
                v39 = v48;
                v47(v48, v15, v3);
                v40 = sub_16DBDC();
                v41 = sub_16E36C();
                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  *v42 = 0;
                  _os_log_impl(&def_259DC, v40, v41, "got a raw name for dosageUnit but no identifiers", v42, 2u);
                }

                v1(v39, v3);

                return v30;
              }

LABEL_32:

              return 0;
            }

LABEL_31:

            return v30;
          }

          v17 = *(v16 + 32);
        }

        sub_16C9EC();

        if (v49[3])
        {
          sub_16CDEC();
        }
      }

      else
      {
      }
    }
  }

  v18 = sub_16D7FC();

  v15 = sub_16DBBC();
  swift_beginAccess();
  v47 = *(v6 + 16);
  v47(v13, v15, v3);

  v19 = sub_16DBDC();
  v20 = sub_16E36C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = v3;
    v46 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49[0] = v23;
    *v22 = 136315138;
    v24 = sub_16E2DC();
    v26 = sub_3AB7C(v24, v25, v49);
    v44 = v13;
    v27 = v15;
    v28 = v26;

    *(v22 + 4) = v28;
    v15 = v27;
    _os_log_impl(&def_259DC, v19, v20, "got identifiers: %s", v22, 0xCu);
    sub_2D64(v23);

    v3 = v45;

    v1 = *(v6 + 8);
    v1(v44, v3);
  }

  else
  {

    v1 = *(v6 + 8);
    v1(v13, v3);
  }

  if (v18[2])
  {
    v30 = v18[4];
    v29 = v18[5];

    return v30;
  }

  v30 = sub_16CC2C();
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = sub_16CC3C();

  if (!v31)
  {
    goto LABEL_32;
  }

  result = sub_3A700(v31);
  if (!result)
  {

    return 0;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
  {
    v33 = *(v31 + 32);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t getMedDosageValue(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!sub_16CC2C())
  {
    goto LABEL_11;
  }

  v1 = sub_16CC3C();

  if (!v1)
  {
LABEL_12:

    return v1;
  }

  result = sub_3A700(v1);
  if (!result)
  {

    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
LABEL_8:

    sub_16C9EC();

    v1 = v5;
    if (v5)
    {
      v4 = sub_16CDFC();

      if (v4)
      {
        v1 = sub_16CA9C();

        return v1;
      }

LABEL_11:

      return 0;
    }

    goto LABEL_12;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    v3 = *(v1 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_3A594(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3A630(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_16E2FC();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v2;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_3A6A4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_2440(a2, a3);
      result = sub_16E2FC();
      *(result + 16) = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_3A700(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_16E54C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void sub_3A724(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6828, &qword_1767D0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_3A818(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6808, &qword_172200);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 64);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[8 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, v9 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2440(&qword_1C6810, &qword_172208);
    swift_arrayInitWithCopy();
  }
}

void sub_3A934(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6800, &qword_1721F8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

uint64_t sub_3AA20(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_3B384();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_3B384();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

_BYTE **sub_3AAE8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_3AB20(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_3AB7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_3AB7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AC40(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_8220(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2D64(v11);
  return v7;
}

unint64_t sub_3AC40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3AD40(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_16E4CC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_3AD40(uint64_t a1, unint64_t a2)
{
  v4 = sub_3AD8C(a1, a2);
  sub_3AEA4(&off_1B7650);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3AD8C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_16E27C())
  {
    result = sub_3AF88(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_16E45C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_16E4CC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_3AEA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_3AFF8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3AF88(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2440(&qword_1C6818, &qword_172210);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_3AFF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2440(&qword_1C6818, &qword_172210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_3B0F0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_3B1A4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_3B374();
    if (v13 != v14)
    {
      sub_3B398();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_2440(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_3AA20(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_3B3AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3B3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3B488()
{
  sub_3BD14();

  return sub_16C33C();
}

uint64_t sub_3B4DC(uint64_t a1)
{
  v2[88] = v1;
  v2[87] = a1;
  v3 = sub_16DBEC();
  v2[89] = v3;
  v4 = *(v3 - 8);
  v2[90] = v4;
  v5 = *(v4 + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();

  return _swift_task_switch(sub_3B5AC, 0, 0);
}

uint64_t sub_3B5AC()
{
  v2 = *(v0 + 704);
  v3 = v2[9];
  sub_2D20(v2 + 5, v2[8]);
  v4 = *(v3 + 8);
  v5 = sub_C9F8();
  v6(v5);
  v7 = *(v0 + 640);
  sub_2D20((v0 + 608), *(v0 + 632));
  sub_C9F8();
  v8 = sub_16C41C();
  sub_2D64((v0 + 608));
  if (v8)
  {
    v9 = *(v0 + 704);
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    v12 = sub_C9F8();
    sub_2D20(v12, v13);
    v14 = (*(v11 + 16))(v10, v11);
    if (sub_C1C54(v14, &off_1B8418))
    {
      v16 = *(v9 + 24);
      v15 = *(v9 + 32);
      sub_2D20(*(v0 + 704), v16);
      v17 = (*(v15 + 24))(v16, v15);
      if (v17 != 270)
      {
        v18 = v17;
        if (sub_C1AF4(v17, *(*(v0 + 704) + 280)))
        {
          v19 = *(v0 + 704);
          v20 = *(v0 + 696);
          sub_8388((v2 + 5), v0 + 24);
          sub_8388(v19 + 80, v0 + 64);
          sub_8284(v19 + 120, v0 + 104);
          *(v0 + 16) = v18;
          *(v0 + 264) = 0;
          sub_3BC6C();
          sub_16C4EC();
          sub_3BCC0(v0 + 16);
          goto LABEL_13;
        }
      }
    }

    v35 = *(v0 + 736);
    v36 = *(v0 + 720);
    v37 = *(v0 + 712);
    sub_16DBBC();
    swift_beginAccess();
    v38 = sub_3BD68();
    v39(v38);
    v40 = sub_16DBDC();
    v41 = sub_16E37C();
    if (os_log_type_enabled(v40, v41))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v42, v43, "Cannot punchout for the requested parse, executing GenericNotSupportedFlow");
    }

    v44 = *(v0 + 736);
    sub_3BD7C();
    v45 = v2[1];
    v46 = sub_C9F8();
    v47(v46);
    sub_8284(v1 + 120, v0 + 440);
    *(v0 + 600) = 0;
    sub_17358();
    sub_16C4EC();
    v34 = v0 + 440;
  }

  else
  {
    v21 = *(v0 + 728);
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    sub_16DBBC();
    swift_beginAccess();
    v24 = sub_3BD68();
    v25(v24);
    v26 = sub_16DBDC();
    v27 = sub_16E37C();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v28, v29, "Legacy behavior not supported on this device. Returning GenericNotSupportedFlow.");
    }

    v30 = *(v0 + 728);
    sub_3BD7C();
    v31 = v2[1];
    v32 = sub_C9F8();
    v33(v32);
    sub_8284(v1 + 120, v0 + 272);
    *(v0 + 432) = 0;
    sub_17358();
    sub_16C4EC();
    v34 = v0 + 272;
  }

  sub_173AC(v34);
LABEL_13:
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_3B930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3B9E0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3B9E0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_3BAE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_3B4DC(a1);
}

uint64_t sub_3BB78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_3BC6C()
{
  result = qword_1C6838;
  if (!qword_1C6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6838);
  }

  return result;
}

unint64_t sub_3BD14()
{
  result = qword_1C6840;
  if (!qword_1C6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6840);
  }

  return result;
}

void sub_3BD7C()
{
  v3 = v1[90];
  v4 = v1[89];
  v5 = v1[88];
  v6 = v1[87];
}

uint64_t sub_3BDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 249))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3BDE4(uint64_t result, int a2, int a3)
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3BE74()
{
  sub_3DF60();

  return sub_16C33C();
}

uint64_t sub_3BEC8()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_8BC0();
  v7 = sub_16C46C();
  v1[10] = v7;
  sub_888C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[14] = v11;
  sub_888C(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = sub_8BC0();
  v15 = sub_17960();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_3C018()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[6];
  sub_16C45C();
  (*(v5 + 16))(v3, v2, v4);
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  v7 = *sub_2D20((v6 + 128), *(v6 + 152));
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_3C138;

  return sub_7AD3C();
}

uint64_t sub_3C138(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *(v4 + 136);
  v7 = *v2;
  sub_C990();
  *v8 = v7;
  *(v5 + 144) = v1;

  if (v1)
  {
    v9 = sub_3C380;
  }

  else
  {
    *(v5 + 152) = a1;
    v9 = sub_3C254;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_3C254()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v4 + 248);
  sub_16D74C();
  v6 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  v7 = *(v4 + 120);
  sub_2D20((v4 + 88), *(v4 + 112));
  v8 = sub_16C2FC();
  v3[3] = sub_16C28C();
  v3[4] = &protocol witness table for AnyFlow;

  *v3 = v8;
  v9 = sub_3E1E8();
  v10(v9);

  sub_C9BC();
  sub_3E254();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3C380()
{
  v34 = v0;
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_3AB7C(0xD00000000000001CLL, 0x800000000017D990, &v33);
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&def_259DC, v6, v7, "Could not execute %s. Error: %@", v12, 0x16u);
    sub_1B918(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v14);
    sub_8A2C();
    sub_8A2C();

    v16 = *(v10 + 8);
    v17 = sub_C9F8();
    v18(v17);
  }

  else
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];

    v22 = *(v20 + 8);
    v23 = sub_C9F8();
    v24(v23);
  }

  v25 = v0[18];
  v26 = v0[5];
  v27 = *(v0[6] + 248);
  sub_16D6FC();
  v26[3] = &type metadata for GenericErrorFlow;
  v26[4] = sub_82E0();
  v28 = swift_allocObject();
  *v26 = v28;
  sub_6362C((v28 + 16));

  v29 = sub_3E1E8();
  v30(v29);

  sub_C9BC();

  return v31();
}

uint64_t sub_3C608()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 160) = v3;
  *(v1 + 56) = v4;
  v5 = sub_16D6BC();
  *(v1 + 80) = v5;
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v1 + 88) = sub_8BC0();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v1 + 96) = sub_8BC0();
  v11 = sub_2440(&qword_1C6850, &unk_172440);
  sub_4348(v11);
  v13 = *(v12 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v14 = sub_16BE9C();
  *(v1 + 120) = v14;
  sub_888C(v14);
  *(v1 + 128) = v15;
  v17 = *(v16 + 64);
  *(v1 + 136) = sub_8BC0();
  v18 = sub_16D7AC();
  *(v1 + 144) = v18;
  sub_4348(v18);
  v20 = *(v19 + 64);
  *(v1 + 152) = sub_8BC0();
  v21 = sub_17960();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_3C768()
{
  v36 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 104);
  v27 = *(v0 + 96);
  v30 = *(v0 + 88);
  v31 = *(v0 + 144);
  v33 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v34 = *(v0 + 56);
  v7 = v6[4];
  v8 = v6[5];
  v26 = *(v0 + 160);
  sub_2D20(v6 + 1, v7);
  (*(v8 + 16))(v35, v7, v8);
  (*(v3 + 16))(v2, v5, v4);
  sub_16D79C();
  sub_3DF18(&qword_1C6858, &type metadata accessor for AppPunchOutFlow);
  v32 = sub_16C32C();
  sub_3DEC4(v1, &type metadata accessor for AppPunchOutFlow);
  v9 = sub_2D20(v6 + 6, v6[9]);
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  sub_15081C(*v9);
  sub_208C0(v26);
  sub_16E23C();

  v13 = sub_16D5CC();
  sub_214C(v27, 0, 1, v13);
  v14 = sub_38E5C();
  sub_1913C(v14, v15);

  sub_1B918(v27, &qword_1C5800, &unk_16F510);
  sub_3DE54(v28, v29);
  sub_8388((v6 + 1), v0 + 16);
  sub_16D6AC();
  sub_3DF18(&qword_1C6860, &type metadata accessor for OutputFlow);
  v16 = sub_16C32C();
  sub_3DEC4(v30, &type metadata accessor for OutputFlow);
  v17 = v6[5];
  sub_2D20(v6 + 1, v6[4]);
  v18 = *(v17 + 16);
  v19 = sub_3E1B8();
  v20(v19);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_172320;
  *(v21 + 32) = v16;
  *(v21 + 40) = v32;
  v22 = sub_16D6DC();
  swift_allocObject();
  v23 = sub_16D6CC();
  v34[3] = v22;
  v34[4] = sub_3DF18(&qword_1C6868, &type metadata accessor for SequenceFlow);
  *v34 = v23;
  sub_1B918(v28, &qword_1C6850, &unk_172440);

  sub_C9BC();

  return v24();
}

uint64_t sub_3CB34()
{
  sub_8A88();
  v1[61] = v2;
  v1[62] = v0;
  v3 = sub_16BE9C();
  v1[63] = v3;
  sub_888C(v3);
  v1[64] = v4;
  v6 = *(v5 + 64);
  v1[65] = sub_8BC0();
  v7 = sub_16D63C();
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[66] = sub_8BC0();
  v10 = type metadata accessor for DataTypePunchoutFlow.PunchOutAction();
  sub_4348(v10);
  v12 = *(v11 + 64) + 15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v13 = sub_16DBEC();
  v1[69] = v13;
  sub_888C(v13);
  v1[70] = v14;
  v16 = *(v15 + 64);
  v1[71] = sub_8BC0();
  v17 = sub_17960();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_3CC78()
{
  v56 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = sub_16DBBC();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  if (v7)
  {
    v11 = sub_8BD8();
    v12 = swift_slowAlloc();
    v55 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_3AB7C(0xD000000000000014, 0x8000000000172380, &v55);
    _os_log_impl(&def_259DC, v5, v6, "Executing %s", v11, 0xCu);
    sub_2D64(v12);
    sub_8A2C();
    sub_8A2C();
  }

  v13 = *(v9 + 8);
  v14 = sub_C9F8();
  v15(v14);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 496);
  v19 = *(v18 + 40);
  v20 = *v18;
  sub_2D20((v18 + 8), *(v18 + 32));
  v21 = *(v19 + 8);
  v22 = sub_3E1B8();
  v23(v22);
  sub_3D470(v20, (v0 + 344), v16);
  sub_2D64((v0 + 344));
  v24 = sub_C9F8();
  sub_3DDA0(v24, v25);
  v26 = sub_2440(&qword_1C6848, &qword_172428);
  switch(sub_369C(v17, 3, v26))
  {
    case 1u:
      v52 = swift_task_alloc();
      *(v0 + 576) = v52;
      *v52 = v0;
      v52[1] = sub_3D10C;
      v53 = *(v0 + 496);
      sub_3E254();

      return sub_3BEC8();
    case 2u:
      v36 = *(v0 + 544);
      v37 = *(v0 + 528);
      v38 = *(v0 + 488);
      sub_C1F30((v0 + 16));
      v39 = type metadata accessor for WellnessCATPatternsExecutor(0);
      sub_16D62C();
      v40 = sub_16D58C();
      *(v0 + 80) = v39;
      *(v0 + 88) = &off_1BA5B0;
      *(v0 + 56) = v40;
      v41 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
      sub_16D62C();
      v42 = sub_16D58C();
      *(v0 + 120) = v41;
      *(v0 + 128) = &off_1BC5D0;
      *(v0 + 96) = v42;
      v43 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
      sub_16D62C();
      v44 = sub_16D58C();
      *(v0 + 160) = v43;
      *(v0 + 168) = &off_1BA360;
      *(v0 + 136) = v44;
      *(v0 + 176) = 0;
      sub_17358();
      sub_16C4EC();
      sub_3E15C();
      sub_3DEC4(v36, v45);
      sub_173AC(v0 + 16);
      goto LABEL_9;
    case 3u:
      v46 = *(v0 + 544);
      v47 = *(v0 + 488);
      v48 = *(*(v0 + 496) + 248);
      sub_16D6FC();
      sub_6362C((v0 + 184));
      sub_82E0();
      sub_16C4EC();
      sub_8334(v0 + 184);
      sub_3E15C();
      sub_3DEC4(v46, v49);
LABEL_9:
      sub_3E194();

      sub_C9BC();
      sub_3E254();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v27 = *(v0 + 536);
      v28 = *(v0 + 496);
      v29 = *v27;
      (*(*(v0 + 512) + 32))(*(v0 + 520), &v27[*(v26 + 48)], *(v0 + 504));
      v30 = *(v28 + 248);
      sub_16D72C();
      v31 = swift_task_alloc();
      *(v0 + 584) = v31;
      *v31 = v0;
      v31[1] = sub_3D2AC;
      v32 = *(v0 + 520);
      v33 = *(v0 + 496);
      sub_3E254();

      return sub_3C608();
  }
}

uint64_t sub_3D10C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 576);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3D1F0()
{
  v1 = v0[68];
  v2 = v0[61];
  v3 = v0[57];
  sub_2D20(v0 + 53, v0[56]);
  sub_16C4EC();
  sub_3E15C();
  sub_3DEC4(v1, v4);
  sub_2D64(v0 + 53);
  sub_3E194();

  sub_C9BC();

  return v5();
}

uint64_t sub_3D2AC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 584);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

void sub_3D390()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[52];
  sub_2D20(v0 + 48, v0[51]);
  sub_16C4EC();
  v7 = *(v4 + 8);
  v8 = sub_C9F8();
  v9(v8);
  sub_3E15C();
  sub_3DEC4(v1, v10);
  sub_2D64(v0 + 48);
  sub_3E194();

  sub_C9BC();
  sub_3E254();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3D470@<X0>(__int16 a1@<W0>, void *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v96 = a3;
  v6 = sub_16DBEC();
  v94 = sub_42F0(v6);
  v95 = v7;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v94);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v93 = &v89 - v14;
  v15 = __chkstk_darwin(v13);
  v92 = &v89 - v16;
  __chkstk_darwin(v15);
  v91 = &v89 - v17;
  v18 = sub_2440(&qword_1C5690, &dword_16F320);
  v19 = sub_4348(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v89 - v22;
  v24 = sub_2440(&qword_1C57F8, &unk_172510);
  v25 = sub_4348(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v89 - v28;
  v30 = sub_16BE9C();
  v31 = sub_42F0(v30);
  v90 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_3E204();
  v35 = a2[4];
  sub_2D20(a2, a2[3]);
  sub_3E1B8();
  if (sub_16C40C() & 1) != 0 || (v36 = a2[4], sub_2D20(a2, a2[3]), sub_3E1B8(), (sub_16C3FC()))
  {
    if (a1 == 270)
    {
      sub_16DBBC();
      sub_3E174();
      v38 = v94;
      v37 = v95;
      (*(v95 + 16))(v12, v23, v94);
      v39 = sub_16DBDC();
      v40 = sub_16E37C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&def_259DC, v39, v40, "Cannot punchout for nil datatype", v41, 2u);
        sub_8A2C();
      }

      (*(v37 + 8))(v12, v38);
    }

    else
    {
      v45 = a1;
      if (!sub_C1AF4(a1, &off_1B8198))
      {
        sub_16DBBC();
        sub_3E174();
        v63 = v94;
        v62 = v95;
        v64 = v93;
        (*(v95 + 16))(v93, v23, v94);
        v65 = sub_16DBDC();
        v66 = sub_16E36C();
        if (sub_3E238(v66))
        {
          sub_8BD8();
          v67 = sub_3E21C();
          v97[0] = v67;
          *v64 = 136315138;
          sub_140650(v45);
          v70 = sub_3AB7C(v68, v69, v97);

          *(v64 + 4) = v70;
          sub_3E1C8(&def_259DC, v71, v72, "Punchout not supported for %s");
          sub_2D64(v67);
          sub_8A2C();
          sub_8A2C();
        }

        (*(v62 + 8))(v64, v63);
        v42 = sub_2440(&qword_1C6848, &qword_172428);
        v43 = v96;
        v44 = 2;
        return sub_214C(v43, v44, 3, v42);
      }

      sub_16D74();
      v46 = sub_16E14C();
      v47 = sub_1730C(a1, v46);

      if (v47 == 205)
      {
        sub_16DBBC();
        sub_3E174();
        v49 = v94;
        v48 = v95;
        v50 = v92;
        (*(v95 + 16))(v92, v23, v94);
        v51 = sub_16DBDC();
        v52 = sub_16E37C();
        if (sub_3E238(v52))
        {
          sub_8BD8();
          v53 = sub_3E21C();
          v97[0] = v53;
          *v50 = 136315138;
          sub_140650(v45);
          v56 = sub_3AB7C(v54, v55, v97);

          *(v50 + 4) = v56;
          sub_3E1C8(&def_259DC, v57, v58, "Expected to create a HealthKit Identifier to punchout for %s");
          sub_2D64(v53);
          sub_8A2C();
          sub_8A2C();
        }

        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v73 = sub_16BD9C();
        sub_214C(v23, 1, 1, v73);
        sub_12093C(v47, v23, v29);
        sub_1B918(v23, &qword_1C5690, &dword_16F320);
        if (sub_369C(v29, 1, v30) != 1)
        {
          v85 = *(v90 + 32);
          v85(v3, v29, v30);
          v86 = sub_2440(&qword_1C6848, &qword_172428);
          v87 = *(v86 + 48);
          v88 = v96;
          *v96 = v47;
          v85(&v88[v87], v3, v30);
          v43 = v88;
          v44 = 0;
          v42 = v86;
          return sub_214C(v43, v44, 3, v42);
        }

        sub_1B918(v29, &qword_1C57F8, &unk_172510);
        sub_16DBBC();
        sub_3E174();
        v75 = v94;
        v74 = v95;
        v76 = v91;
        (*(v95 + 16))(v91, v23, v94);
        v77 = sub_16DBDC();
        v78 = sub_16E37C();
        if (sub_3E238(v78))
        {
          sub_8BD8();
          v79 = sub_3E21C();
          v97[0] = v79;
          *v76 = 136315138;
          v80 = sub_208C0(v47);
          v82 = sub_3AB7C(v80, v81, v97);

          *(v76 + 4) = v82;
          sub_3E1C8(&def_259DC, v83, v84, "Cannot create a punchout url for %s");
          sub_2D64(v79);
          sub_8A2C();
          sub_8A2C();
        }

        (*(v74 + 8))(v76, v75);
      }
    }

    v42 = sub_2440(&qword_1C6848, &qword_172428);
    v43 = v96;
    v44 = 3;
    return sub_214C(v43, v44, 3, v42);
  }

  v59 = sub_2440(&qword_1C6848, &qword_172428);
  v60 = v96;

  return sub_214C(v60, 1, 3, v59);
}

uint64_t sub_3DBD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_3E204();
  sub_C1F30(a1);
  v6 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  v7 = sub_16D58C();
  a1[8] = v6;
  a1[9] = &off_1BA5B0;
  a1[5] = v7;
  v8 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  v9 = sub_16D58C();
  a1[13] = v8;
  a1[14] = &off_1BC5D0;
  a1[10] = v9;
  v10 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v10;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_3DCBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_3CB34();
}

uint64_t type metadata accessor for DataTypePunchoutFlow.PunchOutAction()
{
  result = qword_1C68E8;
  if (!qword_1C68E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataTypePunchoutFlow.PunchOutAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DE04()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_3DE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6850, &unk_172440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1BA5C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_3DF18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3DF60()
{
  result = qword_1C6870;
  if (!qword_1C6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6870);
  }

  return result;
}

uint64_t sub_3DFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6848, &qword_172428);
  v5 = sub_369C(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E030(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2440(&qword_1C6848, &qword_172428);

  return sub_214C(a1, v5, a3, v6);
}

uint64_t sub_3E09C()
{
  sub_3E0F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_3E0F4()
{
  if (!qword_1C68F8)
  {
    sub_16BE9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1C68F8);
    }
  }
}

uint64_t sub_3E174()
{

  return swift_beginAccess();
}

uint64_t sub_3E194()
{
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
}

void sub_3E1C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_3E1E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = *(v0[15] + 8);
  return v0[16];
}

uint64_t sub_3E21C()
{

  return swift_slowAlloc();
}

BOOL sub_3E238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t type metadata accessor for WellnessCATsSimple()
{
  result = qword_1C6920;
  if (!qword_1C6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3E2F8()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3E37C()
{
  sub_40240();
  v17 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  v4 = sub_400C8(v3, xmmword_16F530);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_400F8(v6);
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_4021C(v11);
  *v12 = v13;
  sub_40210(v12);
  sub_40160();
  v14 = sub_40144(28);

  return v15(v14);
}

uint64_t sub_3E4C0()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_3E5F0()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3E674()
{
  sub_40240();
  v16 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  *(v3 + 16) = xmmword_16F530;
  strcpy((v3 + 32), "activityType");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  sub_401C8(v3, v4, &qword_1C5800, &unk_16F510);
  v5 = sub_16D5CC();
  sub_400F8(v5);
  if (v6)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v8 = *(v7 + 32);
    sub_40154();
    v9();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = sub_4021C(v10);
  *v11 = v12;
  sub_40210(v11);
  sub_40160();
  v13 = sub_40144(23);

  return v14(v13);
}

uint64_t sub_3E7D8()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(24);

  return v4(v3);
}

uint64_t sub_3E880()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(49);

  return v4(v3);
}

uint64_t sub_3E928()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3E9AC()
{
  sub_40240();
  v17 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  v4 = sub_400C8(v3, xmmword_16F530);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_400F8(v6);
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_4021C(v11);
  *v12 = v13;
  sub_40210(v12);
  sub_40160();
  v14 = sub_40144(17);

  return v15(v14);
}

uint64_t sub_3EAF0()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_3EB98;
  sub_40160();
  v3 = sub_40198(22);

  return v4(v3);
}

uint64_t sub_3EB98()
{
  sub_8A88();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_3EC8C()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3ED14()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_40228();
  v0[6] = v3;
  v4 = sub_400C8(v3, xmmword_1712E0);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  if (sub_40124(v6) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v8 = *(v7 + 32);
    sub_40154();
    v9();
  }

  v10 = v0[3];
  v3[5].n128_u64[0] = 0xD000000000000014;
  v3[5].n128_u64[1] = 0x800000000017DAD0;
  v11 = 0;
  if (v10)
  {
    v11 = sub_16D39C();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v10;
  v3[7].n128_u64[1] = v11;
  v12 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v16 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_3EED8;
  v14 = v0[4];

  return v16(0xD00000000000001BLL, 0x800000000017DAF0, v3);
}

uint64_t sub_3EED8()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_3F008()
{
  sub_8A88();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_3F070()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(27);

  return v4(v3);
}

uint64_t sub_3F118()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(34);

  return v4(v3);
}

uint64_t sub_3F1C0()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3F25C()
{
  sub_40240();
  v21 = v1;
  sub_C9EC();
  v2 = v0[6];
  v3 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v0[7] = v4;
  v5 = sub_4016C(v4, xmmword_1712E0);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  if (sub_40124(v7) == 1)
  {
    sub_C878(v0[6], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  v11 = v0[5];
  v12 = v0[3];
  *(v4 + 80) = 1953066613;
  *(v4 + 88) = 0xE400000000000000;
  sub_1955C(v12, v11, &qword_1C5800, &unk_16F510);
  if (sub_369C(v11, 1, v3) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    sub_9910((v4 + 96));
    sub_400B8();
    v14 = *(v13 + 32);
    sub_40154();
    v15();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_3F450;
  v17 = v0[4];
  sub_40160();
  v18 = sub_40144(24);

  return v19(v18);
}

uint64_t sub_3F450()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = sub_400A4();

    return v16(v15);
  }
}

uint64_t sub_3F58C()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3F614()
{
  sub_40240();
  v19 = v3;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v5 = sub_401F8(v4);
  v6 = sub_4016C(v5, xmmword_1712E0);
  sub_401C8(v6, v7, &qword_1C5800, &unk_16F510);
  v8 = sub_16D5CC();
  sub_400F8(v8);
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 64);
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000000017DA40;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v13;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = sub_4021C(v14);
  *v15 = v16;
  sub_40210(v15);

  return v18(0xD000000000000014, 0x800000000017DA20, v2);
}

uint64_t sub_3F78C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_3F8BC()
{
  sub_8A88();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_3F924()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3F9C0()
{
  sub_40240();
  v20 = v1;
  sub_C9EC();
  v2 = v0[6];
  v3 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v0[7] = v4;
  *(v4 + 16) = xmmword_1712E0;
  *(v4 + 32) = 1953066613;
  *(v4 + 40) = 0xE400000000000000;
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  if (sub_40124(v6) == 1)
  {
    sub_C878(v0[6], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v8 = *(v7 + 32);
    sub_40154();
    v9();
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x800000000017D9E0;
  sub_1955C(v11, v10, &qword_1C5800, &unk_16F510);
  if (sub_369C(v10, 1, v3) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    sub_9910((v4 + 96));
    sub_400B8();
    v13 = *(v12 + 32);
    sub_40154();
    v14();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_3FBD4;
  v16 = v0[4];
  sub_40160();
  v17 = sub_40144(19);

  return v18(v17);
}

uint64_t sub_3FBD4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = sub_400A4();

    return v16(v15);
  }
}

uint64_t sub_3FD10()
{
  sub_8A88();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_3FD84()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_40154();
  return sub_3FDD4(v3, v4);
}

uint64_t sub_3FDD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  v14 = sub_4348(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1955C(a1, &v20 - v17, &qword_1C57F8, &unk_172510);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_16D5DC();
  (*(v8 + 8))(a2, v2);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v18;
}

uint64_t sub_3FF4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16D5EC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_4004C()
{
  v0 = sub_16D60C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_40090@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

__n128 *sub_400C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570795461746164;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_400F8(uint64_t a1)
{
  result = sub_369C(v1, 1, a1);
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_40124(uint64_t a1)
{

  return sub_369C(v1, 1, a1);
}

__n128 *sub_4016C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570797461746164;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

double sub_4018C()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_401C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1955C(v4, v5, a3, a4);
}

uint64_t *sub_401E0()
{
  *(v1 + 72) = v0;

  return sub_9910((v1 + 48));
}

uint64_t sub_40210(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_40228()
{

  return swift_allocObject();
}

uint64_t isLoggingTask(from:)()
{
  sub_16CB3C();
  if (v11)
  {
    v0 = sub_16CE1C();
    sub_455B0(v0, v1, v2, v0, v3, v4, v5, v6, v8, v9);
    if (sub_457BC())
    {

      return 1;
    }
  }

  else
  {
    sub_8748(v10, &qword_1C63E0, &unk_1717D0);
  }

  return 0;
}

uint64_t isQueryingTask(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (*(&v6 + 1))
  {
    sub_16CF2C();
    if (sub_4551C())
    {

      sub_8748(&v7, &qword_1C63E0, &unk_1717D0);
      return 1;
    }
  }

  else
  {
    sub_8748(&v5, &qword_1C63E0, &unk_1717D0);
  }

  v5 = v7;
  v6 = v8;
  if (*(&v8 + 1))
  {
    sub_16CE5C();
    if (sub_4551C())
    {

      return 1;
    }
  }

  else
  {
    sub_8748(&v5, &qword_1C63E0, &unk_1717D0);
  }

  return 0;
}

uint64_t isLoggingTimeframeTodayOrNone(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  if (isLoggingTimeframeToday(from:todayDate:)(a1, a2))
  {
    return 1;
  }

  return isLoggingTimeframeNone(from:)();
}

uint64_t isLoggingTimeframeToday(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_16CB3C();
  sub_45730(v3, v4, &qword_1C63E0, &unk_1717D0, v5, v6);
  if (!v44)
  {
    v15 = sub_8748(v43, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v15, v16, &qword_1C63E0, &unk_1717D0, v17, v18);
    if (v44)
    {
      v19 = sub_16CF2C();
      sub_45540(v19, v20, v21, v22, v23, v24, v25, v26, v41, v42);
      v27 = swift_dynamicCast();
      if (v27)
      {
        sub_45884();
        sub_16CC0C();
        goto LABEL_12;
      }
    }

    else
    {
      v27 = sub_8748(v43, &qword_1C63E0, &unk_1717D0);
    }

    sub_45730(v27, v28, &qword_1C63E0, &unk_1717D0, v29, v30);
    if (v44)
    {
      v31 = sub_16CE5C();
      sub_45540(v31, v32, v33, v34, v35, v36, v37, v38, v41, v42);
      if (swift_dynamicCast())
      {
        sub_45884();
        sub_16CD1C();
        goto LABEL_12;
      }
    }

    else
    {
      sub_8748(v43, &qword_1C63E0, &unk_1717D0);
    }

    sub_8748(v45, &qword_1C63E0, &unk_1717D0);
    v39 = 0;
    return v39 & 1;
  }

  v7 = sub_16CE1C();
  sub_45540(v7, v8, v9, v10, v11, v12, v13, v14, v41, v42);
  v15 = swift_dynamicCast();
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_45884();
  sub_16CACC();
LABEL_12:

  v39 = isTimeframeToday(from:todayDate:)(v43[0], a2);

  sub_8748(v45, &qword_1C63E0, &unk_1717D0);
  return v39 & 1;
}

uint64_t getMedStatus(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (!v15[3])
  {
    sub_8748(v15, &qword_1C63E0, &unk_1717D0);
    goto LABEL_5;
  }

  v4 = sub_16CE1C();
  sub_455B0(v4, v5, v6, v4, v7, v8, v9, v10, v13, v14);
  if ((sub_457BC() & 1) == 0)
  {
LABEL_5:
    sub_8748(v16, &qword_1C63E0, &unk_1717D0);
    v11 = 0;
    return v11 & 1;
  }

  sub_45884();
  sub_16CACC();

  v11 = getMedStatus(from:)(v15[0]);

  sub_8748(v16, &qword_1C63E0, &unk_1717D0);
  return v11 & 1;
}

uint64_t isMedicationRequest(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (*(&v46 + 1))
  {
    sub_16CF2C();
    v4 = sub_4551C();
    if (v4)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v4 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v4, v5, &qword_1C63E0, &unk_1717D0, v6, v7);
  if (*(&v46 + 1))
  {
    sub_16CE1C();
    v8 = sub_4551C();
    if (v8)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v8 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11);
  if (*(&v46 + 1))
  {
    sub_16CE2C();
    v12 = sub_4551C();
    if (v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v12, v13, &qword_1C63E0, &unk_1717D0, v14, v15);
  if (*(&v46 + 1))
  {
    sub_16CE5C();
    v16 = sub_4551C();
    if (v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v16, v17, &qword_1C63E0, &unk_1717D0, v18, v19);
  if (*(&v46 + 1))
  {
    sub_16CE3C();
    v20 = sub_4551C();
    if (v20)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v20 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v20, v21, &qword_1C63E0, &unk_1717D0, v22, v23);
  if (*(&v46 + 1))
  {
    sub_16CF3C();
    v24 = sub_4551C();
    if (v24)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v24 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v24, v25, &qword_1C63E0, &unk_1717D0, v26, v27);
  if (*(&v46 + 1))
  {
    sub_16CEDC();
    v28 = sub_4551C();
    if (v28)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v28 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v28, v29, &qword_1C63E0, &unk_1717D0, v30, v31);
  if (*(&v46 + 1))
  {
    sub_16CECC();
    v32 = sub_4551C();
    if (v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v32, v33, &qword_1C63E0, &unk_1717D0, v34, v35);
  if (*(&v46 + 1))
  {
    sub_16CEEC();
    v36 = sub_4551C();
    if (v36)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v36 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v36, v37, &qword_1C63E0, &unk_1717D0, v38, v39);
  if (*(&v46 + 1))
  {
    sub_16CEBC();
    v40 = sub_4551C();
    if (v40)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v40 = sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v40, v41, &qword_1C63E0, &unk_1717D0, v42, v43);
  if (!*(&v46 + 1))
  {
    sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
LABEL_47:
    v45 = v47;
    v46 = v48;
    if (*(&v48 + 1))
    {
      sub_16CEFC();
      if (sub_4551C())
      {

        return 1;
      }
    }

    else
    {
      sub_8748(&v45, &qword_1C63E0, &unk_1717D0);
    }

    return 0;
  }

  sub_16CF1C();
  if ((sub_4551C() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:

  sub_8748(&v47, &qword_1C63E0, &unk_1717D0);
  return 1;
}

uint64_t isQueryAboutStatusOrSchedule(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (!v11)
  {
    v4 = sub_8748(v10, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v4, v5, &qword_1C63E0, &unk_1717D0, v6, v7);
    if (v11)
    {
      sub_16CE5C();
      if (sub_4551C())
      {
        sub_45884();
        sub_16CD1C();
        goto LABEL_8;
      }
    }

    else
    {
      sub_8748(v10, &qword_1C63E0, &unk_1717D0);
    }

    sub_8748(v12, &qword_1C63E0, &unk_1717D0);
    v8 = 0;
    return v8 & 1;
  }

  sub_16CF2C();
  v4 = sub_4551C();
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_45884();
  sub_16CC0C();
LABEL_8:

  v8 = hasStatusOrSchedule(from:)(v10[0]);

  sub_8748(v12, &qword_1C63E0, &unk_1717D0);
  return v8 & 1;
}

uint64_t isLoggingTimeframeNone(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (v16)
  {
    sub_16CE1C();
    v4 = sub_4551C();
    if (v4)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v4 = sub_8748(v15, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v4, v5, &qword_1C63E0, &unk_1717D0, v6, v7);
  if (v16)
  {
    sub_16CF2C();
    v8 = sub_4551C();
    if (v8)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v8 = sub_8748(v15, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11);
  if (!v16)
  {
    sub_8748(v15, &qword_1C63E0, &unk_1717D0);
    goto LABEL_19;
  }

  sub_16CE5C();
  if ((sub_4551C() & 1) == 0)
  {
LABEL_19:
    sub_8748(v17, &qword_1C63E0, &unk_1717D0);
    return 0;
  }

  sub_45754();
  sub_45630();
  sub_16CD1C();
LABEL_12:

  if (!v15[0])
  {

    goto LABEL_16;
  }

  v12 = sub_16CCFC();

  if (!v12)
  {
LABEL_16:
    v13 = 1;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:
  sub_8748(v17, &qword_1C63E0, &unk_1717D0);
  return v13;
}

uint64_t getLocalizedMedName(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (v35)
  {
    sub_16CE1C();
    v5 = sub_4551C();
    if (v5)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v5 = sub_8748(v34, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v5, v6, &qword_1C63E0, &unk_1717D0, v7, v8);
  if (v35)
  {
    sub_16CF2C();
    v9 = sub_4551C();
    if (v9)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_8748(v34, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v9, v10, &qword_1C63E0, &unk_1717D0, v11, v12);
  if (!v35)
  {
    sub_45624();
    v20 = sub_8748(v17, v18, v19);
    v28 = sub_455A0(v20, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34[0]);
LABEL_22:
    sub_8748(v28, v29, v30);
    return 0;
  }

  sub_16CE5C();
  if ((sub_4551C() & 1) == 0)
  {
    v29 = &qword_1C63E0;
    v30 = &unk_1717D0;
    v28 = v36;
    goto LABEL_22;
  }

  sub_45754();
  sub_45630();
  sub_16CD1C();
LABEL_12:

  if (!*v34)
  {
    goto LABEL_17;
  }

  sub_16CCEC();
  sub_4578C();
  if (!v0)
  {
    goto LABEL_17;
  }

  sub_16CD8C();
  sub_455D8();

  if (!sub_3B35C(v0))
  {

    goto LABEL_18;
  }

  v13 = sub_45568();
  sub_3B360(v13, v14, v15);
  sub_457FC();

  sub_45850();

  if (!v33)
  {
LABEL_17:

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v16 = sub_16CC1C();

LABEL_19:
  sub_8748(v36, &qword_1C63E0, &unk_1717D0);
  return v16;
}

uint64_t getUSOMedNames(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (v35)
  {
    sub_16CE1C();
    v5 = sub_4551C();
    if (v5)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v5 = sub_8748(v34, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v5, v6, &qword_1C63E0, &unk_1717D0, v7, v8);
  if (v35)
  {
    sub_16CF2C();
    v9 = sub_4551C();
    if (v9)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_8748(v34, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v9, v10, &qword_1C63E0, &unk_1717D0, v11, v12);
  if (v35)
  {
    sub_16CE5C();
    if (sub_4551C())
    {
      sub_45754();
      sub_45630();
      sub_16CD1C();
LABEL_12:

      v13 = *v34;
      if (*v34)
      {
        sub_16CCEC();
        sub_4578C();
        if (!v0)
        {
LABEL_21:
          getUsoMedNames(from:)(v0);
          sub_456D0();

          sub_8748(v36, &qword_1C63E0, &unk_1717D0);
          return v13;
        }

        v13 = v0;
        sub_16CD8C();
        sub_455D8();

        if (sub_3B35C(v0))
        {
          v14 = sub_45568();
          sub_3B360(v14, v15, v16);
          sub_457FC();

          sub_45850();

          v0 = v33;
          goto LABEL_21;
        }
      }

      v0 = 0;
      goto LABEL_21;
    }

    v29 = &qword_1C63E0;
    v30 = &unk_1717D0;
    v28 = v36;
  }

  else
  {
    sub_45624();
    v20 = sub_8748(v17, v18, v19);
    v28 = sub_455A0(v20, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34[0]);
  }

  sub_8748(v28, v29, v30);
  return 0;
}

uint64_t getMedSchedule(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (!v16)
  {
    v4 = sub_8748(v15, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v4, v5, &qword_1C63E0, &unk_1717D0, v6, v7);
    if (v16)
    {
      sub_16CF2C();
      v8 = sub_4551C();
      if (v8)
      {

        sub_16CC0C();
        goto LABEL_12;
      }
    }

    else
    {
      v8 = sub_8748(v15, &qword_1C63E0, &unk_1717D0);
    }

    sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11);
    if (v16)
    {
      sub_16CE5C();
      if (sub_4551C())
      {

        sub_16CD1C();
        goto LABEL_12;
      }
    }

    else
    {
      sub_8748(v15, &qword_1C63E0, &unk_1717D0);
    }

    v13 = 0;
    goto LABEL_18;
  }

  sub_16CE1C();
  v4 = sub_4551C();
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_16CACC();
LABEL_12:

  if (v15[0])
  {
    v12 = v15[0];
    sub_16CCEC();
    sub_456D0();
  }

  else
  {
    v12 = 0;
  }

  v13 = getMedScheduleDateTime(from:)(v12);

LABEL_18:
  sub_8748(v17, &qword_1C63E0, &unk_1717D0);
  return v13;
}

void getMedScheduleWithDefinedValues(from:deviceState:)()
{
  sub_4597C();
  v398 = v1;
  v3 = v2;
  v4 = sub_2440(&qword_1C6970, &qword_172588);
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_45590(&v359 - v8);
  v394 = sub_16CC8C();
  v9 = sub_42F0(v394);
  v377 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v13);
  sub_458D8();
  sub_45590(v14);
  v15 = sub_16DBEC();
  v400 = sub_42F0(v15);
  v401[0] = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v400);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v21);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v22);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v23);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v24);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v25);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v26);
  sub_458D8();
  sub_45590(v27);
  v399 = sub_16BD9C();
  v28 = sub_42F0(v399);
  v384 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v32);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v33);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v34);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v35);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v36);
  sub_458D8();
  sub_45590(v37);
  v38 = sub_16BF5C();
  v39 = sub_42F0(v38);
  v396 = v40;
  v397 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_4304();
  v395 = v44 - v43;
  v45 = sub_2440(&qword_1C5690, &dword_16F320);
  v46 = sub_4348(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v49);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v50);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v51);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v52);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v53);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v54);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v55);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v56);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v57);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v58);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v59);
  sub_458D8();
  sub_45590(v60);
  v388 = sub_16D10C();
  v61 = sub_42F0(v388);
  v387 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_4304();
  sub_45590(v66 - v65);
  v386 = sub_16D06C();
  v67 = sub_42F0(v386);
  v385 = v68;
  v70 = *(v69 + 64);
  __chkstk_darwin(v67);
  sub_4304();
  sub_45590(v72 - v71);
  v73 = sub_16CA4C();
  v74 = sub_42F0(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  __chkstk_darwin(v74);
  sub_4304();
  v81 = v80 - v79;
  v82 = sub_2440(&qword_1C6978, &qword_172590);
  v83 = sub_8B38(v82);
  v85 = *(v84 + 64);
  __chkstk_darwin(v83);
  v87 = &v359 - v86;
  v88 = sub_2440(&qword_1C6980, &qword_172598);
  v89 = sub_4348(v88);
  v91 = *(v90 + 64);
  __chkstk_darwin(v89);
  sub_887C();
  v94 = v92 - v93;
  __chkstk_darwin(v95);
  sub_8C94();
  __chkstk_darwin(v96);
  v98 = &v359 - v97;
  sub_16CB3C();
  sub_45478(v404, v402, &qword_1C63E0, &unk_1717D0);
  if (!v402[3])
  {
    sub_45624();
    sub_8748(v104, v105, v106);
    sub_45624();
LABEL_63:
    sub_8748(v107, v108, v109);
    sub_2440(&qword_1C6988, &unk_176730);
    goto LABEL_64;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_62:
    v108 = &qword_1C63E0;
    v109 = &unk_1717D0;
    v107 = v404;
    goto LABEL_63;
  }

  v361 = v3;

  sub_16CACC();
  if (v402[0])
  {
    v99 = sub_16CCEC();

    if (v99)
    {
      v100 = sub_16CDAC();

      if (v100)
      {
        v101 = sub_16CD7C();

        if (v101)
        {
          if (sub_3B35C(v101))
          {
            sub_3B360(0, (v101 & 0xC000000000000001) == 0, v101);
            if ((v101 & 0xC000000000000001) != 0)
            {
              sub_457FC();
            }

            else
            {
              v102 = *(v101 + 32);
            }

            sub_16C9EC();

            if (v403)
            {
              v103 = sub_16CB9C();

              if (v103)
              {
                sub_16CA3C();

                goto LABEL_16;
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }

  sub_8AB4();
  sub_214C(v110, v111, v112, v73);
LABEL_16:
  (*(v76 + 104))(v0, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v73);
  sub_45604();
  v113 = *(v82 + 48);
  v114 = &qword_172598;
  sub_45478(v98, v87, &qword_1C6980, &qword_172598);
  sub_45478(v0, &v87[v113], &qword_1C6980, &qword_172598);
  sub_8B20(v87, 1, v73);
  if (v117)
  {
    sub_8748(v0, &qword_1C6980, &qword_172598);
    v115 = sub_8B9C();
    sub_8748(v115, v116, &qword_172598);
    sub_8B20(&v87[v113], 1, v73);
    if (v117)
    {
      sub_8748(v87, &qword_1C6980, &qword_172598);
      sub_4565C();
LABEL_36:

      v149 = sub_454F8();
      v150(v149);
      v151 = sub_16D08C();
      sub_8D14(v151);
      sub_456D0();
      sub_16D07C();
      v152 = sub_454D4();
      v153(v152);
      v154 = sub_16D14C();
      sub_8D14(v154);
      sub_455D8();
      sub_16D12C();
      v155 = sub_4589C();
      sub_8D14(v155);
      sub_4563C();
      sub_8388(v398, v402);
      v156 = v395;
      sub_16BF4C();
      v157 = v391;
      sub_457B0();
      sub_13AA0C(v158, v159, v160, v161, v162, v163, v164, v165, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
      sub_457A4();
      v166(v156);
      sub_453DC(v402);
      v167 = v381;
      sub_45478(v157, v381, &qword_1C5690, &dword_16F320);
      v168 = v399;
      sub_8B20(v167, 1, v399);
      if (!v117)
      {
        sub_4557C();
        v176 = v113;
        v177 = v379;
        v178(v379, v167, v168);
        v179 = sub_2440(&qword_1C6988, &unk_176730);
        v180 = *(v179 + 48);
        v0 = v176;
        v400 = *(v179 + 64);
        v401[0] = v180;
        v181 = *(sub_2440(&qword_1C6990, &qword_1725A0) + 48);
        sub_16BD7C();
        sub_16BD4C();
        sub_45604();

        (*(v157 + 8))(v177, v168);
        sub_8748(v391, &qword_1C5690, &dword_16F320);
        sub_8748(v404, &qword_1C63E0, &unk_1717D0);
        v265 = xmmword_172570;
        goto LABEL_41;
      }

      sub_8748(v167, &qword_1C5690, &dword_16F320);
      sub_16DBBC();
      sub_455E4();
      sub_45748();
      v169 = sub_45910();
      v170(v169);
      v171 = sub_16DBDC();
      v172 = sub_16E36C();
      if (sub_38670(v172))
      {
        v173 = sub_1BA38();
        sub_458CC(v173);
        sub_456DC(&def_259DC, v174, v175, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
        sub_8A2C();
      }

      (*(v76 + 8))(v168, v94);
      sub_8748(v157, &qword_1C5690, &dword_16F320);
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  sub_45478(v87, v94, &qword_1C6980, &qword_172598);
  sub_8B20(&v87[v113], 1, v73);
  if (v117)
  {
    sub_8748(v0, &qword_1C6980, &qword_172598);
    v118 = sub_8B9C();
    sub_8748(v118, v119, &qword_172598);
    v120 = *(v76 + 8);
    v76 += 8;
    v120(v94, v73);
LABEL_24:
    sub_8748(v87, &qword_1C6978, &qword_172590);
    sub_4565C();
    goto LABEL_25;
  }

  (*(v76 + 32))(v81, &v87[v113], v73);
  sub_45430(&qword_1C69A0, &type metadata accessor for UsoEntity_common_Date.DefinedValues);
  HIDWORD(v360) = sub_16E19C();
  v148 = *(v76 + 8);
  v76 += 8;
  v148(v81, v73);
  v114 = &qword_1C6980;
  v113 = &qword_172598;
  sub_8748(v0, &qword_1C6980, &qword_172598);
  sub_8748(v98, &qword_1C6980, &qword_172598);
  v148(v94, v73);
  sub_8748(v87, &qword_1C6980, &qword_172598);
  sub_4565C();
  if ((v360 & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  sub_16CACC();
  v121 = v394;
  v122 = v393;
  if (!v402[0])
  {
    goto LABEL_43;
  }

  sub_16CCEC();
  sub_456D0();

  sub_16CDAC();
  sub_4578C();
  if (!v114)
  {
    goto LABEL_43;
  }

  v123 = sub_16CD7C();

  if (!v123)
  {
    goto LABEL_43;
  }

  if (!sub_3B35C(v123))
  {

    goto LABEL_43;
  }

  sub_4595C();
  sub_16E48C();
  v124 = v378;

  sub_16C9EC();

  if (!v403)
  {
LABEL_43:
    sub_8AB4();
    sub_214C(v183, v184, v185, v121);
    goto LABEL_44;
  }

  sub_16CB6C();
  sub_456D0();

  sub_16CC7C();

  sub_8B20(v122, 1, v121);
  if (v117)
  {
LABEL_44:
    sub_8748(v122, &qword_1C6970, &qword_172588);
    sub_16CACC();
    if (v402[0])
    {
      sub_16CCEC();
      sub_456D0();

      sub_16CDAC();
      sub_4578C();
      if (v114)
      {
        v186 = sub_16CD7C();

        if (v186)
        {
          if (sub_3B35C(v186))
          {
            sub_4595C();
            sub_16E48C();

            sub_16C9EC();

            if (v403)
            {
              v187 = sub_16CB5C();

LABEL_52:
              v188 = v392;
              sub_16CACC();

              v189 = v402[0];
              if (v402[0])
              {
                sub_16CCEC();
                sub_455D8();

                sub_16CDAC();
                sub_4578C();
                sub_16CD7C();
                sub_455D8();

                if (sub_3B35C(v189))
                {
                  v190 = sub_45568();
                  sub_3B360(v190, v191, v192);
                  sub_457FC();

                  sub_16C9EC();
                }

                else
                {
                }
              }

              if (!v187)
              {
                v206 = sub_16DBBC();
                sub_45674();
                sub_45748();
                v207(v389, v206, v94);
                v208 = sub_16DBDC();
                v209 = sub_16E36C();
                if (os_log_type_enabled(v208, v209))
                {
                  *sub_1BA38() = 0;
                  sub_4593C(&def_259DC, v210, v211, "failed to resolve dateTime with meridien in getMedScheduleWithDefinedValues, return nil");
                  sub_8A2C();
                }

                (*(v76 + 8))(v389, v94);
                goto LABEL_62;
              }

              v193 = sub_16DBBC();
              sub_8B48();
              v394 = *(v76 + 16);
              v394(v188, v193, v94);

              v194 = sub_16DBDC();
              v195 = sub_16E36C();

              if (os_log_type_enabled(v194, v195))
              {
                v196 = swift_slowAlloc();
                v197 = swift_slowAlloc();
                v401[1] = v187;
                v402[0] = v197;
                *v196 = 136315138;
                sub_16D1DC();
                sub_456B8();
                sub_45430(v198, v199);
                v200 = sub_16E68C();
                v202 = sub_3AB7C(v200, v201, v402);

                *(v196 + 4) = v202;
                _os_log_impl(&def_259DC, v194, v195, "here's the datetime: %s", v196, 0xCu);
                sub_2D64(v197);
                v203 = v361;
                sub_8A2C();
                v204 = v400;
                sub_8A2C();

                v205 = *(v401[0] + 8);
                v94 = v204;
                v205(v188, v204);
              }

              else
              {
                v216 = v76;
                v203 = v113;

                v205 = *(v216 + 8);
                v205(v188, v94);
              }

              sub_8388(v398, v402);
              v217 = v395;
              sub_16BF4C();
              v218 = v390;
              sub_13AA0C(v390, v187, 1, v217, v219, v220, v221, v222, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
              sub_457A4();
              v223 = v217;
              v224 = v218;
              v225(v223);
              sub_453DC(v402);
              v226 = v218;
              v227 = v382;
              sub_45478(v226, v382, &qword_1C5690, &dword_16F320);
              sub_456FC(v227);
              if (!v117)
              {
                sub_4557C();
                v400 = v187;
                v233 = v380;
                v234(v380, v227, v402);
                v235 = sub_2440(&qword_1C6988, &unk_176730);
                v236 = (v203 + *(v235 + 48));
                v401[0] = *(v235 + 64);
                v237 = v224;
                v238 = sub_2440(&qword_1C6990, &qword_1725A0);
                v239 = *(v238 + 48);
                sub_16BD7C();
                sub_16BD4C();

                sub_459AC();
                (*(v187 + 8))(v233, v402);
                sub_8748(v237, &qword_1C5690, &dword_16F320);
                sub_8748(v404, &qword_1C63E0, &unk_1717D0);
                sub_214C(v203, 0, 1, v238);
                *v236 = 0;
                v236[1] = 0;
                *(v203 + v401[0]) = 0;
                goto LABEL_73;
              }

              sub_8748(v227, &qword_1C5690, &dword_16F320);
              sub_8B48();
              v394(v383, v193, v94);
              v228 = sub_16DBDC();
              v229 = sub_16E36C();
              if (sub_38670(v229))
              {
                v230 = sub_1BA38();
                sub_458CC(v230);
                sub_456DC(&def_259DC, v231, v232, "failed to resolve dateInterval with meridien in getMedScheduleWithDefinedValues, return nil");
                v224 = v390;
                sub_8A2C();
              }

              sub_459AC();

              v205(v383, v94);
              sub_8748(v224, &qword_1C5690, &dword_16F320);
              sub_8748(v404, &qword_1C63E0, &unk_1717D0);
              sub_2440(&qword_1C6988, &unk_176730);
LABEL_64:
              sub_8AB4();
LABEL_65:
              sub_214C(v212, v213, v214, v215);
              goto LABEL_66;
            }
          }

          else
          {
          }
        }
      }
    }

    v187 = 0;
    goto LABEL_52;
  }

  v125 = v377;
  (*(v377 + 32))(v376, v122, v121);
  sub_45904();
  v126 = v375;
  sub_45814();
  v127();
  v128 = (*(v125 + 88))(v126, v121);
  if (v128 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Afternoon(_:))
  {
    v129 = sub_454F8();
    v130(v129);
    v131 = sub_16D08C();
    sub_8D14(v131);
    sub_456D0();
    sub_16D07C();
    v132 = sub_454D4();
    v133(v132);
    v134 = sub_16D14C();
    sub_8D14(v134);
    sub_455D8();
    sub_16D12C();
    v135 = sub_4589C();
    sub_8D14(v135);
    sub_4563C();
    sub_45868();
    v136 = v395;
    v137 = sub_16BF4C();
    v124 = v374;
    sub_4576C(v137, v138, v139, v140, v141, v142, v143, v144, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
    sub_457A4();
    v145(v136);
    sub_453DC(v402);
    v146 = v373;
    sub_45478(v124, v373, &qword_1C5690, &dword_16F320);
    sub_456FC(v146);
    if (!v117)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v258();
      v259 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v259);
      v260 = sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690(v260);
      sub_16BD4C();
      sub_45604();

      v261 = sub_45720();
      v262(v261);
      sub_8748(v374, &qword_1C5690, &dword_16F320);
      v263 = sub_45550();
      v264(v263, v394);
      sub_8748(v404, &qword_1C63E0, &unk_1717D0);
      v265 = xmmword_172560;
LABEL_41:
      v182 = v400;
      *(v0 + v401[0]) = v265;
      *(v0 + v182) = 1;
LABEL_73:
      sub_457B0();
      goto LABEL_65;
    }

    sub_8748(v146, &qword_1C5690, &dword_16F320);
    sub_16DBBC();
    sub_455E4();
    sub_45748();
    v147 = v401;
    goto LABEL_82;
  }

  if (v128 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Night(_:))
  {
    v240 = sub_454F8();
    v241(v240);
    v242 = sub_16D08C();
    sub_8D14(v242);
    sub_456D0();
    sub_16D07C();
    v243 = sub_454D4();
    v244(v243);
    v245 = sub_16D14C();
    sub_8D14(v245);
    sub_455D8();
    sub_16D12C();
    v246 = sub_4589C();
    sub_8D14(v246);
    sub_4563C();
    sub_45868();
    v247 = v395;
    v248 = sub_16BF4C();
    sub_4576C(v248, v249, v250, v251, v252, v253, v254, v255, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
    sub_457A4();
    v256(v247);
    sub_453DC(v402);
    v257 = v372;
    sub_45478(v124, v372, &qword_1C5690, &dword_16F320);
    sub_456FC(v257);
    if (!v117)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v294();
      v295 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v295);
      v296 = sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690(v296);
      sub_16BD4C();
      sub_45604();

      v297 = sub_45720();
      v298(v297);
      sub_8748(v378, &qword_1C5690, &dword_16F320);
      v299 = sub_45550();
      v300(v299, v394);
      sub_8748(v404, &qword_1C63E0, &unk_1717D0);
      v265 = xmmword_172550;
      goto LABEL_41;
    }

    sub_8748(v257, &qword_1C5690, &dword_16F320);
    sub_16DBBC();
    sub_455E4();
    sub_45748();
    v147 = &v397;
    goto LABEL_82;
  }

  if (v128 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Evening(_:))
  {
    v266 = sub_454F8();
    v267(v266);
    v268 = sub_16D08C();
    sub_8D14(v268);
    sub_456D0();
    sub_16D07C();
    v269 = sub_454D4();
    v270(v269);
    v271 = sub_16D14C();
    sub_8D14(v271);
    sub_455D8();
    sub_16D12C();
    v272 = sub_4589C();
    sub_8D14(v272);
    sub_4563C();
    sub_45868();
    v273 = v395;
    v274 = sub_16BF4C();
    v124 = v371;
    sub_4576C(v274, v275, v276, v277, v278, v279, v280, v281, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
    sub_457A4();
    v282(v273);
    sub_453DC(v402);
    v283 = v369;
    sub_45478(v124, v369, &qword_1C5690, &dword_16F320);
    sub_456FC(v283);
    if (!v117)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v330();
      v331 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v331);
      v332 = sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690(v332);
      sub_16BD4C();
      sub_45604();

      v333 = sub_45720();
      v334(v333);
      sub_8748(v371, &qword_1C5690, &dword_16F320);
      v335 = sub_45550();
      v336(v335, v394);
      sub_8748(v404, &qword_1C63E0, &unk_1717D0);
      v265 = xmmword_172540;
      goto LABEL_41;
    }

    sub_8748(v283, &qword_1C5690, &dword_16F320);
    sub_16DBBC();
    sub_455E4();
    sub_45748();
    v147 = &v393;
LABEL_82:
    v284 = *(v147 - 32);
    v285 = sub_8B9C();
    v286(v285);
    v287 = sub_16DBDC();
    v288 = sub_16E36C();
    if (sub_38670(v288))
    {
      v289 = sub_1BA38();
      v400 = v122;
      sub_458CC(v289);
      sub_456DC(&def_259DC, v290, v291, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
      sub_8A2C();
    }

    (*(v76 + 8))(v284, v94);
    sub_8748(v124, &qword_1C5690, &dword_16F320);
    v292 = sub_45550();
    v293(v292, v121);
    goto LABEL_62;
  }

  if (v128 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Morning(_:))
  {
    v301 = sub_454F8();
    v302(v301);
    v303 = sub_16D08C();
    sub_8D14(v303);
    sub_456D0();
    sub_16D07C();
    v304 = sub_454D4();
    v305(v304);
    v306 = sub_16D14C();
    sub_8D14(v306);
    sub_455D8();
    sub_16D12C();
    v307 = sub_4589C();
    sub_8D14(v307);
    sub_4563C();
    sub_8388(v398, v402);
    v308 = v395;
    sub_16BF4C();
    v309 = v370;
    sub_457B0();
    sub_13AA0C(v310, v311, v312, v313, v314, v315, v316, v317, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
    sub_457A4();
    v318(v308);
    sub_453DC(v402);
    v319 = v365;
    sub_45478(v309, v365, &qword_1C5690, &dword_16F320);
    v320 = v399;
    sub_8B20(v319, 1, v399);
    if (!v117)
    {
      sub_4557C();
      v349 = sub_458F8();
      v350(v349, v319, v320);
      v351 = sub_2440(&qword_1C6988, &unk_176730);
      v401[0] = *(v351 + 48);
      v352 = *(v351 + 64);
      v353 = *(sub_2440(&qword_1C6990, &qword_1725A0) + 48);
      v354 = v361;
      sub_16BD7C();
      sub_16BD4C();
      sub_45604();
      sub_459AC();

      v355 = sub_45720();
      v356(v355);
      sub_8748(v370, &qword_1C5690, &dword_16F320);
      v357 = sub_45550();
      v358(v357, v394);
      sub_8748(v404, &qword_1C63E0, &unk_1717D0);
      *(v354 + v401[0]) = xmmword_172530;
      *(v354 + v352) = 1;
      goto LABEL_73;
    }

    sub_8748(v319, &qword_1C5690, &dword_16F320);
    sub_16DBBC();
    sub_455E4();
    sub_45748();
    v321 = sub_45910();
    v322(v321);
    v323 = sub_16DBDC();
    v324 = sub_16E36C();
    if (sub_38670(v324))
    {
      v325 = sub_1BA38();
      sub_458CC(v325);
      sub_456DC(&def_259DC, v326, v327, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
      sub_8A2C();
    }

    sub_459AC();

    (*(v76 + 8))(v320, v94);
    sub_8748(v370, &qword_1C5690, &dword_16F320);
    v328 = sub_45550();
    v329(v328, v394);
    sub_8748(v404, &qword_1C63E0, &unk_1717D0);
    sub_2440(&qword_1C6988, &unk_176730);
    goto LABEL_64;
  }

  v337 = sub_16DBBC();
  sub_45674();
  sub_45748();
  v338 = v366;
  v339(v366, v337, v94);
  v340 = sub_16DBDC();
  v341 = sub_16E36C();
  if (os_log_type_enabled(v340, v341))
  {
    *sub_1BA38() = 0;
    sub_4593C(&def_259DC, v342, v343, "getMedScheduleWithDefinedValues got a definedValue that is not handled, return nil");
    sub_8A2C();
  }

  (*(v76 + 8))(v338, v94);
  v344 = *(v377 + 8);
  v344(v376, v121);
  sub_8748(v404, &qword_1C63E0, &unk_1717D0);
  sub_2440(&qword_1C6988, &unk_176730);
  sub_8AB4();
  sub_214C(v345, v346, v347, v348);
  v344(v375, v121);
LABEL_66:
  sub_45924();
}

void getMedEventDate(from:deviceState:)()
{
  sub_4597C();
  v61 = v1;
  v3 = v2;
  v4 = sub_16BF5C();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_887C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_8C94();
  __chkstk_darwin(v23);
  v25 = &v54 - v24;
  sub_16CB3C();
  sub_45478(v64, v63, &qword_1C63E0, &unk_1717D0);
  if (!v63[3])
  {
    sub_8748(v63, &qword_1C63E0, &unk_1717D0);
    goto LABEL_9;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_9:
    v41 = sub_16DBBC();
    sub_45674();
    sub_45904();
    v42(v21, v41, v13);
    v43 = sub_16DBDC();
    v44 = sub_16E36C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = sub_1BA38();
      *v45 = 0;
      _os_log_impl(&def_259DC, v43, v44, "couldn't convert to task to common_MedicationEvent in getMedEventDate, returning nil", v45, 2u);
      sub_8A2C();
    }

    (*(v16 + 8))(v21, v13);
    goto LABEL_15;
  }

  v60 = v3;
  v26 = v63[5];

  v27 = v26;
  sub_16CACC();

  if (!v63[0] || (v27 = sub_16CCFC(), , !v27))
  {
    sub_16DBBC();
    sub_455E4();
    sub_45904();
    v46(v0, v27, v13);
    v47 = sub_16DBDC();
    v48 = sub_16E36C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = sub_1BA38();
      *v49 = 0;
      _os_log_impl(&def_259DC, v47, v48, "couldn't convert to dateTime in getMedEventDate, returning nil", v49, 2u);
      sub_8A2C();
    }

    (*(v16 + 8))(v0, v13);
LABEL_15:
    sub_8748(v64, &qword_1C63E0, &unk_1717D0);
    goto LABEL_16;
  }

  v28 = sub_16CB5C();

  v29 = sub_16DBBC();
  sub_8B48();
  sub_45904();
  v30(v25, v29, v13);

  v31 = sub_16DBDC();
  v32 = sub_16E36C();

  v59 = v32;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v58 = v33;
    v56 = swift_slowAlloc();
    v62 = v28;
    v63[0] = v56;
    *v33 = 136315138;
    sub_16D1DC();
    sub_456B8();
    sub_45430(v34, v35);
    v55 = v31;
    v36 = sub_16E68C();
    v38 = sub_3AB7C(v36, v37, v63);
    v57 = v28;
    v39 = v38;

    v40 = v58;
    *(v58 + 1) = v39;
    v31 = v55;
    _os_log_impl(&def_259DC, v55, v59, "here's the datetime: %s", v40, 0xCu);
    sub_2D64(v56);
    sub_8A2C();
    sub_8A2C();
  }

  (*(v16 + 8))(v25, v13);
  sub_8388(v61, v63);
  sub_16BF4C();
  sub_13B45C();

  (*(v7 + 8))(v12, v4);
  sub_453DC(v63);
  sub_8748(v64, &qword_1C63E0, &unk_1717D0);
LABEL_16:
  sub_457B0();
  sub_214C(v50, v51, v52, v53);
  sub_45924();
}

uint64_t hasDosageEdit(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (v36)
  {
    v5 = sub_16CE1C();
    sub_455B0(v5, v6, v7, v5, v8, v9, v10, v11, v32, v33);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (!v35)
      {
        goto LABEL_12;
      }

      sub_16CCEC();
      sub_4578C();
      if (!v0)
      {
        goto LABEL_12;
      }

      sub_16CD8C();
      sub_455D8();

      if (!sub_3B35C(v0))
      {

        goto LABEL_13;
      }

      v12 = sub_45568();
      sub_3B360(v12, v13, v14);
      sub_457FC();

      sub_45850();

      if (v34)
      {

        v15 = sub_16CC2C();

        if (v15)
        {

          v16 = 1;
LABEL_14:
          sub_8748(v37, &qword_1C63E0, &unk_1717D0);
          return v16;
        }
      }

      else
      {
LABEL_12:
      }

LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    v29 = &qword_1C63E0;
    v30 = &unk_1717D0;
    v28 = v37;
  }

  else
  {
    sub_45624();
    v20 = sub_8748(v17, v18, v19);
    v28 = sub_455A0(v20, v21, v22, v23, v24, v25, v26, v27, v32, v33, v35);
  }

  sub_8748(v28, v29, v30);
  return 0;
}

void hasDateEdit(from:)()
{
  sub_4597C();
  v0 = sub_16CB8C();
  v1 = sub_42F0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_2440(&qword_1C69A8, &qword_1725A8);
  v10 = sub_8B38(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = sub_2440(&qword_1C69B0, qword_1725B0);
  v16 = sub_4348(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_887C();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v74 - v24;
  __chkstk_darwin(v23);
  v27 = &v74 - v26;
  sub_16CB3C();
  sub_45478(v78, v77, &qword_1C63E0, &unk_1717D0);
  if (!v77[3])
  {
    sub_8748(v77, &qword_1C63E0, &unk_1717D0);
    goto LABEL_21;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_21:
    sub_8748(v78, &qword_1C63E0, &unk_1717D0);
    goto LABEL_22;
  }

  v28 = v3;

  sub_16CACC();
  if (v77[0] && (v29 = sub_16CCFC(), , v29))
  {
    sub_16CB7C();
  }

  else
  {
    sub_457B0();
    sub_214C(v30, v31, v32, v33);
  }

  (*(v28 + 104))(v25, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v0);
  sub_457B0();
  sub_214C(v34, v35, v36, v37);
  v38 = *(v9 + 48);
  sub_45478(v27, v14, &qword_1C69B0, qword_1725B0);
  sub_45478(v25, &v14[v38], &qword_1C69B0, qword_1725B0);
  sub_8B20(v14, 1, v0);
  if (v46)
  {
    v39 = qword_1725B0;
    sub_45814();
    sub_8748(v40, v41, v42);
    sub_45814();
    sub_8748(v43, v44, v45);
    sub_8B20(&v14[v38], 1, v0);
    if (v46)
    {
      sub_8748(v14, &qword_1C69B0, qword_1725B0);
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  sub_45478(v14, v21, &qword_1C69B0, qword_1725B0);
  sub_8B20(&v14[v38], 1, v0);
  if (v46)
  {
    v39 = qword_1725B0;
    sub_45814();
    sub_8748(v47, v48, v49);
    sub_45814();
    sub_8748(v50, v51, v52);
    (*(v28 + 8))(v21, v0);
LABEL_16:
    sub_8748(v14, &qword_1C69A8, &qword_1725A8);
    goto LABEL_17;
  }

  (*(v28 + 32))(v8, &v14[v38], v0);
  sub_45430(&qword_1C69B8, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
  v54 = sub_16E19C();
  v55 = *(v28 + 8);
  v55(v8, v0);
  v39 = &qword_1C69B0;
  sub_8748(v25, &qword_1C69B0, qword_1725B0);
  sub_8748(v27, &qword_1C69B0, qword_1725B0);
  v55(v21, v0);
  sub_8748(v14, &qword_1C69B0, qword_1725B0);
  if (v54)
  {
    goto LABEL_20;
  }

LABEL_17:
  sub_16CACC();
  v53 = v77[0];
  if (v77[0])
  {
    sub_16CCFC();
    sub_455D8();

    sub_16CB9C();
    sub_4578C();
  }

  sub_16CACC();

  if (v77[0])
  {
    v56 = v77[0];
    sub_16CCEC();
    sub_457E4();
  }

  else
  {
    v56 = 0;
  }

  getMedScheduleDateTime(from:)(v56);
  sub_45994();
  if (v39)
  {
    v57 = sub_16CB9C();

    if (!v53)
    {
LABEL_32:
      v58 = 0;
      if (!v57)
      {
        LOBYTE(v59) = 0;
        LOBYTE(v60) = 0;
        v39 = (&def_259DC + 1);
LABEL_37:
        LOBYTE(v61) = 1;
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v57 = 0;
    if (!v53)
    {
      goto LABEL_32;
    }
  }

  sub_16CA5C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v58 = v39 ^ 1;
  if (!v57)
  {
    v60 = 0;
    goto LABEL_36;
  }

LABEL_33:

  sub_16CA5C();
  sub_457E4();
  sub_16CB1C();
  sub_45838();
  v60 = v39 ^ 1;
  if (!v53)
  {
    v59 = 0;
    v39 = (&def_259DC + 1);
    goto LABEL_38;
  }

LABEL_36:

  sub_16CA5C();
  sub_455D8();

  v59 = sub_16CB1C();
  sub_45838();
  if (!v57)
  {
    goto LABEL_37;
  }

LABEL_38:

  v61 = sub_16CA5C();

  if (!v61)
  {
LABEL_42:
    if (v39)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  v62 = sub_16CB1C();
  v64 = v63;

  LOBYTE(v61) = 0;
  if (v39)
  {
    if (v64)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (v64)
  {
LABEL_45:
    if (v58 & 1) != 0 && (v60)
    {
      v65 = 0;
      goto LABEL_48;
    }

LABEL_51:
    v65 = 1;
    if (!v53)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v65 = v59 == v62;
  if ((v58 & v60 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (!v53)
  {
LABEL_55:
    if (v61)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_52:

  sub_16CA2C();
  sub_455D8();

  sub_16CC4C();
  sub_45994();
  if (!v39)
  {
    goto LABEL_55;
  }

  sub_16CB1C();

  if (v61)
  {
    goto LABEL_61;
  }

LABEL_56:

  sub_16CA2C();
  sub_457E4();
  if (v57)
  {
    sub_16CC4C();
    sub_45994();
    if (v39)
    {
      sub_16CB1C();

      if (!v53)
      {
        LOBYTE(v59) = 0;
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

LABEL_60:
  if (!v53)
  {
LABEL_65:
    v69 = 1;
    if (v61)
    {
      goto LABEL_72;
    }

    LOBYTE(v59) = 0;
    goto LABEL_67;
  }

LABEL_61:

  v66 = sub_16CA2C();

  if (!v66)
  {
    goto LABEL_65;
  }

  v67 = sub_16CC4C();

  if (!v67)
  {
    goto LABEL_65;
  }

  LOBYTE(v59) = sub_16CB1C();
  sub_45838();
  if (v61)
  {
    v68 = 1;
    goto LABEL_71;
  }

LABEL_67:

  sub_16CA2C();
  sub_457E4();
  if (v57)
  {
    v70 = sub_16CC4C();

    if (v70)
    {
      LODWORD(v76) = v65;
      sub_16CB1C();

      v69 = 0;
      goto LABEL_72;
    }
  }

  v68 = 0;
LABEL_71:
  v69 = v68;
LABEL_72:
  if (v53)
  {

    sub_16CA1C();
    sub_455D8();

    sub_16CB1C();
    sub_458B4();
    if (v69)
    {
LABEL_80:

      sub_16CA1C();
      sub_455D8();

      v75 = sub_16CB1C();
      sub_458B4();
      if ((v69 & 1) == 0)
      {
        sub_458E4();
        goto LABEL_85;
      }

LABEL_83:
      sub_8748(v78, &qword_1C63E0, &unk_1717D0);

      goto LABEL_22;
    }
  }

  else if (v69)
  {
    goto LABEL_79;
  }

  sub_16CA1C();
  sub_457E4();
  if (v57)
  {
    sub_16CB1C();
    sub_458B4();
    if (v53)
    {
      goto LABEL_80;
    }

    goto LABEL_84;
  }

LABEL_79:
  if (v53)
  {
    goto LABEL_80;
  }

  if (v69)
  {
    goto LABEL_83;
  }

LABEL_84:
  sub_458E4();
  v75 = 0;
  LOBYTE(v59) = 1;
LABEL_85:

  v71 = sub_16CA1C();

  if (v71)
  {
    sub_16CB1C();
    v73 = v72;

    sub_8748(v78, &qword_1C63E0, &unk_1717D0);
    if (v59 & 1) != 0 || (v73)
    {
      sub_457D4();
    }
  }

  else
  {
    sub_8748(v78, &qword_1C63E0, &unk_1717D0);

    sub_457D4();
  }

LABEL_22:
  sub_45924();
}

BOOL hasTimeEdit(from:)()
{
  v2 = sub_16CB3C();
  sub_45730(v2, v3, &qword_1C63E0, &unk_1717D0, v4, v5);
  if (!v32[3])
  {
    sub_8748(v32, &qword_1C63E0, &unk_1717D0);
    goto LABEL_6;
  }

  v6 = sub_16CE1C();
  sub_455B0(v6, v7, v8, v6, v9, v10, v11, v12, v30, v31);
  if ((sub_457BC() & 1) == 0)
  {
LABEL_6:
    sub_8748(v33, &qword_1C63E0, &unk_1717D0);
    return 0;
  }

  sub_45754();
  sub_45630();
  sub_16CACC();
  if (v32[0])
  {
    sub_16CCFC();
    sub_455D8();

    sub_16CBAC();
    sub_4578C();
  }

  sub_45630();
  sub_16CACC();

  if (v32[0])
  {
    v14 = v32[0];
    sub_16CCEC();
    sub_457E4();
  }

  else
  {
    v14 = 0;
  }

  getMedScheduleDateTime(from:)(v14);
  sub_45994();
  if (v0)
  {
    v15 = sub_16CBAC();

    if (!v32[0])
    {
LABEL_16:
      v16 = 0;
      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    if (!v32[0])
    {
      goto LABEL_16;
    }
  }

  sub_16CA7C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v16 = v0 ^ 1;
  if (!v15)
  {
LABEL_19:

    sub_16CA7C();
    sub_455D8();

    v17 = sub_16CB1C();
    sub_458B4();
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_17:

  sub_16CA7C();
  sub_457E4();
  sub_16CB1C();

LABEL_18:
  if (v32[0])
  {
    goto LABEL_19;
  }

  v17 = 0;
  v1 = 1;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_22:

  v18 = sub_16CA7C();

  if (v18)
  {
    v19 = sub_16CB1C();
    v21 = v20;

    if (v1)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_27:
  v19 = 0;
  v21 = 1;
  if (v1)
  {
LABEL_28:
    if (v21)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_24:
  if ((v21 & 1) == 0)
  {
    v22 = v17 == v19;
    if (v16)
    {
      goto LABEL_31;
    }

LABEL_33:
    v22 = 1;
    if (!v32[0])
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((v16 & 1) == 0)
  {
    goto LABEL_33;
  }

  v22 = 0;
LABEL_31:
  if (!v32[0])
  {
LABEL_36:
    v23 = 0;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_34:

  sub_16CA8C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v23 = v17 ^ 1;
  if (!v15)
  {
    goto LABEL_39;
  }

LABEL_37:

  sub_16CA8C();
  sub_457E4();
  sub_16CB1C();

LABEL_38:
  if (!v32[0])
  {
    v24 = 0;
    v1 = 1;
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_39:

  sub_16CA8C();
  sub_455D8();

  v24 = sub_16CB1C();
  sub_458B4();
  if (!v15)
  {
LABEL_40:
    sub_8748(v33, &qword_1C63E0, &unk_1717D0);
    goto LABEL_49;
  }

LABEL_42:

  v25 = sub_16CA8C();

  if (v25)
  {
    v26 = sub_16CB1C();
    v28 = v27;

    sub_8748(v33, &qword_1C63E0, &unk_1717D0);
    if (v1)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  sub_8748(v33, &qword_1C63E0, &unk_1717D0);

LABEL_49:

  v26 = 0;
  v28 = 1;
  if (v1)
  {
LABEL_50:
    if (v28)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_44:
  if ((v28 & 1) == 0)
  {
    if (v23)
    {
      v29 = v24 == v26;
      if (v22)
      {
        return !v29;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (v23)
  {
LABEL_54:
    v29 = 0;
    return !v29;
  }

LABEL_52:
  if (!v22)
  {
    goto LABEL_54;
  }

  v29 = 1;
  return !v29;
}

void isSpecificMedRequest(from:deviceState:)()
{
  sub_4597C();
  v0 = sub_16DBEC();
  v1 = sub_42F0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_2440(&qword_1C69C0, &unk_174290);
  v10 = sub_8B38(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  sub_8B9C();
  getMedScheduleWithDefinedValues(from:deviceState:)();
  v45 = getLocalizedMedName(from:)();
  v20 = v19;
  v21 = getUSOMedNames(from:)();
  if (v21)
  {
    v22 = *(v21 + 16);

    v23 = v22 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_2440(&qword_1C6988, &unk_176730);
  sub_8B20(v18, 1, v24);
  v25 = v25 && v20 == 0;
  v26 = !v25 || v23;
  v46 = v23;
  v47 = v26;
  v27 = sub_16DBBC();
  sub_8B48();
  (*(v3 + 16))(v8, v27, v0);
  sub_45478(v18, v15, &qword_1C69C0, &unk_174290);

  v28 = sub_16DBDC();
  v29 = sub_16E36C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v44 = v0;
    v31 = v30;
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v31 = 136315906;
    v32 = sub_16E3DC();
    v34 = v33;
    sub_8748(v15, &qword_1C69C0, &unk_174290);
    v35 = sub_3AB7C(v32, v34, v50);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v48 = v45;
    v49 = v20;
    sub_2440(&qword_1C69C8, &qword_174150);
    v36 = sub_16E3DC();
    v38 = v37;

    v39 = sub_3AB7C(v36, v38, v50);

    *(v31 + 14) = v39;
    *(v31 + 22) = 2080;
    if (v46)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (v46)
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    v42 = sub_3AB7C(v40, v41, v50);

    *(v31 + 24) = v42;
    *(v31 + 32) = 1024;
    *(v31 + 34) = v47;
    _os_log_impl(&def_259DC, v28, v29, "Checking specific med request:\nschedule: %s,\nlocalizedMedName: %s,\nfirstUSOMedName: %s,\ncombined: %{BOOL}d", v31, 0x26u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    (*(v3 + 8))(v8, v44);
  }

  else
  {

    sub_8748(v15, &qword_1C69C0, &unk_174290);
    (*(v3 + 8))(v8, v0);
  }

  sub_8748(v18, &qword_1C69C0, &unk_174290);
  sub_45924();
}

uint64_t isQueryAboutDetails(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (!v32)
  {
    v5 = sub_8748(v31, &qword_1C63E0, &unk_1717D0);
LABEL_7:
    sub_45730(v5, v6, &qword_1C63E0, &unk_1717D0, v7, v8);
    if (v32)
    {
      sub_16CE5C();
      if (sub_4551C())
      {
        sub_45754();
        sub_45630();
        sub_16CD1C();
        if (v31[0] && (sub_16CCFC(), sub_4578C(), v0))
        {

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        sub_45630();
        sub_16CD1C();
        goto LABEL_19;
      }

      v22 = &qword_1C63E0;
      v23 = &unk_1717D0;
      v21 = v33;
    }

    else
    {
      sub_45624();
      v13 = sub_8748(v10, v11, v12);
      v21 = sub_455A0(v13, v14, v15, v16, v17, v18, v19, v20, v29, v30, v31[0]);
    }

    sub_8748(v21, v22, v23);
    return 0;
  }

  sub_16CF2C();
  v5 = sub_4551C();
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_45754();
  sub_45630();
  sub_16CC0C();
  if (v31[0] && (sub_16CCFC(), sub_4578C(), v0))
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_45630();
  sub_16CC0C();
LABEL_19:

  if (!v31[0])
  {
    goto LABEL_25;
  }

  sub_16CCEC();
  sub_4578C();
  if (!v0)
  {
    goto LABEL_25;
  }

  sub_16CD8C();
  sub_455D8();

  if (!sub_3B35C(v0))
  {

LABEL_26:
    sub_8748(v33, &qword_1C63E0, &unk_1717D0);
    return (v9 & 1) != 0;
  }

  v24 = sub_45568();
  sub_3B360(v24, v25, v26);
  sub_457FC();

  sub_45850();

  if (!v30)
  {
LABEL_25:

    goto LABEL_26;
  }

  v27 = sub_16CC2C();

  if (v27)
  {

    sub_8748(v33, &qword_1C63E0, &unk_1717D0);
    return 1;
  }

  sub_8748(v33, &qword_1C63E0, &unk_1717D0);
  return v9 != 0;
}

BOOL medScheduleHasOneMed(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3);
  if (v32)
  {
    v4 = sub_16CE1C();
    sub_455B0(v4, v5, v6, v4, v7, v8, v9, v10, v29, v30);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v31)
      {
        sub_16CCEC();
        sub_455D8();

        v11 = sub_16CD8C();
        if (v11)
        {
          v12 = sub_3A700(v11);

          v13 = v12 == 1;
LABEL_10:
          sub_8748(v33, &qword_1C63E0, &unk_1717D0);
          return v13;
        }
      }

      v13 = 0;
      goto LABEL_10;
    }

    v26 = &qword_1C63E0;
    v27 = &unk_1717D0;
    v25 = v33;
  }

  else
  {
    sub_45624();
    v17 = sub_8748(v14, v15, v16);
    v25 = sub_455A0(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30, v31);
  }

  sub_8748(v25, v26, v27);
  return 0;
}

uint64_t getMedDosageUnit(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (v36)
  {
    v5 = sub_16CE1C();
    sub_455B0(v5, v6, v7, v5, v8, v9, v10, v11, v32, v33);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v35)
      {
        sub_16CCEC();
        sub_4578C();
        if (v0)
        {
          sub_16CD8C();
          sub_455D8();

          if (sub_3B35C(v0))
          {
            v12 = sub_45568();
            sub_3B360(v12, v13, v14);
            sub_457FC();

            sub_45850();

            v15 = v34;
LABEL_12:
            v30 = getUsoMedDosageUnit(from:)(v15);

            sub_8748(v37, &qword_1C63E0, &unk_1717D0);
            return v30;
          }
        }
      }

      v15 = 0;
      goto LABEL_12;
    }

    v28 = &qword_1C63E0;
    v29 = &unk_1717D0;
    v27 = v37;
  }

  else
  {
    sub_45624();
    v19 = sub_8748(v16, v17, v18);
    v27 = sub_455A0(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v35);
  }

  sub_8748(v27, v28, v29);
  return 0;
}

uint64_t getMedDosageValue(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4);
  if (v36)
  {
    v5 = sub_16CE1C();
    sub_455B0(v5, v6, v7, v5, v8, v9, v10, v11, v32, v33);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v35)
      {
        sub_16CCEC();
        sub_4578C();
        if (v0)
        {
          sub_16CD8C();
          sub_455D8();

          if (sub_3B35C(v0))
          {
            v12 = sub_45568();
            sub_3B360(v12, v13, v14);
            sub_457FC();

            sub_45850();

            v15 = v34;
LABEL_12:
            v30 = getMedDosageValue(from:)(v15);

            sub_8748(v37, &qword_1C63E0, &unk_1717D0);
            return v30;
          }
        }
      }

      v15 = 0;
      goto LABEL_12;
    }

    v28 = &qword_1C63E0;
    v29 = &unk_1717D0;
    v27 = v37;
  }

  else
  {
    sub_45624();
    v19 = sub_8748(v16, v17, v18);
    v27 = sub_455A0(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v35);
  }

  sub_8748(v27, v28, v29);
  return 0;
}

uint64_t sub_45430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_45478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_2440(a3, a4);
  sub_8B38(v5);
  v7 = *(v6 + 16);
  v8 = sub_8B9C();
  v9(v8);
  return a2;
}

uint64_t sub_454D4()
{
  v1 = *(*(v0 - 320) + 104);
  result = *(v0 - 304);
  v3 = *(v0 - 312);
  return result;
}

uint64_t sub_454F8()
{
  v1 = *(*(v0 - 344) + 104);
  result = *(v0 - 328);
  v3 = *(v0 - 336);
  return result;
}

uint64_t sub_4551C()
{

  return swift_dynamicCast();
}

uint64_t sub_455BC(uint64_t result)
{
  v2 = *(result + 48);
  *(v1 - 208) = *(result + 64);
  *(v1 - 200) = v2;
  return result;
}

uint64_t sub_455E4()
{

  return swift_beginAccess();
}

uint64_t sub_45604()
{

  return sub_214C(v1, 0, 1, v0);
}

uint64_t sub_4563C()
{

  return DateTime.init(withDate:occurringIn:)(v0, v1);
}

void sub_4565C()
{
  v1 = *(v0 - 576);
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);
  v4 = *(v0 - 568);
}

uint64_t sub_45674()
{

  return swift_beginAccess();
}

uint64_t sub_45690(uint64_t a1)
{
  v2 = *(a1 + 48);

  return sub_16BD7C();
}

void sub_456DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_45730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_45478(va1, va, a3, a4);
}

uint64_t sub_45754()
{
}

void sub_4576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_13AA0C(v22, v21, 1, v20, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_4578C()
{
}

uint64_t sub_457BC()
{

  return swift_dynamicCast();
}

uint64_t sub_457E4()
{
}

uint64_t sub_457FC()
{

  return sub_16E48C();
}

uint64_t sub_45820()
{
  v2 = *(v0 + 32);
}

uint64_t sub_45838()
{
}

uint64_t sub_45850()
{

  return sub_16C9EC();
}

uint64_t sub_45868()
{
  v2 = *(v0 - 224);

  return sub_8388(v2, v0 - 184);
}

uint64_t sub_45884()
{
}

uint64_t sub_4589C()
{

  return sub_16D1DC();
}

uint64_t sub_458B4()
{
}

void sub_4593C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_4595C()
{

  return sub_3B360(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_45994()
{
}

uint64_t sub_459AC()
{
  v2 = *(v0 - 568);
}

uint64_t type metadata accessor for WellnessUnsupportedCATsSimple()
{
  result = qword_1C69D0;
  if (!qword_1C69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45A50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_45AA4(a1, a2);
}

uint64_t sub_45AA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_372FC(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16D5DC();
  (*(v8 + 8))(a2, v2);
  sub_45D08(a1);
  return v16;
}

uint64_t sub_45C00(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16D5EC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_45D08(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_45D70(uint64_t a1)
{
  v100 = sub_16C89C();
  v2 = sub_42F0(v100);
  v99 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_4304();
  sub_130A0(v7 - v6);
  v8 = sub_2440(&qword_1C6250, &qword_1715A8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_130A0(v96 - v10);
  v113 = sub_16C83C();
  v11 = sub_42F0(v113);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_4304();
  v114 = v17 - v16;
  v18 = sub_16C80C();
  v19 = sub_42F0(v18);
  v116 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_4304();
  v115 = v24 - v23;
  v25 = sub_16C7DC();
  v26 = sub_42F0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_4304();
  v33 = v32 - v31;
  v34 = sub_16DBEC();
  v35 = sub_42F0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v40);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v41);
  v43 = v96 - v42;
  v44 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v108 = v37;
  v46 = *(v37 + 16);
  v45 = v37 + 16;
  v112 = v44;
  v109 = v34;
  v111 = v45;
  v110 = v46;
  v46(v43, v44, v34);
  v47 = *(v28 + 16);
  v102 = v28 + 16;
  v101 = v47;
  v47(v33, a1, v25);
  v48 = sub_16DBDC();
  v49 = sub_16E36C();
  v50 = sub_4B38C(v49);
  v105 = v25;
  if (v50)
  {
    v51 = sub_8BD8();
    v97 = v13;
    v52 = v51;
    v96[0] = sub_CA30();
    v118[0] = v96[0];
    *v52 = 136315138;
    sub_4B13C(&qword_1C5998, &type metadata accessor for Input);
    v53 = sub_16E68C();
    v96[1] = a1;
    v54 = v18;
    v56 = v55;
    v57 = *(v28 + 8);
    v58 = sub_4B4A4();
    v59(v58);
    sub_3AB7C(v53, v56, v118);
    sub_4B430();
    v18 = v54;

    *(v52 + 4) = v53;
    _os_log_impl(&def_259DC, v48, v45, "LoggingCorrectionsFlow on(correction:) for input: %s", v52, 0xCu);
    v60 = sub_4B4F8(v119);
    sub_2D64(v60);
    sub_8A2C();
    v13 = v97;
    sub_8A2C();
  }

  else
  {

    v61 = *(v28 + 8);
    v62 = sub_4B4A4();
    v63(v62);
  }

  v64 = *(v108 + 8);
  v65 = v109;
  v64(v43, v109);
  v66 = v115;
  sub_16C7CC();
  v67 = v116;
  v68 = *(v116 + 88);
  v69 = sub_38E50();
  v71 = v70(v69);
  v72 = v114;
  if (v71 == enum case for Parse.uso(_:))
  {
    v73 = *(v67 + 96);
    v74 = sub_38E50();
    v75(v74);
    (*(v13 + 32))(v72, v66, v113);
    sub_4B4F8(&v121);
    sub_385D8();
    swift_beginAccess();
    v76 = v104;
    sub_4B370();
    v77();
    v78 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = sub_1BA38();
      sub_1BA50(v80);
      sub_4B3F0(&def_259DC, v78, v76, "LoggingCorrectionsFlow examining USO parse...");
      sub_8A2C();
    }

    v64(v76, v65);
    v81 = v106;
    v82 = v105;
    sub_4B408();
    v83();
    sub_214C(v81, 0, 1, v82);
    v84 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
    v85 = v107;
    sub_4B52C();
    sub_4B060(v81, v85 + v84, &qword_1C6250, &qword_1715A8);
    swift_endAccess();
    if (sub_46C8C(v72))
    {
      v86 = v98;
      sub_16C82C();
      v87 = sub_10E3DC();
      sub_13094(v120);
      v88(v86, v100);
      if (v87)
      {
        v117[3] = &type metadata for WellnessTask;
        v117[4] = sub_4B0B0();
        v117[0] = v87;

        v89 = v107;
        sub_47154(v117, v118);

        (*(v13 + 8))(v72, v113);
        sub_2D64(v117);
        sub_4B52C();
        sub_4B104(v118, v89 + 16);
        swift_endAccess();
        return 1;
      }
    }

    (*(v13 + 8))(v72, v113);
  }

  else
  {
    sub_4B4F8(&v121);
    sub_385D8();
    swift_beginAccess();
    v91 = v103;
    sub_4B370();
    v92();
    v93 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = sub_1BA38();
      sub_1BA50(v95);
      sub_4B3F0(&def_259DC, v93, v91, "LoggingCorrectionsFlow encountered non-uso parse. Not handling.");
      sub_1BA00();
    }

    v64(v91, v65);
    (*(v116 + 8))(v115, v18);
  }

  return 0;
}

uint64_t sub_46598()
{
  v0 = sub_16DBEC();
  v1 = sub_42F0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1BA38();
    *v12 = 0;
    _os_log_impl(&def_259DC, v10, v11, "LoggingCorrectionsFlow on(input:) - This is unexpected", v12, 2u);
    sub_38604();
  }

  (*(v3 + 8))(v8, v0);
  return 0;
}

uint64_t sub_466D8()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_16DBEC();
  v1[14] = v3;
  sub_888C(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_467A0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = *(v2 + 64);
  sub_16DBBC();
  v4 = (v1 + 16);
  v5 = v0[14];
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = v0[17];
      sub_385D8();
      swift_beginAccess();
      v7 = *v4;
      v8 = sub_1B9F0();
      v9(v8);
      v10 = sub_16DBDC();
      v11 = sub_16E36C();
      if (sub_1BA1C(v11))
      {
        v12 = sub_1BA38();
        sub_1BA50(v12);
        sub_1B9D0(&def_259DC, v13, v14, "LoggingCorrectionsFlow Execute - Correcting");
        sub_1BA00();
      }

      v15 = v0[17];
      v16 = v0[14];
      v17 = v0[15];

      v18 = *(v17 + 8);
      v19 = sub_C9F8();
      v20(v19);
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_46AAC;
      v22 = v0[12];
      v23 = v0[13];

      return sub_48B90();
    }

    v44 = v0[16];
    sub_385D8();
    swift_beginAccess();
    v45 = *v4;
    v46 = sub_1B9F0();
    v47(v46);
    v48 = sub_16DBDC();
    v49 = sub_16E36C();
    if (sub_1BA1C(v49))
    {
      v50 = sub_1BA38();
      sub_1BA50(v50);
      sub_1B9D0(&def_259DC, v51, v52, "LoggingCorrectionsFlow Execute - Done");
      sub_1BA00();
    }

    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[14];
    v56 = v0[12];

    v57 = *(v54 + 8);
    v58 = sub_C9F8();
    v59(v58);
    sub_16C50C();
  }

  else
  {
    v25 = v0[18];
    sub_385D8();
    swift_beginAccess();
    v26 = *v4;
    v27 = sub_1B9F0();
    v28(v27);
    v29 = sub_16DBDC();
    v30 = sub_16E36C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "LoggingCorrectionsFlow Execute - Ready");
      sub_1BA00();
    }

    v34 = v0[18];
    v35 = v0[14];
    v36 = v0[15];
    v37 = v0[12];
    v38 = v0[13];

    v39 = *(v36 + 8);
    v40 = sub_C9F8();
    v41(v40);
    *(v2 + 64) = 1;
    v0[11] = v38;
    type metadata accessor for LoggingCorrectionsFlow();
    sub_4B2C8();
    sub_4B13C(v42, v43);
    sub_16C4DC();
  }

  v61 = v0[17];
  v60 = v0[18];
  v62 = v0[16];

  sub_C9BC();

  return v63();
}