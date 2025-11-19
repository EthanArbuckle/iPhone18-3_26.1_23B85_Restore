uint64_t sub_131018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v27 = sub_13569C(*(v22 + 320));
  sub_16C43C();
  v28 = sub_135784();
  v29(v28);
  sub_1355F4();
  (*(v23 + 8))(v20, v25);
  v30 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  *(v22 + 336) = sub_135740();
  sub_16C28C();
  v43 = sub_16C32C();

  (*(v26 + 8))(v21, a15);
  sub_8748(a17, &qword_1C5690, &dword_16F320);

  sub_1354C4();
  v42 = v31;
  v44 = v32;
  sub_8748(v24, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_13120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[86] = v4;
  v5[85] = a4;
  v5[84] = a3;
  v5[83] = a2;
  v5[82] = a1;
  v6 = *(*(sub_2440(&qword_1C63F0, &unk_1717F0) - 8) + 64) + 15;
  v5[87] = swift_task_alloc();
  v7 = *(*(sub_2440(&dword_1C63F8, &qword_171800) - 8) + 64) + 15;
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v8 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64) + 15;
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v9 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  Model = type metadata accessor for BloodPressureQueryModel();
  v5[96] = Model;
  v11 = *(*(Model - 8) + 64) + 15;
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v12 = type metadata accessor for SnippetHeaderModel();
  v5[104] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  v14 = sub_16BF5C();
  v5[108] = v14;
  v15 = *(v14 - 8);
  v5[109] = v15;
  v16 = *(v15 + 64) + 15;
  v5[110] = swift_task_alloc();
  v17 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  v5[111] = swift_task_alloc();
  v5[112] = swift_task_alloc();
  v5[113] = swift_task_alloc();
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v18 = sub_16DBEC();
  v5[116] = v18;
  v19 = *(v18 - 8);
  v5[117] = v19;
  v20 = *(v19 + 64) + 15;
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v21 = sub_16D5CC();
  v5[123] = v21;
  v22 = *(v21 - 8);
  v5[124] = v22;
  v23 = *(v22 + 64) + 15;
  v5[125] = swift_task_alloc();

  return _swift_task_switch(sub_131608, 0, 0);
}

uint64_t sub_131608()
{
  v3 = sub_83A4C(*(v1 + 664));
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v1 + 1000);
      v7 = *(v1 + 992);
      v8 = *(v1 + 984);
      sub_16E23C();

      goto LABEL_10;
    }
  }

  v9 = *(v1 + 976);
  v10 = *(v1 + 936);
  v11 = *(v1 + 928);
  sub_16DBBC();
  sub_8B48();
  v12 = *(v10 + 16);
  v13 = sub_6B5B8();
  v14(v13);
  v15 = sub_16DBDC();
  v16 = sub_16E36C();
  if (sub_1BA1C(v16))
  {
    v17 = sub_1BA38();
    sub_1BA50(v17);
    sub_1B9D0(&def_259DC, v18, v19, "#GetBloodPressureFlow: intentResponse.unit is empty");
    sub_1BA00();
  }

  v6 = *(v1 + 1000);
  v7 = *(v1 + 992);
  v8 = *(v1 + 984);
  v0 = *(v1 + 976);
  v20 = *(v1 + 936);
  v21 = *(v1 + 928);

  v22 = *(v20 + 8);
  v2 = v20 + 8;
  v22(v0, v21);
  sub_16E23C();
LABEL_10:
  sub_16D5BC();
  sub_680F8();
  v23 = *(v7 + 8);
  v23(v6, v8);
  *(v1 + 1008) = v23;
  v24 = *(v1 + 656);
  *(v1 + 1016) = v0;
  *(v1 + 1024) = v6;
  v25 = sub_16D38C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_16D37C();
  v28 = [v24 startDate];
  if (v28)
  {
    v29 = v28;
    v30 = *(v1 + 912);
    sub_16BF3C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v1 + 920);
  v33 = *(v1 + 864);
  sub_214C(*(v1 + 912), v31, 1, v33);
  v34 = sub_8B9C();
  sub_86FC(v34, v35, v36, v37);
  v38 = sub_A76DC();
  v40 = sub_369C(v38, v39, v33);
  v41 = *(v1 + 920);
  if (v40)
  {
    sub_8748(*(v1 + 920), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v42 = sub_135678();
    v43(v42);
    sub_8748(v41, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v44 = *(v2 + 8);
    v2 += 8;
    v45 = sub_387CC();
    v46(v45);
  }

  v47 = *(v1 + 656);
  sub_16D35C();

  v48 = [v47 endDate];
  if (v48)
  {
    v49 = v48;
    v50 = *(v1 + 896);
    sub_16BF3C();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = *(v1 + 904);
  v53 = *(v1 + 896);
  v54 = *(v1 + 864);
  sub_214C(v53, v51, 1, v54);
  sub_86FC(v53, v52, &qword_1C57E0, &unk_171C60);
  v55 = sub_A76DC();
  LODWORD(v53) = sub_369C(v55, v56, v54);
  v57 = *(v1 + 904);
  if (v53)
  {
    sub_8748(*(v1 + 904), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v58 = sub_135678();
    v59(v58);
    sub_8748(v57, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v60 = *(v2 + 8);
    v61 = sub_387CC();
    v62(v61);
  }

  v63 = *(v1 + 656);
  sub_16D34C();

  v64 = sub_16D36C();
  *(v1 + 1032) = v64;

  v65 = [v63 startDate];
  if (v65)
  {
    v66 = *(v1 + 888);
    sub_16BF3C();

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = *(v1 + 888);
  sub_214C(v68, v67, 1, *(v1 + 864));
  sub_8748(v68, &qword_1C57E0, &unk_171C60);
  v69 = swift_task_alloc();
  *(v1 + 1040) = v69;
  *v69 = v1;
  v69[1] = sub_131AB0;
  v70 = *(v1 + 672);

  return sub_6789C(v64, v65 == 0, v70);
}

uint64_t sub_131AB0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1040);
  *v2 = *v0;
  *(v1 + 1048) = v5;
  *(v1 + 1056) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_131BA0()
{
  sub_8A88();
  v1 = *(*(v0 + 688) + 312);
  *(v0 + 1152) = v1;
  sub_208C0(v1);
  sub_680F8();
  *(v0 + 1064) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1072) = v3;
  *v3 = v0;
  v3[1] = sub_131C44;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_131C44()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v1[72] = v0;
  v1[73] = v3;
  v1[74] = v4;
  v6 = *(v5 + 1072);
  v7 = *(v5 + 1064);
  v8 = *v0;
  sub_C990();
  *v9 = v8;
  *(v11 + 1080) = v10;

  v12 = sub_17960();

  return _swift_task_switch(v12, v13, v14);
}

void sub_131D50()
{
  sub_13580C();
  if (!*(v0 + 1080))
  {
    __break(1u);
    goto LABEL_22;
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 856);
  v3 = *(v0 + 832);
  v4 = *(v0 + 672);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1080);

  sub_16E23C();

  v7 = sub_25948(v5);
  v9 = v8;
  v10 = sub_208C0(v5);
  v11 = (v2 + *(v3 + 20));
  *v11 = v7;
  v11[1] = v9;
  v12 = (v2 + *(v3 + 24));
  *v12 = v10;
  v12[1] = v13;
  if (sub_15EE1C() < 3u || (v14 = *(v0 + 672), (sub_15C380() & 1) != 0))
  {
    v15 = swift_task_alloc();
    *(v0 + 1088) = v15;
    *v15 = v0;
    v15[1] = sub_132648;
    sub_C98D8(0x63696C6F74737973);
    sub_1357B4();

    sub_66A84(v16, v17);
    return;
  }

  [*(v0 + 664) systolic];
  if (v19 == 0.0 || ([*(v0 + 664) diastolic], v20 == 0.0))
  {
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1016);
    v23 = *(v0 + 968);
    v24 = *(v0 + 936);
    v25 = *(v0 + 928);

    v26 = sub_16DBBC();
    sub_8B48();
    (*(v24 + 16))(v23, v26, v25);
    v27 = sub_16DBDC();
    v28 = sub_16E37C();
    if (sub_1BA1C(v28))
    {
      v29 = sub_1BA38();
      sub_1BA50(v29);
      sub_1B9D0(&def_259DC, v30, v31, "#GetBloodPressureFlow: systolic or diastolic values is/are empty");
      sub_1BA00();
    }

    v32 = *(v0 + 1032);
    v33 = *(v0 + 968);
    v34 = *(v0 + 936);
    v35 = *(v0 + 928);
    v36 = *(v0 + 856);
    v37 = *(v0 + 688);

    (*(v34 + 8))(v33, v35);
    sub_8284(v37 + 80, v0 + 176);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 176);
    sub_1353D8();
    sub_135260(v36, v38);
    v39 = *(v0 + 1000);
    v40 = *(v0 + 976);
    v41 = *(v0 + 968);
    v42 = *(v0 + 960);
    v43 = *(v0 + 952);
    v44 = *(v0 + 944);
    v45 = *(v0 + 920);
    v46 = *(v0 + 912);
    v47 = *(v0 + 904);
    v48 = *(v0 + 896);
    v142 = *(v0 + 888);
    v143 = *(v0 + 880);
    v144 = *(v0 + 856);
    v145 = *(v0 + 848);
    v147 = *(v0 + 840);
    v149 = *(v0 + 824);
    v151 = *(v0 + 816);
    v152 = *(v0 + 808);
    v153 = *(v0 + 800);
    v155 = *(v0 + 792);
    v157 = *(v0 + 784);
    v159 = *(v0 + 776);
    v161 = *(v0 + 760);
    v163 = *(v0 + 752);
    v166 = *(v0 + 744);
    v169 = *(v0 + 736);
    v172 = *(v0 + 728);
    v175 = *(v0 + 720);
    v177 = *(v0 + 712);
    v179 = *(v0 + 704);
    v181 = *(v0 + 696);

    sub_5D948();
    sub_1357B4();

    __asm { BRAA            X2, X16 }
  }

  v51 = *(v0 + 1056);
  v52 = *(v0 + 664);
  v53 = *(v0 + 1152);
  [v52 systolic];
  v55 = v54;
  v56 = sub_83A4C(v52);
  v58 = sub_99F0C(v56, v57, v53, v55);

  [v52 diastolic];
  v60 = v59;
  v61 = sub_83A4C(v52);
  v63 = sub_99F0C(v61, v62, v53, v60);

  if (!v51)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_135818();
  v167 = v64;
  v170 = v65;
  v66 = *(v0 + 984);
  v183 = *(v0 + 856);
  v164 = *(v0 + 832);
  v67 = *(v0 + 792);
  v68 = *(v0 + 768);
  v69 = *(v0 + 744);
  v173 = *(v0 + 736);
  v70 = *(v0 + 720);
  v71 = *(v0 + 704);
  v72 = *(v0 + 680);

  sub_16E23C();

  sub_388E4();
  sub_214C(v73, v74, v75, v66);
  sub_86B0(v72, v70, &qword_1C57F8, &unk_172510);
  sub_135408();
  sub_135204(v183, v71, v76);
  sub_388E4();
  sub_214C(v77, v78, v79, v164);
  sub_16C11C();
  sub_8AB4();
  v184 = v80;
  sub_214C(v81, v82, v83, v80);
  sub_1355E8(v68[13]);
  v182 = v84;
  sub_1355E8(v68[14]);
  v180 = v85;
  sub_1355E8(v68[15]);
  v178 = v86;
  sub_1355E8(v68[16]);
  v176 = v87;
  sub_1355E8(v68[17]);
  sub_1357D4();
  sub_8AB4();
  sub_214C(v88, v89, v90, v91);
  v92 = (v67 + v68[22]);
  v160 = v68[23];
  sub_8AB4();
  sub_214C(v93, v94, v95, v164);
  *v92 = v170;
  v92[1] = v167;
  *v71 = 0;
  v71[1] = 0;
  *v53 = 0;
  v53[1] = 0;
  sub_86B0(v69, v173, &qword_1C5800, &unk_16F510);
  v96 = sub_A76DC();
  if (sub_369C(v96, v97, v66) == 1)
  {
    sub_8748(*(v0 + 736), &qword_1C5800, &unk_16F510);
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v100 = *(v0 + 1008);
    v101 = *(v0 + 992);
    v102 = *(v0 + 984);
    v103 = *(v0 + 736);
    v104 = sub_16D5BC();
    v106 = v105;
    v107 = sub_C9C8();
    v100(v107);
    v99 = v106;
    v98 = v104;
  }

  v168 = *(v0 + 824);
  v171 = *(v0 + 1032);
  v108 = *(v0 + 792);
  v109 = *(v0 + 768);
  v158 = *(v0 + 744);
  v156 = *(v0 + 720);
  v110 = *(v0 + 704);
  v150 = v110;
  v154 = *(v0 + 696);
  v162 = *(v0 + 800);
  v165 = *(v0 + 688);
  v174 = *(v0 + 672);
  v111 = v108 + v109[5];
  v112 = v108 + v109[6];
  v113 = v108 + v109[7];
  v114 = v108 + v109[8];
  v115 = v108 + v109[9];
  v116 = v108 + v109[10];
  v146 = (v108 + v109[11]);
  v148 = (v108 + v109[12]);
  v117 = (v108 + v109[21]);
  *v117 = v98;
  v117[1] = v99;
  sub_5FF8C(v110, v67 + v160);
  *v111 = v58;
  *(v111 + 8) = 0;
  *v112 = 0;
  *(v112 + 8) = 1;
  *v113 = 0;
  *(v113 + 8) = 1;
  *v114 = v63;
  *(v114 + 8) = 0;
  *v115 = 0;
  *(v115 + 8) = 1;
  *v116 = 0;
  *(v116 + 8) = 1;
  *v146 = sub_94294(v58, 0);
  v146[1] = v118;
  *v148 = sub_94294(v63, 0);
  v148[1] = v119;
  *v182 = 0;
  v182[1] = 0;
  *v180 = 0;
  v180[1] = 0;
  *v178 = 0;
  v178[1] = 0;
  *v176 = 0;
  v176[1] = 0;
  sub_943A8(v156);
  sub_8748(v150, &dword_1C63F8, &qword_171800);
  sub_8748(v156, &qword_1C57F8, &unk_172510);
  sub_8748(v158, &qword_1C5800, &unk_16F510);
  sub_388E4();
  sub_214C(v120, v121, v122, v184);
  v123 = sub_8B9C();
  sub_1E634(v123, v124, v125, v126);
  sub_1351A0(v108, v162);
  sub_1351A0(v162, v168);
  v127 = *(v165 + 304);
  v128 = v168 + v109[5];
  v129 = *v128;
  v130 = *(v128 + 8);
  v131 = v168 + v109[8];
  v132 = *v131;
  v133 = *(v131 + 8);

  v134 = swift_task_alloc();
  *(v0 + 1120) = v134;
  *v134 = v0;
  v134[1] = sub_133494;
  sub_1357F8();
  sub_1357B4();

  sub_ADE70(v135, v136, v137, v138, v139, v140);
}

uint64_t sub_132648()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v2[75] = v0;
  v2[76] = v4;
  v2[77] = v5;
  v7 = *(v6 + 1088);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  v10 = swift_task_alloc();
  v2[137] = v10;
  *v10 = v8;
  v10[1] = sub_132780;
  v11 = sub_C98D8(0x696C6F7473616964);

  return sub_66A84(v11, 0xE900000000000063);
}

