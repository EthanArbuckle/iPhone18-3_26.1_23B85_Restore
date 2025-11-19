uint64_t sub_23885D470()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = *(v2 + 1064);
  v6 = *(v2 + 1056);
  if (v0)
  {
    v7 = sub_23885D8E8;
  }

  else
  {
    v7 = sub_23885D5AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23885D5AC()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 840);
  *(v0 + 744) = *(v0 + 824);
  *(v0 + 760) = v4;
  *(v0 + 776) = *(v0 + 856);
  v5 = *(v0 + 808);
  *(v0 + 712) = *(v0 + 792);
  *(v0 + 728) = v5;
  v3(v0 + 712);
  if (v1)
  {
    sub_238856720(v0 + 712);
    sub_238827E88(*(v0 + 1048), &qword_27DF2FFD0, &qword_2388D6160);
    v15 = *(v0 + 1048);
    v16 = *(v0 + 1032);
    v17 = *(v0 + 1024);
    v18 = *(v0 + 1016);
    v19 = *(v0 + 984);
    v20 = *(v0 + 968);
    v21 = *(v0 + 952);
    v22 = *(v0 + 944);
    v23 = *(v0 + 936);
  }

  else
  {
    v6 = *(v0 + 896);
    v7 = *(v0 + 888);
    v8 = *(v0 + 872);
    sub_238856720(v0 + 712);
    v9 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 112);
    *(v0 + 280) = v9;
    *(v0 + 296) = *(v0 + 144);
    *(v0 + 312) = *(v0 + 160);
    v10 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 48);
    *(v0 + 216) = v10;
    v11 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 80);
    *(v0 + 248) = v11;
    v12 = *(v0 + 32);
    *(v0 + 168) = *(v0 + 16);
    *(v0 + 184) = v12;
    v13 = swift_task_alloc();
    v13[2] = v7;
    v13[3] = v6;
    v13[4] = v7;
    v14 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_238856830, v14, v7, v6, v8);
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1032);
    v28 = *(v0 + 1024);
    v29 = *(v0 + 1016);
    v30 = *(v0 + 984);
    v31 = *(v0 + 968);
    v32 = *(v0 + 952);
    v37 = *(v0 + 944);
    v38 = *(v0 + 936);
    v33 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v33;
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = *(v0 + 312);
    v34 = *(v0 + 216);
    *(v0 + 504) = *(v0 + 200);
    *(v0 + 520) = v34;
    v35 = *(v0 + 248);
    *(v0 + 536) = *(v0 + 232);
    *(v0 + 552) = v35;
    v36 = *(v0 + 184);
    *(v0 + 472) = *(v0 + 168);
    *(v0 + 488) = v36;
    sub_238827E88(v0 + 472, &qword_27DF2FFD8, &unk_2388D6170);
    sub_238827E88(v26, &qword_27DF2FFD0, &qword_2388D6160);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23885D8E8()
{
  v1 = v0[137];
  sub_238827E88(v0[131], &qword_27DF2FFD0, &qword_2388D6160);
  v2 = v0[131];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[123];
  v7 = v0[121];
  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[117];

  v11 = v0[1];

  return v11();
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for RawResponseStream();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(a2 + 48);
  v39[2] = *(a2 + 32);
  v39[3] = v20;
  v39[4] = *(a2 + 64);
  v40 = *(a2 + 80);
  v21 = *(a2 + 16);
  v39[0] = *a2;
  v39[1] = v21;
  sub_23885B7B0();
  sub_23885F5A4(a1, v19, type metadata accessor for PromptTemplate);
  v22 = type metadata accessor for PromptTemplate();
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = type metadata accessor for GenerationSchema(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = v3[20];
  v25 = v3[21];
  v26 = sub_238815878(v3 + 17, v24);
  v38 = 0;
  sub_23884B7DC(&v38, v19, v39, v26, v15, 0, 1, v11, sub_23884B648, 0, MEMORY[0x277D837D0], v24, v25);
  sub_238827E88(v15, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v19, &qword_27DF2FFC0, &unk_2388D5A80);
  v27 = *v11;
  v28 = v11[1];
  v29 = *(v8 + 28);
  v30 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v31 = v30[9];
  v32 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v32 - 8) + 32))(a3 + v31, v11 + v29, v32);
  v33 = *(v11 + *(v8 + 32));
  result = swift_allocObject();
  *(result + 16) = 0;
  *a3 = v27;
  a3[1] = v28;
  *(a3 + v30[10]) = v33;
  v35 = (a3 + v30[11]);
  *v35 = sub_238830F10;
  v35[1] = 0;
  v36 = (a3 + v30[12]);
  *v36 = sub_238859730;
  v36[1] = result;
  return result;
}

uint64_t LanguageModelSession.streamResponse(to:schema:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a3;
  v6 = type metadata accessor for GenerationSchema(0);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = v8;
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for RawResponseStream();
  v82 = *(v89 - 8);
  v9 = *(v82 + 64);
  v10 = MEMORY[0x28223BE20](v89);
  v84 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v79 - v12);
  v14 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v79 - v16;
  v81 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v18 = *(*(v81 - 1) + 64);
  MEMORY[0x28223BE20](v81);
  v20 = (&v79 - v19);
  v21 = type metadata accessor for GenerationSchema.Kind(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v79 - v27;
  sub_23885B7B0();
  sub_23885F5A4(a1, v28, type metadata accessor for PromptTemplate);
  v29 = type metadata accessor for PromptTemplate();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  LOBYTE(v105) = 1;
  LOBYTE(v109[0]) = 1;
  LOBYTE(v91) = 1;
  LOBYTE(v108[0]) = 1;
  v85 = 1;
  v86 = 1;
  sub_23885F5A4(a2, v24, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v30 = *(v24 + 1);

    v31 = *(v24 + 3);

    v32 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(&v24[*(v32 + 64)], type metadata accessor for StringGuides);
    sub_23885F5A4(a2, v17, type metadata accessor for GenerationSchema);
    (*(v87 + 56))(v17, 0, 1, v88);
    v33 = v3[20];
    v34 = v3[21];
    v35 = sub_238815878(v3 + 17, v33);
    v105 = 0;
    v91 = 0uLL;
    v92 = -2;
    *v93 = v109[0];
    *&v93[3] = *(v109 + 3);
    v94 = 0;
    v95 = 1;
    *v96 = v108[0];
    *&v96[3] = *(v108 + 3);
    v97 = 0;
    v98 = 1;
    *v99 = *v107;
    *&v99[3] = *&v107[3];
    v100 = 0;
    v101 = v85;
    *&v102[3] = *&v106[3];
    *v102 = *v106;
    v103 = 0;
    v104 = v86;
    sub_23884B7DC(&v105, v28, &v91, v35, v17, 0, 1, v13, sub_23884B648, 0, MEMORY[0x277D837D0], v33, v34);
    sub_238827E88(v17, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v28, &qword_27DF2FFC0, &unk_2388D5A80);
    v36 = *v13;
    v37 = v13[1];
    v38 = v89;
    v39 = *(v89 + 20);
    v40 = v81;
    v41 = v81[9];
    v42 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v43 = *(v42 - 8);
    (*(v43 + 32))(v20 + v41, v13 + v39, v42);
    v44 = *(v13 + *(v38 + 24));
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *v20 = v36;
    v20[1] = v37;
    *(v20 + v40[10]) = v44;
    v46 = (v20 + v40[11]);
    *v46 = sub_238830F10;
    v46[1] = 0;
    v47 = (v20 + v40[12]);
    *v47 = sub_238859730;
    v47[1] = v45;
    v49 = *v20;
    v48 = v20[1];
    v50 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v51 = v90;
    (*(v43 + 16))(v90 + v50[9], v20 + v41, v42);

    sub_238827E88(v20, &qword_27DF2FFC8, &qword_2388D5D30);
    v52 = swift_allocObject();
    *(v52 + 16) = v49;
    *(v52 + 24) = v48;
    v53 = swift_allocObject();
    *(v53 + 2) = v49;
    *(v53 + 3) = v48;
    *(v53 + 4) = 0;
    *v51 = v49;
    v51[1] = v48;
    *(v51 + v50[10]) = v44;
    v54 = (v51 + v50[11]);
    *v54 = sub_2388596B0;
    v54[1] = v52;
    v55 = (v51 + v50[12]);
    *v55 = sub_238859748;
    v55[1] = v53;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_23885F674(v24, type metadata accessor for GenerationSchema.Kind);
    v58 = v3[15];
    v57 = v3[16];
    v81 = sub_238815878(v3 + 12, v58);
    v105 = 0;
    v91 = 0uLL;
    v92 = -2;
    *v93 = v109[0];
    *&v93[3] = *(v109 + 3);
    v94 = 0;
    v95 = 1;
    *v96 = v108[0];
    *&v96[3] = *(v108 + 3);
    v97 = 0;
    v98 = 1;
    *v99 = *v107;
    *&v99[3] = *&v107[3];
    v100 = 0;
    v101 = v85;
    *&v102[3] = *&v106[3];
    *v102 = *v106;
    v103 = 0;
    v104 = v86;
    sub_23885F5A4(a2, v17, type metadata accessor for GenerationSchema);
    v59 = v87 + 56;
    (*(v87 + 56))(v17, 0, 1, v88);
    v60 = a2;
    v61 = v80;
    sub_23885F5A4(v60, v80, type metadata accessor for GenerationSchema);
    v62 = (*(v59 + 24) + 16) & ~*(v59 + 24);
    v63 = swift_allocObject();
    sub_23885F60C(v61, v63 + v62, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v105, v28, &v91, v81, v17, 1, 1, v13, sub_238859698, v63, &type metadata for GeneratedContent, v58, v57);

    sub_238827E88(v17, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v28, &qword_27DF2FFC0, &unk_2388D5A80);
    v65 = *v13;
    v64 = v13[1];
    v66 = v89;
    v67 = *(v89 + 20);
    v68 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v69 = v68[9];
    v70 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v71 = v90;
    (*(*(v70 - 8) + 16))(v90 + v69, v13 + v67, v70);
    v72 = *(v13 + *(v66 + 24));
    v73 = v84;
    sub_23885F60C(v13, v84, type metadata accessor for RawResponseStream);
    v74 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v75 = (v83 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    sub_23885F60C(v73, v76 + v74, type metadata accessor for RawResponseStream);
    *(v76 + v75) = 0;
    *v71 = v65;
    v71[1] = v64;
    *(v71 + v68[10]) = v72;
    v77 = (v71 + v68[11]);
    *v77 = sub_2388313C0;
    v77[1] = 0;
    v78 = (v71 + v68[12]);
    *v78 = sub_2388596B4;
    v78[1] = v76;
  }
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v106 = a4;
  v105 = type metadata accessor for RawResponseStream();
  v94 = *(v105 - 8);
  v8 = *(v94 + 64);
  v9 = MEMORY[0x28223BE20](v105);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v10;
  MEMORY[0x28223BE20](v9);
  v103 = (&v92 - v11);
  v12 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v101 = &v92 - v14;
  v93 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v15 = *(*(v93 - 1) + 64);
  MEMORY[0x28223BE20](v93);
  v17 = &v92 - v16;
  v18 = type metadata accessor for GenerationSchema.Kind(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for GenerationSchema(0);
  v98 = *(v97 - 8);
  v22 = *(v98 + 64);
  v23 = MEMORY[0x28223BE20](v97);
  v92 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v92 - v24;
  v26 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v92 - v28;
  v104 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v30 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v99 = &v92 - v31;
  v102 = v4;
  sub_23885B7B0();
  sub_23885F5A4(a1, v29, type metadata accessor for PromptTemplate);
  v32 = type metadata accessor for PromptTemplate();
  v33 = *(*(v32 - 8) + 56);
  v100 = v29;
  v34 = v29;
  v35 = v25;
  v33(v34, 0, 1, v32);
  v36 = *(a3 + 40);
  v107 = a2;
  v108 = a3;
  v36(a2, a3);
  LOBYTE(v124) = 1;
  LOBYTE(v128[0]) = 1;
  LOBYTE(v109) = 1;
  LOBYTE(v127[0]) = 1;
  sub_23885F5A4(v25, v21, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v37 = *(v21 + 1);

    v38 = *(v21 + 3);

    v39 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(&v21[*(v39 + 64)], type metadata accessor for StringGuides);
    v40 = v101;
    sub_23885F5A4(v25, v101, type metadata accessor for GenerationSchema);
    (*(v98 + 56))(v40, 0, 1, v97);
    v41 = v102[20];
    v42 = v102[21];
    v43 = sub_238815878(v102 + 17, v41);
    v124 = 0;
    v109 = 0uLL;
    v110 = -2;
    *v111 = v128[0];
    *&v111[3] = *(v128 + 3);
    v112 = 0;
    v113 = 1;
    *v114 = v127[0];
    *&v114[3] = *(v127 + 3);
    v115 = 0;
    v116 = 1;
    *v117 = *v126;
    *&v117[3] = *&v126[3];
    v118 = 0;
    v119 = 1;
    *&v120[3] = *&v125[3];
    *v120 = *v125;
    v121 = 0;
    v122 = 1;
    v123 = 0;
    v90 = v41;
    v44 = v103;
    v45 = v100;
    sub_23884B7DC(&v124, v100, &v109, v43, v40, 0, 1, v103, sub_23884B648, 0, MEMORY[0x277D837D0], v90, v42);
    sub_238827E88(v40, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v25, type metadata accessor for GenerationSchema);
    sub_238827E88(v45, &qword_27DF2FFC0, &unk_2388D5A80);
    v46 = *v44;
    v47 = v44[1];
    v48 = v105;
    v49 = *(v105 + 20);
    v50 = v93;
    v51 = v93[9];
    v52 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v53 = *(v52 - 8);
    (*(v53 + 32))(&v17[v51], v44 + v49, v52);
    v54 = *(v44 + *(v48 + 24));
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *v17 = v46;
    *(v17 + 1) = v47;
    *&v17[v50[10]] = v54;
    v56 = &v17[v50[11]];
    *v56 = sub_238830F10;
    v56[1] = 0;
    v57 = &v17[v50[12]];
    *v57 = sub_238859730;
    v57[1] = v55;
    v59 = *v17;
    v58 = *(v17 + 1);
    v60 = v104;
    v61 = v99;
    (*(v53 + 16))(&v99[*(v104 + 36)], &v17[v51], v52);

    sub_238827E88(v17, &qword_27DF2FFC8, &qword_2388D5D30);
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    *(v62 + 24) = v58;
    v63 = swift_allocObject();
    *(v63 + 2) = v59;
    *(v63 + 3) = v58;
    *(v63 + 4) = 0;
    *v61 = v59;
    v61[1] = v58;
    *(v61 + v60[10]) = v54;
    v64 = (v61 + v60[11]);
    *v64 = sub_2388596B0;
    v64[1] = v62;
    v65 = (v61 + v60[12]);
    *v65 = sub_238859748;
    v65[1] = v63;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_23885F674(v21, type metadata accessor for GenerationSchema.Kind);
    v66 = v102[15];
    v67 = v102[16];
    v93 = sub_238815878(v102 + 12, v66);
    v124 = 0;
    v109 = 0uLL;
    v110 = -2;
    *v111 = v128[0];
    *&v111[3] = *(v128 + 3);
    v112 = 0;
    v113 = 1;
    *v114 = v127[0];
    *&v114[3] = *(v127 + 3);
    v115 = 0;
    v116 = 1;
    *v117 = *v126;
    *&v117[3] = *&v126[3];
    v118 = 0;
    v119 = 1;
    *&v120[3] = *&v125[3];
    *v120 = *v125;
    v121 = 0;
    v122 = 1;
    v123 = 0;
    v68 = v101;
    sub_23885F5A4(v25, v101, type metadata accessor for GenerationSchema);
    v69 = v98 + 56;
    (*(v98 + 56))(v68, 0, 1, v97);
    v70 = v92;
    sub_23885F5A4(v35, v92, type metadata accessor for GenerationSchema);
    v71 = (*(v69 + 24) + 16) & ~*(v69 + 24);
    v72 = swift_allocObject();
    sub_23885F60C(v70, v72 + v71, type metadata accessor for GenerationSchema);
    v91 = v66;
    v73 = v103;
    v74 = v100;
    sub_23884B7DC(&v124, v100, &v109, v93, v68, 1, 1, v103, sub_238859698, v72, &type metadata for GeneratedContent, v91, v67);

    sub_238827E88(v68, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v35, type metadata accessor for GenerationSchema);
    sub_238827E88(v74, &qword_27DF2FFC0, &unk_2388D5A80);
    v76 = *v73;
    v75 = v73[1];
    v78 = v104;
    v77 = v105;
    v79 = *(v105 + 20);
    v80 = *(v104 + 36);
    v81 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v61 = v99;
    (*(*(v81 - 8) + 16))(&v99[v80], v73 + v79, v81);
    v82 = *(v73 + *(v77 + 24));
    v83 = v96;
    sub_23885F60C(v73, v96, type metadata accessor for RawResponseStream);
    v84 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v85 = (v95 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    sub_23885F60C(v83, v86 + v84, type metadata accessor for RawResponseStream);
    *(v86 + v85) = 0;
    *v61 = v76;
    v61[1] = v75;
    *(v61 + v78[10]) = v82;
    v87 = (v61 + v78[11]);
    *v87 = sub_2388313C0;
    v87[1] = 0;
    v88 = (v61 + v78[12]);
    *v88 = sub_2388596B4;
    v88[1] = v86;
  }

  sub_23885FEF0(v107, v108, v106);
  return sub_238827E88(v61, &qword_27DF2FFD0, &qword_2388D6160);
}

uint64_t sub_23885F2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23885F38C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23885F43C()
{
  sub_23885F4D0();
  if (v0 <= 0x3F)
  {
    sub_23885ACD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23885F4D0()
{
  if (!qword_27DF30168)
  {
    sub_238810E8C(&qword_27DF2FE88, &qword_2388D5780);
    v0 = sub_2388D2788();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30168);
    }
  }
}

unint64_t sub_23885F54C()
{
  result = qword_27DF2FFB0;
  if (!qword_27DF2FFB0)
  {
    type metadata accessor for LanguageModelSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FFB0);
  }

  return result;
}

uint64_t sub_23885F5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23885F60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23885F674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23885F718@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v15 = a1[1];
  *a8 = *a1;
  *(a8 + 1) = v15;
  v16 = type metadata accessor for LanguageModelSession.ResponseStream();
  v17 = v16[9];
  v18 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  result = (*(*(v18 - 8) + 32))(&a8[v17], a2, v18);
  *&a8[v16[10]] = a3;
  v20 = &a8[v16[11]];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &a8[v16[12]];
  *v21 = a6;
  *(v21 + 1) = a7;
  return result;
}

uint64_t LanguageModelSession.ResponseStream.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[22] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2388D2B38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[25] = v6;
  v5[26] = v8;

  return MEMORY[0x2822009F8](sub_23885F890, v6);
}

uint64_t sub_23885F890()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = (v1 + *(v2 + 48));
  v0[27] = *v3;
  v0[28] = v3[1];
  v4 = *(v1 + *(v2 + 40));
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  v0[29] = v6;
  v7 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v6 = v0;
  v6[1] = sub_23885F978;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 12, v4, &type metadata for ResponseEnvelope, v7, v8);
}

uint64_t sub_23885F978()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_23885FB5C;
  }

  else
  {
    v7 = sub_23885FAB4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23885FAB4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v5;
  *(v0 + 80) = *(v0 + 160);
  v6 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v6;
  v2(v0 + 16);
  sub_238856720(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for RawResponseStream();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = *(a2 + 48);
  v40[2] = *(a2 + 32);
  v40[3] = v21;
  v40[4] = *(a2 + 64);
  v41 = *(a2 + 80);
  v22 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v22;
  v23 = type metadata accessor for PromptTemplate();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = type metadata accessor for GenerationSchema(0);
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v25 = v3[20];
  v26 = v3[21];
  v27 = sub_238815878(v3 + 17, v25);
  v39 = v20;

  sub_23884B7DC(&v39, v19, v40, v27, v15, 0, 1, v11, sub_23884B648, 0, MEMORY[0x277D837D0], v25, v26);
  sub_238827E88(v15, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v19, &qword_27DF2FFC0, &unk_2388D5A80);
  v28 = *v11;
  v29 = v11[1];
  v30 = *(v8 + 28);
  v31 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v32 = v31[9];
  v33 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v33 - 8) + 32))(a3 + v32, v11 + v30, v33);
  v34 = *(v11 + *(v8 + 32));
  result = swift_allocObject();
  *(result + 16) = v20;
  *a3 = v28;
  a3[1] = v29;
  *(a3 + v31[10]) = v34;
  v36 = (a3 + v31[11]);
  *v36 = sub_238830F10;
  v36[1] = 0;
  v37 = (a3 + v31[12]);
  *v37 = sub_238856704;
  v37[1] = result;
  return result;
}

