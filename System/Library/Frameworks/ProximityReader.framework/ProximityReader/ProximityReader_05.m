uint64_t sub_23A6BCF14(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_23A6DE044();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = sub_23A6DE1D4();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23A6BD0F8, 0, 0);
}

uint64_t sub_23A6BD0F8()
{
  v95 = v0;
  v94[1] = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[8];
  sub_23A6DE164();
  sub_23A6DE194();

  v5 = sub_23A6DCE38();
  v0[25] = v5;
  sub_23A69A270(v5, v2);
  v6 = sub_23A6DECC4();
  v0[26] = v6;
  v7 = *(v6 - 8);
  v0[27] = v7;
  v8 = *(v7 + 48);
  v0[28] = v8;
  v0[29] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v92 = v8;
  if (v8(v2, 1, v6) == 1)
  {
    sub_23A646DB0(v0[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = v0[18];
    (*(v0[20] + 16))(v0[23], v0[7], v0[19]);
    v10 = sub_23A6DECA4();
    v11 = sub_23A6DF8A4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[23];
    v15 = v0[19];
    v14 = v0[20];
    if (v12)
    {
      v90 = v6;
      v16 = swift_slowAlloc();
      v88 = v7;
      v17 = swift_slowAlloc();
      v94[0] = v17;
      *v16 = 136315138;
      v86 = v5;
      v18 = sub_23A6DE154();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = v18;
      v5 = v86;
      v22 = sub_23A657E78(v21, v20, v94);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_23A63D000, v10, v11, "downloadFile - remoteFileURL:      %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v23 = v17;
      v7 = v88;
      MEMORY[0x23EE8A960](v23, -1, -1);
      v24 = v16;
      v6 = v90;
      MEMORY[0x23EE8A960](v24, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    (*(v7 + 8))(v0[18], v6);
    v8 = v92;
  }

  v25 = v0[17];
  sub_23A69A270(v5, v25);
  if (v8(v25, 1, v6) == 1)
  {
    sub_23A646DB0(v0[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = v0[17];
    (*(v0[20] + 16))(v0[22], v0[24], v0[19]);
    v27 = sub_23A6DECA4();
    v28 = sub_23A6DF8A4();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[22];
    v32 = v0[19];
    v31 = v0[20];
    if (v29)
    {
      v91 = v6;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v94[0] = v34;
      *v33 = 136315138;
      v87 = v5;
      v89 = v7;
      v35 = sub_23A6DE154();
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = v35;
      v7 = v89;
      v39 = sub_23A657E78(v38, v37, v94);
      v5 = v87;

      *(v33 + 4) = v39;
      _os_log_impl(&dword_23A63D000, v27, v28, "               destinationFileURL: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x23EE8A960](v34, -1, -1);
      v40 = v33;
      v6 = v91;
      MEMORY[0x23EE8A960](v40, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }

    (*(v7 + 8))(v0[17], v6);
    v8 = v92;
  }

  v41 = v0[8];
  v42 = *(v0[9] + 16);
  sub_23A6DE1B4();
  v43 = sub_23A6DF614();

  LOBYTE(v41) = [v42 fileExistsAtPath_];

  if ((v41 & 1) == 0)
  {
    v60 = v0[8];
    sub_23A6DE1B4();
    v61 = sub_23A6DF614();

    v0[5] = 0;
    v62 = [v42 createDirectoryAtPath:v61 withIntermediateDirectories:1 attributes:0 error:v0 + 5];

    v49 = v0[5];
    if ((v62 & 1) == 0)
    {
      v69 = v0[15];
      v70 = v49;
      v52 = sub_23A6DE124();

      swift_willThrow();
      sub_23A69A270(v5, v69);
      v71 = v8(v69, 1, v6);
      v54 = v0[15];
      if (v71 != 1)
      {
        v72 = v0[15];
        v56 = sub_23A6DECA4();
        v73 = sub_23A6DF884();
        if (os_log_type_enabled(v56, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_23A63D000, v56, v73, "downloadFile - unable to create folder", v74, 2u);
          MEMORY[0x23EE8A960](v74, -1, -1);
        }

        v59 = v0[15];
        goto LABEL_30;
      }

LABEL_26:
      sub_23A646DB0(v54, &qword_27DF9D240, qword_23A6E1D30);
LABEL_31:
      sub_23A691B48();
      swift_allocError();
      *v75 = 6;
      swift_willThrow();

      v76 = v0[23];
      v78 = v0[21];
      v77 = v0[22];
      v80 = v0[17];
      v79 = v0[18];
      v82 = v0[15];
      v81 = v0[16];
      v83 = v0[13];
      v93 = v0[12];
      (*(v0[20] + 8))(v0[24], v0[19]);

      v84 = v0[1];
      v85 = *MEMORY[0x277D85DE8];

      return v84();
    }

    goto LABEL_21;
  }

  v44 = v0[24];
  sub_23A6DE1B4();
  v45 = sub_23A6DF614();

  LODWORD(v44) = [v42 fileExistsAtPath_];

  if (v44)
  {
    v46 = v0[24];
    sub_23A6DE1B4();
    v47 = sub_23A6DF614();

    v0[6] = 0;
    v48 = [v42 removeItemAtPath:v47 error:v0 + 6];

    v49 = v0[6];
    if (!v48)
    {
      v50 = v0[14];
      v51 = v49;
      v52 = sub_23A6DE124();

      swift_willThrow();
      sub_23A69A270(v5, v50);
      v53 = v8(v50, 1, v6);
      v54 = v0[14];
      if (v53 != 1)
      {
        v55 = v0[14];
        v56 = sub_23A6DECA4();
        v57 = sub_23A6DF884();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_23A63D000, v56, v57, "downloadFile - unable to delete former file", v58, 2u);
          MEMORY[0x23EE8A960](v58, -1, -1);
        }

        v59 = v0[14];
LABEL_30:

        (*(v7 + 8))(v59, v6);
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_21:
    v63 = v49;
  }

  v64 = v0[12];
  (*(v0[20] + 16))(v0[21], v0[7], v0[19]);
  sub_23A6DE024();
  v65 = swift_task_alloc();
  v0[30] = v65;
  *v65 = v0;
  v65[1] = sub_23A6BD9FC;
  v66 = v0[12];
  v67 = *MEMORY[0x277D85DE8];

  return sub_23A6BE054((v0 + 2), v66);
}

uint64_t sub_23A6BD9FC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23A6BDB80, 0, 0);
}

uint64_t sub_23A6BDB80()
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = *(v0 + 128);
    sub_23A69A270(*(v0 + 200), v7);
    if (v5(v7, 1, v6) == 1)
    {
      sub_23A646DB0(*(v0 + 128), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 128);
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "downloadFile - unable to download file", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = *(v0 + 208);
      v16 = *(v0 + 216);
      v17 = *(v0 + 128);

      (*(v16 + 8))(v17, v15);
    }

    sub_23A691B48();
    swift_allocError();
    *v18 = v2;
    swift_willThrow();
    sub_23A6BFAF8(v2, v1, v3);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v34 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 104);
    v44 = *(v0 + 96);
    (*(*(v0 + 160) + 8))(*(v0 + 192), *(v0 + 152));

    v26 = *(v0 + 8);
    v36 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(v0 + 192);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    sub_23A6DE254();
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = *(v0 + 144);
    v38 = *(v0 + 136);
    v39 = *(v0 + 128);
    v40 = *(v0 + 120);
    v41 = *(v0 + 112);
    v42 = *(v0 + 104);
    v43 = *(v0 + 96);
    sub_23A6BFAF8(v2, v1, 0);
    (*(v24 + 8))(v19, v23);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];
  }

  return v26();
}

void sub_23A6BDFE0()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration_];

  qword_27DFA5EB0 = v1;
}

uint64_t sub_23A6BE054(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_23A6DE354();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D208, &unk_23A6E4EC0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_23A6DE374();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = sub_23A6DE044();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6BE2BC, 0, 0);
}

uint64_t sub_23A6BE2BC()
{
  v28 = v0;
  v1 = v0[27];
  v2 = sub_23A6DCE38();
  v0[28] = v2;
  sub_23A69A270(v2, v1);
  v3 = sub_23A6DECC4();
  v0[29] = v3;
  v4 = *(v3 - 8);
  v0[30] = v4;
  v5 = *(v4 + 48);
  v0[31] = v5;
  v0[32] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_23A646DB0(v0[27], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v0[20] + 16))(v0[21], v0[9], v0[19]);
    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[21];
    if (v8)
    {
      v10 = v0[18];
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v11 = 136315138;
      sub_23A6DE034();
      v12 = sub_23A6DE1D4();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v10, 1, v12) == 1)
      {
        sub_23A646DB0(v0[18], &qword_27DF9CB68, &unk_23A6E4700);
        v14 = 0xE800000000000000;
        v15 = 0x3E6C7275206F6E3CLL;
      }

      else
      {
        v25 = v0[18];
        v15 = sub_23A6DE154();
        v14 = v18;
        (*(v13 + 8))(v25, v12);
      }

      (*(v0[20] + 8))(v0[21], v0[19]);
      v19 = sub_23A657E78(v15, v14, &v27);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_23A63D000, v6, v7, "Request: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x23EE8A960](v26, -1, -1);
      MEMORY[0x23EE8A960](v11, -1, -1);
    }

    else
    {
      v16 = v0[19];
      v17 = v0[20];

      (*(v17 + 8))(v9, v16);
    }

    (*(v4 + 8))(v0[27], v3);
  }

  if (qword_27DFA2768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_27DFA5EB0;
  v0[33] = qword_27DFA5EB0;
  v21 = *(MEMORY[0x277CC9D18] + 4);
  v20;
  v22 = swift_task_alloc();
  v0[34] = v22;
  *v22 = v0;
  v22[1] = sub_23A6BE67C;
  v23 = v0[9];

  return MEMORY[0x28211ECF8](v23, 0);
}

uint64_t sub_23A6BE67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 272);
  v9 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 296) = a3;
  *(v5 + 304) = v3;

  if (v3)
  {
    v7 = sub_23A6BEB5C;
  }

  else
  {

    v7 = sub_23A6BE79C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A6BE79C()
{
  v1 = *(v0 + 296);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    if ([v2 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {

      v18 = 0;
      v19 = *(v0 + 280);
      goto LABEL_15;
    }

    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v6 = *(v0 + 232);
    v7 = *(v0 + 200);
    sub_23A69A270(*(v0 + 224), v7);
    v8 = v5(v7, 1, v6);
    v9 = *(v0 + 296);
    if (v8 == 1)
    {
      v10 = *(v0 + 200);
      sub_23A691B9C(*(v0 + 280), *(v0 + 288));

      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v29 = *(v0 + 200);
      v30 = v9;
      v31 = sub_23A6DECA4();
      v32 = sub_23A6DF884();
      v33 = os_log_type_enabled(v31, v32);
      v35 = *(v0 + 288);
      v34 = *(v0 + 296);
      v36 = *(v0 + 280);
      v37 = *(v0 + 232);
      v38 = *(v0 + 240);
      v55 = *(v0 + 200);
      if (v33)
      {
        v53 = *(v0 + 232);
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = [v3 statusCode];

        _os_log_impl(&dword_23A63D000, v31, v32, "Execute download file - serverError - Invalid status from server: %ld", v39, 0xCu);
        MEMORY[0x23EE8A960](v39, -1, -1);
        sub_23A691B9C(v36, v35);

        (*(v38 + 8))(v55, v53);
      }

      else
      {

        sub_23A691B9C(v36, v35);
        (*(v38 + 8))(v55, v37);
      }
    }
  }

  else
  {
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    sub_23A69A270(*(v0 + 224), v14);
    if (v12(v14, 1, v13) == 1)
    {
      v15 = *(v0 + 288);
      v16 = *(v0 + 280);
      v17 = *(v0 + 208);

      sub_23A691B9C(v16, v15);
      sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v20 = *(v0 + 208);
      v21 = sub_23A6DECA4();
      v22 = sub_23A6DF884();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23A63D000, v21, v22, "Execute download file - internalError - Channel failure, nil api service", v23, 2u);
        MEMORY[0x23EE8A960](v23, -1, -1);
      }

      v24 = *(v0 + 288);
      v25 = *(v0 + 280);
      v26 = *(v0 + 232);
      v27 = *(v0 + 240);
      v28 = *(v0 + 208);

      sub_23A691B9C(v25, v24);
      (*(v27 + 8))(v28, v26);
    }
  }

  v19 = xmmword_23A6E4E50;
  v18 = 1;
LABEL_15:
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v45 = *(v0 + 176);
  v44 = *(v0 + 184);
  v46 = *(v0 + 168);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v49 = *(v0 + 112);
  v54 = *(v0 + 104);
  v56 = *(v0 + 96);
  v50 = *(v0 + 64);
  *v50 = v19;
  *(v50 + 16) = v18;

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_23A6BEB5C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  *(v0 + 40) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v7(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    sub_23A6BFB04(&qword_27DF9D210, MEMORY[0x277CC9AE8]);
    sub_23A6DE104();
    sub_23A6DE364();
    sub_23A6BFB04(&qword_27DF9D218, MEMORY[0x277CC9AC8]);
    sub_23A6DF714();
    sub_23A6DF714();
    v16 = *(v15 + 8);
    v16(v13, v14);
    v16(v12, v14);
    if (*(v0 + 48) == *(v0 + 56))
    {
      v18 = *(v0 + 248);
      v17 = *(v0 + 256);
      v19 = *(v0 + 232);
      v20 = *(v0 + 192);
      sub_23A69A270(*(v0 + 224), v20);
      if (v18(v20, 1, v19) == 1)
      {
        v21 = *(v0 + 304);
        v22 = *(v0 + 192);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

        sub_23A646DB0(v22, &qword_27DF9D240, qword_23A6E1D30);
        v23 = 5;
      }

      else
      {
        v65 = *(v0 + 192);
        v66 = sub_23A6DECA4();
        v67 = sub_23A6DF884();
        v68 = os_log_type_enabled(v66, v67);
        v69 = *(v0 + 304);
        if (v68)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_23A63D000, v66, v67, "Execute download file - request cancelled", v70, 2u);
          MEMORY[0x23EE8A960](v70, -1, -1);
        }

        else
        {
        }

        v71 = *(v0 + 232);
        v72 = *(v0 + 240);
        v73 = *(v0 + 192);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
        (*(v72 + 8))(v73, v71);
        v23 = 5;
      }

      goto LABEL_19;
    }

    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  else
  {
    v24 = *(v0 + 112);
    v7(v24, 1, 1, *(v0 + 120));
    sub_23A646DB0(v24, &qword_27DF9D208, &unk_23A6E4EC0);
  }

  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 184);
  sub_23A69A270(*(v0 + 224), v28);
  if (v26(v28, 1, v27) == 1)
  {
    sub_23A646DB0(*(v0 + 184), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v29 = *(v0 + 184);
    v30 = sub_23A6DECA4();
    v31 = sub_23A6DF884();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_23A63D000, v30, v31, "Execute download file - networkError - Server not reachable", v32, 2u);
      MEMORY[0x23EE8A960](v32, -1, -1);
    }

    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    v35 = *(v0 + 184);

    (*(v34 + 8))(v35, v33);
  }

  v37 = *(v0 + 248);
  v36 = *(v0 + 256);
  v38 = *(v0 + 232);
  v39 = *(v0 + 176);
  sub_23A69A270(*(v0 + 224), v39);
  v40 = v37(v39, 1, v38);
  v41 = *(v0 + 304);
  v42 = *(v0 + 176);
  if (v40 == 1)
  {

    sub_23A646DB0(v42, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v43 = v41;
    v44 = sub_23A6DECA4();
    v45 = sub_23A6DF884();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 304);
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v47;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_23A63D000, v44, v45, "Error processing request: %@", v48, 0xCu);
      sub_23A646DB0(v49, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v49, -1, -1);
      MEMORY[0x23EE8A960](v48, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 240) + 8))(*(v0 + 176), *(v0 + 232));
  }

  v23 = 3;