uint64_t sub_132780()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v1[78] = v0;
  v1[79] = v3;
  v1[80] = v4;
  v6 = *(v5 + 1096);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_13286C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 664);
  v3 = *(v0 + 1152);
  [v2 systolicMinimum];
  v5 = v4;
  v6 = sub_83A4C(v2);
  v8 = sub_99F0C(v6, v7, v3, v5);

  [v2 systolicMaximum];
  v10 = v9;
  v11 = sub_83A4C(v2);
  v13 = sub_99F0C(v11, v12, v3, v10);

  [v2 diastolicMinimum];
  v15 = v14;
  v16 = sub_83A4C(v2);
  v18 = sub_99F0C(v16, v17, v3, v15);

  [v2 diastolicMaximum];
  v20 = v19;
  v21 = sub_83A4C(v2);
  v23 = v22;
  v24 = sub_99F0C(v21, v22, v3, v20);

  if (v1)
  {
    v126 = *(v0 + 632);
    v117 = *(v0 + 608);
    v119 = *(v0 + 640);
    v115 = *(v0 + 616);
    sub_135818();
    v109 = v26;
    v111 = v27;
    v28 = *(v0 + 984);
    v130 = *(v0 + 856);
    v107 = *(v0 + 832);
    v29 = *(v0 + 808);
    v30 = *(v0 + 768);
    v31 = *(v0 + 760);
    v113 = *(v0 + 752);
    v32 = *(v0 + 728);
    v33 = *(v0 + 712);
    v34 = *(v0 + 680);

    sub_16E23C();

    sub_388E4();
    sub_214C(v35, v36, v37, v28);
    sub_86B0(v34, v32, &qword_1C57F8, &unk_172510);
    sub_135408();
    sub_135204(v130, v33, v38);
    sub_388E4();
    sub_214C(v39, v40, v41, v107);
    sub_16C11C();
    sub_8AB4();
    v131 = v42;
    sub_214C(v43, v44, v45, v42);
    sub_1355E8(v30[11]);
    v122 = v46;
    sub_1355E8(v30[12]);
    v121 = v47;
    sub_1355E8(v30[13]);
    v123 = v48;
    sub_1355E8(v30[14]);
    v124 = v49;
    sub_1355E8(v30[15]);
    v125 = v50;
    sub_1355E8(v30[16]);
    v128 = v51;
    sub_1355E8(v30[17]);
    sub_1357D4();
    sub_8AB4();
    sub_214C(v52, v53, v54, v55);
    v56 = (v29 + v30[22]);
    v108 = v30[23];
    sub_8AB4();
    sub_214C(v57, v58, v59, v107);
    *v56 = v111;
    v56[1] = v109;
    *v33 = v117;
    v33[1] = v115;
    *v23 = v126;
    v23[1] = v119;
    sub_86B0(v31, v113, &qword_1C5800, &unk_16F510);
    v60 = sub_A76DC();
    if (sub_369C(v60, v61, v28) == 1)
    {
      sub_8748(*(v0 + 752), &qword_1C5800, &unk_16F510);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v64 = *(v0 + 992);
      v65 = *(v0 + 984);
      v66 = *(v0 + 752);
      v67 = sub_16D5BC();
      v69 = v68;
      v70 = *(v64 + 8);
      v71 = sub_C9C8();
      v72(v71);
      v63 = v69;
      v62 = v67;
    }

    v118 = *(v0 + 824);
    v120 = *(v0 + 1032);
    v73 = *(v0 + 808);
    v74 = *(v0 + 768);
    v112 = *(v0 + 760);
    v114 = *(v0 + 816);
    v110 = *(v0 + 728);
    v75 = *(v0 + 712);
    v105 = v75;
    v106 = *(v0 + 696);
    v116 = *(v0 + 688);
    v127 = *(v0 + 672);
    v76 = v73 + v74[5];
    v77 = v73 + v74[6];
    v78 = v73 + v74[7];
    v79 = v73 + v74[8];
    v80 = v73 + v74[9];
    v81 = v73 + v74[10];
    v82 = (v73 + v74[21]);
    *v82 = v62;
    v82[1] = v63;
    sub_5FF8C(v75, v29 + v108);
    *v76 = 0;
    *(v76 + 8) = 1;
    *v77 = v8;
    *(v77 + 8) = 0;
    *v78 = v13;
    *(v78 + 8) = 0;
    *v79 = 0;
    *(v79 + 8) = 1;
    *v80 = v18;
    *(v80 + 8) = 0;
    *v81 = v24;
    *(v81 + 8) = 0;
    *v122 = 0;
    v122[1] = 0;
    *v121 = 0;
    v121[1] = 0;
    *v123 = sub_94294(v8, 0);
    v123[1] = v83;
    *v124 = sub_94294(v13, 0);
    v124[1] = v84;
    *v125 = sub_94294(v18, 0);
    v125[1] = v85;
    *v128 = sub_94294(v24, 0);
    v128[1] = v86;
    sub_943A8(v110);
    sub_8748(v105, &dword_1C63F8, &qword_171800);
    sub_8748(v110, &qword_1C57F8, &unk_172510);
    sub_8748(v112, &qword_1C5800, &unk_16F510);
    sub_388E4();
    sub_214C(v87, v88, v89, v131);
    v90 = sub_8B9C();
    sub_1E634(v90, v91, v92, v93);
    sub_1351A0(v73, v114);
    sub_1351A0(v114, v118);
    v94 = v74[7];
    v95 = v118 + v74[6];
    v129 = *v95;
    v132 = *(v116 + 304);
    v96 = *(v95 + 8);
    v97 = *(v118 + v94);
    v98 = *(v118 + v94 + 8);
    v99 = v74[10];
    v100 = v118 + v74[9];
    v101 = *v100;
    v102 = *(v100 + 8);
    v103 = *(v118 + v99);
    LOBYTE(v77) = *(v118 + v99 + 8);

    v104 = swift_task_alloc();
    *(v0 + 1104) = v104;
    *v104 = v0;
    v104[1] = sub_132E60;
    sub_1357F8();

    return sub_ADC1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_132E60(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 1104);
  *v6 = *v2;

  v8 = *(v4 + 1032);
  if (v1)
  {
  }

  else
  {

    *(v5 + 1112) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_132FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  sub_13580C();
  v119 = sub_135718(*(v38 + 1112));
  sub_16DBBC();
  sub_8B48();
  v43 = sub_135858();
  v41(v43);
  sub_135420();
  v44 = sub_4B4EC();
  sub_135204(v44, v45, v46);
  v47 = sub_16DBDC();
  v48 = sub_16E36C();
  sub_1356CC(v48);
  sub_13579C();
  if (v49)
  {
    a27 = v37;
    v117 = v36;
    v50 = *(v38 + 776);
    v51 = *(v38 + 768);
    sub_8BD8();
    v52 = sub_5D98C();
    sub_135838(v52);
    *v40 = 136315138;
    sub_135420();
    v53 = sub_4B4A4();
    sub_135204(v53, v54, v55);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353F0();
    sub_135260(v42, v56);
    v57 = sub_C9C8();
    sub_3AB7C(v57, v58, v59);
    sub_13588C();
    *(v40 + 4) = v51;
    sub_13563C(&def_259DC, v60, v61, "#GetBloodPressureFlow: snippet model is %s");
    sub_1355B0();
    sub_135534();

    v62 = *(v39 + 8);
    v63 = a27;
    v64 = v117;
  }

  else
  {

    sub_1353F0();
    sub_135260(v42, v65);
    v66 = *(v39 + 8);
    v63 = sub_C9C8();
  }

  v118 = v62;
  v62(v63, v64);
  v67 = *(v38 + 952);
  v68 = *(v38 + 928);
  sub_135708();
  sub_13565C();
  v69 = sub_6B5B8();
  v41(v69);
  sub_135408();
  v70 = sub_387CC();
  sub_135204(v70, v71, v72);
  v73 = sub_16DBDC();
  v74 = sub_16E36C();
  sub_1356CC(v74);
  sub_135844();
  if (v75)
  {
    a27 = v68;
    v76 = *(v38 + 840);
    a26 = v67;
    v77 = *(v38 + 832);
    sub_8BD8();
    v78 = sub_5D98C();
    sub_135838(v78);
    *v40 = 136315138;
    sub_135408();
    v79 = sub_4B4A4();
    sub_135204(v79, v80, v81);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353D8();
    sub_135260(v42, v82);
    v83 = sub_C9C8();
    sub_3AB7C(v83, v84, v85);
    sub_13588C();
    *(v40 + 4) = v77;
    sub_13563C(&def_259DC, v86, v87, "#GetBloodPressureFlow: snippet header model is %s");
    sub_1355B0();
    sub_135534();

    v88 = a26;
    v89 = a27;
  }

  else
  {

    sub_1353D8();
    sub_135260(v42, v90);
    v88 = sub_C9C8();
  }

  v118(v88, v89);
  if (v119)
  {
    v91 = *(v38 + 1080);
    v92 = *(v38 + 1056);
    v93 = *(v38 + 824);

    *(v38 + 400) = type metadata accessor for WellnessSnippets();
    sub_135624();
    *(v38 + 408) = sub_1352B8(v94, v95);
    v96 = sub_9910((v38 + 376));
    sub_135420();
    sub_135204(v93, v96, v97);
    swift_storeEnumTagMultiPayload();

    v98 = swift_task_alloc();
    *(v38 + 1144) = v98;
    *v98 = v38;
    sub_135580(v98);
    sub_1207DC();

    return sub_672C0();
  }

  else
  {
    sub_13586C();

    sub_13565C();
    v101 = sub_1356E8();
    v41(v101);
    sub_16DBDC();
    v102 = sub_16E37C();
    if (sub_1BA1C(v102))
    {
      v103 = sub_1BA38();
      sub_1BA50(v103);
      sub_1B9D0(&def_259DC, v104, v105, "Couldn't create bloodPressure dialog returning nil");
      sub_1BA00();
    }

    sub_135554();
    v106 = sub_1356F8();
    (v118)(v106);
    sub_8284(v41 + 80, v38 + 16);
    sub_82E0();
    v120 = sub_16C32C();

    sub_8334(v38 + 16);
    sub_1353F0();
    sub_135260(0, v107);
    sub_1353D8();
    sub_135260(v73, v108);
    sub_135438();
    sub_135504();

    sub_5D948();
    sub_1207DC();

    return v111(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v118, a29, a30, v120, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_133494(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 1120);
  *v6 = *v2;

  v8 = *(v4 + 1032);
  if (v1)
  {
  }

  else
  {

    *(v5 + 1128) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1335DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  sub_13580C();
  v119 = sub_135718(*(v38 + 1128));
  sub_16DBBC();
  sub_8B48();
  v43 = sub_135858();
  v41(v43);
  sub_135420();
  v44 = sub_4B4EC();
  sub_135204(v44, v45, v46);
  v47 = sub_16DBDC();
  v48 = sub_16E36C();
  sub_1356CC(v48);
  sub_13579C();
  if (v49)
  {
    a27 = v37;
    v117 = v36;
    v50 = *(v38 + 776);
    v51 = *(v38 + 768);
    sub_8BD8();
    v52 = sub_5D98C();
    sub_135838(v52);
    *v40 = 136315138;
    sub_135420();
    v53 = sub_4B4A4();
    sub_135204(v53, v54, v55);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353F0();
    sub_135260(v42, v56);
    v57 = sub_C9C8();
    sub_3AB7C(v57, v58, v59);
    sub_13588C();
    *(v40 + 4) = v51;
    sub_13563C(&def_259DC, v60, v61, "#GetBloodPressureFlow: snippet model is %s");
    sub_1355B0();
    sub_135534();

    v62 = *(v39 + 8);
    v63 = a27;
    v64 = v117;
  }

  else
  {

    sub_1353F0();
    sub_135260(v42, v65);
    v66 = *(v39 + 8);
    v63 = sub_C9C8();
  }

  v118 = v62;
  v62(v63, v64);
  v67 = *(v38 + 952);
  v68 = *(v38 + 928);
  sub_135708();
  sub_13565C();
  v69 = sub_6B5B8();
  v41(v69);
  sub_135408();
  v70 = sub_387CC();
  sub_135204(v70, v71, v72);
  v73 = sub_16DBDC();
  v74 = sub_16E36C();
  sub_1356CC(v74);
  sub_135844();
  if (v75)
  {
    a27 = v68;
    v76 = *(v38 + 840);
    a26 = v67;
    v77 = *(v38 + 832);
    sub_8BD8();
    v78 = sub_5D98C();
    sub_135838(v78);
    *v40 = 136315138;
    sub_135408();
    v79 = sub_4B4A4();
    sub_135204(v79, v80, v81);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353D8();
    sub_135260(v42, v82);
    v83 = sub_C9C8();
    sub_3AB7C(v83, v84, v85);
    sub_13588C();
    *(v40 + 4) = v77;
    sub_13563C(&def_259DC, v86, v87, "#GetBloodPressureFlow: snippet header model is %s");
    sub_1355B0();
    sub_135534();

    v88 = a26;
    v89 = a27;
  }

  else
  {

    sub_1353D8();
    sub_135260(v42, v90);
    v88 = sub_C9C8();
  }

  v118(v88, v89);
  if (v119)
  {
    v91 = *(v38 + 1080);
    v92 = *(v38 + 1056);
    v93 = *(v38 + 824);

    *(v38 + 400) = type metadata accessor for WellnessSnippets();
    sub_135624();
    *(v38 + 408) = sub_1352B8(v94, v95);
    v96 = sub_9910((v38 + 376));
    sub_135420();
    sub_135204(v93, v96, v97);
    swift_storeEnumTagMultiPayload();

    v98 = swift_task_alloc();
    *(v38 + 1144) = v98;
    *v98 = v38;
    sub_135580(v98);
    sub_1207DC();

    return sub_672C0();
  }

  else
  {
    sub_13586C();

    sub_13565C();
    v101 = sub_1356E8();
    v41(v101);
    sub_16DBDC();
    v102 = sub_16E37C();
    if (sub_1BA1C(v102))
    {
      v103 = sub_1BA38();
      sub_1BA50(v103);
      sub_1B9D0(&def_259DC, v104, v105, "Couldn't create bloodPressure dialog returning nil");
      sub_1BA00();
    }

    sub_135554();
    v106 = sub_1356F8();
    (v118)(v106);
    sub_8284(v41 + 80, v38 + 16);
    sub_82E0();
    v120 = sub_16C32C();

    sub_8334(v38 + 16);
    sub_1353F0();
    sub_135260(0, v107);
    sub_1353D8();
    sub_135260(v73, v108);
    sub_135438();
    sub_135504();

    sub_5D948();
    sub_1207DC();

    return v111(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v118, a29, a30, v120, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_133AC8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 376));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_133BB0()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 856);
  v4 = *(v0 + 824);
  sub_8388(v0 + 336, v0 + 416);
  v5 = swift_allocObject();
  sub_17464((v0 + 416), v5 + 16);
  sub_16C73C();
  v6 = sub_16C1DC();
  sub_38964(v6);
  *(v0 + 648) = sub_16C1CC();
  v16 = sub_16C32C();

  sub_2D64((v0 + 336));
  sub_1353F0();
  sub_135260(v4, v7);
  sub_1353D8();
  sub_135260(v3, v8);

  sub_135438();
  v11 = *(v0 + 728);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);

  sub_5D948();

  return v9(v16);
}

uint64_t sub_133E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(void), uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  a43 = v45;
  a44 = v46;
  sub_13580C();
  a42 = v44;
  v44[142] = 0;
  v47 = v44[120];
  v48 = v44[117];
  v49 = v44[116];
  v50 = v44[103];
  v51 = v44[98];
  v52 = sub_16DBBC();
  sub_8B48();
  v55 = *(v48 + 16);
  v53 = v48 + 16;
  v54 = v55;
  v56 = sub_C9C8();
  (v55)(v56);
  sub_135420();
  v57 = sub_387CC();
  sub_135204(v57, v58, v59);
  v60 = sub_16DBDC();
  v61 = sub_16E36C();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v44[120];
  v64 = v44[117];
  v124 = v44[116];
  v126 = v55;
  v65 = v44[98];
  v127 = v53;
  if (v62)
  {
    v66 = v44[97];
    a28 = v44[120];
    v67 = v44[96];
    v68 = sub_8BD8();
    v54 = swift_slowAlloc();
    a32 = v54;
    *v68 = 136315138;
    sub_135420();
    sub_135204(v65, v66, v69);
    v70 = sub_16E1EC();
    v72 = v71;
    sub_1353F0();
    sub_135260(v65, v73);
    v74 = sub_3AB7C(v70, v72, &a32);

    *(v68 + 4) = v74;
    sub_D4ECC(&def_259DC, v75, v76, "#GetBloodPressureFlow: snippet model is %s");
    sub_2D64(v54);
    sub_135534();
    v53 = v127;
    sub_8A2C();

    v77 = *(v64 + 8);
    (v77)(a28, v124);
  }

  else
  {

    sub_1353F0();
    sub_135260(v65, v78);
    v77 = *(v64 + 8);
    (v77)(v63, v124);
  }

  v79 = v44[119];
  v80 = v44[116];
  sub_135708();
  sub_8B48();
  v81 = sub_C9C8();
  (v54)(v81);
  sub_135408();
  v82 = sub_387CC();
  sub_135204(v82, v83, v84);
  v85 = sub_16DBDC();
  v86 = sub_16E36C();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v44[119];
  v89 = v44[117];
  v125 = v44[116];
  v90 = v44[106];
  if (v87)
  {
    a27 = v44[119];
    a28 = v77;
    v91 = v44[105];
    v92 = v44[104];
    v93 = sub_8BD8();
    v54 = swift_slowAlloc();
    a32 = v54;
    *v93 = 136315138;
    sub_135408();
    sub_135204(v90, v91, v94);
    v95 = sub_16E1EC();
    v97 = v96;
    sub_1353D8();
    sub_135260(v90, v98);
    v99 = sub_3AB7C(v95, v97, &a32);
    v77 = a28;

    *(v93 + 4) = v99;
    sub_D4ECC(&def_259DC, v100, v101, "#GetBloodPressureFlow: snippet header model is %s");
    sub_2D64(v54);
    sub_135534();
    v53 = v127;
    sub_8A2C();

    v102 = a27;
  }

  else
  {

    sub_1353D8();
    sub_135260(v90, v103);
    v102 = v88;
  }

  (v77)(v102, v125);
  v104 = v44[135];
  v105 = v44[132];
  v106 = v44[118];
  v107 = v44[116];

  sub_8B48();
  (v54)(v106, v52, v107);
  sub_16DBDC();
  v108 = sub_16E37C();
  if (sub_1BA1C(v108))
  {
    v109 = sub_1BA38();
    sub_1BA50(v109);
    sub_1B9D0(&def_259DC, v110, v111, "Couldn't create bloodPressure dialog returning nil");
    sub_1BA00();
  }

  sub_135554();
  v112 = sub_1356F8();
  v77(v112);
  sub_8284(v90 + 80, (v44 + 2));
  sub_82E0();
  v128 = sub_16C32C();

  sub_8334((v44 + 2));
  sub_1353F0();
  sub_135260(v53, v113);
  sub_1353D8();
  sub_135260(v86, v114);
  sub_135438();
  sub_135504();

  sub_5D948();
  sub_1207DC();

  return v117(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v125, v126, v128, a32, a33, a34, a35, a36);
}

uint64_t sub_134300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v92 = a6;
  v87 = a5;
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v93 = &v84 - v12;
  v90 = sub_16BF5C();
  v86 = *(v90 - 8);
  v13 = *(v86 + 64);
  __chkstk_darwin(v90);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v88 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v89 = &v84 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v84 - v22;
  __chkstk_darwin(v21);
  v25 = &v84 - v24;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v91 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v84 - v30;
  LOBYTE(a2) = *(a2 + 312);
  sub_208C0(a2);
  sub_16E23C();

  v84 = sub_16D5CC();
  sub_214C(v31, 0, 1, v84);
  v32 = type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(0);
  v33 = v87;
  sub_1E634(v31, a1 + v32[5], &qword_1C5800, &unk_16F510);
  v34 = v32[16];
  v35 = *(a1 + v34);

  *(a1 + v34) = a3;
  [a4 systolicMinimum];
  v37 = v36;
  v38 = sub_83A4C(a4);
  v40 = sub_99F0C(v38, v39, a2, v37);

  v41 = a1 + v32[15];
  *v41 = v40;
  *(v41 + 8) = 0;
  [a4 systolicMaximum];
  v43 = v42;
  v44 = sub_83A4C(a4);
  v46 = sub_99F0C(v44, v45, a2, v43);

  v47 = a1 + v32[14];
  *v47 = v46;
  *(v47 + 8) = 0;
  [a4 diastolicMinimum];
  v49 = v48;
  v50 = sub_83A4C(a4);
  v52 = sub_99F0C(v50, v51, a2, v49);

  v53 = a1 + v32[7];
  *v53 = v52;
  *(v53 + 8) = 0;
  [a4 diastolicMaximum];
  v55 = v54;
  v56 = sub_83A4C(a4);
  v58 = sub_99F0C(v56, v57, a2, v55);

  v59 = a1 + v32[6];
  *v59 = v58;
  *(v59 + 8) = 0;
  v60 = sub_16D38C();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  sub_16D37C();
  v63 = [v33 startDate];
  if (v63)
  {
    v64 = v63;
    sub_16BF3C();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = v90;
  sub_214C(v23, v65, 1, v90);
  sub_86FC(v23, v25, &qword_1C57E0, &unk_171C60);
  v67 = sub_369C(v25, 1, v66);
  v68 = v89;
  if (v67)
  {
    sub_8748(v25, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v69 = v85;
    v70 = v86;
    (*(v86 + 16))(v85, v25, v66);
    sub_8748(v25, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v70 + 8))(v69, v66);
  }

  sub_16D35C();

  v71 = [v33 endDate];
  if (v71)
  {
    v72 = v71;
    v73 = v88;
    sub_16BF3C();

    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v88;
  }

  sub_214C(v73, v74, 1, v66);
  sub_86FC(v73, v68, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v68, 1, v66))
  {
    sub_8748(v68, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v75 = v85;
    v76 = v86;
    (*(v86 + 16))(v85, v68, v66);
    sub_8748(v68, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v76 + 8))(v75, v66);
  }

  sub_16D34C();

  v77 = sub_16D36C();

  v78 = v32[13];
  v79 = *(a1 + v78);

  *(a1 + v78) = v77;
  v80 = v93;
  sub_86B0(v92, v93, &qword_1C57F8, &unk_172510);
  v81 = sub_16BE9C();
  if (sub_369C(v80, 1, v81) == 1)
  {
    sub_8748(v80, &qword_1C57F8, &unk_172510);
    v82 = v91;
    sub_214C(v91, 1, 1, v84);
  }

  else
  {
    v82 = v91;
    sub_61120(v91);
    (*(*(v81 - 8) + 8))(v80, v81);
  }

  return sub_1E634(v82, a1, &qword_1C5800, &unk_16F510);
}

uint64_t sub_134A58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v77 = a6;
  v74 = a5;
  v75 = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v78 = &v72 - v11;
  v12 = sub_2440(&qword_1C5800, &unk_16F510);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v79 = &v72 - v14;
  v15 = sub_16BF5C();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  __chkstk_darwin(v15);
  v72 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v76 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v72 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v72 - v26;
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v30 = type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(0);
  v31 = v30[9];
  v32 = *(a1 + v31);

  *(a1 + v31) = a2;
  v33 = a1;
  v34 = v74;
  [a3 systolic];
  v36 = v35;
  v37 = sub_83A4C(a3);
  LOBYTE(a2) = *(v75 + 312);
  v39 = sub_99F0C(v37, v38, a2, v36);

  v40 = v33 + v30[8];
  *v40 = v39;
  *(v40 + 8) = 0;
  [a3 diastolic];
  v42 = v41;
  v43 = sub_83A4C(a3);
  v45 = sub_99F0C(v43, v44, a2, v42);

  v46 = v33 + v30[7];
  *v46 = v45;
  *(v46 + 8) = 0;
  v47 = sub_16D38C();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_16D37C();
  v50 = [v34 startDate];
  if (v50)
  {
    v51 = v50;
    sub_16BF3C();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  sub_214C(v27, v52, 1, v15);
  sub_86FC(v27, v29, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v29, 1, v15))
  {
    sub_8748(v29, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v53 = v34;
    v54 = v33;
    v55 = v72;
    v56 = v73;
    (*(v73 + 16))(v72, v29, v15);
    sub_8748(v29, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v57 = v56;
    v33 = v54;
    v34 = v53;
    (*(v57 + 8))(v55, v15);
  }

  sub_16D35C();

  v58 = [v34 endDate];
  if (v58)
  {
    v59 = v58;
    v60 = v76;
    sub_16BF3C();

    v61 = 0;
  }

  else
  {
    v61 = 1;
    v60 = v76;
  }

  sub_214C(v60, v61, 1, v15);
  sub_86FC(v60, v24, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v24, 1, v15))
  {
    sub_8748(v24, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v62 = v72;
    v63 = v73;
    (*(v73 + 16))(v72, v24, v15);
    sub_8748(v24, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v63 + 8))(v62, v15);
  }

  v64 = v78;
  sub_16D34C();

  v65 = sub_16D36C();

  v66 = v30[6];
  v67 = *(v33 + v66);

  *(v33 + v66) = v65;
  sub_86B0(v77, v64, &qword_1C57F8, &unk_172510);
  v68 = sub_16BE9C();
  if (sub_369C(v64, 1, v68) == 1)
  {
    sub_8748(v64, &qword_1C57F8, &unk_172510);
    v69 = sub_16D5CC();
    v70 = v79;
    sub_214C(v79, 1, 1, v69);
  }

  else
  {
    v70 = v79;
    sub_61120(v79);
    (*(*(v68 - 8) + 8))(v64, v68);
  }

  return sub_1E634(v70, v33, &qword_1C5800, &unk_16F510);
}

uint64_t sub_1350BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_12E6B0();
}

uint64_t sub_1351A0(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BloodPressureQueryModel();
  (*(*(Model - 8) + 32))(a2, a1, Model);
  return a2;
}

uint64_t sub_135204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_8B38(v4);
  v6 = *(v5 + 16);
  v7 = sub_8B9C();
  v8(v7);
  return a2;
}

uint64_t sub_135260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1352B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_135300()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_135338()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_135438()
{
  result = v0[125];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[112];
  v12 = v0[111];
  v13 = v0[110];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[103];
  v18 = v0[102];
  v19 = v0[101];
  v20 = v0[100];
  v21 = v0[99];
  v22 = v0[98];
  v23 = v0[97];
  v24 = v0[95];
  v25 = v0[94];
  v11 = v0[93];
  v26 = v0[92];
  return result;
}

void sub_1354C4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v8 = v0[63];
  v7 = v0[64];
  v12 = v0[62];
  v13 = v0[61];
  v14 = v0[60];
  v15 = v0[59];
  v9 = v0[55];
  v16 = v0[58];
  v17 = v0[54];
  v10 = v0[50];
  v11 = v0[51];
}

uint64_t sub_135504()
{
  v6 = v0[91];
  v3 = v0[89];
  *(v1 - 128) = v0[90];
  *(v1 - 120) = v3;
  v4 = v0[87];
  *(v1 - 112) = v0[88];
  *(v1 - 104) = v4;
}

uint64_t sub_135534()
{
  v2 = *(v0 - 104);
}

void sub_135554()
{
  v3 = v1[129];
  v4 = v1[118];
  v5 = v1[117];
  v6 = v1[116];
  v7 = v1[107];
  v8 = v1[103];
  v9 = v1[86];
}

uint64_t sub_1355B0()
{
  sub_2D64(v0);
  v2 = *(v1 - 112);
}

void sub_1355E8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1355F4()
{

  return sub_16C75C();
}

void sub_13563C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_13565C()
{

  return swift_beginAccess();
}

uint64_t sub_135678()
{
  v1 = v0[108];
  v2 = *(v0[109] + 16);
  return v0[110];
}

id sub_13569C@<X0>(void *a1@<X8>)
{
  v3 = v1[73];
  v13 = v1[72];
  v5 = v1[53];
  v4 = v1[54];
  v6 = v1[51];
  v12 = v1[52];
  v7 = v1[49];
  v8 = v1[50];
  v9 = v1[47];
  v10 = v1[48];

  return a1;
}

BOOL sub_1356CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_135718@<X0>(void *a1@<X8>)
{
  v1[142] = a1;
  v3 = v1[120];
  v4 = v1[117];
  v5 = v1[116];
  v6 = v1[103];
  v7 = v1[98];

  return a1;
}

uint64_t sub_135740()
{
  v1 = v0[14];
  sub_2D20(v0 + 10, v0[13]);

  return sub_16C2FC();
}

void sub_13579C()
{
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[98];
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
}

uint64_t sub_1357D4()
{
  v3 = v0 + v1[18];
  v4 = v0 + v1[19];
  v5 = v1[20];

  return sub_16BE9C();
}

void sub_135818()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[128];
  v4 = v0[127];
}

void sub_135844()
{
  v1 = v0[119];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[106];
}

uint64_t sub_13586C()
{
  v2 = v0[135];
  v3 = v0[132];
  v4 = v0[118];
  v5 = v0[116];
}

uint64_t sub_13588C()
{
}

BOOL LogHealthKitQuantityFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_16C89C();
  v6 = sub_42F0(v5);
  v101 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_4304();
  v100 = v11 - v10;
  sub_CA04();
  v12 = sub_16C80C();
  v13 = sub_42F0(v12);
  v103 = v14;
  v104 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_4304();
  v102 = v18 - v17;
  sub_CA04();
  v19 = sub_16C83C();
  v20 = sub_42F0(v19);
  v98 = v21;
  v99 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_4304();
  v97 = v25 - v24;
  sub_CA04();
  v26 = sub_16C7DC();
  v27 = sub_42F0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_4304();
  v34 = v33 - v32;
  v35 = sub_16DBEC();
  v36 = sub_42F0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_38634();
  v107 = v41;
  sub_89B4();
  __chkstk_darwin(v42);
  v44 = &v90 - v43;
  v45 = sub_16DBBC();
  sub_8B48();
  v106 = v38;
  v46 = *(v38 + 16);
  v95 = v38 + 16;
  v96 = v45;
  v94 = v46;
  v46(v44, v45, v35);
  v47 = *(v29 + 16);
  v105 = a1;
  v47(v34, a1, v26);
  v48 = sub_16DBDC();
  v49 = sub_16E37C();
  v50 = os_log_type_enabled(v48, v49);
  v93 = v4;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v92 = v5;
    v52 = v51;
    v91 = swift_slowAlloc();
    v109[0] = v91;
    *v52 = 136315394;
    v53 = sub_16E7AC();
    v55 = sub_3AB7C(v53, v54, v109);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    sub_13A1F4(&qword_1C5998, 255, &type metadata accessor for Input);
    sub_16E68C();
    (*(v29 + 8))(v34, v26);
    v56 = sub_4B364();
    v59 = sub_3AB7C(v56, v57, v58);

    *(v52 + 14) = v59;
    _os_log_impl(&def_259DC, v48, v49, "%s received input:%s", v52, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    v5 = v92;
    sub_8A2C();
  }

  else
  {

    (*(v29 + 8))(v34, v26);
  }

  v60 = *(v106 + 8);
  v60(v44, v35);
  v61 = v35;
  v62 = v102;
  sub_16C7CC();
  v63 = v103;
  v64 = *(v103 + 88);
  v65 = sub_13298();
  v67 = v66(v65);
  v68 = enum case for Parse.uso(_:);
  v69 = v107;
  if (v67 == enum case for Parse.uso(_:))
  {
    v70 = *(v63 + 96);
    v71 = sub_13298();
    v72(v71);
    v74 = v97;
    v73 = v98;
    v75 = v99;
    (*(v98 + 32))(v97, v62, v99);
    v76 = v100;
    sub_16C82C();
    sub_10E3DC();

    (*(v101 + 8))(v76, v5);
    (*(v73 + 8))(v74, v75);
  }

  else
  {
    v77 = *(v63 + 8);
    v78 = sub_13298();
    v79(v78);
    v80 = v96;
    sub_8B48();
    v94(v69, v80, v61);
    v81 = sub_16DBDC();
    v82 = sub_16E37C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = sub_8BD8();
      v84 = sub_CA30();
      v108 = v84;
      *v83 = 136315138;
      v85 = sub_16E7AC();
      v87 = sub_3AB7C(v85, v86, &v108);

      *(v83 + 4) = v87;
      _os_log_impl(&def_259DC, v81, v82, "%s rejecting unsupported input", v83, 0xCu);
      sub_2D64(v84);
      sub_8A2C();
      sub_8A2C();

      v88 = v107;
    }

    else
    {

      v88 = v69;
    }

    v60(v88, v61);
  }

  return v67 == v68;
}

uint64_t LogHealthKitQuantityFlow.execute(completion:)()
{
  type metadata accessor for LogHealthKitQuantityFlow();
  sub_13A1F4(&qword_1C6C20, v0, type metadata accessor for LogHealthKitQuantityFlow);
  return sub_16C33C();
}