uint64_t sub_23885FEB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23885FEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v24 = a3;
  v23 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v23);
  v9 = &v21 - v8;
  v10 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v11 = &v3[v10[11]];
  v12 = *v11;
  v22 = *(v11 + 1);
  v13 = v22;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v12;
  v14[5] = v13;
  v15 = &v3[v10[12]];
  v16 = *v15;
  v17 = *(v15 + 1);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v16;
  v18[5] = v17;
  v19 = *(v3 + 1);
  v25[0] = *v3;
  v25[1] = v19;
  (*(v6 + 16))(v9, &v3[v10[9]], v23);
  sub_23885F718(v25, v9, *&v3[v10[10]], sub_238866074, v14, sub_238866080, v18, v24);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.rawContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v9 = *(v3 + 16);
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  sub_238814698(v4, v5, v9);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.rawContent.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];
  v9 = v2 + *(a2 + 36);
  v10 = *(v9 + 32);
  sub_238810DC4(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = v3;
  *(v9 + 8) = v4;
  *(v9 + 16) = v5;
  *(v9 + 17) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  return result;
}

uint64_t (*LanguageModelSession.ResponseStream.Snapshot.rawContent.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2388602E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = a2[3];
  v10 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for LanguageModelSession.ResponseStream.Snapshot();
  v13 = a3 + *(result + 36);
  *v13 = v5;
  *(v13 + 8) = v6;
  *(v13 + 16) = v7;
  *(v13 + 17) = v8;
  *(v13 + 24) = v9;
  *(v13 + 32) = v10;
  return result;
}

uint64_t LanguageModelSession.ResponseStream.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = *(a4 + 24);
  v5[21] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[22] = AssociatedTypeWitness;
  v7 = sub_2388D2E78();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v10 = *(AssociatedTypeWitness - 8);
  v5[26] = v10;
  v11 = *(v10 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v12 = *(MEMORY[0x277D858B8] + 4);
  v13 = swift_task_alloc();
  v5[29] = v13;
  v14 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  *v13 = v5;
  v13[1] = sub_23886056C;
  v15 = v5[19];
  v16 = v5[16];
  v17 = v5[17];

  return MEMORY[0x2822005A8](v5 + 2, v16, v17, v14, v5 + 14);
}

uint64_t sub_23886056C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v12 = *v1;

  if (v0)
  {
    if (*(v2 + 128))
    {
      v4 = *(v2 + 136);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_238860A04;
  }

  else
  {
    if (*(v2 + 128))
    {
      v9 = *(v2 + 136);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v10;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_2388606F4;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_2388606F4()
{
  v48 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if ((v2 & 0xFFFFFFFFFFFFFEF8) == 0xFFFFFFEF8)
  {
    v3 = 1;
LABEL_11:
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 200);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v34 = *(v0 + 120);
    v35 = type metadata accessor for LanguageModelSession.ResponseStream.Snapshot();
    (*(*(v35 - 8) + 56))(v34, v3, 1, v35);

    v36 = *(v0 + 8);

    return v36();
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  LOBYTE(v7) = *(v0 + 56);
  v8 = *(v0 + 152) + *(*(v0 + 144) + 36);
  v9 = *v8;
  v10 = *(v8 + 8);
  *(v0 + 64) = v1;
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 176);
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  v40 = v6;
  v41 = v5;
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7 & 1;
  v9();
  if ((*(v11 + 48))(v12, 1, v13) != 1)
  {
    v39 = v1;
    v24 = v40;
    v23 = v41;
    v38 = *(*(v0 + 208) + 32);
    v38(*(v0 + 224), *(v0 + 200), *(v0 + 176));
    if ((v2 & 0x8000000000000000) != 0)
    {
      v7 = (v2 >> 8) & 1;
    }

    else
    {
      v25 = (*(v0 + 152) + *(*(v0 + 144) + 40));
      v23 = *v25;
      v24 = v25[1];

      LOBYTE(v2) = 2;
    }

    v26 = *(v0 + 216);
    v42 = *(v0 + 168);
    v27 = *(v0 + 160);
    v28 = *(v0 + 120);
    v38(v26, *(v0 + 224), *(v0 + 176));
    v43[0] = v39;
    v43[1] = v4;
    v44 = v2;
    v45 = v7 & 1;
    v46 = v23;
    v47 = v24;
    sub_2388602E4(v26, v43, v28);
    v3 = 0;
    goto LABEL_11;
  }

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 184);
  sub_238860AB0(v1, v4, v2);
  (*(v15 + 8))(v14, v16);
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 232) = v18;
  v19 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  *v18 = v0;
  v18[1] = sub_23886056C;
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);

  return MEMORY[0x2822005A8](v0 + 16, v21, v22, v19, v0 + 112);
}

uint64_t sub_238860A04()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[14];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_238860AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xFFFFFFFFFFFFFEF8) != 0xFFFFFFEF8)
  {
    return sub_238860AD0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_238860AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_238810DC4(a1, a2, a3);
  }
}

uint64_t sub_238860B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for LanguageModelSession.ResponseStream.AsyncIterator();
  v13 = (a5 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a5 + *(result + 40));
  *v14 = v9;
  v14[1] = v10;
  return result;
}

uint64_t sub_238860BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D856F0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_238860C8C;

  return MEMORY[0x282200318](a1, a2, a3, v3 + 16);
}

uint64_t sub_238860C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 16);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_238860D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return LanguageModelSession.ResponseStream.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t sub_238860E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t LanguageModelSession.ResponseStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  v10 = *(a1 + 36);
  sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  sub_2388D2CF8();
  v11 = (v3 + *(a1 + 44));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v3;
  v15 = v3[1];
  v19[0] = v14;
  v19[1] = v15;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  sub_238860B14(v9, v12, v13, v19, a2);
}

uint64_t sub_238861058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LanguageModelSession.ResponseStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2388610B8@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 40);
  v6 = a1[1];
  v19 = *a1;
  v20 = v6;
  v21 = v4;
  v22 = v5;
  a2(v23, &v19);
  v7 = v26;
  if (v26 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(AssociatedTypeWitness - 8) + 56);
    v10 = AssociatedTypeWitness;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    v14 = v23[0];
    v13 = v23[1];
    v15 = v24;
    v16 = v25;
    v17 = swift_getAssociatedTypeWitness();
    *&v19 = v14;
    *(&v19 + 1) = v13;
    LOWORD(v20) = v15 & 0x1FF;
    *(&v20 + 1) = v16;
    v21 = v7;
    sub_238861294(&v19);
    sub_2388660BC(v14, v13, v15, v16, v7);
    v9 = *(*(v17 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v17;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_238861294(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v1;
  v11 = v5;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v10[0], v1, v5);

  v8 = swift_checkMetadataState();
  return v7(v10, v8, AssociatedConformanceWitness);
}

void *sub_23886139C@<X0>(void *(*a1)(__int128 *__return_ptr)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = a1(&v14);
  if (!v4)
  {
    v24 = v10;
    v12[6] = v20;
    v12[7] = v21;
    v12[8] = v22;
    v12[2] = v16;
    v12[3] = v17;
    v12[4] = v18;
    v12[5] = v19;
    v12[0] = v14;
    v12[1] = v15;
    v10[6] = v20;
    v10[7] = v21;
    v10[8] = v22;
    v10[2] = v16;
    v10[3] = v17;
    v10[4] = v18;
    v10[5] = v19;
    v13 = v23;
    v11 = v23;
    v10[0] = v14;
    v10[1] = v15;
    MEMORY[0x28223BE20](result);
    v9 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_2388660A0, v9, a2, a3, a4);
    return sub_238827E88(v12, &qword_27DF2FFD8, &unk_2388D6170);
  }

  return result;
}

uint64_t sub_238861508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v13 = v8;
  v14 = v5;
  v15 = v6;
  v9 = *(a3 + 8);
  v10 = *(v9 + 8);
  sub_238814698(v12[0], v4, v8);

  return v10(v12, a2, v9);
}

uint64_t LanguageModelSession.streamResponse(to:schema:includeSchemaInPrompt:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v104 = a4;
  v109 = a3;
  v117 = a6;
  v110 = type metadata accessor for GenerationSchema(0);
  v111 = *(v110 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  v101[1] = v10;
  v102 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for RawResponseStream();
  v105 = *(v116 - 8);
  v11 = *(v105 + 64);
  v12 = MEMORY[0x28223BE20](v116);
  v107 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v13;
  MEMORY[0x28223BE20](v12);
  v115 = (v101 - v14);
  v15 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v113 = v101 - v17;
  v103 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v18 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v20 = v101 - v19;
  v108 = type metadata accessor for GenerationSchema.Kind(0);
  v21 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v23 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = v101 - v27;
  v29 = *(a5 + 48);
  v129 = *(a5 + 32);
  v130 = v29;
  v131 = *(a5 + 64);
  v132 = *(a5 + 80);
  v30 = *(a5 + 16);
  v127 = *a5;
  v128 = v30;
  v126[0] = a1;
  v126[1] = a2;
  v125 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D837D0];
  v32 = *(MEMORY[0x277D837D0] - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v26);
  v35 = v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35, v126, v31);
  v36 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v36)(&v118);
  v37 = *(v32 + 8);
  v37(v35, v31);
  sub_23881FAF4(v118);
  v38 = v125;
  v37(v126, v31);
  v39 = v109;

  v40 = type metadata accessor for PromptTemplate();
  v41 = *(*(v40 - 8) + 56);
  v112 = v28;
  v41(v28, 1, 1, v40);
  sub_2388653D8(v39, v23, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v42 = *(v23 + 1);

    v43 = *(v23 + 3);

    v44 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v23[*(v44 + 64)], type metadata accessor for StringGuides);
    v45 = v113;
    sub_2388653D8(v39, v113, type metadata accessor for GenerationSchema);
    (*(v111 + 56))(v45, 0, 1, v110);
    v46 = v114[20];
    v47 = v114[21];
    v48 = sub_238815878(v114 + 17, v46);
    v124 = v38;
    v120 = v129;
    v121 = v130;
    v122 = v131;
    v123 = v132;
    v118 = v127;
    v119 = v128;
    v100 = v46;
    v49 = v115;
    v50 = v112;
    sub_23884B7DC(&v124, v112, &v118, v48, v45, 0, 1, v115, sub_23884B648, 0, v31, v100, v47);
    sub_238827E88(v45, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v50, &qword_27DF2FFC0, &unk_2388D5A80);
    v51 = v49[1];
    v114 = *v49;
    v52 = v116;
    v53 = *(v116 + 20);
    v54 = v103;
    v55 = *(v103 + 36);
    v56 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v57 = v38;
    v58 = *(v56 - 8);
    (*(v58 + 32))(&v20[v55], v49 + v53, v56);
    v59 = *(v49 + *(v52 + 24));
    v60 = swift_allocObject();
    v61 = v57;
    *(v60 + 16) = v57;
    *v20 = v114;
    *(v20 + 1) = v51;
    *&v20[v54[10]] = v59;
    v62 = &v20[v54[11]];
    *v62 = sub_238830F10;
    v62[1] = 0;
    v63 = &v20[v54[12]];
    *v63 = sub_238859730;
    v63[1] = v60;
    v65 = *v20;
    v64 = *(v20 + 1);
    v66 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v67 = v117;
    (*(v58 + 16))(v117 + v66[9], &v20[v55], v56);
    v68 = v61;

    sub_238827E88(v20, &qword_27DF2FFC8, &qword_2388D5D30);
    v69 = swift_allocObject();
    *(v69 + 16) = v65;
    *(v69 + 24) = v64;
    v70 = swift_allocObject();
    *(v70 + 2) = v65;
    *(v70 + 3) = v64;
    *(v70 + 4) = v68;
    *v67 = v65;
    v67[1] = v64;
    *(v67 + v66[10]) = v59;
    v71 = (v67 + v66[11]);
    *v71 = sub_238856808;
    v71[1] = v69;
    v72 = (v67 + v66[12]);
    *v72 = sub_238856810;
    v72[1] = v70;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_2388654EC(v23, type metadata accessor for GenerationSchema.Kind);
    v75 = v114[15];
    v74 = v114[16];
    v76 = sub_238815878(v114 + 12, v75);
    v124 = v38;
    v120 = v129;
    v121 = v130;
    v122 = v131;
    v123 = v132;
    v118 = v127;
    v119 = v128;
    v77 = v113;
    sub_2388653D8(v39, v113, type metadata accessor for GenerationSchema);
    v78 = v111 + 56;
    (*(v111 + 56))(v77, 0, 1, v110);
    v79 = v39;
    v80 = v102;
    sub_2388653D8(v79, v102, type metadata accessor for GenerationSchema);
    v81 = (*(v78 + 24) + 16) & ~*(v78 + 24);
    v82 = swift_allocObject();
    sub_238865440(v80, v82 + v81, type metadata accessor for GenerationSchema);
    v83 = v115;
    v84 = v112;
    sub_23884B7DC(&v124, v112, &v118, v76, v77, v104 & 1, 1, v115, sub_2388567D8, v82, &type metadata for GeneratedContent, v75, v74);

    sub_238827E88(v77, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v84, &qword_27DF2FFC0, &unk_2388D5A80);
    v85 = v83[1];
    v114 = *v83;
    v86 = v116;
    v87 = *(v116 + 20);
    v88 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v89 = v88[9];
    v90 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v91 = v117;
    (*(*(v90 - 8) + 16))(v117 + v89, v83 + v87, v90);
    v92 = *(v83 + *(v86 + 24));
    v93 = v107;
    sub_238865440(v83, v107, type metadata accessor for RawResponseStream);
    v94 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v95 = v38;
    v96 = (v106 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    sub_238865440(v93, v97 + v94, type metadata accessor for RawResponseStream);
    *(v97 + v96) = v95;
    *v91 = v114;
    v91[1] = v85;
    *(v91 + v88[10]) = v92;
    v98 = (v91 + v88[11]);
    *v98 = sub_2388313C0;
    v98[1] = 0;
    v99 = (v91 + v88[12]);
    *v99 = sub_2388567F0;
    v99[1] = v97;
  }
}