LABEL_19:
  v53 = *(v0 + 208);
  v52 = *(v0 + 216);
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v57 = *(v0 + 176);
  v56 = *(v0 + 184);
  v58 = *(v0 + 168);
  v60 = *(v0 + 136);
  v59 = *(v0 + 144);
  v61 = *(v0 + 112);
  v74 = *(v0 + 104);
  v75 = *(v0 + 96);
  v62 = *(v0 + 64);
  *v62 = v23;
  *(v62 + 8) = 0;
  *(v62 + 16) = 1;

  v63 = *(v0 + 8);

  return v63();
}

void sub_23A6BF1B4(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v82[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23A6DE1D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v78 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v69 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v69 - v22;
  v24 = sub_23A6DCE38();
  sub_23A69A270(v24, v23);
  v25 = sub_23A6DECC4();
  v79 = *(v25 - 8);
  v80 = v25;
  v26 = *(v79 + 48);
  v27 = v26(v23, 1);
  v74 = v26;
  v75 = v24;
  v76 = v3;
  if (v27 == 1)
  {
    sub_23A646DB0(v23, &qword_27DF9D240, qword_23A6E1D30);
    v28 = v80;
  }

  else
  {
    v72 = a2;
    (*(v4 + 16))(v11, v81, v3);
    v71 = v4;
    v29 = sub_23A6DECA4();
    v30 = sub_23A6DF8A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v82[0] = v70;
      *v31 = 136315138;
      v32 = sub_23A6DE1B4();
      v34 = v33;
      v35 = v11;
      v36 = v76;
      (*(v71 + 8))(v35, v76);
      v37 = sub_23A657E78(v32, v34, v82);
      v26 = v74;

      *(v31 + 4) = v37;
      _os_log_impl(&dword_23A63D000, v29, v30, "unzipping file %s", v31, 0xCu);
      v38 = v70;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x23EE8A960](v38, -1, -1);
      v39 = v31;
      v24 = v75;
      MEMORY[0x23EE8A960](v39, -1, -1);

      v3 = v36;
      v4 = v71;
    }

    else
    {

      v4 = v71;
      v3 = v76;
      (*(v71 + 8))(v11, v76);
    }

    v28 = v80;
    (*(v79 + 8))(v23, v80);
    a2 = v72;
  }

  sub_23A69A270(v24, v19);
  v40 = (v26)(v19, 1, v28);
  v41 = v77;
  if (v40 == 1)
  {
    sub_23A646DB0(v19, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v4 + 16))(v77, a2, v3);
    v42 = v4;
    v43 = v41;
    v44 = sub_23A6DECA4();
    v45 = sub_23A6DF8A4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v72 = a2;
      v47 = v46;
      v48 = swift_slowAlloc();
      v82[0] = v48;
      *v47 = 136315138;
      v71 = sub_23A6DE1B4();
      v50 = v49;
      (*(v42 + 8))(v43, v76);
      v51 = sub_23A657E78(v71, v50, v82);
      v28 = v80;

      *(v47 + 4) = v51;
      _os_log_impl(&dword_23A63D000, v44, v45, "     to folder %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x23EE8A960](v48, -1, -1);
      MEMORY[0x23EE8A960](v47, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v43, v76);
    }

    (*(v79 + 8))(v19, v28);
  }

  v52 = v78;
  v53 = sub_23A6DE174();
  v54 = sub_23A6DE174();
  v55 = PKUnarchiverZip(v53, v54);

  if ((v55 & 1) == 0)
  {
    sub_23A69A270(v75, v52);
    if ((v74)(v52, 1, v28) == 1)
    {
      sub_23A646DB0(v52, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v56 = sub_23A6DECA4();
      v57 = sub_23A6DF874();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_23A63D000, v56, v57, "unzip failure", v58, 2u);
        MEMORY[0x23EE8A960](v58, -1, -1);
      }

      (*(v79 + 8))(v52, v28);
    }

    v59 = sub_23A6DE1B4();
    v60 = v73;
    sub_23A6BCA70(v59, v61);

    v62 = *(v60 + 16);
    sub_23A6DE1B4();
    v63 = sub_23A6DF614();

    v82[0] = 0;
    LODWORD(v60) = [v62 removeItemAtPath:v63 error:v82];

    if (v60)
    {
      v64 = v82[0];
    }

    else
    {
      v65 = v82[0];
      v66 = sub_23A6DE124();

      swift_willThrow();
    }

    sub_23A691B48();
    swift_allocError();
    *v67 = 6;
    swift_willThrow();
  }

  v68 = *MEMORY[0x277D85DE8];
}

uint64_t LayoutBundleManager.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t LayoutBundleManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LayoutBundleManager.install(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A64E070;

  return v10(a1, a2);
}

uint64_t sub_23A6BFAF8(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_23A691B9C(a1, a2);
  }

  return a1;
}

uint64_t sub_23A6BFB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6BFB4C()
{
  v1 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_discoveryService;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_23A6BFB94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_discoveryService;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

__n128 sub_23A6BFC4C@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_sessionData);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_23A646D48(&v9, v8, &qword_27DF9D230, qword_23A6E4EE0);
  v6 = v12;
  a1[2] = v11;
  a1[3] = v6;
  a1[4] = v13;
  result = v10;
  *a1 = v9;
  a1[1] = result;
  return result;
}

uint64_t sub_23A6BFCEC(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_sessionData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = v3[8];
  v13 = v3[9];
  v14 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v14;
  *(v3 + 4) = a1[4];
  v15 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v15;
  return sub_23A6BFD68(v4, v5);
}

uint64_t sub_23A6BFD68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23A6BFE2C()
{
  v1 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_lastQuantile;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23A6BFE70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_lastQuantile;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23A6BFF20(void *a1, uint64_t *a2, int a3, double a4, double a5)
{
  v6 = v5;
  v73 = a3;
  v77 = sub_23A6DE904();
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v77, v12);
  v76 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23A6DE924();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v74 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v67 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v60 - v24;
  v64 = sub_23A6DCE38();
  sub_23A646D48(v64, v25, &qword_27DF9D240, qword_23A6E1D30);
  v26 = sub_23A6DECC4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v63 = v27 + 48;
  v62 = v28;
  v29 = v28(v25, 1, v26);
  v65 = v26;
  v61 = v27;
  if (v29 == 1)
  {
    sub_23A646DB0(v25, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v30 = sub_23A6507C0();
    v31 = sub_23A6DCFB0();
    sub_23A6DCFBC(v30 & 1, v6, 0xD00000000000004ALL, 0x800000023A6EB680, v31, v32);

    (*(v27 + 8))(v25, v26);
  }

  v33 = MEMORY[0x277D85000];
  v34 = *((*MEMORY[0x277D85000] & *v6) + 0x70);
  v35 = swift_unknownObjectRetain();
  v66 = a1;
  v34(v35);
  v37 = *a2;
  v36 = a2[1];
  v38 = *((*v33 & *v6) + 0xD8);

  v40 = v38(v39);
  v41 = a2[2];
  v42 = a2[3];
  v43 = a2[4];
  v44 = a2[5];
  LOBYTE(v38) = v73;
  v72 = v37;
  v81[0] = v37;
  v81[1] = v36;
  v71 = v40;
  v81[2] = v40;
  v81[3] = v45;
  v70 = v41;
  v81[4] = v41;
  v81[5] = v42;
  v69 = v43;
  v81[6] = v43;
  v81[7] = v44;
  v68 = v73 & 1;
  v82 = v73 & 1;
  v83 = a4;
  v46 = *((*v33 & *v6) + 0x88);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v46(v81);
  v47 = (*((*v33 & *v6) + 0xD0))(a5, a4);
  v48 = (*((*v33 & *v6) + 0xA0))(v47);
  if (v38)
  {
    v80 = (*((*v33 & *v6) + 0x98))(v48);
    sub_23A6DFBD4();
  }

  else
  {
    sub_23A6DEC14();
  }

  (*(v75 + 104))(v76, *MEMORY[0x277D43990], v77);
  v49 = v74;
  sub_23A6DE914();
  v50 = sub_23A6DE8F4();
  v52 = v51;
  (*(v78 + 8))(v49, v79);
  if (v52 >> 60 == 15)
  {
    v53 = v67;
    sub_23A646D48(v64, v67, &qword_27DF9D240, qword_23A6E1D30);
    v54 = v65;
    if (v62(v53, 1, v65) == 1)
    {
      return sub_23A646DB0(v53, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v57 = sub_23A6DECA4();
      v58 = sub_23A6DF884();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_23A63D000, v57, v58, "Discovery analytics present event could not be encoded", v59, 2u);
        MEMORY[0x23EE8A960](v59, -1, -1);
      }

      return (*(v61 + 8))(v53, v54);
    }
  }

  else
  {
    v56 = sub_23A6DE214();
    [v66 sendAnalyticsWithAnalyticsData_];

    return sub_23A6A62F8(v50, v52);
  }
}

uint64_t sub_23A6C05F8(double a1)
{
  v2 = v1;
  v4 = sub_23A6DE904();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23A6DE924();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v63 - v22;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = v63 - v27;
  v29 = MEMORY[0x277D85000];
  v30 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v79, v26);
  if (!v79[1])
  {
    v39 = sub_23A6DCE38();
    sub_23A646D48(v39, v19, &qword_27DF9D240, qword_23A6E1D30);
    v40 = sub_23A6DECC4();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v19, 1, v40) != 1)
    {
      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF884();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23A63D000, v43, v44, "sendContentScrolled - session data was not found", v45, 2u);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      return (*(v41 + 8))(v19, v40);
    }

    v36 = &qword_27DF9D240;
    v37 = qword_23A6E1D30;
    v38 = v19;
    return sub_23A646DB0(v38, v36, v37);
  }

  v74 = v23;
  v69 = v79[0];
  v72 = v79[3];
  v73 = v79[2];
  v70 = v79[5];
  v71 = v79[4];
  v68 = v79[6];
  v67 = v79[7];
  v31 = v80;
  v32 = (*((*v29 & *v1) + 0xD0))(v30, a1, v81);
  if ((*((*v29 & *v1) + 0x98))() == v32 || (v31 & 1) == 0)
  {
    v36 = &qword_27DF9D230;
    v37 = qword_23A6E4EE0;
    v38 = v79;
    return sub_23A646DB0(v38, v36, v37);
  }

  v64 = sub_23A6DCE38();
  sub_23A646D48(v64, v28, &qword_27DF9D240, qword_23A6E1D30);
  v33 = sub_23A6DECC4();
  v65 = *(v33 - 8);
  v34 = *(v65 + 48);
  v66 = v33;
  v63[1] = v65 + 48;
  v63[0] = v34;
  if (v34(v28, 1) == 1)
  {
    sub_23A646DB0(v28, &qword_27DF9D240, qword_23A6E1D30);
    v35 = v74;
  }

  else
  {
    v46 = sub_23A6DECA4();
    v47 = sub_23A6DF8A4();
    v48 = v46;
    v49 = os_log_type_enabled(v46, v47);
    v35 = v74;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = v47;
      v52 = v50;
      _os_log_impl(&dword_23A63D000, v48, v51, "sendContentScrolled - quantile triggered", v50, 2u);
      MEMORY[0x23EE8A960](v52, -1, -1);
    }

    (*(v65 + 8))(v28, v66);
  }

  (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v32);
  (*(v75 + 104))(v8, *MEMORY[0x277D43980], v4);
  v78 = v32;

  sub_23A6DFBD4();
  sub_23A6DE914();
  sub_23A646DB0(v79, &qword_27DF9D230, qword_23A6E4EE0);
  v53 = sub_23A6DE8F4();
  v55 = v54;
  v56 = (*(v77 + 8))(v14, v76);
  if (v55 >> 60 == 15)
  {
    sub_23A646D48(v64, v35, &qword_27DF9D240, qword_23A6E1D30);
    if ((v63[0])(v35, 1, v66) == 1)
    {
      v36 = &qword_27DF9D240;
      v37 = qword_23A6E1D30;
      v38 = v35;
      return sub_23A646DB0(v38, v36, v37);
    }

    v60 = sub_23A6DECA4();
    v61 = sub_23A6DF884();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_23A63D000, v60, v61, "Discovery analytics scroll event could not be encoded", v62, 2u);
      MEMORY[0x23EE8A960](v62, -1, -1);
    }

    return (*(v65 + 8))(v35, v66);
  }

  else
  {
    v57 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v56);
    if (v57)
    {
      v58 = v57;
      v59 = sub_23A6DE214();
      [v58 sendAnalyticsWithAnalyticsData_];
      sub_23A6A62F8(v53, v55);

      return swift_unknownObjectRelease();
    }

    else
    {
      return sub_23A6A62F8(v53, v55);
    }
  }
}

uint64_t sub_23A6C0E20()
{
  v1 = v0;
  v2 = sub_23A6DE904();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23A6DE924();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v51 - v21;
  v63 = sub_23A6DCE38();
  sub_23A646D48(v63, v22, &qword_27DF9D240, qword_23A6E1D30);
  v23 = sub_23A6DECC4();
  v24 = *(v23 - 8);
  v62 = *(v24 + 48);
  if (v62(v22, 1, v23) == 1)
  {
    v25 = sub_23A646DB0(v22, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = sub_23A6507C0();
    v27 = sub_23A6DCFB0();
    sub_23A6DCFBC(v26 & 1, v1, 0xD000000000000016, 0x800000023A6EB6D0, v27, v28);

    v25 = (*(v24 + 8))(v22, v23);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v64, v25);
  if (v64[1])
  {
    v55 = v1;
    v52 = v18;
    v53 = v24;
    v54 = v23;
    (*(v56 + 104))(v58, *MEMORY[0x277D43988], v57);

    v29 = v59;
    sub_23A6DE914();
    sub_23A646DB0(v64, &qword_27DF9D230, qword_23A6E4EE0);
    v30 = sub_23A6DE8F4();
    v32 = v31;
    v33 = (*(v60 + 8))(v29, v61);
    if (v32 >> 60 == 15)
    {
      v34 = v52;
      sub_23A646D48(v63, v52, &qword_27DF9D240, qword_23A6E1D30);
      v35 = v54;
      v36 = v62(v34, 1, v54);
      v37 = v53;
      if (v36 == 1)
      {
        v38 = sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v48 = sub_23A6DECA4();
        v49 = sub_23A6DF884();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_23A63D000, v48, v49, "Discovery analytics dismiss event could not be encoded", v50, 2u);
          MEMORY[0x23EE8A960](v50, -1, -1);
        }

        v38 = (*(v37 + 8))(v34, v35);
      }

      v41 = MEMORY[0x277D85000];
      v40 = v55;
    }

    else
    {
      v40 = v55;
      v41 = MEMORY[0x277D85000];
      v42 = (*((*MEMORY[0x277D85000] & *v55) + 0x68))(v33);
      if (v42)
      {
        v43 = v42;
        v44 = sub_23A6DE214();
        [v43 sendAnalyticsWithAnalyticsData_];
        sub_23A6A62F8(v30, v32);

        v38 = swift_unknownObjectRelease();
      }

      else
      {
        v38 = sub_23A6A62F8(v30, v32);
      }
    }

    return (*((*v41 & *v40) + 0xE0))(v38);
  }

  else
  {
    sub_23A646D48(v63, v14, &qword_27DF9D240, qword_23A6E1D30);
    if (v62(v14, 1, v23) == 1)
    {
      return sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v45 = sub_23A6DECA4();
      v46 = sub_23A6DF884();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23A63D000, v45, v46, "sendContentDismissed - session data was not found", v47, 2u);
        MEMORY[0x23EE8A960](v47, -1, -1);
      }

      return (*(v24 + 8))(v14, v23);
    }
  }
}