uint64_t LogHealthKitQuantityFlow.execute()()
{
  sub_8A88();
  v1[199] = v0;
  v1[198] = v2;
  v1[200] = *v0;
  v3 = sub_16D63C();
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[201] = sub_8BC0();
  v6 = sub_16C0BC();
  v1[202] = v6;
  sub_888C(v6);
  v1[203] = v7;
  v9 = *(v8 + 64);
  v1[204] = sub_8BC0();
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[205] = sub_8C38();
  v1[206] = swift_task_alloc();
  v13 = sub_16BF5C();
  v1[207] = v13;
  sub_888C(v13);
  v1[208] = v14;
  v16 = *(v15 + 64);
  v1[209] = sub_8C38();
  v1[210] = swift_task_alloc();
  v1[211] = swift_task_alloc();
  v1[212] = swift_task_alloc();
  v17 = sub_16DBEC();
  v1[213] = v17;
  sub_888C(v17);
  v1[214] = v18;
  v20 = *(v19 + 64);
  v1[215] = sub_8C38();
  v1[216] = swift_task_alloc();
  v21 = sub_17960();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1361AC()
{
  v115 = v0;
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1704);
  *(v0 + 1808) = *(*(v0 + 1592) + 336);
  sub_16D78C();
  sub_16DBBC();
  sub_8B48();
  v4 = *(v2 + 16);
  v5 = sub_4B364();
  v4(v5);

  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1728);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1704);
  if (v8)
  {
    v12 = *(v0 + 1600);
    v107 = *(v0 + 1704);
    v13 = *(v0 + 1592);
    v14 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_16E7AC();
    v106 = v9;
    v17 = sub_3AB7C(v15, v16, &v114);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_208C0(*(v13 + 16));
    v20 = sub_3AB7C(v18, v19, &v114);

    *(v14 + 14) = v20;
    _os_log_impl(&def_259DC, v6, v7, "Executing %s for datatype: %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v21 = *(v10 + 8);
    v21(v106, v107);
  }

  else
  {

    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v22 = *(*(v0 + 1592) + 16);
  *(v0 + 1809) = v22;
  if (sub_C1BA4(v22, &off_1B8158))
  {
    v111 = v21;
    v23 = v0 + 608;
    v24 = *(v0 + 1720);
    v25 = *(v0 + 1704);
    v26 = *(v0 + 1592);
    sub_8B48();
    v27 = sub_4B364();
    v4(v27);

    v28 = sub_16DBDC();
    v29 = sub_16E36C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 1720);
    v32 = *(v0 + 1712);
    v33 = *(v0 + 1704);
    if (v30)
    {
      v34 = sub_8BD8();
      v108 = v31;
      v35 = sub_CA30();
      v114 = v35;
      *v34 = 136315138;
      v36 = sub_208C0(v22);
      v38 = sub_3AB7C(v36, v37, &v114);

      *(v34 + 4) = v38;
      v23 = v0 + 608;
      _os_log_impl(&def_259DC, v28, v29, "Manual logging is not supported for %s. Returning UnsupportedLoggingFlow.", v34, 0xCu);
      sub_2D64(v35);
      sub_8A2C();
      sub_8A2C();

      v39 = v108;
    }

    else
    {

      v39 = v31;
    }

    v111(v39, v33);
    v45 = *(v0 + 1608);
    sub_13A3CC();
    sub_C9294(&v28[3], v23);
    sub_C9294(&v28[8], v0 + 648);
    sub_8284(&v28[13], v0 + 688);
    v46 = sub_16C58C();
    sub_8D14(v46);
    v47 = sub_16C57C();
    *(v0 + 872) = v46;
    *(v0 + 880) = &protocol witness table for ResponseFactory;
    *(v0 + 848) = v47;
    type metadata accessor for WellnessLoggingCATsSimple();
    sub_16D62C();
    v48 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v49 = sub_16D58C();
    *(v0 + 888) = v48;
    *(v0 + 896) = v49;
    sub_17858();
    sub_16C4EC();
    goto LABEL_23;
  }

  v40 = *(v0 + 1648);
  v41 = *(v0 + 1592);
  v42 = v41[6];
  v43 = v41[7];
  sub_2D20(v41 + 3, v42);
  (*(v43 + 32))(v42, v43);
  v44 = sub_16BD9C();
  if (sub_369C(v40, 1, v44) == 1)
  {
    sub_5CFC8(*(v0 + 1648), &qword_1C5690, &dword_16F320);
  }

  else
  {
    v112 = v22;
    v50 = *(v0 + 1696);
    v51 = *(v0 + 1688);
    v52 = *(v0 + 1664);
    v53 = *(v0 + 1656);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1632);
    v56 = *(v0 + 1624);
    v109 = *(v0 + 1616);
    sub_16BD7C();
    sub_5DE54(v44);
    (*(v57 + 8))(v54, v44);
    (*(v52 + 32))(v50, v51, v53);
    sub_16C08C();
    v58 = sub_16C03C();
    (*(v56 + 8))(v55, v109);
    v59 = *(v0 + 1696);
    v60 = *(v0 + 1664);
    v61 = *(v0 + 1656);
    if ((v58 & 1) == 0)
    {
      v89 = *(v0 + 1608);
      sub_13A3CC();
      v90 = (v41 + 3);
      v23 = v0 + 312;
      sub_C9294(v90, v0 + 312);
      sub_C9294(v58 + 64, v0 + 352);
      sub_8284(v58 + 104, v0 + 392);
      v91 = sub_16C58C();
      sub_8D14(v91);
      v92 = sub_16C57C();
      *(v0 + 576) = v91;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v92;
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_13A440();
      sub_13A3E8();
      v93 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_13A440();
      sub_13A3E8();
      v94 = sub_16D58C();
      *(v0 + 592) = v93;
      *(v0 + 600) = v94;
      goto LABEL_22;
    }

    v62 = *(v60 + 8);
    v63 = sub_4B4EC();
    v64(v63);
    v22 = v112;
  }

  v65 = *(v0 + 1640);
  v66 = v41[7];
  sub_2D20(v41 + 3, v41[6]);
  v67 = *(v66 + 32);
  v68 = sub_4B4EC();
  v69(v68);
  if (sub_369C(v65, 1, v44) != 1)
  {
    v113 = v22;
    v70 = *(v0 + 1680);
    v71 = *(v0 + 1672);
    v72 = *(v0 + 1664);
    v73 = *(v0 + 1656);
    v74 = *(v0 + 1640);
    v75 = *(v0 + 1632);
    v76 = *(v0 + 1624);
    v110 = *(v0 + 1616);
    sub_16BD4C();
    sub_5DE54(v44);
    (*(v77 + 8))(v74, v44);
    (*(v72 + 32))(v70, v71, v73);
    sub_16C08C();
    v78 = sub_16C03C();
    (*(v76 + 8))(v75, v110);
    v79 = *(v0 + 1680);
    v60 = *(v0 + 1664);
    v80 = *(v0 + 1656);
    if (v78)
    {
      v81 = *(v60 + 8);
      v82 = sub_4B4EC();
      v83(v82);
      v22 = v113;
      goto LABEL_17;
    }

    v95 = *(v0 + 1608);
    sub_13A3CC();
    v96 = (v41 + 3);
    v23 = v0 + 16;
    sub_C9294(v96, v0 + 16);
    sub_C9294(v78 + 64, v0 + 56);
    sub_8284(v78 + 104, v0 + 96);
    v97 = sub_16C58C();
    sub_8D14(v97);
    v98 = sub_16C57C();
    *(v0 + 280) = v97;
    *(v0 + 288) = &protocol witness table for ResponseFactory;
    *(v0 + 256) = v98;
    type metadata accessor for WellnessLoggingCATsSimple();
    sub_13A440();
    sub_13A3E8();
    v99 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_13A440();
    sub_13A3E8();
    v100 = sub_16D58C();
    *(v0 + 296) = v99;
    *(v0 + 304) = v100;
LABEL_22:
    sub_17858();
    sub_16C4EC();
    v101 = *(v60 + 8);
    v102 = sub_4B4EC();
    v103(v102);
LABEL_23:
    sub_83B2C(v23);
    sub_13A334();

    sub_C9BC();

    return v104();
  }

  sub_5CFC8(*(v0 + 1640), &qword_1C5690, &dword_16F320);
LABEL_17:
  v84 = sub_16D8DC();
  *(v0 + 1736) = v84;
  sub_2440(&qword_1C6828, &qword_1767D0);
  v85 = swift_allocObject();
  *(v0 + 1744) = v85;
  *(v85 + 16) = xmmword_16F530;
  *(v85 + 32) = sub_208C0(v22);
  *(v85 + 40) = v86;
  v87 = async function pointer to HealthKitPersistor.isLoggingAuthorized(for:)[1];
  v88 = swift_task_alloc();
  *(v0 + 1752) = v88;
  *v88 = v0;
  v88[1] = sub_136AC8;

  return HealthKitPersistor.isLoggingAuthorized(for:)(v85, v84);
}

uint64_t sub_136AC8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = v3[219];
  v5 = v3[218];
  v6 = v3[217];
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  *(v10 + 1810) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_136BE0()
{
  if ((*(v0 + 1810) & 1) == 0)
  {
    v15 = *(v0 + 1809);
    v16 = *(v0 + 1608);
    v17 = *(v0 + 1592);
    v18 = *(v0 + 1584);
    v19 = *(v0 + 1808);
    sub_16D76C();
    sub_C9294(v17 + 64, v0 + 912);
    sub_8284(v17 + 104, v0 + 952);
    v20 = sub_16C58C();
    sub_8D14(v20);
    v21 = sub_16C57C();
    *(v0 + 1136) = v20;
    *(v0 + 1144) = &protocol witness table for ResponseFactory;
    *(v0 + 1112) = v21;
    type metadata accessor for WellnessCATsSimple();
    sub_16D62C();
    v22 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v23 = sub_16D58C();
    *(v0 + 904) = v15;
    *(v0 + 1152) = v22;
    *(v0 + 1160) = v23;
    sub_84F0();
    sub_16C4EC();
    sub_8544(v0 + 904);
LABEL_6:
    sub_13A334();

    sub_C9BC();
    sub_13A3AC();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 1592);
  v2 = v1[41];
  *(v0 + 1760) = v2;
  switch(v2)
  {
    case 1:
      v3 = v1[7];
      sub_2D20(v1 + 3, v1[6]);
      v4 = *(v3 + 64);
      v5 = sub_C9E0();
      v7 = v6(v5);
      if (v8)
      {
        v9 = v1[39];
        v10 = v1[40];
        v11 = v1[41];
        v1[39] = 0;
        v1[40] = 0;
        v1[41] = 2;
        sub_139C6C(v9, v10, v11);
        swift_task_alloc();
        sub_179E8();
        *(v0 + 1800) = v12;
        *v12 = v13;
        v14 = sub_1375FC;
      }

      else
      {
        v46 = v7;
        v47 = *(v0 + 1592);
        v48 = v47[6];
        v49 = v47[7];
        sub_2D20(v47 + 3, v48);
        v50 = (*(v49 + 48))(v48, v49);
        if (v50 == 61)
        {
          v51 = 0;
          v52 = 0;
        }

        else
        {
          v51 = sub_38F88(v50);
        }

        v53 = v1[39];
        v54 = v1[40];
        v55 = v1[41];
        v1[39] = v46;
        v1[40] = v51;
        v1[41] = v52;
        sub_139C6C(v53, v54, v55);
        swift_task_alloc();
        sub_179E8();
        *(v0 + 1792) = v12;
        *v12 = v56;
        v14 = sub_137400;
      }

      v12[1] = v14;
      v57 = *(v0 + 1592);
      v58 = *(v0 + 1584);
      sub_13A3AC();

      return LogHealthKitQuantityFlow.execute()();
    case 2:
      v29 = *(v0 + 1809);
      v30 = *(v0 + 1584);
      v31 = *(v0 + 1808);
      sub_8284((v1 + 13), v0 + 1328);
      v32 = sub_16C58C();
      sub_8D14(v32);
      v33 = sub_16C57C();
      type metadata accessor for LogQuantityPromptStrategy();
      v34 = swift_allocObject();
      *(v0 + 1512) = v32;
      *(v0 + 1520) = &protocol witness table for ResponseFactory;
      *(v0 + 1488) = v33;
      *(v34 + 16) = v29;
      memcpy((v34 + 24), (v0 + 1328), 0xA0uLL);
      sub_17464((v0 + 1488), v34 + 184);

      sub_16C73C();
      v35 = sub_2440(&qword_1CAF98, qword_177F10);
      sub_8D14(v35);
      sub_13A1F4(&qword_1CAFA0, 255, type metadata accessor for LogQuantityPromptStrategy);
      v36 = sub_16C21C();
      v37 = v1[39];
      v38 = v1[40];
      v39 = v1[41];
      v1[39] = 0;
      v1[40] = 0;
      v1[41] = 3;
      sub_139C6C(v37, v38, v39);
      sub_16D75C();
      *(v0 + 1576) = v36;
      sub_98C8(&qword_1CAFA8, &qword_1CAF98, qword_177F10);

      sub_16C4CC();

      goto LABEL_6;
    case 3:
      v26 = *(v0 + 1584);
      sub_16C4BC();
      goto LABEL_6;
    case 4:
      v27 = *(v0 + 1584);
      v28 = *(v0 + 1808);
      sub_16D6FC();
      sub_8284((v1 + 13), v0 + 1168);
      sub_82E0();
      sub_16C4EC();
      sub_8334(v0 + 1168);
      goto LABEL_6;
    default:
      *(v0 + 1768) = v1[40];
      *(v0 + 1776) = v1[39];

      swift_task_alloc();
      sub_179E8();
      *(v0 + 1784) = v40;
      *v40 = v41;
      v40[1] = sub_1371BC;
      v42 = *(v0 + 1592);
      v43 = *(v0 + 1584);
      sub_13A3AC();

      return sub_1377F8();
  }
}

uint64_t sub_1371BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *(*v12 + 1784);
  v15 = *(*v12 + 1776);
  v16 = *(*v12 + 1768);
  v17 = *(*v12 + 1760);
  v18 = *v12;
  sub_C990();
  *v19 = v18;

  v20 = sub_C9E0();
  sub_139C6C(v20, v21, v17);
  sub_38A38();
  v23 = *(v22 + 1728);
  v24 = v13[215];
  v25 = v13[212];
  v26 = v13[211];
  v27 = v13[210];
  v28 = v13[209];
  v29 = v13[206];
  v30 = v13[205];
  v42 = v13[204];
  sub_38A38();
  v32 = *(v31 + 1608);

  sub_841FC();
  sub_8CC0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, a10, a11, a12);
}

uint64_t sub_137400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *(*v12 + 1792);
  v15 = *v12;
  sub_C990();
  *v16 = v15;

  sub_38A38();
  v18 = *(v17 + 1728);
  v19 = v13[215];
  v20 = v13[212];
  v21 = v13[211];
  v22 = v13[210];
  v23 = v13[209];
  v24 = v13[206];
  v25 = v13[205];
  v37 = v13[204];
  sub_38A38();
  v27 = *(v26 + 1608);

  sub_841FC();
  sub_8CC0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

uint64_t sub_1375FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *(*v12 + 1800);
  v15 = *v12;
  sub_C990();
  *v16 = v15;

  sub_38A38();
  v18 = *(v17 + 1728);
  v19 = v13[215];
  v20 = v13[212];
  v21 = v13[211];
  v22 = v13[210];
  v23 = v13[209];
  v24 = v13[206];
  v25 = v13[205];
  v37 = v13[204];
  sub_38A38();
  v27 = *(v26 + 1608);

  sub_841FC();
  sub_8CC0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

uint64_t sub_1377F8()
{
  sub_8A88();
  v1[95] = v0;
  v1[94] = v2;
  v1[93] = v3;
  v1[92] = v4;
  v1[91] = v5;
  v6 = sub_2440(&qword_1CB0E0, &qword_178058);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[96] = sub_8BC0();
  v9 = sub_16D63C();
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[97] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[98] = v12;
  sub_888C(v12);
  v1[99] = v13;
  v15 = *(v14 + 64);
  v1[100] = sub_8C38();
  v1[101] = swift_task_alloc();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_137904()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 760);
  v5 = sub_1388A4(*(v0 + 736), *(v0 + 744), *(v0 + 752));
  *(v0 + 816) = v5;
  v6 = sub_16DBBC();
  *(v0 + 824) = v6;
  sub_8B48();
  *(v0 + 832) = *(v2 + 16);
  *(v0 + 840) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_C9E0();
  v8(v7);
  v9 = v5;
  v10 = sub_16DBDC();
  LOBYTE(v1) = sub_16E36C();

  if (os_log_type_enabled(v10, v1))
  {
    sub_8BD8();
    v11 = sub_8A44();
    *v6 = 138412290;
    *(v6 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    sub_88FC(&def_259DC, v13, v14, "Executing intent: %@");
    sub_5CFC8(v11, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_38604();
  }

  v15 = *(v0 + 808);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  v18 = *(v0 + 760);

  *(v0 + 848) = *(v16 + 8);
  *(v0 + 856) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = sub_4B4EC();
  v20(v19);
  v21 = *(v18 + 264);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 720;
  *(v0 + 24) = sub_137B48;
  v22 = swift_continuation_init();
  *(v0 + 664) = sub_2440(&qword_1CB100, &qword_178080);
  *(v0 + 640) = v22;
  *(v0 + 608) = _NSConcreteStackBlock;
  *(v0 + 616) = 1107296256;
  *(v0 + 624) = sub_53C4;
  *(v0 + 632) = &unk_1BCF88;
  [v21 handleLogQuantity:v9 completion:v0 + 608];
  sub_8CC0();

  return _swift_continuation_await(v23);
}

uint64_t sub_137B48()
{
  sub_8A88();
  v4 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_137C1C, 0, 0);
}

uint64_t sub_137C1C()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 800);
  v5 = *(v0 + 784);
  v6 = *(v0 + 720);
  *(v0 + 864) = v6;
  sub_8B48();
  v2(v4, v3, v5);
  v7 = v6;
  v8 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v8, v4))
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Received intent response: %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_38604();
  }

  v13 = *(v0 + 856);
  v14 = (*(v0 + 848))(*(v0 + 800), *(v0 + 784));
  v15 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v14);
  if (v15 == 4)
  {
    v26 = [v7 uuidOfLastSavedSample];
    if (v26)
    {
      v27 = v26;
      v28 = *(v0 + 768);
      sub_16BF8C();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v36 = *(v0 + 768);
    v37 = *(v0 + 760);
    v38 = sub_16BFAC();
    sub_214C(v36, v29, 1, v38);
    sub_1394A8(v36, *(v37 + 16), v37 + 24);
    sub_5CFC8(v36, &qword_1CB0E0, &qword_178058);
    v39 = *(v37 + 336);
    sub_16D77C();
    v40 = swift_task_alloc();
    *(v0 + 872) = v40;
    *v40 = v0;
    v40[1] = sub_13807C;
    v41 = *(v0 + 760);

    return sub_138954();
  }

  else
  {
    if (v15 == 102)
    {
      sub_13A394();
      sub_16D70C();
      v21 = v7[16];
      sub_C9294((v7 + 64), v0 + 512);
      v22 = sub_16C58C();
      sub_8D14(v22);
      v23 = sub_16C57C();
      *(v0 + 576) = v22;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v23;
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_8D2C();
      sub_8CB4();
      v24 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_8D2C();
      sub_8CB4();
      v25 = sub_16D58C();
      *(v0 + 504) = v21;
      *(v0 + 592) = v24;
      *(v0 + 600) = v25;
      sub_83FC8();
      sub_16C4EC();

      sub_8401C(v0 + 504);
    }

    else if (v15 == 101)
    {
      sub_13A394();
      sub_16D76C();
      v16 = v7[16];
      sub_C9294((v7 + 64), v0 + 88);
      sub_8284((v7 + 104), v0 + 128);
      v17 = sub_16C58C();
      sub_8D14(v17);
      v18 = sub_16C57C();
      *(v0 + 312) = v17;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v18;
      type metadata accessor for WellnessCATsSimple();
      sub_8D2C();
      sub_8CB4();
      v19 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_8D2C();
      sub_8CB4();
      v20 = sub_16D58C();
      *(v0 + 80) = v16;
      *(v0 + 328) = v19;
      *(v0 + 336) = v20;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v30 = *(v0 + 816);
      v31 = *(v0 + 760);
      v32 = *(v0 + 728);
      v33 = *(v31 + 336);
      sub_16D71C();
      sub_8284(v31 + 104, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_13A400();

    sub_C9BC();

    return v34();
  }
}

uint64_t sub_13807C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 872);
  *v2 = *v0;
  *(v1 + 880) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_138164()
{
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[102];
  v4 = v0[91];
  sub_16C4FC();

  sub_13A400();

  sub_C9BC();

  return v5();
}

uint64_t sub_138204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2440(&qword_1CB0F0, &qword_178078);
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_38634();
  v101 = v10;
  sub_89B4();
  v12 = __chkstk_darwin(v11);
  v14 = (&v89 - v13);
  __chkstk_darwin(v12);
  v16 = &v89 - v15;
  v17 = sub_16DBEC();
  v18 = sub_42F0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_38634();
  v91 = v23;
  sub_89B4();
  __chkstk_darwin(v24);
  v93 = &v89 - v25;
  sub_89B4();
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  v29 = sub_16DBBC();
  sub_8B48();
  v30 = *(v20 + 16);
  v98 = v20 + 16;
  v99 = v29;
  v97 = v30;
  v30(v28, v29, v17);
  v103 = v7;
  v104 = v4;
  v31 = *(v7 + 16);
  v100 = a1;
  v95 = v31;
  v31(v16, a1, v4);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v102 = v20;
  if (v34)
  {
    v35 = sub_8BD8();
    v92 = v17;
    v36 = v35;
    v37 = sub_CA30();
    v90 = v2;
    v94 = v37;
    v105[1] = v37;
    *v36 = 136315138;
    sub_38940(&qword_1CB0F8, &qword_1CB0F0, &qword_178078);
    v38 = v104;
    sub_16E68C();
    v96 = *(v103 + 8);
    v96(v16, v38);
    v39 = sub_4B364();
    v42 = sub_3AB7C(v39, v40, v41);

    *(v36 + 4) = v42;
    v43 = v38;
    _os_log_impl(&def_259DC, v32, v33, "Received response from PromptForValueFlowAsync: %s", v36, 0xCu);
    sub_2D64(v94);
    v2 = v90;
    sub_8A2C();
    v17 = v92;
    sub_8A2C();

    v44 = v103;
    v45 = *(v102 + 8);
  }

  else
  {

    v44 = v103;
    v43 = v104;
    v96 = *(v103 + 8);
    v96(v16, v104);
    v48 = *(v20 + 8);
  }

  v46 = sub_13298();
  v94 = v47;
  (v47)(v46);
  v49 = v100;
  v50 = v95;
  v95(v14, v100, v43);
  v51 = *(v44 + 88);
  v52 = sub_13A3F4();
  v54 = v53(v52);
  v55 = v101;
  if (v54 == enum case for PromptResult.answered<A>(_:))
  {
    v56 = *(v44 + 96);
    v57 = sub_13A3F4();
    v58(v57);
    v59 = v14[1];
    v103 = *v14;
    v91 = v59;
    v90 = v14[2];
    v60 = v99;
    sub_8B48();
    v61 = v93;
    v97(v93, v60, v17);
    v50(v55, v49, v43);
    v62 = v61;
    v63 = sub_16DBDC();
    v64 = sub_16E36C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = sub_8BD8();
      v92 = v17;
      v66 = v65;
      v67 = sub_CA30();
      v105[0] = v67;
      *v66 = 136315138;
      sub_38940(&qword_1CB0F8, &qword_1CB0F0, &qword_178078);
      v68 = v104;
      v69 = sub_16E68C();
      v70 = v2;
      v72 = v71;
      v96(v55, v68);
      v73 = sub_3AB7C(v69, v72, v105);
      v2 = v70;

      *(v66 + 4) = v73;
      _os_log_impl(&def_259DC, v63, v64, "PromptForValueFlowAsync returned: %s", v66, 0xCu);
      sub_2D64(v67);
      sub_8A2C();
      sub_8A2C();

      v75 = v92;
      v74 = v93;
    }

    else
    {

      v96(v55, v104);
      v74 = v62;
      v75 = v17;
    }

    (v94)(v74, v75);
    v83 = v2[39];
    v84 = v2[40];
    v85 = v2[41];
    v87 = v91;
    v2[39] = v103;
    v2[40] = v87;
    v86 = v90;
  }

  else
  {
    v76 = sub_13A3F4();
    (v96)(v76);
    v77 = v99;
    sub_8B48();
    v78 = v91;
    v79 = v17;
    v97(v91, v77, v17);
    v80 = sub_16DBDC();
    v81 = sub_16E37C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = sub_1BA38();
      *v82 = 0;
      _os_log_impl(&def_259DC, v80, v81, "PromptForValueFlowAsync did not return the needed values, erroring out", v82, 2u);
      sub_8A2C();
    }

    (v94)(v78, v79);
    v83 = v2[39];
    v84 = v2[40];
    v85 = v2[41];
    v2[39] = 0;
    v2[40] = 0;
    v86 = 4;
  }

  v2[41] = v86;
  return sub_139C6C(v83, v84, v85);
}

id sub_1388A4(double a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(sub_16D8BC()) init];
  v7 = sub_208C0(*(v3 + 16));
  sub_1260F0(v7, v8, v6);
  [v6 setValue:a1];
  if (a3)
  {
    v9 = sub_16E1AC();
  }

  else
  {
    v9 = 0;
  }

  [v6 setUnits:v9];

  return v6;
}

uint64_t sub_138954()
{
  sub_8A88();
  v1[79] = v0;
  v1[78] = v2;
  v3 = sub_16C46C();
  v1[80] = v3;
  sub_888C(v3);
  v1[81] = v4;
  v6 = *(v5 + 64);
  v1[82] = sub_8C38();
  v1[83] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[84] = v7;
  sub_888C(v7);
  v1[85] = v8;
  v10 = *(v9 + 64);
  v1[86] = sub_8BC0();
  v11 = sub_16DBEC();
  v1[87] = v11;
  sub_888C(v11);
  v1[88] = v12;
  v14 = *(v13 + 64);
  v1[89] = sub_8C38();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v15 = sub_17960();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_138AB8()
{
  sub_8A88();
  *(v0 + 360) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 368) = sub_3736C();
  *(v0 + 336) = 4;
  v1 = sub_16C86C();
  sub_2D64((v0 + 336));
  if (v1)
  {
    *(v0 + 760) = *(*(v0 + 632) + 16);
    swift_task_alloc();
    sub_179E8();
    *(v0 + 736) = v2;
    *v2 = v3;
    v2[1] = sub_138C04;
    v4 = *(v0 + 624);

    return sub_5E270();
  }

  else
  {
    v6 = *(*(v0 + 632) + 16);
    v7 = swift_task_alloc();
    *(v0 + 744) = v7;
    *v7 = v0;
    v7[1] = sub_1391C4;
    v8 = *(v0 + 624);

    return sub_154788();
  }
}