void *LanguageModelSession.streamResponse(schema:includeSchemaInPrompt:options:prompt:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v105 = a4;
  v94 = a2;
  v100 = a1;
  v104 = a5;
  v101 = type metadata accessor for GenerationSchema(0);
  v102 = *(v101 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  v93 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RawResponseStream();
  v95 = *(v99 - 8);
  v7 = *(v95 + 64);
  v8 = MEMORY[0x28223BE20](v99);
  v96 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = (v90 - v9);
  v10 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v90 - v12;
  v14 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v90 - v16;
  v18 = type metadata accessor for GenerationSchema.Kind(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v98 = v90 - v25;
  v26 = *(a3 + 48);
  v116 = *(a3 + 32);
  v117 = v26;
  v118 = *(a3 + 64);
  v119 = *(a3 + 80);
  v27 = *(a3 + 16);
  v114 = *a3;
  v115 = v27;
  v28 = v106;
  result = (v105)(&v120, v24);
  if (!v28)
  {
    v90[1] = v6;
    v91 = v14;
    v92 = v7;
    v105 = v17;
    v30 = v13;
    v31 = v97;
    v106 = 0;
    v32 = v120;
    v33 = type metadata accessor for PromptTemplate();
    v34 = v98;
    (*(*(v33 - 8) + 56))(v98, 1, 1, v33);
    v35 = v100;
    sub_2388653D8(v100, v21, type metadata accessor for GenerationSchema.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v36 = *(v21 + 1);

      v37 = *(v21 + 3);

      v38 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
      sub_2388654EC(&v21[*(v38 + 64)], type metadata accessor for StringGuides);
      sub_2388653D8(v35, v13, type metadata accessor for GenerationSchema);
      (*(v102 + 56))(v13, 0, 1, v101);
      v39 = v31[20];
      v40 = v31[21];
      v41 = sub_238815878(v31 + 17, v39);
      v113 = v32;
      v109 = v116;
      v110 = v117;
      v111 = v118;
      v112 = v119;
      v107 = v114;
      v108 = v115;
      v42 = v103;
      sub_23884B7DC(&v113, v34, &v107, v41, v13, 0, 1, v103, sub_23884B648, 0, MEMORY[0x277D837D0], v39, v40);
      sub_238827E88(v13, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v34, &qword_27DF2FFC0, &unk_2388D5A80);
      v43 = v42[1];
      v101 = *v42;
      v100 = v43;
      v44 = v99;
      v45 = *(v99 + 20);
      v46 = v91;
      v47 = v91[9];
      v102 = v47;
      v48 = v32;
      v49 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v50 = *(v49 - 8);
      v51 = v105;
      (*(v50 + 32))(v105 + v47, v42 + v45, v49);
      v52 = *(v42 + *(v44 + 24));
      v53 = swift_allocObject();
      *(v53 + 16) = v48;
      v54 = v100;
      *v51 = v101;
      v51[1] = v54;
      *(v51 + v46[10]) = v52;
      v55 = (v51 + v46[11]);
      *v55 = sub_238830F10;
      v55[1] = 0;
      v56 = (v51 + v46[12]);
      *v56 = sub_238859730;
      v56[1] = v53;
      v58 = *v51;
      v57 = v51[1];
      v59 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
      v60 = v104;
      (*(v50 + 16))(v104 + v59[9], v51 + v102, v49);

      sub_238827E88(v51, &qword_27DF2FFC8, &qword_2388D5D30);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v57;
      v62 = swift_allocObject();
      *(v62 + 2) = v58;
      *(v62 + 3) = v57;
      *(v62 + 4) = v48;
      *v60 = v58;
      v60[1] = v57;
      *(v60 + v59[10]) = v52;
      v63 = (v60 + v59[11]);
      *v63 = sub_2388596B0;
      v63[1] = v61;
      v64 = (v60 + v59[12]);
      *v64 = sub_238859748;
      v64[1] = v62;
      return swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_2388654EC(v21, type metadata accessor for GenerationSchema.Kind);
      v65 = v32;
      v90[0] = v32;
      v67 = v31[15];
      v66 = v31[16];
      v68 = sub_238815878(v31 + 12, v67);
      v113 = v65;
      v109 = v116;
      v110 = v117;
      v111 = v118;
      v112 = v119;
      v107 = v114;
      v108 = v115;
      sub_2388653D8(v35, v30, type metadata accessor for GenerationSchema);
      v69 = v102 + 56;
      (*(v102 + 56))(v30, 0, 1, v101);
      v70 = v35;
      v71 = v93;
      sub_2388653D8(v70, v93, type metadata accessor for GenerationSchema);
      v72 = (*(v69 + 24) + 16) & ~*(v69 + 24);
      v73 = swift_allocObject();
      sub_238865440(v71, v73 + v72, type metadata accessor for GenerationSchema);
      v89 = v66;
      v74 = v103;
      sub_23884B7DC(&v113, v34, &v107, v68, v30, v94 & 1, 1, v103, sub_238859698, v73, &type metadata for GeneratedContent, v67, v89);

      sub_238827E88(v30, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v34, &qword_27DF2FFC0, &unk_2388D5A80);
      v75 = v74[1];
      v105 = *v74;
      v76 = v99;
      v77 = *(v99 + 20);
      v78 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
      v79 = v78[9];
      v80 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v81 = v104;
      (*(*(v80 - 8) + 16))(v104 + v79, v74 + v77, v80);
      v82 = *(v74 + *(v76 + 24));
      v83 = v96;
      sub_238865440(v74, v96, type metadata accessor for RawResponseStream);
      v84 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v85 = (v92 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      sub_238865440(v83, v86 + v84, type metadata accessor for RawResponseStream);
      *(v86 + v85) = v90[0];
      *v81 = v105;
      v81[1] = v75;
      *(v81 + v78[10]) = v82;
      v87 = (v81 + v78[11]);
      *v87 = sub_2388313C0;
      v87[1] = 0;
      v88 = (v81 + v78[12]);
      *v88 = sub_2388596B4;
      v88[1] = v86;
    }
  }

  return result;
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:includeSchemaInPrompt:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v117 = a5;
  v101 = a3;
  v116 = a2;
  v115 = a7;
  v114 = type metadata accessor for RawResponseStream();
  v103 = *(v114 - 8);
  v10 = *(v103 + 64);
  v11 = MEMORY[0x28223BE20](v114);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  MEMORY[0x28223BE20](v11);
  v112 = (&v100 - v13);
  v14 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v100 - v16;
  v102 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v17 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v19 = &v100 - v18;
  v20 = type metadata accessor for GenerationSchema.Kind(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v100 - v26;
  v107 = type metadata accessor for GenerationSchema(0);
  v28 = *(v107 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v107);
  v100 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v100 - v31;
  v113 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v33 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v108 = &v100 - v34;
  v35 = *a1;
  v36 = *(a4 + 48);
  v127 = *(a4 + 32);
  v128 = v36;
  v129 = *(a4 + 64);
  v130 = *(a4 + 80);
  v37 = *(a4 + 16);
  v125 = *a4;
  v126 = v37;
  v38 = *(a6 + 40);
  v116 = a6;
  v38(v117, a6);
  v39 = type metadata accessor for PromptTemplate();
  v40 = *(*(v39 - 8) + 56);
  v109 = v27;
  v40(v27, 1, 1, v39);
  sub_2388653D8(v32, v23, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v106 = v35;
  if (EnumCaseMultiPayload == 4)
  {
    v42 = *(v23 + 1);

    v43 = *(v23 + 3);

    v44 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v23[*(v44 + 64)], type metadata accessor for StringGuides);
    v45 = v110;
    sub_2388653D8(v32, v110, type metadata accessor for GenerationSchema);
    (*(v28 + 56))(v45, 0, 1, v107);
    v46 = v111[20];
    v47 = v111[21];
    v48 = sub_238815878(v111 + 17, v46);
    v124 = v35;
    v120 = v127;
    v121 = v128;
    v122 = v129;
    v123 = v130;
    v118 = v125;
    v119 = v126;
    v98 = v46;
    v49 = v112;
    v50 = v109;
    sub_23884B7DC(&v124, v109, &v118, v48, v45, 0, 1, v112, sub_23884B648, 0, MEMORY[0x277D837D0], v98, v47);
    sub_238827E88(v45, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v50, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v32, type metadata accessor for GenerationSchema);
    v51 = *v49;
    v111 = v49[1];
    v52 = v114;
    v53 = *(v114 + 20);
    v54 = v102;
    v55 = *(v102 + 36);
    v56 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v57 = *(v56 - 8);
    (*(v57 + 32))(&v19[v55], v49 + v53, v56);
    v58 = *(v49 + *(v52 + 24));
    v59 = swift_allocObject();
    v60 = v106;
    *(v59 + 16) = v106;
    v61 = v111;
    *v19 = v51;
    *(v19 + 1) = v61;
    *&v19[v54[10]] = v58;
    v62 = &v19[v54[11]];
    *v62 = sub_238830F10;
    v62[1] = 0;
    v63 = &v19[v54[12]];
    *v63 = sub_238859730;
    v63[1] = v59;
    v65 = *v19;
    v64 = *(v19 + 1);
    v66 = v113;
    v67 = v108;
    (*(v57 + 16))(&v108[*(v113 + 36)], &v19[v55], v56);

    sub_238827E88(v19, &qword_27DF2FFC8, &qword_2388D5D30);
    v68 = swift_allocObject();
    *(v68 + 16) = v65;
    *(v68 + 24) = v64;
    v69 = swift_allocObject();
    *(v69 + 2) = v65;
    *(v69 + 3) = v64;
    *(v69 + 4) = v60;
    *v67 = v65;
    v67[1] = v64;
    *(v67 + v66[10]) = v58;
    v70 = (v67 + v66[11]);
    *v70 = sub_2388596B0;
    v70[1] = v68;
    v71 = (v67 + v66[12]);
    *v71 = sub_238859748;
    v71[1] = v69;
    swift_bridgeObjectRetain_n();
  }

  else
  {

    sub_2388654EC(v23, type metadata accessor for GenerationSchema.Kind);
    v72 = v111[15];
    v73 = v111[16];
    v74 = sub_238815878(v111 + 12, v72);
    v124 = v35;
    v120 = v127;
    v121 = v128;
    v122 = v129;
    v123 = v130;
    v118 = v125;
    v119 = v126;
    v75 = v110;
    sub_2388653D8(v32, v110, type metadata accessor for GenerationSchema);
    (*(v28 + 56))(v75, 0, 1, v107);
    v76 = v100;
    sub_2388653D8(v32, v100, type metadata accessor for GenerationSchema);
    v77 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v78 = swift_allocObject();
    sub_238865440(v76, v78 + v77, type metadata accessor for GenerationSchema);
    v99 = v72;
    v79 = v112;
    v80 = v109;
    sub_23884B7DC(&v124, v109, &v118, v74, v75, v101 & 1, 1, v112, sub_238859698, v78, &type metadata for GeneratedContent, v99, v73);

    sub_238827E88(v75, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v80, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v32, type metadata accessor for GenerationSchema);
    v82 = *v79;
    v81 = v79[1];
    v83 = v114;
    v84 = *(v114 + 20);
    v85 = v113;
    v86 = *(v113 + 36);
    v87 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v67 = v108;
    (*(*(v87 - 8) + 16))(&v108[v86], v79 + v84, v87);
    v88 = *(v79 + *(v83 + 24));
    v89 = v105;
    sub_238865440(v79, v105, type metadata accessor for RawResponseStream);
    v90 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v91 = (v104 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    sub_238865440(v89, v92 + v90, type metadata accessor for RawResponseStream);
    *(v92 + v91) = v106;
    *v67 = v82;
    v67[1] = v81;
    *(v67 + v85[10]) = v88;
    v93 = (v67 + v85[11]);
    *v93 = sub_2388313C0;
    v93[1] = 0;
    v94 = (v67 + v85[12]);
    *v94 = sub_2388596B4;
    v94[1] = v92;
  }

  v95 = v117;
  v96 = v116;
  nullsub_1(v117, v116);
  sub_23885FEF0(v95, v96, v115);
  return sub_238827E88(v67, &qword_27DF2FFD0, &qword_2388D6160);
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:includeSchemaInPrompt:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v130 = a7;
  v131 = a6;
  v113 = a4;
  v123 = a3;
  v129 = a8;
  v128 = type metadata accessor for RawResponseStream();
  v116 = *(v128 - 8);
  v11 = *(v116 + 64);
  v12 = MEMORY[0x28223BE20](v128);
  v118 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  MEMORY[0x28223BE20](v12);
  v126 = (v111 - v14);
  v15 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v124 = v111 - v17;
  v115 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v18 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = v111 - v19;
  v119 = type metadata accessor for GenerationSchema.Kind(0);
  v20 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v22 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v111 - v25;
  v121 = type metadata accessor for GenerationSchema(0);
  v122 = *(v121 - 8);
  v27 = *(v122 + 64);
  v28 = MEMORY[0x28223BE20](v121);
  v112 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[1] = v29;
  MEMORY[0x28223BE20](v28);
  v31 = v111 - v30;
  v127 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v32 = *(*(v127 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v127);
  v120 = v111 - v34;
  v35 = *(a5 + 48);
  v143 = *(a5 + 32);
  v144 = v35;
  v145 = *(a5 + 64);
  v146 = *(a5 + 80);
  v36 = *(a5 + 16);
  v141 = *a5;
  v142 = v36;
  v140[0] = a1;
  v140[1] = a2;
  v139 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D837D0];
  v38 = *(MEMORY[0x277D837D0] - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v33);
  v41 = v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v41, v140, v37);
  v42 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v42)(&v132);
  v43 = v37;
  v44 = *(v38 + 8);
  v44(v41, v37);
  sub_23881FAF4(v132);
  v45 = v139;
  v44(v140, v37);
  v46 = v130;

  (*(v46 + 40))(v131, v46);
  v47 = type metadata accessor for PromptTemplate();
  v48 = *(*(v47 - 8) + 56);
  v123 = v26;
  v48(v26, 1, 1, v47);
  v49 = v31;
  sub_2388653D8(v31, v22, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v50 = *(v22 + 1);

    v51 = *(v22 + 3);

    v52 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v22[*(v52 + 64)], type metadata accessor for StringGuides);
    v53 = v124;
    sub_2388653D8(v31, v124, type metadata accessor for GenerationSchema);
    (*(v122 + 56))(v53, 0, 1, v121);
    v55 = v125[20];
    v54 = v125[21];
    v56 = sub_238815878(v125 + 17, v55);
    v138 = v45;
    v134 = v143;
    v135 = v144;
    v136 = v145;
    v137 = v146;
    v132 = v141;
    v133 = v142;
    v57 = v126;
    v58 = v123;
    sub_23884B7DC(&v138, v123, &v132, v56, v53, 0, 1, v126, sub_23884B648, 0, v43, v55, v54);
    sub_238827E88(v53, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v58, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v31, type metadata accessor for GenerationSchema);
    v59 = v57[1];
    v125 = *v57;
    v60 = v45;
    v61 = v128;
    v62 = *(v128 + 20);
    v63 = v115;
    v64 = *(v115 + 36);
    v65 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v66 = *(v65 - 8);
    v67 = v114;
    (*(v66 + 32))(&v114[v64], v57 + v62, v65);
    v68 = *(v57 + *(v61 + 24));
    v69 = swift_allocObject();
    v70 = v60;
    *(v69 + 16) = v60;
    *v67 = v125;
    *(v67 + 1) = v59;
    *&v67[v63[10]] = v68;
    v71 = &v67[v63[11]];
    *v71 = sub_238830F10;
    v71[1] = 0;
    v72 = &v67[v63[12]];
    *v72 = sub_238859730;
    v72[1] = v69;
    v74 = *v67;
    v73 = *(v67 + 1);
    v75 = v127;
    v76 = v120;
    (*(v66 + 16))(&v120[*(v127 + 36)], &v67[v64], v65);

    sub_238827E88(v67, &qword_27DF2FFC8, &qword_2388D5D30);
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    *(v77 + 24) = v73;
    v78 = swift_allocObject();
    *(v78 + 2) = v74;
    *(v78 + 3) = v73;
    *(v78 + 4) = v70;
    *v76 = v74;
    v76[1] = v73;
    *(v76 + v75[10]) = v68;
    v79 = (v76 + v75[11]);
    *v79 = sub_2388596B0;
    v79[1] = v77;
    v80 = (v76 + v75[12]);
    *v80 = sub_238859748;
    v80[1] = v78;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_2388654EC(v22, type metadata accessor for GenerationSchema.Kind);
    v82 = v125[15];
    v81 = v125[16];
    v83 = sub_238815878(v125 + 12, v82);
    v84 = v45;
    v138 = v45;
    v134 = v143;
    v135 = v144;
    v136 = v145;
    v137 = v146;
    v132 = v141;
    v133 = v142;
    v85 = v49;
    v86 = v124;
    sub_2388653D8(v49, v124, type metadata accessor for GenerationSchema);
    v87 = v122 + 56;
    (*(v122 + 56))(v86, 0, 1, v121);
    v88 = v112;
    sub_2388653D8(v85, v112, type metadata accessor for GenerationSchema);
    v89 = (*(v87 + 24) + 16) & ~*(v87 + 24);
    v90 = swift_allocObject();
    sub_238865440(v88, v90 + v89, type metadata accessor for GenerationSchema);
    v110 = v81;
    v91 = v126;
    v92 = v123;
    sub_23884B7DC(&v138, v123, &v132, v83, v86, v113 & 1, 1, v126, sub_238859698, v90, &type metadata for GeneratedContent, v82, v110);

    sub_238827E88(v86, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v92, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v85, type metadata accessor for GenerationSchema);
    v93 = v91[1];
    v125 = *v91;
    v94 = v128;
    v95 = *(v128 + 20);
    v96 = v84;
    v97 = v127;
    v98 = *(v127 + 36);
    v99 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v76 = v120;
    (*(*(v99 - 8) + 16))(&v120[v98], v91 + v95, v99);
    v100 = *(v91 + *(v94 + 24));
    v101 = v118;
    sub_238865440(v91, v118, type metadata accessor for RawResponseStream);
    v102 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v103 = (v117 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    sub_238865440(v101, v104 + v102, type metadata accessor for RawResponseStream);
    *(v104 + v103) = v96;
    *v76 = v125;
    v76[1] = v93;
    *(v76 + v97[10]) = v100;
    v105 = (v76 + v97[11]);
    *v105 = sub_2388313C0;
    v105[1] = 0;
    v106 = (v76 + v97[12]);
    *v106 = sub_2388596B4;
    v106[1] = v104;
  }

  v107 = v131;
  v108 = v130;
  nullsub_1(v131, v130);
  sub_23885FEF0(v107, v108, v129);
  return sub_238827E88(v76, &qword_27DF2FFD0, &qword_2388D6160);
}

void *LanguageModelSession.streamResponse<A>(generating:includeSchemaInPrompt:options:prompt:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v120 = a6;
  v121 = a5;
  v122 = a4;
  v105 = a2;
  v113 = a1;
  v118 = a7;
  v117 = type metadata accessor for RawResponseStream();
  v107 = *(v117 - 8);
  v8 = *(v107 + 64);
  v9 = MEMORY[0x28223BE20](v117);
  v108 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = (&v98 - v10);
  v11 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v98 - v13;
  v106 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v14 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v16 = &v98 - v15;
  v110 = type metadata accessor for GenerationSchema.Kind(0);
  v17 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v119 = &v98 - v21;
  v22 = type metadata accessor for GenerationSchema(0);
  v115 = *(v22 - 8);
  v23 = *(v115 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v24);
  v114 = &v98 - v25;
  v26 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  v31 = *(a3 + 48);
  v133 = *(a3 + 32);
  v134 = v31;
  v135 = *(a3 + 64);
  v136 = *(a3 + 80);
  v32 = *(a3 + 16);
  v131 = *a3;
  v132 = v32;
  v33 = v123;
  result = (v122)(&v137, v28);
  if (!v33)
  {
    v100 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v103 = v22;
    v101 = v16;
    v102 = v8;
    v35 = v109;
    v36 = v112;
    v104 = v26;
    v122 = v30;
    v123 = 0;
    v37 = v137;
    v38 = v114;
    (*(v120 + 40))(v121);
    v39 = type metadata accessor for PromptTemplate();
    (*(*(v39 - 8) + 56))(v119, 1, 1, v39);
    v40 = v111;
    sub_2388653D8(v38, v111, type metadata accessor for GenerationSchema.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v41 = *(v40 + 8);

      v42 = *(v40 + 24);

      v43 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
      sub_2388654EC(v40 + *(v43 + 64), type metadata accessor for StringGuides);
      sub_2388653D8(v38, v35, type metadata accessor for GenerationSchema);
      (*(v115 + 56))(v35, 0, 1, v103);
      v44 = v36[20];
      v45 = v36[21];
      v46 = sub_238815878(v36 + 17, v44);
      v130 = v37;
      v126 = v133;
      v127 = v134;
      v128 = v135;
      v129 = v136;
      v124 = v131;
      v125 = v132;
      v95 = v44;
      v97 = v45;
      v47 = v38;
      v48 = v116;
      v49 = v119;
      sub_23884B7DC(&v130, v119, &v124, v46, v35, 0, 1, v116, sub_23884B648, 0, MEMORY[0x277D837D0], v95, v97);
      sub_238827E88(v35, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v49, &qword_27DF2FFC0, &unk_2388D5A80);
      sub_2388654EC(v47, type metadata accessor for GenerationSchema);
      v50 = v48[1];
      v115 = *v48;
      v114 = v50;
      v51 = v117;
      v52 = *(v117 + 20);
      v53 = v106;
      v54 = *(v106 + 36);
      v119 = v54;
      v55 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v56 = *(v55 - 8);
      v57 = v101;
      (*(v56 + 32))(v101 + v54, v48 + v52, v55);
      v58 = *(v48 + *(v51 + 24));
      v59 = swift_allocObject();
      *(v59 + 16) = v37;
      v60 = v114;
      *v57 = v115;
      v57[1] = v60;
      *(v57 + v53[10]) = v58;
      v61 = (v57 + v53[11]);
      *v61 = sub_238830F10;
      v61[1] = 0;
      v62 = (v57 + v53[12]);
      *v62 = sub_238859730;
      v62[1] = v59;
      v64 = *v57;
      v63 = v57[1];
      v65 = v104;
      v66 = v122;
      (*(v56 + 16))(v122 + v104[9], v57 + v119, v55);

      sub_238827E88(v57, &qword_27DF2FFC8, &qword_2388D5D30);
      v67 = swift_allocObject();
      *(v67 + 16) = v64;
      *(v67 + 24) = v63;
      v68 = swift_allocObject();
      *(v68 + 2) = v64;
      *(v68 + 3) = v63;
      *(v68 + 4) = v37;
      *v66 = v64;
      v66[1] = v63;
      *(v66 + v65[10]) = v58;
      v69 = (v66 + v65[11]);
      *v69 = sub_2388596B0;
      v69[1] = v67;
      v70 = (v66 + v65[12]);
      *v70 = sub_238859748;
      v70[1] = v68;
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_2388654EC(v40, type metadata accessor for GenerationSchema.Kind);
      v71 = v36[15];
      v111 = v36[16];
      v113 = sub_238815878(v36 + 12, v71);
      v99 = v37;
      v130 = v37;
      v126 = v133;
      v127 = v134;
      v128 = v135;
      v129 = v136;
      v124 = v131;
      v125 = v132;
      v72 = v35;
      sub_2388653D8(v38, v35, type metadata accessor for GenerationSchema);
      v73 = v115 + 56;
      (*(v115 + 56))(v72, 0, 1, v103);
      v74 = v100;
      sub_2388653D8(v38, v100, type metadata accessor for GenerationSchema);
      v75 = (*(v73 + 24) + 16) & ~*(v73 + 24);
      v76 = swift_allocObject();
      sub_238865440(v74, v76 + v75, type metadata accessor for GenerationSchema);
      v96 = v71;
      v77 = v116;
      v78 = v119;
      sub_23884B7DC(&v130, v119, &v124, v113, v72, v105 & 1, 1, v116, sub_238859698, v76, &type metadata for GeneratedContent, v96, v111);

      sub_238827E88(v72, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v78, &qword_27DF2FFC0, &unk_2388D5A80);
      sub_2388654EC(v38, type metadata accessor for GenerationSchema);
      v79 = v77[1];
      v119 = *v77;
      v80 = v117;
      v81 = *(v117 + 20);
      v82 = v104;
      v83 = v104[9];
      v84 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v66 = v122;
      (*(*(v84 - 8) + 16))(v122 + v83, v77 + v81, v84);
      v85 = *(v77 + *(v80 + 24));
      v86 = v108;
      sub_238865440(v77, v108, type metadata accessor for RawResponseStream);
      v87 = (*(v107 + 80) + 16) & ~*(v107 + 80);
      v88 = (v102 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      sub_238865440(v86, v89 + v87, type metadata accessor for RawResponseStream);
      *(v89 + v88) = v99;
      *v66 = v119;
      v66[1] = v79;
      *(v66 + v82[10]) = v85;
      v90 = (v66 + v82[11]);
      *v90 = sub_2388313C0;
      v90[1] = 0;
      v91 = (v66 + v82[12]);
      *v91 = sub_2388596B4;
      v91[1] = v89;
    }

    v92 = v118;
    v93 = v121;
    v94 = v120;
    nullsub_1(v121, v120);
    sub_23885FEF0(v93, v94, v92);
    return sub_238827E88(v66, &qword_27DF2FFD0, &qword_2388D6160);
  }

  return result;
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v16 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D837D0];
  v7 = *(MEMORY[0x277D837D0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v17, v6);
  v11 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v11)(&v15);
  v12 = *(v7 + 8);
  v12(v10, v6);
  sub_23881FAF4(v15);
  v13 = v16;
  v12(v17, v6);

  v15 = v13;
  LanguageModelSession.streamResponse(to:options:)(&v15, a3, a4);
}

void *LanguageModelSession.streamResponse(options:prompt:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(&v8);
  if (!v3)
  {
    v7 = v8;
    LanguageModelSession.streamResponse(to:options:)(&v7, a1, a3);
  }

  return result;
}

double sub_238865198@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v25 = *a1;
  v4 = a1[5];
  v26 = a1[4];
  v27[0] = v26;
  v27[1] = v4;
  v28 = 2;
  swift_bridgeObjectRetain_n();
  v5 = sub_23881EF9C(v27);
  v23 = v6;
  v24 = v5;
  v8 = v7;
  swift_bridgeObjectRelease_n();
  v9 = *(*(type metadata accessor for Transcript.Entry(0) - 8) + 80);
  v10 = MEMORY[0x277D84F90];
  if ((byte_284B3AC88 & 1) == 0)
  {
    v11 = unk_284B3AC80;
    v22 = qword_284B3AC78;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2388B686C(0, *(v10 + 2) + 1, 1, v10);
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2388B686C((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[16 * v13];
    *(v14 + 4) = v22;
    *(v14 + 5) = v11;
  }

  v15 = MEMORY[0x277D84F90] + ((v9 + 32) & ~v9);
  sub_238866100(&qword_284B3AC78);
  v27[0] = v10;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v16 = sub_2388D27B8();
  v18 = v17;

  v19 = sub_2388D3578();
  sub_2388D3578();
  *(a2 + 40) = v26;
  *(a2 + 48) = v4;
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 / 1.0e18 + v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = v24;
  *(a2 + 64) = v23;
  *(a2 + 72) = v8;
  *(a2 + 73) = HIBYTE(v8) & 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = MEMORY[0x277D84F90];
  *(a2 + 104) = v15;
  result = 0.0;
  *(a2 + 112) = xmmword_2388D4AB0;
  return result;
}

uint64_t sub_2388653D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238865440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388654A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2388654EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_238865568()
{
  sub_238865EF8(319, &qword_27DF2FD08, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858D8]);
  if (v0 <= 0x3F)
  {
    sub_238865EF8(319, &qword_27DF2FD10, &type metadata for ResponseEnvelope, MEMORY[0x277D857D8]);
    if (v1 <= 0x3F)
    {
      sub_238865808();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238865670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238865740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_238865808()
{
  result = qword_27DF301F8[0];
  if (!qword_27DF301F8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27DF301F8);
  }

  return result;
}

uint64_t sub_238865860(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2388658E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v11 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      LODWORD(v14) = *a1;
    }

    v21 = v11 + (v14 | v20);
    return (v21 + 1);
  }

LABEL_28:
  if (v10 < 0x7FFFFFFE)
  {
    v23 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v21 = v23 - 1;
    if (v21 < 0)
    {
      v21 = -1;
    }

    return (v21 + 1);
  }

  v22 = *(v9 + 48);

  return v22(a1);
}

double sub_238865A80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 64);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = a3 - v13 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (a2 > v13)
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = a2 - v13;
    }

    else
    {
      v19 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v20 = ~v13 + a2;
      bzero(a1, v14);
      *a1 = v20;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v14) = v19;
      }

      else
      {
        *(a1 + v14) = v19;
      }
    }

    else if (v18)
    {
      *(a1 + v14) = v19;
    }

    return result;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v14) = 0;
  }

  else if (v18)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v11 < 0x7FFFFFFE)
  {
    v22 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      *v22 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      *(v22 + 32) = a2;
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(a1, a2);
  }

  return result;
}