uint64_t sub_23A6C14CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v72 = a4;
  v73 = a5;
  v70 = a3;
  v71 = a2;
  v62 = a1;
  v9 = sub_23A6DE904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23A6DE924();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v63 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v58 - v25;
  v65 = *a6;
  v60 = sub_23A6DCE38();
  sub_23A646D48(v60, v26, &qword_27DF9D240, qword_23A6E1D30);
  v27 = sub_23A6DECC4();
  v28 = *(v27 - 8);
  v59 = *(v28 + 48);
  v29 = v59(v26, 1, v27);
  v61 = v27;
  v58 = v28;
  if (v29 == 1)
  {
    sub_23A646DB0(v26, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v30 = sub_23A6507C0();
    v67 = v28 + 48;
    v31 = v18;
    v32 = v9;
    v33 = v7;
    v34 = v28;
    v35 = v30;
    v36 = sub_23A6DCFB0();
    sub_23A6DCFBC(v35 & 1, v33, 0xD000000000000033, 0x800000023A6EB6F0, v36, v37);

    v38 = v34;
    v7 = v33;
    v9 = v32;
    v18 = v31;
    (*(v38 + 8))(v26, v27);
  }

  v39 = (*(v10 + 104))(v74, *MEMORY[0x277D43998], v9);
  v40 = (*((*MEMORY[0x277D85000] & *v7) + 0xD8))(v39);
  v66 = v41;
  v67 = v40;
  v64 = sub_23A6DEC04();
  sub_23A6DEC14();
  v77 = 0;
  v78 = 0xE000000000000000;
  LOBYTE(v75) = v65;
  sub_23A6DFB34();
  v75 = 46;
  v76 = 0xE100000000000000;
  sub_23A677268();
  v42 = sub_23A6DF964();

  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 16 + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
  }

  else
  {

    sub_23A6DEBF4();
  }

  sub_23A6DE914();
  v47 = sub_23A6DE8F4();
  v49 = v48;
  (*(v68 + 8))(v18, v69);
  if (v49 >> 60 == 15)
  {
    v50 = v63;
    sub_23A646D48(v60, v63, &qword_27DF9D240, qword_23A6E1D30);
    v51 = v61;
    if (v59(v50, 1, v61) == 1)
    {
      v52 = sub_23A646DB0(v50, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v54 = sub_23A6DECA4();
      v55 = sub_23A6DF884();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_23A63D000, v54, v55, "Discovery analytics error event could not be encoded", v56, 2u);
        MEMORY[0x23EE8A960](v56, -1, -1);
      }

      v52 = (*(v58 + 8))(v50, v51);
    }
  }

  else
  {
    v53 = sub_23A6DE214();
    [v62 sendAnalyticsWithAnalyticsData_];

    v52 = sub_23A6A62F8(v47, v49);
  }

  return (*((*MEMORY[0x277D85000] & *v7) + 0xE0))(v52);
}