uint64_t sub_138C04()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 736);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_138CE8()
{
  v51 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 624);
  v5 = sub_16DBBC();
  sub_8B48();
  v6 = *(v2 + 16);
  v49 = v5;
  v6(v1, v5, v3);
  v7 = v4;
  v8 = sub_16DBDC();
  LOBYTE(v3) = sub_16E36C();

  if (os_log_type_enabled(v8, v3))
  {
    v9 = *(v0 + 624);
    sub_8BD8();
    v10 = sub_8A44();
    *v7 = 138412290;
    *(v7 + 1) = v9;
    *v10 = v9;
    v11 = v9;
    sub_88FC(&def_259DC, v12, v13, "#LogHealthKitQuantityFlow: In successfulResponse intent response is %@");
    sub_5CFC8(v10, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_38604();
  }

  v14 = *(v0 + 728);
  v15 = *(v0 + 720);
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  v18 = *(v0 + 632);

  v19 = *(v16 + 8);
  v19(v14, v17);
  sub_8B48();
  v6(v15, v49, v17);

  v20 = sub_16DBDC();
  v21 = sub_16E36C();

  if (os_log_type_enabled(v20, v21))
  {
    v46 = *(v0 + 696);
    v47 = *(v0 + 720);
    v22 = *(v0 + 760);
    v23 = sub_8BD8();
    v48 = v6;
    v24 = sub_CA30();
    v50 = v24;
    *v23 = 136315138;
    v25 = sub_208C0(v22);
    v27 = sub_3AB7C(v25, v26, &v50);

    *(v23 + 4) = v27;
    _os_log_impl(&def_259DC, v20, v21, "#LogHealthKitQuantityFlow: In successfulResponse identifier is %s", v23, 0xCu);
    sub_2D64(v24);
    v6 = v48;
    sub_8A2C();
    sub_8A2C();

    v19(v47, v46);
  }

  else
  {
    v28 = *(v0 + 720);
    v29 = *(v0 + 696);

    v30 = sub_C9E0();
    (v19)(v30);
  }

  v31 = v19;
  sub_7B09C(v0 + 376, v0 + 456, &qword_1C5ED0, &qword_171090);
  if (*(v0 + 480))
  {
    sub_17464((v0 + 456), v0 + 416);
    sub_C9294(v0 + 416, v0 + 496);
    v32 = swift_allocObject();
    sub_17464((v0 + 496), v32 + 16);
    sub_16C73C();
    v33 = sub_16C1DC();
    sub_8D14(v33);
    *(v0 + 616) = sub_16C1CC();
    v34 = sub_16C32C();
    sub_2D64((v0 + 416));
    sub_5CFC8(v0 + 376, &qword_1C5ED0, &qword_171090);
  }

  else
  {
    v35 = *(v0 + 712);
    v36 = *(v0 + 696);
    sub_5CFC8(v0 + 456, &qword_1C5ED0, &qword_171090);
    sub_8B48();
    v6(v35, v49, v36);
    v37 = sub_16DBDC();
    v38 = sub_16E37C();
    if (sub_4B3A8(v38))
    {
      v39 = sub_1BA38();
      *v39 = 0;
      _os_log_impl(&def_259DC, v37, v38, "#LogHealthKitQuantityFlow: Invalid response output", v39, 2u);
      sub_8A2C();
    }

    v40 = *(v0 + 712);
    v41 = *(v0 + 696);
    v42 = *(v0 + 632);

    v31(v40, v41);
    v43 = *(v42 + 336);
    sub_16D71C();
    sub_8284(v42 + 104, v0 + 176);
    sub_82E0();
    v34 = sub_16C32C();
    sub_8334(v0 + 176);
    sub_5CFC8(v0 + 376, &qword_1C5ED0, &qword_171090);
  }

  sub_13A36C();

  v44 = *(v0 + 8);

  return v44(v34);
}

uint64_t sub_1391C4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 744);
  *v2 = *v0;
  *(v1 + 752) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1392AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[94];
  if (v13)
  {
    v14 = v12[86];
    v15 = v12[85];
    v16 = v12[84];
    v17 = v12[83];
    v18 = v12[82];
    v19 = v12[81];
    v20 = v12[80];
    v21 = v12[79];
    sub_16C43C();
    (*(v19 + 16))(v18, v17, v20);
    sub_16C75C();
    (*(v19 + 8))(v17, v20);
    v22 = [v13 patternId];
    sub_16E1BC();

    sub_4B4EC();
    sub_16C76C();
    v23 = v21[17];
    sub_2D20(v21 + 13, v21[16]);
    v12[76] = sub_16C2FC();
    sub_16C28C();
    sub_16C32C();

    v24 = *(v15 + 8);
    v25 = sub_C9E0();
    v26(v25);
  }

  else
  {
    v27 = v12[79];
    v28 = *(v27 + 336);
    sub_16D71C();
    sub_8284(v27 + 104, (v12 + 2));
    sub_82E0();
    sub_16C32C();
    sub_8334((v12 + 2));
  }

  sub_13A36C();

  v29 = v12[1];
  sub_8CC0();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1394A8(uint64_t a1, int a2, uint64_t a3)
{
  v63 = a3;
  v65 = a1;
  v4 = sub_16DBEC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v59[-v14];
  __chkstk_darwin(v13);
  v17 = &v59[-v16];
  v18 = sub_2440(&qword_1CB0E0, &qword_178058);
  v19 = sub_4348(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v59[-v22];
  v66 = sub_16BFAC();
  v24 = sub_42F0(v66);
  v64 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_38634();
  v61 = v28;
  sub_89B4();
  __chkstk_darwin(v29);
  v31 = &v59[-v30];
  sub_CA04();
  sub_16D21C();
  if (sub_16D20C())
  {
    v60 = a2;
    sub_16D1EC();

    sub_16C31C();

    if (*(&v71 + 1))
    {
      sub_17464(&v70, v75);
      sub_7B09C(v65, v23, &qword_1CB0E0, &qword_178058);
      v32 = v66;
      if (sub_369C(v23, 1, v66) == 1)
      {
        sub_5CFC8(v23, &qword_1CB0E0, &qword_178058);
        v33 = sub_16DBBC();
        sub_8B48();
        (*(v7 + 16))(v15, v33, v4);
        v34 = sub_16DBDC();
        v35 = sub_16E37C();
        if (sub_4B3A8(v35))
        {
          *sub_1BA38() = 0;
          sub_13A420(&def_259DC, v36, v37, "LogHealthKitQuantityFlow: No uuidOfLastSavedSample. Continuing without registering corrections flow.");
          sub_38604();
        }

        (*(v7 + 8))(v15, v4);
      }

      else
      {
        v44 = v64;
        (*(v64 + 32))(v31, v23, v32);
        sub_16DBBC();
        sub_8B48();
        v45 = *(v7 + 16);
        v46 = sub_13A3F4();
        v47(v46);
        v48 = sub_16DBDC();
        v49 = sub_16E36C();
        if (sub_4B3A8(v49))
        {
          v50 = sub_1BA38();
          *v50 = 0;
          _os_log_impl(&def_259DC, v48, v49, "LogHealthKitQuantityFlow: Registering corrections flow", v50, 2u);
          v32 = v66;
          sub_8A2C();
        }

        (*(v7 + 8))(v17, v4);
        v51 = sub_2D20((v62 + 272), *(v62 + 296));
        v52 = v61;
        (*(v44 + 16))(v61, v31, v32);
        sub_C9294(v63, v74);
        sub_C9294(v51, v73);
        sub_8284((v51 + 5), &v70);
        v53 = sub_16DAFC();
        v67 = 0u;
        v68 = 0u;
        v69 = 0;
        v54 = objc_allocWithZone(v53);
        v55 = sub_16DAEC();
        v56 = type metadata accessor for LoggingCorrectionsFlow();
        v57 = sub_8D14(v56);
        v58 = sub_139DB8(v52, v60, v74, v73, &v70, v55, v57);
        *(&v71 + 1) = v56;
        v72 = sub_13A1F4(&qword_1CB0E8, 255, type metadata accessor for LoggingCorrectionsFlow);
        *&v70 = v58;
        sub_2D20(v75, v75[3]);
        sub_16C30C();
        (*(v44 + 8))(v31, v32);
        sub_2D64(&v70);
      }

      return sub_2D64(v75);
    }
  }

  else
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
  }

  sub_5CFC8(&v70, &qword_1C6790, &qword_171C70);
  v38 = sub_16DBBC();
  sub_8B48();
  (*(v7 + 16))(v12, v38, v4);
  v39 = sub_16DBDC();
  v40 = sub_16E37C();
  if (sub_4B3A8(v40))
  {
    *sub_1BA38() = 0;
    sub_13A420(&def_259DC, v41, v42, "LogHealthKitQuantityFlow: No corrections client available. Continuing without registering corrections flow.");
    sub_38604();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t *LogHealthKitQuantityFlow.deinit()
{
  sub_2D64(v0 + 3);
  sub_2D64(v0 + 8);
  sub_C938((v0 + 13));
  v1 = v0[33];
  swift_unknownObjectRelease();
  sub_2D64(v0 + 34);
  sub_139C6C(v0[39], v0[40], v0[41]);
  return v0;
}

uint64_t LogHealthKitQuantityFlow.__deallocating_deinit()
{
  LogHealthKitQuantityFlow.deinit();

  return _swift_deallocClassInstance(v0, 337, 7);
}

uint64_t sub_139B38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return LogHealthKitQuantityFlow.execute()();
}

uint64_t sub_139BD4()
{
  type metadata accessor for LogHealthKitQuantityFlow();

  return sub_16C37C();
}

uint64_t sub_139C0C(void (*a1)(void))
{
  a1();

  return sub_16E7AC();
}

uint64_t sub_139C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_139C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_139CAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_139CC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_139D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

void *sub_139D78(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_139DB8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v36 = a6;
  v37 = a5;
  v38 = a4;
  v39 = a3;
  v40 = a1;
  v9 = sub_16DBEC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = (a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_kWellnessFlowPluginIdentifier);
  *v16 = 0xD000000000000021;
  v16[1] = 0x800000000017F4D0;
  v17 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
  v18 = sub_16C7DC();
  sub_214C(a7 + v17, 1, 1, v18);
  v19 = sub_16DBBC();
  swift_beginAccess();
  v33 = v10[2];
  v33(v15, v19, v9);
  v20 = sub_16DBDC();
  v21 = sub_16E36C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&def_259DC, v20, v21, "Initializing LoggingCorrectionsFlow", v22, 2u);
  }

  v34 = v10[1];
  v34(v15, v9);
  v23 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_uuidOfLastSavedSample;
  v24 = sub_16BFAC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(a7 + v23, v40, v24);
  *(a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleHKIdentifier) = a2;
  sub_C9294(v39, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent);
  sub_C9294(v38, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig);
  sub_8284(v37, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider);
  *(a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler) = v36;
  *(a7 + 64) = 0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 16) = 0u;
  v26 = a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  strcpy((a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue), "initial value");
  *(v26 + 14) = -4864;
  v27 = enum case for CorrectionsExitValue.failure(_:);
  v28 = sub_16C71C();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  swift_beginAccess();
  v33(v35, v19, v9);
  swift_unknownObjectRetain();
  v29 = sub_16DBDC();
  v30 = sub_16E36C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&def_259DC, v29, v30, "Initialized LoggingCorrectionsFlow", v31, 2u);
  }

  sub_C938(v37);
  sub_2D64(v38);
  sub_2D64(v39);
  (*(v25 + 8))(v40, v24);
  v34(v35, v9);
  return a7;
}

uint64_t sub_13A1F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_13A23C()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_13A274()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

uint64_t sub_13A334()
{
  v2 = v0[216];
  v3 = v0[215];
  v4 = v0[212];
  v5 = v0[211];
  v6 = v0[210];
  v7 = v0[209];
  v8 = v0[206];
  v9 = v0[205];
  v10 = v0[204];
  v11 = v0[201];
}

uint64_t sub_13A36C()
{
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
}

uint64_t sub_13A394()
{
  v1 = v0[102];
  v2 = v0[97];
  v3 = v0[91];
  return *(v0[95] + 336);
}

void sub_13A3CC()
{
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);

  sub_16D70C();
}

uint64_t sub_13A400()
{
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[97];
  v5 = v0[96];
}