void sub_238865C7C()
{
  sub_238865EF8(319, qword_27DF30300, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858C8]);
  if (v0 <= 0x3F)
  {
    sub_238865808();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238865D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238865E1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_238865EF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 sub_238865F74(uint64_t a1, uint64_t a2)
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

uint64_t sub_238865F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238865FD8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_23886603C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238866074@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_2388610B8(a1, *(v2 + 32), a2);
}

uint64_t sub_2388660BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_238810DC4(result, a2, a3);
  }

  return result;
}

uint64_t sub_2388661AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_238866284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a2);
  (*(v13 + 32))(a6, v16, a2);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  result = type metadata accessor for KeepLastOneInEachChunkSequence();
  *(a6 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_2388663A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1);
  (*(v11 + 32))(a5, v14, a1);
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  result = type metadata accessor for KeepLastOneInEachChunkSequence();
  *(a5 + *(result + 52)) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_2388664BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7);
  (*(v15 + 32))(a7, v18, a3);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v19 = type metadata accessor for SafetyCheckedStream();
  *(a7 + *(v19 + 52)) = 50;
  v20 = (a7 + *(v19 + 56));
  *v20 = a1;
  v20[1] = a2;
}

uint64_t sub_2388665F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v9 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v20[-v15];
  (*(v7 + 16))(v11, v3, v6);
  sub_2388D2C58();
  v17 = *(a1 + 24);
  v19 = *(a1 + 40);
  sub_2388680DC(v16, 0, 1, *(v3 + *(a1 + 52)), *(v3 + *(a1 + 56)), *(v3 + *(a1 + 56) + 8), a2);
}

uint64_t sub_238866778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v7 = a4[3];
  v8 = a4[5];
  v9 = type metadata accessor for StreamSnapshot();
  v5[17] = v9;
  v10 = sub_2388D2E78();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v13 = *(v9 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = a4[4];
  v5[24] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(MEMORY[0x277D856D8] + 4);
  v18 = swift_task_alloc();
  v5[25] = v18;
  *v18 = v5;
  v18[1] = sub_23886695C;
  v19 = v5[20];
  v20 = v5[16];
  v21 = v5[13];
  v22 = v5[14];

  return MEMORY[0x282200310](v19, v21, v22, v5 + 9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_23886695C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v15 = *v1;

  if (v0)
  {
    if (v2[13])
    {
      v4 = v2[14];
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v12 = sub_238866F70;
    v13 = v5;
  }

  else
  {
    if (v2[13])
    {
      v8 = v2[14];
      v9 = v2[13];
      swift_getObjectType();
      v10 = sub_2388D2B38();
      v7 = v11;
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    v2[26] = v10;
    v2[27] = v7;
    v12 = sub_238866ADC;
    v13 = v10;
  }

  return MEMORY[0x2822009F8](v12, v13, v7);
}

uint64_t sub_238866ADC()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[15];
    v4 = v0[16];
    (*(v0[19] + 8))(v1, v0[18]);
    if (*(v4 + *(v5 + 52) + 8))
    {
      v6 = v0[22];
      v7 = v0[20];
      (*(v0[21] + 56))(v0[12], 1, 1, v0[17]);
    }

    else
    {
      sub_2388151C8();
      swift_allocError();
      *v22 = 0xD000000000000030;
      *(v22 + 8) = 0x80000002388DEEC0;
      *(v22 + 16) = MEMORY[0x277D84F90];
      *(v22 + 24) = 0;
      *(v22 + 32) = 2;
      swift_willThrow();
      v23 = v0[22];
      v24 = v0[20];
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v9 = v0[22];
    v11 = v0[15];
    v10 = v0[16];
    v12 = *(v2 + 32);
    v0[28] = v12;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 56));
    v14 = *v13;
    v15 = v13[1];
    v16 = (v9 + *(v3 + 52));
    v17 = *v16;
    v18 = v16[1];
    v25 = (v14 + *v14);
    v19 = v14[1];
    v20 = swift_task_alloc();
    v0[30] = v20;
    *v20 = v0;
    v20[1] = sub_238866D74;

    return v25(v17, v18);
  }
}

uint64_t sub_238866D74()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_238866FE0;
  }

  else
  {
    v7 = sub_238866EB0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238866EB0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[16] + *(v0[15] + 52);
  *v6 = 0;
  *(v6 + 8) = 1;
  v2(v5, v3, v4);
  v7 = v0[22];
  v8 = v0[20];
  (*(v0[21] + 56))(v0[12], 0, 1, v0[17]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_238866F70()
{
  v1 = v0[9];
  v2 = v0[22];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_238866FE0()
{
  v1 = *(v0 + 248);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 48);
  if (v13 != 6)
  {
    v3 = sub_238857E3C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v13);
LABEL_5:
    v19 = *(*(v0 + 176) + 32);
    v20 = (*(v0 + 128) + *(*(v0 + 120) + 52));
    if (*(v20 + 8) == 1)
    {
      *v20 = v19;
      *(v20 + 8) = 0;
      v21 = v19;
    }

    else
    {
      v21 = *v20;
    }

    v22 = __OFSUB__(v19, v21);
    v23 = v19 - v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (v23 >= v20[2])
      {
        v34 = *(v0 + 248);
        *(v0 + 88) = v34;
        v35 = v34;
        v36 = v34;
        v37 = v34;
        v38 = swift_dynamicCast();
        v39 = *(v0 + 248);
        if (v38)
        {
          v40 = *(v0 + 64);

          swift_willThrow();
        }

        else
        {

          sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_2388D3F70;
          *(v41 + 32) = v39;
          sub_2388151C8();
          swift_allocError();
          *v42 = 0xD000000000000039;
          *(v42 + 8) = 0x80000002388DEF00;
          *(v42 + 16) = v41;
          *(v42 + 24) = 0;
          *(v42 + 32) = 2;
          swift_willThrow();
        }

        v44 = *(v0 + 168);
        v43 = *(v0 + 176);
        v45 = *(v0 + 136);

        (*(v44 + 8))(v43, v45);
        goto LABEL_17;
      }

      v25 = *(v0 + 168);
      v24 = *(v0 + 176);
      v26 = *(v0 + 136);

      (*(v25 + 8))(v24, v26);
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = *(MEMORY[0x277D856D8] + 4);
      v32 = swift_task_alloc();
      *(v0 + 200) = v32;
      *v32 = v0;
      v32[1] = sub_23886695C;
      v3 = *(v0 + 160);
      v33 = *(v0 + 128);
      v4 = *(v0 + 104);
      v5 = *(v0 + 112);
      v6 = v0 + 72;
      v7 = AssociatedTypeWitness;
      v8 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v3, v4, v5, v6, v7, v8);
  }

  v14 = *(v0 + 248);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 136);
  sub_2388151C8();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v9;
  *(v18 + 16) = v12;
  *(v18 + 24) = v11;
  *(v18 + 32) = 6;
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
LABEL_17:
  v46 = *(v0 + 176);
  v47 = *(v0 + 160);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2388673BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = a4[3];
  v8 = a4[5];
  v9 = type metadata accessor for StreamSnapshot();
  v5[8] = v9;
  v10 = sub_2388D2E78();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v13 = *(v9 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = a4[4];
  v5[17] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(MEMORY[0x277D856D8] + 4);
  v18 = swift_task_alloc();
  v5[18] = v18;
  *v18 = v5;
  v18[1] = sub_2388675B8;
  v19 = v5[12];
  v20 = v5[7];
  v21 = v5[4];
  v22 = v5[5];

  return MEMORY[0x282200310](v19, v21, v22, v5 + 2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2388675B8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v12 = *v1;

  if (v0)
  {
    if (*(v2 + 32))
    {
      v4 = *(v2 + 40);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_238867B6C;
  }

  else
  {
    if (*(v2 + 32))
    {
      v9 = *(v2 + 40);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v10;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_238867740;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_238867740()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  if (v4(v1, 1, v3) != 1)
  {
    v13 = v0[15];
    v15 = v0[6];
    v14 = v0[7];
    v16 = *(v2 + 32);
    v17 = v16(v13, v1, v3);
    v23 = *(v13 + 32);
    v24 = *(v15 + 56);
    v25 = *(v14 + v24);
    v26 = v23 - v25;
    if (__OFSUB__(v23, v25))
    {
      __break(1u);
    }

    else
    {
      v27 = v0[6];
      v28 = v0[7];
      if (v26 >= *(v28 + *(v27 + 60)))
      {
        v59 = v16;
        v61 = v0[15];
        v44 = v0[13];
        v45 = v0[8];
        v57 = v0[3];
        v46 = *(v27 + 52);
        (*(v0[10] + 8))(v28 + v46, v0[9]);
        v11 = *(v44 + 56);
        v11(v28 + v46, 1, 1, v45);
        *(v28 + v24) = v23;
        v59(v57, v61, v45);
        goto LABEL_11;
      }

      v29 = v0[15];
      v30 = v0[13];
      v31 = v0[8];
      v32 = *(v27 + 52);
      (*(v0[10] + 8))(v28 + v32, v0[9]);
      v16(v28 + v32, v29, v31);
      (*(v30 + 56))(v28 + v32, 0, 1, v31);
      v33 = v0[16];
      v34 = v0[17];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v37 = *(MEMORY[0x277D856D8] + 4);
      v38 = swift_task_alloc();
      v0[18] = v38;
      *v38 = v0;
      v38[1] = sub_2388675B8;
      v17 = v0[12];
      v39 = v0[7];
      v18 = v0[4];
      v19 = v0[5];
      v20 = v0 + 2;
      v21 = AssociatedTypeWitness;
      v22 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];
  v58 = v0[6];
  v60 = *(v6 + 8);
  v60(v1, v7);
  v9 = *(v58 + 52);
  (*(v6 + 16))(v5, v8 + v9, v7);
  if (v4(v5, 1, v3) != 1)
  {
    v41 = v0[13];
    v40 = v0[14];
    v42 = v0[8];
    v43 = v0[9];
    v55 = v0[3];
    v56 = v0[7];
    v53 = *(v41 + 32);
    v54 = v0[6];
    v53(v40, v0[11], v42);
    v60(v8 + v9, v43);
    v11 = *(v41 + 56);
    v11(v8 + v9, 1, 1, v42);
    *(v56 + *(v54 + 56)) = *(v40 + 32);
    v53(v55, v40, v42);
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v10 = v0[13];
  v60(v0[11], v0[9]);
  v11 = *(v10 + 56);
  v12 = 1;
LABEL_12:
  v47 = v0[14];
  v48 = v0[15];
  v50 = v0[11];
  v49 = v0[12];
  v11(v0[3], v12, 1, v0[8]);

  v51 = v0[1];

  return v51();
}

uint64_t sub_238867B6C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238867BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  OneInEachChunk = type metadata accessor for KeepLastOneInEachChunkSequence.AsyncIterator();
  v12 = OneInEachChunk[13];
  type metadata accessor for StreamSnapshot();
  v13 = sub_2388D2E78();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + OneInEachChunk[14]) = a3;
  *(a5 + OneInEachChunk[15]) = a4;
  return result;
}

uint64_t sub_238867D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D856F0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_23886B878;

  return MEMORY[0x282200318](a1, a2, a3, v3 + 16);
}

uint64_t sub_238867DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_23886B884;

  return sub_2388673BC(a1, a2, a3, a5);
}

uint64_t sub_238867EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  type metadata accessor for StreamSnapshot();
  v7 = sub_2388D2E78();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v21 = &v25 - v20;
  (*(v13 + 16))(v16, v3, v12);
  sub_2388D2C58();
  v22 = *(v3 + *(a1 + 52));
  v23 = type metadata accessor for StreamSnapshot();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  return sub_238867BF4(v21, v11, 0, v22, v26);
}

uint64_t sub_2388680DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for SafetyCheckedStream.AsyncIterator();
  v15 = a7 + *(result + 52);
  *v15 = a2;
  *(v15 + 8) = a3 & 1;
  *(v15 + 16) = a4;
  v16 = (a7 + *(result + 56));
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t sub_238868220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return sub_238866778(a1, a2, a3, a5);
}

uint64_t sub_2388682FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v8 = a4[3];
  v9 = a4[5];
  v10 = type metadata accessor for StreamSnapshot();
  v4[6] = v10;
  v11 = sub_2388D2E78();
  v4[7] = v11;
  v12 = *(v11 - 8);
  v4[8] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v4[9] = v14;
  v15 = *(v10 - 8);
  v4[10] = v15;
  v16 = *(v15 + 64) + 15;
  v4[11] = swift_task_alloc();
  v17 = a4[4];
  v18 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(MEMORY[0x277D856D8] + 4);
  v22 = swift_task_alloc();
  v4[12] = v22;
  *v22 = v4;
  v22[1] = sub_2388684F0;

  return MEMORY[0x282200310](v14, a2, a3, v4 + 2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2388684F0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v12 = *v1;

  if (v0)
  {
    if (*(v2 + 32))
    {
      v4 = *(v2 + 40);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_238868850;
  }

  else
  {
    if (*(v2 + 32))
    {
      v9 = *(v2 + 40);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v10;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_238868678;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_238868678()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[3];
    (*(v0[8] + 8))(v1, v0[7]);
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v5 = sub_2388D34F8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v2 + 32);
    v8(v6, v1, v3);
    v8(v7, v6, v3);
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = sub_2388D34F8();
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  v10 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_238868850()
{
  v1 = v0[6];
  v2 = v0[3];
  *v2 = v0[2];
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v3 = sub_2388D34F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238868940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 32) = a1;
  *(v5 + 72) = *(a4 + 24);
  *(v5 + 80) = *(a4 + 40);
  *(v5 + 88) = type metadata accessor for StreamSnapshot();
  *(v5 + 96) = sub_2388D2E78();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v7 = sub_2388D34F8();
  *(v5 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_2388D34F8();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v12 = sub_2388D2E78();
  *(v5 + 152) = v12;
  v13 = *(v12 - 8);
  *(v5 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 200) = *(a4 + 52);
  v15 = swift_task_alloc();
  *(v5 + 192) = v15;
  *v15 = v5;
  v15[1] = sub_238868B88;
  v16 = *(v5 + 184);
  v17 = *(v5 + 56);
  v18 = *(v5 + 64);
  v19 = *(v5 + 40);
  v20 = *(v5 + 48);

  return sub_2388682FC(v16, v19, v20, v17);
}

uint64_t sub_238868B88()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 40);
  v11 = *v0;

  if (v3)
  {
    v6 = v1 + 40;
    v5 = *(v1 + 40);
    v4 = *(v6 + 8);
    swift_getObjectType();
    v7 = sub_2388D2B38();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](sub_238868CC0, v7, v9);
}

uint64_t sub_238868CC0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(*(v0 + 160) + 16);
  v4(v1, *(v0 + 64) + *(v0 + 200), *(v0 + 152));
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2) != 1)
  {
    v18 = *(v0 + 184);
    v19 = *(v0 + 120);
    (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 176), v19);
    if (v5(v18, 1, v19) == 1)
    {
      v21 = *(v0 + 112);
      v20 = *(v0 + 120);
      v22 = *(v0 + 96);
      v64 = *(v0 + 104);
      v24 = *(v0 + 72);
      v23 = *(v0 + 80);
      v25 = *(v0 + 56);
      v26 = *(v0 + 32);
      v27 = swift_task_alloc();
      v27[2] = *(v25 + 16);
      v27[3] = v24;
      v27[4] = *(v25 + 32);
      v27[5] = v23;
      sub_23886942C(sub_23886AB5C, v20, v21);

      sub_238869640(v64, v0 + 16, v26);
      v37 = *(v0 + 184);
      v39 = *(v0 + 152);
      v38 = *(v0 + 160);
      v41 = *(v0 + 72);
      v40 = *(v0 + 80);
      v42 = *(v0 + 64);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      sub_238869230(v42, v37);
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      v35 = *(v0 + 120);
      v36 = *(v0 + 32);
      (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 144), v35);
      sub_238869640(v35, v0 + 24, v36);
      v43 = *(v0 + 184);
      v44 = *(v0 + 152);
      v45 = *(v0 + 160);
      v47 = *(v0 + 80);
      v46 = *(v0 + 88);
      v49 = *(v0 + 64);
      v48 = *(v0 + 72);
      v50 = *(v0 + 56);
      v51 = *(v0 + 32);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      (*(*(v46 - 8) + 56))(v51, 0, 1, v46);
      v52 = *(v50 + 16);
      v53 = *(v50 + 32);
      sub_238869230(v49, v43);
      (*(v45 + 8))(v43, v44);
    }

