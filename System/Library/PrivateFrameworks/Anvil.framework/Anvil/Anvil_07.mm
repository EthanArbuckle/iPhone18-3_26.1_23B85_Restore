uint64_t sub_1DD99690C()
{
  v2 = *v1;
  v3 = *(*v1 + 1560);
  v8 = *v1;
  *(*v1 + 1568) = v0;

  if (v0)
  {
    v4 = sub_1DD996EEC;
  }

  else
  {
    v5 = *(v2 + 1552);
    v6 = *(v2 + 776);

    v4 = sub_1DD996A34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD996A34()
{
  v1 = v0[193];
  v2 = v0[190];
  v22 = v0[188];
  v23 = v0[189];
  v3 = v0[156];
  v4 = v0[152];
  v20 = v0[182];
  v21 = v0[143];
  v5 = v0[141];
  v6 = v0[140];
  v7 = v0[137];
  v8 = v0[132];
  v9 = v0[131];
  v10 = v0[130];
  v26 = v0[109];
  v24 = v0[170];
  v25 = v0[107];

  (*(v9 + 8))(v8, v10);

  sub_1DD926314((v0 + 71));
  v0[197] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v7, v6);
  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  v11 = *v4;
  v0[198] = *v4;
  v12 = v4[1];
  v0[199] = v12;
  sub_1DD983648(v22, v23, v11, v12, v21);
  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  v13 = sub_1DD913FF8();
  v15 = v14;
  v0[200] = v14;
  v16 = swift_task_alloc();
  v0[201] = v16;
  *v16 = v0;
  v16[1] = sub_1DD996BEC;
  v17 = v0[108];
  v18 = v0[106];

  return sub_1DD911340(v13, v15, v18, v25, v17, v26);
}

uint64_t sub_1DD996BEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1608);
  v5 = *(*v1 + 1600);
  v6 = *(*v1 + 1248);
  v7 = *v1;
  v3[202] = a1;

  v8 = swift_task_alloc();
  v3[203] = v8;
  *v8 = v7;
  v8[1] = sub_1DD996D90;
  v9 = v3[143];

  return sub_1DD950D48(v9, 0, 0xF000000000000000, 0, a1, 0, 1, 0);
}

uint64_t sub_1DD996D90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1624);
  v7 = *v3;
  v5[204] = a1;
  v5[205] = a2;
  v5[206] = v2;

  v8 = v4[202];

  if (v2)
  {
    v9 = sub_1DD998464;
  }

  else
  {

    v9 = sub_1DD997784;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD996EEC()
{
  v108 = v0;
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1520);
  v103 = *(v0 + 1456);
  v4 = *(v0 + 1216);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1056);
  v9 = *(v0 + 1048);
  v10 = *(v0 + 1040);

  (*(v9 + 8))(v8, v10);

  sub_1DD926314(v0 + 568);
  sub_1DD9B4918(v4, type metadata accessor for TwoPhaseUploadDocumentResponse);
  v103(v7, v6);
  v11 = *(v0 + 1568);
  *(v0 + 1656) = v11;
  *(v0 + 784) = v11;
  v12 = v11;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 408);
    v14 = *(v0 + 424);
    v16 = *(v0 + 440);
    v15 = *(v0 + 448);
    v18 = *(v0 + 456);
    v17 = *(v0 + 464);
    v19 = *(v0 + 480);
    if (v15)
    {
      v20 = *(v0 + 464);

      sub_1DD9B41AC(v15, v18, v17, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v21 = *(v0 + 408);

      sub_1DD9B41AC(0, v18, v17, MEMORY[0x1E69E7CF8]);
      v15 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v15;

    v22 = *(v15 + 16);
    *(v0 + 1680) = v22;
    if (v22)
    {
      v23 = *(v0 + 696);
      *(v0 + 1688) = v23;
      if (v23)
      {
        *(v0 + 1696) = 0;
        v24 = *(v0 + 1672);
        v25 = *(v24 + 48);
        *(v0 + 1704) = v25;
        v26 = *(v24 + 40);
        v27 = *(v24 + 32);

        v28 = swift_task_alloc();
        *(v0 + 1712) = v28;
        *v28 = v0;
        v28[1] = sub_1DD998C98;

        return sub_1DD948CE8(v26, v25, v27, v23);
      }

      *(v0 + 1696) = v22 - 1;
      v30 = *(v0 + 1672);
    }
  }

  v31 = *(v0 + 1664);
  v32 = *(v0 + 896);
  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v33 = sub_1DDA13840();
  v34 = swift_dynamicCast();
  v35 = *(*(v33 - 8) + 56);
  v36 = *(v0 + 896);
  if (v34)
  {
    v37 = *(v33 - 8);
    v35(*(v0 + 896), 0, 1, v33);
    if ((*(v37 + 88))(v36, v33) == *MEMORY[0x1E69DA4A0])
    {
      v38 = *(v0 + 928);
      v39 = *(v0 + 912);
      v40 = *(v0 + 904);
      v41 = *(v0 + 896);
      (*(v37 + 96))(v41, v33);
      (*(v39 + 32))(v38, v41, v40);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v42 = *(v0 + 928);
      v43 = *(v0 + 920);
      v44 = *(v0 + 912);
      v45 = *(v0 + 904);
      v46 = sub_1DDA14810();
      __swift_project_value_buffer(v46, qword_1ECDA20E0);
      (*(v44 + 16))(v43, v42, v45);
      v47 = sub_1DDA147F0();
      v48 = sub_1DDA14EE0();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 920);
      v51 = *(v0 + 912);
      v52 = *(v0 + 904);
      if (v49)
      {
        v53 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v107 = v104;
        *v53 = 136315138;
        v101 = sub_1DDA13810();
        v55 = v54;
        v56 = *(v51 + 8);
        v56(v50, v52);
        v57 = sub_1DD93FA54(v101, v55, &v107);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_1DD8F8000, v47, v48, "Attempted a two-phase document upload to an expired session! %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v104);
        v58 = v56;
        MEMORY[0x1E12B8CE0](v104, -1, -1);
        MEMORY[0x1E12B8CE0](v53, -1, -1);
      }

      else
      {

        v58 = *(v51 + 8);
        v58(v50, v52);
      }

      v59 = *(v0 + 1312);
      v60 = *(v0 + 1248);
      v61 = *(v0 + 1224);
      v62 = *(v0 + 928);
      v63 = *(v0 + 904);
      (*(v0 + 1304))(v61, 1, 1, *(v0 + 1296));
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v64[4] = v60;

      sub_1DD982718(0, 0, v61, &unk_1DDA1B4B0, v64);

      v58(v62, v63);
    }

    else
    {
      (*(v37 + 8))(*(v0 + 896), v33);
    }
  }

  else
  {
    v35(*(v0 + 896), 1, 1, v33);
    sub_1DD90D378(v36, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v65 = *(v0 + 1656);
  v66 = *(v0 + 1248);
  v67 = *(v0 + 1064);
  v68 = *(v0 + 960);
  v69 = *(v0 + 952);
  v105 = *(v0 + 944);
  v70 = *(v0 + 936);
  v71 = *(v0 + 888);
  v72 = *(v0 + 816);
  swift_getErrorValue();
  v73 = *(v0 + 720);
  v74 = *(v0 + 728);
  v75 = *(v0 + 736);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v69 + 8))(v68, v105);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
  v76 = *(v0 + 1240);
  v77 = *(v0 + 1224);
  v78 = *(v0 + 1216);
  v79 = *(v0 + 1208);
  v80 = *(v0 + 1200);
  v81 = *(v0 + 1192);
  v82 = *(v0 + 1184);
  v83 = *(v0 + 1168);
  v84 = *(v0 + 1160);
  v85 = *(v0 + 1152);
  v87 = *(v0 + 1144);
  v88 = *(v0 + 1112);
  v89 = *(v0 + 1104);
  v90 = *(v0 + 1096);
  v91 = *(v0 + 1088);
  v92 = *(v0 + 1056);
  v93 = *(v0 + 1032);
  v94 = *(v0 + 1024);
  v95 = *(v0 + 1016);
  v96 = *(v0 + 1000);
  v97 = *(v0 + 992);
  v98 = *(v0 + 960);
  v99 = *(v0 + 936);
  v100 = *(v0 + 928);
  v102 = *(v0 + 920);
  v106 = *(v0 + 896);

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1DD997784()
{
  v161 = v0;
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1008);
  v6 = *(*(v0 + 1248) + 304);
  sub_1DD9B48D0(&qword_1ECD83818, 255, type metadata accessor for UploadDocumentResponse);
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 1632), *(v0 + 1640));
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1216);
    (*(v0 + 1456))(*(v0 + 1144), *(v0 + 1120));
    sub_1DD9B4918(v8, type metadata accessor for TwoPhaseUploadDocumentResponse);
    *(v0 + 1656) = v1;
    *(v0 + 784) = v1;
    v9 = v1;
    *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 408);
      v11 = *(v0 + 424);
      v13 = *(v0 + 440);
      v12 = *(v0 + 448);
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      v16 = *(v0 + 480);
      if (v12)
      {
        v17 = *(v0 + 464);

        sub_1DD9B41AC(v12, v15, v14, MEMORY[0x1E69E7CF8]);
      }

      else
      {
        v55 = *(v0 + 408);

        sub_1DD9B41AC(0, v15, v14, MEMORY[0x1E69E7CF8]);
        v12 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1672) = v12;

      v56 = *(v12 + 16);
      *(v0 + 1680) = v56;
      if (v56)
      {
        v57 = *(v0 + 696);
        *(v0 + 1688) = v57;
        if (v57)
        {
          *(v0 + 1696) = 0;
          v58 = *(v0 + 1672);
          v59 = *(v58 + 48);
          *(v0 + 1704) = v59;
          v60 = *(v58 + 40);
          v61 = *(v58 + 32);

          v62 = swift_task_alloc();
          *(v0 + 1712) = v62;
          *v62 = v0;
          v62[1] = sub_1DD998C98;

          return sub_1DD948CE8(v60, v59, v61, v57);
        }

        *(v0 + 1696) = v56 - 1;
        v64 = *(v0 + 1672);
      }
    }

    v65 = *(v0 + 1664);
    v66 = *(v0 + 896);
    *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
    v67 = sub_1DDA13840();
    v68 = swift_dynamicCast();
    v69 = *(*(v67 - 8) + 56);
    v70 = *(v0 + 896);
    if (v68)
    {
      v71 = *(v67 - 8);
      v69(*(v0 + 896), 0, 1, v67);
      if ((*(v71 + 88))(v70, v67) == *MEMORY[0x1E69DA4A0])
      {
        v72 = *(v0 + 928);
        v73 = *(v0 + 912);
        v74 = *(v0 + 904);
        v75 = *(v0 + 896);
        (*(v71 + 96))(v75, v67);
        (*(v73 + 32))(v72, v75, v74);
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v76 = *(v0 + 928);
        v77 = *(v0 + 920);
        v78 = *(v0 + 912);
        v79 = *(v0 + 904);
        v80 = sub_1DDA14810();
        __swift_project_value_buffer(v80, qword_1ECDA20E0);
        (*(v78 + 16))(v77, v76, v79);
        v81 = sub_1DDA147F0();
        v82 = sub_1DDA14EE0();
        v83 = os_log_type_enabled(v81, v82);
        v84 = *(v0 + 920);
        v85 = *(v0 + 912);
        v86 = *(v0 + 904);
        if (v83)
        {
          v87 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v160[0] = v157;
          *v87 = 136315138;
          v153 = sub_1DDA13810();
          v89 = v88;
          v90 = *(v85 + 8);
          v90(v84, v86);
          v91 = sub_1DD93FA54(v153, v89, v160);

          *(v87 + 4) = v91;
          _os_log_impl(&dword_1DD8F8000, v81, v82, "Attempted a two-phase document upload to an expired session! %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v157);
          v92 = v90;
          MEMORY[0x1E12B8CE0](v157, -1, -1);
          MEMORY[0x1E12B8CE0](v87, -1, -1);
        }

        else
        {

          v92 = *(v85 + 8);
          v92(v84, v86);
        }

        v93 = *(v0 + 1312);
        v94 = *(v0 + 1248);
        v95 = *(v0 + 1224);
        v96 = *(v0 + 928);
        v97 = *(v0 + 904);
        (*(v0 + 1304))(v95, 1, 1, *(v0 + 1296));
        v98 = swift_allocObject();
        v98[2] = 0;
        v98[3] = 0;
        v98[4] = v94;

        sub_1DD982718(0, 0, v95, &unk_1DDA1B4B0, v98);

        v92(v96, v97);
      }

      else
      {
        (*(v71 + 8))(*(v0 + 896), v67);
      }
    }

    else
    {
      v69(*(v0 + 896), 1, 1, v67);
      sub_1DD90D378(v70, &qword_1ECD82F78, &qword_1DDA188D8);
    }

    v99 = *(v0 + 1656);
    v100 = *(v0 + 1248);
    v101 = *(v0 + 1064);
    v102 = *(v0 + 960);
    v103 = *(v0 + 952);
    v158 = *(v0 + 944);
    v104 = *(v0 + 936);
    v105 = *(v0 + 888);
    v106 = *(v0 + 816);
    swift_getErrorValue();
    v107 = *(v0 + 720);
    v108 = *(v0 + 728);
    v109 = *(v0 + 736);
    sub_1DDA15510();
    sub_1DDA140F0();

    sub_1DDA14DF0();

    (*(v103 + 8))(v102, v158);
  }

  else
  {
    v18 = *(v0 + 1448);
    sub_1DD9B4C84(*(v0 + 1032), *(v0 + 1024), type metadata accessor for UploadDocumentResponse);
    v19 = sub_1DDA147F0();
    v20 = sub_1DDA14ED0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1632);
    v23 = *(v0 + 1576);
    v24 = *(v0 + 1456);
    v25 = *(v0 + 1144);
    v26 = *(v0 + 1120);
    v155 = *(v0 + 1032);
    v27 = *(v0 + 1024);
    if (v21)
    {
      v28 = *(v0 + 1016);
      v29 = *(v0 + 1008);
      v143 = *(v0 + 1640);
      v149 = *(v0 + 1144);
      v30 = swift_slowAlloc();
      v146 = v26;
      v31 = swift_slowAlloc();
      v160[0] = v31;
      *v30 = 136315138;
      sub_1DD9B4C84(v27, v28, type metadata accessor for UploadDocumentResponse);
      v32 = sub_1DDA14B70();
      v140 = v24;
      v34 = v33;
      sub_1DD9B4918(v27, type metadata accessor for UploadDocumentResponse);
      v35 = sub_1DD93FA54(v32, v34, v160);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DD8F8000, v19, v20, "Decoded response: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B8CE0](v31, -1, -1);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
      sub_1DD909D28(v22, v143);

      sub_1DD9B4918(v155, type metadata accessor for UploadDocumentResponse);
      v140(v149, v146);
    }

    else
    {
      sub_1DD909D28(v22, *(v0 + 1640));

      sub_1DD9B4918(v27, type metadata accessor for UploadDocumentResponse);
      sub_1DD9B4918(v155, type metadata accessor for UploadDocumentResponse);
      v24(v25, v26);
    }

    v36 = *(v0 + 1592);
    v37 = *(v0 + 1584);
    v38 = *(v0 + 1536);
    v127 = *(v0 + 1312);
    v125 = *(v0 + 1304);
    v122 = *(v0 + 1296);
    v39 = *(v0 + 1248);
    v40 = *(v0 + 1224);
    v134 = v40;
    v156 = *(v0 + 1216);
    v41 = *(v0 + 1120);
    v42 = *(v0 + 1000);
    v43 = *(v0 + 992);
    v123 = v43;
    v131 = *(v0 + 984);
    v44 = *(v0 + 976);
    v45 = *(v0 + 968);
    v121 = v45;
    v144 = *(v0 + 960);
    v147 = *(v0 + 1064);
    v150 = *(v0 + 952);
    v152 = *(v0 + 944);
    v46 = *(v0 + 936);
    v141 = *(v0 + 888);
    v137 = *(v0 + 816);
    (*(v0 + 1528))(*(v0 + 1152));

    sub_1DDA14150();
    v47 = v39[45];
    v48 = v39[15];
    v129 = v39[14];
    v125(v40, 1, 1, v122);
    (*(v44 + 16))(v43, v42, v45);

    v49 = sub_1DDA14D30();
    v50 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v51 = (v131 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = MEMORY[0x1E69E85E0];
    *(v52 + 16) = v49;
    *(v52 + 24) = v53;
    (*(v44 + 32))(v52 + v50, v123, v121);
    v54 = (v52 + v51);
    *v54 = v129;
    v54[1] = v48;
    *(v52 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
    sub_1DD982718(0, 0, v134, &unk_1DDA1B4C0, v52);

    sub_1DDA14130();
    sub_1DDA14DF0();

    (*(v150 + 8))(v144, v152);
    (*(v44 + 8))(v42, v121);
    sub_1DD9B4918(v156, type metadata accessor for TwoPhaseUploadDocumentResponse);
  }

  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
  v110 = *(v0 + 1240);
  v111 = *(v0 + 1224);
  v112 = *(v0 + 1216);
  v113 = *(v0 + 1208);
  v114 = *(v0 + 1200);
  v115 = *(v0 + 1192);
  v116 = *(v0 + 1184);
  v117 = *(v0 + 1168);
  v118 = *(v0 + 1160);
  v119 = *(v0 + 1152);
  v124 = *(v0 + 1144);
  v126 = *(v0 + 1112);
  v128 = *(v0 + 1104);
  v130 = *(v0 + 1096);
  v132 = *(v0 + 1088);
  v133 = *(v0 + 1056);
  v135 = *(v0 + 1032);
  v136 = *(v0 + 1024);
  v138 = *(v0 + 1016);
  v139 = *(v0 + 1000);
  v142 = *(v0 + 992);
  v145 = *(v0 + 960);
  v148 = *(v0 + 936);
  v151 = *(v0 + 928);
  v154 = *(v0 + 920);
  v159 = *(v0 + 896);

  v120 = *(v0 + 8);

  return v120();
}

uint64_t sub_1DD998464()
{
  v99 = v0;
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1216);
  (*(v0 + 1456))(*(v0 + 1144), *(v0 + 1120));
  sub_1DD9B4918(v3, type metadata accessor for TwoPhaseUploadDocumentResponse);
  *(v0 + 1656) = v1;
  *(v0 + 784) = v1;
  v4 = v1;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 408);
    v6 = *(v0 + 424);
    v8 = *(v0 + 440);
    v7 = *(v0 + 448);
    v10 = *(v0 + 456);
    v9 = *(v0 + 464);
    v11 = *(v0 + 480);
    if (v7)
    {
      v12 = *(v0 + 464);

      sub_1DD9B41AC(v7, v10, v9, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v13 = *(v0 + 408);

      sub_1DD9B41AC(0, v10, v9, MEMORY[0x1E69E7CF8]);
      v7 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v7;

    v14 = *(v7 + 16);
    *(v0 + 1680) = v14;
    if (v14)
    {
      v15 = *(v0 + 696);
      *(v0 + 1688) = v15;
      if (v15)
      {
        *(v0 + 1696) = 0;
        v16 = *(v0 + 1672);
        v17 = *(v16 + 48);
        *(v0 + 1704) = v17;
        v18 = *(v16 + 40);
        v19 = *(v16 + 32);

        v20 = swift_task_alloc();
        *(v0 + 1712) = v20;
        *v20 = v0;
        v20[1] = sub_1DD998C98;

        return sub_1DD948CE8(v18, v17, v19, v15);
      }

      *(v0 + 1696) = v14 - 1;
      v22 = *(v0 + 1672);
    }
  }

  v23 = *(v0 + 1664);
  v24 = *(v0 + 896);
  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v25 = sub_1DDA13840();
  v26 = swift_dynamicCast();
  v27 = *(*(v25 - 8) + 56);
  v28 = *(v0 + 896);
  if (v26)
  {
    v29 = *(v25 - 8);
    v27(*(v0 + 896), 0, 1, v25);
    if ((*(v29 + 88))(v28, v25) == *MEMORY[0x1E69DA4A0])
    {
      v30 = *(v0 + 928);
      v31 = *(v0 + 912);
      v32 = *(v0 + 904);
      v33 = *(v0 + 896);
      (*(v29 + 96))(v33, v25);
      (*(v31 + 32))(v30, v33, v32);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 928);
      v35 = *(v0 + 920);
      v36 = *(v0 + 912);
      v37 = *(v0 + 904);
      v38 = sub_1DDA14810();
      __swift_project_value_buffer(v38, qword_1ECDA20E0);
      (*(v36 + 16))(v35, v34, v37);
      v39 = sub_1DDA147F0();
      v40 = sub_1DDA14EE0();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 920);
      v43 = *(v0 + 912);
      v44 = *(v0 + 904);
      if (v41)
      {
        v45 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98 = v95;
        *v45 = 136315138;
        v93 = sub_1DDA13810();
        v47 = v46;
        v48 = *(v43 + 8);
        v48(v42, v44);
        v49 = sub_1DD93FA54(v93, v47, &v98);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_1DD8F8000, v39, v40, "Attempted a two-phase document upload to an expired session! %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        v50 = v48;
        MEMORY[0x1E12B8CE0](v95, -1, -1);
        MEMORY[0x1E12B8CE0](v45, -1, -1);
      }

      else
      {

        v50 = *(v43 + 8);
        v50(v42, v44);
      }

      v51 = *(v0 + 1312);
      v52 = *(v0 + 1248);
      v53 = *(v0 + 1224);
      v54 = *(v0 + 928);
      v55 = *(v0 + 904);
      (*(v0 + 1304))(v53, 1, 1, *(v0 + 1296));
      v56 = swift_allocObject();
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = v52;

      sub_1DD982718(0, 0, v53, &unk_1DDA1B4B0, v56);

      v50(v54, v55);
    }

    else
    {
      (*(v29 + 8))(*(v0 + 896), v25);
    }
  }

  else
  {
    v27(*(v0 + 896), 1, 1, v25);
    sub_1DD90D378(v28, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v57 = *(v0 + 1656);
  v58 = *(v0 + 1248);
  v59 = *(v0 + 1064);
  v60 = *(v0 + 960);
  v61 = *(v0 + 952);
  v96 = *(v0 + 944);
  v62 = *(v0 + 936);
  v63 = *(v0 + 888);
  v64 = *(v0 + 816);
  swift_getErrorValue();
  v65 = *(v0 + 720);
  v66 = *(v0 + 728);
  v67 = *(v0 + 736);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v61 + 8))(v60, v96);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
  v68 = *(v0 + 1240);
  v69 = *(v0 + 1224);
  v70 = *(v0 + 1216);
  v71 = *(v0 + 1208);
  v72 = *(v0 + 1200);
  v73 = *(v0 + 1192);
  v74 = *(v0 + 1184);
  v75 = *(v0 + 1168);
  v76 = *(v0 + 1160);
  v77 = *(v0 + 1152);
  v79 = *(v0 + 1144);
  v80 = *(v0 + 1112);
  v81 = *(v0 + 1104);
  v82 = *(v0 + 1096);
  v83 = *(v0 + 1088);
  v84 = *(v0 + 1056);
  v85 = *(v0 + 1032);
  v86 = *(v0 + 1024);
  v87 = *(v0 + 1016);
  v88 = *(v0 + 1000);
  v89 = *(v0 + 992);
  v90 = *(v0 + 960);
  v91 = *(v0 + 936);
  v92 = *(v0 + 928);
  v94 = *(v0 + 920);
  v97 = *(v0 + 896);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_1DD998C98()
{
  v1 = *(*v0 + 1712);
  v2 = *(*v0 + 1704);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD998DB0, 0, 0);
}

uint64_t sub_1DD998DB0()
{
  v89 = v0;
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1696);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 1696) = i;
    v5 = *(v0 + 1688);
    v3 += 24;
    if (v5)
    {
      v6 = *(v0 + 1672) + v3;
      v7 = *(v6 + 48);
      *(v0 + 1704) = v7;
      v8 = *(v6 + 40);
      v9 = *(v6 + 32);

      v10 = swift_task_alloc();
      *(v0 + 1712) = v10;
      *v10 = v0;
      v10[1] = sub_1DD998C98;

      return sub_1DD948CE8(v8, v7, v9, v5);
    }
  }

  v12 = *(v0 + 1672);

  v13 = *(v0 + 1664);
  v14 = *(v0 + 896);
  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v15 = sub_1DDA13840();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  v18 = *(v0 + 896);
  if (v16)
  {
    v19 = *(v15 - 8);
    v17(*(v0 + 896), 0, 1, v15);
    if ((*(v19 + 88))(v18, v15) == *MEMORY[0x1E69DA4A0])
    {
      v20 = *(v0 + 928);
      v21 = *(v0 + 912);
      v22 = *(v0 + 904);
      v23 = *(v0 + 896);
      (*(v19 + 96))(v23, v15);
      (*(v21 + 32))(v20, v23, v22);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 928);
      v25 = *(v0 + 920);
      v26 = *(v0 + 912);
      v27 = *(v0 + 904);
      v28 = sub_1DDA14810();
      __swift_project_value_buffer(v28, qword_1ECDA20E0);
      (*(v26 + 16))(v25, v24, v27);
      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14EE0();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 920);
      v33 = *(v0 + 912);
      v34 = *(v0 + 904);
      if (v31)
      {
        v35 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v88 = v85;
        *v35 = 136315138;
        v83 = sub_1DDA13810();
        v37 = v36;
        v38 = *(v33 + 8);
        v38(v32, v34);
        v39 = sub_1DD93FA54(v83, v37, &v88);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1DD8F8000, v29, v30, "Attempted a two-phase document upload to an expired session! %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        v40 = v38;
        MEMORY[0x1E12B8CE0](v85, -1, -1);
        MEMORY[0x1E12B8CE0](v35, -1, -1);
      }

      else
      {

        v40 = *(v33 + 8);
        v40(v32, v34);
      }

      v41 = *(v0 + 1312);
      v42 = *(v0 + 1248);
      v43 = *(v0 + 1224);
      v44 = *(v0 + 928);
      v45 = *(v0 + 904);
      (*(v0 + 1304))(v43, 1, 1, *(v0 + 1296));
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v42;

      sub_1DD982718(0, 0, v43, &unk_1DDA1B4B0, v46);

      v40(v44, v45);
    }

    else
    {
      (*(v19 + 8))(*(v0 + 896), v15);
    }
  }

  else
  {
    v17(*(v0 + 896), 1, 1, v15);
    sub_1DD90D378(v18, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v47 = *(v0 + 1656);
  v48 = *(v0 + 1248);
  v49 = *(v0 + 1064);
  v50 = *(v0 + 960);
  v51 = *(v0 + 952);
  v86 = *(v0 + 944);
  v52 = *(v0 + 936);
  v53 = *(v0 + 888);
  v54 = *(v0 + 816);
  swift_getErrorValue();
  v55 = *(v0 + 720);
  v56 = *(v0 + 728);
  v57 = *(v0 + 736);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v51 + 8))(v50, v86);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
  v58 = *(v0 + 1240);
  v59 = *(v0 + 1224);
  v60 = *(v0 + 1216);
  v61 = *(v0 + 1208);
  v62 = *(v0 + 1200);
  v63 = *(v0 + 1192);
  v64 = *(v0 + 1184);
  v65 = *(v0 + 1168);
  v66 = *(v0 + 1160);
  v67 = *(v0 + 1152);
  v69 = *(v0 + 1144);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1104);
  v72 = *(v0 + 1096);
  v73 = *(v0 + 1088);
  v74 = *(v0 + 1056);
  v75 = *(v0 + 1032);
  v76 = *(v0 + 1024);
  v77 = *(v0 + 1016);
  v78 = *(v0 + 1000);
  v79 = *(v0 + 992);
  v80 = *(v0 + 960);
  v81 = *(v0 + 936);
  v82 = *(v0 + 928);
  v84 = *(v0 + 920);
  v87 = *(v0 + 896);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1DD9994AC(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9B4F98, a2, 0);
}