void sub_13A420(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_13A440()
{

  return sub_16D62C();
}

uint64_t sub_13A458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16E20C();
    v5 = v4;
    v6 = v3 == 1667720548 && v4 == 0xE400000000000000;
    if (v6 || (a1 = v3, (sub_13A768() & 1) != 0) || (a1 == 6533314 ? (v7 = v5 == 0xA300000000000000) : (v7 = 0), v7 || (sub_13A768() & 1) != 0))
    {
      a1 = 0x737569736C6563;
    }

    else
    {
      v9 = a1 == 1718052196 && v5 == 0xE400000000000000;
      if (v9 || (sub_13A768() & 1) != 0 || (a1 == 6729922 ? (v10 = v5 == 0xA300000000000000) : (v10 = 0), v10 || (sub_13A768() & 1) != 0))
      {
        a1 = 0x65686E6572686166;
      }

      else
      {
        v11 = a1 == 107 && v5 == 0xE100000000000000;
        if (v11 || (sub_13A768() & 1) != 0)
        {
          a1 = 0x6E69766C656BLL;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_13A5C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = 1952802150;
  v5 = a1 == 29798 && a2 == 0xE200000000000000;
  if (!v5 && (sub_13A748() & 1) == 0)
  {
    v4 = 0x736568636E69;
    v6 = a1 == 28265 && a2 == 0xE200000000000000;
    if (!v6 && (sub_13A748() & 1) == 0)
    {
      v4 = 0x7364726179;
      v7 = a1 == 25721 && a2 == 0xE200000000000000;
      if (!v7 && (sub_13A748() & 1) == 0)
      {
        v4 = 0x73656C696DLL;
        v8 = a1 == 26989 && a2 == 0xE200000000000000;
        if (!v8 && (sub_13A748() & 1) == 0)
        {
          v4 = 0x73726574656DLL;
          v10 = a1 == 109 && a2 == 0xE100000000000000;
          if (!v10 && (sub_16E6BC() & 1) == 0)
          {
            v4 = 0x74656D69746E6563;
            v11 = a1 == 28003 && a2 == 0xE200000000000000;
            if (!v11 && (sub_13A748() & 1) == 0)
            {

              return a1;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_13A748()
{

  return sub_16E6BC();
}

uint64_t sub_13A768()
{

  return sub_16E6BC();
}

Swift::OpaquePointer *commonWellnessGuards.unsafeMutableAddressor()
{
  if (qword_1C55F0 != -1)
  {
    swift_once();
  }

  return &commonWellnessGuards;
}

uint64_t sub_13A7D4()
{
  v0 = sub_16C70C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440(&qword_1CB108, &qword_178088);
  v5 = *(sub_16C2CC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v8[1] = xmmword_1712E0;
  sub_16C6FC();
  sub_16C2BC();
  (*(v1 + 8))(v4, v0);
  result = sub_16C2AC();
  commonWellnessGuards._rawValue = v8;
  return result;
}

__n128 sub_13A960(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13A974(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_13A9B4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_13AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v22;
  a20 = v23;
  v172 = v24;
  v173 = v20;
  v26 = v25;
  v171 = v27;
  v29 = v28;
  v30 = sub_2440(&qword_1CB128, &qword_178128);
  v31 = sub_4348(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v34);
  sub_458D8();
  sub_45590(v35);
  v36 = sub_16CFBC();
  v37 = sub_12F4C(v36, &a18);
  v170 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_12FD4();
  sub_130A0(v41);
  v42 = sub_2440(&qword_1C5690, &dword_16F320);
  v43 = sub_4348(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v46);
  sub_458D8();
  sub_45590(v47);
  v48 = sub_16BF5C();
  v49 = sub_42F0(v48);
  v181 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v53);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v54);
  sub_458D8();
  v182 = v55;
  sub_CA04();
  v56 = sub_16DBEC();
  v57 = sub_42F0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  __chkstk_darwin(v57);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v62);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v63);
  sub_8AC0();
  v174 = v64;
  sub_89B4();
  __chkstk_darwin(v65);
  v67 = &v157 - v66;
  v68 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v69 = *(v59 + 16);
  v179 = v59 + 16;
  v180 = v68;
  v178 = v69;
  v69(v67, v68, v56);

  v70 = sub_16DBDC();
  sub_16E36C();
  sub_140608();
  v71 = os_log_type_enabled(v70, v21);
  v175 = v56;
  v176 = v29;
  v167 = v59;
  v166 = v26;
  if (v71)
  {
    sub_8BD8();
    v72 = sub_4B33C();
    v184 = v72;
    *v59 = 136315138;
    v183 = v29;
    sub_16D1DC();
    v73 = v48;
    sub_140078();
    sub_13FFD0(v74, v75);
    v76 = sub_16E68C();
    v78 = sub_3AB7C(v76, v77, &v184);

    *(v59 + 4) = v78;
    v48 = v73;
    v29 = v176;
    _os_log_impl(&def_259DC, v70, v21, "given date before conversion: %s", v59, 0xCu);
    sub_2D64(v72);
    sub_8A2C();
    v56 = v175;
    sub_8A2C();
  }

  v177 = *(v59 + 8);
  v177(v67, v56);
  v79 = v182;
  sub_13B45C();
  v80 = v180;
  sub_385D8();
  swift_beginAccess();
  v81 = v174;
  v178(v174, v80, v56);
  v82 = *(v181 + 16);
  v83 = v164;
  sub_140590();
  v82();
  v84 = v165;
  (v82)(v165, v79, v48);
  v85 = v81;
  v86 = sub_16DBDC();
  v87 = sub_16E36C();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = sub_CA60();
    v159 = swift_slowAlloc();
    v183 = v159;
    *v88 = 136315394;
    sub_13FFD0(&qword_1C96B0, &type metadata accessor for Date);
    HIDWORD(v158) = v87;
    v89 = sub_16E68C();
    v90 = v48;
    v92 = v91;
    v93 = *(v181 + 8);
    v93(v83, v90);
    sub_3AB7C(v89, v92, &v183);
    sub_1403CC();

    *(v88 + 4) = v89;
    *(v88 + 12) = 2080;
    sub_8427C();
    sub_16E68C();
    v93(v84, v90);
    v94 = sub_38B40();
    v97 = sub_3AB7C(v94, v95, v96);
    v29 = v176;

    *(v88 + 14) = v97;
    _os_log_impl(&def_259DC, v86, BYTE4(v158), "now date: %s , given date: %s", v88, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    v98 = v93;
    sub_8A2C();

    v99 = v167;
    v100 = v174;
  }

  else
  {

    v101 = *(v181 + 8);
    v101(v84, v48);
    v98 = v101;
    v101(v83, v48);
    v99 = v167;
    v100 = v85;
  }

  v102 = v175;
  v177(v100, v175);
  if ((sub_16BEFC() & 1) == 0)
  {
    sub_385D8();
    swift_beginAccess();
    v125 = sub_1403A8(&v186);
    v126(v125);
    v127 = sub_16DBDC();
    v128 = sub_16E36C();
    if (sub_387B0(v128))
    {
      v129 = sub_1BA38();
      sub_1BA50(v129);
      sub_4593C(&def_259DC, v130, v131, "using .future strategy");
      v29 = v176;
      sub_8A2C();
    }

    v132 = sub_140520();
    v133(v132);
    v134 = sub_1401E8();
    v135(v134);
    sub_1404CC(v171 & 1, v136, v137, v138, v139, v140, &a15, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
    (*(v99 + 8))(v86, v102);
    if (sub_16D16C())
    {
      sub_1403FC(&a9);
      sub_16D11C();

      sub_16D10C();
      v141 = sub_C98CC();
      sub_8B20(v141, v142, v143);
      if (!v122)
      {
        v144 = sub_14023C();
        v98(v144);
        sub_8748(v29, &qword_1CB128, &qword_178128);
        v124 = &a15;
        goto LABEL_17;
      }
    }

    else
    {
      sub_16D10C();
      sub_1402D0(&a9);
      sub_8AB4();
      sub_214C(v151, v152, v153, v154);
    }

    sub_8748(v29, &qword_1CB128, &qword_178128);
    v155 = v169;
    sub_13F864(v169, v172);
    sub_8748(v155, &qword_1C5690, &dword_16F320);
    v156 = sub_14023C();
    v98(v156);
    goto LABEL_22;
  }

  sub_385D8();
  swift_beginAccess();
  v103 = sub_1403A8(&v185);
  v104(v103);
  v105 = sub_16DBDC();
  v106 = sub_16E36C();
  if (sub_387B0(v106))
  {
    v107 = sub_1BA38();
    sub_1BA50(v107);
    sub_4593C(&def_259DC, v108, v109, "using .past strategy");
    v29 = v176;
    sub_8A2C();
  }

  v110 = sub_140520();
  v111(v110);
  v112 = sub_1401E8();
  v113(v112);
  sub_1404CC(v171 & 1, v114, v115, v116, v117, v118, &a14, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  (*(v99 + 8))(v86, v102);
  if (!sub_16D16C())
  {
    sub_16D10C();
    sub_1402D0(&v187);
    sub_8AB4();
    sub_214C(v145, v146, v147, v148);
    goto LABEL_19;
  }

  sub_1403FC(&v187);
  sub_16D11C();

  sub_16D10C();
  v119 = sub_C98CC();
  sub_8B20(v119, v120, v121);
  if (v122)
  {
LABEL_19:
    sub_8748(v29, &qword_1CB128, &qword_178128);
    v149 = v168;
    sub_13F864(v168, v172);
    sub_8748(v149, &qword_1C5690, &dword_16F320);
    v150 = sub_14023C();
    v98(v150);
    goto LABEL_22;
  }

  v123 = sub_14023C();
  v98(v123);
  sub_8748(v29, &qword_1CB128, &qword_178128);
  v124 = &a14;
LABEL_17:
  sub_125F78(*(v124 - 32), v172);
LABEL_22:
  sub_45924();
}

void sub_13B45C()
{
  sub_4597C();
  v134 = v0;
  v137 = v1;
  v127 = v2;
  v3 = sub_16BF5C();
  v4 = sub_42F0(v3);
  v135 = v5;
  v136 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_12FD4();
  v133 = v8;
  sub_CA04();
  v9 = sub_16C0BC();
  v10 = sub_42F0(v9);
  v131 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_38634();
  v128 = v14;
  sub_89B4();
  __chkstk_darwin(v15);
  sub_458D8();
  v129 = v16;
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v19 = *(v18 + 64);
  sub_433C();
  __chkstk_darwin(v20);
  v130 = &v121 - v21;
  sub_CA04();
  v22 = sub_16D0CC();
  v23 = sub_42F0(v22);
  v139 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_12FD4();
  v121 = v27;
  v124 = sub_2440(&qword_1CB140, &qword_178140);
  sub_8B38(v124);
  v29 = *(v28 + 64);
  sub_433C();
  __chkstk_darwin(v30);
  v32 = &v121 - v31;
  v33 = sub_2440(&qword_1CB148, &qword_178148);
  v34 = sub_4348(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_38634();
  v123 = v37;
  sub_89B4();
  v39 = __chkstk_darwin(v38);
  v41 = &v121 - v40;
  __chkstk_darwin(v39);
  sub_458D8();
  v138 = v42;
  v43 = sub_2440(&qword_1CB128, &qword_178128);
  v44 = sub_4348(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_887C();
  v49 = v47 - v48;
  __chkstk_darwin(v50);
  v52 = &v121 - v51;
  v53 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v53);
  v55 = *(v54 + 64);
  sub_433C();
  __chkstk_darwin(v56);
  v57 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v57);
  v59 = *(v58 + 64);
  sub_433C();
  __chkstk_darwin(v60);
  sub_140318();
  v61 = sub_16BE2C();
  v62 = sub_42F0(v61);
  v125 = v63;
  v126 = v62;
  v65 = *(v64 + 64);
  __chkstk_darwin(v62);
  sub_4304();
  v68 = v67 - v66;
  sub_8AB4();
  v132 = v9;
  sub_214C(v69, v70, v71, v9);
  sub_16C0EC();
  sub_8AB4();
  sub_214C(v72, v73, v74, v75);
  sub_16BE1C();
  if (!sub_16D16C())
  {
    sub_16D10C();
    sub_8AB4();
    sub_214C(v81, v82, v83, v84);
    goto LABEL_6;
  }

  sub_16D11C();

  v76 = sub_16D10C();
  v77 = sub_C98CC();
  sub_8B20(v77, v78, v76);
  if (v99)
  {
LABEL_6:
    if (sub_16D1BC() && (v85 = sub_16D09C(), v87 = v86, , (v87 & 1) == 0))
    {
      if (v85 == 12)
      {
        v88 = 0;
      }

      else
      {
        v88 = v85;
      }

      v122 = v88;
    }

    else
    {
      v122 = 0;
    }

    v89 = sub_16D1BC();
    v90 = v138;
    if (v89)
    {
      sub_16D0DC();
    }

    else
    {
      sub_8AB4();
      sub_214C(v91, v92, v93, v22);
    }

    (*(v139 + 104))(v41, enum case for DateTime.Time.Meridiem.pm(_:), v22);
    sub_388E4();
    sub_214C(v94, v95, v96, v22);
    v97 = *(v124 + 48);
    sub_74678(v90, v32, &qword_1CB148, &qword_178148);
    sub_74678(v41, &v32[v97], &qword_1CB148, &qword_178148);
    sub_8B20(v32, 1, v22);
    if (v99)
    {
      sub_140620(v41);
      sub_140620(v90);
      sub_8B20(&v32[v97], 1, v22);
      if (v99)
      {
        sub_8748(v32, &qword_1CB148, &qword_178148);
        goto LABEL_27;
      }
    }

    else
    {
      v98 = v123;
      sub_74678(v32, v123, &qword_1CB148, &qword_178148);
      sub_8B20(&v32[v97], 1, v22);
      if (!v99)
      {
        v100 = v139;
        (*(v139 + 32))(v121, &v32[v97], v22);
        sub_13FFD0(&qword_1CB150, &type metadata accessor for DateTime.Time.Meridiem);
        LODWORD(v124) = sub_16E19C();
        v101 = *(v100 + 8);
        v102 = sub_1403C0();
        v101(v102);
        sub_140590();
        sub_8748(v103, v104, v105);
        sub_140590();
        sub_8748(v106, v107, v108);
        (v101)(v123, v22);
        sub_140590();
        sub_8748(v109, v110, v111);
        if ((v124 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_27:
        if (__OFADD__(v122, 12))
        {
          __break(1u);
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      sub_140620(v41);
      sub_140620(v138);
      (*(v139 + 8))(v98, v22);
    }

    sub_8748(v32, &qword_1CB140, &qword_178140);
    goto LABEL_28;
  }

  sub_74678(v52, v49, &qword_1CB128, &qword_178128);
  v79 = *(v76 - 8);
  v80 = (*(v79 + 88))(v49, v76);
  if (v80 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.afternoon(_:))
  {
    goto LABEL_28;
  }

  if (v80 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.evening(_:))
  {
    if (v80 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.morning(_:))
    {
LABEL_28:
      sub_14059C();
      sub_16BDCC();
      sub_8748(v52, &qword_1CB128, &qword_178128);
      goto LABEL_29;
    }

    if (v80 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.night(_:))
    {
      (*(v79 + 8))(v49, v76);
      goto LABEL_6;
    }
  }

  sub_8748(v52, &qword_1CB128, &qword_178128);
  sub_14059C();
  sub_16BDCC();
LABEL_29:
  v112 = sub_16D1BC();
  v113 = v130;
  if (v112)
  {
    sub_16D0AC();
  }

  sub_14059C();
  sub_16BDFC();
  if (sub_16D1BC())
  {
    sub_16D0BC();
  }

  sub_14059C();
  sub_16BE0C();
  v114 = v129;
  sub_16C08C();
  v115 = v128;
  sub_16C08C();
  v116 = v133;
  sub_16C02C();
  v117 = v132;
  v118 = *(v131 + 8);
  v118(v115, v132);
  sub_16C05C();
  v120 = v135;
  v119 = v136;
  (*(v135 + 8))(v116, v136);
  v118(v114, v117);
  sub_8B20(v113, 1, v119);
  if (!v99)
  {
    (*(v125 + 8))(v68, v126);
    (*(v120 + 32))(v127, v113, v119);
    sub_45924();
    return;
  }

LABEL_41:
  __break(1u);
}

void sub_13BE60()
{
  sub_4597C();
  v2 = sub_2440(&qword_1CB120, &qword_178120);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v70 = &v69 - v6;
  v7 = sub_2440(&qword_1CB128, &qword_178128);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_2440(&qword_1CB130, &qword_178130);
  sub_4348(v13);
  v15 = *(v14 + 64);
  sub_433C();
  __chkstk_darwin(v16);
  v71 = &v69 - v17;
  v18 = sub_2440(&qword_1CB138, &qword_178138);
  sub_4348(v18);
  v20 = *(v19 + 64);
  sub_433C();
  __chkstk_darwin(v21);
  v22 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_4348(v22);
  v24 = *(v23 + 64);
  sub_433C();
  __chkstk_darwin(v25);
  sub_140318();
  v26 = sub_16CC6C();
  v27 = sub_42F0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_887C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  sub_14057C();
  v72 = sub_16CB5C();
  if (sub_16CB9C())
  {
    v36 = sub_16CA2C();

    if (v36)
    {
LABEL_3:

      goto LABEL_12;
    }
  }

  if (sub_16CB9C())
  {
    v37 = sub_16CA5C();

    if (v37)
    {

      v38 = sub_16C9FC();

      if (v38)
      {
        sub_16CC5C();

        sub_8B20(v1, 1, v26);
        if (!v39)
        {
          (*(v29 + 32))(v0, v1, v26);
          (*(v29 + 104))(v34, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:), v26);
          v43 = sub_1403C0();
          v45 = sub_121754(v43, v44);
          v46 = *(v29 + 8);
          v46(v34, v26);
          if (v45)
          {
            sub_16D05C();
            sub_8AB4();
            sub_214C(v47, v48, v49, v50);
            sub_16D17C();
            sub_8AB4();
            sub_214C(v51, v52, v53, v54);
            v55 = enum case for DateTime.DateTimeRange.DefinedDateTimeRange.entireYear(_:);
            v56 = sub_16D10C();
            sub_8B38(v56);
            (*(v57 + 104))(v12, v55, v56);
            sub_388E4();
            sub_214C(v58, v59, v60, v56);
            v61 = enum case for DateTime.Qualifier.last(_:);
            v62 = sub_16D1CC();
            sub_8B38(v62);
            (*(v63 + 104))(v70, v61, v62);
            sub_388E4();
            sub_214C(v64, v65, v66, v62);
            v67 = sub_16D14C();
            sub_8D14(v67);
            sub_385D8();
            sub_16D13C();
            v68 = sub_16D1DC();
            sub_8D14(v68);
            sub_16D03C();

            v46(v0, v26);
            goto LABEL_12;
          }

          v46(v0, v26);
          goto LABEL_3;
        }
      }

      else
      {

        sub_8AB4();
        sub_214C(v40, v41, v42, v26);
      }

      sub_8748(v1, &qword_1C5680, &unk_16F310);
    }
  }

LABEL_12:
  sub_45924();
}

void sub_13C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v21;
  a20 = v22;
  v219 = v23;
  LODWORD(v218) = v24;
  v224 = v26;
  v225 = v25;
  v200 = sub_2440(&qword_1C5690, &dword_16F320);
  v27 = sub_8B38(v200);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v30);
  sub_458D8();
  sub_45590(v31);
  v32 = sub_16DBEC();
  v33 = sub_42F0(v32);
  v229 = v34;
  v230 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_38634();
  v226 = v37;
  sub_89B4();
  __chkstk_darwin(v38);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v39);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v40);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v41);
  sub_458D8();
  sub_130A0(v42);
  v43 = sub_2440(&qword_1CB110, &unk_178110);
  v44 = sub_12F4C(v43, &v233);
  v205 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v48);
  sub_458D8();
  v228 = v49;
  sub_CA04();
  v50 = sub_16CFBC();
  v51 = sub_12F4C(v50, &a15);
  v216 = v52;
  v54 = *(v53 + 64);
  __chkstk_darwin(v51);
  sub_12FD4();
  sub_45590(v55);
  v56 = sub_16CFCC();
  v57 = sub_12F4C(v56, &a12);
  v214 = v58;
  v60 = *(v59 + 64);
  __chkstk_darwin(v57);
  sub_12FD4();
  sub_45590(v61);
  v62 = sub_16CFEC();
  v63 = sub_42F0(v62);
  v222 = v64;
  v223 = v63;
  v66 = *(v65 + 64);
  __chkstk_darwin(v63);
  sub_12FD4();
  v227 = v67;
  sub_CA04();
  v68 = sub_16BF5C();
  v69 = sub_4348(v68);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69);
  sub_12FD4();
  sub_45590(v72);
  v73 = sub_16C0BC();
  v74 = sub_4348(v73);
  v76 = *(v75 + 64);
  __chkstk_darwin(v74);
  sub_12FD4();
  sub_45590(v77);
  v78 = sub_16CFFC();
  v79 = sub_12F4C(v78, &v234);
  v210 = v80;
  v82 = *(v81 + 64);
  __chkstk_darwin(v79);
  sub_12FD4();
  sub_45590(v83);
  v84 = sub_16C0EC();
  v85 = sub_4348(v84);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  sub_4304();
  sub_140318();
  v88 = sub_16BFFC();
  v89 = sub_4348(v88);
  v91 = *(v90 + 64);
  __chkstk_darwin(v89);
  sub_887C();
  v93 = __chkstk_darwin(v92);
  v208 = &v198 - v94;
  __chkstk_darwin(v93);
  v221 = sub_16CFAC();
  v95 = sub_42F0(v221);
  v220 = v96;
  v98 = *(v97 + 64);
  __chkstk_darwin(v95);
  sub_4304();
  v101 = v100 - v99;
  sub_16CF9C();
  v103 = v20[3];
  v102 = v20[4];
  v104 = sub_1402DC();
  sub_2D20(v104, v105);
  sub_140534();
  sub_16C3DC();
  v106 = v20[4];
  sub_2D20(v20, v20[3]);
  sub_16C3DC();
  v107 = v20[4];
  sub_2D20(v20, v20[3]);
  v108 = v228;
  sub_16C3DC();
  sub_16C0DC();
  (*(v210 + 104))(v209, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v211);
  sub_16C08C();
  sub_14024C(&a9);
  sub_16BF4C();
  v109 = sub_16D01C();
  sub_8D14(v109);
  v110 = v108;
  v111 = v227;
  v112 = sub_16D00C();
  v113 = *(v214 + 104);
  sub_140554();
  v114(v213);
  (*(v216 + 16))(v215, v219, v217);
  sub_16D10C();
  sub_16D1DC();
  sub_1401C4();
  sub_13FFD0(v115, v116);
  sub_16E14C();
  sub_16CFDC();
  sub_16CF8C();
  v117 = v204;
  v118 = v205;
  v119 = v207;
  v120 = v206;
  (*(v205 + 16))(v207, v110, v206);
  v121 = (*(v118 + 88))(v119, v120);
  v212 = v112;
  if (v121 == enum case for Recommendation.confident<A>(_:))
  {
    v218 = v101;
    v122 = *(v118 + 96);
    v123 = v207;
    v124 = sub_38B40();
    v125(v124);
    v126 = *v123;
    v127 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v128 = v230;
    v129 = *(v229 + 16);
    v130 = v117;
    v225 = v229 + 16;
    v219 = v129;
    (v129)(v117, v127, v230);

    v131 = sub_16DBDC();
    v132 = sub_16E36C();
    v226 = v126;

    if (os_log_type_enabled(v131, v132))
    {
      v133 = sub_8BD8();
      v134 = sub_CA30();
      v232 = v134;
      *v133 = 136315138;
      v231[1] = v226;
      sub_140078();
      sub_13FFD0(v135, v136);
      v137 = sub_16E68C();
      v139 = sub_3AB7C(v137, v138, &v232);

      *(v133 + 4) = v139;
      _os_log_impl(&def_259DC, v131, v132, "Recommendation: %s", v133, 0xCu);
      sub_2D64(v134);
      v128 = v230;
      sub_8A2C();
      sub_8A2C();
    }

    v140 = *(v229 + 8);
    v140(v130, v128);
    sub_385D8();
    swift_beginAccess();
    v141 = v202;
    v142 = sub_1402DC();
    v219(v142);

    v143 = sub_16DBDC();
    v144 = sub_16E36C();

    v145 = os_log_type_enabled(v143, v144);
    v146 = v203;
    if (v145)
    {
      v147 = sub_8BD8();
      v148 = swift_slowAlloc();
      *v147 = 138412290;
      v149.super.isa = sub_16D19C().super.isa;
      *(v147 + 4) = v149;
      v148->super.isa = v149.super.isa;
      _os_log_impl(&def_259DC, v143, v144, "Recommended INDateComponentsRange: %@", v147, 0xCu);
      sub_8748(v148, &qword_1C57B8, &qword_1715A0);
      sub_8A2C();
      v141 = v202;
      sub_8A2C();
    }

    v150 = v230;
    v140(v141, v230);
    sub_385D8();
    swift_beginAccess();
    (v219)(v146, v127, v150);

    v151 = sub_16DBDC();
    sub_16E36C();
    sub_140608();
    if (sub_1404F0())
    {
      v152 = v140;
      sub_8BD8();
      v153 = sub_4B33C();
      v231[0] = v153;
      *v150 = 136315138;
      isa = sub_16D19C().super.isa;
      v155 = [(objc_class *)isa dateInterval];

      v156 = v205;
      if (v155)
      {
        v157 = v199;
        sub_16BD3C();

        v158 = 0;
      }

      else
      {
        v158 = 1;
        v157 = v199;
      }

      v179 = sub_16BD9C();
      sub_214C(v157, v158, 1, v179);
      v180 = sub_16E3DC();
      v182 = v181;
      sub_8748(v157, &qword_1C5690, &dword_16F320);
      v183 = sub_3AB7C(v180, v182, v231);

      *(v150 + 4) = v183;
      sub_1401A4(&def_259DC, v184, v185, "Recommended dateInterval: %s");
      sub_2D64(v153);
      sub_89F4();
      sub_38604();

      v152(v203, v230);
    }

    else
    {

      v140(v146, v150);
      v156 = v205;
    }

    v186 = sub_16D19C().super.isa;
    v187 = [(objc_class *)v186 dateInterval];

    v188 = v228;
    v190 = v222;
    v189 = v223;
    v191 = v201;
    v192 = v221;
    if (v187)
    {
      sub_16BD3C();
    }

    else
    {
    }

    v193 = v206;
    v194 = v220;

    (*(v156 + 8))(v188, v193);
    (*(v190 + 8))(v227, v189);
    (*(v194 + 8))(v218, v192);
    sub_16BD9C();
    v195 = sub_5DB18();
    sub_214C(v195, v196, 1, v197);
    sub_125F78(v191, v224);
  }

  else
  {
    v226 = *(v118 + 8);
    v226(v207, v120);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v159 = *(v229 + 16);
    v160 = sub_C9C8();
    v161(v160);

    v162 = sub_16DBDC();
    v163 = sub_16E37C();

    if (os_log_type_enabled(v162, v163))
    {
      v165 = sub_8BD8();
      v166 = sub_CA30();
      v232 = v166;
      *v165 = 136315138;
      v167 = sub_16D15C();
      sub_140508(v167, v168);
      sub_1403F0();

      *(v165 + 4) = v101;
      sub_1404B0(&def_259DC, v169, v163, "Not confident about the inferred DateTime: %s");
      sub_2D64(v166);
      sub_38604();
      sub_8A2C();

      v170 = sub_140568();
      v171(v170);
      v226(v228, v120);
      (*(v222 + 8))(v227, v223);
    }

    else
    {

      v172 = sub_140568();
      v173(v172);
      v226(v110, v120);
      (*(v222 + 8))(v111, v223);
    }

    sub_13094(&a18);
    v174(v101, v221);
    sub_16BD9C();
    sub_8AB4();
    sub_214C(v175, v176, v177, v178);
  }

  sub_45924();
}

void sub_13D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v466 = v24;
  LODWORD(v465) = v25;
  v476 = v26;
  v471 = v27;
  v443 = sub_2440(&qword_1C5690, &dword_16F320);
  v28 = sub_8B38(v443);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v31);
  sub_458D8();
  sub_45590(v32);
  v473 = sub_16BD9C();
  v33 = sub_42F0(v473);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v36);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v37);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v38);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v39);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v40);
  sub_458D8();
  sub_45590(v41);
  v42 = sub_16D0CC();
  v43 = sub_12F4C(v42, &v473);
  v446 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_12FD4();
  sub_130A0(v47);
  v48 = sub_2440(&qword_1CB128, &qword_178128);
  v49 = sub_4348(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v52);
  sub_458D8();
  sub_45590(v53);
  v477 = sub_16DBEC();
  v54 = sub_42F0(v477);
  v475 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v58);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v59);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v60);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v61);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v62);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v63);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v64);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v65);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v66);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v67);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v68);
  sub_458D8();
  sub_130A0(v69);
  v70 = sub_2440(&qword_1CB110, &unk_178110);
  v71 = sub_12F4C(v70, &v483);
  v456 = v72;
  v74 = *(v73 + 64);
  __chkstk_darwin(v71);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v75);
  sub_458D8();
  v479 = v76;
  sub_CA04();
  v77 = sub_16CFBC();
  v78 = sub_12F4C(v77, &a13);
  v463 = v79;
  v81 = *(v80 + 64);
  __chkstk_darwin(v78);
  sub_12FD4();
  sub_45590(v82);
  v83 = sub_16CFCC();
  v84 = sub_12F4C(v83, &a10);
  v460 = v85;
  v87 = *(v86 + 64);
  __chkstk_darwin(v84);
  sub_12FD4();
  sub_45590(v88);
  v89 = sub_16CFEC();
  v90 = sub_12F4C(v89, &a18);
  v470 = v91;
  v93 = *(v92 + 64);
  __chkstk_darwin(v90);
  sub_12FD4();
  v478 = v94;
  sub_CA04();
  v95 = sub_16BF5C();
  v96 = sub_12F4C(v95, &v465);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v99);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v100);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v101);
  sub_458D8();
  v472 = v102;
  sub_CA04();
  v103 = sub_16C0BC();
  v104 = sub_12F4C(v103, &v472);
  v445 = v105;
  v107 = *(v106 + 64);
  __chkstk_darwin(v104);
  sub_12FD4();
  v474 = v108;
  sub_CA04();
  v109 = sub_16CFFC();
  v110 = sub_12F4C(v109, v485);
  v112 = v111;
  v114 = *(v113 + 64);
  __chkstk_darwin(v110);
  sub_12FD4();
  sub_45590(v115);
  v116 = sub_16C0EC();
  v117 = sub_12F4C(v116, &v471);
  v450 = v118;
  v120 = *(v119 + 64);
  __chkstk_darwin(v117);
  sub_4304();
  v123 = v122 - v121;
  v124 = sub_16BFFC();
  v125 = sub_4348(v124);
  v127 = *(v126 + 64);
  __chkstk_darwin(v125);
  sub_887C();
  v129 = __chkstk_darwin(v128);
  __chkstk_darwin(v129);
  sub_14057C();
  v130 = sub_16CFAC();
  v131 = sub_12F4C(v130, &a16);
  v468 = v132;
  v134 = *(v133 + 64);
  __chkstk_darwin(v131);
  sub_4304();
  v137 = v136 - v135;
  sub_16CF9C();
  v138 = v20[3];
  v139 = v20[4];
  v140 = sub_C9C8();
  sub_2D20(v140, v141);
  sub_C9F8();
  sub_16C3DC();
  v142 = v20[4];
  sub_2D20(v23, v23[3]);
  sub_C9F8();
  sub_16C3DC();
  v143 = v20[4];
  sub_2D20(v23, v23[3]);
  sub_C9F8();
  sub_16C3DC();
  sub_16C0DC();
  (*(v112 + 104))(v457, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v458);
  sub_16C08C();
  sub_16BF4C();
  v144 = sub_16D01C();
  sub_8D14(v144);
  sub_4B310();
  v145 = v137;
  v146 = sub_16D00C();
  v147 = *(v460 + 104);
  sub_140554();
  v148(v459);
  (*(v463 + 2))(v462, v466, v464);
  v149 = sub_16D10C();
  v150 = sub_16D1DC();
  sub_1401C4();
  sub_13FFD0(v151, v152);
  sub_16E14C();
  sub_16CFDC();
  sub_16CF8C();
  v463 = v149;
  v464 = v150;
  v466 = v146;
  (*(v456 + 16))(v452, v479, v455);
  v153 = *(v456 + 88);
  v154 = sub_C9F8();
  if (v155(v154) != enum case for Recommendation.confident<A>(_:))
  {
    v176 = v479;
    v177 = *(v456 + 8);
    v178 = sub_C9F8();
    v474 = v179;
    (v179)(v178);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v180 = v475;
    v181 = *(v475 + 16);
    v182 = sub_C9C8();
    v183 = v477;
    v184(v182);

    v185 = sub_16DBDC();
    v186 = sub_16E37C();

    v187 = os_log_type_enabled(v185, v186);
    v188 = v478;
    if (v187)
    {
      v456 += 8;
      v189 = sub_8BD8();
      v190 = sub_CA30();
      v482 = v190;
      *v189 = 136315138;
      v191 = sub_16D15C();
      sub_140508(v191, v192);
      sub_1403F0();

      *(v189 + 4) = v188;
      sub_1404B0(&def_259DC, v193, v186, "Not confident about the inferred DateTime: %s");
      sub_2D64(v190);
      sub_38604();
      sub_8A2C();

      sub_1402B8();
      (*(v180 + 8))(v453, v183);
      v474(v479, v455);
    }

    else
    {

      sub_1402B8();
      (*(v180 + 8))(v453, v183);
      v474(v176, v455);
    }

    sub_1401DC();
    sub_140214();
    v235();
    sub_140034();
LABEL_18:
    sub_1402AC();
    v245();
    goto LABEL_19;
  }

  v457 = v123;
  v156 = *(v456 + 96);
  v157 = sub_C9F8();
  v158(v157);
  v159 = *v452;
  v160 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v161 = v475;
  v162 = *(v475 + 16);
  v460 = v160;
  v462 = v475 + 16;
  v461 = v162;
  v162(v451, v160, v477);

  v163 = sub_16DBDC();
  sub_16E36C();
  sub_140608();
  v164 = sub_1404F0();
  v165 = v478;
  v465 = v159;
  v166 = v479;
  if (v164)
  {
    sub_8BD8();
    v167 = sub_4B33C();
    v482 = v167;
    *v145 = 136315138;
    v481 = v159;
    sub_140078();
    sub_13FFD0(v168, v169);
    v170 = sub_16E68C();
    v172 = sub_140508(v170, v171);

    *(v145 + 4) = v172;
    v159 = v465;
    sub_1401A4(&def_259DC, v173, v174, "Initial Recommendation: %s");
    sub_2D64(v167);
    v165 = v478;
    sub_8A2C();
    v166 = v479;
    sub_8A2C();
  }

  v175 = *(v161 + 8);
  v175(v451, v477);
  v194 = v450;
  v195 = sub_16D1AC();
  if (!v195)
  {
    sub_1400A8();
    sub_140338(&v476);
    v236 = v477;
    sub_14004C();
    v237();
    v238 = sub_16DBDC();
    v239 = sub_16E37C();
    if (sub_387B0(v239))
    {
      v240 = sub_1BA38();
      sub_1BA50(v240);
      sub_4593C(&def_259DC, v241, v242, "there was no date in resultDateTime, returning nil");
      sub_8A2C();
    }

    sub_1402B8();
    v175(v450, v236);
    sub_13094(&v484);
    v243(v166, v455);
    sub_1401DC();
    sub_140214();
    v244();
    sub_13094(&a17);
    goto LABEL_18;
  }

  v458 = v195;
  v459 = v175;
  if (!sub_16D16C())
  {
    sub_8AB4();
    sub_214C(v250, v251, v252, v463);
    goto LABEL_23;
  }

  sub_1403FC(&v481);
  sub_16D11C();

  v196 = sub_C98CC();
  sub_8B20(v196, v197, v463);
  if (v198)
  {
LABEL_23:
    sub_1400A8();
    sub_140338(&v478);
    sub_14004C();
    v253();
    sub_1402D0(&a14);

    v254 = sub_16DBDC();
    sub_16E36C();
    sub_140608();
    if (sub_1404F0())
    {
      v255 = sub_8BD8();
      v256 = swift_slowAlloc();
      *v255 = 138412290;
      v257.super.isa = sub_16D19C().super.isa;
      *(v255 + 4) = v257;
      v256->super.isa = v257.super.isa;
      sub_1401A4(&def_259DC, v258, v259, "Recommended INDateComponentsRange: %@");
      sub_8748(v256, &qword_1C57B8, &qword_1715A0);
      v165 = v478;
      sub_8A2C();
      sub_38604();
    }

    v260 = v477;
    v459(v194, v477);
    sub_385D8();
    swift_beginAccess();
    sub_140338(&v480);
    sub_14004C();
    v261();

    v262 = sub_16DBDC();
    v263 = sub_16E36C();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = sub_8BD8();
      v265 = sub_CA30();
      v480 = v265;
      *v264 = 136315138;
      isa = sub_16D19C().super.isa;
      v267 = [(objc_class *)isa dateInterval];

      if (v267)
      {
        v268 = v442;
        sub_16BD3C();

        v269 = 0;
        v270 = v473;
      }

      else
      {
        v269 = 1;
        v270 = v473;
        v268 = v442;
      }

      sub_214C(v268, v269, 1, v270);
      v309 = sub_16E3DC();
      v310 = v268;
      v312 = v311;
      sub_8748(v310, &qword_1C5690, &dword_16F320);
      v313 = sub_3AB7C(v309, v312, &v480);

      *(v264 + 4) = v313;
      sub_1404B0(&def_259DC, v314, v263, "Recommended dateInterval: %s");
      sub_2D64(v265);
      sub_38604();
      sub_8A2C();

      v459(v448, v477);
      v165 = v478;
    }

    else
    {

      v459(v194, v260);
      v270 = v473;
    }

    v315 = sub_16D19C().super.isa;
    v316 = [(objc_class *)v315 dateInterval];

    v317 = v469;
    v318 = v467;
    if (v316)
    {
      v319 = v447;
      sub_16BD3C();

      v320 = 0;
      v321 = v470;
    }

    else
    {

      v320 = 1;
      v321 = v470;
      v319 = v447;
    }

    sub_140638();
    sub_1402B8();
    (*(v456 + 8))(v479, v455);
    (*(v321 + 8))(v165, v317);
    v322 = sub_140034();
    v323(v322, v318);
    sub_214C(v319, v320, 1, v270);
    sub_125F78(v319, v471);
    goto LABEL_50;
  }

  sub_74678(v159, v441, &qword_1CB128, &qword_178128);
  v199 = *(v463 - 1);
  v200 = *(v199 + 88);
  v201 = sub_1402DC();
  v203 = v202(v201);
  if (v203 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.afternoon(_:))
  {
    v204 = *(v446 + 104);
    (v204)(v444, enum case for DateTime.Time.Meridiem.pm(_:));
    v205 = sub_16D0FC();
    sub_8D14(v205);
    sub_1402D0(v485);

    sub_16D0EC();
    sub_140154();
    sub_8427C();
    sub_16D04C();
    sub_140220();
    sub_140424();
    sub_16D18C();
    sub_1403F0();

    v206 = sub_140124(v450);
    v450(v206);
    v207 = *(v445 + 8);
    v208 = sub_1400F4();
    v207(v208);
    v209 = [v165 startDate];

    if (v209)
    {
      v463 = v204;
      sub_16BF3C();

      sub_140174();
      sub_140328();
      v210();
      sub_14024C(&v464);
      sub_16BD6C();
      sub_385D8();
      swift_beginAccess();
      sub_14004C();
      v211();
      sub_140308();
      v212(v436, v209, v473);

      v213 = sub_16DBDC();
      v214 = sub_16E36C();

      v476 = v213;
      v215 = sub_5DB18();
      if (os_log_type_enabled(v215, v216))
      {
        sub_CA60();
        v481 = sub_140494();
        *v439 = 136315394;
        LODWORD(v472) = v214;
        v217 = sub_1400D0();
        v463(v217);
        sub_14045C();

        sub_16D0EC();
        sub_140154();
        sub_16D04C();
        sub_140220();
        sub_140408();
        v218 = sub_16D18C();

        v219 = sub_14018C();
        v450(v219);
        v220 = sub_1400F4();
        v207(v220);
        v221 = [v218 description];
        sub_16E1BC();

        sub_140440();
        sub_4B310();

        sub_1402F8();
        sub_140090();
        sub_13FFD0(v222, v223);
        v224 = v473;
        v225 = sub_16E68C();
        sub_140140();
        v226(v436, v224);
        v227 = sub_1402DC();
        sub_3AB7C(v227, v228, v229);
        sub_140534();

        *(v439 + 14) = v225;
        v230 = v476;
        _os_log_impl(&def_259DC, v476, v472, "Got a defined value of afternoon, got a new start date (%s) with new Recommendation: %s", v439, 0x16u);
        sub_140478();
        sub_8A2C();
        sub_89F4();
        sub_140368();

        sub_1402B8();
        sub_1402A0();
        sub_140114();
        v231();
        sub_140104();
        v232 = sub_1402E8();
      }

      else
      {
        sub_140368();

        sub_1402B8();
        sub_140140();
        v224 = v473;
        v379(v436, v473);
        sub_1402A0();
        sub_140114();
        v380();
        sub_140104();
        v232 = v439;
        v233 = v439;
      }

      v234(v232, v233);
      v381 = sub_140018();
      v382(v381);
      v383 = sub_140060();
      v384(v383);
      sub_140034();
      sub_1402AC();
      v385();
      v386 = sub_140348();
      v387(v386, v440, v224);
      sub_388E4();
      v378 = v224;
      goto LABEL_49;
    }

    sub_1400A8();
    sub_1403C0();
    v362 = v477;
    sub_14004C();
    v363();
    v364 = sub_16DBDC();
    v365 = sub_16E37C();
    sub_387B0(v365);
    sub_140358();
    if (v366)
    {
      v367 = sub_1BA38();
      sub_1BA50(v367);
      sub_4593C(&def_259DC, v368, v369, "couldn't create modifiedStartDate, returning nil");
      sub_8A2C();
    }

    sub_140368();
    sub_140638();

    sub_1402B8();
    v459(v434, v362);
LABEL_46:
    v370 = sub_140018();
    v371(v370);
    sub_1401DC();
    sub_140214();
    v372();
    v373 = sub_1403D8();
    v374(v373);
    sub_8AB4();
    v378 = v473;
LABEL_49:
    sub_214C(v375, v376, v377, v378);
LABEL_50:
    sub_8748(v449, &qword_1CB128, &qword_178128);
    goto LABEL_21;
  }

  v194 = v444;
  if (v203 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.evening(_:))
  {
    if (v203 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.morning(_:))
    {
      v324 = sub_14027C();
      v325(v324);
      v326 = sub_16D0FC();
      sub_8D14(v326);
      sub_1405A8();
      sub_16D0EC();
      sub_140154();
      sub_1403CC();
      sub_16D04C();
      sub_140220();
      sub_140424();
      sub_16D18C();
      sub_1403F0();

      v327 = sub_140124(v450);
      v444(v327);
      v328 = *(v445 + 8);
      v329 = sub_1400F4();
      v328(v329);
      v330 = [v165 startDate];

      if (v330)
      {
        sub_140540();
        sub_1403FC(&v454);
        sub_16BF3C();

        sub_140174();
        sub_140328();
        v331();
        sub_14024C(&v455);
        sub_16BD6C();
        sub_1402D0(&a9);
        sub_385D8();
        swift_beginAccess();
        sub_38B40();
        sub_14004C();
        v332();
        sub_140308();
        v333 = sub_8427C();
        v334(v333);

        v335 = sub_16DBDC();
        v336 = sub_16E36C();

        v472 = v335;
        v337 = sub_5DB18();
        if (os_log_type_enabled(v337, v338))
        {
          sub_CA60();
          v481 = sub_140494();
          *v165 = 136315394;
          LODWORD(v463) = v336;
          v339 = sub_1400D0();
          (v476)(v339);
          sub_14045C();
          sub_1403CC();

          sub_16D0EC();
          sub_140154();
          sub_1405C8();
          sub_140220();
          sub_140408();
          v340 = sub_16D18C();

          v341 = sub_14018C();
          v444(v341);
          v342 = sub_1400F4();
          v328(v342);
          v343 = [v340 description];
          sub_16E1BC();

          sub_140440();
          sub_4B310();

          sub_1402F8();
          sub_140090();
          sub_13FFD0(v344, v345);
          sub_1405E8();
          v346 = sub_140258();
          v347(v346);
          v348 = sub_1402DC();
          sub_3AB7C(v348, v349, v350);
          sub_140534();

          *(v165 + 14) = v343;
          sub_140380(&def_259DC, v351, v352, "Got a defined value of morning, got a new start date (%s) with new Recommendation: %s");
          sub_140478();
          sub_8A2C();
          sub_89F4();
          sub_140368();

          sub_1402B8();
          sub_1402A0();
          sub_140114();
          v353();
          sub_140104();
          v354 = sub_1402E8();
          v355(v354);
          v356 = sub_140018();
          v357(v356);
          v358 = sub_140060();
          v359(v358);
          sub_140034();
          sub_1402AC();
          v360();
          v361 = v336;
        }

        else
        {
          sub_140368();

          sub_1402B8();
          sub_140140();
          v361 = v473;
          v419(v430, v473);
          sub_1402A0();
          sub_140114();
          v420();
          sub_140104();
          v421(v432, v165);
          v422 = sub_140018();
          v423(v422);
          v424 = sub_140060();
          v425(v424);
          sub_140034();
          sub_1402AC();
          v426();
        }

        v427 = sub_140348();
        v428(v427, v433, v361);
        sub_388E4();
        v378 = v361;
        goto LABEL_49;
      }

      sub_1400A8();
      sub_1403C0();
      v411 = v477;
      sub_14004C();
      v412();
      v413 = sub_16DBDC();
      v414 = sub_16E37C();
      sub_387B0(v414);
      sub_140358();
      if (v415)
      {
        v416 = sub_1BA38();
        sub_1BA50(v416);
        sub_4593C(&def_259DC, v417, v418, "couldn't create modifiedStartDate, returning nil");
        sub_8A2C();
      }

      sub_140368();
      sub_140638();

      sub_1402B8();
      sub_1402A0();
      v459(v429, v411);
      goto LABEL_46;
    }

    if (v203 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.night(_:))
    {
      (*(v199 + 8))(v441, v463);
      goto LABEL_23;
    }
  }

  sub_8748(v159, &qword_1CB128, &qword_178128);
  v271 = sub_14027C();
  v272(v271);
  v273 = sub_16D0FC();
  sub_8D14(v273);
  sub_1405A8();
  sub_16D0EC();
  sub_140154();
  sub_1403CC();
  sub_16D04C();
  sub_140220();
  sub_140424();
  sub_16D18C();
  sub_1403F0();

  v274 = sub_140124(v450);
  v444(v274);
  v275 = *(v445 + 8);
  v276 = sub_1400F4();
  v275(v276);
  v277 = [v165 startDate];

  if (v277)
  {
    sub_140540();
    sub_1403FC(&v460);
    sub_16BF3C();

    sub_140174();
    sub_140328();
    v278();
    sub_14024C(&v461);
    sub_16BD6C();
    sub_1402D0(&a9);
    sub_385D8();
    swift_beginAccess();
    sub_38B40();
    sub_14004C();
    v279();
    sub_140308();
    v280 = sub_8427C();
    v281(v280);

    v282 = sub_16DBDC();
    v283 = sub_16E36C();

    v472 = v282;
    v284 = sub_5DB18();
    if (os_log_type_enabled(v284, v285))
    {
      sub_CA60();
      v481 = sub_140494();
      *v165 = 136315394;
      LODWORD(v463) = v283;
      v286 = sub_1400D0();
      (v476)(v286);
      sub_14045C();
      sub_1403CC();

      sub_16D0EC();
      sub_140154();
      sub_1405C8();
      sub_140220();
      sub_140408();
      v287 = sub_16D18C();

      v288 = sub_14018C();
      v444(v288);
      v289 = sub_1400F4();
      v275(v289);
      v290 = [v287 description];
      sub_16E1BC();

      sub_140440();
      sub_4B310();

      sub_1402F8();
      sub_140090();
      sub_13FFD0(v291, v292);
      sub_1405E8();
      v293 = sub_140258();
      v294(v293);
      v295 = sub_1402DC();
      sub_3AB7C(v295, v296, v297);
      sub_140534();

      *(v165 + 14) = v290;
      sub_140380(&def_259DC, v298, v299, "Got a defined value of evening/night, got a new start date (%s) with new Recommendation: %s");
      sub_140478();
      sub_8A2C();
      sub_89F4();
      sub_140368();

      sub_1402B8();
      sub_1402A0();
      sub_140114();
      v300();
      sub_140104();
      v301 = sub_1402E8();
      v302(v301);
      v303 = sub_140018();
      v304(v303);
      v305 = sub_140060();
      v306(v305);
      sub_140034();
      sub_1402AC();
      v307();
      v308 = v283;
    }

    else
    {
      sub_140368();

      sub_1402B8();
      sub_140140();
      v308 = v473;
      v401(v435, v473);
      sub_1402A0();
      sub_140114();
      v402();
      sub_140104();
      v403(v437, v165);
      v404 = sub_140018();
      v405(v404);
      v406 = sub_140060();
      v407(v406);
      sub_140034();
      sub_1402AC();
      v408();
    }

    v409 = sub_140348();
    v410(v409, v438, v308);
    sub_388E4();
    v249 = v308;
    goto LABEL_20;
  }

  sub_1400A8();
  sub_1403C0();
  v388 = v477;
  sub_14004C();
  v389();
  v390 = sub_16DBDC();
  v391 = sub_16E37C();
  sub_387B0(v391);
  sub_140358();
  if (v392)
  {
    v393 = sub_1BA38();
    sub_1BA50(v393);
    sub_4593C(&def_259DC, v394, v395, "couldn't create modifiedStartDate, returning nil");
    sub_8A2C();
  }

  sub_140368();
  sub_140638();

  sub_1402B8();
  sub_1402A0();
  v459(v431, v388);
  v396 = sub_140018();
  v397(v396);
  sub_1401DC();
  sub_140214();
  v398();
  v399 = sub_1403D8();
  v400(v399);