uint64_t sub_23A6C1AD8(double a1, double a2)
{
  v2 = a1 / a2 * 100.0;
  v3 = 25.0;
  if (v2 >= 25.0)
  {
    v3 = 100.0;
    if (v2 <= 100.0)
    {
      v3 = floor(v2 / 25.0 + 0.01) * 25.0;
    }
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23A6C1B68()
{
  v0 = sub_23A6DE2F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE2E4();
  v6 = sub_23A6DE2B4();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_23A6C1C44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v15 - v5;
  v7 = sub_23A6DCE38();
  sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v10 = sub_23A6507C0();
    v11 = sub_23A6DCFB0();
    sub_23A6DCFBC(v10 & 1, v1, 0xD000000000000013, 0x800000023A6EB730, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  memset(v15, 0, sizeof(v15));
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v15);
  (*((*v13 & *v1) + 0x70))(0);
  return (*((*v13 & *v1) + 0xA0))(0);
}

id sub_23A6C1E6C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23A6C1F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProximityReaderDiscoveryAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_23A6C2080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23A6C20C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PresentationDetails(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationDetails(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_23A6C21E8@<X0>(uint64_t a1@<X8>)
{
  v359 = a1;
  v351 = sub_23A6DEE74();
  v385 = *(v351 - 8);
  v1 = *(v385 + 64);
  MEMORY[0x28223BE20](v351, v2);
  v344 = &v333[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v398 = sub_23A6DEF04();
  v365 = *(v398 - 8);
  v4 = *(v365 + 64);
  MEMORY[0x28223BE20](v398, v5);
  v397 = &v333[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v396 = sub_23A6DEF34();
  v364 = *(v396 - 8);
  v7 = *(v364 + 64);
  MEMORY[0x28223BE20](v396, v8);
  v395 = &v333[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v383 = sub_23A6DEEC4();
  v345 = *(v383 - 8);
  v10 = *(v345 + 64);
  MEMORY[0x28223BE20](v383, v11);
  v363 = &v333[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D310, &qword_23A6E5020);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v382 = &v333[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v391 = &v333[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v394 = &v333[-v23];
  v390 = sub_23A6DEF64();
  v378 = *(v390 - 8);
  v24 = *(v378 + 64);
  MEMORY[0x28223BE20](v390, v25);
  v389 = &v333[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  v375 = *(v27 - 8);
  v28 = *(v375 + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v376 = &v333[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D318, &qword_23A6E5028);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v384 = &v333[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v348 = &v333[-v37];
  v402 = sub_23A6DEDC4();
  v366 = *(v402 - 8);
  v38 = *(v366 + 64);
  MEMORY[0x28223BE20](v402, v39);
  v401 = &v333[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v368 = sub_23A6DEDF4();
  v379 = *(v368 - 8);
  v41 = *(v379 + 64);
  MEMORY[0x28223BE20](v368, v42);
  v367 = &v333[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  v377 = *(v44 - 8);
  v45 = *(v377 + 64);
  MEMORY[0x28223BE20](v44 - 8, v46);
  v48 = &v333[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v404 = sub_23A6DEE34();
  v400 = *(v404 - 8);
  v49 = *(v400 + 64);
  MEMORY[0x28223BE20](v404, v50);
  *&v343 = &v333[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D320, &qword_23A6E5030);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8, v54);
  v399 = &v333[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v56, v57);
  v403 = &v333[-v58];
  v388 = sub_23A6DF094();
  v380 = *(v388 - 8);
  v59 = *(v380 + 8);
  MEMORY[0x28223BE20](v388, v60);
  *&v342 = &v333[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D328, &qword_23A6E5038);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8, v64);
  v386 = &v333[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v66, v67);
  *&v387 = &v333[-v68];
  v381 = sub_23A6DF074();
  *&v371 = *(v381 - 8);
  v69 = *(v371 + 64);
  MEMORY[0x28223BE20](v381, v70);
  v341 = &v333[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D330, &qword_23A6E5040);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8, v74);
  v373 = &v333[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v76, v77);
  v372 = &v333[-v78];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8, v81);
  v356 = &v333[-v82];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8, v85);
  v355 = &v333[-v86];
  *&v370 = sub_23A6DF054();
  *&v349 = *(v370 - 8);
  v87 = *(v349 + 64);
  MEMORY[0x28223BE20](v370, v88);
  v340 = &v333[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D338, &qword_23A6E5048);
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90 - 8, v92);
  *&v350 = &v333[-((v93 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v94, v95);
  v369 = &v333[-v96];
  v97 = sub_23A6DEFB4();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97, v100);
  *&v339 = &v333[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102 - 8, v104);
  v106 = &v333[-((v105 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v107, v108);
  v110 = &v333[-v109];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v112 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111 - 8, v113);
  v362 = &v333[-((v114 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v115, v116);
  v361 = &v333[-v117];
  MEMORY[0x28223BE20](v118, v119);
  v347 = &v333[-v120];
  MEMORY[0x28223BE20](v121, v122);
  v352 = &v333[-v123];
  MEMORY[0x28223BE20](v124, v125);
  v393 = &v333[-v126];
  MEMORY[0x28223BE20](v127, v128);
  v392 = &v333[-v129];
  MEMORY[0x28223BE20](v130, v131);
  v354 = &v333[-v132];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133 - 8, v135);
  v353 = &v333[-v136];
  v137 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v138 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137 - 8, v139);
  v346 = &v333[-((v140 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = sub_23A6DEB84();
  v142 = *(v141 - 8);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141, v144);
  v146 = &v333[-((v145 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_23A6DF0C4();
  v357 = *(v147 - 8);
  v358 = v147;
  v148 = *(v357 + 64);
  MEMORY[0x28223BE20](v147, v149);
  v360 = &v333[-((v150 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DEB94();
  if ((*(v142 + 88))(v146, v141) != *MEMORY[0x277D43BE8])
  {
    (*(v142 + 8))(v146, v141);
LABEL_7:
    v162 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
    return (*(*(v162 - 8) + 56))(v359, 1, 1, v162);
  }

  v374 = v48;
  (*(v142 + 96))(v146, v141);
  v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v152 = sub_23A6DE8C4();
  v153 = (*(v152 - 8) + 88);
  v154 = (*v153)(v146, v152);
  v155 = (v153 - 10);
  if (v154 != *MEMORY[0x277D43920])
  {
    (*(v357 + 8))(&v146[v151], v358);
    (*v155)(v146, v152);
    goto LABEL_7;
  }

  (*(v357 + 32))(v360, &v146[v151], v358);
  (*v155)(v146, v152);
  v156 = v353;
  sub_23A6DED64();
  v157 = sub_23A6DE0F4();
  (*(*(v157 - 8) + 56))(v156, 0, 1, v157);
  v158 = sub_23A6DED44();
  v337 = v159;
  v338 = v158;
  v336 = sub_23A6DED14();
  v335 = sub_23A6DEFC4();
  v334 = v160;
  sub_23A6DED24();
  sub_23A6DEFD4();
  sub_23A646D48(v110, v106, &qword_27DF9D340, &qword_23A6E5050);
  if ((*(v98 + 48))(v106, 1, v97) == 1)
  {
    sub_23A646DB0(v110, &qword_27DF9D340, &qword_23A6E5050);
    v161 = 5;
    v418 = 5;
  }

  else
  {
    v164 = v339;
    (*(v98 + 32))(v339, v106, v97);
    sub_23A6C4250(v164, &v418);
    (*(v98 + 8))(v164, v97);
    sub_23A646DB0(v110, &qword_27DF9D340, &qword_23A6E5050);
    v161 = v418;
  }

  v166 = v369;
  v165 = v370;
  v167 = v350;
  v168 = v349;
  v417 = v161;
  sub_23A6DF064();
  sub_23A646D48(v166, v167, &qword_27DF9D338, &qword_23A6E5048);
  v169 = (*(v168 + 48))(v167, 1, v165);
  v170 = v371;
  if (v169 == 1)
  {
    v171 = 0;
    v172 = 0;
    v370 = xmmword_23A6E5010;
    v349 = 0u;
    v350 = 0u;
    v339 = 0u;
  }

  else
  {
    v173 = v340;
    (*(v168 + 32))(v340, v167, v165);
    *&v370 = sub_23A6DF044();
    *&v350 = v174;
    *&v349 = sub_23A6DF024();
    *&v339 = v175;
    v176 = sub_23A6DF034();
    v178 = v177;
    v179 = sub_23A6DF004();
    v181 = v180;
    v182 = sub_23A6DF014();
    sub_23A6C67F0(v370, v350, v349, v339, v176, v178, v179, v181, v419, v182, v183);
    v370 = v419[0];
    v339 = v419[3];
    v349 = v419[2];
    v350 = v419[1];
    v184 = v165;
    v171 = v420;
    v172 = v421;
    (*(v168 + 8))(v173, v184);
  }

  v185 = v404;
  v186 = v403;
  v187 = v388;
  v188 = v387;
  sub_23A646DB0(v166, &qword_27DF9D338, &qword_23A6E5048);
  v422[1] = v350;
  v422[0] = v370;
  v422[3] = v339;
  v422[2] = v349;
  v423 = v171;
  v424 = v172;
  sub_23A6DEFE4();
  sub_23A6DEFF4();
  v189 = v372;
  sub_23A6DF084();
  v190 = v373;
  sub_23A646D48(v189, v373, &qword_27DF9D330, &qword_23A6E5040);
  v191 = v381;
  if ((*(v170 + 48))(v190, 1, v381) == 1)
  {
    sub_23A646DB0(v189, &qword_27DF9D330, &qword_23A6E5040);
    v192 = 10;
    v416 = 10;
  }

  else
  {
    v193 = v190;
    v194 = v189;
    v195 = v341;
    (*(v170 + 32))(v341, v193, v191);
    sub_23A6C43E0(v195, &v416);
    (*(v170 + 8))(v195, v191);
    sub_23A646DB0(v194, &qword_27DF9D330, &qword_23A6E5040);
    v192 = v416;
  }

  v196 = v389;
  v197 = v368;
  v198 = v380;
  v199 = v185;
  v415 = v192;
  sub_23A6DF0A4();
  v200 = v386;
  sub_23A646D48(v188, v386, &qword_27DF9D328, &qword_23A6E5038);
  v201 = (*(v198 + 6))(v200, 1, v187);
  v202 = v400;
  if (v201 == 1)
  {
    sub_23A646DB0(v188, &qword_27DF9D328, &qword_23A6E5038);
    v203 = 10;
    v414 = 10;
  }

  else
  {
    v204 = v200;
    v205 = v342;
    (*(v198 + 4))(v342, v204, v187);
    sub_23A6C4628(v205, &v414);
    (*(v198 + 1))(v205, v187);
    sub_23A646DB0(v188, &qword_27DF9D328, &qword_23A6E5038);
    v203 = v414;
  }

  v206 = v385;
  v413 = v203;
  LODWORD(v350) = sub_23A6DED34();
  LODWORD(v349) = sub_23A6DF0B4();
  sub_23A6DEE44();
  v207 = v399;
  sub_23A646D48(v186, v399, &qword_27DF9D320, &qword_23A6E5030);
  if ((*(v202 + 48))(v207, 1, v199) == 1)
  {
    sub_23A646DB0(v186, &qword_27DF9D320, &qword_23A6E5030);
    v208 = xmmword_23A6E5010;
    v209 = 0uLL;
    v210 = 0uLL;
  }

  else
  {
    v211 = v343;
    (*(v202 + 32))(v343, v207, v199);
    v212 = v202;
    v213 = sub_23A6DEE24();
    v215 = v214;
    v216 = sub_23A6DEDA4();
    v218 = v217;
    v219 = sub_23A6DEDB4();
    sub_23A6A979C(v213, v215, v216, v218, v219, v220, &v410);
    (*(v212 + 8))(v211, v404);
    sub_23A646DB0(v403, &qword_27DF9D320, &qword_23A6E5030);
    v208 = v410;
    v209 = v411;
    v210 = v412;
  }

  v221 = v384;
  v222 = v367;
  v410 = v208;
  v411 = v209;
  v412 = v210;
  v223 = sub_23A6DEE64();
  v224 = *(v223 + 16);
  if (v224)
  {
    v409 = MEMORY[0x277D84F90];
    v225 = v223;
    sub_23A6C5F34(0, v224, 0);
    result = v225;
    v226 = 0;
    *&v371 = &result[(*(v379 + 80) + 32) & ~*(v379 + 80)];
    v227 = v409;
    v400 = v366 + 16;
    v399 = (v366 + 8);
    v369 = (v379 + 8);
    *&v370 = v379 + 16;
    v372 = v224;
    v373 = result;
    while (v226 < *(result + 2))
    {
      v388 = v227;
      v228 = *(v379 + 72);
      *&v387 = v226;
      (*(v379 + 16))(v222, v371 + v228 * v226, v197);
      v229 = sub_23A6DED84();
      v386 = v230;
      sub_23A6DEDE4();
      sub_23A6DED74();
      v231 = sub_23A6DEDD4();
      v232 = *(v231 + 16);
      if (v232)
      {
        v381 = v229;
        v408 = MEMORY[0x277D84F90];
        v233 = v231;
        sub_23A6C5FE8(0, v232, 0);
        v234 = v408;
        v235 = *(v366 + 80);
        v380 = v233;
        v236 = v233 + ((v235 + 32) & ~v235);
        v404 = *(v366 + 72);
        v403 = *(v366 + 16);
        do
        {
          v237 = v401;
          v238 = v402;
          (v403)(v401, v236, v402);
          v239 = sub_23A6DED94();
          v241 = v240;
          v242 = sub_23A6DEDA4();
          v244 = v243;
          v245 = sub_23A6DEDB4();
          sub_23A6A979C(v239, v241, v242, v244, v245, v246, &v405);
          (*v399)(v237, v238);
          v247 = v405;
          v248 = v406;
          v249 = v407;
          v408 = v234;
          v251 = *(v234 + 16);
          v250 = *(v234 + 24);
          if (v251 >= v250 >> 1)
          {
            v342 = v407;
            v343 = v406;
            sub_23A6C5FE8((v250 > 1), v251 + 1, 1);
            v249 = v342;
            v248 = v343;
            v234 = v408;
          }

          *(v234 + 16) = v251 + 1;
          v252 = (v234 + 48 * v251);
          v252[2] = v247;
          v252[3] = v248;
          v252[4] = v249;
          v236 += v404;
          --v232;
        }

        while (v232);

        v221 = v384;
        v206 = v385;
        v196 = v389;
        v222 = v367;
        v197 = v368;
        v229 = v381;
      }

      else
      {

        v234 = MEMORY[0x277D84F90];
      }

      v253 = v374;
      sub_23A6A8F08(v229, v386, v392, v393, v234, v374);
      (*v369)(v222, v197);
      v227 = v388;
      v409 = v388;
      v255 = *(v388 + 16);
      v254 = *(v388 + 24);
      if (v255 >= v254 >> 1)
      {
        sub_23A6C5F34(v254 > 1, v255 + 1, 1);
        v227 = v409;
      }

      v256 = (v387 + 1);
      *(v227 + 16) = v255 + 1;
      v257 = v227 + ((*(v377 + 80) + 32) & ~*(v377 + 80)) + *(v377 + 72) * v255;
      v226 = v256;
      sub_23A6C6008(v253, v257, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      result = v373;
      if (v226 == v372)
      {
        v388 = v227;

        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  v388 = MEMORY[0x277D84F90];
LABEL_36:
  v258 = sub_23A6DEF74();
  v259 = *(v258 + 16);
  v260 = MEMORY[0x277D84F90];
  if (v259)
  {
    v409 = MEMORY[0x277D84F90];
    v261 = v258;
    sub_23A6C5EF0(0, v259, 0);
    result = v261;
    v262 = 0;
    v380 = &v261[(*(v378 + 80) + 32) & ~*(v378 + 80)];
    v263 = v409;
    v379 = v378 + 16;
    v377 = v345 + 48;
    v372 = (v345 + 8);
    v373 = (v345 + 32);
    v402 = v364 + 16;
    v401 = (v364 + 8);
    v400 = v365 + 16;
    v399 = (v365 + 8);
    v374 = (v378 + 8);
    v386 = v261;
    v381 = v259;
    while (v262 < *(result + 2))
    {
      v393 = v263;
      v264 = *(v378 + 72);
      v392 = v262;
      (*(v378 + 16))(v196, &v380[v264 * v262], v390);
      v265 = v391;
      sub_23A6DEED4();
      v266 = v265;
      v267 = v382;
      sub_23A646D48(v266, v382, &qword_27DF9D310, &qword_23A6E5020);
      v268 = 1;
      if ((*v377)(v267, 1, v383) != 1)
      {
        v269 = v363;
        v270 = v383;
        (*v373)(v363, v382, v383);
        v271 = sub_23A6DED84();
        v273 = v272;
        v274 = sub_23A6DEE84();
        v276 = v275;
        v277 = v361;
        sub_23A6DEEB4();
        v278 = v362;
        sub_23A6DEE94();
        v279 = v273;
        v260 = MEMORY[0x277D84F90];
        sub_23A6A6E14(v271, v279, v274, v276, v277, v278, v394);
        (*v372)(v269, v270);
        v268 = 0;
      }

      sub_23A646DB0(v391, &qword_27DF9D310, &qword_23A6E5020);
      v280 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
      (*(*(v280 - 8) + 56))(v394, v268, 1, v280);
      v281 = sub_23A6DEF54();
      v282 = *(v281 + 2);
      if (v282)
      {
        v408 = v260;
        sub_23A6C5FB0(0, v282, 0);
        v283 = v408;
        v284 = *(v364 + 80);
        v403 = v281;
        v285 = &v281[(v284 + 32) & ~v284];
        v404 = *(v364 + 72);
        v286 = *(v364 + 16);
        do
        {
          v287 = v395;
          v288 = v396;
          v286(v395, v285, v396);
          v289 = sub_23A6DEEF4();
          v291 = v290;
          v292 = sub_23A6DEEE4();
          sub_23A6A8558(v289, v291, v292, v293, &v405);
          (*v401)(v287, v288);
          v294 = v405;
          v295 = v406;
          v408 = v283;
          v297 = *(v283 + 16);
          v296 = *(v283 + 24);
          if (v297 >= v296 >> 1)
          {
            v387 = v405;
            sub_23A6C5FB0((v296 > 1), v297 + 1, 1);
            v294 = v387;
            v283 = v408;
          }

          *(v283 + 16) = v297 + 1;
          v298 = v283 + 32 * v297;
          *(v298 + 32) = v294;
          *(v298 + 48) = v295;
          v285 += v404;
          --v282;
        }

        while (v282);

        v196 = v389;
        v260 = MEMORY[0x277D84F90];
      }

      else
      {

        v283 = v260;
      }

      v299 = sub_23A6DEF44();
      v300 = *(v299 + 16);
      if (v300)
      {
        v408 = v260;
        sub_23A6C5F78(0, v300, 0);
        v301 = v408;
        v302 = *(v365 + 80);
        *&v387 = v299;
        v303 = v299 + ((v302 + 32) & ~v302);
        v404 = *(v365 + 72);
        v403 = *(v365 + 16);
        do
        {
          v304 = v397;
          v305 = v398;
          (v403)(v397, v303, v398);
          v306 = sub_23A6DEEF4();
          v308 = v307;
          v309 = sub_23A6DEEE4();
          sub_23A64FD74(v306, v308, v309, v310, &v405);
          (*v399)(v304, v305);
          v311 = v405;
          v312 = v406;
          v408 = v301;
          v314 = *(v301 + 16);
          v313 = *(v301 + 24);
          if (v314 >= v313 >> 1)
          {
            v371 = v405;
            sub_23A6C5F78((v313 > 1), v314 + 1, 1);
            v311 = v371;
            v301 = v408;
          }

          *(v301 + 16) = v314 + 1;
          v315 = v301 + 32 * v314;
          *(v315 + 32) = v311;
          *(v315 + 48) = v312;
          v303 += v404;
          --v300;
        }

        while (v300);

        v196 = v389;
        v260 = MEMORY[0x277D84F90];
      }

      else
      {

        v301 = v260;
      }

      v316 = v376;
      sub_23A6A6850(v394, v283, v301, v376);
      (*v374)(v196, v390);
      v263 = v393;
      v409 = v393;
      v318 = *(v393 + 2);
      v317 = *(v393 + 3);
      if (v318 >= v317 >> 1)
      {
        sub_23A6C5EF0(v317 > 1, v318 + 1, 1);
        v316 = v376;
        v263 = v409;
      }

      v319 = v392 + 1;
      *(v263 + 2) = v318 + 1;
      v320 = v316;
      v262 = v319;
      sub_23A6C6008(v320, &v263[((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v318], type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      v221 = v384;
      v206 = v385;
      result = v386;
      if (v262 == v381)
      {

        goto LABEL_60;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v263 = MEMORY[0x277D84F90];
LABEL_60:
  v321 = sub_23A6DED54();
  v323 = v322;
  sub_23A6DEE54();
  v324 = v347;
  sub_23A6DEF84();
  v325 = v348;
  sub_23A6DEF94();
  sub_23A6C6070(v325, v221);
  v326 = v351;
  if ((*(v206 + 48))(v221, 1, v351) == 1)
  {
    v327 = 2;
    v328 = v359;
    v329 = v346;
  }

  else
  {
    v330 = v344;
    (*(v206 + 32))(v344, v221, v326);
    v331 = (*(v206 + 88))(v330, v326);
    v328 = v359;
    if (v331 == *MEMORY[0x277CFEFC0])
    {
      v327 = 0;
      v329 = v346;
    }

    else
    {
      v329 = v346;
      if (v331 != *MEMORY[0x277CFEFB8])
      {
        (*(v206 + 8))(v344, v351);
      }

      v327 = 1;
    }
  }

  LOBYTE(v405) = v327;
  sub_23A6A3670(v353, v338, v337, v336, v335, v334 & 1, v354, &v417, v329, v422, v355, v356, &v415, &v413, v350, v349, &v410, v388, v263, v321, v323, v352, v324, &v405);
  sub_23A6A1844(v329, v328);
  (*(v357 + 8))(v360, v358);
  v332 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
  return (*(*(v332 - 8) + 56))(v328, 0, 1, v332);
}

uint64_t sub_23A6C4250@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A6DEFB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  result = (*(v5 + 88))(v10, v4);
  if (result == *MEMORY[0x277CFEFE0])
  {
    v12 = 0;
  }

  else if (result == *MEMORY[0x277CFEFD8])
  {
    v12 = 1;
  }

  else if (result == *MEMORY[0x277CFEFD0])
  {
    v12 = 2;
  }

  else if (result == *MEMORY[0x277CFEFC8])
  {
    v12 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277CFEFE8])
    {
      result = (*(v5 + 8))(v10, v4);
    }

    v12 = 4;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_23A6C43E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_23A6DF074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  result = (*(v5 + 88))(v10, v4);
  if (result == *MEMORY[0x277CFF010])
  {
    *a2 = 0;
  }

  else if (result == *MEMORY[0x277CFEFF8])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CFF018])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CFEFF0])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CFF000])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CFF020])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CFF028])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CFF030])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CFF008])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CFF038])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_23A6C4628@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_23A6DF094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  result = (*(v5 + 88))(v10, v4);
  if (result == *MEMORY[0x277CFF048])
  {
    *a2 = 0;
  }

  else if (result == *MEMORY[0x277CFF058])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CFF060])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CFF068])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CFF050])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CFF040])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CFF080])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CFF070])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CFF078])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CFF088])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_23A6C4870@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_23A6DEFB4();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v73 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v74 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v76 = &v67[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v81 = &v67[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v80 = &v67[-v19];
  v20 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v75 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_23A6DEB84();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v67[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_23A6DF0C4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v67[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_23A6DE314();
  v79 = *(v36 - 8);
  v37 = *(v79 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v67[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v67[-v43];
  sub_23A6DEB94();
  if ((*(v25 + 88))(v29, v24) != *MEMORY[0x277D43BE8])
  {
    goto LABEL_6;
  }

  (*(v25 + 96))(v29, v24);
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v24 = sub_23A6DE8C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 88))(v29, v24) != *MEMORY[0x277D43928])
  {
    (*(v31 + 8))(&v29[v45], v30);
LABEL_6:
    (*(v25 + 8))(v29, v24);
    v56 = 1;
    v57 = v82;
    goto LABEL_9;
  }

  (*(v25 + 96))(v29, v24);
  (*(v79 + 32))(v44, v29, v36);
  (*(v31 + 32))(v35, &v29[v45], v30);
  v46 = v80;
  sub_23A6DED64();
  v47 = sub_23A6DE0F4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = sub_23A6DED44();
  v71 = v49;
  v72 = v48;
  v70 = sub_23A6DED14();
  v69 = sub_23A6DEFC4();
  v68 = v50;
  sub_23A6DED24();
  v51 = v76;
  sub_23A6DEFD4();
  v52 = v74;
  sub_23A646D48(v51, v74, &qword_27DF9D340, &qword_23A6E5050);
  v54 = v77;
  v53 = v78;
  if ((*(v77 + 48))(v52, 1, v78) == 1)
  {
    sub_23A646DB0(v51, &qword_27DF9D340, &qword_23A6E5050);
    v55 = 4;
  }

  else
  {
    v58 = v52;
    v59 = v51;
    v60 = v73;
    (*(v54 + 32))(v73, v58, v53);
    sub_23A6C4FB0(v60, &v84);
    (*(v54 + 8))(v60, v53);
    sub_23A646DB0(v59, &qword_27DF9D340, &qword_23A6E5050);
    v55 = v84;
  }

  v83 = v55;
  v61 = sub_23A6DED54();
  v62 = v75;
  sub_23A6AE734(v80, v72, v71, v70, v69, v68 & 1, v81, &v83, v75, v61, v63);
  v64 = v79;
  (*(v79 + 16))(v40, v44, v36);
  v57 = v82;
  sub_23A6ADAB4(v62, v40, v82);
  (*(v31 + 8))(v35, v30);
  (*(v64 + 8))(v44, v36);
  v56 = 0;
LABEL_9:
  v65 = type metadata accessor for MobileNationalIDCardDataRequest.Response();
  return (*(*(v65 - 8) + 56))(v57, v56, 1, v65);
}

uint64_t sub_23A6C4FB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A6DEFB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, v4, v8);
  result = (*(v5 + 88))(v10, v4);
  if (result == *MEMORY[0x277CFEFE0])
  {
    v12 = 0;
  }

  else if (result == *MEMORY[0x277CFEFD8])
  {
    v12 = 1;
  }

  else if (result == *MEMORY[0x277CFEFD0])
  {
    v12 = 2;
  }

  else
  {
    if (result != *MEMORY[0x277CFEFC8] && result != *MEMORY[0x277CFEFE8])
    {
      result = (*(v5 + 8))(v10, v4);
    }

    v12 = 3;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_23A6C5134@<X0>(uint64_t a1@<X8>)
{
  v152 = a1;
  v145 = sub_23A6DEE34();
  v144 = *(v145 - 8);
  v1 = *(v144 + 64);
  MEMORY[0x28223BE20](v145, v2);
  v135 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D320, &qword_23A6E5030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v142 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v143 = &v126 - v10;
  v146 = sub_23A6DF054();
  v138 = *(v146 - 8);
  v11 = *(v138 + 64);
  MEMORY[0x28223BE20](v146, v12);
  v134 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D338, &qword_23A6E5048);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  *&v137 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  *&v147 = &v126 - v20;
  v21 = sub_23A6DEFB4();
  *&v136 = *(v21 - 8);
  v22 = *(v136 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v126 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v126 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8, v41);
  v141 = &v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v140 = &v126 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v149 = &v126 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v148 = &v126 - v52;
  v53 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8, v55);
  v139 = &v126 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_23A6DEB84();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  v62 = &v126 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_23A6DF0C4();
  v150 = *(v151 - 8);
  v63 = *(v150 + 64);
  MEMORY[0x28223BE20](v151, v64);
  v66 = &v126 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEB94();
  if ((*(v58 + 88))(v62, v57) != *MEMORY[0x277D43BE8])
  {
    (*(v58 + 8))(v62, v57);
LABEL_7:
    v79 = 1;
    v80 = v152;
    goto LABEL_27;
  }

  (*(v58 + 96))(v62, v57);
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v68 = sub_23A6DE8C4();
  v69 = (*(v68 - 8) + 88);
  v70 = (*v69)(v62, v68);
  v71 = (v69 - 10);
  if (v70 != *MEMORY[0x277D43930])
  {
    (*(v150 + 8))(&v62[v67], v151);
    (*v71)(v62, v68);
    goto LABEL_7;
  }

  (*(v150 + 32))(v66, &v62[v67], v151);
  (*v71)(v62, v68);
  v72 = v148;
  sub_23A6DED64();
  v73 = sub_23A6DE0F4();
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  v133 = sub_23A6DED44();
  v132 = v74;
  v131 = sub_23A6DED14();
  v130 = sub_23A6DEFC4();
  v129 = v75;
  sub_23A6DED24();
  sub_23A6DEFD4();
  sub_23A646D48(v38, v34, &qword_27DF9D340, &qword_23A6E5050);
  v76 = v136;
  if ((*(v136 + 48))(v34, 1, v21) != 1)
  {
    (*(v76 + 32))(v29, v34, v21);
    (*(v76 + 16))(v25, v29, v21);
    v81 = (*(v76 + 88))(v25, v21);
    if (v81 == *MEMORY[0x277CFEFE0])
    {
      v77 = 0;
      v78 = v137;
    }

    else
    {
      v78 = v137;
      if (v81 == *MEMORY[0x277CFEFD8])
      {
        v77 = 1;
      }

      else
      {
        if (v81 != *MEMORY[0x277CFEFD0])
        {
          if (v81 != *MEMORY[0x277CFEFC8])
          {
            if (v81 == *MEMORY[0x277CFEFE8])
            {
              v77 = 3;
              goto LABEL_19;
            }

            (*(v76 + 8))(v25, v21);
          }

          v77 = 4;
          goto LABEL_19;
        }

        v77 = 2;
      }
    }

LABEL_19:
    (*(v76 + 8))(v29, v21);
    goto LABEL_20;
  }

  v77 = 4;
  v78 = v137;
LABEL_20:
  sub_23A646DB0(v38, &qword_27DF9D340, &qword_23A6E5050);
  v157 = v77;
  v82 = v147;
  sub_23A6DF064();
  sub_23A646D48(v82, v78, &qword_27DF9D338, &qword_23A6E5048);
  v83 = v138;
  v84 = v146;
  v85 = (*(v138 + 48))(v78, 1, v146);
  v137 = xmmword_23A6E5010;
  if (v85 == 1)
  {
    v86 = 0;
    v87 = 0;
    v136 = xmmword_23A6E5010;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
  }

  else
  {
    v88 = v134;
    (*(v83 + 32))(v134, v78, v84);
    v89 = v83;
    *&v136 = sub_23A6DF044();
    *&v128 = v90;
    v91 = sub_23A6DF024();
    v93 = v92;
    v94 = sub_23A6DF034();
    v96 = v95;
    v97 = sub_23A6DF004();
    v99 = v98;
    v100 = sub_23A6DF014();
    sub_23A6C67F0(v136, v128, v91, v93, v94, v96, v97, v99, v158, v100, v101);
    v128 = v158[1];
    v136 = v158[0];
    v126 = v158[3];
    v127 = v158[2];
    v86 = v159;
    v87 = v160;
    (*(v89 + 8))(v88, v146);
  }

  v102 = v145;
  v103 = v144;
  v104 = v143;
  sub_23A646DB0(v147, &qword_27DF9D338, &qword_23A6E5048);
  v161[0] = v136;
  v161[1] = v128;
  v161[2] = v127;
  v161[3] = v126;
  v162 = v86;
  v163 = v87;
  sub_23A6DEE44();
  v105 = v142;
  sub_23A646D48(v104, v142, &qword_27DF9D320, &qword_23A6E5030);
  if ((*(v103 + 48))(v105, 1, v102) == 1)
  {
    v106 = 0;
    v107 = 0;
    v147 = 0u;
  }

  else
  {
    v108 = v135;
    (*(v103 + 32))(v135, v105, v102);
    v109 = sub_23A6DEE24();
    v111 = v110;
    v112 = sub_23A6DEDA4();
    v114 = v113;
    v115 = sub_23A6DEDB4();
    sub_23A6A979C(v109, v111, v112, v114, v115, v116, &v153);
    v147 = v154;
    v137 = v153;
    v106 = v155;
    v107 = v156;
    (*(v103 + 8))(v108, v102);
  }

  sub_23A646DB0(v104, &qword_27DF9D320, &qword_23A6E5030);
  v154 = v147;
  v153 = v137;
  v155 = v106;
  v156 = v107;
  v117 = sub_23A6DED54();
  v119 = v118;
  v120 = v140;
  sub_23A6DEE54();
  v121 = v141;
  sub_23A6DEF84();
  v125 = v117;
  v122 = v139;
  sub_23A6C93CC(v148, v133, v132, v131, v130, v129 & 1, v149, &v157, v139, v161, &v153, v125, v119, v120, v121);
  v80 = v152;
  sub_23A6C8428(v122, v152);
  (*(v150 + 8))(v66, v151);
  v79 = 0;
LABEL_27:
  v123 = type metadata accessor for MobilePhotoIDDataRequest.Response();
  return (*(*(v123 - 8) + 56))(v80, v79, 1, v123);
}