LABEL_10:
    v55 = *(v0 + 176);
    v54 = *(v0 + 184);
    v56 = *(v0 + 168);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v0 + 112);

    v60 = *(v0 + 8);

    return v60();
  }

  v62 = *(v0 + 168);
  v63 = *(v0 + 200);
  v6 = *(v0 + 152);
  v65 = *(v0 + 120);
  v7 = *(v0 + 80);
  v61 = *(v0 + 184);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(*(v0 + 160) + 8);
  v10(*(v0 + 176), v6);
  v11 = *(v8 + 16);
  v12 = *(v8 + 32);
  sub_238869230(v9, v61);
  v10(v61, v6);
  v4(v62, v9 + v63, v6);
  v13 = v5(v62, 1, v65);
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  if (v13 == 1)
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 32);
    v10(v14, v15);
    (*(*(v16 - 8) + 56))(v17, 1, 1, v16);
    goto LABEL_10;
  }

  v10(v14, v15);
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_238868B88;
  v29 = *(v0 + 184);
  v30 = *(v0 + 56);
  v31 = *(v0 + 64);
  v32 = *(v0 + 40);
  v33 = *(v0 + 48);

  return sub_2388682FC(v29, v32, v33, v30);
}

uint64_t sub_238869230(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MarkLastElementAsCompleteSequence.AsyncIterator() + 52);
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v5 = sub_2388D2E78();
  return (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
}

uint64_t sub_23886930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StreamSnapshot();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8[*(v4 + 56)] = 1;
  (*(v5 + 32))(a2, v8, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23886942C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_2388D34F8();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238869640@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_238869710@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v2 = sub_2388D34F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2388697B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for MarkLastElementAsCompleteSequence.AsyncIterator() + 52);
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v8 = sub_2388D2E78();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t sub_2388698F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_23886B884;

  return sub_238868940(a1, a2, a3, a5);
}

uint64_t sub_2388699B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v7 = sub_2388D2E78();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v23 - v10;
  v12 = a1[2];
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v21 = &v23 - v20;
  (*(v13 + 16))(v16, v2, v12);
  sub_2388D2C58();
  sub_238869710(v11);
  return sub_2388697B0(v21, v11, a2);
}