LABEL_19:
  sub_8AB4();
  v249 = v473;
LABEL_20:
  sub_214C(v246, v247, v248, v249);
LABEL_21:
  sub_45924();
}

uint64_t sub_13F864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  v2 = sub_16DBEC();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  v4 = __chkstk_darwin(v2);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v60 - v6;
  v65 = sub_16C09C();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v65);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_16C0BC();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v60 - v17;
  v19 = sub_16BF5C();
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  v21 = __chkstk_darwin(v19);
  v61 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v60 = &v60 - v26;
  v27 = sub_2440(&qword_1C5690, &dword_16F320);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v60 - v29;
  v31 = sub_16BD9C();
  v70 = *(v31 - 8);
  v32 = *(v70 + 64);
  __chkstk_darwin(v31);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v35;
  sub_74678(v71, v30, &qword_1C5690, &dword_16F320);
  if (sub_369C(v30, 1, v36) == 1)
  {
    sub_8748(v30, &qword_1C5690, &dword_16F320);
    v37 = sub_16DBBC();
    swift_beginAccess();
    v39 = v68;
    v38 = v69;
    v40 = v66;
    (*(v68 + 16))(v66, v37, v69);
    v41 = sub_16DBDC();
    v42 = sub_16E37C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&def_259DC, v41, v42, "nil interval passed into getFirstMinuteOfInterval, returning nil", v43, 2u);
    }

    (*(v39 + 8))(v40, v38);
    v44 = 1;
    v45 = v72;
  }

  else
  {
    (*(v70 + 32))(v34, v30, v36);
    sub_16C08C();
    v46 = v65;
    (*(v7 + 104))(v10, enum case for Calendar.Component.second(_:), v65);
    v71 = v36;
    sub_16BD7C();
    sub_16C06C();
    v47 = *(v67 + 8);
    v47(v25, v19);
    (*(v7 + 8))(v10, v46);
    (*(v63 + 8))(v14, v64);
    if (sub_369C(v18, 1, v19) == 1)
    {
      v49 = v70;
      v48 = v71;
      sub_8748(v18, &qword_1C57E0, &unk_171C60);
      v50 = sub_16DBBC();
      swift_beginAccess();
      v52 = v68;
      v51 = v69;
      v53 = v62;
      (*(v68 + 16))(v62, v50, v69);
      v54 = sub_16DBDC();
      v55 = sub_16E37C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&def_259DC, v54, v55, "couldn't create newEnd in getFirstMinuteOfInterval, returning nil", v56, 2u);
      }

      (*(v52 + 8))(v53, v51);
      v36 = v48;
      (*(v49 + 8))(v34, v48);
      v44 = 1;
      v45 = v72;
    }

    else
    {
      v57 = v67;
      v58 = v60;
      (*(v67 + 32))(v60, v18, v19);
      sub_16BD7C();
      (*(v57 + 16))(v61, v58, v19);
      v45 = v72;
      sub_16BD5C();
      v47(v58, v19);
      v36 = v71;
      (*(v70 + 8))(v34, v71);
      v44 = 0;
    }
  }

  return sub_214C(v45, v44, 1, v36);
}

uint64_t sub_13FFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_140018()
{
  v1 = *(*(v0 - 368) + 8);
  result = *(v0 - 184);
  v3 = *(v0 - 376);
  return result;
}

uint64_t sub_140060()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_1400A8()
{
  v2 = *(v0 - 336);

  return swift_beginAccess();
}

uint64_t sub_1400D0()
{
  result = *(v0 - 480);
  v2 = *(v0 - 488);
  v3 = *(v0 - 456);
  return result;
}

uint64_t sub_1400F4()
{
  result = v0;
  v3 = *(v1 - 496);
  return result;
}

uint64_t sub_140124@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  result = v1;
  v5 = *(v2 - 504);
  *(v2 - 416) = a1 + 8;
  return result;
}

uint64_t sub_140154()
{
  v2 = *(v0 - 304);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);

  return swift_allocObject();
}

uint64_t sub_14018C()
{
  result = v0;
  v3 = *(v1 - 504);
  v4 = *(v1 - 416);
  return result;
}

void sub_1401A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1401E8()
{
  v1 = *(*(v0 - 272) + 104);
  result = *(v0 - 280);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_140220()
{
  v2 = *(v0 - 224);

  return sub_16C08C();
}

uint64_t sub_14023C()
{
  result = *(v0 - 168);
  v2 = *(v0 - 176) + 8;
  return result;
}

uint64_t sub_14027C()
{
  result = v0;
  v3 = *(v1 - 488);
  *(v1 - 208) = *(*(v1 - 456) + 104);
  return result;
}

uint64_t sub_1402B8()
{
  v2 = *(v0 - 288);
}

uint64_t sub_1402E8()
{
  result = *(v0 - 256);
  v3 = *(v1 - 552);
  return result;
}

uint64_t sub_140368()
{
  v2 = *(v0 - 296);
}

void sub_140380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 240);
  v8 = *(v5 - 312);

  _os_log_impl(a1, v7, v8, a4, v4, 0x16u);
}

uint64_t sub_1403A8@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v4 = *(v1 - 200);
  v3 = *(v1 - 192);
  return result;
}

uint64_t sub_1403D8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 680);
  v4 = *(v1 - 280);
  return result;
}

uint64_t sub_140408()
{
  v2 = *(v0 - 360);

  return sub_16C0DC();
}

uint64_t sub_140424()
{
  v2 = *(v0 - 360);

  return sub_16C0DC();
}

uint64_t sub_140440()
{

  return sub_3AB7C(v0, v1, (v2 - 168));
}

uint64_t sub_14045C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_140478()
{

  return swift_arrayDestroy();
}

uint64_t sub_140494()
{

  return swift_slowAlloc();
}