uint64_t sub_1DD9994EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 376);
  v6 = (*(v1 + 368) + **(v1 + 368));
  v3 = *(*(v1 + 368) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1DD9B4FD0;

  return v6();
}

uint64_t sub_1DD9995D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v37;
  *(v8 + 568) = v36;
  *(v8 + 552) = v35;
  *(v8 + 544) = a8;
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 512) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  v10 = sub_1DDA14180();
  *(v8 + 600) = v10;
  v11 = *(v10 - 8);
  *(v8 + 608) = v11;
  *(v8 + 616) = *(v11 + 64);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  v14 = *(*(sub_1DDA14140() - 8) + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 664) = v15;
  v16 = *(v15 - 8);
  *(v8 + 672) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v18 = type metadata accessor for UploadDocumentResponse(0);
  *(v8 + 688) = v18;
  v19 = *(v18 - 8);
  *(v8 + 696) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 704) = swift_task_alloc();
  v21 = sub_1DDA13140();
  *(v8 + 712) = v21;
  v22 = *(v21 - 8);
  *(v8 + 720) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 736) = v24;
  v25 = *(v24 - 8);
  *(v8 + 744) = v25;
  *(v8 + 752) = *(v25 + 64);
  *(v8 + 760) = swift_task_alloc();
  v26 = sub_1DDA134E0();
  *(v8 + 768) = v26;
  v27 = *(v26 - 8);
  *(v8 + 776) = v27;
  *(v8 + 784) = *(v27 + 64);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83800, &qword_1DDA1B438);
  *(v8 + 824) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  *(v8 + 864) = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  *(v8 + 872) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD999A90, 0, 0);
}

uint64_t sub_1DD999A90()
{
  v1 = v0[64];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[110] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (*(__swift_project_boxed_opaque_existential_1((Strong + 176), *(Strong + 200)) + 48) == 1)
    {

      v0[52] = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
      v0[53] = &unk_1DDA1B480;
      v0[54] = v3;
      v4 = swift_task_alloc();
      v0[111] = v4;
      *v4 = v0;
      v4[1] = sub_1DD999DE4;

      return sub_1DD9424E4(&unk_1F58EC908);
    }

    else
    {
      v0[52] = 0;
      v0[53] = 0;
      v0[54] = 0;
      v17 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v18 = v0[110];
      v19 = v0[69];
      v20 = v0[67];
      v21 = v0[65];
      v0[113] = sub_1DD98A3E8(v17);
      v0[114] = 0;

      __swift_project_boxed_opaque_existential_1((v18 + 176), *(v18 + 200));
      v22 = *v21;
      v23 = sub_1DD913FF8();
      v25 = v24;
      v0[115] = v24;
      v26 = swift_task_alloc();
      v0[116] = v26;
      *v26 = v0;
      v26[1] = sub_1DD999FF8;
      v27 = v0[68];
      v28 = v0[66];

      return sub_1DD911340(v23, v25, v28, v20, v27, v19);
    }
  }

  else
  {
    v6 = v0[109];
    v7 = v0[107];
    v8 = v0[106];
    v9 = v0[105];
    v10 = v0[104];
    v11 = v0[102];
    v12 = v0[101];
    v13 = v0[100];
    v14 = v0[99];
    v15 = v0[95];
    v29 = v0[91];
    v30 = v0[88];
    v31 = v0[85];
    v32 = v0[82];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[79];
    v36 = v0[78];
    v37 = v0[74];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1DD999DE4(uint64_t a1)
{
  v2 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD999EE4, 0, 0);
}

uint64_t sub_1DD999EE4()
{
  v1 = v0[110];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[65];
  v0[113] = sub_1DD98A3E8(v0[112]);
  v0[114] = 0;

  __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v5 = *v4;
  v6 = sub_1DD913FF8();
  v8 = v7;
  v0[115] = v7;
  v9 = swift_task_alloc();
  v0[116] = v9;
  *v9 = v0;
  v9[1] = sub_1DD999FF8;
  v10 = v0[68];
  v11 = v0[66];

  return sub_1DD911340(v6, v8, v11, v3, v10, v2);
}

uint64_t sub_1DD999FF8(uint64_t a1)
{
  v2 = *(*v1 + 928);
  v3 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 936) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD99A118, 0, 0);
}

uint64_t sub_1DD99A118()
{
  v23 = v0;
  v1 = v0[117];
  v2 = v0[114];
  v3 = v0[113];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v1;
  sub_1DD911E90(v3, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v22);

  if (v2)
  {
  }

  else
  {
    v6 = v0[110];
    v7 = v0[107];
    v0[118] = v22;
    v8 = v6[45];
    v0[119] = v8;
    v10 = v6[14];
    v9 = v6[15];
    v11 = sub_1DDA14D60();
    v0[120] = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v0[121] = v13;
    v0[122] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

    v13(v7, 1, 1, v11);
    v0[123] = sub_1DDA14D40();

    v14 = sub_1DDA14D30();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v10;
    v15[5] = v9;
    v15[6] = v8;
    v17 = sub_1DD982A18(0, 0, v7, &unk_1DDA1B440, v15);
    v0[124] = v17;
    v18 = *(MEMORY[0x1E69E86C0] + 4);
    v19 = swift_task_alloc();
    v0[125] = v19;
    *v19 = v0;
    v19[1] = sub_1DD99A348;
    v20 = v0[109];
    v21 = v0[108];

    return MEMORY[0x1EEE6DA40](v20, v17, v21);
  }
}

uint64_t sub_1DD99A348()
{
  v1 = *(*v0 + 1000);
  v2 = *(*v0 + 992);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD99A460, 0, 0);
}

uint64_t sub_1DD99A460()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 872);

  v3 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 872);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 872), &qword_1ECD82FA0, &qword_1DDA18948);
    v47 = 0;
    v50 = 0;
  }

  else
  {
    v47 = *(v5 + 16);
    v50 = *(v5 + 24);

    sub_1DD9B4918(v5, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v6 = *(v0 + 560);
  __swift_project_boxed_opaque_existential_1((*(v0 + 880) + 176), *(*(v0 + 880) + 200));
  sub_1DD9890F8(*(v6 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), v0 + 240);
  v7 = *(v0 + 288);
  if (v7 == 255)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    v43 = 0;
    v44 = 0;
    v12 = -1;
  }

  else
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v12 = v7 & 1;
    v43 = *(v0 + 280);
    v44 = *(v0 + 272);
    if (v7)
    {

      v13 = v8;
      v46 = v9;
      goto LABEL_9;
    }
  }

  v14 = *(v0 + 560);
  sub_1DD90ADB4(v0 + 240, v0 + 296, &qword_1ECD83808, &qword_1DDA1B448);
  v46 = sub_1DDA13460();
  v13 = v15;
  sub_1DD90D378(v0 + 240, &qword_1ECD83808, &qword_1DDA1B448);
LABEL_9:
  v45 = v13;
  *(v0 + 233) = v12;
  *(v0 + 1056) = v43;
  *(v0 + 1048) = v44;
  *(v0 + 1040) = v8;
  *(v0 + 1032) = v9;
  *(v0 + 1024) = v11;
  *(v0 + 1016) = v10;
  *(v0 + 1008) = v13;
  v16 = *(v0 + 816);
  v41 = *(v0 + 784);
  v42 = *(v0 + 880);
  v17 = v11;
  v18 = *(v0 + 776);
  v38 = *(v0 + 768);
  v39 = *(v0 + 808);
  v19 = *(v0 + 760);
  v40 = *(v0 + 752);
  v20 = v10;
  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = v8;
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);
  v26 = v12;
  v27 = *(v0 + 560);
  *(v0 + 184) = v20;
  *(v0 + 192) = v17;
  *(v0 + 200) = v9;
  *(v0 + 208) = v23;
  *(v0 + 216) = v44;
  *(v0 + 224) = v43;
  *(v0 + 232) = v26;
  __swift_project_boxed_opaque_existential_1((v42 + 176), *(v42 + 200));
  sub_1DD983354(v47, v50, 0x73656C69662FLL, 0xE600000000000000, v16);

  v51 = *(v27 + 16);
  (*(v21 + 16))(v19, v24, v22);
  v28 = *(v18 + 16);
  *(v0 + 1064) = v28;
  *(v0 + 1072) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v39, v25, v38);
  v29 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v30 = (v40 + *(v18 + 80) + v29) & ~*(v18 + 80);
  v31 = swift_allocObject();
  *(v0 + 1080) = v31;
  (*(v21 + 32))(v31 + v29, v19, v22);
  (*(v18 + 32))(v31 + v30, v39, v38);
  v32 = swift_task_alloc();
  *(v0 + 1088) = v32;
  *v32 = v0;
  v32[1] = sub_1DD99A878;
  v33 = *(v0 + 944);
  v34 = *(v0 + 816);
  v35 = *(v0 + 800);
  v36 = *(v0 + 728);
  v49 = *(v0 + 568);

  return sub_1DD98D59C(v36, v35, v0 + 184, v34, v33, v51, v46, v45);
}

uint64_t sub_1DD99A878()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v16 = *v1;
  *(v2 + 1096) = v0;

  v4 = *(v2 + 1056);
  v5 = *(v2 + 1048);
  v6 = *(v2 + 1040);
  v7 = *(v2 + 1032);
  v8 = *(v2 + 1024);
  v9 = *(v2 + 1016);
  v10 = *(v2 + 1008);
  v11 = *(v2 + 944);
  v12 = *(v2 + 233);

  sub_1DD9B412C(v9, v8, v7, v6, v5, v4, v12);
  if (v15)
  {
    v13 = sub_1DD99ACE8;
  }

  else
  {
    v13 = sub_1DD99AA84;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1DD99AA84()
{
  v1 = v0[135];
  v2 = v0[100];
  v3 = v0[91];
  v4 = v0[71];
  v5 = v0[110] + 296;
  v6 = swift_task_alloc();
  v0[138] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = sub_1DD9B4128;
  v6[6] = v1;
  v6[7] = v4;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[139] = v8;
  *v8 = v0;
  v8[1] = sub_1DD99ABB4;
  v9 = v0[105];
  v10 = v0[103];

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD00000000000007CLL, 0x80000001DDA28980, sub_1DD9B42B4, v6, v10);
}

uint64_t sub_1DD99ABB4()
{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = v0;

  v5 = *(v2 + 1104);

  if (v0)
  {
    v6 = sub_1DD99B740;
  }

  else
  {
    v6 = sub_1DD99B36C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD99ACE8()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 816);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 1096);
  *(v0 + 1128) = v5;
  *(v0 + 488) = v5;
  v6 = v5;
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 40);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 96);
    if (v9)
    {
      v14 = *(v0 + 80);

      sub_1DD9B41AC(v9, v12, v11, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v15 = *(v0 + 24);

      sub_1DD9B41AC(0, v12, v11, MEMORY[0x1E69E7CF8]);
      v9 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1200) = v9;

    v16 = *(v9 + 16);
    *(v0 + 1208) = v16;
    if (v16)
    {
      v17 = *(v0 + 416);
      *(v0 + 1216) = v17;
      if (v17)
      {
        *(v0 + 1224) = 0;
        v18 = *(v0 + 1200);
        v19 = *(v18 + 48);
        *(v0 + 1232) = v19;
        v20 = *(v18 + 40);
        v21 = *(v18 + 32);

        v22 = swift_task_alloc();
        *(v0 + 1240) = v22;
        *v22 = v0;
        v22[1] = sub_1DD99C55C;

        return sub_1DD948CE8(v20, v19, v21, v17);
      }

      *(v0 + 1224) = v16 - 1;
      v24 = *(v0 + 1200);
    }
  }

  v25 = *(v0 + 1136);
  v26 = *(v0 + 592);
  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v27 = sub_1DDA13840();
  v28 = swift_dynamicCast();
  v29 = *(*(v27 - 8) + 56);
  v30 = *(v0 + 592);
  if (v28)
  {
    v31 = *(v27 - 8);
    v29(*(v0 + 592), 0, 1, v27);
    v32 = (*(v31 + 88))(v30, v27);
    v33 = *MEMORY[0x1E69DA4A0];
    (*(v31 + 8))(v30, v27);
    if (v32 == v33)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v34 = sub_1DDA14810();
      __swift_project_value_buffer(v34, qword_1ECDA20E0);
      v35 = sub_1DDA147F0();
      v36 = sub_1DDA14EE0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DD8F8000, v35, v36, "Attempted to upload a document to an expired session!", v37, 2u);
        MEMORY[0x1E12B8CE0](v37, -1, -1);
      }

      v38 = *(v0 + 976);
      v39 = *(v0 + 968);
      v40 = *(v0 + 960);
      v41 = *(v0 + 880);
      v42 = *(v0 + 856);

      v39(v42, 1, 1, v40);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v41;

      sub_1DD982718(0, 0, v42, &unk_1DDA1B460, v43);
    }
  }

  else
  {
    v29(*(v0 + 592), 1, 1, v27);
    sub_1DD90D378(v30, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v44 = *(v0 + 1128);
  v45 = *(v0 + 880);
  v46 = *(v0 + 736);
  v47 = *(v0 + 680);
  v48 = *(v0 + 672);
  v74 = *(v0 + 664);
  v49 = *(v0 + 656);
  v50 = *(v0 + 576);
  v51 = *(v0 + 568);
  swift_getErrorValue();
  v53 = *(v0 + 440);
  v52 = *(v0 + 448);
  v54 = *(v0 + 456);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v48 + 8))(v47, v74);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);
  v55 = *(v0 + 872);
  v56 = *(v0 + 856);
  v57 = *(v0 + 848);
  v58 = *(v0 + 840);
  v59 = *(v0 + 832);
  v60 = *(v0 + 816);
  v61 = *(v0 + 808);
  v62 = *(v0 + 800);
  v63 = *(v0 + 792);
  v64 = *(v0 + 760);
  v66 = *(v0 + 728);
  v67 = *(v0 + 704);
  v68 = *(v0 + 680);
  v69 = *(v0 + 656);
  v70 = *(v0 + 648);
  v71 = *(v0 + 640);
  v72 = *(v0 + 632);
  v73 = *(v0 + 624);
  v75 = *(v0 + 592);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1DD99B36C()
{
  v1 = v0[135];
  v2 = v0[106];
  v41 = v0[105];
  v43 = v0[104];
  v3 = v0[102];
  v4 = v0[100];
  v5 = v0[97];
  v6 = v0[96];
  v39 = v0[91];
  v7 = v0[90];
  v8 = v0[89];
  v9 = v0[87];
  v45 = v0[86];

  v10 = *(v5 + 8);
  v10(v3, v6);
  v10(v4, v6);
  (*(v7 + 8))(v39, v8);
  sub_1DD914958(v41, v2, &qword_1ECD83800, &qword_1DDA1B438);
  sub_1DD90ADB4(v2, v43, &qword_1ECD83800, &qword_1DDA1B438);
  if ((*(v9 + 48))(v43, 1, v45) == 1)
  {
    v11 = v0[110];
    v12 = v0[106];
    v13 = v0[92];
    v14 = v0[85];
    v15 = v0[84];
    v16 = v0[83];
    v17 = v0[82];
    v18 = v0[72];
    v19 = v0[71];
    sub_1DD90D378(v0[104], &qword_1ECD83800, &qword_1DDA1B438);
    sub_1DDA140F0();
    sub_1DDA14DF0();

    (*(v15 + 8))(v14, v16);
    sub_1DD90D378(v12, &qword_1ECD83800, &qword_1DDA1B438);
    sub_1DD9B41AC(v0[52], v0[53], v0[54], MEMORY[0x1E69E7D48]);
    v20 = v0[109];
    v21 = v0[107];
    v22 = v0[106];
    v23 = v0[105];
    v24 = v0[104];
    v25 = v0[102];
    v26 = v0[101];
    v27 = v0[100];
    v28 = v0[99];
    v29 = v0[95];
    v34 = v0[91];
    v35 = v0[88];
    v36 = v0[85];
    v37 = v0[82];
    v38 = v0[81];
    v40 = v0[80];
    v42 = v0[79];
    v44 = v0[78];
    v46 = v0[74];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = v0[110];
    v33 = v0[88];
    sub_1DD9B4978(v0[104], v33, type metadata accessor for UploadDocumentResponse);
    v0[143] = v32[45];
    v0[144] = v32[14];
    v0[145] = v32[15];
    v0[146] = v32[16];
    v0[147] = v32[17];
    v0[148] = *(v33 + 16);
    v0[149] = *(v33 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DD99BE00, v32, 0);
  }
}

uint64_t sub_1DD99B740()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  v9 = *(v4 + 8);
  v9(v2, v5);
  v9(v3, v5);
  (*(v7 + 8))(v6, v8);
  v10 = *(v0 + 1120);
  *(v0 + 1128) = v10;
  *(v0 + 488) = v10;
  v11 = v10;
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 24);
    v13 = *(v0 + 40);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 96);
    if (v14)
    {
      v19 = *(v0 + 80);

      sub_1DD9B41AC(v14, v17, v16, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v20 = *(v0 + 24);

      sub_1DD9B41AC(0, v17, v16, MEMORY[0x1E69E7CF8]);
      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1200) = v14;

    v21 = *(v14 + 16);
    *(v0 + 1208) = v21;
    if (v21)
    {
      v22 = *(v0 + 416);
      *(v0 + 1216) = v22;
      if (v22)
      {
        *(v0 + 1224) = 0;
        v23 = *(v0 + 1200);
        v24 = *(v23 + 48);
        *(v0 + 1232) = v24;
        v25 = *(v23 + 40);
        v26 = *(v23 + 32);

        v27 = swift_task_alloc();
        *(v0 + 1240) = v27;
        *v27 = v0;
        v27[1] = sub_1DD99C55C;

        return sub_1DD948CE8(v25, v24, v26, v22);
      }

      *(v0 + 1224) = v21 - 1;
      v29 = *(v0 + 1200);
    }
  }

  v30 = *(v0 + 1136);
  v31 = *(v0 + 592);
  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v32 = sub_1DDA13840();
  v33 = swift_dynamicCast();
  v34 = *(*(v32 - 8) + 56);
  v35 = *(v0 + 592);
  if (v33)
  {
    v36 = *(v32 - 8);
    v34(*(v0 + 592), 0, 1, v32);
    v37 = (*(v36 + 88))(v35, v32);
    v38 = *MEMORY[0x1E69DA4A0];
    (*(v36 + 8))(v35, v32);
    if (v37 == v38)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1DDA14810();
      __swift_project_value_buffer(v39, qword_1ECDA20E0);
      v40 = sub_1DDA147F0();
      v41 = sub_1DDA14EE0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1DD8F8000, v40, v41, "Attempted to upload a document to an expired session!", v42, 2u);
        MEMORY[0x1E12B8CE0](v42, -1, -1);
      }

      v43 = *(v0 + 976);
      v44 = *(v0 + 968);
      v45 = *(v0 + 960);
      v46 = *(v0 + 880);
      v47 = *(v0 + 856);

      v44(v47, 1, 1, v45);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v46;

      sub_1DD982718(0, 0, v47, &unk_1DDA1B460, v48);
    }
  }

  else
  {
    v34(*(v0 + 592), 1, 1, v32);
    sub_1DD90D378(v35, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v49 = *(v0 + 1128);
  v50 = *(v0 + 880);
  v51 = *(v0 + 736);
  v52 = *(v0 + 680);
  v53 = *(v0 + 672);
  v79 = *(v0 + 664);
  v54 = *(v0 + 656);
  v55 = *(v0 + 576);
  v56 = *(v0 + 568);
  swift_getErrorValue();
  v58 = *(v0 + 440);
  v57 = *(v0 + 448);
  v59 = *(v0 + 456);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v53 + 8))(v52, v79);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);
  v60 = *(v0 + 872);
  v61 = *(v0 + 856);
  v62 = *(v0 + 848);
  v63 = *(v0 + 840);
  v64 = *(v0 + 832);
  v65 = *(v0 + 816);
  v66 = *(v0 + 808);
  v67 = *(v0 + 800);
  v68 = *(v0 + 792);
  v69 = *(v0 + 760);
  v71 = *(v0 + 728);
  v72 = *(v0 + 704);
  v73 = *(v0 + 680);
  v74 = *(v0 + 656);
  v75 = *(v0 + 648);
  v76 = *(v0 + 640);
  v77 = *(v0 + 632);
  v78 = *(v0 + 624);
  v80 = *(v0 + 592);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_1DD99BE00()
{
  v1 = *(v0 + 880);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1DD99BE84, 0, 0);
}

uint64_t sub_1DD99BE84()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 120);
  *(v0 + 352) = *(v0 + 104);
  *(v0 + 368) = v2;
  *(v0 + 381) = *(v0 + 133);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 104);
  v3 = type metadata accessor for Credentials(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = *(v0 + 648);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 648), &qword_1ECD82D20, &qword_1DDA18CE0);
    v74 = 0;
    v77 = 0;
  }

  else
  {
    v6 = Credentials.credentialsID.getter();
    v74 = v7;
    v77 = v6;
    sub_1DD9B4918(v5, type metadata accessor for Credentials);
  }

  v8 = *(v0 + 640);
  sub_1DD90ADB4(*(v0 + 584), v8, &qword_1ECD82F60, &qword_1DDA18890);
  v9 = sub_1DDA13F50();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = *(v0 + 640);
  if (v11 == 1)
  {
    sub_1DD90D378(*(v0 + 640), &qword_1ECD82F60, &qword_1DDA18890);
    v64 = 0;
  }

  else
  {
    v64 = sub_1DDA13F40();
    (*(v10 + 8))(v12, v9);
  }

  v13 = *(*(v0 + 688) + 24);
  v88 = *(v0 + 704);
  v14 = (v88 + *(type metadata accessor for CreateSessionResponse(0) + 32) + v13);
  v15 = *v14;
  v16 = 0.0;
  if (v15 != 2)
  {
    v16 = v14[1];
  }

  v17 = *(v0 + 1192);
  v54 = v11 == 1;
  v55 = v15 == 2;
  v50 = *(v0 + 1168);
  v52 = *(v0 + 1160);
  v53 = *(v0 + 1184);
  v51 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v60 = *(v0 + 1064);
  v61 = *(v0 + 1072);
  v19 = *(v0 + 984);
  v20 = *(v0 + 976);
  v21 = *(v0 + 960);
  v58 = v21;
  v59 = *(v0 + 968);
  v86 = *(v0 + 880);
  v22 = *(v0 + 856);
  v80 = *(v0 + 848);
  v56 = *(v0 + 792);
  v57 = *(v0 + 768);
  v69 = *(v0 + 736);
  v68 = *(v0 + 680);
  v70 = *(v0 + 672);
  v72 = *(v0 + 664);
  v66 = *(v0 + 656);
  v82 = *(v0 + 632);
  v63 = *(v0 + 624);
  v65 = *(v0 + 616);
  v84 = *(v0 + 608);
  v62 = *(v0 + 600);
  v67 = *(v0 + 576);
  v23 = *(v0 + 568);
  v24 = *(v0 + 536);
  v25 = *(v0 + 528);
  v59(v22, 1, 1);

  v26 = sub_1DDA14D30();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  *(v27 + 32) = v50;
  *(v27 + 48) = v53;
  *(v27 + 56) = v17;
  *(v27 + 64) = v51;
  *(v27 + 72) = v52;
  *(v27 + 80) = v18;
  *(v27 + 88) = v25;
  *(v27 + 96) = v24;
  *(v27 + 104) = v77;
  *(v27 + 112) = v74;
  *(v27 + 120) = v64;
  *(v27 + 124) = v54;
  *(v27 + 128) = v16;
  *(v27 + 136) = v55;
  sub_1DD982718(0, 0, v22, &unk_1DDA1B468, v27);

  v29 = *v88;
  v30 = v88[1];
  v60(v56, v23, v57);

  sub_1DDA14150();
  v31 = v86[45];
  v32 = v86[15];
  v75 = v31;
  v78 = v86[14];
  (v59)(v22, 1, 1, v58);
  (*(v84 + 16))(v63, v82, v62);

  v33 = sub_1DDA14D30();
  v34 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v35 = (v65 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = MEMORY[0x1E69E85E0];
  (*(v84 + 32))(v36 + v34, v63, v62);
  v37 = (v36 + v35);
  *v37 = v78;
  v37[1] = v32;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = v75;
  sub_1DD982718(0, 0, v22, &unk_1DDA1B470, v36);

  sub_1DDA14130();
  sub_1DDA14DF0();

  (*(v70 + 8))(v68, v72);
  (*(v84 + 8))(v82, v62);
  sub_1DD90D378(v80, &qword_1ECD83800, &qword_1DDA1B438);
  sub_1DD9B4918(v88, type metadata accessor for UploadDocumentResponse);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);
  v38 = *(v0 + 872);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = *(v0 + 840);
  v42 = *(v0 + 832);
  v43 = *(v0 + 816);
  v44 = *(v0 + 808);
  v45 = *(v0 + 800);
  v46 = *(v0 + 792);
  v47 = *(v0 + 760);
  v71 = *(v0 + 728);
  v73 = *(v0 + 704);
  v76 = *(v0 + 680);
  v79 = *(v0 + 656);
  v81 = *(v0 + 648);
  v83 = *(v0 + 640);
  v85 = *(v0 + 632);
  v87 = *(v0 + 624);
  v89 = *(v0 + 592);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1DD99C55C()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD99C674, 0, 0);
}