size_t sub_23A6C5EF0(size_t a1, int64_t a2, char a3)
{
  result = sub_23A6C60E0(a1, a2, a3, *v3, &qword_27DF9D358, &qword_23A6E5068, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
  *v3 = result;
  return result;
}

size_t sub_23A6C5F34(size_t a1, int64_t a2, char a3)
{
  result = sub_23A6C60E0(a1, a2, a3, *v3, &qword_27DF9D368, &qword_23A6E5078, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
  *v3 = result;
  return result;
}

char *sub_23A6C5F78(char *a1, int64_t a2, char a3)
{
  result = sub_23A6C62BC(a1, a2, a3, *v3, &qword_27DF9D348, &qword_23A6E5058);
  *v3 = result;
  return result;
}

char *sub_23A6C5FB0(char *a1, int64_t a2, char a3)
{
  result = sub_23A6C62BC(a1, a2, a3, *v3, &qword_27DF9D350, &qword_23A6E5060);
  *v3 = result;
  return result;
}

char *sub_23A6C5FE8(char *a1, int64_t a2, char a3)
{
  result = sub_23A6C63C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23A6C6008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6C6070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D318, &qword_23A6E5028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_23A6C60E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_23A6C62BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_23A6C63C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D360, &qword_23A6E5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23A6C64E8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (v0[1])
  {
    v2 = *v0;
    v3 = sub_23A6DF614();
    [v1 setStreet_];
  }

  if (v0[3])
  {
    v4 = v0[2];
    v5 = sub_23A6DF614();
    [v1 setCity_];
  }

  if (v0[5])
  {
    v6 = v0[4];
    v7 = sub_23A6DF614();
    [v1 setState_];
  }

  if (v0[7])
  {
    v8 = v0[6];
    v9 = sub_23A6DF614();
    [v1 setPostalCode_];
  }

  if (v0[9])
  {
    v10 = v0[8];
    v11 = sub_23A6DF614();
    [v1 setISOCountryCode_];
  }

  [v1 copy];
  sub_23A6DF994();

  swift_unknownObjectRelease();
  sub_23A6C6660();
  swift_dynamicCast();
  return v13;
}

unint64_t sub_23A6C6660()
{
  result = qword_27DF9D370;
  if (!qword_27DF9D370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9D370);
  }

  return result;
}

uint64_t sub_23A6C66AC()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_23A6DFD04();
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_23A6DFD04();
      sub_23A6DF684();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_23A6DFD04();
  if (v0[5])
  {
LABEL_4:
    v3 = v0[4];
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23A6DFD04();
    if (v0[9])
    {
      goto LABEL_6;
    }

    return sub_23A6DFD04();
  }

LABEL_11:
  sub_23A6DFD04();
  if (!v0[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = v0[6];
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v0[9])
  {
    return sub_23A6DFD04();
  }

LABEL_6:
  v5 = v0[8];
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6C67F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_23A6C680C()
{
  sub_23A6DFCE4();
  sub_23A6C66AC();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C6850()
{
  sub_23A6DFCE4();
  sub_23A6C66AC();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C688C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_23A6C68E8(v8, v9) & 1;
}

uint64_t sub_23A6C68E8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_23A6DFC04();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_23A6DFC04();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_23A6DFC04();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_23A6DFC04();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (v32 && (a1[8] == a2[8] && v31 == v32 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23A6C6AAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_23A6C6B08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v7, **(&unk_278B544E0 + *v0), v1, v5);
  v8 = sub_23A6DEFA4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t MobilePhotoIDDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MobilePhotoIDDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobilePhotoIDDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobilePhotoIDDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6C6E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6C6E30(v2, v3);
}

uint64_t sub_23A6C6E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6C7208(v16, v13);
        sub_23A6C7208(v17, v8);
        sub_23A6C7AE0(&qword_27DF9D390, type metadata accessor for MobilePhotoIDDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6C726C(v8);
        sub_23A6C726C(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobilePhotoIDDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6C7208(v14, v10);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6C7208(v18, v5);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6C726C(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6C7208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6C726C(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobilePhotoIDDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v14, v10);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v17, v6);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6C74E8()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6C7208(v14, v10);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6C7208(v18, v5);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6C726C(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6C76FC()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v14, v10);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6C7208(v17, v6);
      sub_23A6C7AE0(&qword_27DF9D378, type metadata accessor for MobilePhotoIDDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6C726C(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6C791C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6C6E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6C6E30(v2, v3);
}

uint64_t static MobileDocumentRequest<>.photoIDData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6C79FC(uint64_t a1)
{
  result = sub_23A6C7A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6C7A24()
{
  result = qword_27DF9D380;
  if (!qword_27DF9D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D380);
  }

  return result;
}

unint64_t sub_23A6C7A7C()
{
  result = qword_27DF9D388;
  if (!qword_27DF9D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D388);
  }

  return result;
}

uint64_t sub_23A6C7AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Element()
{
  result = qword_27DFA2DD0;
  if (!qword_27DFA2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6C7DB8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6C7E78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobilePhotoIDDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6C7208(v6, a3);
}

uint64_t static MobilePhotoIDDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobilePhotoIDDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8060()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C80E8()
{
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6C816C()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6C8238(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6C82B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobilePhotoIDDataRequest.Response.hash(into:)()
{
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C8430()
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C84B8()
{
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6C853C()
{
  sub_23A6DFCE4();
  type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  sub_23A6C8710(&qword_27DF9D398, type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6C85C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6C8624(uint64_t a1)
{
  result = sub_23A6C8710(&qword_27DF9CC58, type metadata accessor for MobilePhotoIDDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Response()
{
  result = qword_27DFA2F60;
  if (!qword_27DFA2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6C8710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6C8784()
{
  result = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements() + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements()
{
  result = qword_27DFA3070;
  if (!qword_27DFA3070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements() + 24));
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.age.getter()
{
  v1 = (v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.address.getter()
{
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  result = 0;
  v3 = (v0 + *(v1 + 40));
  if (v3[1] != 1)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);
    v8 = *(v3 + 3);
    v9 = *(v3 + 4);
    return sub_23A6C64E8();
  }

  return result;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_23A6A1FA8(v4, v5);
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v61 = &v60 - v15;
  MEMORY[0x28223BE20](v16, v17);
  *&v60 = &v60 - v18;
  v19 = sub_23A6DE0F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v60 - v28;
  v30 = v2;
  sub_23A646D48(v2, &v60 - v28, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v20 + 48))(v29, 1, v19) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v20 + 32))(v24, v29, v19);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CCF8, MEMORY[0x277CC8E50]);
    sub_23A6DF5E4();
    (*(v20 + 8))(v24, v19);
  }

  v31 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v32 = (v2 + v31[5]);
  v33 = v64;
  if (v32[1] >> 60 == 15)
  {
    sub_23A6DFD04();
  }

  else
  {
    v34 = *v32;
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  sub_23A6A3D10(a1, *(v2 + v31[6]));
  v35 = v2 + v31[7];
  if (*(v35 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v36 = *v35;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v36);
  }

  v37 = v65;
  v38 = v60;
  sub_23A646D48(v2 + v31[8], v60, &qword_27DF9CCC8, &qword_23A6E3C40);
  v39 = *(v37 + 48);
  if (v39(v38, 1, v33) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v40 = v63;
    (*(v37 + 32))(v63, v38, v33);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v37 + 8))(v40, v33);
  }

  if (*(v30 + v31[9]) == 4)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v76) = *(v30 + v31[9]);
    sub_23A6DFD04();
    sub_23A6CA7D4();
    sub_23A6DF5E4();
  }

  v41 = v30 + v31[10];
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 32);
  v78 = *(v41 + 16);
  v79 = v44;
  v45 = *(v41 + 64);
  v80 = *(v41 + 48);
  v81 = v45;
  if (v43 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v46 = *(v41 + 32);
    v67 = *(v41 + 16);
    v68 = v46;
    v47 = *(v41 + 64);
    v69 = *(v41 + 48);
    v70 = v47;
    *&v66 = v42;
    *(&v66 + 1) = v43;
    sub_23A6DFD04();
    v71[0] = v42;
    v71[1] = v43;
    v72 = v78;
    v73 = v79;
    v74 = v80;
    v75 = v81;
    sub_23A6A5A74(v71, &v76);
    sub_23A6A5AD0();
    sub_23A6DF5E4();
    v77[1] = v68;
    v77[2] = v69;
    v77[3] = v70;
    v76 = v66;
    v77[0] = v67;
    sub_23A6A5B24(&v76);
  }

  v48 = v30 + v31[11];
  v49 = *(v48 + 8);
  if (v49 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v50 = *(v48 + 40);
    v51 = *(v48 + 16);
    *&v76 = *v48;
    *(&v76 + 1) = v49;
    *&v77[0] = v51;
    v60 = *(v48 + 24);
    *(v77 + 8) = v60;
    *(&v77[1] + 1) = v50;
    sub_23A6DFD04();
    sub_23A6CA828();

    v33 = v64;
    sub_23A6DF5E4();
  }

  v52 = (v30 + v31[12]);
  if (v52[1])
  {
    v53 = *v52;
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  v54 = v65;
  v55 = v61;
  sub_23A646D48(v30 + v31[13], v61, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v39(v55, 1, v33) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v56 = v63;
    (*(v54 + 32))(v63, v55, v33);
    sub_23A6DFD04();
    sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v54 + 8))(v56, v33);
  }

  v57 = v62;
  sub_23A646D48(v30 + v31[14], v62, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v39(v57, 1, v33) == 1)
  {
    return sub_23A6DFD04();
  }

  v59 = v63;
  (*(v54 + 32))(v63, v57, v33);
  sub_23A6DFD04();
  sub_23A6CAB64(&qword_27DF9CD00, MEMORY[0x277CC8990]);
  sub_23A6DF5E4();
  return (*(v54 + 8))(v59, v33);
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C93CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *a8;
  v33 = *(a11 + 40);
  v34 = *(a11 + 32);
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v22 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  *(a9 + v22[6]) = a4;
  v24 = a9 + v22[7];
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  sub_23A69EED0(a7, a9 + v22[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v22[9]) = v21;
  v25 = (a9 + v22[10]);
  v26 = a10[3];
  v25[2] = a10[2];
  v25[3] = v26;
  v25[4] = a10[4];
  v27 = a10[1];
  *v25 = *a10;
  v25[1] = v27;
  v28 = a9 + v22[11];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = v34;
  *(v28 + 40) = v33;
  v30 = (a9 + v22[12]);
  *v30 = a12;
  v30[1] = a13;
  sub_23A69EED0(a14, a9 + v22[13], &qword_27DF9CCC8, &qword_23A6E3C40);
  return sub_23A69EED0(a15, a9 + v22[14], &qword_27DF9CCC8, &qword_23A6E3C40);
}

uint64_t sub_23A6C9550()
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6C9594()
{
  sub_23A6DFCE4();
  MobilePhotoIDDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

BOOL _s15ProximityReader24MobilePhotoIDDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v3 = sub_23A6DE0A4();
  v4 = *(v3 - 8);
  v173 = v3;
  v174 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v169 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v165 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v166 = &v157 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v170 = &v157 - v17;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  v18 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172, v19);
  v167 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v168 = &v157 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v171 = &v157 - v26;
  v27 = sub_23A6DE0F4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = &v157 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v42 = &v157 - v41;
  v44 = *(v43 + 56);
  v175 = a1;
  sub_23A646D48(a1, &v157 - v41, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(v176, &v42[v44], &qword_27DF9CCC0, &unk_23A6E3790);
  v45 = *(v28 + 48);
  if (v45(v42, 1, v27) == 1)
  {
    if (v45(&v42[v44], 1, v27) == 1)
    {
      sub_23A646DB0(v42, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v46 = &qword_27DF9CDF8;
    v47 = &qword_23A6E3900;
    v48 = v42;
LABEL_7:
    sub_23A646DB0(v48, v46, v47);
    return 0;
  }

  sub_23A646D48(v42, v37, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v45(&v42[v44], 1, v27) == 1)
  {
    (*(v28 + 8))(v37, v27);
    goto LABEL_6;
  }

  (*(v28 + 32))(v32, &v42[v44], v27);
  sub_23A6CAB64(&qword_27DF9CE50, MEMORY[0x277CC8E50]);
  v49 = sub_23A6DF604();
  v50 = *(v28 + 8);
  v50(v32, v27);
  v50(v37, v27);
  sub_23A646DB0(v42, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v51 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v52 = v51[5];
  v54 = v175;
  v53 = v176;
  v56 = *(v175 + v52);
  v55 = *(v175 + v52 + 8);
  v57 = (v176 + v52);
  v59 = *v57;
  v58 = v57[1];
  if (v55 >> 60 == 15)
  {
    if (v58 >> 60 == 15)
    {
      sub_23A693750(v56, v55);
      sub_23A693750(v59, v58);
      sub_23A6A62F8(v56, v55);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v56, v55);
    sub_23A693750(v59, v58);
    sub_23A6A62F8(v56, v55);
    sub_23A6A62F8(v59, v58);
    return 0;
  }

  if (v58 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v56, v55);
  sub_23A693750(v59, v58);
  v60 = sub_23A6A3EE8(v56, v55, v59, v58);
  sub_23A6A62F8(v59, v58);
  sub_23A6A62F8(v56, v55);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v54 + v51[6]), *(v53 + v51[6])) & 1) == 0)
  {
    return 0;
  }

  v61 = v51[7];
  v62 = (v54 + v61);
  v63 = *(v54 + v61 + 8);
  v64 = (v53 + v61);
  v65 = *(v53 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  v164 = v51;
  v67 = v51[8];
  v68 = v171;
  v69 = *(v172 + 48);
  sub_23A646D48(v54 + v67, v171, &qword_27DF9CCC8, &qword_23A6E3C40);
  v70 = v68;
  sub_23A646D48(v53 + v67, v68 + v69, &qword_27DF9CCC8, &qword_23A6E3C40);
  v71 = v173;
  v73 = v174 + 48;
  v72 = *(v174 + 48);
  if (v72(v70, 1, v173) == 1)
  {
    if (v72(v70 + v69, 1, v71) == 1)
    {
      sub_23A646DB0(v70, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v74 = v170;
  sub_23A646D48(v70, v170, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v72(v70 + v69, 1, v71) == 1)
  {
    (*(v174 + 8))(v74, v71);
LABEL_28:
    v46 = &qword_27DF9CDF0;
    v47 = &qword_23A6E3DA0;
    v48 = v70;
    goto LABEL_7;
  }

  v75 = v174;
  v76 = v169;
  (*(v174 + 32))(v169, v70 + v69, v71);
  sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v163 = v73;
  v77 = v72;
  v78 = v70;
  v79 = sub_23A6DF604();
  v80 = *(v75 + 8);
  v80(v76, v71);
  v81 = v74;
  v54 = v175;
  v53 = v176;
  v80(v81, v71);
  v82 = v78;
  v72 = v77;
  sub_23A646DB0(v82, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v83 = v164;
  v84 = v164[9];
  v85 = *(v54 + v84);
  v86 = *(v53 + v84);
  if (v85 == 4)
  {
    if (v86 != 4)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v189) = v85;
    if (v86 == 4)
    {
      return 0;
    }

    LOBYTE(v211[0]) = v86;
    sub_23A6CAB10();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v87 = (v54 + v83[10]);
  v88 = v87[1];
  v89 = v87[3];
  v208 = v87[2];
  v209 = v89;
  v90 = v87[3];
  v210 = v87[4];
  v91 = v87[1];
  v207[0] = *v87;
  v207[1] = v91;
  v92 = (v53 + v83[10]);
  v93 = v92[3];
  v214 = v92[4];
  v94 = v92[3];
  v95 = v92[1];
  v212 = v92[2];
  v213 = v94;
  v96 = v92[1];
  v211[0] = *v92;
  v211[1] = v96;
  v203 = v88;
  v204 = v208;
  v97 = v87[4];
  v205 = v90;
  v206 = v97;
  v98 = v92[4];
  v201 = v93;
  v202 = v98;
  v99 = v207[0];
  v100 = v211[0];
  v199 = v95;
  v200 = v212;
  if (*(&v207[0] + 1) == 1)
  {
    if (*(&v211[0] + 1) == 1)
    {
      *&v189 = *&v207[0];
      *(&v189 + 1) = 1;
      v101 = v87[2];
      v190 = v87[1];
      v191 = v101;
      v102 = v87[4];
      v192 = v87[3];
      v193 = v102;
      sub_23A646D48(v207, &v184, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646D48(v211, &v184, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646DB0(&v189, &qword_27DF9CCD0, &qword_23A6E37A0);
      goto LABEL_43;
    }

    sub_23A646D48(v207, &v189, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v211, &v189, &qword_27DF9CCD0, &qword_23A6E37A0);
    goto LABEL_41;
  }

  v189 = v207[0];
  v103 = v87[2];
  v190 = v87[1];
  v191 = v103;
  v104 = v87[4];
  v192 = v87[3];
  v193 = v104;
  v186 = v103;
  v187 = v192;
  v188 = v104;
  v184 = v207[0];
  v185 = v190;
  if (*(&v211[0] + 1) == 1)
  {
    v181 = v191;
    v182 = v192;
    v183 = v193;
    v179 = v189;
    v180 = v190;
    sub_23A646D48(v207, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v211, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(&v189, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A6A5B24(&v179);
LABEL_41:
    v189 = v99;
    v190 = v203;
    v191 = v204;
    v192 = v205;
    v193 = v206;
    v194 = v100;
    v195 = v199;
    v196 = v200;
    v197 = v201;
    v198 = v202;
    v46 = &qword_27DF9CE00;
    v47 = &qword_23A6E3908;
    v48 = &v189;
    goto LABEL_7;
  }

  v105 = v92[2];
  v180 = v92[1];
  v181 = v105;
  v106 = v92[4];
  v182 = v92[3];
  v183 = v106;
  v179 = v211[0];
  sub_23A646D48(v207, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(v211, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(&v189, v178, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A6A64F8();
  v107 = sub_23A6DF604();
  v177[2] = v181;
  v177[3] = v182;
  v177[4] = v183;
  v177[0] = v179;
  v177[1] = v180;
  sub_23A6A5B24(v177);
  v178[2] = v186;
  v178[3] = v187;
  v178[4] = v188;
  v178[0] = v184;
  v178[1] = v185;
  sub_23A6A5B24(v178);
  v179 = v99;
  v180 = v203;
  v181 = v204;
  v182 = v205;
  v183 = v206;
  sub_23A646DB0(&v179, &qword_27DF9CCD0, &qword_23A6E37A0);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v108 = v164[11];
  v110 = *(v175 + v108);
  v109 = *(v175 + v108 + 8);
  v112 = *(v175 + v108 + 16);
  v111 = *(v175 + v108 + 24);
  v114 = *(v175 + v108 + 32);
  v113 = *(v175 + v108 + 40);
  v115 = (v176 + v108);
  v116 = *v115;
  v117 = v115[1];
  v119 = v115[2];
  v118 = v115[3];
  v120 = v115[4];
  v162 = v115[5];
  v163 = v116;
  v170 = v119;
  v171 = v118;
  if (v109 == 1)
  {
    v161 = 1;
    sub_23A6A1FA8(v110, 1);
    if (v117 == 1)
    {
      sub_23A6A1FA8(v163, 1);
      sub_23A6A630C(v110, 1);
      goto LABEL_51;
    }

    sub_23A6A1FA8(v163, v117);
    v122 = v161;
LABEL_49:
    sub_23A6A630C(v110, v122);
    sub_23A6A630C(v163, v117);
    return 0;
  }

  *&v189 = v110;
  *(&v189 + 1) = v109;
  *&v190 = v112;
  *(&v190 + 1) = v111;
  *&v191 = v114;
  *(&v191 + 1) = v113;
  if (v117 == 1)
  {
    v121 = v116;
    v122 = v109;
    sub_23A6A1FA8(v110, v109);
    sub_23A6A1FA8(v121, 1);
    sub_23A6A1FA8(v110, v122);

    goto LABEL_49;
  }

  *&v184 = v116;
  *(&v184 + 1) = v117;
  *&v185 = v119;
  *(&v185 + 1) = v118;
  *&v186 = v120;
  *(&v186 + 1) = v162;
  v158 = v110;
  v159 = v112;
  v123 = v110;
  v124 = v109;
  v160 = v111;
  v161 = v109;
  sub_23A6A1FA8(v123, v109);
  sub_23A6A1FA8(v163, v117);
  v125 = v158;
  sub_23A6A1FA8(v158, v124);
  sub_23A6CAABC();
  v126 = sub_23A6DF604();

  sub_23A6A630C(v125, v161);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v127 = v164;
  v128 = v164[12];
  v129 = v176;
  v130 = (v175 + v128);
  v131 = *(v175 + v128 + 8);
  v132 = (v176 + v128);
  v133 = v132[1];
  if (v131)
  {
    if (!v133 || (*v130 != *v132 || v131 != v133) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v133)
  {
    return 0;
  }

  v134 = v127[13];
  v135 = *(v172 + 48);
  v136 = v168;
  sub_23A646D48(v175 + v134, v168, &qword_27DF9CCC8, &qword_23A6E3C40);
  v137 = v129 + v134;
  v138 = v136;
  sub_23A646D48(v137, v136 + v135, &qword_27DF9CCC8, &qword_23A6E3C40);
  v139 = v173;
  if (v72(v136, 1, v173) == 1)
  {
    if (v72(v136 + v135, 1, v139) == 1)
    {
      sub_23A646DB0(v136, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v140 = v166;
  sub_23A646D48(v136, v166, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v72(v136 + v135, 1, v139) == 1)
  {
    (*(v174 + 8))(v140, v139);
LABEL_63:
    v46 = &qword_27DF9CDF0;
    v47 = &qword_23A6E3DA0;
    v48 = v136;
    goto LABEL_7;
  }

  v141 = v174;
  v142 = v136 + v135;
  v143 = v169;
  (*(v174 + 32))(v169, v142, v139);
  sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  LODWORD(v171) = sub_23A6DF604();
  v144 = *(v141 + 8);
  v144(v143, v139);
  v144(v140, v139);
  sub_23A646DB0(v138, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v171 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v145 = v164[14];
  v146 = *(v172 + 48);
  v147 = v167;
  sub_23A646D48(v175 + v145, v167, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v176 + v145, v147 + v146, &qword_27DF9CCC8, &qword_23A6E3C40);
  v148 = v173;
  if (v72(v147, 1, v173) != 1)
  {
    sub_23A646D48(v147, v165, &qword_27DF9CCC8, &qword_23A6E3C40);
    if (v72(v147 + v146, 1, v148) != 1)
    {
      v149 = v174;
      v150 = v167;
      v151 = v167 + v146;
      v152 = v169;
      v153 = v173;
      (*(v174 + 32))(v169, v151, v173);
      sub_23A6CAB64(&qword_27DF9CE10, MEMORY[0x277CC8990]);
      v154 = v165;
      v155 = sub_23A6DF604();
      v156 = *(v149 + 8);
      v156(v152, v153);
      v156(v154, v153);
      sub_23A646DB0(v150, &qword_27DF9CCC8, &qword_23A6E3C40);
      return (v155 & 1) != 0;
    }

    (*(v174 + 8))(v165, v173);
    v147 = v167;
    goto LABEL_70;
  }

  if (v72(v147 + v146, 1, v148) != 1)
  {
LABEL_70:
    v46 = &qword_27DF9CDF0;
    v47 = &qword_23A6E3DA0;
    v48 = v147;
    goto LABEL_7;
  }

  sub_23A646DB0(v147, &qword_27DF9CCC8, &qword_23A6E3C40);
  return 1;
}

unint64_t sub_23A6CA7D4()
{
  result = qword_27DF9D3A8;
  if (!qword_27DF9D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3A8);
  }

  return result;
}

unint64_t sub_23A6CA828()
{
  result = qword_27DF9D3B0;
  if (!qword_27DF9D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3B0);
  }

  return result;
}

void sub_23A6CA8EC()
{
  sub_23A6AF2EC(319, &qword_27DF9CD60, MEMORY[0x277CC8E50]);
  if (v0 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68);
    if (v1 <= 0x3F)
    {
      sub_23A6A6194();
      if (v2 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78);
        if (v3 <= 0x3F)
        {
          sub_23A6AF2EC(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
          if (v4 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9D3C0);
            if (v5 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9CD90);
              if (v6 <= 0x3F)
              {
                sub_23A6A62AC(319, &qword_27DF9D3C8);
                if (v7 <= 0x3F)
                {
                  sub_23A6A62AC(319, &qword_27DF9C7C8);
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

unint64_t sub_23A6CAABC()
{
  result = qword_27DF9D3D0;
  if (!qword_27DF9D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3D0);
  }

  return result;
}

unint64_t sub_23A6CAB10()
{
  result = qword_27DF9D3D8;
  if (!qword_27DF9D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3D8);
  }

  return result;
}

uint64_t sub_23A6CAB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.jurisdiction.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.isoCountryCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v4)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DFCE4();
  if (v2)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobilePhotoIDDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v7, **(&unk_278B54500 + *v0), v1, v5);
  v8 = sub_23A6DEFA4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t MobileDocumentDisplayRequest.elements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest()
{
  result = qword_27DFA3400;
  if (!qword_27DFA3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentDisplayRequest() + 20);

  return sub_23A6CB0F8(a1, v3);
}

uint64_t sub_23A6CB0F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentDisplayRequest.init(elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for MobileDocumentDisplayRequest() + 20);

  return sub_23A6CB1F0(a2, v4);
}

uint64_t sub_23A6CB1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static MobileDocumentDisplayRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CB2BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MobileDocumentDisplayRequest() + 20);

  return static MobileDocumentDisplayRequest.Options.== infix(_:_:)((a1 + v4), (a2 + v4));
}

uint64_t sub_23A6CB2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6CB674(v16, v13, type metadata accessor for MobileDocumentDisplayRequest.Element);
        sub_23A6CB674(v17, v8, type metadata accessor for MobileDocumentDisplayRequest.Element);
        sub_23A6CBF9C(&qword_27DF9D410, type metadata accessor for MobileDocumentDisplayRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6CB6DC(v8);
        sub_23A6CB6DC(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDocumentDisplayRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_23A6CB674(v10, v7, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v7);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = *(type metadata accessor for MobileDocumentDisplayRequest() + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options();
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CB674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CB6DC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v7 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_23A6CB674(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v11 = *(type metadata accessor for MobileDocumentDisplayRequest() + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options();
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CB914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_23A6CB674(v13, v10, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v10);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v15 = *(a2 + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options();
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CBADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v10 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_23A6CB674(v12, v9, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6CBF9C(&qword_27DF9D3E0, type metadata accessor for MobileDocumentDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CB6DC(v9);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(a2 + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options();
  sub_23A6CBF9C(&qword_27DF9D3E8, type metadata accessor for MobileDocumentDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

BOOL sub_23A6CBCBC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CB2BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static MobileDocumentDisplayRequest.Options.== infix(_:_:)((a1 + v6), (a2 + v6));
}

uint64_t static MobileDocumentRequest<>.displayDocument(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MobileDocumentDisplayRequest();
  sub_23A6CB674(a2, a3 + *(v6 + 20), type metadata accessor for MobileDocumentDisplayRequest.Options);
  *a3 = a1;
}

unint64_t sub_23A6CBDA4()
{
  result = qword_27DF9D3F0;
  if (!qword_27DF9D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D3F0);
  }

  return result;
}

uint64_t sub_23A6CBDF8(uint64_t a1)
{
  result = sub_23A6CBF9C(&qword_27DF9D3F8, type metadata accessor for MobileDocumentDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6CBEC0()
{
  sub_23A6CBF44();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CBF44()
{
  if (!qword_27DF9D408)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Element();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D408);
    }
  }
}

uint64_t sub_23A6CBF9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType()
{
  result = qword_27DFA3550;
  if (!qword_27DFA3550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CC068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MobileDocumentDisplayRequest.Options.DocumentType.nationalIDCard(region:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6DE314();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D43928];
  v6 = sub_23A6DE8C4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_23A6CC194(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE8C4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CC254@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6CC068(v6, a3);
}

uint64_t MobileDocumentDisplayRequest.Options.DocumentType.hash(into:)()
{
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Options.DocumentType.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC3C4()
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC44C()
{
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CC4D0()
{
  sub_23A6DFCE4();
  sub_23A6DE8C4();
  sub_23A6CC59C(&qword_27DF9CC00, MEMORY[0x277D43938]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CC59C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6CC610()
{
  result = sub_23A6DE8C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Element()
{
  result = qword_27DFA36C0;
  if (!qword_27DFA36C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CC700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CC7B0(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CC870@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDocumentDisplayRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6CC700(v6, a3);
}

uint64_t static MobileDocumentDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDocumentDisplayRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCA58()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCAE0()
{
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CCB64()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CCC30(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CCC30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileDocumentDisplayRequest.Options.allowedDocumentTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options()
{
  result = qword_27DFA37D0;
  if (!qword_27DFA37D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Options.validationMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentDisplayRequest.Options() + 20);

  return sub_23A6CCDD0(a1, v3);
}

uint64_t sub_23A6CCDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentDisplayRequest.Options.init(allowedDocumentTypes:validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for MobileDocumentDisplayRequest.Options() + 20);
  v7 = sub_23A6CDE68();
  sub_23A6CD314(v7, a3 + v6, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  *a3 = a1;

  return sub_23A6CCDD0(a2, a3 + v6);
}

BOOL static MobileDocumentDisplayRequest.Options.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CCF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for MobileDocumentDisplayRequest.Options() + 20);

  return static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)();
}

uint64_t sub_23A6CCF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6CD314(v16, v13, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
        sub_23A6CD314(v17, v8, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
        sub_23A6CDB18(&qword_27DF9D418, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
        v19 = sub_23A6DF604();
        sub_23A6CD37C(v8);
        sub_23A6CD37C(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDocumentDisplayRequest.Options.hash(into:)()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_23A6CD314(v10, v7, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v7);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = *(type metadata accessor for MobileDocumentDisplayRequest.Options() + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CD314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CD37C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentDisplayRequest.Options.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v7 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_23A6CD314(v9, v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v11 = *(type metadata accessor for MobileDocumentDisplayRequest.Options() + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CD5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_23A6CD314(v13, v10, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v10);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v15 = *(a2 + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CD77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v10 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_23A6CD314(v12, v9, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6CDB18(&qword_27DF9D420, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      sub_23A6DF5E4();
      sub_23A6CD37C(v9);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(a2 + 20);
  type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  sub_23A6CDB18(&qword_27DF9D428, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

BOOL sub_23A6CD9A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CCF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)();
}

void sub_23A6CDA3C()
{
  sub_23A6CDAC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CDAC0()
{
  if (!qword_27DF9D438)
  {
    type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D438);
    }
  }
}

uint64_t sub_23A6CDB18(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static MobileDocumentDisplayRequest.Response.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDocumentDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileDocumentDisplayRequest.Response.hash(into:)()
{
  v2 = *v0;
  sub_23A6CDBF4();
  return sub_23A6DF5E4();
}

unint64_t sub_23A6CDBF4()
{
  result = qword_27DF9D440;
  if (!qword_27DF9D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D440);
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Response.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CDCB0()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CDD0C()
{
  v2 = *v0;
  sub_23A6CDBF4();
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CDD58()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6CDBF4();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6CDDB4()
{
  result = qword_27DF9D448;
  if (!qword_27DF9D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D448);
  }

  return result;
}

BOOL sub_23A6CDE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDocumentDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode()
{
  result = qword_27DFA3A40;
  if (!qword_27DFA3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CDEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CDFAC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CE048(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23A6CE0C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6CDEFC(v6, a3);
}

BOOL static MobileDocumentDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileDocumentDisplayRequest.Options.ValidationMode.hash(into:)()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDocumentDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE2D4()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE35C()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CE3E0()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CE4AC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23A6CE4F4()
{
  sub_23A6DEB24();
  sub_23A6CE4AC(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t sub_23A6CE5C4()
{
  result = sub_23A6DEB24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobileDocumentDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6CE6BC()
{
  result = qword_27DF9D468;
  if (!qword_27DF9D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D468);
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.elements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest()
{
  result = qword_27DFA3CD0;
  if (!qword_27DFA3CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDisplayRequest() + 20);

  return sub_23A6CE850(a1, v3);
}

uint64_t sub_23A6CE850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDisplayRequest.init(elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for MobileDriversLicenseDisplayRequest() + 20);

  return sub_23A6CE948(a2, v4);
}

uint64_t sub_23A6CE948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileDriversLicenseDisplayRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23A6CEA14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MobileDriversLicenseDisplayRequest() + 20);

  return static MobileDriversLicenseDisplayRequest.Options.== infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_23A6CEA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6CEDCC(v16, v13, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
        sub_23A6CEDCC(v17, v8, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
        sub_23A6CF6F4(&qword_27DF9D4A0, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6CEE34(v8);
        sub_23A6CEE34(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDriversLicenseDisplayRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_23A6CEDCC(v10, v7, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v7);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = *(type metadata accessor for MobileDriversLicenseDisplayRequest() + 20);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CEDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6CEE34(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v7 = *v0;
  MEMORY[0x23EE8A1E0](*(*v0 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_23A6CEDCC(v9, v6, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v11 = *(type metadata accessor for MobileDriversLicenseDisplayRequest() + 20);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CF06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_23A6CEDCC(v13, v10, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v10);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v15 = *(a2 + 20);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6CF234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  v10 = *v2;
  MEMORY[0x23EE8A1E0](*(*v2 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_23A6CEDCC(v12, v9, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6CF6F4(&qword_27DF9D470, type metadata accessor for MobileDriversLicenseDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6CEE34(v9);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(a2 + 20);
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  sub_23A6CF6F4(&qword_27DF9D478, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CF414(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23A6CEA14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static MobileDriversLicenseDisplayRequest.Options.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t static MobileDocumentRequest<>.displayDriversLicense(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MobileDriversLicenseDisplayRequest();
  sub_23A6CEDCC(a2, a3 + *(v6 + 20), type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  *a3 = a1;
}

unint64_t sub_23A6CF4FC()
{
  result = qword_27DF9D480;
  if (!qword_27DF9D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D480);
  }

  return result;
}

uint64_t sub_23A6CF550(uint64_t a1)
{
  result = sub_23A6CF6F4(&qword_27DF9D488, type metadata accessor for MobileDriversLicenseDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6CF618()
{
  sub_23A6CF69C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6CF69C()
{
  if (!qword_27DF9D498)
  {
    type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D498);
    }
  }
}

uint64_t sub_23A6CF6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Element()
{
  result = qword_27DFA3E40;
  if (!qword_27DFA3E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6CF7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CF870(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6CF930@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6CF7C0(v6, a3);
}

uint64_t static MobileDriversLicenseDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseDisplayRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFB18()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFBA0()
{
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6CFC24()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6CFCF0(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFCF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6CFD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6CFDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDisplayRequest.Options.init(validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6D02CC();
  sub_23A6CFD60(v4, a2);

  return sub_23A6CFDD8(a1, a2);
}

uint64_t MobileDriversLicenseDisplayRequest.Options.hash(into:)()
{
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Options.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6CFFB4()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D003C()
{
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D00C0()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  sub_23A6D018C(&qword_27DF9D4A8, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D018C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Options()
{
  result = qword_27DFA3F50;
  if (!qword_27DFA3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D024C()
{
  result = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode()
{
  result = qword_27DFA40C0;
  if (!qword_27DFA40C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D03AC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D0448(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23A6D04C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6CFD60(v6, a3);
}

BOOL static MobileDriversLicenseDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileDriversLicenseDisplayRequest.Options.ValidationMode.hash(into:)()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D06D4()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D075C()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D07E0()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D08AC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23A6D08F4()
{
  sub_23A6DEB24();
  sub_23A6D08AC(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

BOOL static MobileDriversLicenseDisplayRequest.Response.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileDriversLicenseDisplayRequest.Response.hash(into:)()
{
  v2 = *v0;
  sub_23A6D0A58();
  return sub_23A6DF5E4();
}

unint64_t sub_23A6D0A58()
{
  result = qword_27DF9D4C0;
  if (!qword_27DF9D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4C0);
  }

  return result;
}

uint64_t MobileDriversLicenseDisplayRequest.Response.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D0B08()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D0B64()
{
  v2 = *v0;
  sub_23A6D0A58();
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D0BB0()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D0A58();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D0C0C()
{
  result = qword_27DF9D4C8;
  if (!qword_27DF9D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4C8);
  }

  return result;
}

BOOL sub_23A6D0C60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileDriversLicenseDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6D0D38()
{
  result = qword_27DF9D4D0;
  if (!qword_27DF9D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4D0);
  }

  return result;
}

uint64_t static MobileNationalIDCardDisplayRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardDisplayRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardDisplayRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardDisplayRequest.elements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardDisplayRequest() + 20));
}

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest()
{
  result = qword_27DFA4450;
  if (!qword_27DFA4450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.elements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDisplayRequest() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.options.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileNationalIDCardDisplayRequest() + 24);

  return sub_23A6D1094(a1, v3);
}

uint64_t sub_23A6D1094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDisplayRequest.init(region:elements:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDisplayRequest();
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return sub_23A6D11DC(a3, v10);
}

uint64_t sub_23A6D11DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileNationalIDCardDisplayRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest();
  if ((sub_23A6D12C4(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return static MobileNationalIDCardDisplayRequest.Options.== infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t sub_23A6D12C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6D16D4(v16, v13, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
        sub_23A6D16D4(v17, v8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
        sub_23A6D2174(&qword_27DF9D508, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6D173C(v8);
        sub_23A6D173C(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileNationalIDCardDisplayRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v7 = type metadata accessor for MobileNationalIDCardDisplayRequest();
  v8 = *(v0 + *(v7 + 20));
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_23A6D16D4(v10, v6, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v6);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = *(v7 + 24);
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D16D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D173C(uint64_t a1)
{
  v2 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileNationalIDCardDisplayRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v7 = type metadata accessor for MobileNationalIDCardDisplayRequest();
  v8 = *(v0 + *(v7 + 20));
  MEMORY[0x23EE8A1E0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_23A6D16D4(v10, v6, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v6);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = *(v7 + 24);
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D19D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_23A6D16D4(v12, v9, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v9);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(a2 + 24);
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D1BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D2174(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_23A6D16D4(v12, v9, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6D2174(&qword_27DF9D4D8, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D173C(v9);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(a2 + 24);
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  sub_23A6D2174(&qword_27DF9D4E0, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D1E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6D12C4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static MobileNationalIDCardDisplayRequest.Options.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t static MobileDocumentRequest<>.nationalIDCard(region:_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDisplayRequest();
  sub_23A6D16D4(a3, a4 + *(v9 + 24), type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  *(a4 + *(v9 + 20)) = a2;
}

unint64_t sub_23A6D1F64()
{
  result = qword_27DF9D4E8;
  if (!qword_27DF9D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D4E8);
  }

  return result;
}

uint64_t sub_23A6D1FB8(uint64_t a1)
{
  result = sub_23A6D2174(&qword_27DF9D4F0, type metadata accessor for MobileNationalIDCardDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6D2080()
{
  sub_23A6DE314();
  if (v0 <= 0x3F)
  {
    sub_23A6D211C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A6D211C()
{
  if (!qword_27DF9D500)
  {
    type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D500);
    }
  }
}

uint64_t sub_23A6D2174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Element()
{
  result = qword_27DFA45C0;
  if (!qword_27DFA45C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D22F0(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D23B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6D2240(v6, a3);
}

uint64_t static MobileNationalIDCardDisplayRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardDisplayRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2598()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2620()
{
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D26A4()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D2770(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6D27E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D2858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDisplayRequest.Options.init(validationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6D2D4C();
  sub_23A6D27E0(v4, a2);

  return sub_23A6D2858(a1, a2);
}

uint64_t MobileNationalIDCardDisplayRequest.Options.hash(into:)()
{
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Options.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2A34()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2ABC()
{
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D2B40()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  sub_23A6D2C0C(&qword_27DF9D510, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D2C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Options()
{
  result = qword_27DFA46D0;
  if (!qword_27DFA46D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2CCC()
{
  result = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode()
{
  result = qword_27DFA4840;
  if (!qword_27DFA4840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D2E2C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DEB24();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D2EC8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23A6D2F40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6D27E0(v6, a3);
}

BOOL static MobileNationalIDCardDisplayRequest.Options.ValidationMode.== infix(_:_:)()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

uint64_t MobileNationalIDCardDisplayRequest.Options.ValidationMode.hash(into:)()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDisplayRequest.Options.ValidationMode.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D3154()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D31DC()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D3260()
{
  sub_23A6DFCE4();
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D458, MEMORY[0x277D43BB8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D332C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23A6D3374()
{
  sub_23A6DEB24();
  sub_23A6D332C(&qword_27DF9D450, MEMORY[0x277D43BB8]);
  sub_23A6DF714();
  sub_23A6DF714();
  return v2 == v1;
}

BOOL static MobileNationalIDCardDisplayRequest.Response.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileNationalIDCardDisplayRequest.Response.hash(into:)()
{
  v2 = *v0;
  sub_23A6D34D8();
  return sub_23A6DF5E4();
}

unint64_t sub_23A6D34D8()
{
  result = qword_27DF9D528;
  if (!qword_27DF9D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D528);
  }

  return result;
}

uint64_t MobileNationalIDCardDisplayRequest.Response.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D3588()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D35E4()
{
  v2 = *v0;
  sub_23A6D34D8();
  return sub_23A6DF5E4();
}

uint64_t sub_23A6D3630()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6D34D8();
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D368C()
{
  result = qword_27DF9D530;
  if (!qword_27DF9D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D530);
  }

  return result;
}

BOOL sub_23A6D36E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return static MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.== infix(_:_:)(&v5, &v4);
}

uint64_t MobileNationalIDCardDisplayRequest.Response.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A6D37B8()
{
  result = qword_27DF9D538;
  if (!qword_27DF9D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D538);
  }

  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.addRequest(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v221 = *(v2 - 8);
  v3 = *(v221 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v219 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v220 = &v213 - v8;
  v9 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v227 = *(v9 - 8);
  v10 = v227[8];
  MEMORY[0x28223BE20](v9 - 8, v11);
  v225 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v226 = &v213 - v15;
  v16 = type metadata accessor for MobileNationalIDCardRawDataRequest();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v217 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v213 - v22;
  v24 = sub_23A6DE8C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_23A6DE9B4();
  v228 = *(v231 - 8);
  v30 = *(v228 + 64);
  MEMORY[0x28223BE20](v231, v31);
  v223 = (&v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33, v34);
  v224 = &v213 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v213 - v38;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v213 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v230 = (&v213 - v46);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v213 - v49;
  v51 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v229 = *(v51 - 8);
  v52 = v229[8];
  MEMORY[0x28223BE20](v51 - 8, v53);
  v222 = &v213 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v213 - v57;
  sub_23A675890(a1, v235);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D540, &qword_23A6E60B0);
  if (swift_dynamicCast())
  {
    v214 = v29;
    v215 = v25;
    v216 = v24;
    v59 = v233;
    v226 = v234;
    v60 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v61 = v59[2];
    v227 = v59;
    v225 = v61;
    if (v61)
    {
      v62 = 0;
      v224 = v59 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v63 = (v228 + 16);
      v223 = (v228 + 8);
      do
      {
        if (v62 >= v59[2])
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        sub_23A6D4DC0(v224 + v229[9] * v62, v58, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v64 = *v63;
        (*v63)(v50, v58, v231);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v232 = v60;
        v67 = sub_23A69CEA0(v50);
        v68 = v60[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_102;
        }

        v71 = v66;
        if (v60[3] >= v70)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v60 = v232;
            if (v66)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_23A69DDB4();
            v60 = v232;
            if (v71)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23A69D350(v70, isUniquelyReferenced_nonNull_native);
          v72 = sub_23A69CEA0(v50);
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_119;
          }

          v67 = v72;
          v60 = v232;
          if (v71)
          {
LABEL_4:
            *(v60[7] + v67) = 1;
            (*v223)(v50, v231);
            sub_23A6D4E28(v58, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
            goto LABEL_5;
          }
        }

        v60[(v67 >> 6) + 8] |= 1 << v67;
        v74 = v228;
        v75 = v231;
        v64((v60[6] + *(v228 + 72) * v67), v50, v231);
        *(v60[7] + v67) = 1;
        (*(v74 + 8))(v50, v75);
        sub_23A6D4E28(v58, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v76 = v60[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_107;
        }

        v60[2] = v78;
LABEL_5:
        ++v62;
        v59 = v227;
      }

      while (v225 != v62);
    }

    v102 = v226;
    v103 = *(v226 + 16);
    if (v103)
    {
      v104 = 0;
      v225 = v226 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v105 = (v228 + 16);
      v106 = (v228 + 8);
      v107 = v222;
      while (1)
      {
        if (v104 >= *(v102 + 16))
        {
          goto LABEL_103;
        }

        sub_23A6D4DC0(v225 + v229[9] * v104, v107, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v108 = *v105;
        v109 = v230;
        (*v105)(v230, v107, v231);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v232 = v60;
        v111 = sub_23A69CEA0(v109);
        v113 = v60[2];
        v114 = (v112 & 1) == 0;
        v77 = __OFADD__(v113, v114);
        v115 = v113 + v114;
        if (v77)
        {
          goto LABEL_104;
        }

        v116 = v112;
        if (v60[3] < v115)
        {
          break;
        }

        if (v110)
        {
          goto LABEL_44;
        }

        v125 = v111;
        sub_23A69DDB4();
        v111 = v125;
        v60 = v232;
        if (v116)
        {
LABEL_36:
          *(v60[7] + v111) = 0;
          (*v106)(v230, v231);
          sub_23A6D4E28(v107, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
          goto LABEL_37;
        }

LABEL_45:
        v60[(v111 >> 6) + 8] |= 1 << v111;
        v118 = v228;
        v119 = v111;
        v121 = v230;
        v120 = v231;
        v108(v60[6] + *(v228 + 72) * v111, v230, v231);
        *(v60[7] + v119) = 0;
        v122 = v121;
        v107 = v222;
        (*(v118 + 8))(v122, v120);
        sub_23A6D4E28(v107, type metadata accessor for MobileDriversLicenseRawDataRequest.Element);
        v123 = v60[2];
        v77 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v77)
        {
          goto LABEL_110;
        }

        v60[2] = v124;
LABEL_37:
        ++v104;
        v102 = v226;
        if (v103 == v104)
        {
          goto LABEL_82;
        }
      }

      sub_23A69D350(v115, v110);
      v111 = sub_23A69CEA0(v230);
      if ((v116 & 1) != (v117 & 1))
      {
        goto LABEL_119;
      }

LABEL_44:
      v60 = v232;
      if (v116)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_82:

    v178 = v215;
    v179 = v214;
    v180 = v216;
    (*(v215 + 104))(v214, *MEMORY[0x277D43920], v216);

    v181 = v218;
    v182 = *v218;
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v232 = *v181;
    *v181 = 0x8000000000000000;
    sub_23A69D710(v60, v179, v183);
    (*(v178 + 8))(v179, v180);
    goto LABEL_83;
  }

  if (swift_dynamicCast())
  {
    v79 = v16;
    v214 = v29;
    v215 = v25;
    v216 = v24;
    v80 = v217;
    sub_23A6D4D5C(v23, v217);
    v81 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v82 = v79;
    v83 = v81;
    v222 = v82;
    v84 = *(v80 + *(v82 + 5));
    v229 = *(v84 + 16);
    if (v229)
    {
      v85 = 0;
      v224 = v84 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
      v230 = (v228 + 16);
      v223 = (v228 + 8);
      while (1)
      {
        if (v85 >= *(v84 + 16))
        {
          goto LABEL_105;
        }

        v86 = v226;
        sub_23A6D4DC0(v224 + v227[9] * v85, v226, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v87 = *v230;
        (*v230)(v43, v86, v231);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v233 = v83;
        v89 = sub_23A69CEA0(v43);
        v91 = v83[2];
        v92 = (v90 & 1) == 0;
        v77 = __OFADD__(v91, v92);
        v93 = v91 + v92;
        if (v77)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v94 = v90;
        if (v83[3] < v93)
        {
          break;
        }

        if (v88)
        {
          goto LABEL_29;
        }

        v101 = v89;
        sub_23A69DDB4();
        v89 = v101;
        v83 = v233;
        if (v94)
        {
LABEL_21:
          *(v83[7] + v89) = 1;
          (*v223)(v43, v231);
          sub_23A6D4E28(v226, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
          goto LABEL_22;
        }

LABEL_30:
        v83[(v89 >> 6) + 8] |= 1 << v89;
        v96 = v228;
        v97 = v89;
        v98 = v231;
        v87(v83[6] + *(v228 + 72) * v89, v43, v231);
        *(v83[7] + v97) = 1;
        (*(v96 + 8))(v43, v98);
        sub_23A6D4E28(v226, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v99 = v83[2];
        v77 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v77)
        {
          goto LABEL_113;
        }

        v83[2] = v100;
LABEL_22:
        if (v229 == ++v85)
        {
          goto LABEL_66;
        }
      }

      sub_23A69D350(v93, v88);
      v89 = sub_23A69CEA0(v43);
      if ((v94 & 1) != (v95 & 1))
      {
        goto LABEL_119;
      }

LABEL_29:
      v83 = v233;
      if (v94)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_66:
    v150 = *(v217 + *(v222 + 6));
    v230 = *(v150 + 16);
    if (v230)
    {
      v151 = 0;
      v229 = (v150 + ((*(v227 + 80) + 32) & ~*(v227 + 80)));
      v152 = (v228 + 16);
      v153 = (v228 + 8);
      while (1)
      {
        if (v151 >= *(v150 + 16))
        {
          goto LABEL_108;
        }

        v154 = v225;
        sub_23A6D4DC0(v229 + v227[9] * v151, v225, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v155 = *v152;
        (*v152)(v39, v154, v231);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v233 = v83;
        v157 = sub_23A69CEA0(v39);
        v159 = v83[2];
        v160 = (v158 & 1) == 0;
        v77 = __OFADD__(v159, v160);
        v161 = v159 + v160;
        if (v77)
        {
          goto LABEL_109;
        }

        v162 = v158;
        if (v83[3] < v161)
        {
          break;
        }

        if (v156)
        {
          goto LABEL_76;
        }

        v169 = v157;
        sub_23A69DDB4();
        v157 = v169;
        v83 = v233;
        if (v162)
        {
LABEL_68:
          *(v83[7] + v157) = 0;
          (*v153)(v39, v231);
          sub_23A6D4E28(v225, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
          goto LABEL_69;
        }

LABEL_77:
        v83[(v157 >> 6) + 8] |= 1 << v157;
        v164 = v228;
        v165 = v157;
        v166 = v231;
        v155((v83[6] + *(v228 + 72) * v157), v39, v231);
        *(v83[7] + v165) = 0;
        (*(v164 + 8))(v39, v166);
        sub_23A6D4E28(v225, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v167 = v83[2];
        v77 = __OFADD__(v167, 1);
        v168 = v167 + 1;
        if (v77)
        {
          goto LABEL_116;
        }

        v83[2] = v168;
LABEL_69:
        if (v230 == ++v151)
        {
          goto LABEL_81;
        }
      }

      sub_23A69D350(v161, v156);
      v157 = sub_23A69CEA0(v39);
      if ((v162 & 1) != (v163 & 1))
      {
        goto LABEL_119;
      }

LABEL_76:
      v83 = v233;
      if (v162)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_81:
    v170 = sub_23A6DE314();
    v171 = v214;
    v172 = v217;
    (*(*(v170 - 8) + 16))(v214, v217, v170);
    v173 = v215;
    v174 = v216;
    (*(v215 + 104))(v171, *MEMORY[0x277D43928], v216);

    v175 = v218;
    v176 = *v218;
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v233 = *v175;
    *v175 = 0x8000000000000000;
    sub_23A69D710(v83, v171, v177);
    (*(v173 + 8))(v171, v174);
    *v175 = v233;
    sub_23A6D4E28(v172, type metadata accessor for MobileNationalIDCardRawDataRequest);

    return __swift_destroy_boxed_opaque_existential_1Tm(v235);
  }

  if (!swift_dynamicCast())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v235);
  }

  v214 = v29;
  v215 = v25;
  v216 = v24;
  v126 = v233;
  v226 = v234;
  v127 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v128 = v126[2];
  v229 = v126;
  if (!v128)
  {
LABEL_85:
    v185 = v226;
    v186 = *(v226 + 16);
    if (!v186)
    {
LABEL_100:

      v208 = v215;
      v209 = v214;
      v210 = v216;
      (*(v215 + 104))(v214, *MEMORY[0x277D43930], v216);

      v181 = v218;
      v211 = *v218;
      v212 = swift_isUniquelyReferenced_nonNull_native();
      v232 = *v181;
      *v181 = 0x8000000000000000;
      sub_23A69D710(v127, v209, v212);
      (*(v208 + 8))(v209, v210);
LABEL_83:

      *v181 = v232;
      return __swift_destroy_boxed_opaque_existential_1Tm(v235);
    }

    v187 = 0;
    v230 = (v226 + ((*(v221 + 80) + 32) & ~*(v221 + 80)));
    v188 = (v228 + 16);
    v189 = (v228 + 8);
    while (1)
    {
      if (v187 >= *(v185 + 16))
      {
        goto LABEL_114;
      }

      v190 = v219;
      sub_23A6D4DC0(v230 + *(v221 + 72) * v187, v219, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      v191 = *v188;
      v192 = v223;
      (*v188)(v223, v190, v231);
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v232 = v127;
      v194 = sub_23A69CEA0(v192);
      v196 = v127[2];
      v197 = (v195 & 1) == 0;
      v77 = __OFADD__(v196, v197);
      v198 = v196 + v197;
      if (v77)
      {
        goto LABEL_115;
      }

      v199 = v195;
      if (v127[3] < v198)
      {
        break;
      }

      if (v193)
      {
        goto LABEL_95;
      }

      v207 = v194;
      sub_23A69DDB4();
      v194 = v207;
      v127 = v232;
      if (v199)
      {
LABEL_87:
        *(v127[7] + v194) = 0;
        (*v189)(v223, v231);
        sub_23A6D4E28(v219, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
        goto LABEL_88;
      }

LABEL_96:
      v127[(v194 >> 6) + 8] |= 1 << v194;
      v201 = v228;
      v202 = v194;
      v203 = v223;
      v204 = v231;
      v191((v127[6] + *(v228 + 72) * v194), v223, v231);
      *(v127[7] + v202) = 0;
      (*(v201 + 8))(v203, v204);
      sub_23A6D4E28(v219, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      v205 = v127[2];
      v77 = __OFADD__(v205, 1);
      v206 = v205 + 1;
      if (v77)
      {
        goto LABEL_118;
      }

      v127[2] = v206;
      v185 = v226;
LABEL_88:
      if (v186 == ++v187)
      {
        goto LABEL_100;
      }
    }

    sub_23A69D350(v198, v193);
    v194 = sub_23A69CEA0(v223);
    if ((v199 & 1) != (v200 & 1))
    {
      goto LABEL_119;
    }

LABEL_95:
    v127 = v232;
    if (v199)
    {
      goto LABEL_87;
    }

    goto LABEL_96;
  }

  v129 = 0;
  v130 = v126 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
  v230 = (v228 + 16);
  v227 = (v228 + 8);
  while (1)
  {
    if (v129 >= v229[2])
    {
      goto LABEL_111;
    }

    v131 = v220;
    sub_23A6D4DC0(v130 + *(v221 + 72) * v129, v220, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
    v132 = *v230;
    v133 = v224;
    (*v230)(v224, v131, v231);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v232 = v127;
    v135 = sub_23A69CEA0(v133);
    v137 = v127[2];
    v138 = (v136 & 1) == 0;
    v77 = __OFADD__(v137, v138);
    v139 = v137 + v138;
    if (v77)
    {
      break;
    }

    v140 = v136;
    if (v127[3] < v139)
    {
      sub_23A69D350(v139, v134);
      v135 = sub_23A69CEA0(v224);
      if ((v140 & 1) != (v141 & 1))
      {
        goto LABEL_119;
      }

LABEL_61:
      v127 = v232;
      if (v140)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (v134)
    {
      goto LABEL_61;
    }

    v149 = v135;
    sub_23A69DDB4();
    v135 = v149;
    v127 = v232;
    if (v140)
    {
LABEL_53:
      *(v127[7] + v135) = 1;
      (*v227)(v224, v231);
      sub_23A6D4E28(v220, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
      goto LABEL_54;
    }

LABEL_62:
    v142 = v130;
    v127[(v135 >> 6) + 8] |= 1 << v135;
    v143 = v228;
    v144 = v135;
    v145 = v224;
    v146 = v231;
    v132(v127[6] + *(v228 + 72) * v135, v224, v231);
    *(v127[7] + v144) = 1;
    (*(v143 + 8))(v145, v146);
    sub_23A6D4E28(v220, type metadata accessor for MobilePhotoIDRawDataRequest.Element);
    v147 = v127[2];
    v77 = __OFADD__(v147, 1);
    v148 = v147 + 1;
    if (v77)
    {
      goto LABEL_117;
    }

    v127[2] = v148;
    v130 = v142;
LABEL_54:
    if (v128 == ++v129)
    {
      goto LABEL_85;
    }
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6D4D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D4DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6D4E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6D4E8C()
{
  result = qword_27DF9D548;
  if (!qword_27DF9D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D548);
  }

  return result;
}

unint64_t sub_23A6D4EE0(uint64_t a1)
{
  result = sub_23A6D4F08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D4F08()
{
  result = qword_27DF9D550;
  if (!qword_27DF9D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D550);
  }

  return result;
}

unint64_t sub_23A6D4F60()
{
  result = qword_27DF9D558;
  if (!qword_27DF9D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D558);
  }

  return result;
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

uint64_t static MobileDocumentAnyOfRawDataRequest.Response.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileDocumentAnyOfRawDataRequest.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D515C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D51C4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t sub_23A6D5214()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D5278(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

unint64_t sub_23A6D52F4()
{
  result = qword_27DF9D560;
  if (!qword_27DF9D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D560);
  }

  return result;
}

uint64_t sub_23A6D5348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23A6D539C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobileDriversLicenseRawDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDriversLicenseRawDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D5508(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D5508(v2, v3);
}

uint64_t sub_23A6D5508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6D58A4(v16, v13);
        sub_23A6D58A4(v17, v8);
        sub_23A6D6114(&qword_27DF9D588);
        v19 = sub_23A6DF604();
        sub_23A6D5908(v8);
        sub_23A6D5908(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDriversLicenseRawDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6D58A4(v14, v10);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6D58A4(v18, v5);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      result = sub_23A6D5908(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6D58A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D5908(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseRawDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6D58A4(v14, v10);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6D58A4(v17, v6);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D5B5C()
{
  v1 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6D58A4(v14, v10);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6D58A4(v18, v5);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      result = sub_23A6D5908(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6D5D48()
{
  v1 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6D58A4(v14, v10);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6D58A4(v17, v6);
      sub_23A6D6114(&qword_27DF9D568);
      sub_23A6DF5E4();
      sub_23A6D5908(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D5F40(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D5508(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D5508(v2, v3);
}

uint64_t static MobileDocumentRequest<>.driversLicenseRawData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6D5FDC()
{
  result = qword_27DF9D570;
  if (!qword_27DF9D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D570);
  }

  return result;
}

unint64_t sub_23A6D6030(uint64_t a1)
{
  result = sub_23A6D6058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D6058()
{
  result = qword_27DF9D578;
  if (!qword_27DF9D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D578);
  }

  return result;
}

unint64_t sub_23A6D60B0()
{
  result = qword_27DF9D580;
  if (!qword_27DF9D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D580);
  }

  return result;
}

uint64_t sub_23A6D6114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MobileDriversLicenseRawDataRequest.Element()
{
  result = qword_27DFA5230;
  if (!qword_27DFA5230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D65A8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}