void sub_1404B0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_1404CC(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = *(a7 - 256);
  v24 = *(v21 - 240);

  sub_13D344(v19, a1, v20, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

BOOL sub_1404F0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_140508(uint64_t a1, unint64_t a2)
{

  return sub_3AB7C(a1, a2, (v2 - 144));
}

uint64_t sub_140520()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

void sub_140554()
{
  if ((*(v2 - 256) & 1) == 0)
  {
    v0 = v1;
  }

  v3 = *v0;
}

uint64_t sub_140568()
{
  v2 = *(v0 + 8);
  result = *(v1 - 408);
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_1405A8()
{
  v2 = *(v0 - 352);
}

uint64_t sub_1405C8()
{

  return sub_16D04C();
}

uint64_t sub_1405E8()
{
  v2 = *(v0 - 232);

  return sub_16E68C();
}

uint64_t sub_140608()
{
}

uint64_t sub_140620(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

uint64_t sub_140638()
{
  v2 = *(v0 - 352);
}

void sub_140650(__int16 a1)
{
  switch(a1)
  {
    case 7:
    case 13:
    case 16:
    case 19:
    case 20:
    case 23:
    case 24:
    case 31:
    case 32:
    case 36:
    case 45:
    case 48:
    case 49:
    case 52:
    case 58:
    case 59:
    case 63:
    case 68:
    case 69:
    case 78:
    case 82:
    case 88:
    case 92:
    case 93:
    case 94:
    case 95:
    case 100:
    case 103:
    case 109:
    case 123:
    case 125:
    case 127:
    case 129:
    case 130:
    case 139:
    case 141:
    case 147:
    case 148:
    case 156:
    case 157:
    case 160:
    case 161:
    case 169:
    case 181:
    case 184:
    case 201:
    case 204:
    case 205:
    case 216:
    case 217:
    case 218:
    case 221:
    case 224:
    case 228:
    case 232:
    case 233:
    case 236:
    case 246:
    case 259:
    case 262:
      sub_39A14();
      break;
    case 97:
    case 162:
      sub_143FEC();
      break;
    case 207:
    case 210:
    case 211:
    case 212:
    case 213:
      sub_143FD0();
      break;
    default:
      return;
  }
}

uint64_t sub_142388(uint64_t a1, void *a2)
{
  sub_2440(&qword_1C6558, qword_178150);
  v3 = swift_allocObject();
  v4 = sub_61090(v3, 270);
  *v5 = "abdominal_cramps";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  *(v5 + 24) = "acne";
  *(v5 + 32) = 4;
  *(v5 + 40) = 2;
  *(v5 + 48) = "afib_history";
  *(v5 + 56) = 12;
  *(v5 + 64) = 2;
  *(v5 + 72) = "alcohol_log";
  *(v5 + 80) = 11;
  *(v5 + 88) = 2;
  *(v5 + 96) = "allergies";
  *(v5 + 104) = 9;
  *(v5 + 112) = 2;
  *(v5 + 120) = "anxiety_risk";
  *(v5 + 128) = 12;
  *(v5 + 136) = 2;
  *(v5 + 144) = "appetite_changes";
  *(v5 + 152) = 16;
  *(v5 + 160) = 2;
  *(v5 + 168) = "atrial_fibrillation";
  *(v5 + 176) = 19;
  *(v5 + 184) = 2;
  *(v5 + 192) = "audio_exposure";
  *(v5 + 200) = 14;
  *(v5 + 208) = 2;
  *(v5 + 216) = "audiogram";
  *(v5 + 224) = 9;
  *(v5 + 232) = 2;
  *(v5 + 240) = "beryllium";
  *(v5 + 248) = 9;
  *(v5 + 256) = 2;
  *(v5 + 264) = "biological_sex";
  *(v5 + 272) = 14;
  *(v5 + 280) = 2;
  *(v5 + 288) = "biotin";
  *(v5 + 296) = 6;
  *(v5 + 304) = 2;
  *(v5 + 312) = "bladder_incontinence";
  *(v5 + 320) = 20;
  *(v5 + 328) = 2;
  *(v5 + 336) = "bloating";
  *(v5 + 344) = 8;
  *(v5 + 352) = 2;
  *(v5 + 360) = "blood_alcohol_content";
  *(v5 + 368) = 21;
  *(v5 + 376) = 2;
  *(v5 + 384) = "blood_cholesterol";
  *(v5 + 392) = 17;
  *(v5 + 400) = 2;
  *(v5 + 408) = "blood_glucose";
  *(v5 + 416) = 13;
  *(v5 + 424) = 2;
  *(v5 + 432) = "blood_pressure";
  *(v5 + 440) = 14;
  *(v5 + 448) = 2;
  *(v5 + 456) = "blood_pressure_diastolic";
  *(v5 + 464) = 24;
  *(v5 + 472) = 2;
  *(v5 + 480) = "blood_pressure_systolic";
  *(v5 + 488) = 23;
  *(v5 + 496) = 2;
  *(v5 + 504) = "blood_type";
  *(v5 + 512) = 10;
  *(v5 + 520) = 2;
  *(v5 + 528) = "blurred_vision";
  *(v5 + 536) = 14;
  *(v5 + 544) = 2;
  *(v5 + 552) = "body_and_muscle_ache";
  *(v5 + 560) = 20;
  *(v5 + 568) = 2;
  *(v5 + 576) = "body_fat_percentage";
  *(v5 + 584) = 19;
  *(v5 + 592) = 2;
  *(v5 + 600) = "breast_general";
  *(v5 + 608) = 14;
  *(v5 + 616) = 2;
  *(v5 + 624) = "breast_pain";
  *(v5 + 632) = 11;
  *(v5 + 640) = 2;
  *(v5 + 648) = "caffeine";
  *(v5 + 656) = 8;
  *(v5 + 664) = 2;
  *(v5 + 672) = "calcium";
  *(v5 + 680) = 7;
  *(v5 + 688) = 2;
  *(v5 + 696) = "carbohydrates";
  *(v5 + 704) = 13;
  *(v5 + 712) = 2;
  *(v5 + 720) = "cardio_fitness";
  *(v5 + 728) = 14;
  *(v5 + 736) = 2;
  *(v5 + 744) = "cervical_mucus_quality";
  *(v5 + 752) = 22;
  *(v5 + 760) = 2;
  *(v5 + 768) = "chest_tightness_or_pain";
  *(v5 + 776) = 23;
  *(v5 + 784) = 2;
  *(v5 + 792) = "chills";
  *(v5 + 800) = 6;
  *(v5 + 808) = 2;
  *(v5 + 816) = "chloride";
  *(v5 + 824) = 8;
  *(v5 + 832) = 2;
  *(v5 + 840) = "chromium";
  *(v5 + 848) = 8;
  *(v5 + 856) = 2;
  *(v5 + 864) = "clinical_documents";
  *(v5 + 872) = 18;
  *(v5 + 880) = 2;
  *(v5 + 888) = "clinical_vitals";
  *(v5 + 896) = 15;
  *(v5 + 904) = 2;
  *(v5 + 912) = "condition_record";
  *(v5 + 920) = 16;
  *(v5 + 928) = 2;
  *(v5 + 936) = "congestion";
  *(v5 + 944) = 10;
  *(v5 + 952) = 2;
  *(v5 + 960) = "constipation";
  *(v5 + 968) = 12;
  *(v5 + 976) = 2;
  *(v5 + 984) = "contraceptives";
  *(v5 + 992) = 14;
  *(v5 + 1000) = 2;
  *(v5 + 1008) = "copper";
  *(v5 + 1016) = 6;
  *(v5 + 1024) = 2;
  *(v5 + 1032) = "coughing";
  *(v5 + 1040) = 8;
  *(v5 + 1048) = 2;
  *(v5 + 1056) = "cycling_cadence";
  *(v5 + 1064) = 15;
  *(v5 + 1072) = 2;
  *(v5 + 1080) = "cycling_functional_threshold_power";
  *(v5 + 1088) = 34;
  *(v5 + 1096) = 2;
  *(v5 + 1104) = "cycling_pace";
  *(v5 + 1112) = 12;
  *(v5 + 1120) = 2;
  *(v5 + 1128) = "depression_risk";
  *(v5 + 1136) = 15;
  *(v5 + 1144) = 2;
  *(v5 + 1152) = "diagnostic_test_report";
  *(v5 + 1160) = 22;
  *(v5 + 1168) = 2;
  *(v5 + 1176) = "diagnostic_test_result";
  *(v5 + 1184) = 22;
  *(v5 + 1192) = 2;
  *(v5 + 1200) = "diarrhea";
  *(v5 + 1208) = 8;
  *(v5 + 1216) = 2;
  *(v5 + 1224) = "dietary_calories";
  *(v5 + 1232) = 16;
  *(v5 + 1240) = 2;
  *(v5 + 1248) = "dietary_cholesterol";
  *(v5 + 1256) = 19;
  *(v5 + 1264) = 2;
  *(v5 + 1272) = "dietary_energy";
  *(v5 + 1280) = 14;
  *(v5 + 1288) = 2;
  *(v5 + 1296) = "dietary_sugar";
  *(v5 + 1304) = 13;
  *(v5 + 1312) = 2;
  *(v5 + 1320) = "dizziness";
  *(v5 + 1328) = 9;
  *(v5 + 1336) = 2;
  *(v5 + 1344) = "double_support";
  *(v5 + 1352) = 14;
  *(v5 + 1360) = 2;
  *(v5 + 1368) = "dry_skin";
  *(v5 + 1376) = 8;
  *(v5 + 1384) = 2;
  *(v5 + 1392) = "electrocardiogram";
  *(v5 + 1400) = 17;
  *(v5 + 1408) = 2;
  *(v5 + 1416) = "electrodermal_activity";
  *(v5 + 1424) = 22;
  *(v5 + 1432) = 2;
  *(v5 + 1440) = "elevation";
  *(v5 + 1448) = 9;
  *(v5 + 1456) = 2;
  *(v5 + 1464) = "elevation_gain";
  *(v5 + 1472) = 14;
  *(v5 + 1480) = 2;
  *(v5 + 1488) = "energy_consumed";
  *(v5 + 1496) = 15;
  *(v5 + 1504) = 2;
  *(v5 + 1512) = "environment_noise";
  *(v5 + 1520) = 17;
  *(v5 + 1528) = 2;
  *(v5 + 1536) = "environmental_sound_reduction";
  *(v5 + 1544) = 29;
  *(v5 + 1552) = 2;
  *(v5 + 1560) = "eye_prescription";
  *(v5 + 1584) = "fainting";
  *(v5 + 1608) = "fat";
  *(v5 + 1632) = "fat_monounsaturated";
  *(v5 + 1656) = "fat_polyunsaturated";
  *(v5 + 1680) = "fat_saturated";
  *(v5 + 1704) = "fatigue";
  *(v5 + 1728) = "fertile_window";
  *(v5 + 1752) = "fever";
  *(v5 + 1776) = "fiber";
  *(v5 + 1800) = "fitzpatrick_skin_type";
  *(v5 + 1824) = "flights_climbed";
  *(v5 + 1848) = "folate";
  *(v5 + 1872) = "forced_expiratory_volume";
  *(v5 + 1896) = "forced_vital_capacity";
  *(v5 + 1920) = "general_symptom";
  *(v5 + 1944) = "genomes";
  *(v5 + 1968) = "ground_contact_time";
  *(v5 + 1992) = "hair";
  *(v5 + 2256) = "heartbeat_rapid_pounding_or_fluttering";
  *(v5 + 2424) = "immunizations";
  *(v5 + 2520) = "insulin_delivery";
  *(v5 + 2616) = "irregular_heart_beat";
  *(v5 + 2712) = "lean_body_mass";
  *(v5 + 2808) = "lower_back_pain";
  *(v5 + 2904) = "medication_dose_event";
  *(v5 + 2952) = "medications_that_affect_heart_rate";
  *(v5 + 2976) = "memory_lapse";
  *(v5 + 3048) = "menstrual_period_length";
  *(v5 + 3072) = "menstruation";
  *(v5 + 3096) = "menstruation_prediction";
  *(v5 + 3120) = "menstruation_product";
  *(v5 + 3144) = "menstruation_symptoms";
  *(v5 + 3168) = "mindful";
  *(v5 + 3192) = "molybdenum";
  *(v5 + 3216) = "mood_change";
  *(v5 + 3240) = "nausea";
  *(v5 + 3264) = "niacin";
  *(v5 + 3288) = "night_sweats";
  *(v5 + 3312) = "nikeFuel";
  *(v5 + 3336) = "number_of_times_fallen";
  *(v5 + 3360) = "ovulation";
  *(v5 + 3384) = "ovulation_estimate";
  *(v5 + 3408) = "ovulation_test_result";
  *(v5 + 3432) = "pantothenic_acid";
  *(v5 + 3456) = "peak_expiratory_flow_rate";
  *(v5 + 3464) = 25;
  *(v5 + 3480) = "pelvic_pain";
  *(v5 + 3504) = "peripheral_perfusion_index";
  *(v5 + 3576) = "phosphorus";
  *(v5 + 3672) = "pregnancy_factor";
  *(v5 + 3768) = "prologned_periods";
  *(v5 + 3864) = "resting_heart_rate";
  *(v5 + 3960) = "running_stride_length";
  *(v5 + 4056) = "shortness_of_breath";
  *(v5 + 4416) = "sleep_stage_light";
  *(v5 + 4400) = 16;
  *(v5 + 4408) = 2;
  *(v5 + 4368) = "sleep_stage_core";
  *(v5 + 4376) = 16;
  *(v5 + 4384) = 2;
  *(v5 + 4392) = "sleep_stage_deep";
  *(v5 + 4336) = 2;
  *(v5 + 4344) = "sleep_stage_awake";
  *(v5 + 4352) = 17;
  *(v5 + 4360) = 2;
  *(v5 + 4304) = 14;
  *(v5 + 4312) = 2;
  *(v5 + 4320) = "sleep_score";
  *(v5 + 4328) = 11;
  *(v5 + 4296) = "sleep_schedule";
  *(v5 + 4280) = 13;
  *(v5 + 4288) = 2;
  *(v5 + 4088) = 27;
  *(v5 + 4256) = 9;
  *(v5 + 4264) = 2;
  *(v5 + 4272) = "sleep_quality";
  *(v5 + 4224) = "sleep_changes";
  *(v5 + 4232) = 13;
  *(v5 + 4240) = 2;
  *(v5 + 4248) = "sleep_end";
  *(v5 + 4208) = 11;
  *(v5 + 4216) = 2;
  *(v5 + 4176) = "sleep";
  *(v5 + 4184) = 5;
  *(v5 + 4192) = 2;
  *(v5 + 4200) = "sleep_apnea";
  *(v5 + 4152) = "skin";
  *(v5 + 4160) = 4;
  *(v5 + 4168) = 2;
  *(v5 + 4128) = "sit";
  *(v5 + 4120) = 2;
  *(v5 + 4136) = 3;
  *(v5 + 4144) = 2;
  *(v5 + 1568) = 16;
  *(v5 + 4104) = "sinus_congestion";
  *(v5 + 4096) = 2;
  *(v5 + 4112) = 16;
  *(v5 + 1576) = 2;
  *(v5 + 4080) = "signed_clinical_data_record";
  *(v5 + 4064) = 19;
  *(v5 + 4072) = 2;
  *(v5 + 4032) = "sexual_activity";
  *(v5 + 4024) = 2;
  *(v5 + 4040) = 15;
  *(v5 + 4048) = 2;
  *(v5 + 4008) = "selenium";
  *(v5 + 3992) = 10;
  *(v5 + 4000) = 2;
  *(v5 + 4016) = 8;
  *(v5 + 1592) = 8;
  *(v5 + 3984) = "runny_nose";
  *(v5 + 3968) = 21;
  *(v5 + 3976) = 2;
  *(v5 + 3936) = "running_power";
  *(v5 + 3928) = 2;
  *(v5 + 3944) = 13;
  *(v5 + 3952) = 2;
  *(v5 + 3912) = "running_pace";
  *(v5 + 3896) = 10;
  *(v5 + 3904) = 2;
  *(v5 + 3920) = 12;
  *(v5 + 1600) = 2;
  *(v5 + 3888) = "riboflavin";
  *(v5 + 3872) = 18;
  *(v5 + 3880) = 2;
  *(v5 + 3840) = "resting_energy_level";
  *(v5 + 3832) = 2;
  *(v5 + 3848) = 20;
  *(v5 + 3856) = 2;
  *(v5 + 3816) = "respiratory_rate";
  *(v5 + 3800) = 7;
  *(v5 + 3808) = 2;
  *(v5 + 3824) = 16;
  *(v5 + 1616) = 3;
  *(v5 + 3792) = "protein";
  *(v5 + 3776) = 17;
  *(v5 + 3784) = 2;
  *(v5 + 3744) = "progesterone_test_result";
  *(v5 + 3736) = 2;
  *(v5 + 3752) = 24;
  *(v5 + 3760) = 2;
  *(v5 + 3720) = "procedure_record";
  *(v5 + 3704) = 21;
  *(v5 + 3712) = 2;
  *(v5 + 3728) = 16;
  *(v5 + 1624) = 2;
  *(v5 + 3696) = "pregnancy_test_result";
  *(v5 + 3680) = 16;
  *(v5 + 3688) = 2;
  *(v5 + 3648) = "pregnancy";
  *(v5 + 3640) = 2;
  *(v5 + 3656) = 9;
  *(v5 + 3664) = 2;
  *(v5 + 3624) = "potassium";
  *(v5 + 3608) = 15;
  *(v5 + 3616) = 2;
  *(v5 + 3632) = 9;
  *(v5 + 1640) = 19;
  *(v5 + 3600) = "physical_effort";
  *(v5 + 3584) = 10;
  *(v5 + 3592) = 2;
  *(v5 + 3552) = "persistent_spotting";
  *(v5 + 3544) = 2;
  *(v5 + 3560) = 19;
  *(v5 + 3568) = 2;
  *(v5 + 3496) = 2;
  *(v5 + 3528) = "persistent_intermenstrual_bleeding";
  *(v5 + 3512) = 26;
  *(v5 + 3520) = 2;
  *(v5 + 3536) = 34;
  *(v5 + 1648) = 2;
  *(v5 + 1664) = 19;
  *(v5 + 1672) = 2;
  *(v5 + 3448) = 2;
  *(v5 + 3472) = 2;
  *(v5 + 3488) = 11;
  *(v5 + 1688) = 13;
  *(v5 + 1696) = 2;
  *(v5 + 3400) = 2;
  *(v5 + 3416) = 21;
  *(v5 + 3424) = 2;
  *(v5 + 3440) = 16;
  *(v5 + 1712) = 7;
  *(v5 + 1720) = 2;
  *(v5 + 3352) = 2;
  *(v5 + 3368) = 9;
  *(v5 + 3376) = 2;
  *(v5 + 3392) = 18;
  *(v5 + 1736) = 14;
  *(v5 + 1744) = 2;
  *(v5 + 3304) = 2;
  *(v5 + 3320) = 8;
  *(v5 + 3328) = 2;
  *(v5 + 3344) = 22;
  *(v5 + 1760) = 5;
  *(v5 + 1768) = 2;
  *(v5 + 3256) = 2;
  *(v5 + 3272) = 6;
  *(v5 + 3280) = 2;
  *(v5 + 3296) = 12;
  *(v5 + 1784) = 5;
  *(v5 + 1792) = 2;
  *(v5 + 3208) = 2;
  *(v5 + 3224) = 11;
  *(v5 + 3232) = 2;
  *(v5 + 3248) = 6;
  *(v5 + 1808) = 21;
  *(v5 + 1816) = 2;
  *(v5 + 3160) = 2;
  *(v5 + 3176) = 7;
  *(v5 + 3184) = 2;
  *(v5 + 3200) = 10;
  *(v5 + 1832) = 15;
  *(v5 + 1840) = 2;
  *(v5 + 3112) = 2;
  *(v5 + 3128) = 20;
  *(v5 + 3136) = 2;
  *(v5 + 3152) = 21;
  *(v5 + 1856) = 6;
  *(v5 + 1864) = 2;
  *(v5 + 1880) = 24;
  *(v5 + 3080) = 12;
  *(v5 + 3088) = 2;
  *(v5 + 3104) = 23;
  *(v5 + 1888) = 2;
  *(v5 + 3056) = 23;
  *(v5 + 3040) = 2;
  *(v5 + 3064) = 2;
  *(v5 + 3024) = "menstrual_pain";
  *(v5 + 3008) = 22;
  *(v5 + 3016) = 2;
  *(v5 + 3032) = 14;
  *(v5 + 3000) = "menstrual_cycle_length";
  *(v5 + 2968) = 2;
  *(v5 + 2984) = 12;
  *(v5 + 2992) = 2;
  *(v5 + 1904) = 21;
  *(v5 + 2960) = 34;
  *(v5 + 2936) = 11;
  *(v5 + 2944) = 2;
  *(v5 + 1912) = 2;
  *(v5 + 2928) = "medications";
  *(v5 + 2912) = 21;
  *(v5 + 2920) = 2;
  *(v5 + 2880) = "manganese";
  *(v5 + 2872) = 2;
  *(v5 + 2888) = 9;
  *(v5 + 2896) = 2;
  *(v5 + 2856) = "magnesium";
  *(v5 + 2840) = 4;
  *(v5 + 2848) = 2;
  *(v5 + 2864) = 9;
  *(v5 + 1928) = 15;
  *(v5 + 2832) = "lynx";
  *(v5 + 2816) = 15;
  *(v5 + 2824) = 2;
  *(v5 + 2784) = "low_heart_rate";
  *(v5 + 2776) = 2;
  *(v5 + 2792) = 14;
  *(v5 + 2800) = 2;
  *(v5 + 2760) = "loss_of_taste";
  *(v5 + 2744) = 13;
  *(v5 + 2752) = 2;
  *(v5 + 2768) = 13;
  *(v5 + 1936) = 2;
  *(v5 + 2736) = "loss_of_smell";
  *(v5 + 2720) = 14;
  *(v5 + 2728) = 2;
  *(v5 + 2688) = "lactation";
  *(v5 + 2680) = 2;
  *(v5 + 2696) = 9;
  *(v5 + 2704) = 2;
  *(v5 + 2664) = "lab_results";
  *(v5 + 2648) = 16;
  *(v5 + 2656) = 2;
  *(v5 + 2672) = 11;
  *(v5 + 1952) = 7;
  *(v5 + 2640) = "irregular_period";
  *(v5 + 2624) = 20;
  *(v5 + 2632) = 2;
  *(v5 + 2592) = "iron";
  *(v5 + 2584) = 2;
  *(v5 + 2600) = 4;
  *(v5 + 2608) = 2;
  *(v5 + 2568) = "iodine";
  *(v5 + 2552) = 9;
  *(v5 + 2560) = 2;
  *(v5 + 2576) = 6;
  *(v5 + 1960) = 2;
  *(v5 + 2544) = "insurance";
  *(v5 + 2528) = 16;
  *(v5 + 2536) = 2;
  *(v5 + 2496) = "inhaler_usage";
  *(v5 + 2488) = 2;
  *(v5 + 2504) = 13;
  *(v5 + 2512) = 2;
  *(v5 + 2472) = "infrequent_period";
  *(v5 + 2456) = 6;
  *(v5 + 2464) = 2;
  *(v5 + 2480) = 17;
  *(v5 + 1976) = 19;
  *(v5 + 2448) = "in_bed";
  *(v5 + 2432) = 13;
  *(v5 + 2440) = 2;
  *(v5 + 2400) = "hypertension_event";
  *(v5 + 2392) = 2;
  *(v5 + 2408) = 18;
  *(v5 + 2416) = 2;
  *(v5 + 2376) = "hot_flashes";
  *(v5 + 2360) = 15;
  *(v5 + 2368) = 2;
  *(v5 + 2384) = 11;
  *(v5 + 1984) = 2;
  *(v5 + 2352) = "high_heart_rate";
  *(v5 + 2336) = 10;
  *(v5 + 2344) = 2;
  *(v5 + 2304) = "heartburn";
  *(v5 + 2312) = 9;
  *(v5 + 2320) = 2;
  *(v5 + 2328) = "hemoglobin";
  *(v5 + 2272) = 2;
  *(v5 + 2280) = "heartbeat_skipped";
  *(v5 + 2288) = 17;
  *(v5 + 2296) = 2;
  *(v5 + 2264) = 38;
  *(v5 + 2240) = 22;
  *(v5 + 2248) = 2;
  *(v5 + 2000) = 4;
  *(v5 + 2232) = "heart_rate_variability";
  *(v5 + 2216) = 19;
  *(v5 + 2224) = 2;
  *(v5 + 2184) = "heart_rate_range";
  *(v5 + 2192) = 16;
  *(v5 + 2200) = 2;
  *(v5 + 2208) = "heart_rate_recovery";
  *(v5 + 2152) = 2;
  *(v5 + 2160) = "hearing";
  *(v5 + 2168) = 7;
  *(v5 + 2176) = 2;
  *(v5 + 2120) = 24;
  *(v5 + 2128) = 2;
  *(v5 + 2136) = "health_trends";
  *(v5 + 2144) = 13;
  *(v5 + 2008) = 2;
  *(v5 + 2096) = 15;
  *(v5 + 2104) = 2;
  *(v5 + 2112) = "headphone_audio_exposure";
  *(v5 + 2064) = "headache";
  *(v5 + 2072) = 8;
  *(v5 + 2080) = 2;
  *(v5 + 2088) = "headphone_audio";
  *(v5 + 2032) = 2;
  *(v5 + 2040) = "handwash";
  *(v5 + 2048) = 8;
  *(v5 + 2056) = 2;
  *(v5 + 2016) = "hair_loss";
  *(v5 + 2024) = 9;
  *(v5 + 4424) = 17;
  *(v5 + 4432) = 2;
  *(v5 + 4440) = "sleep_stage_rem";
  *(v5 + 4448) = 15;
  *(v5 + 4456) = 2;
  *(v5 + 4464) = "sleep_start";
  *(v5 + 4472) = 11;
  *(v5 + 4480) = 2;
  *(v5 + 4488) = "sleeping_wrist_temperature";
  *(v5 + 4496) = 26;
  *(v5 + 4504) = 2;
  *(v5 + 4512) = "snoring";
  *(v5 + 4520) = 7;
  *(v5 + 4528) = 2;
  *(v5 + 4536) = "sodium";
  *(v5 + 4544) = 6;
  *(v5 + 4552) = 2;
  *(v5 + 4560) = "sore_throat";
  *(v5 + 4568) = 11;
  *(v5 + 4576) = 2;
  *(v5 + 4584) = "spotting";
  *(v5 + 4592) = 8;
  *(v5 + 4600) = 2;
  *(v5 + 4608) = "stair_speed_down";
  *(v5 + 4616) = 16;
  *(v5 + 4624) = 2;
  *(v5 + 4632) = "stair_speed_up";
  *(v5 + 4640) = 14;
  *(v5 + 4648) = 2;
  *(v5 + 4656) = "step_length";
  *(v5 + 4664) = 11;
  *(v5 + 4672) = 2;
  *(v5 + 4680) = "stress";
  *(v5 + 4688) = 6;
  *(v5 + 4696) = 2;
  *(v5 + 4704) = "thiamin";
  *(v5 + 4712) = 7;
  *(v5 + 4720) = 2;
  *(v5 + 4728) = "time_in_daylight";
  *(v5 + 4736) = 16;
  *(v5 + 4744) = 2;
  *(v5 + 4752) = "toothbrushing";
  *(v5 + 4760) = 13;
  *(v5 + 4768) = 2;
  *(v5 + 4776) = "underwater_depth";
  *(v5 + 4784) = 16;
  *(v5 + 4792) = 2;
  *(v5 + 4800) = "uv_index";
  *(v5 + 4808) = 8;
  *(v5 + 4816) = 2;
  *(v5 + 4824) = "vaccination_record";
  *(v5 + 4832) = 18;
  *(v5 + 4840) = 2;
  *(v5 + 4848) = "vaginal_dryness";
  *(v5 + 4856) = 15;
  *(v5 + 4864) = 2;
  *(v5 + 4872) = "verifiable_clinical_record";
  *(v5 + 4880) = 26;
  *(v5 + 4888) = 2;
  *(v5 + 4896) = "vertical_oscillation";
  *(v5 + 4904) = 20;
  *(v5 + 4912) = 2;
  *(v5 + 4920) = "vital_sign_record";
  *(v5 + 4928) = 17;
  *(v5 + 4936) = 2;
  *(v5 + 4944) = "vitamin";
  *(v5 + 4952) = 7;
  *(v5 + 4960) = 2;
  *(v5 + 4968) = "vitamin_a";
  *(v5 + 4976) = 9;
  *(v5 + 4984) = 2;
  *(v5 + 4992) = "vitamin_b12";
  *(v5 + 5000) = 11;
  *(v5 + 5008) = 2;
  *(v5 + 5016) = "vitamin_b6";
  *(v5 + 5024) = 10;
  *(v5 + 5032) = 2;
  *(v5 + 5040) = "vitamin_c";
  *(v5 + 5048) = 9;
  *(v5 + 5056) = 2;
  *(v5 + 5064) = "vitamin_d";
  *(v5 + 5072) = 9;
  *(v5 + 5080) = 2;
  *(v5 + 5088) = "vitamin_e";
  *(v5 + 5096) = 9;
  *(v5 + 5104) = 2;
  *(v5 + 5112) = "vitamin_k";
  *(v5 + 5120) = 9;
  *(v5 + 5128) = 2;
  *(v5 + 5136) = "vo2_max";
  *(v5 + 5144) = 7;
  *(v5 + 5152) = 2;
  *(v5 + 5160) = "vomiting";
  *(v5 + 5168) = 8;
  *(v5 + 5176) = 2;
  *(v5 + 5184) = "waist_circumference";
  *(v5 + 5192) = 19;
  *(v5 + 5200) = 2;
  *(v5 + 5208) = "walking_asymmetry";
  *(v5 + 5216) = 17;
  *(v5 + 5224) = 2;
  *(v5 + 5232) = "walking_double_support_percentage";
  *(v5 + 5240) = 33;
  *(v5 + 5248) = 2;
  *(v5 + 5256) = "walking_heart_rate_average";
  *(v5 + 5264) = 26;
  *(v5 + 5272) = 2;
  *(v5 + 5280) = "walking_pace";
  *(v5 + 5288) = 12;
  *(v5 + 5296) = 2;
  *(v5 + 5304) = "walking_steadiness";
  *(v5 + 5312) = 18;
  *(v5 + 5320) = 2;
  *(v5 + 5328) = "walking_stride_length";
  *(v5 + 5336) = 21;
  *(v5 + 5344) = 2;
  *(v5 + 5352) = "water";
  *(v5 + 5360) = 5;
  *(v5 + 5368) = 2;
  *(v5 + 5376) = "water_temperature";
  *(v5 + 5384) = 17;
  *(v5 + 5392) = 2;
  *(v5 + 5400) = "wheelchair_pace";
  *(v5 + 5408) = 15;
  *(v5 + 5416) = 2;
  *(v5 + 5424) = "wheelchair_use";
  *(v5 + 5432) = 14;
  *(v5 + 5440) = 2;
  *(v5 + 5448) = "wheezing";
  *(v5 + 5456) = 8;
  *(v5 + 5464) = 2;
  *(v5 + 5472) = "wrist_temperature";
  *(v5 + 5480) = 17;
  *(v5 + 5488) = 2;
  *(v5 + 5496) = "zinc";
  *(v5 + 5504) = 4;
  *(v5 + 5512) = 2;
  *(v5 + 5520) = "active_energy";
  *(v5 + 5528) = 13;
  *(v5 + 5536) = 2;
  *(v5 + 5544) = "activity";
  *(v5 + 5552) = 8;
  *(v5 + 5560) = 2;
  *(v5 + 5568) = "basal_body_temperature";
  *(v5 + 5576) = 22;
  *(v5 + 5584) = 2;
  *(v5 + 5592) = "basal_energy_burned";
  *(v5 + 5600) = 19;
  *(v5 + 5608) = 2;
  *(v5 + 5616) = "body_mass_index";
  *(v5 + 5624) = 15;
  *(v5 + 5632) = 2;
  *(v5 + 5640) = "body_temperature";
  *(v5 + 5648) = 16;
  *(v5 + 5656) = 2;
  *(v5 + 5664) = "brisk_minute_goal";
  *(v5 + 5672) = 17;
  *(v5 + 5680) = 2;
  *(v5 + 5688) = "burned_generic";
  *(v5 + 5696) = 14;
  *(v5 + 5704) = 2;
  *(v5 + 5712) = "exercise_goal";
  *(v5 + 5720) = 13;
  *(v5 + 5728) = 2;
  *(v5 + 5736) = "exercise_minutes";
  *(v5 + 5744) = 16;
  *(v5 + 5752) = 2;
  *(v5 + 5760) = "exercise_ring";
  *(v5 + 5768) = 13;
  *(v5 + 5776) = 2;
  *(v5 + 5784) = "heart_rate";
  *(v5 + 5792) = 10;
  *(v5 + 5800) = 2;
  *(v5 + 5808) = "height";
  *(v5 + 5816) = 6;
  *(v5 + 5824) = 2;
  *(v5 + 5832) = "move";
  *(v5 + 5840) = 4;
  *(v5 + 5848) = 2;
  *(v5 + 5856) = "move_goal";
  *(v5 + 5864) = 9;
  *(v5 + 5872) = 2;
  *(v5 + 5880) = "move_ring";
  *(v5 + 5888) = 9;
  *(v5 + 5896) = 2;
  *(v5 + 5904) = "oxygen_saturation";
  *(v5 + 5912) = 17;
  *(v5 + 5920) = 2;
  *(v5 + 5928) = "push_count";
  *(v5 + 5936) = 10;
  *(v5 + 5944) = 2;
  *(v5 + 5952) = "resting_energy";
  *(v5 + 5960) = 14;
  *(v5 + 5968) = 2;
  *(v5 + 5976) = "ring_general";
  *(v5 + 5984) = 12;
  *(v5 + 5992) = 2;
  *(v5 + 6000) = "roll_goal";
  *(v5 + 6008) = 9;
  *(v5 + 6016) = 2;
  *(v5 + 6024) = "roll_ring";
  *(v5 + 6032) = 9;
  *(v5 + 6040) = 2;
  *(v5 + 6048) = "sex";
  *(v5 + 6056) = 3;
  *(v5 + 6064) = 2;
  *(v5 + 6072) = "six_minute_walk";
  *(v5 + 6080) = 15;
  *(v5 + 6088) = 2;
  *(v5 + 6096) = "stand";
  *(v5 + 6104) = 5;
  *(v5 + 6112) = 2;
  *(v5 + 6120) = "stand_goal";
  *(v5 + 6128) = 10;
  *(v5 + 6136) = 2;
  *(v5 + 6144) = "stand_ring";
  *(v5 + 6152) = 10;
  *(v5 + 6160) = 2;
  *(v5 + 6168) = "step_goal";
  *(v5 + 6176) = 9;
  *(v5 + 6184) = 2;
  *(v5 + 6192) = "swimming_stroke";
  *(v5 + 6200) = 15;
  *(v5 + 6208) = 2;
  *(v5 + 6216) = "walk_run_distance";
  *(v5 + 6224) = 17;
  *(v5 + 6232) = 2;
  *(v5 + 6240) = "walking_speed";
  *(v5 + 6248) = 13;
  *(v5 + 6256) = 2;
  *(v5 + 6264) = "weight";
  *(v5 + 6272) = 6;
  *(v5 + 6280) = 2;
  *(v5 + 6288) = "wheelchair_distance";
  *(v5 + 6296) = 19;
  *(v5 + 6304) = 2;
  *(v5 + 6312) = "bicycling";
  *(v5 + 6320) = 9;
  *(v5 + 6328) = 2;
  *(v5 + 6336) = "run";
  *(v5 + 6344) = 3;
  *(v5 + 6352) = 2;
  *(v5 + 6360) = "stairs_climbing";
  *(v5 + 6368) = 15;
  *(v5 + 6376) = 2;
  *(v5 + 6384) = "swim";
  *(v5 + 6392) = 4;
  *(v5 + 6400) = 2;
  *(v5 + 6408) = "walk";
  *(v5 + 6416) = 4;
  *(v5 + 6424) = 2;
  *(v5 + 6432) = "wheelchair";
  *(v5 + 6440) = 10;
  *(v5 + 6448) = 2;
  *(v5 + 6456) = "stepCount";
  *(v5 + 6464) = 9;
  *(v5 + 6472) = 2;
  v6._rawValue = HKActivityRingUIViewRepresentable.updateUIView(_:context:)(v4);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  v7 = sub_16E55C(v6, v11);

  v8 = v7 - 128;
  if (v7 < 0x80)
  {
    return v7;
  }

  result = 183;
  v7 = 128;
  switch(v8)
  {
    case 0uLL:
      return v7;
    case 1uLL:
      return 129;
    case 2uLL:
      return 130;
    case 3uLL:
      return 131;
    case 4uLL:
      return 132;
    case 5uLL:
      return 133;
    case 6uLL:
      return 134;
    case 7uLL:
      return 135;
    case 8uLL:
      return 136;
    case 9uLL:
      return 137;
    case 0xAuLL:
      return 138;
    case 0xBuLL:
      return 139;
    case 0xCuLL:
      return 140;
    case 0xDuLL:
      return 141;
    case 0xEuLL:
      return 142;
    case 0xFuLL:
      return 143;
    case 0x10uLL:
      return 144;
    case 0x11uLL:
      return 145;
    case 0x12uLL:
      return 146;
    case 0x13uLL:
      return 147;
    case 0x14uLL:
      return 148;
    case 0x15uLL:
      return 149;
    case 0x16uLL:
      return 150;
    case 0x17uLL:
      return 151;
    case 0x18uLL:
      return 152;
    case 0x19uLL:
      return 153;
    case 0x1AuLL:
      return 154;
    case 0x1BuLL:
      return 155;
    case 0x1CuLL:
      return 156;
    case 0x1DuLL:
      return 157;
    case 0x1EuLL:
      return 158;
    case 0x1FuLL:
      return 159;
    case 0x20uLL:
      return 160;
    case 0x21uLL:
      return 161;
    case 0x22uLL:
      return 162;
    case 0x23uLL:
      return 163;
    case 0x24uLL:
      return 164;
    case 0x25uLL:
      return 165;
    case 0x26uLL:
      return 166;
    case 0x27uLL:
      return 167;
    case 0x28uLL:
      return 168;
    case 0x29uLL:
      return 169;
    case 0x2AuLL:
      return 170;
    case 0x2BuLL:
      return 171;
    case 0x2CuLL:
      return 172;
    case 0x2DuLL:
      return 173;
    case 0x2EuLL:
      return 174;
    case 0x2FuLL:
      return 175;
    case 0x30uLL:
      return 176;
    case 0x31uLL:
      return 177;
    case 0x32uLL:
      return 178;
    case 0x33uLL:
      return 179;
    case 0x34uLL:
      return 180;
    case 0x35uLL:
      return 181;
    case 0x36uLL:
      return 182;
    case 0x37uLL:
      return result;
    case 0x38uLL:
      result = 184;
      break;
    case 0x39uLL:
      result = 185;
      break;
    case 0x3AuLL:
      result = 186;
      break;
    case 0x3BuLL:
      result = 187;
      break;
    case 0x3CuLL:
      result = 188;
      break;
    case 0x3DuLL:
      result = 189;
      break;
    case 0x3EuLL:
      result = 190;
      break;
    case 0x3FuLL:
      result = 191;
      break;
    default:
      result = 270;
      break;
  }

  return result;
}

uint64_t sub_143CF4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_142388(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_143D24(void *a1@<X8>)
{
  sub_140650(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t getEnumTagSinglePayload for HealthDataType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFEF3)
  {
    if (a2 + 269 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 269 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 270;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10E;
  v5 = v6 - 270;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthDataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 269 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 269 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEF2)
  {
    v6 = ((a2 - 65267) >> 16) + 1;
    *result = a2 + 269;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x143EC8);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 269;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_143F14()
{
  result = qword_1CB158;
  if (!qword_1CB158)
  {
    sub_9790(&qword_1CB160, qword_178188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB158);
  }

  return result;
}

unint64_t sub_143F7C()
{
  result = qword_1CB168;
  if (!qword_1CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB168);
  }

  return result;
}

void *sub_143FF8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  memcpy(v10 + 3, a2, 0xA0uLL);
  v10[23] = a3;
  v10[24] = a4;
  sub_1E1A8(a5, (v10 + 25));
  return v10;
}

void *sub_144074(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  memcpy(v5 + 3, a2, 0xA0uLL);
  v5[23] = a3;
  v5[24] = a4;
  sub_1E1A8(a5, (v5 + 25));
  return v5;
}

uint64_t sub_1440C8()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v6 = *(v5 + 64);
  v1[20] = sub_8BC0();
  v7 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[21] = sub_8BC0();
  v10 = sub_16C89C();
  v1[22] = v10;
  sub_888C(v10);
  v1[23] = v11;
  v13 = *(v12 + 64);
  v1[24] = sub_8BC0();
  v14 = sub_16C8FC();
  v1[25] = v14;
  sub_888C(v14);
  v1[26] = v15;
  v17 = *(v16 + 64);
  v1[27] = sub_8BC0();
  v18 = sub_16C80C();
  v1[28] = v18;
  sub_888C(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v22 = sub_16C83C();
  v1[32] = v22;
  sub_888C(v22);
  v1[33] = v23;
  v25 = *(v24 + 64);
  v1[34] = sub_8BC0();
  v26 = sub_16C7DC();
  v1[35] = v26;
  sub_888C(v26);
  v1[36] = v27;
  v29 = *(v28 + 64);
  v1[37] = sub_8BC0();
  v30 = sub_16DBEC();
  v1[38] = v30;
  sub_888C(v30);
  v1[39] = v31;
  v33 = *(v32 + 64);
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v34 = sub_17960();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_1443AC()
{
  v137 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBAC();
  sub_8B48();
  v133 = *(v3 + 16);
  v133(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  if (v11)
  {
    v130 = *(v0 + 304);
    v18 = *(v0 + 136);
    v128 = *(v0 + 336);
    v19 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v136);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24);
    v25 = sub_16E68C();
    v27 = v26;
    v28 = sub_146E70();
    v29(v28, v17);
    v30 = sub_3AB7C(v25, v27, &v136);

    *(v19 + 14) = v30;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v31 = *(v13 + 8);
    v31(v128, v130);
  }

  else
  {

    v32 = sub_146E70();
    v33(v32, v17);
    v31 = *(v13 + 8);
    v31(v12, v14);
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v37 = *(v0 + 120);
  sub_16C7CC();
  v38 = *(v36 + 88);
  v39 = sub_C9F8();
  if (v38(v39) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_8:
    v51 = *(v0 + 240);
    v52 = *(v0 + 224);
    v53 = *(v0 + 120);
    sub_16C7CC();
    v54 = sub_C9F8();
    if (v38(v54) != enum case for Parse.directInvocation(_:))
    {
      v61 = *(v0 + 320);
      v62 = *(v0 + 304);
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      sub_16DBBC();
      sub_8B48();
      v63 = sub_6B5B8();
      (v133)(v63);
      v64 = sub_16DBDC();
      v65 = sub_16E37C();
      v66 = os_log_type_enabled(v64, v65);
      v68 = *(v0 + 312);
      v67 = *(v0 + 320);
      v69 = *(v0 + 304);
      if (v66)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&def_259DC, v64, v65, "Received unsupported type of input", v70, 2u);
        sub_8A2C();
      }

      v71 = sub_C9F8();
      (v31)(v71);
      goto LABEL_24;
    }

    v55 = *(v0 + 240);
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v55, *(v0 + 224));
    (*(v57 + 32))(v56, v55, v58);
    v59 = sub_16C7EC();
    if (v59)
    {
      sub_17400(0xD000000000000012, 0x800000000017A960, v59, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v60 = *(v0 + 128);
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v134 = *(v0 + 344);
          v135 = *(v60 + 16);

          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_21:
    v80 = *(v0 + 328);
    v81 = *(v0 + 304);
    sub_16DBBC();
    sub_8B48();
    v82 = sub_6B5B8();
    (v133)(v82);
    v83 = sub_16DBDC();
    v84 = sub_16E37C();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 328);
    v87 = *(v0 + 304);
    v88 = *(v0 + 312);
    v90 = *(v0 + 152);
    v89 = *(v0 + 160);
    v91 = *(v0 + 144);
    if (v85)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&def_259DC, v83, v84, "MedUpdateLogStatusStrategy failed to unpack directInvocation, returning nil", v92, 2u);
      sub_8A2C();
    }

    v31(v86, v87);
    v93 = *(v90 + 8);
    v94 = sub_C9C8();
    v95(v94);
LABEL_24:
    v134 = 0;
    v135 = 1;
    goto LABEL_25;
  }

  v41 = *(v0 + 264);
  v40 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 192);
  v129 = *(v0 + 200);
  v131 = v31;
  v44 = *(v0 + 184);
  v127 = *(v0 + 176);
  v45 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(*(v0 + 248), *(v0 + 224));
  v46 = *(v41 + 32);
  v47 = sub_6B5B8();
  v48(v47);
  sub_16C82C();
  v49 = sub_16C88C();
  (*(v44 + 8))(v43, v127);
  sub_9AD9C(v49, v45);

  if (sub_369C(v45, 1, v129) == 1)
  {
    v50 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v50, &qword_1C6FF0, &unk_1730A0);
    v31 = v131;
    goto LABEL_8;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if (sub_16C8CC())
  {
    v73 = *(v0 + 264);
    v72 = *(v0 + 272);
    v74 = *(v0 + 256);
    v75 = *(v0 + 128);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v76 = *(v73 + 8);
    v77 = sub_C9C8();
    v78(v77);
    v135 = *(v75 + 16);

    v79 = 1;
LABEL_18:
    v134 = v79;
    goto LABEL_25;
  }

  v108 = *(v0 + 216);
  v109 = sub_16C8DC();
  v111 = *(v0 + 264);
  v110 = *(v0 + 272);
  v112 = *(v0 + 256);
  v114 = *(v0 + 208);
  v113 = *(v0 + 216);
  v115 = *(v0 + 200);
  if (v109)
  {
    v116 = sub_146E70();
    v117(v116, v115);
    v118 = *(v111 + 8);
    v119 = sub_C9F8();
    v120(v119);
  }

  else
  {
    v121 = sub_16C8EC();
    v122 = sub_146E70();
    v123(v122, v115);
    v124 = *(v111 + 8);
    v125 = sub_C9F8();
    v126(v125);
    if ((v121 & 1) == 0)
    {
      v135 = *(*(v0 + 128) + 16);

      v79 = 2;
      goto LABEL_18;
    }
  }

  v135 = *(*(v0 + 128) + 16);

  v134 = 0;
LABEL_25:
  v97 = *(v0 + 328);
  v96 = *(v0 + 336);
  v98 = *(v0 + 320);
  v99 = *(v0 + 296);
  v100 = *(v0 + 272);
  v102 = *(v0 + 240);
  v101 = *(v0 + 248);
  v103 = *(v0 + 216);
  v104 = *(v0 + 192);
  v105 = *(v0 + 168);
  v132 = *(v0 + 160);

  v106 = *(v0 + 8);

  return v106(v134, v135);
}

uint64_t sub_144BE8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
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
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBAC();
  sub_8B48();
  v36 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v37);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v29, v30);
    v31 = sub_16E68C();
    v33 = v32;
    (*(v7 + 8))(v12, v4);
    v34 = sub_3AB7C(v31, v33, &v37);

    *(v25 + 14) = v34;
    _os_log_impl(&def_259DC, v23, v24, "%s Handling Input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v36);
  return sub_16C47C();
}