uint64_t sub_1DD99C674()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1224);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 1224) = i;
    v5 = *(v0 + 1216);
    v3 += 24;
    if (v5)
    {
      v6 = *(v0 + 1200) + v3;
      v7 = *(v6 + 48);
      *(v0 + 1232) = v7;
      v8 = *(v6 + 40);
      v9 = *(v6 + 32);

      v10 = swift_task_alloc();
      *(v0 + 1240) = v10;
      *v10 = v0;
      v10[1] = sub_1DD99C55C;

      return sub_1DD948CE8(v8, v7, v9, v5);
    }
  }

  v12 = *(v0 + 1200);

  v13 = *(v0 + 1136);
  v14 = *(v0 + 592);
  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v15 = sub_1DDA13840();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  v18 = *(v0 + 592);
  if (v16)
  {
    v19 = *(v15 - 8);
    v17(*(v0 + 592), 0, 1, v15);
    v20 = (*(v19 + 88))(v18, v15);
    v21 = *MEMORY[0x1E69DA4A0];
    (*(v19 + 8))(v18, v15);
    if (v20 == v21)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v22 = sub_1DDA14810();
      __swift_project_value_buffer(v22, qword_1ECDA20E0);
      v23 = sub_1DDA147F0();
      v24 = sub_1DDA14EE0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DD8F8000, v23, v24, "Attempted to upload a document to an expired session!", v25, 2u);
        MEMORY[0x1E12B8CE0](v25, -1, -1);
      }

      v26 = *(v0 + 976);
      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 880);
      v30 = *(v0 + 856);

      v27(v30, 1, 1, v28);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v29;

      sub_1DD982718(0, 0, v30, &unk_1DDA1B460, v31);
    }
  }

  else
  {
    v17(*(v0 + 592), 1, 1, v15);
    sub_1DD90D378(v18, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v32 = *(v0 + 1128);
  v33 = *(v0 + 880);
  v34 = *(v0 + 736);
  v35 = *(v0 + 680);
  v36 = *(v0 + 672);
  v62 = *(v0 + 664);
  v37 = *(v0 + 656);
  v38 = *(v0 + 576);
  v39 = *(v0 + 568);
  swift_getErrorValue();
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v42 = *(v0 + 456);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v36 + 8))(v35, v62);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);
  v43 = *(v0 + 872);
  v44 = *(v0 + 856);
  v45 = *(v0 + 848);
  v46 = *(v0 + 840);
  v47 = *(v0 + 832);
  v48 = *(v0 + 816);
  v49 = *(v0 + 808);
  v50 = *(v0 + 800);
  v51 = *(v0 + 792);
  v52 = *(v0 + 760);
  v54 = *(v0 + 728);
  v55 = *(v0 + 704);
  v56 = *(v0 + 680);
  v57 = *(v0 + 656);
  v58 = *(v0 + 648);
  v59 = *(v0 + 640);
  v60 = *(v0 + 632);
  v61 = *(v0 + 624);
  v63 = *(v0 + 592);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1DD99CBCC(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD99CBEC, a2, 0);
}

uint64_t sub_1DD99CBEC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v1 + 232);
  sub_1DD9314B0(v2);
  swift_endAccess();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD99CDB8()
{
  v0 = sub_1DDA14140();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1DDA140B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  sub_1DDA14DF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DD99CF2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 376);
  v6 = (*(v1 + 368) + **(v1 + 368));
  v3 = *(*(v1 + 368) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1DD99D018;

  return v6();
}

uint64_t sub_1DD99D018()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DD99D10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D48, &qword_1DDA18630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = *MEMORY[0x1E69E8760];
  result = (*(v3 + 8))(v6, v2);
  if (a1 == v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    return sub_1DDA14D70();
  }

  return result;
}

uint64_t sub_1DD99D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99D304, v3, 0);
}

uint64_t sub_1DD99D304()
{
  v1 = v0[4];
  v2 = v0[5];
  if (sub_1DDA14C50())
  {
    v4 = v0[6];
    v0[8] = v4[45];
    v0[9] = v4[14];
    v0[10] = v4[15];

    return MEMORY[0x1EEE6DFA0](sub_1DD99D4C4, 0, 0);
  }

  else
  {
    v5 = v0[3];
    v6 = v0[4];
    v0[14] = v5;
    v8 = v0[5];
    v7 = v0[6];
    sub_1DD9B48D0(&qword_1ECD82F88, v3, type metadata accessor for Session);

    v9 = swift_task_alloc();
    v0[15] = v9;
    v9[2] = v7;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v8;
    v10 = *(MEMORY[0x1E69E88A0] + 4);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_1DD99D8C4;

    return MEMORY[0x1EEE6DD58]();
  }
}

uint64_t sub_1DD99D4C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1DDA14D40();

  v6 = sub_1DDA14D30();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v4;
  v9 = sub_1DD982D2C(0, 0, v3, &unk_1DDA1B370, v7);
  v0[11] = v9;
  v10 = *(MEMORY[0x1E69E86C0] + 4);
  v11 = swift_task_alloc();
  v0[12] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  *v11 = v0;
  v11[1] = sub_1DD99D64C;

  return MEMORY[0x1EEE6DA40](v0 + 2, v9, v12);
}

uint64_t sub_1DD99D64C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD99D764, 0, 0);
}

uint64_t sub_1DD99D764()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1DD99D788, v1, 0);
}

uint64_t sub_1DD99D788(uint64_t a1, uint64_t a2)
{
  v3 = v2[13];
  v2[14] = v3;
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[4];
  sub_1DD9B48D0(&qword_1ECD82F88, a2, type metadata accessor for Session);
  v7 = swift_task_alloc();
  v2[15] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  v8 = *(MEMORY[0x1E69E88A0] + 4);
  v9 = swift_task_alloc();
  v2[16] = v9;
  *v9 = v2;
  v9[1] = sub_1DD99D8C4;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1DD99D8C4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_1DD99DA58;
  }

  else
  {
    v6 = v2[14];
    v7 = v2[15];
    v8 = v2[6];

    v5 = sub_1DD99D9F4;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DD99D9F4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DD99DA58()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1DD99DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v8 = sub_1DDA13840();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_1DDA13830();
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();
  v14 = sub_1DDA14180();
  v6[21] = v14;
  v15 = *(v14 - 8);
  v6[22] = v15;
  v6[23] = *(v15 + 64);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99DCB8, a3, 0);
}

uint64_t sub_1DD99DCB8()
{
  v1 = v0[11];
  v0[29] = v1[45];
  v0[30] = v1[14];
  v0[31] = v1[15];
  return MEMORY[0x1EEE6DFA0](sub_1DD99DCF0, 0, 0);
}

uint64_t sub_1DD99DCF0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = sub_1DDA14D60();
  v0[32] = v5;
  v6 = *(v5 - 8);
  v0[33] = v6;
  v7 = *(v6 + 56);
  v0[34] = v7;
  v0[35] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v5);
  sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v4;
  v11 = sub_1DD982D2C(0, 0, v3, &unk_1DDA1B3A0, v9);
  v0[36] = v11;
  v12 = *(MEMORY[0x1E69E86C0] + 4);
  v13 = swift_task_alloc();
  v0[37] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  *v13 = v0;
  v13[1] = sub_1DD99DE9C;

  return MEMORY[0x1EEE6DA40](v0 + 9, v11, v14);
}

uint64_t sub_1DD99DE9C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD99DFB4, 0, 0);
}

uint64_t sub_1DD99DFB4()
{
  v1 = v0[11];
  v0[38] = v0[9];
  return MEMORY[0x1EEE6DFA0](sub_1DD99DFD8, v1, 0);
}

uint64_t sub_1DD99DFD8()
{
  v153 = v0;
  v1 = v0[38];
  v2 = v0[12];

  v4 = sub_1DD9B2EF0(v3);

  v5 = sub_1DD9B154C(v1, v4);

  v7 = sub_1DD9B2EF0(v6);

  v8 = sub_1DD9B154C(v2, v7);
  if (qword_1ECD827A8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v9 = v0[38];
  v10 = v0[12];
  v11 = sub_1DDA14810();
  __swift_project_value_buffer(v11, qword_1ECDA20E0);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14F00();

  if (os_log_type_enabled(v12, v13))
  {
    v135 = v13;
    log = v12;
    v133 = v8;
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v152[0] = v131;
    *v15 = 136315906;
    v16 = *(v14 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    v148 = v0;
    v138 = v5;
    v140 = v15;
    if (v16)
    {
      v18 = v0[22];
      v19 = v0[12];
      v150 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF0BC(0, v16, 0);
      v20 = v17;
      v21 = *(v18 + 16);
      v18 += 16;
      v145 = v21;
      v22 = v19 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v142 = *(v18 + 56);
      v23 = (v18 - 8);
      do
      {
        v24 = v148[25];
        v25 = v148[21];
        v145(v24, v22, v25);
        v26 = sub_1DDA14160();
        v28 = v27;
        (*v23)(v24, v25);
        v150 = v20;
        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DD9AF0BC((v29 > 1), v30 + 1, 1);
          v20 = v150;
        }

        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v22 += v142;
        --v16;
      }

      while (v16);
      v15 = v140;
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v61 = v148[38];
    v62 = MEMORY[0x1E12B7B70](v20, MEMORY[0x1E69E6158]);
    v64 = v63;

    v65 = sub_1DD93FA54(v62, v64, v152);

    *(v15 + 4) = v65;
    *(v15 + 12) = 2080;
    v66 = *(v61 + 16);
    v67 = v148[38];
    if (v66)
    {
      v68 = v148[22];
      v150 = v17;
      sub_1DD9AF0BC(0, v66, 0);
      v69 = v17;
      v70 = *(v68 + 16);
      v68 += 16;
      v146 = v70;
      v71 = v67 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
      v143 = *(v68 + 56);
      v72 = (v68 - 8);
      do
      {
        v73 = v148[25];
        v74 = v148[21];
        v146(v73, v71, v74);
        v75 = sub_1DDA14160();
        v77 = v76;
        (*v72)(v73, v74);
        v150 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1DD9AF0BC((v78 > 1), v79 + 1, 1);
          v69 = v150;
        }

        *(v69 + 16) = v79 + 1;
        v80 = v69 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v71 += v143;
        --v66;
      }

      while (v66);
      v81 = v148[38];

      v15 = v140;
    }

    else
    {
      v82 = v148[38];

      v69 = MEMORY[0x1E69E7CC0];
    }

    v83 = MEMORY[0x1E12B7B70](v69, MEMORY[0x1E69E6158]);
    v85 = v84;

    v86 = sub_1DD93FA54(v83, v85, v152);

    *(v15 + 14) = v86;
    *(v15 + 22) = 2080;
    v5 = v138;
    sub_1DD982410(v138);
    v87 = MEMORY[0x1E12B7B70]();
    v89 = v88;

    v90 = sub_1DD93FA54(v87, v89, v152);

    *(v15 + 24) = v90;
    *(v15 + 32) = 2080;
    v8 = v133;
    sub_1DD982410(v133);
    v91 = MEMORY[0x1E12B7B70]();
    v93 = v92;

    v94 = sub_1DD93FA54(v91, v93, v152);

    *(v15 + 34) = v94;
    _os_log_impl(&dword_1DD8F8000, log, v135, "Resolving registration for documents: %s\nCurrently attached documents: %s\nAdditions: %s\nDeletions: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v131, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);

    v0 = v148;
    if (!*(v138 + 16))
    {
      goto LABEL_24;
    }

LABEL_10:

    v33 = sub_1DDA147F0();
    v34 = sub_1DDA14EE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v150 = v36;
      *v35 = 136315138;
      sub_1DD982410(v5);
      v37 = MEMORY[0x1E12B7B70]();
      v39 = v38;

      v40 = sub_1DD93FA54(v37, v39, &v150);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1DD8F8000, v33, v34, "Received unknown document identifiers: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E12B8CE0](v36, -1, -1);
      MEMORY[0x1E12B8CE0](v35, -1, -1);
    }

    v42 = v0[19];
    v41 = v0[20];
    v44 = v0[17];
    v43 = v0[18];
    v45 = v0[15];
    v46 = v0[16];
    v150 = 0;
    v151 = 0xE000000000000000;
    sub_1DDA15070();

    v150 = 0xD000000000000027;
    v151 = 0x80000001DDA28900;
    v47 = sub_1DD982410(v5);

    v48 = MEMORY[0x1E12B7B70](v47, MEMORY[0x1E69E6158]);
    v50 = v49;

    MEMORY[0x1E12B7AB0](v48, v50);

    sub_1DDA13800();
    (*(v42 + 16))(v44, v41, v43);
    (*(v46 + 104))(v44, *MEMORY[0x1E69DA4C0], v45);
    sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    (*(v46 + 16))(v51, v44, v45);
    swift_willThrow();
    (*(v46 + 8))(v44, v45);
    (*(v42 + 8))(v41, v43);
    v53 = v0[27];
    v52 = v0[28];
    v55 = v0[25];
    v54 = v0[26];
    v56 = v0[24];
    v57 = v0[20];
    v58 = v0[17];

    v59 = v0[1];

    return v59();
  }

  v32 = v0[38];

  if (*(v5 + 16))
  {
    goto LABEL_10;
  }

LABEL_24:
  v95 = v0[33];
  v96 = v0[22];

  v97 = 0;
  v98 = v8 + 56;
  v99 = -1;
  v100 = -1 << *(v8 + 32);
  if (-v100 < 64)
  {
    v99 = ~(-1 << -v100);
  }

  v101 = v99 & *(v8 + 56);
  v102 = (63 - v100) >> 6;
  v130 = v8 + 56;
  v132 = v96;
  v128 = (v95 + 48);
  v127 = (v95 + 8);
  v129 = v102;
  v134 = v8;
  while (v101)
  {
LABEL_34:
    v106 = v0[34];
    v107 = v0[32];
    v108 = v0[27];
    loga = v108;
    v109 = v0[25];
    v144 = v0[26];
    v110 = v0[24];
    v111 = v0[21];
    v139 = v0[13];
    v141 = v0[14];
    v149 = v0[11];
    (*(v132 + 16))(v110, *(v8 + 48) + *(v132 + 72) * (__clz(__rbit64(v101)) | (v97 << 6)), v111);
    v106(v108, 1, 1, v107);
    v112 = *(v132 + 32);
    v112(v109, v110, v111);
    v113 = (*(v132 + 80) + 56) & ~*(v132 + 80);
    v114 = swift_allocObject();
    v114[2] = 0;
    v147 = v114 + 2;
    v114[3] = 0;
    v114[4] = v149;
    v114[5] = v139;
    v114[6] = v141;
    v112(v114 + v113, v109, v111);
    sub_1DD90ADB4(loga, v144, &qword_1ECD82D30, &qword_1DDA188D0);
    LODWORD(v109) = (*v128)(v144, 1, v107);

    if (v109 == 1)
    {
      sub_1DD90D378(v0[26], &qword_1ECD82D30, &qword_1DDA188D0);
    }

    else
    {
      v115 = v0[32];
      v116 = v0[26];
      sub_1DDA14D50();
      (*v127)(v116, v115);
    }

    if (*v147)
    {
      v117 = v114[3];
      v118 = *v147;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v119 = sub_1DDA14CD0();
      v5 = v120;
      swift_unknownObjectRelease();
    }

    else
    {
      v119 = 0;
      v5 = 0;
    }

    v8 = v134;
    v121 = *v0[10];

    if (v5 | v119)
    {
      v103 = v0 + 2;
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v119;
      v0[5] = v5;
    }

    else
    {
      v103 = 0;
    }

    v104 = v0[27];
    v101 &= v101 - 1;
    v0[6] = 1;
    v0[7] = v103;
    v0[8] = v121;
    swift_task_create();

    sub_1DD90D378(v104, &qword_1ECD82D30, &qword_1DDA188D0);
    v102 = v129;
    v98 = v130;
  }

  while (1)
  {
    v105 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v105 >= v102)
    {
      break;
    }

    v101 = *(v98 + 8 * v105);
    ++v97;
    if (v101)
    {
      v97 = v105;
      goto LABEL_34;
    }
  }

  v122 = v0[11];

  v124 = sub_1DD9B48D0(&qword_1ECD82F88, v123, type metadata accessor for Session);
  v125 = swift_task_alloc();
  v0[39] = v125;
  *v125 = v0;
  v125[1] = sub_1DD99EC90;
  v126 = v0[10];

  return sub_1DD99EF14(v122, v124);
}

uint64_t sub_1DD99EC90()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v12 = *v0;

  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = v1[25];
  v7 = v1[24];
  v8 = v1[20];
  v9 = v1[17];

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1DD99EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1DD9165BC;

  return sub_1DD99F468(a5, a6, a7);
}

uint64_t sub_1DD99EF14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1DDA14CD0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DD99EFA8, v4, v6);
}

uint64_t sub_1DD99EFA8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (sub_1DDA14DA0())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
    *v4 = v0;
    v4[1] = sub_1DD99F0E0;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1DD99F0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1DD99F32C;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1DD99F1FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1DD99F1FC()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1DDA14DA0())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
  *v7 = v0;
  v7[1] = sub_1DD99F0E0;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v11, v9, v8);
}

uint64_t sub_1DD99F32C()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1DDA14DA0())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
    *v7 = v0;
    v7[1] = sub_1DD99F0E0;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_1DD99F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_1DDA134E0();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = sub_1DDA14180();
  v4[28] = v9;
  v10 = *(v9 - 8);
  v4[29] = v10;
  v4[30] = *(v10 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v4[34] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99F63C, 0, 0);
}

uint64_t sub_1DD99F63C()
{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v2[45];
  v0[36] = v3;
  v4 = v2[14];
  v0[37] = v4;
  v5 = v2[15];
  v0[38] = v5;
  v6 = sub_1DDA14D60();
  v0[39] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[40] = v8;
  v0[41] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  v0[42] = sub_1DDA14D40();

  v9 = sub_1DDA14D30();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v3;
  v12 = sub_1DD982A18(0, 0, v1, &unk_1DDA1B350, v10);
  v0[43] = v12;
  v13 = *(MEMORY[0x1E69E86C0] + 4);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_1DD99F7D8;
  v16 = v0[34];
  v15 = v0[35];

  return MEMORY[0x1EEE6DA40](v15, v12, v16);
}

uint64_t sub_1DD99F7D8()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD99F8F0, 0, 0);
}

uint64_t sub_1DD99F8F0()
{
  v30 = v0;
  v1 = v0[35];
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v23 = sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    v0[45] = v3;
    v4 = *(v1 + 24);
    v0[46] = v4;

    sub_1DD9B4918(v1, type metadata accessor for SessionRegistry.SessionInfo);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v5 = v0[32];
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[22];
    v9 = sub_1DDA14810();
    v0[47] = v9;
    __swift_project_value_buffer(v9, qword_1ECDA20E0);
    v10 = *(v6 + 16);
    v0[48] = v10;
    v0[49] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v8, v7);

    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14F00();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[32];
    v16 = v0[28];
    v15 = v0[29];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      v27 = v3;
      v18 = sub_1DDA14160();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_1DD93FA54(v18, v20, &v29);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1DD93FA54(v27, v4, &v29);
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Deleting document:%s from session:%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v22 = v0[23];
    v0[19] = MEMORY[0x1E69E7CC8];
    v0[50] = __swift_project_boxed_opaque_existential_1((v22 + 176), *(v22 + 200));
    v23 = sub_1DD99FBF8;
    v24 = v22;
    v25 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1DD99FBF8()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DD99FC7C, 0, 0);
}

uint64_t sub_1DD99FC7C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[2];
  v4 = sub_1DD913FF8();
  v6 = v5;
  v0[51] = v5;
  sub_1DD9291B0((v0 + 2));
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = swift_task_alloc();
  v0[52] = v9;
  *v9 = v0;
  v9[1] = sub_1DD99FD60;
  v10 = v0[50];
  v11 = v0[20];

  return sub_1DD911340(v4, v6, v7, v8, v11, v2);
}

uint64_t sub_1DD99FD60(uint64_t a1)
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 424) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD99FE80, 0, 0);
}

uint64_t sub_1DD99FE80()
{
  v29 = v0;
  v1 = v0[53];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v4;
  sub_1DD911E90(v1, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v28);

  v0[19] = v28;
  v0[12] = 0xD000000000000018;
  v0[13] = 0x80000001DDA262D0;
  v0[14] = v3;
  v0[15] = v2;
  v6 = sub_1DDA13230();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_1DDA13220();
  sub_1DD9B2808();
  v9 = sub_1DDA13210();
  v11 = v10;

  v12 = v0[46];
  v27 = v0[45];
  v14 = v0[26];
  v13 = v0[27];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];

  sub_1DDA14B50();
  v18 = sub_1DDA14B30();
  v20 = v19;
  sub_1DD909D28(v9, v11);
  sub_1DD9C70C8(v18, v20, 0xD000000000000022, 0x80000001DDA26990);
  __swift_project_boxed_opaque_existential_1((v15 + 176), *(v15 + 200));
  v21 = sub_1DDA14160();
  sub_1DD983948(v27, v12, v21, v22, v14);

  v23 = v0[19];
  v0[54] = v23;
  v24 = swift_task_alloc();
  v0[55] = v24;
  *v24 = v0;
  v24[1] = sub_1DD9A0134;
  v25 = v0[26];

  return sub_1DD950D48(v25, 0, 0xF000000000000000, 2, v23, 0, 1, 0);
}

uint64_t sub_1DD9A0134(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 440);
  v7 = *v3;
  v5[56] = a1;
  v5[57] = a2;
  v5[58] = v2;

  v8 = v4[54];

  if (v2)
  {
    v9 = sub_1DD9A0654;
  }

  else
  {

    v9 = sub_1DD9A028C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD9A028C()
{
  v52 = v0;
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(*(v0 + 184) + 304);
  sub_1DD9B3634();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 448), *(v0 + 456));
    v5 = *(v0 + 280);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    v9 = *(v0 + 216);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 376), qword_1ECDA20F8);
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14ED0();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);
    if (v13)
    {
      v49 = *(v0 + 192);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315138;
      v21 = sub_1DDA14B70();
      v47 = v16;
      v23 = sub_1DD93FA54(v21, v22, &v51);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Decoded response: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
      sub_1DD909D28(v15, v14);

      (*(v17 + 8))(v47, v49);
    }

    else
    {
      sub_1DD909D28(*(v0 + 448), *(v0 + 456));

      (*(v17 + 8))(v16, v18);
    }

    v25 = *(v0 + 384);
    v24 = *(v0 + 392);
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 312);
    v29 = *(v0 + 304);
    v30 = *(v0 + 288);
    v44 = *(v0 + 296);
    v45 = *(v0 + 280);
    v43 = *(v0 + 264);
    v31 = *(v0 + 248);
    v42 = *(v0 + 240);
    v32 = *(v0 + 224);
    v33 = *(v0 + 232);
    v46 = *(v0 + 256);
    v48 = *(v0 + 216);
    v50 = *(v0 + 208);
    v34 = *(v0 + 176);
    (*(v0 + 320))();
    v25(v31, v34, v32);

    v35 = sub_1DDA14D30();
    v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v37 = (v42 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E85E0];
    *(v38 + 16) = v35;
    *(v38 + 24) = v39;
    (*(v33 + 32))(v38 + v36, v31, v32);
    v40 = (v38 + v37);
    *v40 = v44;
    v40[1] = v29;
    *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
    sub_1DD982718(0, 0, v43, &unk_1DDA1B358, v38);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1DD9A0654()
{
  v1 = v0[58];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[27];
  (*(v0[25] + 8))(v0[26], v0[24]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD9A0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[92] = v8;
  v9[91] = v47;
  v9[90] = v46;
  v9[89] = v45;
  v9[88] = v44;
  v9[87] = a8;
  v9[86] = a7;
  v9[85] = a6;
  v9[84] = a5;
  v9[83] = a4;
  v9[82] = a3;
  v9[81] = a2;
  v9[80] = a1;
  v12 = sub_1DDA13830();
  v9[93] = v12;
  v13 = *(v12 - 8);
  v9[94] = v13;
  v14 = *(v13 + 64) + 15;
  v9[95] = swift_task_alloc();
  v15 = sub_1DDA13840();
  v9[96] = v15;
  v16 = *(v15 - 8);
  v9[97] = v16;
  v17 = *(v16 + 64) + 15;
  v9[98] = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v9[99] = v18;
  v9[100] = *(v18 + 64);
  v9[101] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8);
  v9[102] = v19;
  v20 = *(v19 - 8);
  v9[103] = v20;
  v9[104] = *(v20 + 64);
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83650, &qword_1DDA1B1C0) - 8) + 64) + 15;
  v9[107] = swift_task_alloc();
  v22 = sub_1DDA136B0();
  v9[108] = v22;
  v23 = *(v22 - 8);
  v9[109] = v23;
  v24 = *(v23 + 64) + 15;
  v9[110] = swift_task_alloc();
  v25 = type metadata accessor for Instrumentation();
  v9[111] = v25;
  v26 = *(v25 - 8);
  v9[112] = v26;
  v9[113] = *(v26 + 64);
  v9[114] = swift_task_alloc();
  v9[115] = swift_task_alloc();
  v27 = sub_1DDA134E0();
  v9[116] = v27;
  v28 = *(v27 - 8);
  v9[117] = v28;
  v29 = *(v28 + 64) + 15;
  v9[118] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83658, &qword_1DDA1B1C8);
  v9[119] = v30;
  v31 = *(v30 - 8);
  v9[120] = v31;
  v32 = *(v31 + 64) + 15;
  v9[121] = swift_task_alloc();
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v33 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  v9[124] = swift_task_alloc();
  v34 = sub_1DDA14810();
  v9[125] = v34;
  v35 = *(v34 - 8);
  v9[126] = v35;
  v36 = *(v35 + 64) + 15;
  v9[127] = swift_task_alloc();
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8);
  v9[128] = v37;
  v9[129] = *(v37 + 64);
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v9[133] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v9[134] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v9[135] = swift_task_alloc();
  v9[136] = swift_task_alloc();
  v41 = swift_task_alloc();
  v9[137] = v41;
  *v41 = v9;
  v41[1] = sub_1DD9A0D1C;

  return sub_1DD99D264(v46, a2, a3);
}