unint64_t sub_238869BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_238865808();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_238869C44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_238869D90(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_238869F74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_238865808();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886A018(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v10 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v9 < 0x7FFFFFFF)
    {
      v21 = *((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v8 + 48);

      return v20(a1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v10 + (v13 | v19) + 1;
}

void sub_23886A1BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          *v21 = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_23886A3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23886A434(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_23886A538(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_23886A6BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23886A72C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23886A86C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_23886AAF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_23886AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_23886930C(a1, a2);
}

uint64_t sub_23886AB98(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    v7 = a1[5];
    type metadata accessor for StreamSnapshot();
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    sub_2388D34F8();
    result = sub_2388D2E78();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886AC78(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3[3] - 8) + 80);
  v12 = ((*(*(a3[3] - 8) + 64) + ((v11 + 40) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v10 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 | 7;
  v15 = v14 + *(*(AssociatedTypeWitness - 8) + 64);
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v16 = v12 + (v15 & ~v14) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v10 < 0xFD)
      {
        v25 = *(((a1 + v15) & ~v14) + v12);
        if (v25 >= 2)
        {
          v26 = (v25 ^ 0xFF) + 1;
        }

        else
        {
          v26 = 0;
        }

        if (v26 >= 2)
        {
          return v26 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v9 + 48);

        return v24(a1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_23886AEE0(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4[3] - 8) + 80);
  v13 = 8;
  if (((*(*(a4[3] - 8) + 64) + ((v12 + 40) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17 > 8)
  {
    v13 = ((*(*(a4[3] - 8) + 64) + ((v12 + 40) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v11 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 | 7;
  v16 = v13 + 1;
  v17 = (v12 | 7) + *(v10 + 64);
  v18 = v13 + 1 + (v17 & ~(v12 | 7));
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_57:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v19)
  {
    goto LABEL_32;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 < 0xFD)
  {
    v26 = (&a1[v17] & ~v15);
    if (a2 > 0xFD)
    {
      if (v16 <= 3)
      {
        v27 = ~(-1 << (8 * v16));
      }

      else
      {
        v27 = -1;
      }

      if (v16)
      {
        v28 = v27 & (a2 - 254);
        if (v16 <= 3)
        {
          v29 = v16;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v16);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v26 = v28;
            v26[2] = BYTE2(v28);
          }

          else
          {
            *v26 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v26 = v28;
        }

        else
        {
          *v26 = v28;
        }
      }
    }

    else
    {
      v26[v13] = ~a2;
    }
  }

  else
  {
    v25 = *(v10 + 56);

    v25(a1, a2);
  }
}

uint64_t sub_23886B238(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    v7 = a1[5];
    type metadata accessor for StreamSnapshot();
    result = sub_2388D2E78();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886B2F8(int *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a3[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = v14 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 | 7;
  v18 = (v13 | 7) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v19 = (((v18 & ~v17) + ((*(v11 + 64) + ((v13 + 40) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v16 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v16 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v10 >= v15)
  {
    v31 = *(v9 + 48);

    return v31(a1, v10, AssociatedTypeWitness);
  }

  else
  {
    v28 = ((a1 + v18) & ~v17);
    if ((v12 & 0x80000000) != 0)
    {
      v30 = (*(v11 + 48))((v13 + ((((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v29 = *v28;
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      v30 = v29 + 1;
    }

    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23886B570(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = *(a4[3] - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v16 - 1;
  if (v16 - 1 <= v12)
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = v16 - 1;
  }

  v19 = ((*(v13 + 64) + ((v15 + 40) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v20 = (v15 | 7) + *(*(AssociatedTypeWitness - 8) + 64);
  v21 = (((v20 & ~(v15 | 7)) + v19 + 22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 >= a3)
  {
    v24 = 0;
    v25 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((((v20 & ~(v15 | 7)) + v19 + 22) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a3 - v18 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_20:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v12 >= v17)
      {
        v30 = *(v11 + 56);

        v30(a1, a2, v12, AssociatedTypeWitness);
      }

      else
      {
        v28 = ((a1 + v20) & ~(v15 | 7));
        if (v17 >= a2)
        {
          v31 = (a2 + 1);
          if ((v14 & 0x80000000) != 0)
          {
            v33 = *(v13 + 56);

            v33((v15 + ((((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v31);
          }

          else
          {
            if ((v31 & 0x80000000) != 0)
            {
              v32 = (a2 - 0x7FFFFFFF);
            }

            else
            {
              v32 = a2;
            }

            *v28 = v32;
          }
        }

        else
        {
          v29 = a2 - v16;
          bzero(v28, v19);
          if (v19 <= 3)
          {
            *v28 = v29;
          }

          else
          {
            *v28 = v29;
          }
        }
      }

      return;
    }
  }

  if ((((v20 & ~(v15 | 7)) + v19 + 22) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (v21)
  {
    v27 = ~v18 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

double ServerLanguageModel.init(name:url:headers:protocol:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ServerLanguageModel(0);
  v9 = v8[5];
  v10 = sub_2388D0F58();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[v8[6]] = a4;
  v11 = &a5[v8[8]];
  *(v11 + 4) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  a5[v8[9]] = 1;
  return result;
}

uint64_t ServerLanguageModel.init(service:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 1) = v6;
  v7 = type metadata accessor for ServerLanguageModel(0);
  v8 = v7[5];
  v9 = sub_2388D0F58();
  (*(*(v9 - 8) + 16))(&a2[v8], a1, v9);

  *&a2[v7[6]] = sub_238879050(MEMORY[0x277D84F90]);
  sub_238815814(a1 + v4[8], &a2[v7[8]]);
  LOBYTE(v4) = *(a1 + v4[7]);
  result = sub_238879E0C(a1, type metadata accessor for ServerLanguageModel.AppleInternalService);
  a2[v7[9]] = v4;
  return result;
}

uint64_t static ServerLanguageModel.AppleInternalService.foundationModelsPlatform(url:model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_2388D0F58();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238827E14(a1, v12, &qword_27DF30608, &qword_2388D6690);
  v18 = v14[6];
  v19 = v18(v12, 1, v13);
  v34 = a2;
  if (v19 != 1)
  {
    v33 = v14[4];
    v33(v17, v12, v13);
LABEL_6:
    v24 = v36;

    v25 = sub_23888124C();
    v27 = v26;
    v28 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
    v29 = v35;
    v30 = (v35 + v28[8]);
    v30[3] = &type metadata for AppleConnectAuthenticator;
    v30[4] = &off_284B3DD20;
    v31 = swift_allocObject();
    *v30 = v31;
    *(v31 + 16) = 0xD00000000000001ELL;
    *(v31 + 24) = 0x80000002388DEF90;
    *(v31 + 32) = 0;
    *(v31 + 40) = v25;
    *(v31 + 48) = v27;
    *(v31 + 56) = 1;
    result = (v33)(v29, v17, v13);
    v32 = (v29 + v28[5]);
    *v32 = v34;
    v32[1] = v24;
    *(v29 + v28[7]) = 1;
    return result;
  }

  sub_23888124C();
  sub_2388D0F28();

  result = v18(v10, 1, v13);
  if (result != 1)
  {
    v21 = v10;
    v22 = v14[4];
    v22(v17, v21, v13);
    v23 = v18(v12, 1, v13);
    v33 = v22;
    if (v23 != 1)
    {
      sub_238827E88(v12, &qword_27DF30608, &qword_2388D6690);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static ServerLanguageModel.AppleInternalService.floodgate(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  sub_23888124C();
  sub_2388D0F28();

  v10 = sub_2388D0F58();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
    v14 = (a3 + v13[8]);
    v14[3] = &type metadata for AppleConnectAuthenticator;
    v14[4] = &off_284B3DD20;
    v15 = swift_allocObject();
    *v14 = v15;
    *(v15 + 16) = 0xD00000000000001ELL;
    *(v15 + 24) = 0x80000002388DF020;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 32) = &unk_284B3AC90;
    *(v15 + 56) = 0;
    (*(v11 + 32))(a3, v9, v10);
    v16 = (a3 + v13[5]);
    *v16 = a1;
    v16[1] = a2;
    *(a3 + v13[7]) = 0;
  }

  return result;
}

uint64_t sub_23886BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = v7;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  *(v8 + 240) = a1;
  v10 = sub_238810E44(&qword_27DF306C8, &unk_2388D69A8);
  *(v8 + 280) = v10;
  v11 = *(v10 - 8);
  *(v8 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v13 = type metadata accessor for GenerationSchema(0);
  *(v8 + 304) = v13;
  v14 = *(v13 - 8);
  *(v8 + 312) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v16 = type metadata accessor for OpenAIClient.Tool(0);
  *(v8 + 328) = v16;
  v17 = *(v16 - 8);
  *(v8 + 336) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v19 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v20 = *(*(sub_238810E44(&qword_27DF306D0, &qword_2388D69B8) - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v21 = type metadata accessor for ServerModelInferenceSession(0);
  *(v8 + 368) = v21;
  v22 = *(v21 - 8);
  *(v8 + 376) = v22;
  *(v8 + 384) = *(v22 + 64);
  *(v8 + 392) = swift_task_alloc();
  v23 = type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  *(v8 + 400) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v25 = type metadata accessor for OpenAIClient(0);
  *(v8 + 416) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = *a4;
  *(v8 + 153) = *(a4 + 16);
  v27 = *(a4 + 24);
  *(v8 + 154) = *(a4 + 32);
  v28 = *(a4 + 72);
  *(v8 + 448) = v27;
  *(v8 + 456) = v28;
  *(v8 + 155) = *(a4 + 80);

  return MEMORY[0x2822009F8](sub_23886C270, 0, 0);
}

uint64_t sub_23886C270()
{
  v130 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 264);
  v4 = *(v2 + 48);
  *(v0 + 464) = v4;
  *(v0 + 472) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1 || (v5 = *(v0 + 272) + *(*(v0 + 368) + 20), *(v5 + *(type metadata accessor for ServerLanguageModel(0) + 36)) == 1))
  {
    sub_238810E44(&qword_27DF306D8, &qword_2388D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D6660;
    strcpy((inited + 32), "Content-Type");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000002388DF0B0;
    *(inited + 64) = 0x6567412D72657355;
    *(inited + 72) = 0xEA0000000000746ELL;
    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      v9 = sub_2388D2858();
      v11 = v10;
    }

    else
    {
      v11 = 0x80000002388DF0D0;
      v9 = 0xD00000000000001ALL;
    }

    v12 = *(v0 + 368);
    v13 = *(v0 + 272);
    *(inited + 80) = v9;
    *(inited + 88) = v11;
    *(v0 + 480) = sub_238879050(inited);
    swift_setDeallocating();
    sub_238810E44(&qword_27DF306E0, &qword_2388D69C8);
    swift_arrayDestroy();
    v14 = *(v12 + 20);
    *(v0 + 156) = v14;
    v15 = type metadata accessor for ServerLanguageModel(0);
    *(v0 + 488) = v15;
    sub_238827E14(v13 + *(v15 + 32) + v14, v0 + 160, &qword_27DF306E8, &qword_2388D69D0);
    v16 = *(v0 + 184);
    if (v16)
    {
      v17 = sub_238815878((v0 + 160), v16);
      v18 = *(v17 + 25);
      v19 = v17[1];
      *(v0 + 112) = *v17;
      *(v0 + 128) = v19;
      *(v0 + 137) = v18;
      v20 = swift_task_alloc();
      *(v0 + 496) = v20;
      *v20 = v0;
      v20[1] = sub_23886CE24;

      return sub_238870C84();
    }

    sub_238827E88(v0 + 160, &qword_27DF306E8, &qword_2388D69D0);
    v22 = sub_238879050(MEMORY[0x277D84F90]);
    v23 = *(v0 + 480);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v23;
    sub_238879164(v22, sub_238878A4C, 0, isUniquelyReferenced_nonNull_native, &v128);
    v35 = *(v0 + 488);
    v36 = *(v0 + 156);
    v37 = *(v0 + 272);

    v38 = v128;
    v39 = *(v37 + v36 + *(v35 + 24));

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v38;
    sub_238879164(v39, sub_238878A4C, 0, v40, &v128);

    v41 = v128;
    v114 = *(v0 + 153);
    v43 = *(v0 + 416);
    v42 = *(v0 + 424);
    v44 = *(v0 + 392);
    v122 = *(v0 + 376);
    v125 = *(v0 + 384);
    v45 = *(v0 + 272);
    v119 = *(v0 + 248);
    v46 = (v45 + *(v0 + 156));
    v47 = *(*(v0 + 488) + 20);
    v48 = sub_2388D0F58();
    (*(*(v48 - 8) + 16))(v42, &v46[v47], v48);
    v49 = [objc_opt_self() ephemeralSessionConfiguration];
    v50 = [objc_opt_self() sessionWithConfiguration_];

    *(v42 + *(v43 + 20)) = v41;
    *(v42 + *(v43 + 24)) = v50;
    v52 = *v46;
    v51 = *(v46 + 1);
    v53 = swift_task_alloc();
    *(v53 + 16) = v45;

    v54 = sub_238897A80(sub_238879ECC, v53, v119);

    sub_23887A1F0(v45, v44, type metadata accessor for ServerModelInferenceSession);
    v55 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v56 = swift_allocObject();
    sub_23887A0A4(v44, v56 + v55, type metadata accessor for ServerModelInferenceSession);
    if (v114 <= 0xFD)
    {
      v58 = *(v0 + 153);
      v128 = *(v0 + 432);
      v129 = v58;
      sub_23887A018(&v128);
      v57 = v59;
    }

    else
    {

      v57 = 0;
    }

    v111 = v54;
    v112 = v52;
    v113 = v51;
    v60 = *(v0 + 256);
    v61 = *(v60 + 16);
    if (v61)
    {
      v116 = *(v0 + 336);
      v117 = *(v0 + 344);
      v115 = *(v0 + 328);
      *&v128 = MEMORY[0x277D84F90];
      sub_2388B8388(0, v61, 0);
      v62 = v60 + 32;
      v63 = v128;
      do
      {
        v123 = *(v0 + 344);
        v126 = v61;
        v64 = *(v0 + 320);
        sub_238815814(v62, v0 + 200);
        v65 = *(v0 + 224);
        v66 = *(v0 + 232);
        sub_238815878((v0 + 200), v65);
        v120 = (*(v66 + 40))(v65, v66);
        v68 = v67;
        v69 = *(v0 + 224);
        v70 = *(v0 + 232);
        sub_238815878((v0 + 200), v69);
        v71 = (*(v70 + 48))(v69, v70);
        v73 = v72;
        v74 = *(v0 + 224);
        v75 = *(v0 + 232);
        sub_238815878((v0 + 200), v74);
        (*(v75 + 56))(v74, v75);
        v76 = (v123 + *(v115 + 20));
        v77 = type metadata accessor for OpenAIClient.Tool.Function(0);
        GenerationSchema.jsonSchema()(v76 + *(v77 + 24));
        sub_238879E0C(v64, type metadata accessor for GenerationSchema);
        *v76 = v120;
        v76[1] = v68;
        v76[2] = v71;
        v76[3] = v73;
        *v123 = 0x6E6F6974636E7566;
        *(v117 + 8) = 0xE800000000000000;
        sub_2388158BC((v0 + 200));
        *&v128 = v63;
        v79 = *(v63 + 16);
        v78 = *(v63 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_2388B8388(v78 > 1, v79 + 1, 1);
          v63 = v128;
        }

        v80 = *(v0 + 344);
        *(v63 + 16) = v79 + 1;
        sub_23887A0A4(v80, v63 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v79, type metadata accessor for OpenAIClient.Tool);
        v62 += 40;
        v61 = v126 - 1;
      }

      while (v126 != 1);
      v127 = v63;
    }

    else
    {
      v127 = MEMORY[0x277D84F90];
    }

    v82 = *(v0 + 464);
    v81 = *(v0 + 472);
    v83 = *(v0 + 352);
    v84 = *(v0 + 304);
    sub_238827E14(*(v0 + 264), v83, &qword_27DF2FE20, &qword_2388D5740);
    v85 = v82(v83, 1, v84);
    v86 = *(v0 + 360);
    if (v85 == 1)
    {
      v87 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
    }

    else
    {
      v88 = *(v0 + 320);
      v89 = *(v0 + 304);
      sub_23887A0A4(*(v0 + 352), v88, type metadata accessor for GenerationSchema);
      v90 = (v88 + *(v89 + 20));
      v92 = *v90;
      v91 = v90[1];
      v93 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      v94 = (v86 + *(v93 + 20));
      v95 = type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
      v96 = *(v95 + 24);

      GenerationSchema.jsonSchema()(v94 + v96);
      *v94 = v92;
      v94[1] = v91;
      v94[2] = 0;
      v94[3] = 0;
      *(v94 + *(v95 + 28)) = 1;
      *v86 = 0x6863735F6E6F736ALL;
      v86[1] = 0xEB00000000616D65;
      sub_238879E0C(v88, type metadata accessor for GenerationSchema);
      (*(*(v93 - 8) + 56))(v86, 0, 1, v93);
    }

    v97 = *(v0 + 155);
    v98 = *(v0 + 154);
    v100 = *(v0 + 448);
    v99 = *(v0 + 456);
    v101 = *(v0 + 424);
    v102 = *(v0 + 400);
    v103 = *(v0 + 408);
    v104 = *(v0 + 392);
    v105 = *(v0 + 360);
    v118 = *(v0 + 352);
    v121 = *(v0 + 344);
    v124 = *(v0 + 320);
    v107 = *(v0 + 288);
    v106 = *(v0 + 296);
    v108 = *(v0 + 280);
    v109 = *(v0 + 240);
    *v103 = v112;
    *(v103 + 8) = v113;
    *(v103 + 16) = v111;
    *(v103 + 24) = v100;
    *(v103 + 32) = v98;
    *(v103 + 40) = v57;
    *(v103 + 48) = v114 > 0xFD;
    *(v103 + 56) = v99;
    *(v103 + 64) = v97;
    *(v103 + 72) = v127;
    sub_23887A12C(v105, v103 + *(v102 + 40));
    *(v103 + *(v102 + 44)) = 1;
    v110 = swift_task_alloc();
    *(v110 + 16) = v101;
    *(v110 + 24) = v103;
    (*(v107 + 104))(v106, *MEMORY[0x277D858A0], v108);
    sub_2388D2D28();

    sub_238879E0C(v103, type metadata accessor for OpenAIClient.ChatCompletionRequest);
    sub_238879E0C(v101, type metadata accessor for OpenAIClient);

    v34 = *(v0 + 8);
  }

  else
  {
    sub_2388151C8();
    swift_allocError();
    *v25 = 0xD00000000000002DLL;
    *(v25 + 8) = 0x80000002388DF0F0;
    *(v25 + 16) = MEMORY[0x277D84F90];
    *(v25 + 24) = 0;
    *(v25 + 32) = 3;
    swift_willThrow();
    v26 = *(v0 + 424);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v31 = *(v0 + 344);
    v32 = *(v0 + 320);
    v33 = *(v0 + 296);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_23886CE24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = *(v4 + 480);

    v8 = sub_23886D834;
  }

  else
  {
    *(v4 + 512) = a1;
    v8 = sub_23886CF54;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23886CF54()
{
  v104 = v0;
  sub_2388158BC((v0 + 160));
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 480);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v102 = v3;
  sub_238879164(v1, sub_238878A4C, 0, isUniquelyReferenced_nonNull_native, &v102);
  if (v2)
  {
  }

  else
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 156);
    v7 = *(v0 + 272);

    v8 = v102;
    v9 = *(v7 + v6 + *(v5 + 24));

    v10 = swift_isUniquelyReferenced_nonNull_native();
    *&v102 = v8;
    sub_238879164(v9, sub_238878A4C, 0, v10, &v102);

    v11 = v102;
    v87 = *(v0 + 153);
    v13 = *(v0 + 416);
    v14 = *(v0 + 424);
    v15 = *(v0 + 392);
    v93 = *(v0 + 376);
    v96 = *(v0 + 384);
    v16 = *(v0 + 272);
    v90 = *(v0 + 248);
    v99 = v0;
    v17 = (v16 + *(v0 + 156));
    v18 = *(*(v0 + 488) + 20);
    v19 = sub_2388D0F58();
    (*(*(v19 - 8) + 16))(v14, &v17[v18], v19);
    v20 = [objc_opt_self() ephemeralSessionConfiguration];
    v21 = [objc_opt_self() sessionWithConfiguration_];

    *(v14 + *(v13 + 20)) = v11;
    *(v14 + *(v13 + 24)) = v21;
    v23 = *v17;
    v22 = *(v17 + 1);
    v24 = swift_task_alloc();
    *(v24 + 16) = v16;

    v25 = sub_238897A80(sub_238879ECC, v24, v90);

    sub_23887A1F0(v16, v15, type metadata accessor for ServerModelInferenceSession);
    v26 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v27 = swift_allocObject();
    sub_23887A0A4(v15, v27 + v26, type metadata accessor for ServerModelInferenceSession);
    if (v87 <= 0xFD)
    {
      v29 = v99;
      v30 = *(v99 + 153);
      v102 = *(v99 + 432);
      v103 = v30;
      sub_23887A018(&v102);
      v28 = v31;
      v86 = v22;
    }

    else
    {
      v86 = v22;

      v28 = 0;
      v29 = v99;
    }

    v84 = v25;
    v85 = v23;
    v32 = *(v29 + 256);
    v33 = *(v32 + 16);
    if (v33)
    {
      v89 = *(v29 + 336);
      v91 = *(v29 + 344);
      v88 = *(v29 + 328);
      *&v102 = MEMORY[0x277D84F90];
      sub_2388B8388(0, v33, 0);
      v34 = v32 + 32;
      v35 = v102;
      do
      {
        v97 = *(v29 + 344);
        v100 = v33;
        v36 = *(v29 + 320);
        sub_238815814(v34, v29 + 200);
        v37 = *(v29 + 224);
        v38 = *(v29 + 232);
        sub_238815878((v29 + 200), v37);
        v94 = (*(v38 + 40))(v37, v38);
        v40 = v39;
        v41 = *(v29 + 224);
        v42 = *(v29 + 232);
        sub_238815878((v29 + 200), v41);
        v43 = (*(v42 + 48))(v41, v42);
        v45 = v44;
        v46 = *(v29 + 224);
        v47 = *(v29 + 232);
        sub_238815878((v29 + 200), v46);
        (*(v47 + 56))(v46, v47);
        v48 = (v97 + *(v88 + 20));
        v49 = type metadata accessor for OpenAIClient.Tool.Function(0);
        GenerationSchema.jsonSchema()(v48 + *(v49 + 24));
        sub_238879E0C(v36, type metadata accessor for GenerationSchema);
        *v48 = v94;
        v48[1] = v40;
        v48[2] = v43;
        v48[3] = v45;
        *v97 = 0x6E6F6974636E7566;
        *(v91 + 8) = 0xE800000000000000;
        sub_2388158BC((v29 + 200));
        *&v102 = v35;
        v51 = *(v35 + 16);
        v50 = *(v35 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2388B8388(v50 > 1, v51 + 1, 1);
          v35 = v102;
        }

        v52 = *(v29 + 344);
        *(v35 + 16) = v51 + 1;
        sub_23887A0A4(v52, v35 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v51, type metadata accessor for OpenAIClient.Tool);
        v34 += 40;
        v33 = v100 - 1;
      }

      while (v100 != 1);
      v101 = v35;
    }

    else
    {
      v101 = MEMORY[0x277D84F90];
    }

    v53 = *(v29 + 464);
    v54 = *(v29 + 472);
    v55 = *(v29 + 352);
    v56 = *(v29 + 304);
    sub_238827E14(*(v29 + 264), v55, &qword_27DF2FE20, &qword_2388D5740);
    v57 = v53(v55, 1, v56);
    v58 = *(v29 + 360);
    if (v57 == 1)
    {
      v59 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    }

    else
    {
      v60 = *(v29 + 320);
      v61 = *(v29 + 304);
      sub_23887A0A4(*(v29 + 352), v60, type metadata accessor for GenerationSchema);
      v62 = (v60 + *(v61 + 20));
      v63 = *v62;
      v64 = v62[1];
      v65 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      v66 = (v58 + *(v65 + 20));
      v67 = type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
      v68 = *(v67 + 24);

      GenerationSchema.jsonSchema()(v66 + v68);
      *v66 = v63;
      v66[1] = v64;
      v66[2] = 0;
      v66[3] = 0;
      *(v66 + *(v67 + 28)) = 1;
      *v58 = 0x6863735F6E6F736ALL;
      v58[1] = 0xEB00000000616D65;
      sub_238879E0C(v60, type metadata accessor for GenerationSchema);
      (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
    }

    v69 = *(v29 + 155);
    v70 = *(v29 + 154);
    v72 = *(v29 + 448);
    v71 = *(v29 + 456);
    v73 = *(v29 + 424);
    v74 = *(v29 + 400);
    v75 = *(v29 + 408);
    v76 = *(v29 + 392);
    v77 = *(v29 + 360);
    v92 = *(v29 + 352);
    v95 = *(v29 + 344);
    v98 = *(v29 + 320);
    v79 = *(v29 + 288);
    v78 = *(v29 + 296);
    v80 = *(v29 + 280);
    v81 = *(v29 + 240);
    *v75 = v85;
    *(v75 + 8) = v86;
    *(v75 + 16) = v84;
    *(v75 + 24) = v72;
    *(v75 + 32) = v70;
    *(v75 + 40) = v28;
    *(v75 + 48) = v87 > 0xFD;
    *(v75 + 56) = v71;
    *(v75 + 64) = v69;
    *(v75 + 72) = v101;
    sub_23887A12C(v77, v75 + *(v74 + 40));
    *(v75 + *(v74 + 44)) = 1;
    v82 = swift_task_alloc();
    *(v82 + 16) = v73;
    *(v82 + 24) = v75;
    (*(v79 + 104))(v78, *MEMORY[0x277D858A0], v80);
    sub_2388D2D28();

    sub_238879E0C(v75, type metadata accessor for OpenAIClient.ChatCompletionRequest);
    sub_238879E0C(v73, type metadata accessor for OpenAIClient);

    v83 = *(v29 + 8);

    return v83();
  }
}

uint64_t sub_23886D834()
{
  sub_2388158BC(v0 + 20);
  v1 = v0[63];
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_23886D908(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      if (v1)
      {
        v2 = *result;
        return result;
      }

      v3 = 0x80000002388DF1A0;
      sub_23887A744();
      swift_allocError();
      v5 = 0xD000000000000026;
    }

    else
    {
      v3 = 0x80000002388DF1F0;
      sub_23887A744();
      swift_allocError();
      v5 = 0xD000000000000020;
    }
  }

  else
  {
    v3 = 0x80000002388DF1D0;
    sub_23887A744();
    swift_allocError();
    v5 = 0xD00000000000001FLL;
  }

  *v4 = v5;
  *(v4 + 8) = v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *(v4 + 48) = v8;
  *(v4 + 64) = 0;
  return swift_willThrow();
}

uint64_t sub_23886DA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  sub_2388B83EC(0, v2, 0);
  v3 = v16;
  v4 = *(v1 + 16);
  for (i = (v1 + 56); ; i += 11)
  {
    v6 = *(i - 2);
    v7 = *i;
    v15 = *(i - 1);
    v8 = i[7];
    v13 = *(i - 3);
    v14 = i[6];
    v10 = *(v16 + 16);
    v9 = *(v16 + 24);

    if (v10 >= v9 >> 1)
    {
      result = sub_2388B83EC((v9 > 1), v10 + 1, 1);
    }

    *(v16 + 16) = v10 + 1;
    v12 = (v16 + (v10 << 6));
    v12[4] = v13;
    v12[5] = v6;
    v12[6] = 0x6E6F6974636E7566;
    v12[7] = 0xE800000000000000;
    v12[8] = v15;
    v12[9] = v7;
    v12[10] = v14;
    v12[11] = v8;
    if (!v4)
    {
      break;
    }

    --v4;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

size_t sub_23886DB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v89 = a2;
  v87 = a3;
  v3 = type metadata accessor for Transcript.Prompt(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenAIClient.MessageContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v85 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for ServerModelInferenceSession(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v91 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v85 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v85 - v29;
  v31 = type metadata accessor for Transcript.Entry(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23887A1F0(v88, v34, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v60 = v34[1];
      v61 = v34[2];
      *&v92 = *v34;
      *(&v92 + 1) = v60;
      *&v93 = v61;
      v62 = sub_23886DA2C(&v92);

      v36 = 0;
      v37 = 0;
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v36 = *v34;
        v37 = v34[1];
        v39 = v34[3];
        v38 = v34[4];
        sub_23887A1F0(v89, v90, type metadata accessor for ServerModelInferenceSession);
        v40 = *(v38 + 16);
        v41 = MEMORY[0x277D84F90];
        if (!v40)
        {
LABEL_42:
          sub_238879E0C(v90, type metadata accessor for ServerModelInferenceSession);

          v62 = 0;
          v84 = 4;
LABEL_46:
          v83 = v87;
LABEL_51:
          *v83 = v84;
          *(v83 + 8) = v41;
          *(v83 + 16) = v62;
          *(v83 + 24) = v36;
          *(v83 + 32) = v37;
          return result;
        }

        v86 = v39;
        v88 = v37;
        v89 = v36;
        v98 = MEMORY[0x277D84F90];
        v91 = v38;
        result = sub_2388B840C(0, v40, 0);
        if (*(v91 + 2))
        {
          v43 = 0;
          v44 = v91 + 32;
          v41 = v98;
          while (1)
          {
            v45 = *(v44 + 3);
            v94 = *(v44 + 2);
            v95 = v45;
            v96 = *(v44 + 4);
            v97 = *(v44 + 10);
            v46 = *(v44 + 1);
            v92 = *v44;
            v93 = v46;
            sub_23886E514(&v92, v14);
            v98 = v41;
            v48 = *(v41 + 16);
            v47 = *(v41 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_2388B840C(v47 > 1, v48 + 1, 1);
              v41 = v98;
            }

            *(v41 + 16) = v48 + 1;
            result = sub_23887A0A4(v14, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v48, type metadata accessor for OpenAIClient.MessageContent);
            if (v40 - 1 == v43)
            {
              break;
            }

            ++v43;
            v44 += 88;
            if (v43 >= *(v91 + 2))
            {
              goto LABEL_52;
            }
          }

          v37 = v88;
          v36 = v89;
          goto LABEL_42;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v63 = v34[1];
      v64 = v34[2];
      v65 = v34[3];
      sub_23887A1F0(v89, v91, type metadata accessor for ServerModelInferenceSession);
      v66 = *(v65 + 16);
      if (v66)
      {
        v88 = v64;
        v89 = v63;
        v98 = MEMORY[0x277D84F90];
        result = sub_2388B840C(0, v66, 0);
        if (!*(v65 + 16))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v67 = 0;
        v41 = v98;
        v90 = (v66 - 1);
        v68 = 32;
        while (1)
        {
          v69 = *(v65 + v68 + 48);
          v94 = *(v65 + v68 + 32);
          v95 = v69;
          v96 = *(v65 + v68 + 64);
          v97 = *(v65 + v68 + 80);
          v70 = *(v65 + v68 + 16);
          v92 = *(v65 + v68);
          v93 = v70;
          sub_23886E514(&v92, v11);
          v98 = v41;
          v72 = *(v41 + 16);
          v71 = *(v41 + 24);
          if (v72 >= v71 >> 1)
          {
            sub_2388B840C(v71 > 1, v72 + 1, 1);
            v41 = v98;
          }

          *(v41 + 16) = v72 + 1;
          result = sub_23887A0A4(v11, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v72, type metadata accessor for OpenAIClient.MessageContent);
          if (v90 == v67)
          {
            break;
          }

          ++v67;
          v68 += 88;
          if (v67 >= *(v65 + 16))
          {
            goto LABEL_53;
          }
        }
      }

      else
      {

        v41 = MEMORY[0x277D84F90];
      }

      result = sub_238879E0C(v91, type metadata accessor for ServerModelInferenceSession);
      v62 = 0;
      v36 = 0;
      v37 = 0;
    }

    v84 = 2;
    goto LABEL_46;
  }

  v90 = v30;
  v91 = v28;
  if (!EnumCaseMultiPayload)
  {
    v49 = v34[1];
    v50 = v34[2];
    v51 = v34[3];
    v52 = v90;
    sub_23887A1F0(v89, v90, type metadata accessor for ServerModelInferenceSession);
    v53 = *(v50 + 16);
    if (v53)
    {
      v88 = v51;
      v89 = v49;
      v98 = MEMORY[0x277D84F90];
      result = sub_2388B840C(0, v53, 0);
      if (!*(v50 + 16))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v54 = 0;
      v41 = v98;
      v91 = (v53 - 1);
      v55 = 32;
      while (1)
      {
        v56 = *(v50 + v55 + 48);
        v94 = *(v50 + v55 + 32);
        v95 = v56;
        v96 = *(v50 + v55 + 64);
        v97 = *(v50 + v55 + 80);
        v57 = *(v50 + v55 + 16);
        v92 = *(v50 + v55);
        v93 = v57;
        sub_23886E514(&v92, v19);
        v98 = v41;
        v59 = *(v41 + 16);
        v58 = *(v41 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_2388B840C(v58 > 1, v59 + 1, 1);
          v41 = v98;
        }

        *(v41 + 16) = v59 + 1;
        result = sub_23887A0A4(v19, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v59, type metadata accessor for OpenAIClient.MessageContent);
        if (v91 == v54)
        {
          break;
        }

        ++v54;
        v55 += 88;
        if (v54 >= *(v50 + 16))
        {
          goto LABEL_54;
        }
      }

      v83 = v87;
      v52 = v90;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
      v83 = v87;
    }

    result = sub_238879E0C(v52, type metadata accessor for ServerModelInferenceSession);
    v84 = 0;
    v62 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_51;
  }

  v73 = v86;
  sub_23887A0A4(v34, v86, type metadata accessor for Transcript.Prompt);
  v74 = *(v73 + 16);
  v75 = v91;
  sub_23887A1F0(v89, v91, type metadata accessor for ServerModelInferenceSession);
  v76 = *(v74 + 16);
  if (!v76)
  {
    sub_238879E0C(v73, type metadata accessor for Transcript.Prompt);
    v41 = MEMORY[0x277D84F90];
    v83 = v87;
LABEL_50:
    result = sub_238879E0C(v75, type metadata accessor for ServerModelInferenceSession);
    v62 = 0;
    v36 = 0;
    v37 = 0;
    v84 = 1;
    goto LABEL_51;
  }

  v98 = MEMORY[0x277D84F90];
  result = sub_2388B840C(0, v76, 0);
  if (*(v74 + 16))
  {
    v77 = 0;
    v78 = (v74 + 32);
    v41 = v98;
    v90 = (v76 - 1);
    while (1)
    {
      v79 = v78[3];
      v94 = v78[2];
      v95 = v79;
      v96 = v78[4];
      v97 = *(v78 + 10);
      v80 = v78[1];
      v92 = *v78;
      v93 = v80;
      sub_23886E514(&v92, v17);
      v98 = v41;
      v82 = *(v41 + 16);
      v81 = *(v41 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_2388B840C(v81 > 1, v82 + 1, 1);
        v41 = v98;
      }

      *(v41 + 16) = v82 + 1;
      result = sub_23887A0A4(v17, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v82, type metadata accessor for OpenAIClient.MessageContent);
      if (v90 == v77)
      {
        break;
      }

      ++v77;
      v78 = (v78 + 88);
      if (v77 >= *(v74 + 16))
      {
        goto LABEL_55;
      }
    }

    sub_238879E0C(v86, type metadata accessor for Transcript.Prompt);
    v83 = v87;
    v75 = v91;
    goto LABEL_50;
  }

LABEL_55:
  __break(1u);
  return result;
}

void sub_23886E514(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  v10 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_2388D0F58();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2388D1D78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[2];
  v23 = a1[6] >> 62;
  if (!v23)
  {
    v28 = a1[3];
    v29 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
    v52 = *(v53 + 56);
    v53 += 56;
    (v52)(a2 + v29, 1, 1, v4);
    *a2 = 0;
    *(a2 + 8) = v22;
    *(a2 + 16) = v28;

    sub_238827E88(a2 + v29, &qword_27DF30760, &qword_2388D6A40);
    v27 = a2 + v29;
    goto LABEL_5;
  }

  if (v23 == 1)
  {
    v24 = a1[9];
    v25 = a1[10];
    v26 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
    v52 = *(v53 + 56);
    v53 += 56;
    (v52)(a2 + v26, 1, 1, v4);
    *a2 = 0;
    *(a2 + 8) = v24;
    *(a2 + 16) = v25;

    sub_238827E88(a2 + v26, &qword_27DF30760, &qword_2388D6A40);
    v27 = a2 + v26;
LABEL_5:
    v30 = v52;

    v30(v27, 1, 1, v4);
    return;
  }

  v48 = v8;
  v49 = v4;
  v31 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_2388D1D68();
  sub_2388D1D58();
  (*(v18 + 8))(v21, v17);
  v32 = sub_2388D2848();

  v33 = CGImageDestinationCreateWithData(v31, v32, 1uLL, 0);

  if (v33)
  {
    CGImageDestinationAddImage(v33, v22, 0);
    CGImageDestinationFinalize(v33);
    v34 = MEMORY[0x23EE65230](v31);
    v36 = v35;

    v37 = sub_2388D0FF8();
    v39 = v38;
    sub_238826D50(v34, v36);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_2388D2FA8();

    v54 = 0xD000000000000017;
    v55 = 0x80000002388DF220;
    MEMORY[0x23EE66C20](v37, v39);
    sub_2388D0F28();

    v40 = v52;
    if ((*(v52 + 48))(v13, 1, v14) != 1)
    {

      v41 = *(v40 + 32);
      v42 = v50;
      v41(v50, v13, v14);
      v43 = v51;
      v41(v51, v42, v14);
      v45 = v48;
      v44 = v49;
      *(v43 + *(v49 + 20)) = xmmword_2388D6670;
      sub_23887A0A4(v43, v45, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
      v46 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
      v47 = *(v53 + 56);
      v53 += 56;
      v47(a2 + v46, 1, 1, v44);
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_238827E88(a2 + v46, &qword_27DF30760, &qword_2388D6A40);
      sub_23887A0A4(v45, a2 + v46, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
      v47(a2 + v46, 0, 1, v44);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23886EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[57] = a3;
  v4[58] = v3;
  v4[55] = a1;
  v4[56] = a2;
  v7 = sub_2388D17B8();
  v4[59] = v7;
  v8 = *(v7 - 8);
  v4[60] = v8;
  v9 = *(v8 + 64) + 15;
  v4[61] = swift_task_alloc();
  v10 = sub_2388D17D8();
  v4[62] = v10;
  v11 = *(v10 - 8);
  v4[63] = v11;
  v12 = *(v11 + 64) + 15;
  v4[64] = swift_task_alloc();
  v13 = sub_238810E44(&qword_27DF306A0, &unk_2388D6978);
  v14 = sub_238815180(&qword_27DF306A8, &qword_27DF306A0, &unk_2388D6978);
  v15 = *(MEMORY[0x277D856D8] + 4);
  v16 = swift_task_alloc();
  v4[65] = v16;
  *v16 = v4;
  v16[1] = sub_23886ECBC;

  return MEMORY[0x282200310](v4 + 47, a2, a3, v4 + 52, v13, v14);
}

uint64_t sub_23886ECBC()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v12 = *v1;

  if (v0)
  {
    if (*(v2 + 448))
    {
      v4 = *(v2 + 456);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_23886F6CC;
  }

  else
  {
    if (*(v2 + 448))
    {
      v9 = *(v2 + 456);
      swift_getObjectType();
      v5 = sub_2388D2B38();
      v7 = v10;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = sub_23886EE44;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

unint64_t sub_23886EE44()
{
  if (!*(v0 + 384))
  {
LABEL_66:
    v82 = *(v0 + 440);
    *(v82 + 32) = 0;
    *v82 = 0u;
    *(v82 + 16) = 0u;
    goto LABEL_67;
  }

  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  if (!*(v1 + 16))
  {
    goto LABEL_62;
  }

  v3 = *(v0 + 376);
  v4 = *(v1 + 64);
  if (!v4)
  {
LABEL_60:
    if (*(v1 + 56))
    {
      v111 = *(v1 + 48);
      v76 = *(v0 + 480);
      v75 = *(v0 + 488);
      v77 = *(v0 + 472);
      v78 = *(v0 + 440);

      sub_2388D1798();

      v79 = MEMORY[0x277D71D70];
      v78[3] = v77;
      v78[4] = v79;
      v80 = sub_238841100(v78);
      (*(v76 + 32))(v80, v75, v77);
LABEL_67:
      v83 = *(v0 + 512);
      v84 = *(v0 + 488);

      v85 = *(v0 + 8);

      return v85();
    }

LABEL_62:
    v81 = *(v0 + 440);

    *(v81 + 32) = 0;
    *v81 = 0u;
    *(v81 + 16) = 0u;
    goto LABEL_67;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

LABEL_65:

    goto LABEL_66;
  }

  v94 = *(v0 + 376);
  v95 = *(v0 + 408);
  v96 = *(v0 + 384);
  v109 = *(v0 + 464);
  v108 = *(sub_238810E44(&qword_27DF306B0, &qword_2388D6988) + 36);

  v6 = 0;
  v99 = v5 - 1;
  v100 = v4;
  v7 = 32;
  while (1)
  {
    v8 = *(v4 + v7 + 16);
    v9 = *(v4 + v7 + 32);
    v10 = *(v4 + v7 + 48);
    *(v0 + 80) = *(v4 + v7 + 64);
    *(v0 + 48) = v9;
    *(v0 + 64) = v10;
    *(v0 + 16) = *(v4 + v7);
    *(v0 + 32) = v8;
    v1 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v109 + v108);
    v101 = v12;
    v102 = v11;
    v110 = *(v0 + 16);
    if (*(v14 + 16))
    {
      v15 = sub_238820BC0(*(v0 + 16));
      if (v16)
      {
        v17 = (*(v14 + 56) + 48 * v15);
        v18 = v17[1];
        v98 = *v17;
        v19 = v17[3];
        v103 = v17[2];
        v21 = v17[4];
        v20 = v17[5];

        v106 = v18;
        v22 = v0 + 16;
        if (v11 == 1)
        {
          sub_238879D5C(v22, v0 + 232);
        }

        else
        {
          sub_238879D5C(v22, v0 + 304);
          sub_238879DC4(v1, v11);

          if (v11)
          {
LABEL_32:

            MEMORY[0x23EE66C20](v1, v11);

            v97 = v103;
            v105 = v19;
            if (v102 == 1 || (v45 = v13, (v46 = ) == 0))
            {

              v45 = 0;
              v46 = 0xE000000000000000;
            }

            MEMORY[0x23EE66C20](v45, v46);

            v1 = v21;
            v47 = v20;
            v48 = *(v109 + v108);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = *(v109 + v108);
            result = sub_238820BC0(v110);
            v51 = v32[2];
            v52 = (v50 & 1) == 0;
            v37 = __OFADD__(v51, v52);
            v53 = v51 + v52;
            if (v37)
            {
              goto LABEL_80;
            }

            v54 = v50;
            if (v32[3] >= v53)
            {
              if (!isUniquelyReferenced_nonNull_native)
              {
                v64 = result;
                sub_23882143C();
                result = v64;
                if (v54)
                {
LABEL_41:
                  v56 = (v32[7] + 48 * result);
                  v57 = v56[1];
                  v58 = v56[3];
                  v59 = v56[5];
                  *v56 = v98;
                  v56[1] = v106;
                  v56[2] = v97;
                  v56[3] = v105;
                  v56[4] = v21;
                  v56[5] = v47;

                  goto LABEL_49;
                }

                goto LABEL_47;
              }
            }

            else
            {
              sub_23882297C(v53, isUniquelyReferenced_nonNull_native);
              result = sub_238820BC0(v110);
              if ((v54 & 1) != (v55 & 1))
              {
LABEL_70:

                return sub_2388D3438();
              }
            }

            if (v54)
            {
              goto LABEL_41;
            }

LABEL_47:
            v32[(result >> 6) + 8] |= 1 << result;
            *(v32[6] + 8 * result) = v110;
            v65 = (v32[7] + 48 * result);
            *v65 = v98;
            v65[1] = v106;
            v65[2] = v97;
            v65[3] = v105;
            v65[4] = v21;
            v65[5] = v47;
            v66 = v32[2];
            v37 = __OFADD__(v66, 1);
            v63 = v66 + 1;
            if (v37)
            {
              goto LABEL_81;
            }

            goto LABEL_48;
          }
        }

        v1 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_32;
      }
    }

    v23 = *(v0 + 32);
    if (v23)
    {
      v24 = *(v0 + 24);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = *(v0 + 32);
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v104 = v24;
    v107 = v25;
    v26 = v0 + 16;
    if (v11 == 1)
    {
      sub_238879D5C(v26, v0 + 88);

      v1 = 0;
      v27 = 0xE000000000000000;
LABEL_22:

      v28 = 0;
      v29 = 0xE000000000000000;
      goto LABEL_23;
    }

    sub_238879D5C(v26, v0 + 160);

    sub_238879DC4(v1, v11);

    if (v11)
    {
      v27 = v11;
    }

    else
    {
      v1 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = v13;
    v29 = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_23:
    v30 = *(v109 + v108);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v109 + v108);
    result = sub_238820BC0(v110);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((v31 & 1) == 0)
      {
        v60 = result;
        sub_23882143C();
        result = v60;
        if (v39)
        {
LABEL_29:
          v41 = (v32[7] + 48 * result);
          v42 = v41[1];
          v43 = v41[3];
          v44 = v41[5];
          *v41 = v104;
          v41[1] = v107;
          v41[2] = v1;
          v41[3] = v27;
          v41[4] = v28;
          v41[5] = v29;

          goto LABEL_49;
        }

        goto LABEL_43;
      }
    }

    else
    {
      sub_23882297C(v38, v31);
      result = sub_238820BC0(v110);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_70;
      }
    }

    if (v39)
    {
      goto LABEL_29;
    }

LABEL_43:
    v32[(result >> 6) + 8] |= 1 << result;
    *(v32[6] + 8 * result) = v110;
    v61 = (v32[7] + 48 * result);
    *v61 = v104;
    v61[1] = v107;
    v61[2] = v1;
    v61[3] = v27;
    v61[4] = v28;
    v61[5] = v29;
    v62 = v32[2];
    v37 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v37)
    {
      goto LABEL_79;
    }

LABEL_48:
    v32[2] = v63;
LABEL_49:
    *(v109 + v108) = v32;
    if (v32[2])
    {
      v67 = sub_238820BC0(v110);
      if (v68)
      {
        v69 = (v32[7] + 48 * v67);
        v70 = *v69;
        v71 = v69[1];
        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = *v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          v1 = v69[2];
          v73 = v69[3];
          v74 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v74 = v1 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            v86 = v69[5];
            v87 = v69[1];

            *(v0 + 432) = v110;

            sub_2388D32F8();

            if (v102 == 1)
            {
              sub_238879D94(v0 + 16);
              goto LABEL_76;
            }

            sub_238879D94(v0 + 16);

            if (!v101)
            {
LABEL_76:
            }

            v89 = *(v0 + 504);
            v88 = *(v0 + 512);
            v90 = *(v0 + 496);
            v91 = *(v0 + 440);
            sub_2388D17C8();

            v92 = MEMORY[0x277D71D78];
            v91[3] = v90;
            v91[4] = v92;
            v93 = sub_238841100(v91);
            (*(v89 + 32))(v93, v88, v90);
            goto LABEL_67;
          }
        }
      }
    }

    sub_238879D94(v0 + 16);
    if (v99 == v6)
    {

      goto LABEL_65;
    }

    ++v6;
    v4 = v100;
    v7 += 72;
    if (v6 >= *(v100 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_23886F6CC()
{
  v1 = v0[52];
  v0[53] = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if (sub_2388D3358())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = v0[64];
  v4 = v0[61];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23886F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[56] = a4;
  v5[57] = v4;
  v5[54] = a2;
  v5[55] = a3;
  v5[53] = a1;
  v9 = sub_2388D17B8();
  v5[58] = v9;
  v10 = *(v9 - 8);
  v5[59] = v10;
  v11 = *(v10 + 64) + 15;
  v5[60] = swift_task_alloc();
  v12 = sub_2388D17D8();
  v5[61] = v12;
  v13 = *(v12 - 8);
  v5[62] = v13;
  v14 = *(v13 + 64) + 15;
  v5[63] = swift_task_alloc();
  v17 = a4 + 16;
  v15 = *(a4 + 16);
  v16 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[64] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v5[65] = v19;
  v20 = *(v19 + 64) + 15;
  v5[66] = swift_task_alloc();
  v21 = swift_task_alloc();
  v5[67] = v21;
  v22 = swift_getAssociatedTypeWitness();
  v5[68] = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[69] = AssociatedConformanceWitness;
  v24 = *(MEMORY[0x277D856D8] + 4);
  v25 = swift_task_alloc();
  v5[70] = v25;
  *v25 = v5;
  v25[1] = sub_23886FA14;

  return MEMORY[0x282200310](v5 + 47, a2, a3, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_23886FA14()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 432);
  v15 = *v1;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 432);
      v6 = *(v2 + 440);
      swift_getObjectType();
      v7 = sub_2388D2B38();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_238870408;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 432);
      v12 = *(v2 + 440);
      swift_getObjectType();
      v7 = sub_2388D2B38();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_23886FBA0;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

unint64_t sub_23886FBA0()
{
  if (!*(v0 + 384))
  {
LABEL_67:
    v83 = *(v0 + 424);
    *(v83 + 32) = 0;
    *v83 = 0u;
    *(v83 + 16) = 0u;
    goto LABEL_68;
  }

  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  if (!*(v1 + 16))
  {
    goto LABEL_63;
  }

  v3 = *(v0 + 376);
  v4 = *(v1 + 64);
  if (!v4)
  {
LABEL_61:
    if (*(v1 + 56))
    {
      v114 = *(v1 + 48);
      v77 = *(v0 + 472);
      v76 = *(v0 + 480);
      v78 = *(v0 + 464);
      v79 = *(v0 + 424);

      sub_2388D1798();

      v80 = MEMORY[0x277D71D70];
      v79[3] = v78;
      v79[4] = v80;
      v81 = sub_238841100(v79);
      (*(v77 + 32))(v81, v76, v78);
LABEL_68:
      v84 = *(v0 + 536);
      v85 = *(v0 + 528);
      v86 = *(v0 + 504);
      v87 = *(v0 + 480);

      v88 = *(v0 + 8);

      return v88();
    }

LABEL_63:
    v82 = *(v0 + 424);

    *(v82 + 32) = 0;
    *v82 = 0u;
    *(v82 + 16) = 0u;
    goto LABEL_68;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

LABEL_66:

    goto LABEL_67;
  }

  v97 = *(v0 + 376);
  v98 = *(v0 + 408);
  v99 = *(v0 + 384);
  v111 = *(*(v0 + 448) + 36);
  v112 = *(v0 + 456);

  v6 = 0;
  v102 = v5 - 1;
  v103 = v4;
  v7 = 32;
  while (1)
  {
    v8 = *(v4 + v7 + 16);
    v9 = *(v4 + v7 + 32);
    v10 = *(v4 + v7 + 48);
    *(v0 + 80) = *(v4 + v7 + 64);
    *(v0 + 48) = v9;
    *(v0 + 64) = v10;
    *(v0 + 16) = *(v4 + v7);
    *(v0 + 32) = v8;
    v1 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v112 + v111);
    v104 = v13;
    v105 = v12;
    v110 = v11;
    v113 = *(v0 + 16);
    if (*(v14 + 16))
    {
      v15 = sub_238820BC0(*(v0 + 16));
      if (v16)
      {
        v17 = (*(v14 + 56) + 48 * v15);
        v18 = v17[2];
        v19 = v17[3];
        v20 = v17[5];
        v106 = *v17;
        v108 = v17[4];
        v21 = v17[1];
        swift_bridgeObjectRetain_n();

        v22 = v0 + 16;
        if (v11 == 1)
        {
          sub_238879D5C(v22, v0 + 232);
        }

        else
        {
          sub_238879D5C(v22, v0 + 304);
          sub_238879DC4(v1, v11);

          if (v11)
          {
            v44 = v11;
LABEL_33:

            MEMORY[0x23EE66C20](v1, v44);

            v100 = v18;
            v101 = v19;
            v45 = v21;
            if (v110 == 1 || (v46 = v104, (v47 = ) == 0))
            {

              v46 = 0;
              v47 = 0xE000000000000000;
            }

            MEMORY[0x23EE66C20](v46, v47);

            v1 = v108;
            v48 = v20;
            v49 = *(v112 + v111);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = *(v112 + v111);
            result = sub_238820BC0(v113);
            v52 = v31[2];
            v53 = (v51 & 1) == 0;
            v36 = __OFADD__(v52, v53);
            v54 = v52 + v53;
            if (v36)
            {
              goto LABEL_81;
            }

            v55 = v51;
            if (v31[3] >= v54)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v65 = result;
                sub_23882143C();
                result = v65;
                if (v55)
                {
LABEL_42:
                  v57 = (v31[7] + 48 * result);
                  v58 = v57[1];
                  v59 = v57[3];
                  v60 = v57[5];
                  *v57 = v106;
                  v57[1] = v45;
                  v57[2] = v100;
                  v57[3] = v101;
                  v57[4] = v108;
                  v57[5] = v48;

                  goto LABEL_50;
                }

                goto LABEL_48;
              }
            }

            else
            {
              sub_23882297C(v54, isUniquelyReferenced_nonNull_native);
              result = sub_238820BC0(v113);
              if ((v55 & 1) != (v56 & 1))
              {
LABEL_71:

                return sub_2388D3438();
              }
            }

            if (v55)
            {
              goto LABEL_42;
            }

LABEL_48:
            v31[(result >> 6) + 8] |= 1 << result;
            *(v31[6] + 8 * result) = v113;
            v66 = (v31[7] + 48 * result);
            *v66 = v106;
            v66[1] = v45;
            v66[2] = v100;
            v66[3] = v101;
            v66[4] = v108;
            v66[5] = v48;
            v67 = v31[2];
            v36 = __OFADD__(v67, 1);
            v64 = v67 + 1;
            if (v36)
            {
              goto LABEL_82;
            }

            goto LABEL_49;
          }
        }

        v1 = 0;
        v44 = 0xE000000000000000;
        goto LABEL_33;
      }
    }

    v23 = *(v0 + 32);
    if (v23)
    {
      v24 = *(v0 + 24);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = *(v0 + 32);
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v107 = v24;
    v109 = v25;
    v26 = v0 + 16;
    if (v11 == 1)
    {
      sub_238879D5C(v26, v0 + 88);

      v1 = 0;
      v27 = 0xE000000000000000;
LABEL_22:

      v13 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_23;
    }

    sub_238879D5C(v26, v0 + 160);
    sub_238879DC4(v1, v11);

    if (v11)
    {
      v27 = v11;
    }

    else
    {
      v1 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_23:
    v29 = *(v112 + v111);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v112 + v111);
    result = sub_238820BC0(v113);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      break;
    }

    v38 = v33;
    if (v31[3] >= v37)
    {
      if ((v30 & 1) == 0)
      {
        v61 = result;
        sub_23882143C();
        result = v61;
        if (v38)
        {
LABEL_29:
          v40 = (v31[7] + 48 * result);
          v41 = v40[1];
          v42 = v40[3];
          v43 = v40[5];
          *v40 = v107;
          v40[1] = v109;
          v40[2] = v1;
          v40[3] = v27;
          v40[4] = v13;
          v40[5] = v28;

          goto LABEL_50;
        }

        goto LABEL_44;
      }
    }

    else
    {
      sub_23882297C(v37, v30);
      result = sub_238820BC0(v113);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_71;
      }
    }

    if (v38)
    {
      goto LABEL_29;
    }

LABEL_44:
    v31[(result >> 6) + 8] |= 1 << result;
    *(v31[6] + 8 * result) = v113;
    v62 = (v31[7] + 48 * result);
    *v62 = v107;
    v62[1] = v109;
    v62[2] = v1;
    v62[3] = v27;
    v62[4] = v13;
    v62[5] = v28;
    v63 = v31[2];
    v36 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v36)
    {
      goto LABEL_80;
    }

LABEL_49:
    v31[2] = v64;
LABEL_50:
    *(v112 + v111) = v31;
    if (v31[2])
    {
      v68 = sub_238820BC0(v113);
      if (v69)
      {
        v70 = (v31[7] + 48 * v68);
        v71 = *v70;
        v72 = v70[1];
        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = *v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v73)
        {
          v1 = v70[2];
          v74 = v70[3];
          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v1 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {
            v89 = v70[5];
            v90 = v70[1];

            *(v0 + 416) = v113;

            sub_2388D32F8();

            if (v110 == 1)
            {
              sub_238879D94(v0 + 16);
              goto LABEL_77;
            }

            sub_238879D94(v0 + 16);

            if (!v105)
            {
LABEL_77:
            }

            v92 = *(v0 + 496);
            v91 = *(v0 + 504);
            v93 = *(v0 + 488);
            v94 = *(v0 + 424);
            sub_2388D17C8();

            v95 = MEMORY[0x277D71D78];
            v94[3] = v93;
            v94[4] = v95;
            v96 = sub_238841100(v94);
            (*(v92 + 32))(v96, v91, v93);
            goto LABEL_68;
          }
        }
      }
    }

    sub_238879D94(v0 + 16);
    if (v102 == v6)
    {

      goto LABEL_66;
    }

    ++v6;
    v4 = v103;
    v7 += 72;
    if (v6 >= *(v103 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_238870408()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = *(v0[65] + 32);
  v3(v0[66], v0[67], v0[64]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_2388D3358();
  v5 = v0[66];
  if (v4)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
  }

  else
  {
    v6 = v0[64];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];

  v12 = v0[1];

  return v12();
}

uint64_t sub_238870568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238833668;

  return sub_23886EAEC(a1, 0, 0);
}

uint64_t sub_238870608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_2388706C0;

  return sub_23886EAEC(a1, a2, a3);
}

uint64_t sub_2388706C0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (!v0)
  {
    v8 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  if (v3[2])
  {
    v4 = v3[3];
    swift_getObjectType();
    v5 = sub_2388D2B38();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](sub_238870830, v5, v7);
}

uint64_t sub_238870854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238810E44(&qword_27DF306B8, &unk_2388D6990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - v6, v1, v4);
  sub_238815180(&qword_27DF306C0, &qword_27DF306B8, &unk_2388D6990);
  sub_2388D2C58();
  v8 = sub_238878C04(MEMORY[0x277D84F90]);
  sub_238879E0C(v2, type metadata accessor for ServerModelInferenceSession.ResponseStream);
  result = sub_238810E44(&qword_27DF306B0, &qword_2388D6988);
  *(a1 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_2388709B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return sub_23886F7AC(a1, a2, a3, a5);
}

uint64_t sub_238870A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23883EF20;

  return sub_238878EAC();
}

uint64_t sub_238870B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2388414A0;

  return sub_23886BF80(a1, a2, a3, a4, v13, v14, a7);
}

uint64_t sub_238870C84()
{
  v1[32] = v0;
  v2 = sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  sub_2388D2BC8();
  v1[36] = sub_2388D2BB8();
  v6 = sub_2388D2B38();
  v1[37] = v6;
  v1[38] = v5;

  return MEMORY[0x2822009F8](sub_238870D84, v6, v5);
}

uint64_t sub_238870D84()
{
  v1 = v0[32];
  v2 = [objc_allocWithZone(FMAjaxAuthenticator) init];
  v0[39] = v2;
  v16 = *(v1 + 40);
  v17 = v2;
  v3 = *v1;
  v4 = v1[1];
  v15 = sub_2388D2848();
  v0[40] = v15;
  v5 = v1[2];
  if (v5)
  {
    v5 = sub_2388D2AC8();
  }

  v14 = v5;
  v0[41] = v5;
  v6 = v0[32];
  if (*(v6 + 32))
  {
    v7 = *(v6 + 24);
    v8 = sub_2388D2848();
  }

  else
  {
    v8 = 0;
  }

  v0[42] = v8;
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_238870FB0;
  swift_continuation_init();
  v0[29] = v11;
  v12 = sub_238841100(v0 + 26);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D2B48();
  (*(v10 + 32))(v12, v9, v11);
  v0[22] = MEMORY[0x277D85DD0];
  v0[23] = 1107296256;
  v0[24] = sub_23887143C;
  v0[25] = &unk_284B3DD58;
  [v17 authenticate:v16 clientID:v15 scopes:v14 resource:v8 withCompletionHandler:v0 + 22];
  (*(v10 + 8))(v12, v11);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238870FB0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = sub_238871270;
  }

  else
  {
    v6 = sub_2388710E0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2388710E0()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];

  v7 = v0[30];
  v8 = v0[31];

  sub_238810E44(&qword_27DF306D8, &qword_2388D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2388D6660;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x23EE66C20](v7, v8);

  *(inited + 48) = 0x20726572616542;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0x7A69726F68747541;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = 1667524975;
  *(inited + 88) = 0xE400000000000000;
  v10 = sub_238879050(inited);
  swift_setDeallocating();
  sub_238810E44(&qword_27DF306E0, &qword_2388D69C8);
  swift_arrayDestroy();

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_238871270()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[36];

  swift_willThrow();

  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v6 = v0[43];
  v7 = sub_2388D2408();
  sub_2388413AC(v7, qword_27DF3F8F8);
  v8 = v6;
  v9 = sub_2388D23E8();
  v10 = sub_2388D2E08();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[43];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23880E000, v9, v10, "Failed to authenticate with Apple Connect: %@", v12, 0xCu);
    sub_238827E88(v13, &qword_27DF2FF90, &qword_2388D58A0);
    MEMORY[0x23EE68030](v13, -1, -1);
    MEMORY[0x23EE68030](v12, -1, -1);
  }

  v16 = v0[43];
  v17 = v0[39];
  v18 = v0[35];

  swift_willThrow();

  v19 = v0[1];
  v20 = v0[43];

  return v19();
}

void sub_23887143C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_238815878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
    sub_2388D2B58();
  }

  else
  {
    sub_2388D2858();
    sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
    sub_2388D2B68();
  }
}

uint64_t sub_2388714E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v3 = sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpenAIClient(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = sub_2388D2BE8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_23887A1F0(v26, v14, type metadata accessor for OpenAIClient);
  sub_23887A1F0(v27, v10, type metadata accessor for OpenAIClient.ChatCompletionRequest);
  (*(v4 + 16))(v7, v28, v3);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v25 + 80) + v20) & ~*(v25 + 80);
  v22 = (v9 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_23887A0A4(v14, v23 + v20, type metadata accessor for OpenAIClient);
  sub_23887A0A4(v10, v23 + v21, type metadata accessor for OpenAIClient.ChatCompletionRequest);
  (*(v4 + 32))(v23 + v22, v7, v3);
  sub_2388867B0(0, 0, v18, &unk_2388D6A08, v23);
}

uint64_t sub_238871860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[49] = a4;
  v6[50] = a6;
  v8 = sub_238810E44(&qword_27DF30700, &qword_2388D6A10);
  v6[51] = v8;
  v9 = *(v8 - 8);
  v6[52] = v9;
  v10 = *(v9 + 64) + 15;
  v6[53] = swift_task_alloc();
  v11 = sub_238810E44(&qword_27DF30708, &qword_2388D6A18);
  v6[54] = v11;
  v12 = *(v11 - 8);
  v6[55] = v12;
  v13 = *(v12 + 64) + 15;
  v6[56] = swift_task_alloc();
  v14 = sub_238810E44(&qword_27DF30710, &qword_2388D6A20);
  v6[57] = v14;
  v15 = *(v14 - 8);
  v6[58] = v15;
  v16 = *(v15 + 64) + 15;
  v6[59] = swift_task_alloc();
  v17 = sub_2388D2DC8();
  v6[60] = v17;
  v18 = *(v17 - 8);
  v6[61] = v18;
  v19 = *(v18 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v20 = sub_2388D0D28();
  v6[64] = v20;
  v21 = *(v20 - 8);
  v6[65] = v21;
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v6[66] = v23;
  v24 = swift_task_alloc();
  v6[67] = v24;
  *v24 = v6;
  v24[1] = sub_238871B0C;

  return sub_238872EFC(v23, a5);
}

uint64_t sub_238871B0C()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_238872D38;
  }

  else
  {
    v3 = sub_238871C20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238871C20()
{
  v1 = v0[49];
  v2 = *(v1 + *(type metadata accessor for OpenAIClient(0) + 24));
  v3 = *(MEMORY[0x277CC9D30] + 4);
  v4 = swift_task_alloc();
  v0[69] = v4;
  *v4 = v0;
  v4[1] = sub_238871CD4;
  v5 = v0[66];
  v6 = v0[63];

  return MEMORY[0x28211ED10](v6, v5, 0);
}

uint64_t sub_238871CD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 552);
  v7 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v5 = sub_238872E0C;
  }

  else
  {
    v5 = sub_238871DEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_238871DEC()
{
  v1 = *(v0 + 560);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  *(v0 + 576) = v2;
  if ([v2 statusCode] == 200)
  {
    v3 = *(v0 + 504);
    v5 = *(v0 + 472);
    v4 = *(v0 + 480);
    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v8 = *(v0 + 432);
    sub_238879C44(&qword_27DF30718, MEMORY[0x277CC9CF8]);
    sub_2388D2C48();
    sub_2388D0EA8();
    (*(v7 + 8))(v6, v8);
    v9 = sub_238815180(&qword_27DF30738, &qword_27DF30710, &qword_2388D6A20);
    v10 = *(MEMORY[0x277D856D0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 584) = v11;
    *v11 = v0;
    v11[1] = sub_23887212C;
    v12 = *(v0 + 472);
    v13 = *(v0 + 456);

    return MEMORY[0x282200308](v0 + 344, v13, v9);
  }

  else
  {
    (*(*(v0 + 488) + 16))(*(v0 + 496), *(v0 + 504), *(v0 + 480));
    sub_238879C44(&qword_27DF30718, MEMORY[0x277CC9CF8]);
    sub_2388D2C58();
    *(v0 + 616) = xmmword_2388D44B0;
    v14 = *(v0 + 312);
    if (v14 != *(v0 + 320))
    {
      v15 = 0;
      v16 = 0xC000000000000000;
      do
      {
        v17 = *v14;
        *(v0 + 312) = v14 + 1;
        sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_2388D3F70;
        *(v18 + 32) = v17;
        *(v0 + 328) = v15;
        *(v0 + 336) = v16;
        sub_238827F50(v15, v16);
        sub_238878A94(v18);

        sub_238826D50(v15, v16);
        v15 = *(v0 + 328);
        v16 = *(v0 + 336);
        *(v0 + 624) = v16;
        *(v0 + 616) = v15;
        v14 = *(v0 + 312);
      }

      while (v14 != *(v0 + 320));
    }

    v19 = *(MEMORY[0x277CC8CB8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 632) = v20;
    *v20 = v0;
    v20[1] = sub_238872774;

    return MEMORY[0x28211C470]();
  }
}

uint64_t sub_23887212C()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_238872598;
  }

  else
  {
    v3 = sub_238872240;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238872240()
{
  v1 = v0[44];
  v0[75] = v0[43];
  v0[76] = v1;
  return MEMORY[0x2822009F8](sub_238872268, 0, 0);
}

uint64_t sub_238872268()
{
  if (!*(v0 + 608))
  {
    v11 = *(v0 + 560);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v15 = *(v0 + 504);
    v14 = *(v0 + 512);
    v16 = *(v0 + 480);
    v17 = *(v0 + 488);
    v18 = *(v0 + 400);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    *(v0 + 384) = 0;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v1 = *(v0 + 592);
  v2 = *(v0 + 392);
  sub_2388733D8(*(v0 + 600), *(v0 + 608), v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 520);
    v4 = *(v0 + 504);
    v38 = *(v0 + 512);
    v39 = *(v0 + 528);
    v6 = *(v0 + 480);
    v5 = *(v0 + 488);
    v7 = *(v0 + 464);
    v8 = *(v0 + 472);
    v9 = *(v0 + 456);

    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v39, v38);
    v10 = *(v0 + 400);
    *(v0 + 360) = v1;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();
LABEL_5:
    v19 = *(v0 + 528);
    v20 = *(v0 + 496);
    v21 = *(v0 + 504);
    v22 = *(v0 + 472);
    v23 = *(v0 + 448);
    v24 = *(v0 + 424);

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = *(v0 + 232);
  if (v27)
  {
    v29 = *(v0 + 416);
    v28 = *(v0 + 424);
    v30 = *(v0 + 400);
    v31 = *(v0 + 408);
    v32 = *(v0 + 224);
    *(v0 + 280) = *(v0 + 240);
    *(v0 + 296) = *(v0 + 256);
    *(v0 + 264) = v32;
    *(v0 + 272) = v27;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CC8();
    (*(v29 + 8))(v28, v31);
  }

  v33 = sub_238815180(&qword_27DF30738, &qword_27DF30710, &qword_2388D6A20);
  v34 = *(MEMORY[0x277D856D0] + 4);
  v35 = swift_task_alloc();
  *(v0 + 584) = v35;
  *v35 = v0;
  v35[1] = sub_23887212C;
  v36 = *(v0 + 472);
  v37 = *(v0 + 456);

  return MEMORY[0x282200308](v0 + 344, v37, v33);
}

uint64_t sub_238872598()
{
  *(v0 + 376) = *(v0 + 592);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_238872628, 0, 0);
}

uint64_t sub_238872628()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 400);
  *(v0 + 360) = *(v0 + 592);
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();
  v11 = *(v0 + 528);
  v12 = *(v0 + 496);
  v13 = *(v0 + 504);
  v14 = *(v0 + 472);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_238872774(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v11 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v6 = *(v4 + 624);
    v7 = *(v4 + 616);
    v8 = *(v4 + 304);
    swift_unknownObjectRelease();
    sub_238826D50(v7, v6);
    v9 = sub_238872C1C;
  }

  else
  {
    *(v4 + 82) = a1;
    v9 = sub_2388728B4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2388728B4()
{
  v1 = *(v0 + 82);
  if ((v1 & 0x100) != 0)
  {
    v7 = *(v0 + 640);
    v8 = *(v0 + 624);
    v9 = *(v0 + 616);
    v10 = *(v0 + 576);
    v11 = *(v0 + 304);
    swift_unknownObjectRelease();
    v12 = [v10 statusCode];
    v13 = sub_2388D0D58();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_2388D0D48();
    sub_23887A6F0();
    sub_2388D0D38();
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    if (v7)
    {

      *(v0 + 16) = v12;
      *(v0 + 24) = v17;
      v18 = 1;
      *(v0 + 32) = v16;
    }

    else
    {
      sub_238826D50(*(v0 + 616), *(v0 + 624));

      v21 = *(v0 + 176);
      *(v0 + 16) = *(v0 + 160);
      *(v0 + 32) = v21;
      v22 = *(v0 + 208);
      *(v0 + 48) = *(v0 + 192);
      *(v0 + 64) = v22;
      v18 = 2;
    }

    v23 = *(v0 + 560);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v27 = *(v0 + 504);
    v26 = *(v0 + 512);
    v28 = *(v0 + 480);
    v29 = *(v0 + 488);
    v30 = *(v0 + 400);
    *(v0 + 80) = v18;
    sub_23887A744();
    v31 = swift_allocError();
    *v32 = *(v0 + 16);
    v34 = *(v0 + 48);
    v33 = *(v0 + 64);
    v35 = *(v0 + 32);
    *(v32 + 64) = *(v0 + 80);
    *(v32 + 32) = v34;
    *(v32 + 48) = v33;
    *(v32 + 16) = v35;
    *(v0 + 368) = v31;
    sub_23887A798(v0 + 16, v0 + 88);
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();

    sub_23887A7D0(v0 + 16);
    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
    v36 = *(v0 + 528);
    v37 = *(v0 + 496);
    v38 = *(v0 + 504);
    v39 = *(v0 + 472);
    v40 = *(v0 + 448);
    v41 = *(v0 + 424);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v2 = v1;
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    while (1)
    {
      sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2388D3F70;
      *(v5 + 32) = v2;
      *(v0 + 328) = v4;
      *(v0 + 336) = v3;
      sub_238827F50(v4, v3);
      sub_238878A94(v5);

      sub_238826D50(v4, v3);
      v4 = *(v0 + 328);
      v3 = *(v0 + 336);
      *(v0 + 624) = v3;
      *(v0 + 616) = v4;
      v6 = *(v0 + 312);
      if (v6 == *(v0 + 320))
      {
        break;
      }

      v2 = *v6;
      *(v0 + 312) = v6 + 1;
    }

    v19 = *(MEMORY[0x277CC8CB8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 632) = v20;
    *v20 = v0;
    v20[1] = sub_238872774;

    return MEMORY[0x28211C470]();
  }
}

uint64_t sub_238872C1C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 400);
  *(v0 + 360) = *(v0 + 640);
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();
  v8 = *(v0 + 528);
  v9 = *(v0 + 496);
  v10 = *(v0 + 504);
  v11 = *(v0 + 472);
  v12 = *(v0 + 448);
  v13 = *(v0 + 424);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_238872D38()
{
  v1 = v0[50];
  v0[45] = v0[68];
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[59];
  v6 = v0[56];
  v7 = v0[53];

  v8 = v0[1];

  return v8();
}

uint64_t sub_238872E0C()
{
  (*(v0[65] + 8))(v0[66], v0[64]);
  v1 = v0[50];
  v0[45] = v0[71];
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[59];
  v6 = v0[56];
  v7 = v0[53];

  v8 = v0[1];

  return v8();
}

uint64_t sub_238872EFC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2388D0F58();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238872FCC, 0, 0);
}

uint64_t sub_238872FCC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v37 = v0;
  v0[2] = sub_2388D0EF8();
  v0[3] = v7;
  v0[4] = 12662;
  v0[5] = 0xE200000000000000;
  sub_238856678();
  sub_2388D2ED8();

  sub_2388D0F18();

  (*(v4 + 16))(v1, v2, v3);
  sub_2388D0CF8();
  sub_2388D0CE8();
  sub_2388D0D18();
  sub_2388D0D18();
  v8 = type metadata accessor for OpenAIClient(0);
  v9 = *(v5 + *(v8 + 20));
  v10 = -1;
  v11 = -1 << *(v9 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v9 + 64);
  v13 = (63 - v11) >> 6;
  v14 = *(v5 + *(v8 + 20));

  v16 = 0;
  if (v12)
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v18 = v37[6];
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = (v17 << 10) | (16 * v19);
      v21 = (*(v9 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v9 + 56) + v20);
      v25 = *v24;
      v26 = v24[1];

      sub_2388D0D18();

      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v17);
    ++v16;
    if (v12)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  v27 = v37[7];

  v28 = sub_2388D0DC8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_2388D0DB8();
  type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  sub_238879C44(&qword_27DF30758, type metadata accessor for OpenAIClient.ChatCompletionRequest);
  sub_2388D0DA8();
  v31 = v37[11];
  v32 = v37[12];
  v33 = v37[9];
  v34 = v37[10];
  v35 = v37[6];
  sub_2388D0D08();

  (*(v34 + 8))(v32, v33);

  v36 = v37[1];

  return v36();
}

uint64_t sub_2388733D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = sub_2388D2898();
  v49 = *(v54 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v54);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D0DE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = a2;
  sub_2388D0DD8();
  sub_238856678();
  v14 = sub_2388D2EC8();
  v16 = v15;
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (sub_2388D29F8() & 1) != 0 || (sub_2388D29F8() & 1) == 0)
  {
    goto LABEL_9;
  }

  v47 = v3;
  v19 = sub_238878B54(6uLL, v14, v16);
  v45 = v21;
  v46 = v20;
  v23 = v22;

  v24 = MEMORY[0x23EE66B70](v19, v46, v45, v23);
  v26 = v25;

  v46 = v24;
  v50 = v24;
  v51 = v26;
  sub_2388D0DD8();
  v27 = sub_2388D2EC8();
  v29 = v28;
  v17(v13, v9);
  if (v27 == 0x5D454E4F445BLL && v29 == 0xE600000000000000)
  {

    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
LABEL_10:
    *a3 = v31;
    *(a3 + 8) = v32;
    *(a3 + 16) = v33;
    *(a3 + 24) = v34;
    return result;
  }

  v35 = sub_2388D3368();

  v36 = v47;
  if (v35)
  {
LABEL_9:

    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
    goto LABEL_10;
  }

  v37 = v48;
  sub_2388D2888();
  v38 = sub_2388D2868();
  v40 = v39;

  (*(v49 + 8))(v37, v54);
  if (v40 >> 60 == 15)
  {
    sub_23887A744();
    swift_allocError();
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *(v41 + 48) = 0u;
    *(v41 + 64) = 3;
    return swift_willThrow();
  }

  v42 = sub_2388D0D58();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_2388D0D48();
  sub_23887A800();
  sub_2388D0D38();

  result = sub_238827FA4(v38, v40);
  if (!v36)
  {
    v31 = v50;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    goto LABEL_10;
  }

  return result;
}