uint64_t sub_144F0C()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_145080()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 64), *(v0[12] + 88));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_1452D0;

  return sub_7AA38();
}

uint64_t sub_1452D0()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_145424()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 200, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_1455AC;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_1455AC()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 208);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1456AC()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_8BC0();
  v7 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[25] = sub_8BC0();
  v10 = sub_16C46C();
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[26] = sub_8BC0();
  v13 = sub_16C7BC();
  v1[27] = v13;
  sub_888C(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = sub_8BC0();
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v17);
  v19 = *(v18 + 64);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v20 = sub_17960();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_145820()
{
  sub_C9EC();
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (!sub_3B35C(v2))
  {
    goto LABEL_6;
  }

  sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_16E48C();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  sub_16BA08(v3);
  if (v4)
  {
    v5 = v0[31];
    sub_16E23C();

    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = 1;
  }

  v7 = v0[31];
  v8 = sub_16D5CC();
  v9 = 1;
  sub_214C(v7, v6, 1, v8);
  v10 = *(v1 + 16);
  if (sub_3B35C(v10))
  {
    sub_3B360(0, (v10 & 0xC000000000000001) == 0, v10);
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_16E48C();
    }

    else
    {
      v11 = *(v10 + 32);
    }

    sub_146C80(v11);
    if (v12)
    {
      v13 = v0[30];
      sub_16E23C();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  v14 = v0[21];
  sub_214C(v0[30], v9, 1, v8);
  v0[32] = *(v14 + 184);

  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_145A1C;
  v17 = v0[30];
  v16 = v0[31];
  sub_38F74();

  return sub_166F98();
}

uint64_t sub_145A1C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 264);
  v8 = *v1;
  *v6 = *v1;

  v9 = *(v4 + 256);
  if (v0)
  {

    sub_8ACC();
    sub_38F74();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    *(v5 + 272) = v3;
    v14 = swift_task_alloc();
    *(v5 + 280) = v14;
    *v14 = v8;
    v14[1] = sub_145BC8;
    sub_38F74();

    return sub_66A84(v15, v16);
  }
}

uint64_t sub_145BC8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v0;
  *v3 = v6;
  v2[36] = v7;
  v2[37] = v8;

  v9 = swift_task_alloc();
  v2[38] = v9;
  *v9 = v6;
  v9[1] = sub_145CFC;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_145CFC()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 304);
  v10 = *v0;
  *(v2 + 312) = v4;
  *(v2 + 320) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_145DEC()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[21];
  v9 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v27 = v3;
  v10 = 0x6C65636E6143;
  if (!v9)
  {
    v10 = v0[36];
  }

  v26 = v10;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v25 = v2;
  if (v1)
  {
    v11 = v0[40];
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v12 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_1466DC();
  v13 = sub_16C55C();
  sub_214C(v6, 0, 1, v13);
  sub_16C78C();
  sub_16C79C();
  sub_16C77C();
  v14 = [v4 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();
  sub_8388(v8 + 200, (v0 + 7));
  v15 = v0[10];
  v16 = v0[11];
  sub_2D20(v0 + 7, v15);
  v0[15] = type metadata accessor for WellnessSnippets();
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  v17 = sub_9910(v0 + 12);
  *v17 = 0xD000000000000031;
  v17[1] = 0x800000000017DF40;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v25;
  v17[5] = v11;
  *(v17 + 48) = v12 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[41] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v4;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v20 = v4;
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_1460D4;
  v22 = v0[29];
  v23 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v23, v0 + 12, v18, v22, v15, v16);
}

uint64_t sub_1460D4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *(v4 + 328);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 96));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1461D4()
{
  sub_C9EC();
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);

  (*(v4 + 8))(v3, v5);
  v6 = sub_C9F8();
  sub_C878(v6, v7, &unk_16F510);
  sub_C878(v2, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_6B5E8();

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1462C0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_16DBBC();
  sub_8B48();
  v4 = *(v2 + 16);
  v5 = sub_6B5B8();
  v6(v5);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&def_259DC, v7, v8, "Couldn't create logMedUpdateToStatusConfirmation_Dialog, returning generic error output.", v9, 2u);
    sub_8A2C();
  }

  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];

  v13 = *(v11 + 8);
  v14 = sub_C9F8();
  v15(v14);
  sub_146CF0();
  v0[43] = swift_allocError();
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_146430;
  v17 = v0[20];
  v18 = v0[21];

  return sub_144F0C();
}

uint64_t sub_146430()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

void sub_146530()
{
  sub_C9EC();
  v1 = *(v0 + 248);
  sub_C878(*(v0 + 240), &qword_1C5800, &unk_16F510);
  v2 = sub_C9C8();
  sub_C878(v2, v3, &unk_16F510);
  sub_6B5E8();

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1465E8()
{
  v1 = v0[43];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  sub_C878(v0[30], &qword_1C5800, &unk_16F510);
  sub_C878(v2, &qword_1C5800, &unk_16F510);

  sub_C9BC();
  v8 = v0[45];

  return v7();
}

uint64_t sub_1466DC()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16C8BC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_16C8AC();
  sub_16C95C();
  (*(v10 + 16))(v15, v17, v7);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v18 = *(v1 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_16F530;
  (*(v2 + 16))(v20 + v19, v6, v0);
  sub_16C53C();
  (*(v2 + 8))(v6, v0);
  return (*(v10 + 8))(v17, v7);
}

void *sub_14690C()
{
  v1 = v0[2];

  sub_C938((v0 + 3));
  v2 = v0[23];

  v3 = v0[24];

  sub_2D64(v0 + 25);
  return v0;
}

uint64_t sub_14694C()
{
  sub_14690C();

  return _swift_deallocClassInstance(v0, 240, 7);
}

uint64_t sub_1469A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_146A40;

  return sub_1440C8();
}

void sub_146A40()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_38388();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_C990();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_146B40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_1456AC();
}

uint64_t sub_146BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_144F0C();
}

uint64_t sub_146C80(void *a1)
{
  v2 = [a1 loggedTime];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_16E1BC();

  return v3;
}

unint64_t sub_146CF0()
{
  result = qword_1CB2D8;
  if (!qword_1CB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MedUpdateLogStatusStrategyError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x146DE0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_146E1C()
{
  result = qword_1CB2E0;
  if (!qword_1CB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2E0);
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTime:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v79 = a8;
  v77 = a4;
  v78 = a7;
  v94 = a22;
  v95 = a23;
  v92 = a20;
  v93 = a21;
  v90 = a18;
  v91 = a19;
  v89 = a17;
  v87 = a15;
  v88 = a16;
  v85 = a13;
  v86 = a14;
  v81 = a12;
  v30 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v30);
  v32 = *(v31 + 64);
  sub_433C();
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  v36 = type metadata accessor for SpecificMedCompletedLogModel();
  v37 = v36[8];
  sub_16C11C();
  v82 = v37;
  sub_8AB4();
  v80 = v38;
  sub_214C(v39, v40, v41, v38);
  v42 = v36[19];
  type metadata accessor for SnippetHeaderModel();
  v83 = v42;
  sub_8AB4();
  sub_214C(v43, v44, v45, v46);
  *a9 = a1;
  v84 = a2;
  *(a9 + 8) = sub_BA66C();
  *(a9 + 16) = v47;
  v48 = v77;
  v49 = v78;
  *(a9 + 24) = a3;
  *(a9 + 32) = v48;
  v50 = a5;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  if (a6)
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  v52 = (a6 != 0) | v79;
  v53 = a9 + v36[9];
  v54 = (a9 + v36[10]);
  v55 = v36[11];
  *v53 = v51;
  v56 = v52 & 1;
  *(v53 + 8) = v52 & 1;

  *v54 = sub_147C94(v51, v56);
  v54[1] = v57;
  if (a6)
  {

    v58 = 0;
    a11 = 0;
    v59 = v50;
  }

  else
  {
    v58 = a10;
    a6 = 0xE900000000000064;
    v59 = 0x656465654E207341;
  }

  v60 = (a9 + v55);
  *v60 = v58;
  v60[1] = a11;
  v61 = (a9 + v36[12]);
  v62 = (a9 + v36[13]);
  v64 = v36[14];
  v63 = v36[15];
  v65 = (a9 + v36[16]);
  v66 = (a9 + v36[17]);
  v67 = (a9 + v36[18]);
  *v61 = v59;
  v61[1] = a6;
  v68 = v81;
  sub_147DA8(v81);
  sub_8748(v68, &qword_1C57F8, &unk_172510);
  v69 = sub_16BF5C();
  sub_8B38(v69);
  (*(v70 + 8))(v84);
  sub_214C(v35, 0, 1, v80);
  sub_1E634(v35, a9 + v82, &qword_1C63F0, &unk_1717F0);
  v71 = v86;
  *v62 = v85;
  v62[1] = v71;
  *(a9 + v64) = v87 & 1;
  *(a9 + v63) = v88 & 1;
  v72 = v90;
  *v65 = v89;
  v65[1] = v72;
  v73 = v92;
  *v66 = v91;
  v66[1] = v73;
  v74 = v94;
  *v67 = v93;
  v67[1] = v74;
  return sub_1E634(v95, a9 + v83, &dword_1C63F8, &qword_171800);
}

uint64_t type metadata accessor for SpecificMedCompletedLogModel()
{
  result = qword_1CB358;
  if (!qword_1CB358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTimeString:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v75 = a5;
  v76 = a8;
  v73 = a4;
  v74 = a10;
  v90 = a23;
  v91 = a24;
  v88 = a21;
  v89 = a22;
  v86 = a19;
  v87 = a20;
  v85 = a18;
  v83 = a16;
  v84 = a17;
  v81 = a14;
  v82 = a15;
  v80 = a13;
  v31 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v31);
  v33 = *(v32 + 64);
  sub_433C();
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = type metadata accessor for SpecificMedCompletedLogModel();
  v38 = v37[8];
  v77 = sub_16C11C();
  v78 = v38;
  sub_8AB4();
  sub_214C(v39, v40, v41, v42);
  v43 = v37[19];
  type metadata accessor for SnippetHeaderModel();
  v79 = v43;
  sub_8AB4();
  sub_214C(v44, v45, v46, v47);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v48 = v75;
  *(a9 + 24) = v73;
  *(a9 + 32) = v48;
  v49 = a6;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if (a7)
  {
    v50 = 0;
  }

  else
  {
    v50 = v76;
  }

  v51 = (a7 != 0) | v74;
  v52 = a9 + v37[9];
  v53 = (a9 + v37[10]);
  v54 = v37[11];
  *v52 = v50;
  v55 = v51 & 1;
  *(v52 + 8) = v51 & 1;

  *v53 = sub_147C94(v50, v55);
  v53[1] = v56;
  if (a7)
  {

    v57 = 0;
    a12 = 0;
  }

  else
  {
    v57 = a11;
    a7 = 0xE900000000000064;
    v49 = 0x656465654E207341;
  }

  v58 = (a9 + v54);
  *v58 = v57;
  v58[1] = a12;
  v59 = (a9 + v37[12]);
  v60 = (a9 + v37[13]);
  v61 = v37[14];
  v62 = v37[15];
  v63 = (a9 + v37[16]);
  v64 = (a9 + v37[17]);
  v65 = (a9 + v37[18]);
  *v59 = v49;
  v59[1] = a7;
  v66 = v80;
  sub_147DA8(v80);
  sub_8748(v66, &qword_1C57F8, &unk_172510);
  sub_214C(v36, 0, 1, v77);
  sub_1E634(v36, a9 + v78, &qword_1C63F0, &unk_1717F0);
  v67 = v82;
  *v60 = v81;
  v60[1] = v67;
  *(a9 + v61) = v83 & 1;
  *(a9 + v62) = v84 & 1;
  v68 = v86;
  *v63 = v85;
  v63[1] = v68;
  v69 = v88;
  *v64 = v87;
  v64[1] = v69;
  v70 = v90;
  *v65 = v89;
  v65[1] = v70;
  return sub_1E634(v91, a9 + v79, &dword_1C63F8, &qword_171800);
}

uint64_t SpecificMedCompletedLogModel.requestedMedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedSchedule.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosage.getter()
{
  v1 = (v0 + *(type metadata accessor for SpecificMedCompletedLogModel() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosage.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SpecificMedCompletedLogModel();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageString.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 40));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.dosageString.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 44));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.medType.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 48));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.medType.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 52));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 64));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 68));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.takenLabel.getter()
{
  v0 = type metadata accessor for SpecificMedCompletedLogModel();
  sub_20658(*(v0 + 72));
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.takenLabel.setter()
{
  v3 = sub_149A7C();
  result = sub_66A6C(*(v3 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_147C94(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_12;
  }

  v2 = result;
  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_12:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_147DA8(uint64_t a1)
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

uint64_t sub_147F50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000000017AE00 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000000017E660 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656761736F64 && a2 == 0xE600000000000000;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7453656761736F64 && a2 == 0xEC000000676E6972;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E55656761736F64 && a2 == 0xEA00000000007469;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6570795464656DLL && a2 == 0xE700000000000000;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x800000000017F3D0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
}

unint64_t sub_148430(char a1)
{
  result = 0x757461745364656DLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x68636E7550707061;
      break;
    case 5:
      result = 0x656761736F64;
      break;
    case 6:
      result = 0x7453656761736F64;
      break;
    case 7:
      result = 0x6E55656761736F64;
      break;
    case 8:
      result = 0x6570795464656DLL;
      break;
    case 9:
      result = 0x646E754268736173;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x457472616D537369;
      break;
    case 12:
      result = 0x614C646567676F6CLL;
      break;
    case 13:
      result = 0x4C64657070696B73;
      break;
    case 14:
      result = 0x62614C6E656B6174;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}