uint64_t sub_1DD9A0D1C()
{
  v2 = *(*v1 + 1096);
  v3 = *v1;
  v3[138] = v0;

  if (v0)
  {
    v4 = v3[136];
    v5 = v3[135];
    v6 = v3[133];
    v7 = v3[132];
    v8 = v3[131];
    v9 = v3[130];
    v10 = v3[127];
    v11 = v3[124];
    v16 = v3[123];
    v17 = v3[122];
    v18 = v3[121];
    v19 = v3[118];
    v20 = v3[115];
    v21 = v3[114];
    v22 = v3[110];
    v23 = v3[107];
    v24 = v3[106];
    v25 = v3[105];
    v26 = v3[101];
    v27 = v3[98];
    v12 = v3[95];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[92];

    return MEMORY[0x1EEE6DFA0](sub_1DD9A0F94, v15, 0);
  }
}

uint64_t sub_1DD9A0F94()
{
  v1 = v0[92];
  v0[139] = v1[45];
  v0[140] = v1[14];
  v0[141] = v1[15];
  return MEMORY[0x1EEE6DFA0](sub_1DD9A0FCC, 0, 0);
}

uint64_t sub_1DD9A0FCC()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[133];
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1DDA14D40();

  v6 = sub_1DDA14D30();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v3;
  v9 = sub_1DD982A18(0, 0, v4, &unk_1DDA18960, v7);
  v0[142] = v9;
  v10 = *(MEMORY[0x1E69E86C0] + 4);
  v11 = swift_task_alloc();
  v0[143] = v11;
  *v11 = v0;
  v11[1] = sub_1DD9A1148;
  v12 = v0[136];
  v13 = v0[134];

  return MEMORY[0x1EEE6DA40](v12, v9, v13);
}

uint64_t sub_1DD9A1148()
{
  v1 = *(*v0 + 1144);
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 736);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A1274, v3, 0);
}

uint64_t sub_1DD9A1274()
{
  v1 = v0[135];
  sub_1DD90ADB4(v0[136], v1, &qword_1ECD82FA0, &qword_1DDA18948);
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[135];
  if (v3 == 1)
  {
    sub_1DD90D378(v0[135], &qword_1ECD82FA0, &qword_1DDA18948);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_1DD9B4918(v4, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v0[145] = v6;
  v0[144] = v5;
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_1DD9A13E0;
  v8 = v0[141];
  v9 = v0[140];
  v10 = v0[92];
  v11 = v0[86];
  v12 = v0[82];
  v13 = v0[81];

  return sub_1DD9AE07C(v9, v8, v13, v12, v11);
}

uint64_t sub_1DD9A13E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1168);
  v5 = *(*v2 + 736);
  v7 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A14FC, v5, 0);
}

uint64_t sub_1DD9A14FC()
{
  v54 = *(v0 + 1176);
  v56 = *(v0 + 1184);
  v58 = *(v0 + 1104);
  v1 = *(v0 + 1056);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v48 = *(v0 + 712);
  v50 = *(v0 + 696);
  v52 = *(v0 + 704);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  swift_beginAccess();
  sub_1DD928DF4(v2 + 216, v0 + 296);
  v8 = *(v0 + 312);
  *(v0 + 456) = *(v0 + 296);
  *(v0 + 472) = v8;
  *(v0 + 485) = *(v0 + 325);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
  sub_1DD983C08(v7, v6, v54, v56, v5, v4, v50, v52, v0 + 16, v48, *(&v48 + 1), v3);
  if (v58)
  {
    v9 = *(v0 + 1184);
    v10 = *(v0 + 1160);
    v11 = *(v0 + 1088);
    v12 = *(v0 + 1056);

    sub_1DD90D378(v12, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v11, &qword_1ECD82FA0, &qword_1DDA18948);
    v13 = *(v0 + 1088);
    v14 = *(v0 + 1080);
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 1048);
    v18 = *(v0 + 1040);
    v19 = *(v0 + 1016);
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    v22 = *(v0 + 976);
    v42 = *(v0 + 968);
    v43 = *(v0 + 944);
    v44 = *(v0 + 920);
    v45 = *(v0 + 912);
    v46 = *(v0 + 880);
    v47 = *(v0 + 856);
    v49 = *(v0 + 848);
    v51 = *(v0 + 840);
    v53 = *(v0 + 808);
    v55 = *(v0 + 784);
    v57 = *(v0 + 760);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 1184);

    v26 = type metadata accessor for Session.ResponseInfo();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    *(v0 + 1192) = v29;
    swift_defaultActor_initialize();
    v29[14] = 0;
    v29[15] = 0;
    v30 = MEMORY[0x1E69E7CC8];
    v29[16] = MEMORY[0x1E69E7CC8];
    v29[17] = v30;
    v29[18] = v30;
    if (qword_1ECD827B8 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1016);
    v32 = *(v0 + 1008);
    v33 = *(v0 + 1000);
    v34 = *(v0 + 736);
    v35 = *(v0 + 656);
    v36 = __swift_project_value_buffer(v33, qword_1ECDA2110);
    *(v0 + 1200) = v36;
    (*(v32 + 16))(v31, v36, v33);
    sub_1DDA14770();
    v37 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
    *(v29 + v37) = sub_1DD9402A0(MEMORY[0x1E69E7CC0]);

    v38 = swift_task_alloc();
    *(v0 + 1208) = v38;
    *v38 = v0;
    v38[1] = sub_1DD9A194C;
    v39 = *(v0 + 736);
    v40 = *(v0 + 656);
    v41 = *(v0 + 648);

    return (sub_1DD9774B8)("FetchAuthenticationHeaders", 26, 2, v36, v39, v41, v40);
  }
}

void sub_1DD9A194C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1208);
  v5 = *v2;
  *(*v2 + 1216) = a1;

  v6 = *(v3 + 736);
  v7 = *(v3 + 656);

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DD9A1ABC, v6, 0);
  }
}

uint64_t sub_1DD9A1ABC()
{
  if (*(__swift_project_boxed_opaque_existential_1((v0[92] + 176), *(v0[92] + 200)) + 48) == 1)
  {
    v1 = v0[92];
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
    v4 = &unk_1DDA1B210;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
  }

  v5 = v0[82];
  v6 = swift_allocObject();
  v0[153] = v6;
  v6[2] = v3;
  v7 = (v6 + 2);
  v6[3] = v4;
  v6[4] = v2;

  v8 = swift_task_alloc();
  v0[154] = v8;
  *v8 = v0;
  v8[1] = sub_1DD9A1C3C;
  v9 = v0[150];
  v10 = v0[82];
  v11 = v0[81];

  return sub_1DD9791E4("FetchTicketingHeaders", 21, 2, v9, v7, v11, v10);
}

void sub_1DD9A1C3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1232);
  v5 = *v2;
  v3[155] = a1;
  v3[156] = v1;

  if (v1)
  {
    v6 = v3[82];
  }

  else
  {
    v7 = v3[92];
    v8 = v3[82];

    MEMORY[0x1EEE6DFA0](sub_1DD9A1D8C, v7, 0);
  }
}

uint64_t sub_1DD9A1D8C()
{
  v22 = v0;
  v1 = v0[156];
  v2 = v0[152];
  v3 = sub_1DD98A3E8(v0[155]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v3;
  sub_1DD911E90(v2, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v21);
  v5 = v0[152];
  if (v1)
  {
  }

  else
  {
    v7 = v0[82];
    v8 = v0[81];

    v0[78] = v21;
    v0[67] = 0xD000000000000018;
    v0[68] = 0x80000001DDA262D0;
    v0[69] = v8;
    v0[70] = v7;
    v9 = sub_1DDA13230();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    sub_1DDA13220();
    sub_1DD9B2808();
    v12 = sub_1DDA13210();
    v14 = v13;

    v15 = v0[149];
    v16 = v0[124];
    v17 = v0[82];

    sub_1DDA14B50();
    v18 = sub_1DDA14B30();
    v20 = v19;
    sub_1DD909D28(v12, v14);
    sub_1DD9C70C8(v18, v20, 0xD000000000000022, 0x80000001DDA26990);

    return MEMORY[0x1EEE6DFA0](sub_1DD9A1FC0, v15, 0);
  }
}

uint64_t sub_1DD9A1FC0()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 736);
  sub_1DD9AD638("StreamingPromptSessionCreated", 29, 2);
  sub_1DD9AD638("StreamingPromptTimeToFirstToken", 31, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A2050, v2, 0);
}

uint64_t sub_1DD9A2050()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[118];
  v4 = v0[87];
  __swift_project_boxed_opaque_existential_1((v0[92] + 176), *(v0[92] + 200));
  sub_1DD983354(v2, v1, 0x736E6F707365722FLL, 0xEA00000000007365, v3);

  v5 = v0[78];
  v0[157] = v5;
  v6 = sub_1DDA13A60();
  v8 = v7;
  v9 = swift_task_alloc();
  v0[158] = v9;
  *v9 = v0;
  v9[1] = sub_1DD9A2190;
  v10 = v0[122];
  v11 = v0[118];

  return sub_1DD98A6C0(v10, v11, v0 + 2, v5, v6, v8 & 1);
}

uint64_t sub_1DD9A2190()
{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v4 = *v1;
  v2[159] = v0;

  v5 = v2[157];
  if (v0)
  {
    v6 = v2[92];
    (*(v2[117] + 8))(v2[118], v2[116]);

    v7 = sub_1DD9A2B24;
    v8 = v6;
  }

  else
  {
    v9 = v2[155];
    v10 = v2[118];
    v11 = v2[117];
    v12 = v2[116];
    v13 = v2[92];

    (*(v11 + 8))(v10, v12);
    v7 = sub_1DD9A234C;
    v8 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1DD9A234C()
{
  v1 = *(v0 + 920);
  v69 = *(v0 + 888);
  v70 = *(v0 + 1048);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v71 = *(v0 + 856);
  v73 = *(v0 + 1272);
  v67 = *(v0 + 736);
  v5 = *(v0 + 664);
  (*(*(v0 + 960) + 32))(*(v0 + 984), *(v0 + 976), *(v0 + 952));
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v6(v1, v2, v4);
  v7 = sub_1DDA14840();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1DDA14830();
  (*(v3 + 8))(v2, v4);
  *(v1 + *(v69 + 20)) = v10;
  sub_1DD928DF4(v67 + 216, v0 + 376);
  v11 = *(v0 + 392);
  *(v0 + 496) = *(v0 + 376);
  *(v0 + 512) = v11;
  *(v0 + 525) = *(v0 + 405);
  sub_1DD9122F0(v70);
  sub_1DD9291B0(v0 + 376);
  v12 = swift_task_alloc();
  *(v12 + 16) = v1;
  *(v12 + 24) = v70;
  sub_1DDA14820();
  if (v73)
  {

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

  v64 = *(v0 + 1192);
  v65 = *(v0 + 1224);
  v54 = *(v0 + 1088);
  v55 = *(v0 + 1080);
  v56 = *(v0 + 1064);
  v66 = *(v0 + 1056);
  v13 = *(v0 + 1048);
  v14 = *(v0 + 1040);
  v72 = v14;
  v41 = *(v0 + 1024);
  v42 = *(v0 + 1032);
  v57 = *(v0 + 1016);
  v58 = *(v0 + 992);
  v15 = *(v0 + 984);
  v50 = v15;
  v59 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v51 = v17;
  v18 = *(v0 + 952);
  v60 = *(v0 + 944);
  v74 = *(v0 + 920);
  v68 = *(v0 + 912);
  v44 = *(v0 + 904);
  v40 = *(v0 + 896);
  v61 = *(v0 + 880);
  v19 = *(v0 + 856);
  v52 = *(v0 + 832);
  v46 = *(v0 + 848);
  v47 = *(v0 + 824);
  v48 = *(v0 + 816);
  v49 = *(v0 + 840);
  v20 = *(v0 + 808);
  v38 = *(v0 + 792);
  v39 = *(v0 + 800);
  v62 = *(v0 + 784);
  v63 = *(v0 + 760);
  v43 = *(v0 + 736);
  v45 = *(v0 + 720);
  v36 = *(v0 + 672);
  v53 = *(v0 + 640);

  v21 = sub_1DDA14250();
  (*(*(v21 - 8) + 56))(v19, v37, 1, v21);
  sub_1DD90D378(v19, &qword_1ECD83650, &qword_1DDA1B1C0);
  sub_1DD90D378(v13, &qword_1ECD82D20, &qword_1DDA18CE0);
  (*(v17 + 16))(v16, v15, v18);
  sub_1DD90ADB4(v66, v14, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD90ADB4(v36, v20, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD9B4C84(v74, v68, type metadata accessor for Instrumentation);
  v22 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v23 = (v42 + *(v38 + 80) + v22) & ~*(v38 + 80);
  v24 = (v39 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v40 + 80) + v24 + 8) & ~*(v40 + 80);
  v26 = (v44 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v43;
  sub_1DD914958(v72, v27 + v22, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD914958(v20, v27 + v23, &qword_1ECD82F60, &qword_1DDA18890);
  *(v27 + v24) = v64;
  sub_1DD9B4978(v68, v27 + v25, type metadata accessor for Instrumentation);
  *(v27 + v26) = v45;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DD90D2A4(&qword_1ECD83668, &qword_1ECD83658, &qword_1DDA1B1C8);
  sub_1DDA154D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83670, &qword_1DDA1B1E8);
  v28 = swift_allocBox();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83678, &qword_1DDA1B1F0);
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  (*(v47 + 16))(v49, v46, v48);
  v32 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  (*(v47 + 32))(v33 + v32, v49, v48);

  sub_1DDA14E30();
  sub_1DD9B285C(v0 + 16);

  (*(v47 + 8))(v46, v48);
  (*(v51 + 8))(v50, v18);
  sub_1DD90D378(v66, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD90D378(v54, &qword_1ECD82FA0, &qword_1DDA18948);

  sub_1DD9B4918(v74, type metadata accessor for Instrumentation);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1DD9A2B24()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  *(v0 + 632) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (!swift_dynamicCast())
  {
    v63 = *(v0 + 1240);
    v64 = *(v0 + 1224);
    v65 = *(v0 + 1192);
    v66 = *(v0 + 1088);
    v67 = *(v0 + 1056);

    sub_1DD9B285C(v0 + 16);

    sub_1DD90D378(v67, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v66, &qword_1ECD82FA0, &qword_1DDA18948);
    goto LABEL_43;
  }

  v5 = (*(*(v0 + 776) + 88))(*(v0 + 784), *(v0 + 768));
  if (v5 != *MEMORY[0x1E69DA4A8])
  {
    v68 = *(v0 + 1240);
    v69 = *(v0 + 1224);
    v70 = *(v0 + 1192);
    v71 = *(v0 + 1088);
    v72 = *(v0 + 1056);
    v73 = *(v0 + 784);
    v74 = *(v0 + 776);
    v75 = *(v0 + 768);

    sub_1DD9B285C(v0 + 16);

    sub_1DD90D378(v72, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v71, &qword_1ECD82FA0, &qword_1DDA18948);
    (*(v74 + 8))(v73, v75);
LABEL_43:

    v123 = *(v0 + 1272);
LABEL_45:
    v86 = *(v0 + 1088);
    v87 = *(v0 + 1080);
    v88 = *(v0 + 1064);
    v89 = *(v0 + 1056);
    v90 = *(v0 + 1048);
    v91 = *(v0 + 1040);
    v92 = *(v0 + 1016);
    v93 = *(v0 + 992);
    v94 = *(v0 + 984);
    v95 = *(v0 + 976);
    v99 = *(v0 + 968);
    v101 = *(v0 + 944);
    v103 = *(v0 + 920);
    v105 = *(v0 + 912);
    v107 = *(v0 + 880);
    v109 = *(v0 + 856);
    v111 = *(v0 + 848);
    v113 = *(v0 + 840);
    v115 = *(v0 + 808);
    v118 = *(v0 + 784);
    v121 = *(v0 + 760);

    v96 = *(v0 + 8);

    return v96();
  }

  v122 = v5;
  v6 = v0 + 568;
  v7 = *(v0 + 1240);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);
  v10 = *(v0 + 768);
  v11 = *(v0 + 760);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);

  (*(v9 + 96))(v8, v10);
  (*(v12 + 32))(v11, v8, v13);
  v14 = v7;
  v15 = 0;
  v18 = *(v7 + 64);
  v17 = v7 + 64;
  v16 = v18;
  v19 = -1;
  v20 = -1 << *(v14 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & v16;
  v22 = (63 - v20) >> 6;
  v23 = "CodeInterpreterTicketRequestId";
  v24 = "FileUploadTicketRequestId";
  v25 = "ImageGeneratorTicketRequestId";
  v26 = "StreamingPromptTimeToFirstToken";
  while (v21)
  {
LABEL_11:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v29 = (*(v14 + 56) + 24 * (v28 | (v15 << 6)));
    v30 = *v29;
    if (*v29 < 0 && (v30 & 0xC000) == 0)
    {
      v106 = v23;
      v108 = v14;
      v31 = v29[1];
      v32 = v29[2];
      v33 = *v29;
      v34 = 0xD000000000000019;
      if (v30 == 2)
      {
        v34 = 0xD00000000000001ELL;
      }

      v102 = v25;
      v104 = v24;
      if (v33 == 2)
      {
        v35 = v24;
      }

      else
      {
        v35 = v25;
      }

      v36 = 0xD00000000000001DLL;
      if (!v33)
      {
        v36 = 0xD00000000000001ELL;
      }

      v100 = v26;
      if (v33)
      {
        v37 = v26;
      }

      else
      {
        v37 = v23;
      }

      if (v30 <= 1u)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }

      v119 = v38;
      if (v30 <= 1u)
      {
        v39 = v37;
      }

      else
      {
        v39 = v35;
      }

      v40 = *(v0 + 760);
      v41 = v39 | 0x8000000000000000;
      v110 = v31;
      sub_1DD940DF4();
      v114 = v32;

      v112 = v6;
      v98 = sub_1DDA13820();
      v43 = v42;
      v44 = *v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *v43;
      v124 = *v43;
      v97 = v43;
      *v43 = 0x8000000000000000;
      v116 = v41;
      v48 = sub_1DD96AC38(v119, v41);
      v49 = v46[2];
      v50 = (v47 & 1) == 0;
      result = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v52 = v47;
      if (v46[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v6 = v112;
          if (v47)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = sub_1DD9C9D00();
          v6 = v112;
          if (v52)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1DD9C838C(result, isUniquelyReferenced_nonNull_native);
        result = sub_1DD96AC38(v119, v116);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_49;
        }

        v48 = result;
        v6 = v112;
        if (v52)
        {
LABEL_36:

          v54 = v124;
          v55 = (v124[7] + 16 * v48);
          v56 = v55[1];
          *v55 = v110;
          v55[1] = v114;

          goto LABEL_40;
        }
      }

      v54 = v124;
      v124[(v48 >> 6) + 8] |= 1 << v48;
      v57 = (v124[6] + 16 * v48);
      *v57 = v119;
      v57[1] = v116;
      v58 = (v124[7] + 16 * v48);
      *v58 = v110;
      v58[1] = v114;
      v59 = v124[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_53;
      }

      v124[2] = v61;
LABEL_40:
      v62 = *v97;
      *v97 = v54;

      v98(v6, 0);
      sub_1DD94A02C();
      v23 = v106;
      v14 = v108;
      v25 = v102;
      v24 = v104;
      v26 = v100;
    }
  }

  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v76 = *(v0 + 1240);
      v77 = *(v0 + 1192);
      v117 = *(v0 + 1088);
      v120 = *(v0 + 1224);
      v78 = *(v0 + 1056);
      v79 = *(v0 + 776);
      v80 = *(v0 + 768);
      v81 = *(v0 + 760);
      v82 = *(v0 + 752);
      v83 = *(v0 + 744);

      sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      v85 = v84;
      (*(v82 + 16))(v84, v81, v83);
      (*(v79 + 104))(v85, v122, v80);
      swift_willThrow();
      sub_1DD9B285C(v0 + 16);

      (*(v82 + 8))(v81, v83);
      sub_1DD90D378(v78, &qword_1ECD82D20, &qword_1DDA18CE0);
      sub_1DD90D378(v117, &qword_1ECD82FA0, &qword_1DDA18948);

      goto LABEL_45;
    }

    v21 = *(v17 + 8 * v27);
    ++v15;
    if (v21)
    {
      v15 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_49:

  return sub_1DDA15500();
}

uint64_t sub_1DD9A32B8(char a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9A32DC, 0, 0);
}

uint64_t sub_1DD9A32DC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD9A3394, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1DD9A3394()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  swift_beginAccess();
  v3 = *(v1 + 232);
  sub_1DD914294(v2);
  swift_endAccess();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD9A3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[172] = v63;
  v8[171] = a8;
  v8[170] = a7;
  v8[169] = a6;
  v8[168] = a5;
  v8[167] = a4;
  v8[166] = a3;
  v8[165] = a2;
  v8[164] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50) - 8) + 64) + 15;
  v8[173] = swift_task_alloc();
  v10 = type metadata accessor for ChatChunk.RateLimits(0);
  v8[174] = v10;
  v11 = *(v10 - 8);
  v8[175] = v11;
  v12 = *(v11 + 64) + 15;
  v8[176] = swift_task_alloc();
  v8[177] = swift_task_alloc();
  v8[178] = swift_task_alloc();
  v13 = sub_1DDA13880();
  v8[179] = v13;
  v14 = *(v13 - 8);
  v8[180] = v14;
  v15 = *(v14 + 64) + 15;
  v8[181] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v8[182] = swift_task_alloc();
  v17 = *(*(type metadata accessor for FileGeneratorCall.File(0) - 8) + 64) + 15;
  v8[183] = swift_task_alloc();
  v18 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v8[184] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[185] = swift_task_alloc();
  v8[186] = swift_task_alloc();
  v20 = *(*(sub_1DDA13960() - 8) + 64) + 15;
  v8[187] = swift_task_alloc();
  v21 = type metadata accessor for FileGeneratorFile(0);
  v8[188] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v8[189] = swift_task_alloc();
  v23 = type metadata accessor for MessageContent(0);
  v8[190] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v8[191] = swift_task_alloc();
  v25 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v8[192] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v8[193] = swift_task_alloc();
  v27 = *(*(sub_1DDA13990() - 8) + 64) + 15;
  v8[194] = swift_task_alloc();
  v28 = *(*(type metadata accessor for ImageGeneratorCall.Image(0) - 8) + 64) + 15;
  v8[195] = swift_task_alloc();
  v8[196] = swift_task_alloc();
  v29 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v8[197] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v8[198] = swift_task_alloc();
  v8[199] = swift_task_alloc();
  v8[200] = swift_task_alloc();
  v8[201] = swift_task_alloc();
  v8[202] = swift_task_alloc();
  v31 = *(*(sub_1DDA13930() - 8) + 64) + 15;
  v8[203] = swift_task_alloc();
  v32 = sub_1DDA13910();
  v8[204] = v32;
  v33 = *(v32 - 8);
  v8[205] = v33;
  v34 = *(v33 + 64) + 15;
  v8[206] = swift_task_alloc();
  v8[207] = swift_task_alloc();
  v35 = sub_1DDA14180();
  v8[208] = v35;
  v36 = *(v35 - 8);
  v8[209] = v36;
  v37 = *(v36 + 64) + 15;
  v8[210] = swift_task_alloc();
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83690, &qword_1DDA1B218) - 8) + 64) + 15;
  v8[213] = swift_task_alloc();
  v8[214] = swift_task_alloc();
  v39 = sub_1DDA134E0();
  v8[215] = v39;
  v40 = *(v39 - 8);
  v8[216] = v40;
  v41 = *(v40 + 64) + 15;
  v8[217] = swift_task_alloc();
  v42 = type metadata accessor for TextAnnotation.URLCitation(0);
  v8[218] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v8[219] = swift_task_alloc();
  v44 = type metadata accessor for TextAnnotation.Type(0);
  v8[220] = v44;
  v45 = *(*(v44 - 8) + 64) + 15;
  v8[221] = swift_task_alloc();
  v46 = *(*(type metadata accessor for TextAnnotation(0) - 8) + 64) + 15;
  v8[222] = swift_task_alloc();
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83698, &qword_1DDA1B220) - 8) + 64) + 15;
  v8[223] = swift_task_alloc();
  v8[224] = swift_task_alloc();
  v8[225] = swift_task_alloc();
  v48 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v8[226] = v48;
  v49 = *(*(v48 - 8) + 64) + 15;
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  v8[229] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83650, &qword_1DDA1B1C0) - 8) + 64) + 15;
  v8[230] = swift_task_alloc();
  v8[231] = swift_task_alloc();
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  v8[236] = swift_task_alloc();
  v8[237] = swift_task_alloc();
  v51 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v8[238] = v51;
  v52 = *(*(v51 - 8) + 64) + 15;
  v8[239] = swift_task_alloc();
  v8[240] = swift_task_alloc();
  v53 = *(*(sub_1DDA13900() - 8) + 64) + 15;
  v8[241] = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v8[242] = swift_task_alloc();
  v55 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  v8[243] = swift_task_alloc();
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v8[244] = swift_task_alloc();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v8[245] = SessionResponse;
  v58 = *(*(SessionResponse - 8) + 64) + 15;
  v8[246] = swift_task_alloc();
  v59 = type metadata accessor for ChatChunk(0);
  v8[247] = v59;
  v60 = *(*(v59 - 8) + 64) + 15;
  v8[248] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A3CA0, 0, 0);
}

uint64_t sub_1DD9A3CA0()
{
  v494 = v0;
  v1 = *(v0 + 1976);
  sub_1DD9B4C84(*(v0 + 1320), *(v0 + 1984), type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v2 = *(v0 + 1968);
      v3 = *(v0 + 1952);
      v4 = *(v0 + 1336);
      v5 = *(v0 + 1328);
      sub_1DD9B4978(*(v0 + 1984), v2, type metadata accessor for CreateSessionResponse);
      v6 = v5[45];
      v8 = v5[14];
      v7 = v5[15];
      v9 = v5[18];
      v10 = v5[19];
      v11 = v5[16];
      v12 = v5[17];
      v476 = v11;
      v13 = v2[1];
      v468 = v7;
      v471 = *v2;
      sub_1DD90ADB4(v4, v3, &qword_1ECD82D20, &qword_1DDA18CE0);
      v14 = type metadata accessor for Credentials(0);
      v15 = (*(*(v14 - 8) + 48))(v3, 1, v14);
      v16 = *(v0 + 1952);
      v486 = v9;
      v482 = v8;
      v17 = v12;
      if (v15 == 1)
      {
        sub_1DD90D378(v16, &qword_1ECD82D20, &qword_1DDA18CE0);
        v462 = 0;
        v465 = 0;
      }

      else
      {
        v164 = Credentials.credentialsID.getter();
        v462 = v165;
        v465 = v164;
        sub_1DD9B4918(v16, type metadata accessor for Credentials);
      }

      v166 = *(v0 + 1944);
      sub_1DD90ADB4(*(v0 + 1344), v166, &qword_1ECD82F60, &qword_1DDA18890);
      v167 = sub_1DDA13F50();
      v168 = *(v167 - 8);
      v169 = (*(v168 + 48))(v166, 1, v167);
      v170 = *(v0 + 1944);
      if (v169 == 1)
      {
        sub_1DD90D378(*(v0 + 1944), &qword_1ECD82F60, &qword_1DDA18890);
        v460 = 0;
      }

      else
      {
        v460 = sub_1DDA13F40();
        (*(v168 + 8))(v170, v167);
      }

      v171 = *(v0 + 1968);
      v172 = (v171 + *(*(v0 + 1960) + 32));
      v173 = *v172;
      v174 = 0.0;
      if (v173 != 2)
      {
        v174 = v172[1];
      }

      v457 = v173 == 2;
      v175 = v169 == 1;
      v176 = *(v0 + 1936);
      v177 = sub_1DDA14D60();
      (*(*(v177 - 8) + 56))(v176, 1, 1, v177);
      sub_1DDA14D40();

      v178 = sub_1DDA14D30();
      v179 = swift_allocObject();
      v180 = MEMORY[0x1E69E85E0];
      *(v179 + 16) = v178;
      *(v179 + 24) = v180;
      *(v179 + 32) = v476;
      *(v179 + 40) = v17;
      *(v179 + 48) = v471;
      *(v179 + 56) = v13;
      *(v179 + 64) = v482;
      *(v179 + 72) = v468;
      *(v179 + 80) = v6;
      *(v179 + 88) = v486;
      *(v179 + 96) = v10;
      *(v179 + 104) = v465;
      *(v179 + 112) = v462;
      *(v179 + 120) = v460;
      *(v179 + 124) = v175;
      *(v179 + 128) = v174;
      *(v179 + 136) = v457;
      sub_1DD982718(0, 0, v176, &unk_1DDA1B250, v179);

      v157 = type metadata accessor for CreateSessionResponse;
      v156 = v171;
      goto LABEL_64;
    case 2u:
      v80 = *(v0 + 1984);
      v27 = *(v0 + 1352);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[3];
      *(v0 + 408) = v80[2];
      *(v0 + 424) = v83;
      *(v0 + 376) = v81;
      *(v0 + 392) = v82;
      v84 = v80[4];
      v85 = v80[5];
      v86 = v80[6];
      *(v0 + 488) = *(v80 + 14);
      *(v0 + 456) = v85;
      *(v0 + 472) = v86;
      *(v0 + 440) = v84;
      v87 = *(v0 + 384);
      *(v0 + 1992) = *(v0 + 376);
      *(v0 + 2000) = v87;
      v28 = sub_1DD9A6E50;
      goto LABEL_74;
    case 4u:
      v45 = *(v0 + 1984);
      v46 = *(v45 + 32);
      v47 = *(v45 + 48);
      v48 = *(v45 + 16);
      *(v0 + 136) = *v45;
      *(v0 + 184) = v47;
      *(v0 + 168) = v46;
      *(v0 + 152) = v48;
      v50 = *(v45 + 80);
      v49 = *(v45 + 96);
      v51 = *(v45 + 112);
      *(v0 + 200) = *(v45 + 64);
      *(v0 + 248) = v51;
      *(v0 + 232) = v49;
      *(v0 + 216) = v50;
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v52 = sub_1DDA14810();
      __swift_project_value_buffer(v52, qword_1ECDA20E0);
      sub_1DD9B2CA0(v0 + 136, v0 + 256);
      v53 = sub_1DDA147F0();
      v54 = sub_1DDA14F00();
      sub_1DD9B2CFC(v0 + 136);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v493[0] = v56;
        *v55 = 136315138;
        *(v0 + 1304) = *(v0 + 224);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A8, &qword_1DDA1B238);
        v57 = sub_1DDA14B70();
        v59 = sub_1DD93FA54(v57, v58, v493);

        *(v55 + 4) = v59;
        _os_log_impl(&dword_1DD8F8000, v53, v54, "Received response notices: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1E12B8CE0](v56, -1, -1);
        MEMORY[0x1E12B8CE0](v55, -1, -1);
      }

      v61 = *(v0 + 232);
      v60 = *(v0 + 240);
      *(v0 + 2512) = v61;
      *(v0 + 2520) = v60;
      *(v0 + 2528) = *(v0 + 248);
      if (v61)
      {
        sub_1DD9B2E6C(v61);
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 2536) = v61;
      v232 = *(v61 + 16);
      *(v0 + 2544) = v232;
      if (!v232)
      {
        goto LABEL_93;
      }

      v233 = *(v0 + 1376);
      swift_beginAccess();
      v234 = 0;
      v235 = 0;
      v236 = *(v0 + 1376);
      do
      {
        *(v0 + 2552) = v235;
        v237 = v236[2];
        *(v0 + 2560) = v237;
        if (v237)
        {
          v252 = *(v0 + 2536);
          *(v0 + 2568) = v236[4];
          v253 = v236[3];
          v254 = v252 + v234;
          v255 = *(v254 + 48);
          *(v0 + 2576) = v255;
          v256 = *(v254 + 40);
          v257 = *(v254 + 32);

          sub_1DD9B2D50(v237);
          v258 = swift_task_alloc();
          *(v0 + 2584) = v258;
          *v258 = v0;
          v258[1] = sub_1DD9ABAB4;

          return sub_1DD948CE8(v256, v255, v257, v237);
        }

        ++v235;
        v234 += 24;
      }

      while (v235 != *(v0 + 2544));
      v238 = *(v0 + 2536);
LABEL_93:

      v239 = *(v0 + 1376);
      swift_beginAccess();
      v240 = *(v239 + 16);
      if (!v240)
      {
        sub_1DD9B41AC(*(v0 + 2512), *(v0 + 2520), *(v0 + 2528), MEMORY[0x1E69E7CF8]);
        v259 = *(v0 + 216);
        if (v259 && *(v259 + 16))
        {
          v260 = *(v0 + 1936);
          v261 = *(v0 + 1328);
          v262 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
          v263 = (v259 + ((*(v262 + 80) + 32) & ~*(v262 + 80)));
          v265 = *v263;
          v264 = v263[1];
          v266 = v261[45];
          v268 = v261[14];
          v267 = v261[15];
          v269 = sub_1DDA14D60();
          (*(*(v269 - 8) + 56))(v260, 1, 1, v269);
          sub_1DDA14D40();

          v270 = sub_1DDA14D30();
          v271 = swift_allocObject();
          v272 = MEMORY[0x1E69E85E0];
          v271[2] = v270;
          v271[3] = v272;
          v271[4] = v265;
          v271[5] = v264;
          v271[6] = v268;
          v271[7] = v267;
          v271[8] = v266;
          sub_1DD982718(0, 0, v260, &unk_1DDA1B230, v271);
        }

        v273 = MEMORY[0x1E69E7CC0];
        v274 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
        v275 = *(v0 + 224);
        if (v275)
        {
          v276 = *(v0 + 224);

          sub_1DD9B2CFC(v0 + 136);
          v277 = *(v275 + 16);
          if (v277)
          {
            v481 = v274;
            v493[0] = v273;
            sub_1DD9AF17C(0, v277, 0);
            v273 = v493[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
            v278 = (v275 + 56);
            while (1)
            {
              v279 = *(v278 - 3);
              v280 = *(v278 - 2);
              v281 = *(v278 - 1);
              v282 = *v278;
              *(v0 + 648) = 25705;
              *(v0 + 656) = 0xE200000000000000;
              *(v0 + 664) = v279;
              *(v0 + 672) = v280;
              *(v0 + 680) = 0x6567617373656DLL;
              *(v0 + 688) = 0xE700000000000000;
              *(v0 + 696) = v281;
              *(v0 + 704) = v282;
              v283 = sub_1DDA151C0();

              v284 = *(v0 + 648);
              v285 = *(v0 + 656);
              v286 = *(v0 + 664);
              v287 = *(v0 + 672);

              v288 = sub_1DD96AC38(v284, v285);
              if (v289)
              {
                break;
              }

              *(v283 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v288;
              v290 = (v283[6] + 16 * v288);
              *v290 = v284;
              v290[1] = v285;
              v291 = (v283[7] + 16 * v288);
              *v291 = v286;
              v291[1] = v287;
              v292 = v283[2];
              v293 = __OFADD__(v292, 1);
              v294 = v292 + 1;
              if (v293)
              {
                goto LABEL_176;
              }

              v283[2] = v294;
              v295 = *(v0 + 680);
              v296 = *(v0 + 688);
              v297 = *(v0 + 696);
              v298 = *(v0 + 704);

              v299 = sub_1DD96AC38(v295, v296);
              if (v300)
              {
                break;
              }

              *(v283 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v299;
              v301 = (v283[6] + 16 * v299);
              *v301 = v295;
              v301[1] = v296;
              v302 = (v283[7] + 16 * v299);
              *v302 = v297;
              v302[1] = v298;
              v303 = v283[2];
              v293 = __OFADD__(v303, 1);
              v304 = v303 + 1;
              if (v293)
              {
                goto LABEL_176;
              }

              v283[2] = v304;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
              swift_arrayDestroy();
              v493[0] = v273;
              v306 = *(v273 + 16);
              v305 = *(v273 + 24);
              if (v306 >= v305 >> 1)
              {
                sub_1DD9AF17C((v305 > 1), v306 + 1, 1);
                v273 = v493[0];
              }

              *(v273 + 16) = v306 + 1;
              *(v273 + 8 * v306 + 32) = v283;
              v278 += 4;
              if (!--v277)
              {

                v274 = v481;
                goto LABEL_150;
              }
            }

            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            swift_once();
LABEL_5:
            v18 = sub_1DDA14810();
            __swift_project_value_buffer(v18, qword_1ECDA20E0);
            v19 = sub_1DDA147F0();
            v20 = sub_1DDA14F00();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&dword_1DD8F8000, v19, v20, "Received file generator call in progress", v21, 2u);
              MEMORY[0x1E12B8CE0](v21, -1, -1);
            }

            v22 = *(v0 + 1880);
            v23 = *(v0 + 1360);

            v24 = *(v23 + *(type metadata accessor for Instrumentation() + 20));
            v25 = swift_task_alloc();
            *(v25 + 16) = 0;
            *(v25 + 24) = v23;
            sub_1DDA14820();
            v228 = *(v0 + 1880);
            v229 = *(v0 + 1352);

            v230 = sub_1DDA14250();
            (*(*(v230 - 8) + 56))(v228, 0, 1, v230);
            sub_1DD90D378(v228, &qword_1ECD83650, &qword_1DDA1B1C0);
            v231 = sub_1DD9A986C;
            goto LABEL_97;
          }

LABEL_150:
          *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
          *(v0 + 792) = v273;
          sub_1DD940DE4((v0 + 792), (v0 + 824));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v493[0] = v274;
          sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          v274 = v493[0];
        }

        else
        {
          sub_1DD9B2CFC(v0 + 136);
        }

        *(v0 + 2624) = v274;
        v27 = *(v0 + 1352);
        v28 = sub_1DD9AC8D0;
        goto LABEL_74;
      }

      v241 = *(v239 + 32);
      if (*(v0 + 2512))
      {
        v242 = *(v0 + 2528);

        if (v242)
        {
          v243 = *(v0 + 2528);
          v244 = *(v0 + 2520);
          goto LABEL_120;
        }
      }

      else
      {
      }

      v244 = 0;
      v243 = 0xE000000000000000;
LABEL_120:
      *(v0 + 2608) = v243;
      *(v0 + 2600) = v240;
      *(v0 + 2592) = v241;
      v310 = swift_task_alloc();
      *(v0 + 2616) = v310;
      *v310 = v0;
      v310[1] = sub_1DD9AC2E8;

      return sub_1DD949B9C(v244, v243);
    case 5u:
      v126 = *(v0 + 1920);
      v127 = *(v0 + 1904);
      v128 = *(v0 + 1352);
      sub_1DD9B4978(*(v0 + 1984), v126, type metadata accessor for ChatChunk.ChoiceResource);
      v129 = (v126 + *(v127 + 20));
      *(v0 + 2024) = *v129;
      *(v0 + 2032) = v129[1];
      *(v0 + 2040) = *v126;
      v130 = sub_1DD9A76B8;
      goto LABEL_144;
    case 9u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1912), type metadata accessor for ChatChunk.ChoiceResource);
      if (sub_1DD9CE658())
      {
        goto LABEL_45;
      }

      v249 = *(v0 + 1912);
      v250 = *(*(v0 + 1904) + 20);
      *(v0 + 2648) = v250;
      v251 = (v249 + v250);
      if (*(v249 + v250 + 16) == 1)
      {
      }

      else
      {
        v311 = sub_1DDA15440();

        if ((v311 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      v312 = v251[4];
      *(v0 + 2440) = v312;
      v313 = v251[5];
      *(v0 + 2448) = v313;
      *(v0 + 2456) = v251[6];
      v314 = v251[7];
      *(v0 + 2464) = v314;
      if (v314 == 1)
      {
LABEL_125:
        v315 = *(v0 + 1728);
        v316 = *(v0 + 1720);
        v317 = *(v0 + 1456);
        v318 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
        v319 = type metadata accessor for ChatChunk.Choice(0);
        sub_1DD90ADB4(v251 + *(v319 + 32), v317, &qword_1ECD82CE0, &qword_1DDA18700);
        if ((*(v315 + 48))(v317, 1, v316) == 1)
        {
          sub_1DD90D378(*(v0 + 1456), &qword_1ECD82CE0, &qword_1DDA18700);
        }

        else
        {
          v322 = *(v0 + 1728);
          v323 = *(v0 + 1720);
          v324 = *(v0 + 1456);
          v325 = sub_1DDA13440();
          v327 = v326;
          (*(v322 + 8))(v324, v323);
          *(v0 + 880) = MEMORY[0x1E69E6158];
          *(v0 + 856) = v325;
          *(v0 + 864) = v327;
          sub_1DD940DE4((v0 + 856), (v0 + 888));
          v328 = swift_isUniquelyReferenced_nonNull_native();
          v493[0] = v318;
          sub_1DD9CBCE4((v0 + 888), 0x61756E69746E6F43, 0xEF4C52556E6F6974, v328);
        }

        *(v0 + 2472) = v318;
        v27 = *(v0 + 1352);
        v28 = sub_1DD9AB518;
LABEL_74:
        v94 = v28;
        goto LABEL_145;
      }

      if (v313 <= 1)
      {
        if (v313 <= 1)
        {
          goto LABEL_153;
        }
      }

      else
      {
        if (v313 == 2 || v313 == 3)
        {
          goto LABEL_153;
        }

        if (v313 == 4)
        {
          v320 = 0xD00000000000001CLL;
          v321 = 0x80000001DDA28010;
LABEL_162:
          if (v320 == 0xD00000000000001CLL && 0x80000001DDA28010 == v321)
          {
            sub_1DD928DC0(v312, v313);

            goto LABEL_165;
          }

LABEL_153:
          v360 = sub_1DDA15440();
          sub_1DD928DC0(v312, v313);

          if (v360)
          {
LABEL_165:
            v361 = *(v0 + 1856);
            v362 = *(v0 + 1360);
            v363 = *(v362 + *(type metadata accessor for Instrumentation() + 20));
            v364 = swift_task_alloc();
            *(v364 + 16) = 2;
            *(v364 + 24) = v362;
            sub_1DDA14820();
            v365 = *(v0 + 1856);
            v229 = *(v0 + 1352);

            v366 = sub_1DDA14250();
            (*(*(v366 - 8) + 56))(v365, 0, 1, v366);
            sub_1DD90D378(v365, &qword_1ECD83650, &qword_1DDA1B1C0);
            v231 = sub_1DD9AAF5C;
            goto LABEL_97;
          }

          if (v313 <= 1)
          {
            if (v313 <= 1)
            {
              goto LABEL_168;
            }
          }

          else
          {
            switch(v313)
            {
              case 2:
                goto LABEL_168;
              case 3:
                v367 = 0xD00000000000001BLL;
                v368 = 0x80000001DDA28030;
LABEL_171:
                if (v367 == 0xD00000000000001BLL && 0x80000001DDA28030 == v368)
                {
                  sub_1DD928DC0(v312, v313);

LABEL_174:
                  v375 = *(v0 + 1848);
                  v376 = *(v0 + 1360);
                  v377 = *(v376 + *(type metadata accessor for Instrumentation() + 20));
                  v378 = swift_task_alloc();
                  *(v378 + 16) = 2;
                  *(v378 + 24) = v376;
                  sub_1DDA14820();
                  v379 = *(v0 + 1848);
                  v229 = *(v0 + 1352);

                  v380 = sub_1DDA14250();
                  (*(*(v380 - 8) + 56))(v379, 0, 1, v380);
                  sub_1DD90D378(v379, &qword_1ECD83650, &qword_1DDA1B1C0);
                  v231 = sub_1DD9AB4A0;
LABEL_97:
                  v94 = v231;
                  v27 = v229;
LABEL_145:

                  return MEMORY[0x1EEE6DFA0](v94, v27, 0);
                }

LABEL_168:
                v369 = sub_1DDA15440();
                sub_1DD928DC0(v312, v313);

                if ((v369 & 1) == 0)
                {
                  v370 = sub_1DDA13840();
                  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
                  v485 = *(v0 + 2456);
                  v492 = *(v0 + 2440);
                  swift_allocError();
                  v372 = v371;
                  v493[0] = 0;
                  v493[1] = 0xE000000000000000;
                  sub_1DDA15070();
                  *(v0 + 1288) = 0;
                  *(v0 + 1296) = 0xE000000000000000;
                  MEMORY[0x1E12B7AB0](0xD000000000000044, 0x80000001DDA28610);
                  *(v0 + 920) = v492;
                  *(v0 + 936) = v485;
                  sub_1DDA15160();
                  v373 = *(v0 + 1288);
                  v374 = *(v0 + 1296);
                  sub_1DDA13800();
                  (*(*(v370 - 8) + 104))(v372, *MEMORY[0x1E69DA480], v370);
LABEL_45:
                  v131 = *(v0 + 1984);
                  v132 = *(v0 + 1968);
                  v133 = *(v0 + 1952);
                  v134 = *(v0 + 1944);
                  v135 = *(v0 + 1936);
                  v136 = *(v0 + 1928);
                  v137 = *(v0 + 1920);
                  v138 = *(v0 + 1912);
                  v381 = *(v0 + 1896);
                  v382 = *(v0 + 1888);
                  v383 = *(v0 + 1880);
                  v384 = *(v0 + 1872);
                  v386 = *(v0 + 1864);
                  v388 = *(v0 + 1856);
                  v390 = *(v0 + 1848);
                  v392 = *(v0 + 1840);
                  v394 = *(v0 + 1832);
                  v396 = *(v0 + 1824);
                  v398 = *(v0 + 1816);
                  v400 = *(v0 + 1800);
                  v402 = *(v0 + 1792);
                  v404 = *(v0 + 1784);
                  v406 = *(v0 + 1776);
                  v408 = *(v0 + 1768);
                  v410 = *(v0 + 1752);
                  v412 = *(v0 + 1736);
                  v414 = *(v0 + 1712);
                  v416 = *(v0 + 1704);
                  v418 = *(v0 + 1696);
                  v420 = *(v0 + 1688);
                  v422 = *(v0 + 1680);
                  v424 = *(v0 + 1656);
                  v426 = *(v0 + 1648);
                  v428 = *(v0 + 1624);
                  v430 = *(v0 + 1616);
                  v432 = *(v0 + 1608);
                  v434 = *(v0 + 1600);
                  v436 = *(v0 + 1592);
                  v438 = *(v0 + 1584);
                  v440 = *(v0 + 1568);
                  v442 = *(v0 + 1560);
                  v444 = *(v0 + 1552);
                  v446 = *(v0 + 1544);
                  v448 = *(v0 + 1528);
                  v450 = *(v0 + 1512);
                  v452 = *(v0 + 1496);
                  v454 = *(v0 + 1488);
                  v456 = *(v0 + 1480);
                  v459 = *(v0 + 1464);
                  v463 = *(v0 + 1456);
                  v466 = *(v0 + 1448);
                  v469 = *(v0 + 1424);
                  v472 = *(v0 + 1416);
                  v477 = *(v0 + 1408);
                  v483 = *(v0 + 1384);
                  swift_willThrow();
                  sub_1DD9B4918(v138, type metadata accessor for ChatChunk.ChoiceResource);

                  v139 = *(v0 + 8);
LABEL_67:

                  return v139();
                }

                goto LABEL_174;
              case 4:
                goto LABEL_168;
            }
          }

          v367 = v312;
          v368 = v313;
          goto LABEL_171;
        }
      }

      v320 = v312;
      v321 = v313;
      goto LABEL_162;
    case 0xAu:
      v62 = *(v0 + 1984);
      v63 = *(v62 + 16);
      *(v0 + 2048) = v63;
      v64 = *(v62 + 24);
      *(v0 + 2056) = v64;
      v65 = *(v62 + 32);
      *(v0 + 2064) = v65;
      v66 = *(v62 + 40);
      *(v0 + 2072) = v66;
      v67 = *(v62 + 48);
      *(v0 + 2080) = v67;
      v68 = *(v62 + 56);
      *(v0 + 2088) = v68;
      v69 = *(v62 + 64);
      if (v69 != 1)
      {
        goto LABEL_31;
      }

      v70 = *(v0 + 1352);
      *(v0 + 2096) = *(v62 + 8);
      sub_1DD96E3E4(v63, v64, v65, v66, v67, v68, 1u);
      v71 = sub_1DD9A7B28;
      goto LABEL_34;
    case 0xBu:
      v88 = *(v0 + 1984);
      v63 = *(v88 + 16);
      v64 = *(v88 + 24);
      v65 = *(v88 + 32);
      v66 = *(v88 + 40);
      v67 = *(v88 + 48);
      v68 = *(v88 + 56);
      v69 = *(v88 + 64);
      if (v69 == 4 && (v64 | v63 | v65 | v66 | v67 | v68) == 0)
      {
        v307 = *(v0 + 1840);
        v308 = *(v0 + 1360);
        v309 = *(v308 + *(type metadata accessor for Instrumentation() + 20));
        *(swift_task_alloc() + 16) = v308;
        sub_1DDA14820();
        v357 = *(v0 + 1840);

        v358 = sub_1DDA14250();
        (*(*(v358 - 8) + 56))(v357, 0, 1, v358);
        sub_1DD90D378(v357, &qword_1ECD83650, &qword_1DDA1B1C0);
      }

      else
      {
LABEL_31:
        sub_1DD96E310(v63, v64, v65, v66, v67, v68, v69);
      }

      goto LABEL_65;
    case 0xCu:
      v90 = *(v0 + 1544);
      v91 = *(v0 + 1536);
      v92 = *(v0 + 1528);
      v93 = *(v0 + 1520);
      sub_1DD9B4978(*(v0 + 1984), v90, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      sub_1DD9B4C84(v90 + *(v91 + 28), v92, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v70 = *(v0 + 1352);
        sub_1DD9B4978(*(v0 + 1528), *(v0 + 1512), type metadata accessor for FileGeneratorFile);
        v71 = sub_1DD9AA558;
LABEL_34:
        v94 = v71;
        v27 = v70;
        goto LABEL_145;
      }

      v181 = *(v0 + 1528);
      sub_1DD9B4918(*(v0 + 1544), type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v157 = type metadata accessor for MessageContent;
      v156 = v181;
LABEL_64:
      sub_1DD9B4918(v156, v157);
LABEL_65:
      v182 = *(v0 + 1312);
      goto LABEL_66;
    case 0xEu:
      v155 = *(v0 + 1984);
      v27 = *(v0 + 1352);
      *(v0 + 2104) = *v155;
      *(v0 + 2112) = v155[1];
      *(v0 + 2120) = v155[2];
      *(v0 + 2128) = v155[3];
      *(v0 + 2136) = v155[4];
      v28 = sub_1DD9A8038;
      goto LABEL_74;
    case 0x10u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1832), type metadata accessor for ChatChunk.TextValueAnnotation);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v140 = *(v0 + 1832);
      v141 = *(v0 + 1824);
      v142 = sub_1DDA14810();
      __swift_project_value_buffer(v142, qword_1ECDA20E0);
      sub_1DD9B4C84(v140, v141, type metadata accessor for ChatChunk.TextValueAnnotation);
      v143 = sub_1DDA147F0();
      v144 = sub_1DDA14F00();
      v145 = os_log_type_enabled(v143, v144);
      v146 = *(v0 + 1824);
      if (v145)
      {
        v147 = *(v0 + 1816);
        v148 = *(v0 + 1808);
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v493[0] = v150;
        *v149 = 136315138;
        sub_1DD9B4C84(v146, v147, type metadata accessor for ChatChunk.TextValueAnnotation);
        v151 = sub_1DDA14B70();
        v153 = v152;
        sub_1DD9B4918(v146, type metadata accessor for ChatChunk.TextValueAnnotation);
        v154 = sub_1DD93FA54(v151, v153, v493);

        *(v149 + 4) = v154;
        _os_log_impl(&dword_1DD8F8000, v143, v144, "Received response annotation update: %s", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v150);
        MEMORY[0x1E12B8CE0](v150, -1, -1);
        MEMORY[0x1E12B8CE0](v149, -1, -1);
      }

      else
      {

        sub_1DD9B4918(v146, type metadata accessor for ChatChunk.TextValueAnnotation);
      }

      v198 = *(v0 + 1776);
      v199 = *(v0 + 1768);
      v200 = *(v0 + 1760);
      sub_1DD9B4C84(*(v0 + 1832) + *(*(v0 + 1808) + 32), v198, type metadata accessor for TextAnnotation);
      sub_1DD9B4978(v198, v199, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v216 = *(v0 + 1792);
        v217 = *(v0 + 1752);
        v218 = *(v0 + 1744);
        v474 = v218;
        v219 = *(v0 + 1736);
        v220 = *(v0 + 1728);
        v221 = *(v0 + 1720);
        v222 = *(v0 + 1640);
        v491 = *(v0 + 1632);
        sub_1DD9B4978(*(v0 + 1768), v217, type metadata accessor for TextAnnotation.URLCitation);
        v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        v480 = *(v223 + 48);
        v224 = (v217 + *(v218 + 20));
        v225 = *v224;
        v226 = v224[1];
        (*(v220 + 16))(v219, v217, v221);

        sub_1DDA13970();
        (*(v222 + 104))(v216, *MEMORY[0x1E69DA510], v491);
        v227 = *(v217 + *(v474 + 24));
        sub_1DD9B4918(v217, type metadata accessor for TextAnnotation.URLCitation);
        *(v216 + v480) = v227;
        (*(*(v223 - 8) + 56))(v216, 0, 1, v223);
        goto LABEL_139;
      }

      v201 = *(v0 + 1768);
      v202 = *(v0 + 1368);
      v203 = v201[1];
      v479 = v201[2];
      v204 = *(v202 + 16);
      if (!v204)
      {
        goto LABEL_85;
      }

      v205 = *v201;
      v206 = *(v0 + 1672);
      v208 = *(v206 + 16);
      v207 = v206 + 16;
      v490 = v208;
      v209 = v202 + ((*(v207 + 64) + 32) & ~*(v207 + 64));
      v210 = *(v207 + 56);
      while (1)
      {
        v490(*(v0 + 1696), v209, *(v0 + 1664));
        if (sub_1DDA14160() == v205 && v211 == v203)
        {
          break;
        }

        v213 = v203;
        v214 = sub_1DDA15440();

        if (v214)
        {
          goto LABEL_135;
        }

        (*(v207 - 8))(*(v0 + 1696), *(v0 + 1664));
        v209 += v210;
        --v204;
        v203 = v213;
        if (!v204)
        {
LABEL_85:
          v215 = 1;
          goto LABEL_136;
        }
      }

LABEL_135:
      (*(*(v0 + 1672) + 32))(*(v0 + 1712), *(v0 + 1696), *(v0 + 1664));
      v215 = 0;
LABEL_136:
      v329 = *(v0 + 1712);
      v330 = *(v0 + 1704);
      v331 = *(v0 + 1672);
      v332 = *(v0 + 1664);
      (*(v331 + 56))(v329, v215, 1, v332);
      sub_1DD90ADB4(v329, v330, &qword_1ECD83690, &qword_1DDA1B218);
      v333 = (*(v331 + 48))(v330, 1, v332);
      v334 = *(v0 + 1792);
      v335 = *(v0 + 1712);
      if (v333 == 1)
      {
        sub_1DD90D378(*(v0 + 1712), &qword_1ECD83690, &qword_1DDA1B218);

        v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        (*(*(v336 - 8) + 56))(v334, 1, 1, v336);
      }

      else
      {
        v337 = *(v0 + 1688);
        v338 = *(v0 + 1680);
        v339 = *(v0 + 1672);
        v340 = *(v0 + 1664);
        v341 = *(v0 + 1640);
        v475 = *(v0 + 1632);
        (*(v339 + 32))(v337, *(v0 + 1704), v340);
        v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        v343 = *(v342 + 48);
        (*(v339 + 16))(v338, v337, v340);
        sub_1DDA139A0();
        (*(v339 + 8))(v337, v340);
        sub_1DD90D378(v335, &qword_1ECD83690, &qword_1DDA1B218);
        (*(v341 + 104))(v334, *MEMORY[0x1E69DA518], v475);

        *(v334 + v343) = v479;
        (*(*(v342 - 8) + 56))(v334, 0, 1, v342);
      }

LABEL_139:
      v344 = *(v0 + 1800);
      v345 = *(v0 + 1784);
      sub_1DD914958(*(v0 + 1792), v344, &qword_1ECD83698, &qword_1DDA1B220);
      sub_1DD90ADB4(v344, v345, &qword_1ECD83698, &qword_1DDA1B220);
      v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
      v347 = (*(*(v346 - 8) + 48))(v345, 1, v346);
      v348 = *(v0 + 1784);
      if (v347 != 1)
      {
        v354 = *(v0 + 1656);
        v355 = *(v0 + 1640);
        v356 = *(v0 + 1632);
        v128 = *(v0 + 1352);
        *(v0 + 2168) = *(v348 + *(v346 + 48));
        (*(v355 + 32))(v354, v348, v356);
        v130 = sub_1DD9A8718;
LABEL_144:
        v94 = v130;
        v27 = v128;
        goto LABEL_145;
      }

      sub_1DD90D378(*(v0 + 1784), &qword_1ECD83698, &qword_1DDA1B220);
      v349 = sub_1DDA147F0();
      v350 = sub_1DDA14EF0();
      if (os_log_type_enabled(v349, v350))
      {
        v351 = swift_slowAlloc();
        *v351 = 0;
        _os_log_impl(&dword_1DD8F8000, v349, v350, "Failed to convert annotation!", v351, 2u);
        MEMORY[0x1E12B8CE0](v351, -1, -1);
      }

      v352 = *(v0 + 1832);
      v353 = *(v0 + 1800);
      v182 = *(v0 + 1312);

      sub_1DD90D378(v353, &qword_1ECD83698, &qword_1DDA1B220);
      sub_1DD9B4918(v352, type metadata accessor for ChatChunk.TextValueAnnotation);
LABEL_66:
      *(v182 + 32) = 0;
      *v182 = 0u;
      *(v182 + 16) = 0u;
      v183 = *(v0 + 1984);
      v184 = *(v0 + 1968);
      v185 = *(v0 + 1952);
      v186 = *(v0 + 1944);
      v187 = *(v0 + 1936);
      v188 = *(v0 + 1928);
      v189 = *(v0 + 1920);
      v190 = *(v0 + 1912);
      v191 = *(v0 + 1896);
      v192 = *(v0 + 1888);
      v385 = *(v0 + 1880);
      v387 = *(v0 + 1872);
      v389 = *(v0 + 1864);
      v391 = *(v0 + 1856);
      v393 = *(v0 + 1848);
      v395 = *(v0 + 1840);
      v397 = *(v0 + 1832);
      v399 = *(v0 + 1824);
      v401 = *(v0 + 1816);
      v403 = *(v0 + 1800);
      v405 = *(v0 + 1792);
      v407 = *(v0 + 1784);
      v409 = *(v0 + 1776);
      v411 = *(v0 + 1768);
      v413 = *(v0 + 1752);
      v415 = *(v0 + 1736);
      v417 = *(v0 + 1712);
      v419 = *(v0 + 1704);
      v421 = *(v0 + 1696);
      v423 = *(v0 + 1688);
      v425 = *(v0 + 1680);
      v427 = *(v0 + 1656);
      v429 = *(v0 + 1648);
      v431 = *(v0 + 1624);
      v433 = *(v0 + 1616);
      v435 = *(v0 + 1608);
      v437 = *(v0 + 1600);
      v439 = *(v0 + 1592);
      v441 = *(v0 + 1584);
      v443 = *(v0 + 1568);
      v445 = *(v0 + 1560);
      v447 = *(v0 + 1552);
      v449 = *(v0 + 1544);
      v451 = *(v0 + 1528);
      v453 = *(v0 + 1512);
      v455 = *(v0 + 1496);
      v458 = *(v0 + 1488);
      v461 = *(v0 + 1480);
      v464 = *(v0 + 1464);
      v467 = *(v0 + 1456);
      v470 = *(v0 + 1448);
      v473 = *(v0 + 1424);
      v478 = *(v0 + 1416);
      v484 = *(v0 + 1408);
      v489 = *(v0 + 1384);

      v139 = *(v0 + 8);
      goto LABEL_67;
    case 0x13u:
      v26 = *(v0 + 1984);
      v27 = *(v0 + 1352);
      *(v0 + 2208) = *v26;
      *(v0 + 2216) = v26[1];
      *(v0 + 2224) = v26[2];
      *(v0 + 2232) = v26[3];
      v28 = sub_1DD9A8CF0;
      goto LABEL_74;
    case 0x15u:
      sub_1DD9B4918(*(v0 + 1984), type metadata accessor for ChatChunk);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v72 = sub_1DDA14810();
      __swift_project_value_buffer(v72, qword_1ECDA20E0);
      v73 = sub_1DDA147F0();
      v74 = sub_1DDA14F00();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DD8F8000, v73, v74, "Received image generator call in progress", v75, 2u);
        MEMORY[0x1E12B8CE0](v75, -1, -1);
      }

      v76 = *(v0 + 1888);
      v77 = *(v0 + 1360);

      v78 = *(v77 + *(type metadata accessor for Instrumentation() + 20));
      v79 = swift_task_alloc();
      *(v79 + 16) = 0;
      *(v79 + 24) = v77;
      sub_1DDA14820();
      v245 = *(v0 + 1888);
      v229 = *(v0 + 1352);

      v246 = sub_1DDA14250();
      (*(*(v246 - 8) + 56))(v245, 0, 1, v246);
      sub_1DD90D378(v245, &qword_1ECD83650, &qword_1DDA1B1C0);
      v231 = sub_1DD9A947C;
      goto LABEL_97;
    case 0x19u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1616), type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 1616);
      v30 = *(v0 + 1608);
      v31 = sub_1DDA14810();
      *(v0 + 2312) = __swift_project_value_buffer(v31, qword_1ECDA20E0);
      sub_1DD9B4C84(v29, v30, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      v32 = sub_1DDA147F0();
      v33 = sub_1DDA14F00();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 1736);
        v35 = *(v0 + 1728);
        v36 = *(v0 + 1720);
        v37 = *(v0 + 1608);
        v38 = *(v0 + 1576);
        v39 = *(v0 + 1568);
        v40 = swift_slowAlloc();
        v487 = swift_slowAlloc();
        v493[0] = v487;
        *v40 = 136315138;
        sub_1DD9B4C84(v37 + *(v38 + 28), v39, type metadata accessor for ImageGeneratorCall.Image);
        (*(v35 + 32))(v34, v39, v36);
        sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0]);
        v41 = sub_1DDA15400();
        v43 = v42;
        (*(v35 + 8))(v34, v36);
        sub_1DD9B4918(v37, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        v44 = sub_1DD93FA54(v41, v43, v493);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1DD8F8000, v32, v33, "Received image generation update: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v487);
        MEMORY[0x1E12B8CE0](v487, -1, -1);
        MEMORY[0x1E12B8CE0](v40, -1, -1);
      }

      else
      {
        v158 = *(v0 + 1608);

        sub_1DD9B4918(v158, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      }

      v159 = *(v0 + 1328);
      sub_1DD9B4C84(*(v0 + 1616) + *(*(v0 + 1576) + 28), *(v0 + 1560), type metadata accessor for ImageGeneratorCall.Image);
      v160 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
      *(v0 + 2320) = v160;
      v161 = swift_task_alloc();
      *(v0 + 2328) = v161;
      *v161 = v0;
      v161[1] = sub_1DD9A98E4;
      v162 = *(v0 + 1560);

      return sub_1DD950D48(v162, 0, 0xF000000000000000, 1, v160, 0, 1, 0);
    case 0x1Bu:
      sub_1DD9B4918(*(v0 + 1984), type metadata accessor for ChatChunk);
      if (qword_1ECD827A8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_177;
    case 0x1Du:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1488), type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v95 = *(v0 + 1488);
      v96 = *(v0 + 1480);
      v97 = sub_1DDA14810();
      __swift_project_value_buffer(v97, qword_1ECDA20E0);
      sub_1DD9B4C84(v95, v96, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      v98 = sub_1DDA147F0();
      v99 = sub_1DDA14F00();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = *(v0 + 1736);
        v101 = *(v0 + 1728);
        v102 = *(v0 + 1720);
        v103 = *(v0 + 1480);
        v104 = *(v0 + 1472);
        v105 = *(v0 + 1464);
        v106 = swift_slowAlloc();
        v488 = swift_slowAlloc();
        v493[0] = v488;
        *v106 = 136315138;
        sub_1DD9B4C84(v103 + *(v104 + 28), v105, type metadata accessor for FileGeneratorCall.File);
        (*(v101 + 32))(v100, v105, v102);
        sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0]);
        v107 = sub_1DDA15400();
        v109 = v108;
        (*(v101 + 8))(v100, v102);
        sub_1DD9B4918(v103, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        v110 = sub_1DD93FA54(v107, v109, v493);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_1DD8F8000, v98, v99, "Received file generation update: %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v488);
        MEMORY[0x1E12B8CE0](v488, -1, -1);
        MEMORY[0x1E12B8CE0](v106, -1, -1);
      }

      else
      {
        v193 = *(v0 + 1480);

        sub_1DD9B4918(v193, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      }

      v194 = *(v0 + 1864);
      v195 = *(v0 + 1360);
      v196 = *(v195 + *(type metadata accessor for Instrumentation() + 20));
      v197 = swift_task_alloc();
      *(v197 + 16) = 1;
      *(v197 + 24) = v195;
      sub_1DDA14820();
      v247 = *(v0 + 1864);
      v229 = *(v0 + 1352);

      v248 = sub_1DDA14250();
      (*(*(v248 - 8) + 56))(v247, 0, 1, v248);
      sub_1DD90D378(v247, &qword_1ECD83650, &qword_1DDA1B1C0);
      v231 = sub_1DD9AAB50;
      goto LABEL_97;
    case 0x20u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1424), type metadata accessor for ChatChunk.RateLimits);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v111 = *(v0 + 1424);
      v112 = *(v0 + 1416);
      v113 = sub_1DDA14810();
      __swift_project_value_buffer(v113, qword_1ECDA20E0);
      sub_1DD9B4C84(v111, v112, type metadata accessor for ChatChunk.RateLimits);
      v114 = sub_1DDA147F0();
      v115 = sub_1DDA14EC0();
      v116 = os_log_type_enabled(v114, v115);
      v117 = *(v0 + 1416);
      if (v116)
      {
        v118 = *(v0 + 1408);
        v119 = *(v0 + 1392);
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v493[0] = v121;
        *v120 = 136315138;
        sub_1DD9B4C84(v117, v118, type metadata accessor for ChatChunk.RateLimits);
        v122 = sub_1DDA14B70();
        v124 = v123;
        sub_1DD9B4918(v117, type metadata accessor for ChatChunk.RateLimits);
        v125 = sub_1DD93FA54(v122, v124, v493);

        *(v120 + 4) = v125;
        _os_log_impl(&dword_1DD8F8000, v114, v115, "Updating rate limits: %s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x1E12B8CE0](v121, -1, -1);
        MEMORY[0x1E12B8CE0](v120, -1, -1);
      }

      else
      {

        sub_1DD9B4918(v117, type metadata accessor for ChatChunk.RateLimits);
      }

      v27 = *(v0 + 1328);
      v28 = sub_1DD9ACD18;
      goto LABEL_74;
    default:
      v156 = *(v0 + 1984);
      v157 = type metadata accessor for ChatChunk;
      goto LABEL_64;
  }
}

uint64_t sub_1DD9A6E50()
{
  v1 = v0[250];
  v2 = v0[169];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[249];
  *(v2 + 120) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A6ED0, 0, 0);
}

uint64_t sub_1DD9A6ED0()
{
  v20 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  sub_1DD9B2CA0((v0 + 47), (v0 + 2));
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  sub_1DD9B2CFC((v0 + 47));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = v0[53];
    v7 = v0[54];

    v8 = sub_1DD93FA54(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Received response model info: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  sub_1DD9B2CA0((v0 + 47), (v0 + 62));
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();
  sub_1DD9B2CFC((v0 + 47));
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v0[56];
    if (v13)
    {
      v14 = v0[55];
    }

    else
    {
      v14 = 0x6E776F6E6B6E753CLL;
    }

    if (v13)
    {
      v15 = v0[56];
    }

    else
    {
      v15 = 0xE90000000000003ELL;
    }

    v16 = sub_1DD93FA54(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Received request instructions: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v17 = v0[169];

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7174, v17, 0);
}

uint64_t sub_1DD9A7174()
{
  v1 = v0[169];
  sub_1DD9ADA8C("StreamingPromptSessionCreated", 29, 2);
  v0[251] = *(v1 + 112);
  v0[252] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7204, 0, 0);
}

uint64_t sub_1DD9A7204()
{
  v1 = v0[241];
  v2 = v0[164];
  if (v0[252])
  {
    v3 = v0[251];
    v4 = v0[252];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B8, &qword_1DDA1B248);
  v5 = *(sub_1DDA138E0() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1DDA16320;
  v8 = v0[53];
  v9 = v0[54];

  sub_1DD940874(MEMORY[0x1E69E7CC0]);
  sub_1DDA138D0();
  sub_1DD9B2CFC((v0 + 47));
  sub_1DDA138F0();
  v10 = sub_1DDA13CA0();
  v11 = MEMORY[0x1E69DA618];
  v2[3] = v10;
  v2[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1DDA13C90();
  v12 = v0[248];
  v13 = v0[246];
  v14 = v0[244];
  v15 = v0[243];
  v16 = v0[242];
  v17 = v0[241];
  v18 = v0[240];
  v19 = v0[239];
  v20 = v0[237];
  v21 = v0[236];
  v24 = v0[235];
  v25 = v0[234];
  v26 = v0[233];
  v27 = v0[232];
  v28 = v0[231];
  v29 = v0[230];
  v30 = v0[229];
  v31 = v0[228];
  v32 = v0[227];
  v33 = v0[225];
  v34 = v0[224];
  v35 = v0[223];
  v36 = v0[222];
  v37 = v0[221];
  v38 = v0[219];
  v39 = v0[217];
  v40 = v0[214];
  v41 = v0[213];
  v42 = v0[212];
  v43 = v0[211];
  v44 = v0[210];
  v45 = v0[207];
  v46 = v0[206];
  v47 = v0[203];
  v48 = v0[202];
  v49 = v0[201];
  v50 = v0[200];
  v51 = v0[199];
  v52 = v0[198];
  v53 = v0[196];
  v54 = v0[195];
  v55 = v0[194];
  v56 = v0[193];
  v57 = v0[191];
  v58 = v0[189];
  v59 = v0[187];
  v60 = v0[186];
  v61 = v0[185];
  v62 = v0[183];
  v63 = v0[182];
  v64 = v0[181];
  v65 = v0[178];
  v66 = v0[177];
  v67 = v0[176];
  v68 = v0[173];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DD9A76B8()
{
  v1 = v0[255];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[169];
  swift_beginAccess();

  v5 = *(v4 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 128);
  *(v4 + 128) = 0x8000000000000000;
  sub_1DD9CBB84(v3, v2, v1, isUniquelyReferenced_nonNull_native);
  *(v4 + 128) = v8;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7794, 0, 0);
}

uint64_t sub_1DD9A7794()
{
  sub_1DD9B4918(v0[240], type metadata accessor for ChatChunk.ChoiceResource);
  v1 = v0[164];
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[242];
  v7 = v0[241];
  v8 = v0[240];
  v9 = v0[239];
  v10 = v0[237];
  v11 = v0[236];
  v14 = v0[235];
  v15 = v0[234];
  v16 = v0[233];
  v17 = v0[232];
  v18 = v0[231];
  v19 = v0[230];
  v20 = v0[229];
  v21 = v0[228];
  v22 = v0[227];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[219];
  v29 = v0[217];
  v30 = v0[214];
  v31 = v0[213];
  v32 = v0[212];
  v33 = v0[211];
  v34 = v0[210];
  v35 = v0[207];
  v36 = v0[206];
  v37 = v0[203];
  v38 = v0[202];
  v39 = v0[201];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[198];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[191];
  v48 = v0[189];
  v49 = v0[187];
  v50 = v0[186];
  v51 = v0[185];
  v52 = v0[183];
  v53 = v0[182];
  v54 = v0[181];
  v55 = v0[178];
  v56 = v0[177];
  v57 = v0[176];
  v58 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9A7B28()
{
  v1 = v0[262];
  v2 = v0[261];
  v3 = v0[260];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[169];
  swift_beginAccess();

  v9 = *(v8 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v8 + 136);
  *(v8 + 136) = 0x8000000000000000;
  sub_1DD9CBB84(v7, v6, v1, isUniquelyReferenced_nonNull_native);
  *(v8 + 136) = v14;
  swift_endAccess();
  sub_1DD96E310(v7, v6, v5, v4, v3, v2, 1u);
  swift_beginAccess();

  v11 = *(v8 + 144);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v8 + 144);
  *(v8 + 144) = 0x8000000000000000;
  sub_1DD9CBB84(v5, v4, v1, v12);
  *(v8 + 144) = v15;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7CA0, 0, 0);
}

uint64_t sub_1DD9A7CA0()
{
  sub_1DD96E310(v0[256], v0[257], v0[258], v0[259], v0[260], v0[261], 1u);
  v1 = v0[164];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[242];
  v7 = v0[241];
  v8 = v0[240];
  v9 = v0[239];
  v10 = v0[237];
  v11 = v0[236];
  v14 = v0[235];
  v15 = v0[234];
  v16 = v0[233];
  v17 = v0[232];
  v18 = v0[231];
  v19 = v0[230];
  v20 = v0[229];
  v21 = v0[228];
  v22 = v0[227];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[219];
  v29 = v0[217];
  v30 = v0[214];
  v31 = v0[213];
  v32 = v0[212];
  v33 = v0[211];
  v34 = v0[210];
  v35 = v0[207];
  v36 = v0[206];
  v37 = v0[203];
  v38 = v0[202];
  v39 = v0[201];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[198];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[191];
  v48 = v0[189];
  v49 = v0[187];
  v50 = v0[186];
  v51 = v0[185];
  v52 = v0[183];
  v53 = v0[182];
  v54 = v0[181];
  v55 = v0[178];
  v56 = v0[177];
  v57 = v0[176];
  v58 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9A8038()
{
  v1 = *(v0 + 1352);
  sub_1DD9ADA8C("StreamingPromptTimeToFirstToken", 31, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A80B0, 0, 0);
}

uint64_t sub_1DD9A80B0()
{
  v1 = v0[237];
  v2 = v0[170];
  v3 = *(v2 + *(type metadata accessor for Instrumentation() + 20));
  *(swift_task_alloc() + 16) = v2;
  sub_1DDA14820();
  v4 = v0[237];
  v5 = v0[169];

  v6 = sub_1DDA14250();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_1DD90D378(v4, &qword_1ECD83650, &qword_1DDA1B1C0);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A81EC, v5, 0);
}

uint64_t sub_1DD9A81EC()
{
  v1 = v0[169];
  v0[268] = *(v1 + 112);
  v0[269] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8268, v1, 0);
}

uint64_t sub_1DD9A8268()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2160) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A82F0, 0, 0);
}

uint64_t sub_1DD9A82F0()
{
  v1 = v0[268];
  v62 = v0[266];
  v64 = v0[267];
  v2 = v0[265];
  v3 = v0[264];
  v4 = v0[164];
  v0[269];
  sub_1DD98A384(v0[263], v0[270]);

  sub_1DDA014D4(v3, v2);
  v5 = sub_1DDA13D00();
  v6 = MEMORY[0x1E69DA648];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1DDA13CF0();
  v7 = v0[248];
  v8 = v0[246];
  v9 = v0[244];
  v10 = v0[243];
  v11 = v0[242];
  v12 = v0[241];
  v13 = v0[240];
  v14 = v0[239];
  v15 = v0[237];
  v16 = v0[236];
  v19 = v0[235];
  v20 = v0[234];
  v21 = v0[233];
  v22 = v0[232];
  v23 = v0[231];
  v24 = v0[230];
  v25 = v0[229];
  v26 = v0[228];
  v27 = v0[227];
  v28 = v0[225];
  v29 = v0[224];
  v30 = v0[223];
  v31 = v0[222];
  v32 = v0[221];
  v33 = v0[219];
  v34 = v0[217];
  v35 = v0[214];
  v36 = v0[213];
  v37 = v0[212];
  v38 = v0[211];
  v39 = v0[210];
  v40 = v0[207];
  v41 = v0[206];
  v42 = v0[203];
  v43 = v0[202];
  v44 = v0[201];
  v45 = v0[200];
  v46 = v0[199];
  v47 = v0[198];
  v48 = v0[196];
  v49 = v0[195];
  v50 = v0[194];
  v51 = v0[193];
  v52 = v0[191];
  v53 = v0[189];
  v54 = v0[187];
  v55 = v0[186];
  v56 = v0[185];
  v57 = v0[183];
  v58 = v0[182];
  v59 = v0[181];
  v60 = v0[178];
  v61 = v0[177];
  v63 = v0[176];
  v65 = v0[173];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DD9A8718()
{
  v1 = v0[229];
  v2 = v0[169];
  v0[272] = *(v2 + 112);
  v0[273] = *(v2 + 120);
  v0[274] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A87A0, v2, 0);
}

uint64_t sub_1DD9A87A0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2200) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8828, 0, 0);
}

uint64_t sub_1DD9A8828()
{
  v1 = v0[273];
  v2 = v0[272];
  v65 = v0[271];
  v3 = v0[229];
  v60 = v0[207];
  v4 = v0[206];
  v5 = v0[205];
  v58 = v0[204];
  v62 = v0[203];
  v6 = v0[164];
  v69 = v0[225];
  sub_1DD98A384(v0[274], v0[275]);

  sub_1DDA014D4(*(v3 + 8), *(v3 + 16));
  (*(v5 + 16))(v4, v60, v58);
  sub_1DDA13920();
  v7 = sub_1DDA13D20();
  v8 = MEMORY[0x1E69DA650];
  v6[3] = v7;
  v6[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1DDA13D10();
  (*(v5 + 8))(v60, v58);
  sub_1DD90D378(v69, &qword_1ECD83698, &qword_1DDA1B220);
  sub_1DD9B4918(v3, type metadata accessor for ChatChunk.TextValueAnnotation);
  v9 = v0[248];
  v10 = v0[246];
  v11 = v0[244];
  v12 = v0[243];
  v13 = v0[242];
  v14 = v0[241];
  v15 = v0[240];
  v16 = v0[239];
  v17 = v0[237];
  v18 = v0[236];
  v21 = v0[235];
  v22 = v0[234];
  v23 = v0[233];
  v24 = v0[232];
  v25 = v0[231];
  v26 = v0[230];
  v27 = v0[229];
  v28 = v0[228];
  v29 = v0[227];
  v30 = v0[225];
  v31 = v0[224];
  v32 = v0[223];
  v33 = v0[222];
  v34 = v0[221];
  v35 = v0[219];
  v36 = v0[217];
  v37 = v0[214];
  v38 = v0[213];
  v39 = v0[212];
  v40 = v0[211];
  v41 = v0[210];
  v42 = v0[207];
  v43 = v0[206];
  v44 = v0[203];
  v45 = v0[202];
  v46 = v0[201];
  v47 = v0[200];
  v48 = v0[199];
  v49 = v0[198];
  v50 = v0[196];
  v51 = v0[195];
  v52 = v0[194];
  v53 = v0[193];
  v54 = v0[191];
  v55 = v0[189];
  v56 = v0[187];
  v57 = v0[186];
  v59 = v0[185];
  v61 = v0[183];
  v63 = v0[182];
  v64 = v0[181];
  v66 = v0[178];
  v67 = v0[177];
  v68 = v0[176];
  v70 = v0[173];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DD9A8CF0()
{
  v1 = v0[169];
  v0[280] = *(v1 + 112);
  v0[281] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8D6C, v1, 0);
}

uint64_t sub_1DD9A8D6C()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2256) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8DF4, 0, 0);
}

uint64_t sub_1DD9A8DF4()
{
  v1 = v0[169];
  v2 = sub_1DD98A384(v0[276], v0[282]);
  v4 = v3;

  v0[283] = v4;
  v0[284] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8E88, v1, 0);
}

uint64_t sub_1DD9A8E88()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2280) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8F10, 0, 0);
}

uint64_t sub_1DD9A8F10()
{
  v1 = v0[169];
  v2 = sub_1DD98A384(v0[277], v0[285]);
  v4 = v3;

  v0[286] = v4;
  v0[287] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A8FA4, v1, 0);
}

uint64_t sub_1DD9A8FA4()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2304) = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A902C, 0, 0);
}

uint64_t sub_1DD9A902C()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[284];
  v4 = v0[281];
  v5 = v0[280];
  v64 = v0[278];
  v66 = v0[279];
  v6 = v0[164];
  v0[283];
  sub_1DD98A384(v0[277], v0[288]);

  v7 = sub_1DDA13D40();
  v8 = MEMORY[0x1E69DA658];
  v6[3] = v7;
  v6[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1DDA13D30();
  v9 = v0[248];
  v10 = v0[246];
  v11 = v0[244];
  v12 = v0[243];
  v13 = v0[242];
  v14 = v0[241];
  v15 = v0[240];
  v16 = v0[239];
  v17 = v0[237];
  v18 = v0[236];
  v21 = v0[235];
  v22 = v0[234];
  v23 = v0[233];
  v24 = v0[232];
  v25 = v0[231];
  v26 = v0[230];
  v27 = v0[229];
  v28 = v0[228];
  v29 = v0[227];
  v30 = v0[225];
  v31 = v0[224];
  v32 = v0[223];
  v33 = v0[222];
  v34 = v0[221];
  v35 = v0[219];
  v36 = v0[217];
  v37 = v0[214];
  v38 = v0[213];
  v39 = v0[212];
  v40 = v0[211];
  v41 = v0[210];
  v42 = v0[207];
  v43 = v0[206];
  v44 = v0[203];
  v45 = v0[202];
  v46 = v0[201];
  v47 = v0[200];
  v48 = v0[199];
  v49 = v0[198];
  v50 = v0[196];
  v51 = v0[195];
  v52 = v0[194];
  v53 = v0[193];
  v54 = v0[191];
  v55 = v0[189];
  v56 = v0[187];
  v57 = v0[186];
  v58 = v0[185];
  v59 = v0[183];
  v60 = v0[182];
  v61 = v0[181];
  v62 = v0[178];
  v63 = v0[177];
  v65 = v0[176];
  v67 = v0[173];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DD9A947C()
{
  v1 = *(v0 + 1352);
  sub_1DD9AD638("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A94F4, 0, 0);
}

uint64_t sub_1DD9A94F4()
{
  v1 = v0[164];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[242];
  v7 = v0[241];
  v8 = v0[240];
  v9 = v0[239];
  v10 = v0[237];
  v11 = v0[236];
  v14 = v0[235];
  v15 = v0[234];
  v16 = v0[233];
  v17 = v0[232];
  v18 = v0[231];
  v19 = v0[230];
  v20 = v0[229];
  v21 = v0[228];
  v22 = v0[227];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[219];
  v29 = v0[217];
  v30 = v0[214];
  v31 = v0[213];
  v32 = v0[212];
  v33 = v0[211];
  v34 = v0[210];
  v35 = v0[207];
  v36 = v0[206];
  v37 = v0[203];
  v38 = v0[202];
  v39 = v0[201];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[198];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[191];
  v48 = v0[189];
  v49 = v0[187];
  v50 = v0[186];
  v51 = v0[185];
  v52 = v0[183];
  v53 = v0[182];
  v54 = v0[181];
  v55 = v0[178];
  v56 = v0[177];
  v57 = v0[176];
  v58 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9A986C()
{
  v1 = *(v0 + 1352);
  sub_1DD9AD638("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9B4FD4, 0, 0);
}

uint64_t sub_1DD9A98E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2328);
  v7 = *v3;
  v5[292] = a1;
  v5[293] = a2;
  v5[294] = v2;

  v8 = v4[290];
  v9 = v4[216];
  v10 = v4[215];
  v11 = v4[195];
  if (v2)
  {
    v12 = v4[290];

    (*(v9 + 8))(v11, v10);
    v13 = sub_1DD9AD1AC;
  }

  else
  {
    v14 = *(v9 + 8);
    v5[295] = v14;
    v5[296] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v10);

    v13 = sub_1DD9A9ACC;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1DD9A9ACC()
{
  v1 = v0[294];
  v2 = v0[234];
  v3 = v0[170];
  v4 = *(v3 + *(type metadata accessor for Instrumentation() + 20));
  v5 = swift_task_alloc();
  *(v5 + 16) = 1;
  *(v5 + 24) = v3;
  sub_1DDA14820();
  if (v1)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[234];
  v8 = v0[169];

  v9 = sub_1DDA14250();
  (*(*(v9 - 8) + 56))(v7, v6, 1, v9);
  sub_1DD90D378(v7, &qword_1ECD83650, &qword_1DDA1B1C0);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A9C10, v8, 0);
}

uint64_t sub_1DD9A9C10()
{
  v1 = *(v0 + 1352);
  sub_1DD9ADA8C("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A9C88, 0, 0);
}

uint64_t sub_1DD9A9C88()
{
  v37 = v0;
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2336);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  sub_1DD9B4C84(*(v0 + 1616), v4, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD9B4C84(v4, v5, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD9B4978(v4, v6, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD909CD4(v2, v1);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  sub_1DD9B4918(v6, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  sub_1DD909D28(v2, v1);
  if (!os_log_type_enabled(v7, v8))
  {
    v25 = *(v0 + 1592);

    sub_1DD9B4918(v25, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
    goto LABEL_14;
  }

  v33 = *(v0 + 2360);
  v34 = *(v0 + 2368);
  v35 = *(v0 + 2344);
  v9 = *(v0 + 1736);
  v10 = *(v0 + 1728);
  v11 = *(v0 + 1720);
  v12 = *(v0 + 1592);
  v13 = *(v0 + 1576);
  v14 = *(v0 + 1568);
  v15 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v36 = v32;
  *v15 = 136315394;
  sub_1DD9B4C84(v12 + *(v13 + 28), v14, type metadata accessor for ImageGeneratorCall.Image);
  (*(v10 + 32))(v9, v14, v11);
  sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0]);
  v16 = sub_1DDA15400();
  v18 = v17;
  v33(v9, v11);
  sub_1DD9B4918(v12, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  v19 = sub_1DD93FA54(v16, v18, &v36);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2048;
  v23 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_13;
    }

    v26 = *(*(v0 + 2336) + 16);
    v27 = *(*(v0 + 2336) + 24);
    v28 = __OFSUB__(v27, v26);
    v24 = v27 - v26;
    if (!v28)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v29 = *(v0 + 2336);
    v30 = *(v0 + 2340);
    v28 = __OFSUB__(v30, v29);
    LODWORD(v24) = v30 - v29;
    if (v28)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v20, v21, v22);
    }

    v24 = v24;
    goto LABEL_13;
  }

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = *(v0 + 2350);
LABEL_13:
  *(v15 + 14) = vcvtd_n_f64_s64(v24, 0x14uLL);
  _os_log_impl(&dword_1DD8F8000, v7, v8, "Image downloaded: %s, size: %f MB", v15, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v32);
  MEMORY[0x1E12B8CE0](v32, -1, -1);
  MEMORY[0x1E12B8CE0](v15, -1, -1);

LABEL_14:
  v21 = *(v0 + 1352);
  v20 = sub_1DD9A9FE0;
  v22 = 0;

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1DD9A9FE0()
{
  v1 = v0[202];
  v2 = v0[169];
  v0[297] = *(v2 + 112);
  v0[298] = *(v2 + 120);
  v0[299] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA068, v2, 0);
}

uint64_t sub_1DD9AA068()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2400) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA0F0, 0, 0);
}

uint64_t sub_1DD9AA0F0()
{
  v1 = v0[297];
  v2 = v0[293];
  v3 = v0[292];
  v4 = v0[202];
  v5 = v0[194];
  v6 = v0[164];
  v0[298];
  sub_1DD98A384(v0[299], v0[300]);

  sub_1DDA014D4(*(v4 + 8), *(v4 + 16));
  sub_1DD909CD4(v3, v2);
  sub_1DDA13980();
  v7 = sub_1DDA137E0();
  v8 = MEMORY[0x1E69DA408];
  v6[3] = v7;
  v6[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1DDA137D0();
  sub_1DD909D28(v3, v2);
  sub_1DD9B4918(v4, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  v9 = v0[248];
  v10 = v0[246];
  v11 = v0[244];
  v12 = v0[243];
  v13 = v0[242];
  v14 = v0[241];
  v15 = v0[240];
  v16 = v0[239];
  v17 = v0[237];
  v18 = v0[236];
  v21 = v0[235];
  v22 = v0[234];
  v23 = v0[233];
  v24 = v0[232];
  v25 = v0[231];
  v26 = v0[230];
  v27 = v0[229];
  v28 = v0[228];
  v29 = v0[227];
  v30 = v0[225];
  v31 = v0[224];
  v32 = v0[223];
  v33 = v0[222];
  v34 = v0[221];
  v35 = v0[219];
  v36 = v0[217];
  v37 = v0[214];
  v38 = v0[213];
  v39 = v0[212];
  v40 = v0[211];
  v41 = v0[210];
  v42 = v0[207];
  v43 = v0[206];
  v44 = v0[203];
  v45 = v0[202];
  v46 = v0[201];
  v47 = v0[200];
  v48 = v0[199];
  v49 = v0[198];
  v50 = v0[196];
  v51 = v0[195];
  v52 = v0[194];
  v53 = v0[193];
  v54 = v0[191];
  v55 = v0[189];
  v56 = v0[187];
  v57 = v0[186];
  v58 = v0[185];
  v59 = v0[183];
  v60 = v0[182];
  v61 = v0[181];
  v62 = v0[178];
  v63 = v0[177];
  v64 = v0[176];
  v65 = v0[173];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DD9AA558()
{
  v1 = v0[193];
  v2 = v0[169];
  v0[301] = *(v2 + 112);
  v0[302] = *(v2 + 120);
  v0[303] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA5E0, v2, 0);
}

uint64_t sub_1DD9AA5E0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2432) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AA668, 0, 0);
}

uint64_t sub_1DD9AA668()
{
  v1 = v0[302];
  v2 = v0[301];
  v3 = v0[216];
  v65 = v0[217];
  v67 = v0[215];
  v4 = v0[193];
  v5 = v0[189];
  v6 = v0[188];
  v69 = v0[187];
  v7 = v0[164];
  sub_1DD98A384(v0[303], v0[304]);

  sub_1DDA014D4(*(v4 + 8), *(v4 + 16));
  (*(v3 + 16))(v65, v5, v67);
  v8 = v6[6];
  v9 = (v5 + v6[5]);
  v10 = *v9;
  v11 = v9[1];
  v13 = *(v5 + v8);
  v12 = *(v5 + v8 + 8);
  v14 = *(v5 + v6[7]);

  sub_1DDA13950();
  v15 = sub_1DDA137C0();
  v16 = MEMORY[0x1E69DA400];
  v7[3] = v15;
  v7[4] = v16;
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1DDA137B0();
  sub_1DD9B4918(v5, type metadata accessor for FileGeneratorFile);
  sub_1DD9B4918(v4, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
  v17 = v0[248];
  v18 = v0[246];
  v19 = v0[244];
  v20 = v0[243];
  v21 = v0[242];
  v22 = v0[241];
  v23 = v0[240];
  v24 = v0[239];
  v25 = v0[237];
  v26 = v0[236];
  v29 = v0[235];
  v30 = v0[234];
  v31 = v0[233];
  v32 = v0[232];
  v33 = v0[231];
  v34 = v0[230];
  v35 = v0[229];
  v36 = v0[228];
  v37 = v0[227];
  v38 = v0[225];
  v39 = v0[224];
  v40 = v0[223];
  v41 = v0[222];
  v42 = v0[221];
  v43 = v0[219];
  v44 = v0[217];
  v45 = v0[214];
  v46 = v0[213];
  v47 = v0[212];
  v48 = v0[211];
  v49 = v0[210];
  v50 = v0[207];
  v51 = v0[206];
  v52 = v0[203];
  v53 = v0[202];
  v54 = v0[201];
  v55 = v0[200];
  v56 = v0[199];
  v57 = v0[198];
  v58 = v0[196];
  v59 = v0[195];
  v60 = v0[194];
  v61 = v0[193];
  v62 = v0[191];
  v63 = v0[189];
  v64 = v0[187];
  v66 = v0[186];
  v68 = v0[185];
  v70 = v0[183];
  v71 = v0[182];
  v72 = v0[181];
  v73 = v0[178];
  v74 = v0[177];
  v75 = v0[176];
  v76 = v0[173];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1DD9AAB50()
{
  v1 = *(v0 + 1352);
  sub_1DD9ADA8C("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AABC8, 0, 0);
}

uint64_t sub_1DD9AABC8()
{
  sub_1DD9B4918(v0[186], type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
  v1 = v0[164];
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0[248];
  v3 = v0[246];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[242];
  v7 = v0[241];
  v8 = v0[240];
  v9 = v0[239];
  v10 = v0[237];
  v11 = v0[236];
  v14 = v0[235];
  v15 = v0[234];
  v16 = v0[233];
  v17 = v0[232];
  v18 = v0[231];
  v19 = v0[230];
  v20 = v0[229];
  v21 = v0[228];
  v22 = v0[227];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[219];
  v29 = v0[217];
  v30 = v0[214];
  v31 = v0[213];
  v32 = v0[212];
  v33 = v0[211];
  v34 = v0[210];
  v35 = v0[207];
  v36 = v0[206];
  v37 = v0[203];
  v38 = v0[202];
  v39 = v0[201];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[198];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[191];
  v48 = v0[189];
  v49 = v0[187];
  v50 = v0[186];
  v51 = v0[185];
  v52 = v0[183];
  v53 = v0[182];
  v54 = v0[181];
  v55 = v0[178];
  v56 = v0[177];
  v57 = v0[176];
  v58 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9AAF5C()
{
  v1 = *(v0 + 1352);
  sub_1DD9ADA8C("ImageGeneratorCall", 18, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AAFD4, 0, 0);
}

uint64_t sub_1DD9AAFD4()
{
  v1 = sub_1DDA13840();
  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
  v61 = *(v0 + 2456);
  v62 = *(v0 + 2440);
  swift_allocError();
  v3 = v2;
  sub_1DDA15070();
  *(v0 + 1288) = 0;
  *(v0 + 1296) = 0xE000000000000000;
  MEMORY[0x1E12B7AB0](0xD000000000000044, 0x80000001DDA28610);
  *(v0 + 920) = v62;
  *(v0 + 936) = v61;
  sub_1DDA15160();
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1296);
  sub_1DDA13800();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69DA480], v1);
  v6 = *(v0 + 1984);
  v7 = *(v0 + 1968);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1944);
  v10 = *(v0 + 1936);
  v11 = *(v0 + 1928);
  v12 = *(v0 + 1912);
  v15 = *(v0 + 1920);
  v16 = *(v0 + 1896);
  v17 = *(v0 + 1888);
  v18 = *(v0 + 1880);
  v19 = *(v0 + 1872);
  v20 = *(v0 + 1864);
  v21 = *(v0 + 1856);
  v22 = *(v0 + 1848);
  v23 = *(v0 + 1840);
  v24 = *(v0 + 1832);
  v25 = *(v0 + 1824);
  v26 = *(v0 + 1816);
  v27 = *(v0 + 1800);
  v28 = *(v0 + 1792);
  v29 = *(v0 + 1784);
  v30 = *(v0 + 1776);
  v31 = *(v0 + 1768);
  v32 = *(v0 + 1752);
  v33 = *(v0 + 1736);
  v34 = *(v0 + 1712);
  v35 = *(v0 + 1704);
  v36 = *(v0 + 1696);
  v37 = *(v0 + 1688);
  v38 = *(v0 + 1680);
  v39 = *(v0 + 1656);
  v40 = *(v0 + 1648);
  v41 = *(v0 + 1624);
  v42 = *(v0 + 1616);
  v43 = *(v0 + 1608);
  v44 = *(v0 + 1600);
  v45 = *(v0 + 1592);
  v46 = *(v0 + 1584);
  v47 = *(v0 + 1568);
  v48 = *(v0 + 1560);
  v49 = *(v0 + 1552);
  v50 = *(v0 + 1544);
  v51 = *(v0 + 1528);
  v52 = *(v0 + 1512);
  v53 = *(v0 + 1496);
  v54 = *(v0 + 1488);
  v55 = *(v0 + 1480);
  v56 = *(v0 + 1464);
  v57 = *(v0 + 1456);
  v58 = *(v0 + 1448);
  v59 = *(v0 + 1424);
  v60 = *(v0 + 1416);
  *&v61 = *(v0 + 1408);
  *&v62 = *(v0 + 1384);
  swift_willThrow();
  sub_1DD9B4918(v12, type metadata accessor for ChatChunk.ChoiceResource);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DD9AB4A0()
{
  v1 = *(v0 + 1352);
  sub_1DD9ADA8C("FileGeneratorCall", 17, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9B4F94, 0, 0);
}

uint64_t sub_1DD9AB518()
{
  v1 = v0[239];
  v2 = v0[169];
  v0[310] = *(v2 + 112);
  v0[311] = *(v2 + 120);
  v0[312] = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AB5A0, v2, 0);
}

uint64_t sub_1DD9AB5A0()
{
  v1 = *(v0 + 1352);
  swift_beginAccess();
  *(v0 + 2504) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AB628, 0, 0);
}

uint64_t sub_1DD9AB628()
{
  v1 = *(v0 + 1912) + *(v0 + 2648);
  sub_1DD98A384(*(v0 + 2496), *(v0 + 2504));

  v2 = *(v1 + 24);
  v3 = (v2 + 80);
  v4 = *(v2 + 16) + 1;
  v5 = MEMORY[0x1E69DA500];
  while (--v4)
  {
    v6 = *v3;
    v3 += 56;
    if (v6 == 1)
    {
      v5 = MEMORY[0x1E69DA508];
      break;
    }
  }

  v7 = *(v0 + 2472);
  v8 = *(v0 + 1912);
  v9 = *(v0 + 1448);
  v10 = *(v0 + 1312);
  if (*(v0 + 2488))
  {
    v11 = *(v0 + 2480);
    v12 = *(v0 + 2488);
  }

  (*(*(v0 + 1440) + 104))(*(v0 + 1448), *v5, *(v0 + 1432));
  v13 = sub_1DDA13CE0();
  v14 = MEMORY[0x1E69DA640];
  v10[3] = v13;
  v10[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1DDA13CD0();
  sub_1DD9B4918(v8, type metadata accessor for ChatChunk.ChoiceResource);
  v15 = *(v0 + 1984);
  v16 = *(v0 + 1968);
  v17 = *(v0 + 1952);
  v18 = *(v0 + 1944);
  v19 = *(v0 + 1936);
  v20 = *(v0 + 1928);
  v21 = *(v0 + 1920);
  v22 = *(v0 + 1912);
  v23 = *(v0 + 1896);
  v24 = *(v0 + 1888);
  v27 = *(v0 + 1880);
  v28 = *(v0 + 1872);
  v29 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1848);
  v32 = *(v0 + 1840);
  v33 = *(v0 + 1832);
  v34 = *(v0 + 1824);
  v35 = *(v0 + 1816);
  v36 = *(v0 + 1800);
  v37 = *(v0 + 1792);
  v38 = *(v0 + 1784);
  v39 = *(v0 + 1776);
  v40 = *(v0 + 1768);
  v41 = *(v0 + 1752);
  v42 = *(v0 + 1736);
  v43 = *(v0 + 1712);
  v44 = *(v0 + 1704);
  v45 = *(v0 + 1696);
  v46 = *(v0 + 1688);
  v47 = *(v0 + 1680);
  v48 = *(v0 + 1656);
  v49 = *(v0 + 1648);
  v50 = *(v0 + 1624);
  v51 = *(v0 + 1616);
  v52 = *(v0 + 1608);
  v53 = *(v0 + 1600);
  v54 = *(v0 + 1592);
  v55 = *(v0 + 1584);
  v56 = *(v0 + 1568);
  v57 = *(v0 + 1560);
  v58 = *(v0 + 1552);
  v59 = *(v0 + 1544);
  v60 = *(v0 + 1528);
  v61 = *(v0 + 1512);
  v62 = *(v0 + 1496);
  v63 = *(v0 + 1488);
  v64 = *(v0 + 1480);
  v65 = *(v0 + 1464);
  v66 = *(v0 + 1456);
  v67 = *(v0 + 1448);
  v68 = *(v0 + 1424);
  v69 = *(v0 + 1416);
  v70 = *(v0 + 1408);
  v71 = *(v0 + 1384);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DD9ABAB4()
{
  v1 = *(*v0 + 2584);
  v2 = *(*v0 + 2576);
  v3 = *(*v0 + 2568);
  v4 = *(*v0 + 2560);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9ABC0C, 0, 0);
}

uint64_t sub_1DD9ABC0C()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2552);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 2552) = i;
    v5 = *(v0 + 1376);
    v6 = v5[2];
    *(v0 + 2560) = v6;
    v3 += 24;
    if (v6)
    {
      v7 = *(v0 + 2536);
      *(v0 + 2568) = v5[4];
      v8 = v5[3];
      v9 = v7 + v3;
      v10 = *(v9 + 48);
      *(v0 + 2576) = v10;
      v11 = *(v9 + 40);
      v12 = *(v9 + 32);

      sub_1DD9B2D50(v6);
      v13 = swift_task_alloc();
      *(v0 + 2584) = v13;
      *v13 = v0;
      v13[1] = sub_1DD9ABAB4;

      return sub_1DD948CE8(v11, v10, v12, v6);
    }
  }

  v15 = *(v0 + 2536);

  v16 = *(v0 + 1376);
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (!v17)
  {
    sub_1DD9B41AC(*(v0 + 2512), *(v0 + 2520), *(v0 + 2528), MEMORY[0x1E69E7CF8]);
    v22 = *(v0 + 216);
    if (v22 && *(v22 + 16))
    {
      v23 = *(v0 + 1936);
      v24 = *(v0 + 1328);
      v25 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
      v26 = (v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
      v28 = *v26;
      v27 = v26[1];
      v29 = v24[45];
      v31 = v24[14];
      v30 = v24[15];
      v32 = sub_1DDA14D60();
      (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
      sub_1DDA14D40();

      v33 = sub_1DDA14D30();
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v28;
      v34[5] = v27;
      v34[6] = v31;
      v34[7] = v30;
      v34[8] = v29;
      sub_1DD982718(0, 0, v23, &unk_1DDA1B230, v34);
    }

    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
    v38 = *(v0 + 224);
    if (v38)
    {
      v39 = *(v0 + 224);

      sub_1DD9B2CFC(v0 + 136);
      v40 = *(v38 + 16);
      if (v40)
      {
        v71 = v37;
        sub_1DD9AF17C(0, v40, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
        v41 = (v38 + 56);
        while (1)
        {
          v42 = *(v41 - 3);
          v43 = *(v41 - 2);
          v44 = *(v41 - 1);
          v45 = *v41;
          *(v0 + 648) = 25705;
          *(v0 + 656) = 0xE200000000000000;
          *(v0 + 664) = v42;
          *(v0 + 672) = v43;
          *(v0 + 680) = 0x6567617373656DLL;
          *(v0 + 688) = 0xE700000000000000;
          *(v0 + 696) = v44;
          *(v0 + 704) = v45;
          v46 = sub_1DDA151C0();

          v47 = *(v0 + 648);
          v48 = *(v0 + 656);
          v49 = *(v0 + 664);
          v50 = *(v0 + 672);

          v51 = sub_1DD96AC38(v47, v48);
          if (v52)
          {
            break;
          }

          *(v46 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v51;
          v54 = (v46[6] + 16 * v51);
          *v54 = v47;
          v54[1] = v48;
          v55 = (v46[7] + 16 * v51);
          *v55 = v49;
          v55[1] = v50;
          v56 = v46[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_37;
          }

          v46[2] = v58;
          v59 = *(v0 + 680);
          v60 = *(v0 + 688);
          v61 = *(v0 + 696);
          v62 = *(v0 + 704);

          v51 = sub_1DD96AC38(v59, v60);
          if (v52)
          {
            break;
          }

          *(v46 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v51;
          v63 = (v46[6] + 16 * v51);
          *v63 = v59;
          v63[1] = v60;
          v64 = (v46[7] + 16 * v51);
          *v64 = v61;
          v64[1] = v62;
          v65 = v46[2];
          v57 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v57)
          {
            goto LABEL_37;
          }

          v46[2] = v66;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
          swift_arrayDestroy();
          v68 = *(v36 + 16);
          v67 = *(v36 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1DD9AF17C((v67 > 1), v68 + 1, 1);
          }

          *(v36 + 16) = v68 + 1;
          *(v36 + 8 * v68 + 32) = v46;
          v41 += 4;
          if (!--v40)
          {

            v37 = v71;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v51, v52, v53);
      }

LABEL_32:
      *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
      *(v0 + 792) = v36;
      sub_1DD940DE4((v0 + 792), (v0 + 824));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_1DD9B2CFC(v0 + 136);
    }

    *(v0 + 2624) = v37;
    v52 = *(v0 + 1352);
    v51 = sub_1DD9AC8D0;
    v53 = 0;

    return MEMORY[0x1EEE6DFA0](v51, v52, v53);
  }

  v18 = *(v16 + 32);
  if (!*(v0 + 2512))
  {

    goto LABEL_26;
  }

  v19 = *(v0 + 2528);

  if (!v19)
  {
LABEL_26:

    v21 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_27;
  }

  v20 = *(v0 + 2528);
  v21 = *(v0 + 2520);
LABEL_27:
  *(v0 + 2608) = v20;
  *(v0 + 2600) = v17;
  *(v0 + 2592) = v18;
  v69 = swift_task_alloc();
  *(v0 + 2616) = v69;
  *v69 = v0;
  v69[1] = sub_1DD9AC2E8;

  return sub_1DD949B9C(v21, v20);
}

uint64_t sub_1DD9AC2E8()
{
  v1 = *(*v0 + 2616);
  v2 = *(*v0 + 2608);
  v3 = *(*v0 + 2600);
  v4 = *(*v0 + 2592);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AC440, 0, 0);
}

uint64_t sub_1DD9AC440()
{
  v1 = *(v0 + 216);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 1936);
    v3 = *(v0 + 1328);
    v4 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
    v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v7 = *v5;
    v6 = v5[1];
    v8 = v3[45];
    v10 = v3[14];
    v9 = v3[15];
    v11 = sub_1DDA14D60();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_1DDA14D40();

    v12 = sub_1DDA14D30();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v7;
    v13[5] = v6;
    v13[6] = v10;
    v13[7] = v9;
    v13[8] = v8;
    sub_1DD982718(0, 0, v2, &unk_1DDA1B230, v13);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
  v17 = *(v0 + 224);
  if (!v17)
  {
    sub_1DD9B2CFC(v0 + 136);
LABEL_18:
    *(v0 + 2624) = v16;
    v31 = *(v0 + 1352);
    v30 = sub_1DD9AC8D0;
    v32 = 0;

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }

  v18 = *(v0 + 224);

  sub_1DD9B2CFC(v0 + 136);
  v19 = *(v17 + 16);
  if (!v19)
  {

LABEL_17:
    *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
    *(v0 + 792) = v15;
    sub_1DD940DE4((v0 + 792), (v0 + 824));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    goto LABEL_18;
  }

  v50 = v16;
  sub_1DD9AF17C(0, v19, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v20 = (v17 + 56);
  while (1)
  {
    v21 = *(v20 - 3);
    v22 = *(v20 - 2);
    v23 = *(v20 - 1);
    v24 = *v20;
    *(v0 + 648) = 25705;
    *(v0 + 656) = 0xE200000000000000;
    *(v0 + 664) = v21;
    *(v0 + 672) = v22;
    *(v0 + 680) = 0x6567617373656DLL;
    *(v0 + 688) = 0xE700000000000000;
    *(v0 + 696) = v23;
    *(v0 + 704) = v24;
    v25 = sub_1DDA151C0();

    v26 = *(v0 + 648);
    v27 = *(v0 + 656);
    v28 = *(v0 + 664);
    v29 = *(v0 + 672);

    v30 = sub_1DD96AC38(v26, v27);
    if (v31)
    {
      break;
    }

    *(v25 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
    v33 = (v25[6] + 16 * v30);
    *v33 = v26;
    v33[1] = v27;
    v34 = (v25[7] + 16 * v30);
    *v34 = v28;
    v34[1] = v29;
    v35 = v25[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_22;
    }

    v25[2] = v37;
    v38 = *(v0 + 680);
    v39 = *(v0 + 688);
    v40 = *(v0 + 696);
    v41 = *(v0 + 704);

    v30 = sub_1DD96AC38(v38, v39);
    if (v31)
    {
      break;
    }

    *(v25 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
    v42 = (v25[6] + 16 * v30);
    *v42 = v38;
    v42[1] = v39;
    v43 = (v25[7] + 16 * v30);
    *v43 = v40;
    v43[1] = v41;
    v44 = v25[2];
    v36 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v36)
    {
      goto LABEL_22;
    }

    v25[2] = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
    swift_arrayDestroy();
    v47 = *(v15 + 16);
    v46 = *(v15 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1DD9AF17C((v46 > 1), v47 + 1, 1);
    }

    *(v15 + 16) = v47 + 1;
    *(v15 + 8 * v47 + 32) = v25;
    v20 += 4;
    if (!--v19)
    {

      v16 = v50;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

uint64_t sub_1DD9AC8D0()
{
  v1 = v0[169];
  v0[329] = *(v1 + 112);
  v0[330] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DD9AC94C, 0, 0);
}

uint64_t sub_1DD9AC94C()
{
  v1 = v0[328];
  v2 = v0[164];
  if (v0[330])
  {
    v3 = v0[329];
    v4 = v0[330];
  }

  v5 = sub_1DDA13CC0();
  v6 = MEMORY[0x1E69DA620];
  v2[3] = v5;
  v2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1DDA13CB0();
  v7 = v0[248];
  v8 = v0[246];
  v9 = v0[244];
  v10 = v0[243];
  v11 = v0[242];
  v12 = v0[241];
  v13 = v0[240];
  v14 = v0[239];
  v15 = v0[237];
  v16 = v0[236];
  v19 = v0[235];
  v20 = v0[234];
  v21 = v0[233];
  v22 = v0[232];
  v23 = v0[231];
  v24 = v0[230];
  v25 = v0[229];
  v26 = v0[228];
  v27 = v0[227];
  v28 = v0[225];
  v29 = v0[224];
  v30 = v0[223];
  v31 = v0[222];
  v32 = v0[221];
  v33 = v0[219];
  v34 = v0[217];
  v35 = v0[214];
  v36 = v0[213];
  v37 = v0[212];
  v38 = v0[211];
  v39 = v0[210];
  v40 = v0[207];
  v41 = v0[206];
  v42 = v0[203];
  v43 = v0[202];
  v44 = v0[201];
  v45 = v0[200];
  v46 = v0[199];
  v47 = v0[198];
  v48 = v0[196];
  v49 = v0[195];
  v50 = v0[194];
  v51 = v0[193];
  v52 = v0[191];
  v53 = v0[189];
  v54 = v0[187];
  v55 = v0[186];
  v56 = v0[185];
  v57 = v0[183];
  v58 = v0[182];
  v59 = v0[181];
  v60 = v0[178];
  v61 = v0[177];
  v62 = v0[176];
  v63 = v0[173];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DD9ACD18()
{
  v1 = *(v0 + 1328);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1DD9ACD9C, 0, 0);
}

uint64_t sub_1DD9ACD9C()
{
  v1 = v0[178];
  v2 = v0[175];
  v3 = v0[174];
  v4 = v0[173];
  sub_1DD9B4C84(v1, v4, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_1DD91442C(v4, v0[92]);
  sub_1DD90D378(v4, &qword_1ECD82CF8, &unk_1DDA1AD50);
  sub_1DD9B4918(v1, type metadata accessor for ChatChunk.RateLimits);
  sub_1DD9291B0((v0 + 89));
  v5 = v0[164];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  v6 = v0[248];
  v7 = v0[246];
  v8 = v0[244];
  v9 = v0[243];
  v10 = v0[242];
  v11 = v0[241];
  v12 = v0[240];
  v13 = v0[239];
  v14 = v0[237];
  v15 = v0[236];
  v18 = v0[235];
  v19 = v0[234];
  v20 = v0[233];
  v21 = v0[232];
  v22 = v0[231];
  v23 = v0[230];
  v24 = v0[229];
  v25 = v0[228];
  v26 = v0[227];
  v27 = v0[225];
  v28 = v0[224];
  v29 = v0[223];
  v30 = v0[222];
  v31 = v0[221];
  v32 = v0[219];
  v33 = v0[217];
  v34 = v0[214];
  v35 = v0[213];
  v36 = v0[212];
  v37 = v0[211];
  v38 = v0[210];
  v39 = v0[207];
  v40 = v0[206];
  v41 = v0[203];
  v42 = v0[202];
  v43 = v0[201];
  v44 = v0[200];
  v45 = v0[199];
  v46 = v0[198];
  v47 = v0[196];
  v48 = v0[195];
  v49 = v0[194];
  v50 = v0[193];
  v51 = v0[191];
  v52 = v0[189];
  v53 = v0[187];
  v54 = v0[186];
  v55 = v0[185];
  v56 = v0[183];
  v57 = v0[182];
  v58 = v0[181];
  v59 = v0[178];
  v60 = v0[177];
  v61 = v0[176];
  v62 = v0[173];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DD9AD1AC()
{
  v1 = v0[294];
  v2 = v0[289];
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[294];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed to download generated image. Error: %@", v8, 0xCu);
    sub_1DD90D378(v9, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[164];
  sub_1DD9B4918(v0[202], type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v0[248];
  v14 = v0[246];
  v15 = v0[244];
  v16 = v0[243];
  v17 = v0[242];
  v18 = v0[241];
  v19 = v0[240];
  v20 = v0[239];
  v21 = v0[237];
  v22 = v0[236];
  v25 = v0[235];
  v26 = v0[234];
  v27 = v0[233];
  v28 = v0[232];
  v29 = v0[231];
  v30 = v0[230];
  v31 = v0[229];
  v32 = v0[228];
  v33 = v0[227];
  v34 = v0[225];
  v35 = v0[224];
  v36 = v0[223];
  v37 = v0[222];
  v38 = v0[221];
  v39 = v0[219];
  v40 = v0[217];
  v41 = v0[214];
  v42 = v0[213];
  v43 = v0[212];
  v44 = v0[211];
  v45 = v0[210];
  v46 = v0[207];
  v47 = v0[206];
  v48 = v0[203];
  v49 = v0[202];
  v50 = v0[201];
  v51 = v0[200];
  v52 = v0[199];
  v53 = v0[198];
  v54 = v0[196];
  v55 = v0[195];
  v56 = v0[194];
  v57 = v0[193];
  v58 = v0[191];
  v59 = v0[189];
  v60 = v0[187];
  v61 = v0[186];
  v62 = v0[185];
  v63 = v0[183];
  v64 = v0[182];
  v65 = v0[181];
  v66 = v0[178];
  v67 = v0[177];
  v68 = v0[176];
  v69 = v0[173];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DD9AD638(unint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1DDA14760();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_1DDA14790();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v42 - v18;
  v47 = v10;
  v44 = a3;
  if (a3)
  {
    v18 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v18 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v20 = a1 + 1;
LABEL_9:
          v51 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
          goto LABEL_10;
        }

LABEL_23:
        v37 = (a1 & 0x3F) << 8;
        v38 = (a1 >> 6) + v37 + 33217;
        v39 = (v37 | (a1 >> 6) & 0x3F) << 8;
        v40 = (a1 >> 18) + ((v39 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v41 = (a1 >> 12) + v39 + 8487393;
        if (v18)
        {
          v20 = v40;
        }

        else
        {
          v20 = v41;
        }

        if (a1 < 0x800)
        {
          v20 = v38;
        }

        goto LABEL_9;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_10:
  v45 = sub_1DDA14BB0();
  v46 = v21;
  (*(v14 + 16))(v19, v3 + OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter, v13);
  sub_1DDA14750();
  v22 = sub_1DDA14780();
  v23 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
LABEL_19:

    v27 = v48;
    (*(v48 + 16))(v47, v12, v6);
    v28 = sub_1DDA147D0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1DDA147C0();
    v32 = v27;
    v33 = v31;
    (*(v32 + 8))(v12, v6);
    (*(v14 + 8))(v19, v13);
    v34 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
    swift_beginAccess();

    v35 = *(v3 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v3 + v34);
    *(v3 + v34) = 0x8000000000000000;
    sub_1DD9CB6A0(v33, v45, v46, isUniquelyReferenced_nonNull_native);

    *(v3 + v34) = v50;
    swift_endAccess();
  }

  v43 = v13;
  if ((v44 & 1) == 0)
  {
    if (a1)
    {
      v24 = v6;
LABEL_18:
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1DDA14740();
      _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v22, v23, v26, a1, "", v25, 2u);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
      v6 = v24;
      v13 = v43;
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (HIDWORD(a1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v24 = v6;
      a1 = &v49;
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1DD9ADA8C(unint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = sub_1DDA147A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DDA14760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA14790();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v48 - v20;
  v55 = a3;
  v58 = v7;
  v59 = v12;
  v57 = v8;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v8 = result;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_29;
  }

  v20 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v43 = (a1 & 0x3F) << 8;
    v44 = (a1 >> 6) + v43 + 33217;
    v45 = (v43 | (a1 >> 6) & 0x3F) << 8;
    v46 = (a1 >> 18) + ((v45 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v47 = (a1 >> 12) + v45 + 8487393;
    if (v20)
    {
      v22 = v46;
    }

    else
    {
      v22 = v47;
    }

    if (a1 < 0x800)
    {
      v22 = v44;
    }

    goto LABEL_9;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_30;
  }

  v8 = result;
  if (a1 > 0x7F)
  {
    goto LABEL_31;
  }

  v22 = a1 + 1;
LABEL_9:
  v62 = (v22 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v22) >> 3))));
LABEL_10:
  v23 = sub_1DDA14BB0();
  v25 = v24;
  v26 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
  swift_beginAccess();
  v27 = *(v3 + v26);
  if (!*(v27 + 16))
  {
  }

  v28 = *(v4 + v26);

  v29 = sub_1DD96AC38(v23, v25);
  if ((v30 & 1) == 0)
  {
LABEL_16:
  }

  v52 = v25;
  v53 = v23;
  v54 = v11;
  v31 = *(*(v27 + 56) + 8 * v29);

  v32 = v16;
  v33 = v31;
  (*(v32 + 16))(v21, v4 + OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter, v8);
  v34 = sub_1DDA14780();
  v35 = v21;
  v36 = v60;
  sub_1DDA147B0();
  v51 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  v48[1] = v4;
  v49 = v8;
  v50 = v33;
  if ((v55 & 1) == 0)
  {
    v38 = v57;
    v37 = v58;
    v39 = v56;
    if (!a1)
    {
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v38 = v57;
  v37 = v58;
  v39 = v56;
  if (HIDWORD(a1))
  {
    goto LABEL_38;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  a1 = &v61;
LABEL_22:

  sub_1DDA147E0();

  if ((*(v38 + 88))(v39, v37) == *MEMORY[0x1E69E93E8])
  {
    v40 = "[Error] Interval already ended";
  }

  else
  {
    (*(v38 + 8))(v39, v37);
    v40 = "";
  }

  v41 = swift_slowAlloc();
  *v41 = 0;
  v36 = v60;
  v42 = sub_1DDA14740();
  _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v34, v51, v42, a1, v40, v41, 2u);
  MEMORY[0x1E12B8CE0](v41, -1, -1);
  v8 = v49;
LABEL_26:

  (*(v59 + 8))(v36, v54);
  (*(v32 + 8))(v35, v8);
  swift_beginAccess();
  sub_1DD9C72B8(0, v53, v52);
  swift_endAccess();
}

uint64_t sub_1DD9ADFD4()
{
  v1 = *(v0 + 15);

  v2 = *(v0 + 16);

  v3 = *(v0 + 17);

  v4 = *(v0 + 18);

  v5 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposter;
  v6 = sub_1DDA14790();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *&v0[OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD9AE07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_1DDA13DF0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v10 = sub_1DDA13E40();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9AE1F0, v5, 0);
}

uint64_t sub_1DD9AE218()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1DDA14D60();
  v0[19] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[20] = v7;
  v0[21] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v5);
  v0[22] = sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v11 = sub_1DD983040(0, 0, v1, &unk_1DDA1B178, v9);
  v0[23] = v11;
  v12 = *(MEMORY[0x1E69E86C0] + 4);
  v13 = swift_task_alloc();
  v0[24] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  *v13 = v0;
  v13[1] = sub_1DD9AE3B4;

  return MEMORY[0x1EEE6DA40](v0 + 2, v11, v14);
}

uint64_t sub_1DD9AE3B4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9AE4CC, 0, 0);
}

uint64_t sub_1DD9AE4CC()
{
  v1 = v0[8];
  v0[25] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1DD9AE4F0, v1, 0);
}

uint64_t sub_1DD9AE4F0()
{
  v111 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (sub_1DDA14C50() & 1) != 0 || (v3 = *(v0 + 40), v4 = *(v0 + 48), (sub_1DDA14C50()))
  {
    v5 = *(v0 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v0 + 112);
      v8 = *(v0 + 80);
      v9 = *(v7 + 16);
      v7 += 16;
      v109 = v9;
      v104 = (*(v7 + 64) + 32) & ~*(v7 + 64);
      v10 = v5 + v104;
      v107 = *MEMORY[0x1E69DA7B8];
      v11 = (v8 + 8);
      v103 = (v7 - 8);
      v105 = (v7 + 16);
      v106 = (v8 + 104);
      v12 = MEMORY[0x1E69E7CC0];
      v108 = *(v7 + 56);
      do
      {
        v14 = *(v0 + 96);
        v15 = *(v0 + 88);
        v16 = *(v0 + 72);
        v109(*(v0 + 128), v10, *(v0 + 104));
        sub_1DDA13E00();
        (*v106)(v15, v107, v16);
        v17 = sub_1DDA13DE0();
        v18 = *v11;
        (*v11)(v15, v16);
        v18(v14, v16);
        v19 = *(v0 + 128);
        if (v17)
        {
          v20 = *v105;
          (*v105)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
          v110 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD9AF078(0, *(v12 + 16) + 1, 1);
            v12 = v110;
          }

          v22 = *(v12 + 16);
          v21 = *(v12 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1DD9AF078(v21 > 1, v22 + 1, 1);
            v12 = v110;
          }

          v23 = *(v0 + 120);
          v24 = *(v0 + 104);
          *(v12 + 16) = v22 + 1;
          v13 = v108;
          v20(v12 + v104 + v22 * v108, v23, v24);
        }

        else
        {
          (*v103)(*(v0 + 128), *(v0 + 104));
          v13 = v108;
        }

        v10 += v13;
        --v6;
      }

      while (v6);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v25 = *(v0 + 200);
    v26 = *(v12 + 16);

    v29 = *(v25 + 16);
    v28 = (v25 + 16);
    v27 = v29;
    v30 = v29 - v26;
    if (v29 > v26)
    {
      v31 = *(v0 + 200);
      v32 = v27 >= v30;
      v33 = v27 - v30;
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      sub_1DDA154B0();
      swift_unknownObjectRetain_n();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
        swift_unknownObjectRelease();
        v35 = MEMORY[0x1E69E7CC0];
      }

      v36 = *(v35 + 16);

      v37 = *(v0 + 200);
      if (v36 == v34)
      {
        v38 = *(v0 + 200);
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v39)
        {
LABEL_24:
          v41 = *(v0 + 168);
          v42 = *(v0 + 176);
          v44 = *(v0 + 136);
          v43 = *(v0 + 144);
          v46 = *(v0 + 24);
          v45 = *(v0 + 32);
          (*(v0 + 160))(v44, 1, 1, *(v0 + 152));

          v47 = sub_1DDA14D30();
          v48 = swift_allocObject();
          v49 = MEMORY[0x1E69E85E0];
          v48[2] = v47;
          v48[3] = v49;
          v48[4] = v39;
          v48[5] = v46;
          v48[6] = v45;
          v48[7] = v43;
          sub_1DD982718(0, 0, v44, &unk_1DDA1B180, v48);

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v50 = sub_1DDA14810();
          __swift_project_value_buffer(v50, qword_1ECDA20E0);

          v51 = sub_1DDA147F0();
          v52 = sub_1DDA14EC0();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v110 = v54;
            *v53 = 134349314;
            *(v53 + 4) = v30;
            *(v53 + 12) = 2082;
            v55 = *(v39 + 16);
            if (v55)
            {
              v56 = (v39 + 16 + 16 * v55);
              v58 = *v56;
              v57 = v56[1];
            }

            else
            {
              v58 = 7104878;
              v57 = 0xE300000000000000;
            }

            v81 = sub_1DD93FA54(v58, v57, &v110);

            *(v53 + 14) = v81;
            _os_log_impl(&dword_1DD8F8000, v51, v52, "%{public}ld undo operations performed. Resolving previous candidate to %{public}s.", v53, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x1E12B8CE0](v54, -1, -1);
            MEMORY[0x1E12B8CE0](v53, -1, -1);
          }

          v82 = *(v39 + 16);
          if (v82)
          {
            v83 = (v39 + 16 + 16 * v82);
            v84 = *v83;
            v85 = v83[1];

            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v39 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v101 = *(v0 + 200);
        swift_unknownObjectRelease();
        sub_1DD9B12E8(v37, v31 + 32, 0, (2 * v34) | 1);
        v39 = v102;
      }

      v40 = *(v0 + 200);
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 200);
    v60 = sub_1DDA14810();
    __swift_project_value_buffer(v60, qword_1ECDA20E0);

    v61 = sub_1DDA147F0();
    v62 = sub_1DDA14EC0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v110 = v64;
      *v63 = 136446210;
      if (*v28)
      {
        v65 = &v28[2 * *v28];
        v67 = *v65;
        v66 = v65[1];
      }

      else
      {
        v67 = 7104878;
        v66 = 0xE300000000000000;
      }

      v86 = sub_1DD93FA54(v67, v66, &v110);

      *(v63 + 4) = v86;
      _os_log_impl(&dword_1DD8F8000, v61, v62, "Resolving previous candidate to %{public}s.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1E12B8CE0](v64, -1, -1);
      MEMORY[0x1E12B8CE0](v63, -1, -1);
    }

    v87 = *(v0 + 200);
    if (*v28)
    {
      v88 = &v28[2 * *v28];
LABEL_52:
      v84 = *v88;
      v85 = v88[1];

      goto LABEL_55;
    }
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 200);
    v69 = sub_1DDA14810();
    __swift_project_value_buffer(v69, qword_1ECDA20E0);

    v70 = sub_1DDA147F0();
    v71 = sub_1DDA14EC0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 200);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v110 = v74;
      *v73 = 136446210;
      v77 = *(v72 + 16);
      v76 = v72 + 16;
      v75 = v77;
      if (v77)
      {
        v78 = (v76 + 16 * v75);
        v80 = *v78;
        v79 = v78[1];
      }

      else
      {
        v80 = 7104878;
        v79 = 0xE300000000000000;
      }

      v89 = sub_1DD93FA54(v80, v79, &v110);

      *(v73 + 4) = v89;
      _os_log_impl(&dword_1DD8F8000, v70, v71, "Resolving previous candidate to %{public}s.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1E12B8CE0](v74, -1, -1);
      MEMORY[0x1E12B8CE0](v73, -1, -1);
    }

    v90 = *(v0 + 200);
    v93 = *(v90 + 16);
    v91 = v90 + 16;
    v92 = v93;
    if (v93)
    {
      v88 = (v91 + 16 * v92);
      goto LABEL_52;
    }
  }

LABEL_54:
  v84 = 0;
  v85 = 0;
LABEL_55:
  v95 = *(v0 + 128);
  v94 = *(v0 + 136);
  v96 = *(v0 + 120);
  v98 = *(v0 + 88);
  v97 = *(v0 + 96);

  v99 = *(v0 + 8);

  return v99(v84, v85);
}

void *sub_1DD9AED88()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_1DD9291B0((v0 + 27));
  sub_1DD926314((v0 + 37));
  v5 = v0[45];

  v6 = v0[47];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DD9AEDF0()
{
  sub_1DD9AED88();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Session.ResponseInfo()
{
  result = qword_1ECD83638;
  if (!qword_1ECD83638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD9AEE94()
{
  result = sub_1DDA14790();
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

uint64_t sub_1DD9AEF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B852C(a1, v4, v5, v6, v7, v8);
}

char *sub_1DD9AF014(char *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DD9AF034(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD837F0, &qword_1DDA1B3D8, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

size_t sub_1DD9AF078(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD82A20, &qword_1DDA16E40, MEMORY[0x1E69DA800]);
  *v3 = result;
  return result;
}

char *sub_1DD9AF0BC(char *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF0DC(void *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF420(a1, a2, a3, *v3, &qword_1ECD83780, &qword_1DDA1B308, &qword_1ECD834A8, &qword_1DDA1A5C0);
  *v3 = result;
  return result;
}

void *sub_1DD9AF11C(void *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF420(a1, a2, a3, *v3, &qword_1ECD83788, &qword_1DDA1B310, &qword_1ECD834A0, &qword_1DDA1A5B8);
  *v3 = result;
  return result;
}

char *sub_1DD9AF15C(char *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD9AF17C(void *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD9AF19C(char *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD9AF1BC(char *a1, int64_t a2, char a3)
{
  result = sub_1DD9AF8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DD9AF1DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD9AF9FC(a1, a2, a3, *v3, &qword_1ECD837C0, &qword_1DDA1B398, MEMORY[0x1E69C6178]);
  *v3 = result;
  return result;
}

char *sub_1DD9AF220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83880, &qword_1DDA1B4F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_1DD9AF314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A68, &qword_1DDA16E78);
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

void *sub_1DD9AF420(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DD9AF568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83790, &qword_1DDA1B318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD9AF684(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C0, &qword_1DDA1B258);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD9AF7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83878, &qword_1DDA1B4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD9AF8E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83870, &qword_1DDA1B4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DD9AF9FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_1DD9AFBD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v9 = sub_1DDA155B0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DDA15440() & 1) != 0)
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

    sub_1DD9B05D0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}