uint64_t AccessibilitySoundRecognition.Detection.description.getter()
{
  v1 = sub_23D6857B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0);
  return sub_23D662ED4(v4);
}

uint64_t sub_23D6647C0(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  return sub_23D662ED4(v3);
}

unint64_t sub_23D664A14()
{
  result = qword_27E2E04E0;
  if (!qword_27E2E04E0)
  {
    type metadata accessor for AXSDSoundDetectionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E04E0);
  }

  return result;
}

uint64_t sub_23D664AC8()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_23D664B78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_23D664BD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id AXSASecureControllerImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSASecureControllerImplementation.init()()
{
  v1 = v0;
  v2 = sub_23D685860();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask] = 0;
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate] = 0;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27E2E08B0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23D685850();
  v9 = sub_23D685A50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23D62D000, v8, v9, "Initializing Secure Sound Actions Controller", v10, 2u);
    MEMORY[0x23EEE7580](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for AXSASecureControllerImplementation();
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_23D664FBC()
{
  v1 = v0;
  v2 = sub_23D685860();
  v71 = *(v2 - 8);
  v3 = v71[8];
  v4 = MEMORY[0x28223BE20](v2);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask;
  if (*&v1[OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask])
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_27E2E08B0);
    swift_beginAccess();
    v13 = v71 + 2;
    v66 = v71[2];
    v66(v8, v12, v2);
    v14 = v1;
    v15 = sub_23D685850();
    v16 = sub_23D685A70();

    LODWORD(v69) = v16;
    v17 = os_log_type_enabled(v15, v16);
    v65 = v14;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v64 = v13;
      v19 = v18;
      v20 = swift_slowAlloc();
      v72 = v20;
      *v19 = 136315138;
      v21 = v14;
      v67 = v1;
      v22 = v21;
      v23 = v11;
      v24 = [v21 description];
      v25 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v68 = v2;
      v26 = v25;
      v27 = v12;
      v29 = v28;

      v1 = v67;
      v11 = v23;
      v30 = sub_23D652534(v26, v29, &v72);
      v12 = v27;

      *(v19 + 4) = v30;
      v2 = v68;
      _os_log_impl(&dword_23D62D000, v15, v69, "[%s]: sound actions will stop listening.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EEE7580](v20, -1, -1);
      MEMORY[0x23EEE7580](v19, -1, -1);
    }

    v31 = v71[1];
    v31(v8, v2);
    if (*&v1[v11])
    {
      v32 = *&v1[v11];

      if ((swift_task_isCancelled() & 1) == 0)
      {
        v66(v70, v12, v2);
        v33 = v65;
        v34 = sub_23D685850();
        v35 = sub_23D685A70();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v69 = v11;
          v37 = v36;
          v38 = swift_slowAlloc();
          v67 = v1;
          v39 = v38;
          v72 = v38;
          *v37 = 136315138;
          v40 = v33;
          v68 = v2;
          v41 = v40;
          v42 = [v40 description];
          v43 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
          v45 = v44;

          v46 = sub_23D652534(v43, v45, &v72);

          *(v37 + 4) = v46;
          _os_log_impl(&dword_23D62D000, v34, v35, "[%s]: sound actions cancelled current task.", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          v1 = v67;
          MEMORY[0x23EEE7580](v39, -1, -1);
          v47 = v37;
          v11 = v69;
          MEMORY[0x23EEE7580](v47, -1, -1);

          v48 = v70;
          v49 = v68;
        }

        else
        {

          v48 = v70;
          v49 = v2;
        }

        v31(v48, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
        sub_23D6859F0();
      }
    }

    v63 = *&v1[v11];
    *&v1[v11] = 0;
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v2, qword_27E2E08B0);
    swift_beginAccess();
    (v71[2])(v10, v50, v2);
    v51 = v1;
    v52 = sub_23D685850();
    v53 = sub_23D685A70();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v72 = v55;
      *v54 = 136315138;
      v56 = v51;
      v57 = [v56 description];
      v58 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v60 = v59;

      v61 = sub_23D652534(v58, v60, &v72);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_23D62D000, v52, v53, "[%s]: sound actions has already stopped listening.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23EEE7580](v55, -1, -1);
      MEMORY[0x23EEE7580](v54, -1, -1);
    }

    return (v71[1])(v10, v2);
  }
}

uint64_t sub_23D665654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_23D685C60();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = sub_23D685C70();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = sub_23D685860();
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = sub_23D6857D0();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0788, &qword_23D689740) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0790, &qword_23D689748);
  v4[27] = v18;
  v19 = *(v18 - 8);
  v4[28] = v19;
  v20 = *(v19 + 64) + 15;
  v4[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0798, qword_23D689750);
  v4[30] = v21;
  v22 = *(v21 - 8);
  v4[31] = v22;
  v23 = *(v22 + 64) + 15;
  v4[32] = swift_task_alloc();
  v24 = sub_23D685810();
  v4[33] = v24;
  v25 = *(v24 - 8);
  v4[34] = v25;
  v26 = *(v25 + 64) + 15;
  v4[35] = swift_task_alloc();
  v27 = sub_23D6857F0();
  v4[36] = v27;
  v28 = *(v27 - 8);
  v4[37] = v28;
  v29 = *(v28 + 64) + 15;
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D665A00, 0, 0);
}

uint64_t sub_23D665A00()
{
  v1 = sub_23D685A00();
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[35];
    v4 = v0[32];
    v5 = v0[29];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[15];
    v19 = v0[14];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[38];
    sub_23D6857E0();
    v15 = *(MEMORY[0x277CDC8D0] + 4);
    v16 = swift_task_alloc();
    v0[39] = v16;
    *v16 = v0;
    v16[1] = sub_23D665B90;
    v17 = v0[38];
    v18 = v0[35];

    return MEMORY[0x28212BAD0](v18, v17);
  }
}

uint64_t sub_23D665B90()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_23D666CD4;
  }

  else
  {
    v3 = sub_23D665CA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D665CA4()
{
  v1 = v0[35];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_23D685800();
  sub_23D685820();
  v5 = sub_23D667EE4();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_23D665D78;
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23D665D78()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_23D666414;
  }

  else
  {
    v3 = sub_23D665E8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D665E8C()
{
  v71 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);
    sub_23D685D50();
    *(v0 + 64) = xmmword_23D6896C0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v19 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928]);
    sub_23D685D30();
    sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8]);
    sub_23D685C80();
    v20 = *(v17 + 8);
    *(v0 + 368) = v20;
    *(v0 + 376) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v18);
    v21 = *(MEMORY[0x277D85A58] + 4);
    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    *v22 = v0;
    v22[1] = sub_23D666A68;
    v23 = *(v0 + 144);
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);

    return MEMORY[0x2822008C8](v25, v0 + 40, v24, v19);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 200), v1, v2);
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 192);
    v27 = *(v0 + 200);
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v0 + 88);
    v34 = __swift_project_value_buffer(v32, qword_27E2E08B0);
    swift_beginAccess();
    (*(v31 + 16))(v30, v34, v32);
    (*(v29 + 16))(v26, v27, v28);
    v35 = v33;
    v36 = sub_23D685850();
    v37 = sub_23D685A70();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 192);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    v42 = *(v0 + 152);
    v43 = (*(v0 + 160) + 8);
    v44 = (*(v0 + 184) + 8);
    if (v38)
    {
      v69 = *(v0 + 168);
      v45 = *(v0 + 88);
      v68 = (*(v0 + 160) + 8);
      v46 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v46 = 136315394;
      v65 = v41;
      v47 = v45;
      v48 = [v47 description];
      v66 = v42;
      v49 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v51 = v50;

      v52 = sub_23D652534(v49, v51, &v70);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      v53 = sub_23D6857C0();
      v55 = v54;
      v56 = *v44;
      (*v44)(v39, v65);
      v57 = sub_23D652534(v53, v55, &v70);

      *(v46 + 14) = v57;
      _os_log_impl(&dword_23D62D000, v36, v37, "[%s]: Detected Sound Action event: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v67, -1, -1);
      MEMORY[0x23EEE7580](v46, -1, -1);

      (*v68)(v69, v66);
    }

    else
    {

      v56 = *v44;
      (*v44)(v39, v41);
      (*v43)(v40, v42);
    }

    *(v0 + 344) = v56;
    v58 = *(v0 + 200);
    v59 = sub_23D6857C0();
    v61 = v60;
    *(v0 + 352) = v60;
    v62 = swift_task_alloc();
    *(v0 + 360) = v62;
    *v62 = v0;
    v62[1] = sub_23D66688C;
    v63 = *(v0 + 88);

    return sub_23D667064(v59, v61);
  }
}

uint64_t sub_23D666414()
{
  *(v0 + 80) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D6664A8, 0, 0);
}

uint64_t sub_23D6664A8()
{
  v40 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 336);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 152), qword_27E2E0868);
  v9 = v8;
  v10 = v7;
  v11 = sub_23D685850();
  v12 = sub_23D685A70();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 88);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v14 = 136315394;
    v16 = v13;
    v17 = [v16 description];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    v21 = sub_23D652534(v18, v20, &v39);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    v22 = v7;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v23;
    *v15 = v23;
    _os_log_impl(&dword_23D62D000, v11, v12, "[%s]: session failed with %@", v14, 0x16u);
    sub_23D654530(v15);
    MEMORY[0x23EEE7580](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x23EEE7580](v38, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 144);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 64) = xmmword_23D6896C0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v30 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v31 = *(v28 + 8);
  *(v0 + 368) = v31;
  *(v0 + 376) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v29);
  v32 = *(MEMORY[0x277D85A58] + 4);
  v33 = swift_task_alloc();
  *(v0 + 384) = v33;
  *v33 = v0;
  v33[1] = sub_23D666A68;
  v34 = *(v0 + 144);
  v36 = *(v0 + 120);
  v35 = *(v0 + 128);

  return MEMORY[0x2822008C8](v36, v0 + 40, v35, v30);
}

uint64_t sub_23D66688C()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23D6669A4, 0, 0);
}

uint64_t sub_23D6669A4()
{
  v1 = *(v0 + 184) + 8;
  (*(v0 + 344))(*(v0 + 200), *(v0 + 176));
  v2 = sub_23D667EE4();
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_23D665D78;
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);

  return MEMORY[0x282200308](v6, v7, v2);
}

uint64_t sub_23D666A68()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v10 = *v1;
  *(*v1 + 392) = v0;

  v4 = *(v2 + 376);
  if (v0)
  {
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    v5 = sub_23D666BC0;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 128);
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    (*(v7 + 8))(v6, v8);
    v5 = sub_23D667F48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23D666BC0()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[15];
  v13 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v10 = v0[1];
  v11 = v0[49];

  return v10();
}

uint64_t sub_23D666CD4()
{
  v34 = v0;
  v1 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 152), qword_27E2E0868);
  v3 = v2;
  v4 = v1;
  v5 = sub_23D685850();
  v6 = sub_23D685A70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v14 = v13;

    v15 = sub_23D652534(v12, v14, &v33);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_23D62D000, v5, v6, "[%s]: session failed with %@", v8, 0x16u);
    sub_23D654530(v9);
    MEMORY[0x23EEE7580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23EEE7580](v32, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  v23 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 64) = xmmword_23D6896C0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v24 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v25 = *(v22 + 8);
  *(v0 + 368) = v25;
  *(v0 + 376) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v23);
  v26 = *(MEMORY[0x277D85A58] + 4);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  v27[1] = sub_23D666A68;
  v28 = *(v0 + 144);
  v30 = *(v0 + 120);
  v29 = *(v0 + 128);

  return MEMORY[0x2822008C8](v30, v0 + 40, v29, v24);
}

uint64_t sub_23D667064(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_23D685860();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D667134, 0, 0);
}

uint64_t sub_23D667134()
{
  v51 = v0;
  v1 = v0[11];
  v2 = v0[12];

  v3 = sub_23D66ACD4();
  if (v3 == 14)
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    v8 = __swift_project_value_buffer(v6, qword_27E2E08B0);
    swift_beginAccess();
    (*(v5 + 16))(v4, v8, v6);

    v9 = sub_23D685850();
    v10 = sub_23D685A60();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    if (v11)
    {
      v16 = v0[11];
      v15 = v0[12];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v50 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_23D652534(v16, v15, &v50);
      _os_log_impl(&dword_23D62D000, v9, v10, "no sound action type found for identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23EEE7580](v18, -1, -1);
      MEMORY[0x23EEE7580](v17, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v19 = v3;
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v20 = v0[17];
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[13];
    v24 = __swift_project_value_buffer(v21, qword_27E2E08B0);
    swift_beginAccess();
    (*(v22 + 16))(v20, v24, v21);
    v25 = v23;
    v26 = sub_23D685850();
    v27 = sub_23D685A70();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[17];
    v30 = v0[14];
    v31 = v0[15];
    if (v28)
    {
      v49 = v0[17];
      v32 = v0[13];
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = v48;
      *v33 = 136315394;
      v34 = v32;
      v35 = [v34 description];
      v36 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v47 = v30;
      v38 = v37;

      v39 = sub_23D652534(v36, v38, &v50);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v19 + 1;
      _os_log_impl(&dword_23D62D000, v26, v27, "[%s]: posting voice trigger event to system: %ld", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EEE7580](v48, -1, -1);
      MEMORY[0x23EEE7580](v33, -1, -1);

      (*(v31 + 8))(v49, v47);
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }

    v40 = v0[13];
    v41 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
    swift_beginAccess();
    v42 = *(v40 + v41);
    if (v42)
    {
      [v42 postEventToSystemWithSoundActionEvent_];
    }
  }

  v44 = v0[16];
  v43 = v0[17];

  v45 = v0[1];

  return v45();
}

id AXSASecureControllerImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSASecureControllerImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D6675F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49[-v4];
  v6 = sub_23D685860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v49[-v12];
  v14 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask;
  if (*&v1[OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask])
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_27E2E08B0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v15, v6);
    v16 = v1;
    v17 = sub_23D685850();
    v18 = sub_23D685A70();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      v23 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v54 = v6;
      v24 = v23;
      v26 = v25;

      v27 = sub_23D652534(v24, v26, &v55);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_23D62D000, v17, v18, "[%s]: sound actions is already listening.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EEE7580](v20, -1, -1);
      MEMORY[0x23EEE7580](v19, -1, -1);

      return (*(v7 + 8))(v13, v54);
    }

    else
    {

      return (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v6, qword_27E2E08B0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v29, v6);
    v30 = v1;
    v31 = sub_23D685850();
    v32 = sub_23D685A70();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = v33;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v33 = 136315138;
      v34 = v30;
      v35 = [v34 description];
      v54 = v6;
      v36 = v35;
      v37 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v53 = v30;
      v38 = v37;
      v50 = v32;
      v40 = v39;

      v41 = sub_23D652534(v38, v40, &v55);

      v42 = v51;
      *(v51 + 1) = v41;
      v30 = v53;
      _os_log_impl(&dword_23D62D000, v31, v50, "[%s]: sound actions will start listening.", v42, 0xCu);
      v43 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23EEE7580](v43, -1, -1);
      MEMORY[0x23EEE7580](v42, -1, -1);

      (*(v7 + 8))(v11, v54);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v44 = sub_23D6859E0();
    (*(*(v44 - 8) + 56))(v5, 1, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v30;
    v46 = v30;
    v47 = sub_23D66FF48(0, 0, v5, &unk_23D689738, v45);
    v48 = *&v1[v14];
    *&v1[v14] = v47;
  }
}

uint64_t sub_23D667CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D667DA8;

  return sub_23D665654(a1, v4, v5, v6);
}

uint64_t sub_23D667DA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D667E9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D667EE4()
{
  result = qword_27E2E07B0;
  if (!qword_27E2E07B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E0790, &qword_23D689748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E07B0);
  }

  return result;
}

uint64_t sub_23D667FA8()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_23D668058(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_23D6680B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_23D66821C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldBeListeningForSoundActions];

  return v1;
}

id AXSANSControllerImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AXSANSControllerImplementation.init()()
{
  v15 = sub_23D685A90();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D685A80();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23D6858A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate] = 0;
  v9 = [objc_allocWithZone(AXSDVoiceTriggerModelManager) initWithError_];
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] = v9;
  v10 = sub_23D657498();
  v14[0] = "ionsControllerDelegate_>16";
  v14[1] = v10;
  sub_23D685890();
  v17 = MEMORY[0x277D84F90];
  sub_23D66AC50(&unk_27E2E06A0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E07E0, &qword_23D6894B0);
  sub_23D661CB0(&qword_27E2E06B0, &unk_27E2E07E0, &qword_23D6894B0);
  sub_23D685B10();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v15);
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue] = sub_23D685AC0();
  v11 = type metadata accessor for AXSANSControllerImplementation();
  v16.receiver = v0;
  v16.super_class = v11;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  [*&v12[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] setDelegate_];
  return v12;
}

void sub_23D668610(char *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v74 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v82 = v4[2];
  v83 = v4 + 2;
  v82(v12, v13, v3);
  v14 = a1;
  v15 = v1;
  v16 = v14;
  v17 = sub_23D685850();
  v18 = sub_23D685A70();

  LODWORD(v80) = v18;
  v19 = os_log_type_enabled(v17, v18);
  v84 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v79 = v4;
    v21 = v20;
    v76 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v86 = v22;
    *v21 = 136315394;
    v23 = v15;
    v75 = v17;
    v24 = v23;
    v25 = [v23 description];
    v26 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v77 = v16;
    v78 = v15;
    v27 = v13;
    v28 = a1;
    v29 = v10;
    v30 = v3;
    v31 = v26;
    v33 = v32;

    v34 = v31;
    v3 = v30;
    v10 = v29;
    a1 = v28;
    v13 = v27;
    v15 = v78;
    v35 = sub_23D652534(v34, v33, &v86);
    v16 = v77;

    *(v21 + 4) = v35;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    v36 = v76;
    *v76 = a1;
    v37 = v16;
    v17 = v75;
    _os_log_impl(&dword_23D62D000, v75, v80, "[%s]: start listening with queue: %@", v21, 0x16u);
    sub_23D654530(v36);
    MEMORY[0x23EEE7580](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EEE7580](v22, -1, -1);
    v38 = v21;
    v4 = v79;
    MEMORY[0x23EEE7580](v38, -1, -1);
  }

  v39 = v4[1];
  v39(v84, v3);
  v40 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  if ([*&v15[v40] containsListenDelegate_] && (objc_msgSend(*&v15[v40], sel_isListening) & 1) != 0)
  {
    v82(v81, v13, v3);
    v41 = v15;
    v42 = sub_23D685850();
    v43 = sub_23D685A70();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v39;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v85 = v46;
      *v45 = 136315138;
      v47 = v41;
      v48 = [v47 description];
      v49 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v84 = v3;
      v51 = v50;

      v52 = sub_23D652534(v49, v51, &v85);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_23D62D000, v42, v43, "[%s]: Sound Actions is already listening. startListening is a no-op.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23EEE7580](v46, -1, -1);
      MEMORY[0x23EEE7580](v45, -1, -1);

      v44(v81, v84);
    }

    else
    {

      v39(v81, v3);
    }
  }

  else
  {
    v53 = &unk_27E2E0000;
    if (a1)
    {
      v81 = a1;
      v82(v10, v13, v3);
      v54 = v15;
      v55 = v16;
      v56 = sub_23D685850();
      v57 = sub_23D685A70();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v79 = v4;
        v59 = v58;
        v60 = swift_slowAlloc();
        v83 = v10;
        v78 = v60;
        v82 = swift_slowAlloc();
        v85 = v82;
        *v59 = 136315394;
        v61 = v54;
        v62 = v55;
        v63 = [v61 description];
        v64 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v84 = v3;
        v65 = v64;
        v80 = v39;
        v67 = v66;

        v55 = v62;
        v68 = sub_23D652534(v65, v67, &v85);

        *(v59 + 4) = v68;
        v53 = &unk_27E2E0000;
        *(v59 + 12) = 2112;
        *(v59 + 14) = v62;
        v69 = v78;
        *v78 = v81;
        v70 = v62;
        _os_log_impl(&dword_23D62D000, v56, v57, "[%s]: updating dispatch queue to: %@", v59, 0x16u);
        sub_23D654530(v69);
        MEMORY[0x23EEE7580](v69, -1, -1);
        v71 = v82;
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x23EEE7580](v71, -1, -1);
        MEMORY[0x23EEE7580](v59, -1, -1);

        v80(v83, v84);
      }

      else
      {

        v39(v10, v3);
      }

      v72 = v53[254];
      v73 = *&v54[v72];
      *&v54[v72] = v55;
    }

    [*&v15[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] setProcessingQueue_];
    sub_23D653BB0(v15, v15);
  }
}

uint64_t sub_23D668D70()
{
  v1 = sub_23D685880();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23D6858A0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D656FB8(v0, v0);
  v9 = *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_23D66AC1C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  sub_23D685890();
  v18 = MEMORY[0x277D84F90];
  sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v8, v4, v11);
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_23D66908C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate);

  return swift_unknownObjectRelease();
}

id AXSANSControllerImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSANSControllerImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AXSANSControllerImplementation.receivedBuffer(_:at:)(AVAudioPCMBuffer _, AVAudioTime *at)
{
  impl = _.super._impl;
  isa = _.super.super.isa;
  v5 = sub_23D685880();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D6858A0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = isa;
  v14[4] = impl;
  aBlock[4] = sub_23D66AC98;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_6_0;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;
  v18 = isa;
  v19 = impl;
  sub_23D685890();
  v23 = MEMORY[0x277D84F90];
  sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v12, v8, v15);
  _Block_release(v15);

  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

Swift::Void __swiftcall AXSANSControllerImplementation.listenEngineDidStart(withInputFormat:)(AVAudioFormat_optional *withInputFormat)
{
  v3 = sub_23D685880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6858A0();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D685860();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  if (withInputFormat)
  {
    v62 = v7;
    v63 = v8;
    v65 = v3;
    v19 = qword_27E2E03E8;
    v20 = withInputFormat;
    if (v19 != -1)
    {
      swift_once();
    }

    v64 = v4;
    v21 = __swift_project_value_buffer(v11, qword_27E2E08B0);
    swift_beginAccess();
    (*(v12 + 16))(v18, v21, v11);
    v22 = v1;
    v23 = sub_23D685850();
    v24 = sub_23D685A70();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v25 = 136315138;
      v26 = v22;
      v27 = [v26 description];
      v61 = v11;
      v28 = v27;
      v29 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v60 = v20;
      v30 = v12;
      v31 = v29;
      v33 = v32;

      v34 = sub_23D652534(v31, v33, aBlock);

      *(v25 + 4) = v34;
      _os_log_impl(&dword_23D62D000, v23, v24, "[%s]: listen engine did start", v25, 0xCu);
      v35 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x23EEE7580](v35, -1, -1);
      MEMORY[0x23EEE7580](v25, -1, -1);

      (*(v30 + 8))(v18, v61);
      v20 = v60;
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    v50 = *&v22[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
    v51 = swift_allocObject();
    *(v51 + 16) = v22;
    *(v51 + 24) = v20;
    aBlock[4] = sub_23D66ACB8;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D650AF8;
    aBlock[3] = &block_descriptor_12_0;
    v52 = _Block_copy(aBlock);
    v53 = v20;
    v54 = v22;
    v55 = v50;
    v56 = v66;
    sub_23D685890();
    v68 = MEMORY[0x277D84F90];
    sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
    sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
    v57 = v62;
    v58 = v65;
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v56, v57, v52);
    _Block_release(v52);

    (*(v64 + 8))(v57, v58);
    (*(v67 + 8))(v56, v63);
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v11, qword_27E2E08B0);
    swift_beginAccess();
    (*(v12 + 16))(v16, v36, v11);
    v37 = v1;
    v38 = sub_23D685850();
    v39 = sub_23D685A60();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = v11;
      v41 = v40;
      v42 = swift_slowAlloc();
      v67 = v12;
      v43 = v42;
      v70[0] = v42;
      *v41 = 136315138;
      v44 = v37;
      v45 = [v44 description];
      v46 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v48 = v47;

      v49 = sub_23D652534(v46, v48, v70);

      *(v41 + 4) = v49;
      _os_log_impl(&dword_23D62D000, v38, v39, "[%s]: listen engine did not return an audio format - this should NOT happen; bailing. File a radar!", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23EEE7580](v43, -1, -1);
      MEMORY[0x23EEE7580](v41, -1, -1);

      (*(v67 + 8))(v16, v61);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    sub_23D668D70();
  }
}

uint64_t AXSANSControllerImplementation.listenEngineFailedToStartWithError(_:)(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v75 = v4[2];
  v76 = v14;
  v75(v13, v14, v3);
  v15 = v1;
  v16 = a1;
  v17 = v15;
  v18 = sub_23D685850();
  v19 = sub_23D685A60();

  v20 = os_log_type_enabled(v18, v19);
  v77 = v3;
  if (v20)
  {
    v72 = v8;
    v73 = v11;
    v74 = v4;
    v21 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v78 = v70;
    *v21 = 136315394;
    v71 = v17;
    v22 = v17;
    v23 = a1;
    v24 = [v22 description];
    v25 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v27 = v26;

    a1 = v23;
    v28 = sub_23D652534(v25, v27, &v78);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2112;
    if (v23)
    {
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v3 = v77;
    v4 = v74;
    *(v21 + 14) = v30;
    v53 = v69;
    *v69 = v31;
    _os_log_impl(&dword_23D62D000, v18, v19, "[%s]: listen engine failed to start: %@", v21, 0x16u);
    sub_23D654530(v53);
    MEMORY[0x23EEE7580](v53, -1, -1);
    v54 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x23EEE7580](v54, -1, -1);
    MEMORY[0x23EEE7580](v21, -1, -1);

    v32 = v4[1];
    v32(v13, v3);
    v8 = v72;
    v11 = v73;
    v17 = v71;
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v32 = v4[1];
    v32(v13, v3);
    if (!a1)
    {
LABEL_12:
      v75(v8, v76, v3);
      v55 = v17;
      v56 = sub_23D685850();
      v57 = sub_23D685A60();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v78 = v59;
        *v58 = 136315138;
        v60 = v55;
        v61 = [v60 description];
        v62 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v76 = v32;
        v63 = v62;
        v65 = v64;

        v66 = sub_23D652534(v63, v65, &v78);

        *(v58 + 4) = v66;
        _os_log_impl(&dword_23D62D000, v56, v57, "[%s]: listen engine failed to start.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x23EEE7580](v59, -1, -1);
        MEMORY[0x23EEE7580](v58, -1, -1);

        v51 = v8;
        return v76(v51, v77);
      }

      v52 = v8;
      return (v32)(v52, v3);
    }
  }

  v75(v11, v76, v3);
  v33 = v17;
  v34 = a1;
  v35 = sub_23D685850();
  v36 = sub_23D685A60();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v74 = v4;
    v39 = v38;
    v40 = swift_slowAlloc();
    v73 = v11;
    v41 = v40;
    v78 = v40;
    *v37 = 136315394;
    v42 = v33;
    v43 = [v42 description];
    v44 = a1;
    v45 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v76 = v32;
    v47 = v46;

    v48 = sub_23D652534(v45, v47, &v78);

    *(v37 + 4) = v48;
    *(v37 + 12) = 2112;
    v49 = v44;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v50;
    *v39 = v50;
    _os_log_impl(&dword_23D62D000, v35, v36, "[%s]: listen engine failed to start with error: %@", v37, 0x16u);
    sub_23D654530(v39);
    MEMORY[0x23EEE7580](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23EEE7580](v41, -1, -1);
    MEMORY[0x23EEE7580](v37, -1, -1);

    v51 = v73;
    return v76(v51, v77);
  }

  v52 = v11;
  return (v32)(v52, v3);
}

uint64_t AXSANSControllerImplementation.receivedError(_:fromDetector:)(void *a1, void *a2)
{
  v5 = sub_23D685860();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27E2E08B0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = v2;
  v12 = a2;
  v13 = a1;
  v14 = sub_23D685850();
  v15 = sub_23D685A60();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v16 = 136315650;
    v18 = v11;
    v19 = [v18 description];
    HIDWORD(v31) = v15;
    v20 = v19;
    v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v32 = v6;
    v33 = v5;
    v22 = v21;
    v24 = v23;

    v25 = sub_23D652534(v22, v24, &v35);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    *(v16 + 22) = 2112;
    v26 = v12;
    v27 = a1;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v28;
    v17[1] = v28;
    _os_log_impl(&dword_23D62D000, v14, BYTE4(v31), "[%s]: received error for sound action: %@. error: %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v17, -1, -1);
    v29 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23EEE7580](v29, -1, -1);
    MEMORY[0x23EEE7580](v16, -1, -1);

    return (*(v32 + 8))(v9, v33);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t AXSANSControllerImplementation.listeningStoppedWithError(_:)(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  if (a1)
  {
    v11 = a1;
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_27E2E08B0);
    swift_beginAccess();
    (*(v4 + 16))(v10, v12, v3);
    v13 = a1;
    v14 = v1;
    v15 = sub_23D685850();
    v16 = sub_23D685A60();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = v4;
      v19 = v18;
      v45 = swift_slowAlloc();
      v48 = v45;
      *v17 = 136315394;
      v20 = v14;
      v21 = [v20 description];
      v46 = v3;
      v22 = v21;
      v23 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v25 = v24;

      v26 = sub_23D652534(v23, v25, &v48);

      *(v17 + 4) = v26;
      *(v17 + 12) = 2112;
      v27 = a1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v28;
      *v19 = v28;
      _os_log_impl(&dword_23D62D000, v15, v16, "[%s]: listen stopped with error: %@", v17, 0x16u);
      sub_23D654530(v19);
      MEMORY[0x23EEE7580](v19, -1, -1);
      v29 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23EEE7580](v29, -1, -1);
      MEMORY[0x23EEE7580](v17, -1, -1);

      return (v47[1])(v10, v46);
    }

    else
    {

      return (*(v4 + 8))(v10, v3);
    }
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v3, qword_27E2E08B0);
    swift_beginAccess();
    (*(v4 + 16))(v8, v31, v3);
    v32 = v1;
    v33 = sub_23D685850();
    v34 = sub_23D685A40();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v35 = 136315138;
      v36 = v32;
      v37 = [v36 description];
      v38 = v4;
      v39 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v41 = v40;

      v42 = sub_23D652534(v39, v41, &v48);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_23D62D000, v33, v34, "[%s]: listen engine stopped.", v35, 0xCu);
      v43 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23EEE7580](v43, -1, -1);
      MEMORY[0x23EEE7580](v35, -1, -1);

      return (*(v38 + 8))(v8, v3);
    }

    else
    {

      return (*(v4 + 8))(v8, v3);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D66AC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D66ACD4()
{
  v0 = sub_23D685CE0();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

id _s18AXSoundDetectionUI30AXSANSControllerImplementationC19receivedObservation_11forDetectorySo20SNSoundActionsResultC_So20SNDetectSoundRequestCtF_0(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v12 = v4[2];
  v66 = v4 + 2;
  v67 = v11;
  v65 = v12;
  v12(v10, v11, v3);
  v13 = a1;
  v14 = v1;
  v15 = sub_23D685850();
  v16 = sub_23D685A50();

  v17 = os_log_type_enabled(v15, v16);
  v18 = &selRef_bufferSize;
  v19 = &selRef_bufferSize;
  v64 = v14;
  if (v17)
  {
    v20 = swift_slowAlloc();
    v63 = v3;
    v21 = v20;
    v62 = swift_slowAlloc();
    v69[0] = v62;
    *v21 = 136315650;
    v22 = v14;
    v23 = v8;
    v24 = [v22 description];
    v25 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v68 = v4;
    v26 = v25;
    v28 = v27;

    v8 = v23;
    v18 = &selRef_bufferSize;
    v29 = sub_23D652534(v26, v28, v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v33 = v32;

    v34 = v31;
    v19 = &selRef_bufferSize;
    v35 = sub_23D652534(v34, v33, v69);
    v4 = v68;

    *(v21 + 14) = v35;
    *(v21 + 22) = 2048;
    [v13 confidence];
    *(v21 + 24) = v36;
    _os_log_impl(&dword_23D62D000, v15, v16, "[%s]: received sound action: %s with confidence: %f.", v21, 0x20u);
    v37 = v62;
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v37, -1, -1);
    v38 = v21;
    v3 = v63;
    MEMORY[0x23EEE7580](v38, -1, -1);
  }

  v39 = v4[1];
  v39(v10, v3);
  result = [v13 v19[16]];
  if (v41 >= 0.5)
  {
    v42 = [v13 v18[204]];
    _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();

    v43 = sub_23D66ACD4();
    if (v43 == 14)
    {
      v65(v8, v67, v3);
      v44 = v13;
      v45 = sub_23D685850();
      v46 = sub_23D685A60();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = v18;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v68 = v4;
        v69[0] = v49;
        v50 = v49;
        *v48 = 136315138;
        v51 = [v44 v47 + 3064];
        v52 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v53 = v8;
        v55 = v54;

        v56 = sub_23D652534(v52, v55, v69);

        *(v48 + 4) = v56;
        _os_log_impl(&dword_23D62D000, v45, v46, "no action type found for result name: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x23EEE7580](v50, -1, -1);
        MEMORY[0x23EEE7580](v48, -1, -1);

        v57 = v53;
      }

      else
      {

        v57 = v8;
      }

      return (v39)(v57, v3);
    }

    else
    {
      v58 = v43;
      v59 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
      v60 = v64;
      swift_beginAccess();
      result = *&v60[v59];
      if (result)
      {
        return [result postEventToSystemWithSoundActionEvent_];
      }
    }
  }

  return result;
}

BOOL sub_23D66B34C()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v17 - v3;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v5 = sub_23D685860();
  __swift_project_value_buffer(v5, qword_27E2E0868);
  v6 = sub_23D685850();
  v7 = sub_23D685A70();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D62D000, v6, v7, "AXSDKShotMonitor: Start Monitoring", v8, 2u);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27E2E0880);

  v9 = sub_23D685850();
  v10 = sub_23D685A70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = 300;

    _os_log_impl(&dword_23D62D000, v9, v10, "AXSDKShotMonitor: Will check status of detectors every %ld seconds.", v11, 0xCu);
    MEMORY[0x23EEE7580](v11, -1, -1);
  }

  else
  {
  }

  v12 = sub_23D6859E0();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  v14 = sub_23D66FF48(0, 0, v4, &unk_23D689820, v13);
  v15 = *(v1 + 16);
  *(v1 + 16) = v14;

  return *(v1 + 16) != 0;
}

uint64_t sub_23D66B610()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "AXSDKShotMonitor: Stop Monitoring", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  sub_23D6859F0();
  isCancelled = swift_task_isCancelled();

  return isCancelled & 1;
}

uint64_t sub_23D66B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_23D685C60();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = sub_23D685C70();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D66B878, 0, 0);
}

uint64_t sub_23D66B878()
{
  if (sub_23D685A00())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    *(v0 + 120) = objc_opt_self();
    v6 = *(v0 + 56);
    v7 = sub_23D685860();
    __swift_project_value_buffer(v7, qword_27E2E0880);

    v8 = sub_23D685850();
    v9 = sub_23D685A70();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 300;

      _os_log_impl(&dword_23D62D000, v8, v9, "AXSDKShotMonitor: %ld seconds has elapsed. Checking status of detectors.", v12, 0xCu);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    else
    {
      v13 = *(v0 + 56);
    }

    v14 = *(v0 + 120);
    sub_23D66D318();
    v15 = [v14 sharedInstance];
    v16 = [v15 isActivelyTrainingAKShotModel];

    v17 = sub_23D685850();
    v18 = sub_23D685A70();
    v19 = os_log_type_enabled(v17, v18);
    if (v16)
    {
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23D62D000, v17, v18, "AXSDKShotMonitor: Not checking detectors. Currently training a KShot Model.", v20, 2u);
        MEMORY[0x23EEE7580](v20, -1, -1);
      }
    }

    else
    {
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23D62D000, v17, v18, "AXSDKShotMonitor: No KShot Model currently being trained. Checking detectors.", v21, 2u);
        MEMORY[0x23EEE7580](v21, -1, -1);
      }

      v22 = *(v0 + 56);

      sub_23D66C264();
    }

    v23 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 64);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6897C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v29 = sub_23D66D8E8(&qword_27E2E07A0, MEMORY[0x277D85928]);
    sub_23D685D30();
    sub_23D66D8E8(&qword_27E2E07A8, MEMORY[0x277D858F8]);
    sub_23D685C80();
    v30 = *(v27 + 8);
    *(v0 + 128) = v30;
    *(v0 + 136) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v26, v28);
    v31 = *(MEMORY[0x277D85A58] + 4);
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_23D66BC94;
    v33 = *(v0 + 112);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);

    return MEMORY[0x2822008C8](v35, v0 + 16, v34, v29);
  }
}

uint64_t sub_23D66BC94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  v4 = *(v2 + 136);
  if (v0)
  {
    (*(v2 + 128))(*(v2 + 88), *(v2 + 64));
    v5 = sub_23D66C1C8;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = *(v2 + 112);
    v8 = *(v2 + 96);
    (*(v2 + 128))(*(v2 + 88), *(v2 + 64));
    (*(v7 + 8))(v6, v8);
    v5 = sub_23D66BDEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23D66BDEC()
{
  if (sub_23D685A00())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 56);
    v7 = sub_23D685860();
    __swift_project_value_buffer(v7, qword_27E2E0880);

    v8 = sub_23D685850();
    v9 = sub_23D685A70();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 300;

      _os_log_impl(&dword_23D62D000, v8, v9, "AXSDKShotMonitor: %ld seconds has elapsed. Checking status of detectors.", v12, 0xCu);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    else
    {
      v13 = *(v0 + 56);
    }

    v14 = *(v0 + 120);
    sub_23D66D318();
    v15 = [v14 sharedInstance];
    v16 = [v15 isActivelyTrainingAKShotModel];

    v17 = sub_23D685850();
    v18 = sub_23D685A70();
    v19 = os_log_type_enabled(v17, v18);
    if (v16)
    {
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23D62D000, v17, v18, "AXSDKShotMonitor: Not checking detectors. Currently training a KShot Model.", v20, 2u);
        MEMORY[0x23EEE7580](v20, -1, -1);
      }
    }

    else
    {
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23D62D000, v17, v18, "AXSDKShotMonitor: No KShot Model currently being trained. Checking detectors.", v21, 2u);
        MEMORY[0x23EEE7580](v21, -1, -1);
      }

      v22 = *(v0 + 56);

      sub_23D66C264();
    }

    v23 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 64);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6897C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v29 = sub_23D66D8E8(&qword_27E2E07A0, MEMORY[0x277D85928]);
    sub_23D685D30();
    sub_23D66D8E8(&qword_27E2E07A8, MEMORY[0x277D858F8]);
    sub_23D685C80();
    v30 = *(v27 + 8);
    *(v0 + 128) = v30;
    *(v0 + 136) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v26, v28);
    v31 = *(MEMORY[0x277D85A58] + 4);
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_23D66BC94;
    v33 = *(v0 + 112);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);

    return MEMORY[0x2822008C8](v35, v0 + 16, v34, v29);
  }
}

uint64_t sub_23D66C1C8()
{
  v1 = v0[11];
  v2 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

void sub_23D66C264()
{
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v0 = sub_23D685860();
  __swift_project_value_buffer(v0, qword_27E2E0880);
  v1 = sub_23D685850();
  v2 = sub_23D685A70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23D62D000, v1, v2, "AXSDKShotMonitor: Checking custom detectors for potential retraining.", v3, 2u);
    MEMORY[0x23EEE7580](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 customDetectors];

  sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
  v6 = sub_23D685980();

  if (v6 >> 62)
  {
    v7 = sub_23D685B50();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_34:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_7:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v39 = v7;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x23EEE6980](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v13 = v11;
      if (v12)
      {
        if (![v12 shouldRetrain])
        {
          v34 = v13;
          v21 = sub_23D685850();
          v35 = sub_23D685A50();

          if (os_log_type_enabled(v21, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            *(v36 + 4) = v34;
            *v37 = v34;
            _os_log_impl(&dword_23D62D000, v21, v35, "AXSDKShotMonitor: Ignoring custom detector because we do not need to attempt to retrain it. Detector: %@.", v36, 0xCu);
            sub_23D654530(v37);
            v38 = v37;
            v7 = v39;
            MEMORY[0x23EEE7580](v38, -1, -1);
            MEMORY[0x23EEE7580](v36, -1, -1);
          }

          else
          {
          }

          goto LABEL_10;
        }

        v14 = sub_23D685850();
        v15 = sub_23D685A70();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v12;
          *v17 = v12;
          v18 = v13;
          _os_log_impl(&dword_23D62D000, v14, v15, "AXSDKShotMonitor: Checking if detector should be retrained: %@.", v16, 0xCu);
          sub_23D654530(v17);
          v19 = v17;
          v9 = v6 & 0xC000000000000001;
          MEMORY[0x23EEE7580](v19, -1, -1);
          MEMORY[0x23EEE7580](v16, -1, -1);
        }

        v20 = sub_23D66C800(v12);
        v21 = sub_23D685850();
        v22 = sub_23D685A70();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v40 = v24;
          *v23 = 136315138;
          if (v20)
          {
            v25 = 0x4653534543435553;
          }

          else
          {
            v25 = 0x204552554C494146;
          }

          if (v20)
          {
            v26 = 0xEC000000594C4C55;
          }

          else
          {
            v26 = 0xEA00000000004F54;
          }

          v27 = sub_23D652534(v25, v26, &v40);

          *(v23 + 4) = v27;
          v7 = v39;
          _os_log_impl(&dword_23D62D000, v21, v22, "AXSDKShotMonitor: %s start retraining of detector.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          v28 = v24;
          v9 = v6 & 0xC000000000000001;
          MEMORY[0x23EEE7580](v28, -1, -1);
          MEMORY[0x23EEE7580](v23, -1, -1);
        }
      }

      else
      {
        v21 = sub_23D685850();
        v29 = sub_23D685A50();

        if (os_log_type_enabled(v21, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v13;
          *v31 = v13;
          v32 = v13;
          _os_log_impl(&dword_23D62D000, v21, v29, "AXSDKShotMonitor: Ignoring detector because its not custom. Detector: %@.", v30, 0xCu);
          sub_23D654530(v31);
          v33 = v31;
          v7 = v39;
          MEMORY[0x23EEE7580](v33, -1, -1);
          MEMORY[0x23EEE7580](v30, -1, -1);

          v9 = v6 & 0xC000000000000001;
          goto LABEL_11;
        }
      }

LABEL_10:
LABEL_11:
      if (v7 == ++v8)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

uint64_t sub_23D66C800(void *a1)
{
  v3 = sub_23D685880();
  v67 = *(v3 - 8);
  v4 = v67[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6858A0();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D6856F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  if ([a1 modelFailed])
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v19 = sub_23D685860();
    __swift_project_value_buffer(v19, qword_27E2E0880);
    v20 = a1;
    v21 = sub_23D685850();
    v22 = sub_23D685A70();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_23D62D000, v21, v22, "AXSDKShotMonitor: Detector is already marked as failed. Not attempting retraining. Detector: %@", v23, 0xCu);
      sub_23D654530(v24);
      MEMORY[0x23EEE7580](v24, -1, -1);
      MEMORY[0x23EEE7580](v23, -1, -1);
    }

LABEL_24:

    return 0;
  }

  v26 = [a1 lastAttemptedTrainingDate];
  if (!v26)
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v65 = v12;
    v37 = sub_23D685860();
    __swift_project_value_buffer(v37, qword_27E2E0880);
    v38 = a1;
    v39 = sub_23D685850();
    v40 = sub_23D685A70();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v41 = 136315394;
      sub_23D6856E0();
      sub_23D66D8E8(&qword_27E2E0860, MEMORY[0x277CC9578]);
      v43 = sub_23D685CF0();
      v45 = v44;
      v46 = v65;
      (*(v65 + 8))(v16, v11);
      v47 = sub_23D652534(v43, v45, aBlock);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v42 = v38;
      v48 = v38;
      _os_log_impl(&dword_23D62D000, v39, v40, "AXSDKShotMonitor: No date set for last attempted training date. Setting to: %s for Detector: %@", v41, 0x16u);
      sub_23D654530(v42);
      MEMORY[0x23EEE7580](v42, -1, -1);
      v49 = v67;
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x23EEE7580](v49, -1, -1);
      MEMORY[0x23EEE7580](v41, -1, -1);
    }

    else
    {

      v46 = v65;
    }

    sub_23D6856E0();
    v21 = sub_23D6856B0();
    (*(v46 + 8))(v16, v11);
    [v38 setLastAttemptedTrainingDate_];
    goto LABEL_24;
  }

  v63 = v1;
  v27 = v26;
  sub_23D6856C0();

  sub_23D6856E0();
  sub_23D6856D0();
  v29 = v28;
  v64 = *(v12 + 8);
  v65 = v12 + 8;
  v64(v16, v11);
  if (fabs(v29) < 600.0)
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v30 = sub_23D685860();
    __swift_project_value_buffer(v30, qword_27E2E0880);
    v31 = a1;

    v32 = sub_23D685850();
    v33 = sub_23D685A70();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218498;
      *(v34 + 4) = 0x4082C00000000000;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v29;
      *(v34 + 22) = 2112;
      *(v34 + 24) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_23D62D000, v32, v33, "AXSDKShotMonitor: It's too early to attempt retrain of detector. Waiting: %f. Current time difference is: %f. Not attempting retraining. Detector: %@", v34, 0x20u);
      sub_23D654530(v35);
      MEMORY[0x23EEE7580](v35, -1, -1);
      MEMORY[0x23EEE7580](v34, -1, -1);
    }

    v64(v18, v11);
    return 0;
  }

  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v63 = v11;
  v50 = sub_23D685860();
  __swift_project_value_buffer(v50, qword_27E2E0880);
  v51 = a1;
  v52 = sub_23D685850();
  v53 = sub_23D685A70();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_23D62D000, v52, v53, "AXSDKShotMonitor: Attempting to retrain detector. Detector: %@", v54, 0xCu);
    sub_23D654530(v55);
    MEMORY[0x23EEE7580](v55, -1, -1);
    MEMORY[0x23EEE7580](v54, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v57 = sub_23D685AA0();
  v58 = swift_allocObject();
  *(v58 + 16) = v51;
  aBlock[4] = sub_23D66D244;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_3;
  v59 = _Block_copy(aBlock);
  v60 = v51;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D66D8E8(&qword_27E2E0430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v10, v6, v59);
  _Block_release(v59);

  (v67[1])(v6, v3);
  (*(v66 + 8))(v10, v7);
  v64(v18, v63);
  return 1;
}

void sub_23D66D178(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 retrainDetector_];
}

uint64_t sub_23D66D1E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D66D264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D667DA8;

  return sub_23D66B750(a1, v4, v5, v6);
}

uint64_t sub_23D66D318()
{
  if (qword_27E2E03D8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v0 = sub_23D685860();
    __swift_project_value_buffer(v0, qword_27E2E0880);
    v1 = sub_23D685850();
    v2 = sub_23D685A70();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23D62D000, v1, v2, "AXSDKShotMonitor: Checking enabled custom detectors - verifying that enabled identifiers still have a corresponding detector.", v3, 2u);
      MEMORY[0x23EEE7580](v3, -1, -1);
    }

    v42 = objc_opt_self();
    v4 = [v42 sharedInstance];
    v5 = [v4 enabledKShotDetectorIdentifiers];

    v6 = sub_23D685980();
    v46 = *(v6 + 16);
    if (!v46)
    {
      break;
    }

    v45 = objc_opt_self();
    if (*(v6 + 16))
    {
      v8 = 0;
      v44 = v6 + 32;
      *&v7 = 136315138;
      v41 = v7;
      v43 = v6;
LABEL_7:
      v9 = (v44 + 16 * v8);
      v10 = v9[1];
      v48 = *v9;

      v11 = [v45 sharedInstance];
      v12 = [v11 customDetectors];

      sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
      v13 = sub_23D685980();

      if (v13 >> 62)
      {
        v14 = sub_23D685B50();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v47 = v8 + 1;
      v16 = v14;
      while (1)
      {
        v17 = v15;
        if (v14 == v15)
        {
LABEL_22:

          goto LABEL_24;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x23EEE6980](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v18 = *(v13 + 8 * v15 + 32);
        }

        v19 = v18;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v20 = [v18 identifier];
        v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v23 = v22;

        if (v48 == v21 && v10 == v23)
        {
          break;
        }

        v25 = sub_23D685D00();

        v15 = v17 + 1;
        v14 = v16;
        if (v25)
        {
          goto LABEL_22;
        }
      }

      v14 = v16;
LABEL_24:

      v26 = sub_23D685850();
      v27 = sub_23D685A70();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49 = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_23D652534(v48, v10, &v49);
        *(v28 + 12) = 2080;
        if (v14 == v17)
        {
          v30 = 20302;
        }

        else
        {
          v30 = 5457241;
        }

        if (v14 == v17)
        {
          v31 = 0xE200000000000000;
        }

        else
        {
          v31 = 0xE300000000000000;
        }

        v32 = sub_23D652534(v30, v31, &v49);
        v14 = v16;

        *(v28 + 14) = v32;
        _os_log_impl(&dword_23D62D000, v26, v27, "AXSDKShotMonitor: Enabled Identifier: %s has a valid detector: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v29, -1, -1);
        MEMORY[0x23EEE7580](v28, -1, -1);
      }

      if (v14 == v17)
      {

        v33 = sub_23D685850();
        v34 = sub_23D685A70();

        v8 = v47;
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v49 = v36;
          *v35 = v41;
          *(v35 + 4) = sub_23D652534(v48, v10, &v49);
          _os_log_impl(&dword_23D62D000, v33, v34, "AXSDKShotMonitor: Disabling detector with identifier: %s - model no longer exists.", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x23EEE7580](v36, -1, -1);
          MEMORY[0x23EEE7580](v35, -1, -1);
        }

        v38 = [v42 sharedInstance];
        v39 = sub_23D6858E0();

        [v38 disableKShotDetector_];

        v37 = v46;
      }

      else
      {

        v37 = v46;
        v8 = v47;
      }

      if (v8 == v37)
      {
        break;
      }

      if (v8 < *(v43 + 16))
      {
        goto LABEL_7;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }
}

uint64_t sub_23D66D8E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D66D9FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23D685860();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id sub_23D66DAB4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23D685860();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = a3();
  if (result)
  {
    return sub_23D685870();
  }

  __break(1u);
  return result;
}

uint64_t static Logger.soundActions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  v3 = __swift_project_value_buffer(v2, qword_27E2E08B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.soundActions.setter(uint64_t a1)
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  v3 = __swift_project_value_buffer(v2, qword_27E2E08B0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.soundActions.modify())()
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v0 = sub_23D685860();
  __swift_project_value_buffer(v0, qword_27E2E08B0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_23D66DDD0(void *a1)
{
  v2 = v1;
  if (qword_27E2E03D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = sub_23D685860();
  __swift_project_value_buffer(v4, qword_27E2E0868);
  v5 = v2;
  v6 = a1;
  v7 = v5;
  v8 = v6;
  v9 = sub_23D685850();
  v10 = sub_23D685A70();

  v54 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v56 = v13;
    *v11 = 136315394;
    v14 = v5;
    v15 = [v14 description];
    v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v18 = v17;

    v8 = v54;
    v19 = sub_23D652534(v16, v18, &v56);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v54;
    *v12 = v54;
    v20 = v54;
    _os_log_impl(&dword_23D62D000, v9, v10, "[%s]: adding detector: %@", v11, 0x16u);
    sub_23D6598A4(v12, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EEE7580](v13, -1, -1);
    MEMORY[0x23EEE7580](v11, -1, -1);
  }

  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v21 = *&v7[v2];
  v52 = v7;
  v51 = v2;
  if (v21 >> 62)
  {
    v53 = sub_23D685B50();
  }

  else
  {
    v53 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = (v21 & 0xC000000000000001);

  v22 = 0;
  while (1)
  {
    if (v53 == v22)
    {

      v55 = *&v52[v51];
      v33 = v8;

      MEMORY[0x23EEE6700](v34);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23D685990();
      }

      sub_23D6859A0();
      v35 = *&v52[v51];
      *&v52[v51] = v55;
      sub_23D67026C();

      return;
    }

    if (a1)
    {
      v23 = MEMORY[0x23EEE6980](v22, v21);
    }

    else
    {
      if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v23 = *(v21 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v25 = [v23 identifier];
    v26 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v28 = v27;

    v29 = [v8 identifier];
    v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {
      break;
    }

    v2 = sub_23D685D00();

    ++v22;
    v8 = v54;
    if (v2)
    {
      goto LABEL_20;
    }
  }

  v8 = v54;
LABEL_20:

  v36 = v52;
  v37 = v8;
  v38 = sub_23D685850();
  v39 = sub_23D685A50();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v40 = 136315394;
    v43 = v36;
    v44 = [v43 description];
    v45 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v47 = v46;

    v48 = sub_23D652534(v45, v47, &v55);

    *(v40 + 4) = v48;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v37;
    v49 = v37;
    _os_log_impl(&dword_23D62D000, v38, v39, "[%s]: already added detector: %@. ignoring", v40, 0x16u);
    sub_23D6598A4(v41, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23EEE7580](v42, -1, -1);
    MEMORY[0x23EEE7580](v40, -1, -1);
  }
}

void sub_23D66E354(void *a1)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v3 = sub_23D685860();
  __swift_project_value_buffer(v3, qword_27E2E0868);
  v4 = v1;
  v5 = a1;
  v6 = sub_23D685850();
  v7 = sub_23D685A70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v8 = 136315394;
    v10 = v4;
    v11 = [v10 description];
    v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v14 = v13;

    v15 = sub_23D652534(v12, v14, &v23);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v16 = v5;
    _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: removing detector: %@", v8, 0x16u);
    sub_23D6598A4(v9, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EEE7580](v22, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  v17 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v24 = *&v4[v17];
  v18 = v5;

  v19 = sub_23D6794A0(&v24, v18);

  if (v24 >> 62)
  {
    v20 = sub_23D685B50();
    if (v20 >= v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v19)
    {
LABEL_7:
      sub_23D6798B0(v19, v20);
      v21 = *&v4[v17];
      *&v4[v17] = v24;
      sub_23D67026C();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_23D66E5F8()
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v1 = sub_23D685860();
  __swift_project_value_buffer(v1, qword_27E2E0868);
  v2 = v0;
  v3 = sub_23D685850();
  v4 = sub_23D685A70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = v2;
    v8 = [v7 description];
    v9 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v11 = v10;

    v12 = sub_23D652534(v9, v11, &v16);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_23D62D000, v3, v4, "[%s]: removing all detectors", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEE7580](v6, -1, -1);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v13 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v14 = *&v2[v13];
  *&v2[v13] = MEMORY[0x277D84F90];
  sub_23D67026C();
}

void sub_23D66E7C8()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v0[v1])
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D685860();
    __swift_project_value_buffer(v2, qword_27E2E0868);
    v3 = v0;
    v4 = sub_23D685850();
    v5 = sub_23D685A70();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v12 = v11;

      v13 = sub_23D652534(v10, v12, &v16);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: sound recognition is already listening.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEE7580](v7, -1, -1);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }
  }

  else
  {
    v0[v1] = 1;
    v14 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
    swift_beginAccess();
    v15 = *&v0[v14];

    sub_23D679988();
  }
}

void sub_23D66E9C4()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v0[v1] = 0;
    v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
    swift_beginAccess();
    v3 = *&v0[v2];

    sub_23D679FD4();
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v4 = sub_23D685860();
    __swift_project_value_buffer(v4, qword_27E2E0868);
    v5 = v0;
    v6 = sub_23D685850();
    v7 = sub_23D685A70();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = v5;
      v11 = [v10 description];
      v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v14 = v13;

      v15 = sub_23D652534(v12, v14, &v16);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: sound recognition is already stopped.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23EEE7580](v9, -1, -1);
      MEMORY[0x23EEE7580](v8, -1, -1);
    }
  }
}

uint64_t sub_23D66EBC0()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23D66EC08()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL sub_23D66EC4C()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) != 0;
}

uint64_t sub_23D66EC9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E05F0, &unk_23D689370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v77 - v8;
  v10 = sub_23D685740();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v77 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v77 - v17;
  if ([a1 isCustom])
  {

    return sub_23D66F440(a1);
  }

  else
  {
    v84 = v16;
    v20 = v1;
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v21 = sub_23D685860();
    v22 = __swift_project_value_buffer(v21, qword_27E2E0868);
    v23 = v20;
    v24 = a1;
    v86 = v22;
    v25 = sub_23D685850();
    v26 = sub_23D685A70();

    v27 = os_log_type_enabled(v25, v26);
    v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v27)
    {
      v28 = swift_slowAlloc();
      v83 = v10;
      v29 = v28;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v88 = v81;
      *v29 = 136315394;
      v30 = v23;
      v79 = v26;
      v31 = v23;
      v32 = v18;
      v33 = v30;
      v34 = v11;
      v35 = [v30 description];
      v36 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v82 = v9;
      v37 = v36;
      v78 = v25;
      v38 = v24;
      v40 = v39;

      v18 = v32;
      v23 = v31;

      v11 = v34;
      v41 = sub_23D652534(v37, v40, &v88);
      v24 = v38;

      *(v29 + 4) = v41;
      v9 = v82;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v38;
      v42 = v80;
      *v80 = v24;
      v43 = v24;
      v44 = v78;
      _os_log_impl(&dword_23D62D000, v78, v79, "[%s]: creating task for sound recognition detector: %@", v29, 0x16u);
      sub_23D6598A4(v42, &qword_27E2E06F0, &qword_23D6893C0);
      MEMORY[0x23EEE7580](v42, -1, -1);
      v45 = v81;
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x23EEE7580](v45, -1, -1);
      v46 = v29;
      v10 = v83;
      MEMORY[0x23EEE7580](v46, -1, -1);
    }

    else
    {
    }

    if (([v24 isCustom] & 1) == 0)
    {
      v83 = v23;
      v47 = [v24 identifier];
      if (!v47)
      {
        _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v47 = sub_23D6858E0();
      }

      AXSDSoundDetectionType.builtInDetectorIdentifier.getter(v47, v9);

      v48 = sub_23D685750();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(v9, 1, v48) != 1)
      {
        v64 = v84;
        (*(v49 + 32))(v84, v9, v48);
        v65 = v11;
        (*(v11 + 104))(v64, *MEMORY[0x277CDC810], v10);
        v86 = *(v11 + 32);
        v86(v18, v64, v10);
        v66 = sub_23D6859E0();
        (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
        v67 = v85;
        (*(v11 + 16))(v85, v18, v10);
        v68 = *(v11 + 80);
        v69 = v24;
        v70 = (v68 + 40) & ~v68;
        v71 = (v12 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        *(v72 + 2) = 0;
        *(v72 + 3) = 0;
        v73 = v83;
        *(v72 + 4) = v83;
        v86(&v72[v70], v67, v10);
        *&v72[v71] = v69;
        v74 = v73;
        v75 = v69;
        v76 = sub_23D66FF48(0, 0, v87, &unk_23D6898E0, v72);
        (*(v65 + 8))(v18, v10);
        return v76;
      }

      sub_23D6598A4(v9, &unk_27E2E05F0, &unk_23D689370);
      v23 = v83;
    }

    v50 = v23;
    v51 = v24;
    v52 = sub_23D685850();
    v53 = sub_23D685A60();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v88 = v56;
      *v54 = 136315394;
      v57 = v50;
      v58 = [v57 description];
      v59 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v61 = v60;

      v62 = sub_23D652534(v59, v61, &v88);

      *(v54 + 4) = v62;
      *(v54 + 12) = 2112;
      *(v54 + 14) = v51;
      *v55 = v51;
      v63 = v51;
      _os_log_impl(&dword_23D62D000, v52, v53, "[%s]: unable to find identifier for detector: %@", v54, 0x16u);
      sub_23D6598A4(v55, &qword_27E2E06F0, &qword_23D6893C0);
      MEMORY[0x23EEE7580](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x23EEE7580](v56, -1, -1);
      MEMORY[0x23EEE7580](v54, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_23D66F440(void *a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v66[-v5];
  v7 = sub_23D6856A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v72 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v73 = &v66[-v11];
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v12 = sub_23D685860();
  v13 = __swift_project_value_buffer(v12, qword_27E2E0880);
  v14 = v2;
  v15 = a1;
  v16 = sub_23D685850();
  v17 = sub_23D685A70();

  v18 = os_log_type_enabled(v16, v17);
  v74 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v71 = v8;
    v20 = v19;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v75 = v69;
    *v20 = 136315394;
    v21 = v14;
    v70 = v13;
    v22 = v21;
    v23 = v9;
    v24 = v6;
    v25 = [v21 description];
    v26 = v7;
    v27 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v67 = v17;
    v29 = v28;

    v6 = v24;
    v9 = v23;
    v30 = v27;
    v7 = v26;
    v31 = sub_23D652534(v30, v29, &v75);

    *(v20 + 4) = v31;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    v32 = v68;
    *v68 = v15;
    v33 = v15;
    _os_log_impl(&dword_23D62D000, v16, v67, "[%s]: creating task for sound recognition detector: %@", v20, 0x16u);
    sub_23D6598A4(v32, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v32, -1, -1);
    v34 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23EEE7580](v34, -1, -1);
    v35 = v20;
    v8 = v71;
    MEMORY[0x23EEE7580](v35, -1, -1);
  }

  if ([v15 isCustom])
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      v38 = v15;
      v39 = [v37 modelURL];
      if (v39)
      {
        v40 = v73;
        v41 = v39;
        sub_23D685680();

        v42 = sub_23D6859E0();
        (*(*(v42 - 8) + 56))(v6, 1, 1, v42);
        v43 = v72;
        (*(v8 + 16))(v72, v40, v7);
        v44 = (*(v8 + 80) + 48) & ~*(v8 + 80);
        v45 = swift_allocObject();
        *(v45 + 2) = 0;
        *(v45 + 3) = 0;
        v46 = v38;
        v47 = v74;
        *(v45 + 4) = v74;
        *(v45 + 5) = v37;
        (*(v8 + 32))(&v45[v44], v43, v7);
        *&v45[(v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;
        v48 = v47;
        v49 = v46;
        v50 = sub_23D66FF48(0, 0, v6, &unk_23D6898B0, v45);
        (*(v8 + 8))(v73, v7);
        return v50;
      }
    }
  }

  v52 = v74;
  v53 = v15;
  v54 = sub_23D685850();
  v55 = sub_23D685A60();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v75 = v58;
    *v56 = 136315394;
    v59 = v52;
    v60 = [v59 description];
    v61 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v63 = v62;

    v64 = sub_23D652534(v61, v63, &v75);

    *(v56 + 4) = v64;
    *(v56 + 12) = 2112;
    *(v56 + 14) = v53;
    *v57 = v53;
    v65 = v53;
    _os_log_impl(&dword_23D62D000, v54, v55, "[%s]: unable to locate mlModel found for custom detector: %@", v56, 0x16u);
    sub_23D6598A4(v57, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v57, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x23EEE7580](v58, -1, -1);
    MEMORY[0x23EEE7580](v56, -1, -1);
  }

  return 0;
}

uint64_t sub_23D66FA40(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (*(v5 + 16))
  {

    v6 = sub_23D67EE10(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (qword_27E2E03D0 != -1)
      {
        swift_once();
      }

      v9 = sub_23D685860();
      __swift_project_value_buffer(v9, qword_27E2E0868);
      v10 = v2;
      v11 = a1;
      v12 = sub_23D685850();
      v13 = sub_23D685A70();

      if (os_log_type_enabled(v12, v13))
      {
        v24 = v13;
        v14 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v14 = 136315394;
        v15 = v10;
        v16 = [v15 description];
        v17 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v19 = v18;

        v20 = sub_23D652534(v17, v19, &v26);

        *(v14 + 4) = v20;
        *(v14 + 12) = 2112;
        *(v14 + 14) = v11;
        *v23 = v11;
        v21 = v11;
        _os_log_impl(&dword_23D62D000, v12, v24, "[%s]: removing task for detector: %@.", v14, 0x16u);
        sub_23D6598A4(v23, &qword_27E2E06F0, &qword_23D6893C0);
        MEMORY[0x23EEE7580](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x23EEE7580](v25, -1, -1);
        MEMORY[0x23EEE7580](v14, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
      sub_23D6859F0();
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_23D66FE44(0, a1);
  return swift_endAccess();
}

BOOL sub_23D66FD10()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  if (*(v0 + v1))
  {
    swift_beginAccess();
    v3 = *(v0 + v2);

    sub_23D64FCE0(v4);
    v6 = v5;
    v7 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
    swift_beginAccess();
    v8 = *(v0 + v7);

    v10 = sub_23D654880(v9);

    sub_23D675B2C(v6, v10);
    LOBYTE(v8) = v11;

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v12 = *(*(v0 + v2) + 16);
    v13 = *(v0 + v7);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v17 = *(v0 + v7);
      }

      v14 = sub_23D685B50();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v12 == v14;
  }

  else
  {
    swift_beginAccess();
    return *(*(v0 + v2) + 16) == 0;
  }
}

void sub_23D66FE44(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_23D67F768(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_23D67EE10(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_23D678B34();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_23D67881C(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_23D66FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_23D67A554(a3, v23 - v9);
  v11 = sub_23D6859E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23D6598A4(v10, &qword_27E2E0780, "Ԍ");
  }

  else
  {
    sub_23D6859D0();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D6859B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23D685930() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_23D6598A4(a3, &qword_27E2E0780, "Ԍ");

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D6598A4(a3, &qword_27E2E0780, "Ԍ");
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23D6701FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_23D67026C();
}

uint64_t sub_23D67026C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  result = swift_beginAccess();
  if (v0[v4] == 1)
  {

    v7 = sub_23D654880(v6);

    v9 = sub_23D654880(v8);

    v10 = sub_23D670C00(v9, v7);
    v11 = sub_23D670C00(v7, v9);

    v12 = sub_23D677508(v10);

    v13 = sub_23D677508(v11);

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v14 = sub_23D685B50();
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = *(v13 + 16);
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x23EEE6980](i, v13);
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        sub_23D66FA40(v16);
      }

LABEL_12:
      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v18 = *(v12 + 16);
      if (!v18)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v19 = v18 - 1;
        if (v18 < 1)
        {
          goto LABEL_49;
        }

        v20 = v12 & 0xC000000000000001;
        v21 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
        swift_beginAccess();
        v22 = 0;
        v68 = v21;
        v63 = v12;
        if ((v12 & 0xC000000000000001) != 0)
        {
LABEL_17:
          v23 = MEMORY[0x23EEE6980](v22, v12);
          goto LABEL_19;
        }

        while (1)
        {
          v23 = *(v12 + 8 * v22 + 32);
LABEL_19:
          v24 = v23;
          if (!*(*&v1[v21] + 16))
          {
            goto LABEL_23;
          }

          v25 = *&v1[v21];

          sub_23D67EE10(v24);
          if ((v26 & 1) == 0)
          {
            break;
          }

LABEL_40:
          if (v19 == v22)
          {
            goto LABEL_46;
          }

          ++v22;
          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_23:
        v27 = sub_23D66EC9C(v24);
        if (!v27)
        {
          if (qword_27E2E03D0 != -1)
          {
            swift_once();
          }

          v41 = sub_23D685860();
          __swift_project_value_buffer(v41, qword_27E2E0868);
          v42 = v24;
          v43 = v1;
          v44 = sub_23D685850();
          v45 = sub_23D685A70();

          if (os_log_type_enabled(v44, v45))
          {
            v66 = v45;
            v46 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v69 = v67;
            *v46 = 136315394;
            v47 = v43;
            log = v44;
            v48 = v20;
            v49 = v19;
            v50 = [v47 description];
            v51 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
            v53 = v52;

            v19 = v49;
            v20 = v48;
            v54 = v51;
            v12 = v63;
            v55 = sub_23D652534(v54, v53, &v69);
            v21 = v68;

            *(v46 + 4) = v55;
            *(v46 + 12) = 2112;
            *(v46 + 14) = v42;
            *v65 = v42;
            v56 = v42;
            _os_log_impl(&dword_23D62D000, log, v66, "[%s]: unable to create a task for detector: %@", v46, 0x16u);
            sub_23D6598A4(v65, &qword_27E2E06F0, &qword_23D6893C0);
            MEMORY[0x23EEE7580](v65, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v67);
            MEMORY[0x23EEE7580](v67, -1, -1);
            MEMORY[0x23EEE7580](v46, -1, -1);
          }

          else
          {
          }

          goto LABEL_40;
        }

        v28 = v27;
        swift_beginAccess();

        v29 = *&v1[v21];
        v30 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *&v1[v21];
        v33 = sub_23D67EE10(v30);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (!v37)
        {
          break;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v18 = sub_23D685B50();
        if (!v18)
        {
LABEL_46:
        }
      }

      v39 = v34;
      if (v32[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v33;
          sub_23D678B34();
          v33 = v60;
          v57 = v32;
          if (v39)
          {
            goto LABEL_34;
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_23D67EFBC(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_23D67EE10(v30);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_50;
        }
      }

      v57 = v32;
      if (v39)
      {
LABEL_34:
        v58 = v57[7];
        v59 = *(v58 + 8 * v33);
        *(v58 + 8 * v33) = v28;

LABEL_39:
        v21 = v68;
        *&v1[v68] = v57;
        swift_endAccess();

        goto LABEL_40;
      }

LABEL_37:
      v57[(v33 >> 6) + 8] |= 1 << v33;
      *(v57[6] + 8 * v33) = v30;
      *(v57[7] + 8 * v33) = v28;
      v61 = v57[2];
      v37 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v37)
      {
        goto LABEL_44;
      }

      v57[2] = v62;
      goto LABEL_39;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    sub_23D67A758();
    result = sub_23D685D20();
    __break(1u);
  }

  return result;
}

id AXSDSecureBaseControllerImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSDSecureBaseControllerImplementation.init()()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "Initializing Base Secure Sound Detection Controller", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v6 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks] = sub_23D662034(v6);
  v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AXSDSecureBaseControllerImplementation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSDSecureBaseControllerImplementation.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "Deinitializing Base Secure Sound Detection Controller", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AXSDSecureBaseControllerImplementation();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23D670C00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_23D685B50();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_23D677674(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_23D685B50() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_23D685B50();
  v2 = sub_23D6767A4(v5, v6);
LABEL_10:

  return sub_23D6778A4(a1, v2);
}

uint64_t sub_23D670CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_23D685C60();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = sub_23D685C70();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = sub_23D6857B0();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E0, &qword_23D6898B8) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E8, &qword_23D6898C0);
  v6[22] = v17;
  v18 = *(v17 - 8);
  v6[23] = v18;
  v19 = *(v18 + 64) + 15;
  v6[24] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08F0, &unk_23D6898C8);
  v6[25] = v20;
  v21 = *(v20 - 8);
  v6[26] = v21;
  v22 = *(v21 + 64) + 15;
  v6[27] = swift_task_alloc();
  v23 = sub_23D6857A0();
  v6[28] = v23;
  v24 = *(v23 - 8);
  v6[29] = v24;
  v25 = *(v24 + 64) + 15;
  v6[30] = swift_task_alloc();
  v26 = sub_23D685780();
  v6[31] = v26;
  v27 = *(v26 - 8);
  v6[32] = v27;
  v28 = *(v27 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v29 = sub_23D685740();
  v6[35] = v29;
  v30 = *(v29 - 8);
  v6[36] = v30;
  v31 = *(v30 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D6710BC, 0, 0);
}

uint64_t sub_23D6710BC()
{
  v79 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[8];
  v4 = v0[9];
  v6 = sub_23D685860();
  v0[40] = __swift_project_value_buffer(v6, qword_27E2E0868);
  v7 = *(v3 + 16);
  v0[41] = v7;
  v0[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = v5;
  v9 = sub_23D685850();
  v10 = sub_23D685A70();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[35];
  v14 = v0[36];
  if (v11)
  {
    v15 = v0[8];
    v72 = v0[35];
    v16 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78 = v75;
    *v16 = 136315394;
    v17 = v15;
    v18 = [v17 description];
    v19 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v21 = v20;

    v22 = sub_23D652534(v19, v21, &v78);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v25 = v24;
    v26 = *(v14 + 8);
    v26(v12, v72);
    v27 = sub_23D652534(v23, v25, &v78);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_23D62D000, v9, v10, "[%s]: Starting sound recogntion task for identifier: %s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v75, -1, -1);
    MEMORY[0x23EEE7580](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v12, v13);
  }

  v0[43] = v26;
  if (sub_23D685A00())
  {
    v29 = v0[38];
    v28 = v0[39];
    v30 = v0[37];
    v32 = v0[33];
    v31 = v0[34];
    v33 = v0[30];
    v34 = v0[27];
    v35 = v0[24];
    v37 = v0[20];
    v36 = v0[21];
    v71 = v0[17];
    v73 = v0[14];
    v76 = v0[13];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v40 = v0[42];
    v41 = v0[40];
    v42 = v0[34];
    v44 = v0[32];
    v43 = v0[33];
    v45 = v0[31];
    v46 = v0[8];
    (v0[41])(v0[38], v0[9], v0[35]);
    sub_23D685770();
    (*(v44 + 16))(v43, v42, v45);
    v47 = v46;
    v48 = sub_23D685850();
    v49 = sub_23D685A70();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[33];
    v52 = v0[31];
    v53 = (v0[32] + 8);
    if (v50)
    {
      v77 = v49;
      v54 = v0[8];
      v55 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v55 = 136315394;
      v56 = v54;
      v57 = [v56 description];
      v58 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v60 = v59;

      v61 = sub_23D652534(v58, v60, &v78);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0]);
      v62 = sub_23D685CF0();
      v64 = v63;
      v65 = *v53;
      (*v53)(v51, v52);
      v66 = sub_23D652534(v62, v64, &v78);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_23D62D000, v48, v77, "[%s]: running request %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v74, -1, -1);
      MEMORY[0x23EEE7580](v55, -1, -1);
    }

    else
    {

      v65 = *v53;
      (*v53)(v51, v52);
    }

    v0[44] = v65;
    v67 = *(MEMORY[0x277CDC8C8] + 4);
    v68 = swift_task_alloc();
    v0[45] = v68;
    *v68 = v0;
    v68[1] = sub_23D67168C;
    v69 = v0[34];
    v70 = v0[30];

    return MEMORY[0x28212BAC8](v70, v69);
  }
}

uint64_t sub_23D67168C()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_23D672B08;
  }

  else
  {
    v3 = sub_23D6717A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D6717A0()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  sub_23D685790();
  sub_23D685820();
  v5 = sub_23D67A5C4();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_23D671874;
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[22];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23D671874()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_23D671ECC;
  }

  else
  {
    v3 = sub_23D671988;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D671988()
{
  v64 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v61 = *(v0 + 352);
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 256) + 8;
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v61(v4, v5);
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    v15 = *(v0 + 64);
    (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
    v16 = v15;
    v17 = sub_23D685850();
    v18 = sub_23D685A70();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 344);
    v21 = *(v0 + 296);
    v22 = *(v0 + 280);
    v23 = *(v0 + 288) + 8;
    if (v19)
    {
      v62 = v18;
      v24 = *(v0 + 64);
      v59 = *(v0 + 344);
      v25 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v25 = 136315394;
      v26 = v24;
      v27 = [v26 description];
      v28 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v30 = v29;

      v31 = sub_23D652534(v28, v30, &v63);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v32 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
      v34 = v33;
      v59(v21, v22);
      v35 = sub_23D652534(v32, v34, &v63);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_23D62D000, v17, v62, "[%s]: Restarting sound recogntion task for identifier: %s.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v60, -1, -1);
      MEMORY[0x23EEE7580](v25, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v45 = *(v0 + 136);
    v47 = *(v0 + 112);
    v46 = *(v0 + 120);
    v49 = *(v0 + 96);
    v48 = *(v0 + 104);
    v50 = *(v0 + 88);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6896C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v51 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
    sub_23D685D30();
    sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
    sub_23D685C80();
    v52 = *(v49 + 8);
    *(v0 + 392) = v52;
    *(v0 + 400) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v48, v50);
    v53 = *(MEMORY[0x277D85A58] + 4);
    v54 = swift_task_alloc();
    *(v0 + 408) = v54;
    *v54 = v0;
    v54[1] = sub_23D6724CC;
    v55 = *(v0 + 136);
    v57 = *(v0 + 112);
    v56 = *(v0 + 120);

    return MEMORY[0x2822008C8](v57, v0 + 16, v56, v51);
  }

  else
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 80);
    v38 = *(v0 + 64);
    (*(v3 + 32))(v36, v1, v2);
    (*((*MEMORY[0x277D85000] & *v38) + 0x140))(v36, v37);
    (*(v3 + 8))(v36, v2);
    v39 = sub_23D67A5C4();
    v40 = *(MEMORY[0x277D856D0] + 4);
    v41 = swift_task_alloc();
    *(v0 + 376) = v41;
    *v41 = v0;
    v41[1] = sub_23D671874;
    v42 = *(v0 + 192);
    v43 = *(v0 + 168);
    v44 = *(v0 + 176);

    return MEMORY[0x282200308](v43, v44, v39);
  }
}

uint64_t sub_23D671ECC()
{
  *(v0 + 56) = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D671F60, 0, 0);
}

uint64_t sub_23D671F60()
{
  v70 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 384);
  v8 = *(v0 + 320);
  v9 = *(v0 + 64);
  v10 = *(v0 + 256) + 8;
  (*(v0 + 352))(*(v0 + 272), *(v0 + 248));
  v11 = v9;
  v12 = v7;
  v13 = sub_23D685850();
  v14 = sub_23D685A70();

  v15 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v16 = &selRef_bufferSize;
  if (os_log_type_enabled(v13, v14))
  {
    v17 = *(v0 + 64);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v69 = v67;
    *v18 = 136315394;
    v20 = v17;
    v21 = [v20 description];
    v22 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v24 = v23;

    v16 = &selRef_bufferSize;
    v25 = sub_23D652534(v22, v24, &v69);

    *(v18 + 4) = v25;
    v15 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v18 + 12) = 2112;
    v26 = v7;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v27;
    *v19 = v27;
    _os_log_impl(&dword_23D62D000, v13, v14, "[%s]: session failed with %@", v18, 0x16u);
    sub_23D6598A4(v19, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x23EEE7580](v67, -1, -1);
    MEMORY[0x23EEE7580](v18, -1, -1);
  }

  else
  {
  }

  v28 = *(v0 + 336);
  v29 = *(v0 + 320);
  v30 = *(v0 + 64);
  (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
  v31 = v30;
  v32 = sub_23D685850();
  v33 = sub_23D685A70();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 344);
  v36 = *(v0 + 296);
  v37 = *(v0 + 280);
  v38 = *(v0 + 288) + 8;
  if (v34)
  {
    v68 = v33;
    v39 = *(v0 + 64);
    v65 = *(v0 + 344);
    v40 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = v66;
    *v40 = *(v15 + 35);
    v41 = v39;
    v42 = [v41 v16[58]];
    v43 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v45 = v44;

    v46 = sub_23D652534(v43, v45, &v69);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    v47 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v49 = v48;
    v65(v36, v37);
    v50 = sub_23D652534(v47, v49, &v69);

    *(v40 + 14) = v50;
    _os_log_impl(&dword_23D62D000, v32, v68, "[%s]: Restarting sound recogntion task for identifier: %s.", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v66, -1, -1);
    MEMORY[0x23EEE7580](v40, -1, -1);
  }

  else
  {

    v35(v36, v37);
  }

  v51 = *(v0 + 136);
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v57 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v58 = *(v55 + 8);
  *(v0 + 392) = v58;
  *(v0 + 400) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v54, v56);
  v59 = *(MEMORY[0x277D85A58] + 4);
  v60 = swift_task_alloc();
  *(v0 + 408) = v60;
  *v60 = v0;
  v60[1] = sub_23D6724CC;
  v61 = *(v0 + 136);
  v63 = *(v0 + 112);
  v62 = *(v0 + 120);

  return MEMORY[0x2822008C8](v63, v0 + 16, v62, v57);
}

uint64_t sub_23D6724CC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v10 = *v1;
  *(*v1 + 416) = v0;

  v4 = *(v2 + 400);
  if (v0)
  {
    (*(v2 + 392))(*(v2 + 112), *(v2 + 88));
    v5 = sub_23D6729E0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 392))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v5 = sub_23D672624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23D672624()
{
  v50 = v0;
  if (sub_23D685A00())
  {
    v2 = *(v0 + 304);
    v1 = *(v0 + 312);
    v3 = *(v0 + 296);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v44 = *(v0 + 136);
    v45 = *(v0 + 112);
    v47 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    v15 = *(v0 + 272);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 64);
    (*(v0 + 328))(*(v0 + 304), *(v0 + 72), *(v0 + 280));
    sub_23D685770();
    (*(v17 + 16))(v16, v15, v18);
    v20 = v19;
    v21 = sub_23D685850();
    v22 = sub_23D685A70();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 264);
    v25 = *(v0 + 248);
    v26 = (*(v0 + 256) + 8);
    if (v23)
    {
      v48 = v22;
      v27 = *(v0 + 64);
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v28 = 136315394;
      v29 = v27;
      v30 = [v29 description];
      v31 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v33 = v32;

      v34 = sub_23D652534(v31, v33, &v49);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0]);
      v35 = sub_23D685CF0();
      v37 = v36;
      v38 = *v26;
      (*v26)(v24, v25);
      v39 = sub_23D652534(v35, v37, &v49);

      *(v28 + 14) = v39;
      _os_log_impl(&dword_23D62D000, v21, v48, "[%s]: running request %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v46, -1, -1);
      MEMORY[0x23EEE7580](v28, -1, -1);
    }

    else
    {

      v38 = *v26;
      (*v26)(v24, v25);
    }

    *(v0 + 352) = v38;
    v40 = *(MEMORY[0x277CDC8C8] + 4);
    v41 = swift_task_alloc();
    *(v0 + 360) = v41;
    *v41 = v0;
    v41[1] = sub_23D67168C;
    v42 = *(v0 + 272);
    v43 = *(v0 + 240);

    return MEMORY[0x28212BAC8](v43, v42);
  }
}

uint64_t sub_23D6729E0()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];
  v13 = v0[21];
  v14 = v0[20];
  v9 = v0[14];
  v15 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v10 = v0[1];
  v11 = v0[52];

  return v10();
}

uint64_t sub_23D672B08()
{
  v64 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 64);
  v4 = *(v0 + 256) + 8;
  (*(v0 + 352))(*(v0 + 272), *(v0 + 248));
  v5 = v3;
  v6 = v1;
  v7 = sub_23D685850();
  v8 = sub_23D685A70();

  v9 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v10 = &selRef_bufferSize;
  if (os_log_type_enabled(v7, v8))
  {
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v12 = 136315394;
    v14 = v11;
    v15 = [v14 description];
    v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v18 = v17;

    v10 = &selRef_bufferSize;
    v19 = sub_23D652534(v16, v18, &v63);

    *(v12 + 4) = v19;
    v9 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v12 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_23D62D000, v7, v8, "[%s]: session failed with %@", v12, 0x16u);
    sub_23D6598A4(v13, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x23EEE7580](v61, -1, -1);
    MEMORY[0x23EEE7580](v12, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 336);
  v23 = *(v0 + 320);
  v24 = *(v0 + 64);
  (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
  v25 = v24;
  v26 = sub_23D685850();
  v27 = sub_23D685A70();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 344);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 288) + 8;
  if (v28)
  {
    v62 = v27;
    v33 = *(v0 + 64);
    v59 = *(v0 + 344);
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v34 = *(v9 + 35);
    v35 = v33;
    v36 = [v35 v10[58]];
    v37 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v39 = v38;

    v40 = sub_23D652534(v37, v39, &v63);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v43 = v42;
    v59(v30, v31);
    v44 = sub_23D652534(v41, v43, &v63);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_23D62D000, v26, v62, "[%s]: Restarting sound recogntion task for identifier: %s.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v60, -1, -1);
    MEMORY[0x23EEE7580](v34, -1, -1);
  }

  else
  {

    v29(v30, v31);
  }

  v45 = *(v0 + 136);
  v47 = *(v0 + 112);
  v46 = *(v0 + 120);
  v49 = *(v0 + 96);
  v48 = *(v0 + 104);
  v50 = *(v0 + 88);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v51 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v52 = *(v49 + 8);
  *(v0 + 392) = v52;
  *(v0 + 400) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v52(v48, v50);
  v53 = *(MEMORY[0x277D85A58] + 4);
  v54 = swift_task_alloc();
  *(v0 + 408) = v54;
  *v54 = v0;
  v54[1] = sub_23D6724CC;
  v55 = *(v0 + 136);
  v57 = *(v0 + 112);
  v56 = *(v0 + 120);

  return MEMORY[0x2822008C8](v57, v0 + 16, v56, v51);
}

uint64_t sub_23D673020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_23D685C60();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v11 = sub_23D685C70();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = sub_23D6857B0();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E0, &qword_23D6898B8) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E8, &qword_23D6898C0);
  v7[23] = v18;
  v19 = *(v18 - 8);
  v7[24] = v19;
  v20 = *(v19 + 64) + 15;
  v7[25] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08F0, &unk_23D6898C8);
  v7[26] = v21;
  v22 = *(v21 - 8);
  v7[27] = v22;
  v23 = *(v22 + 64) + 15;
  v7[28] = swift_task_alloc();
  v24 = sub_23D6857A0();
  v7[29] = v24;
  v25 = *(v24 - 8);
  v7[30] = v25;
  v26 = *(v25 + 64) + 15;
  v7[31] = swift_task_alloc();
  v27 = sub_23D6856A0();
  v7[32] = v27;
  v28 = *(v27 - 8);
  v7[33] = v28;
  v29 = *(v28 + 64) + 15;
  v7[34] = swift_task_alloc();
  v30 = sub_23D685780();
  v7[35] = v30;
  v31 = *(v30 - 8);
  v7[36] = v31;
  v32 = *(v31 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D6733D0, 0, 0);
}

uint64_t sub_23D6733D0()
{
  v68 = v0;
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_23D685860();
  v0[39] = __swift_project_value_buffer(v3, qword_27E2E0880);
  v4 = v2;
  v5 = v1;
  v6 = sub_23D685850();
  v7 = sub_23D685A70();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67[0] = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v16 = v15;

    v17 = sub_23D652534(v14, v16, v67);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = [v8 identifier];
    v19 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v21 = v20;

    v22 = sub_23D652534(v19, v21, v67);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: Starting custom sound recogntion task for identifier: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v11, -1, -1);
    MEMORY[0x23EEE7580](v10, -1, -1);
  }

  if (sub_23D685A00())
  {
    v24 = v0[37];
    v23 = v0[38];
    v25 = v0[34];
    v26 = v0[31];
    v27 = v0[28];
    v28 = v0[25];
    v30 = v0[21];
    v29 = v0[22];
    v31 = v0[18];
    v32 = v0[15];
    v65 = v0[14];

    v33 = v0[1];

    return v33();
  }

  else
  {
    v35 = v0[32];
    v36 = *(v0[33] + 16);
    v0[40] = v36;
    v37 = v0[38];
    v36(v0[34], v0[10], v35);
    sub_23D685760();
    v38 = v0[39];
    v39 = v0[8];
    (*(v0[36] + 16))(v0[37], v0[38], v0[35]);
    v40 = v39;
    v41 = sub_23D685850();
    v42 = sub_23D685A70();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[37];
    v45 = v0[35];
    v46 = (v0[36] + 8);
    if (v43)
    {
      v66 = v42;
      v47 = v0[8];
      v48 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v48 = 136315394;
      v49 = v47;
      v50 = [v49 description];
      v51 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v53 = v52;

      v54 = sub_23D652534(v51, v53, v67);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0]);
      v55 = sub_23D685CF0();
      v57 = v56;
      v58 = *v46;
      (*v46)(v44, v45);
      v59 = sub_23D652534(v55, v57, v67);

      *(v48 + 14) = v59;
      _os_log_impl(&dword_23D62D000, v41, v66, "[%s]: running request %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v64, -1, -1);
      MEMORY[0x23EEE7580](v48, -1, -1);
    }

    else
    {

      v58 = *v46;
      (*v46)(v44, v45);
    }

    v0[41] = v58;
    v60 = *(MEMORY[0x277CDC8C8] + 4);
    v61 = swift_task_alloc();
    v0[42] = v61;
    *v61 = v0;
    v61[1] = sub_23D673DCC;
    v62 = v0[38];
    v63 = v0[31];

    return MEMORY[0x28212BAC8](v63, v62);
  }
}

uint64_t sub_23D673DCC()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_23D67564C;
  }

  else
  {
    v3 = sub_23D673EE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D673EE0()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  sub_23D685790();
  sub_23D685820();
  v5 = sub_23D67A5C4();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *v7 = v0;
  v7[1] = sub_23D673FB4;
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23D673FB4()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_23D6745D4;
  }

  else
  {
    v3 = sub_23D6740C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D6740C8()
{
  v59 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v57 = *(v0 + 328);
    v4 = *(v0 + 304);
    v5 = *(v0 + 280);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 288) + 8;
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v57(v4, v5);
    v13 = *(v0 + 312);
    v14 = *(v0 + 72);
    v15 = *(v0 + 64);
    v16 = v14;
    v17 = sub_23D685850();
    v18 = sub_23D685A70();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v58 = v22;
      *v21 = 136315394;
      v23 = v20;
      v24 = [v23 description];
      v25 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v27 = v26;

      v28 = sub_23D652534(v25, v27, &v58);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = [v19 identifier];
      v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v32 = v31;

      v33 = sub_23D652534(v30, v32, &v58);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_23D62D000, v17, v18, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v22, -1, -1);
      MEMORY[0x23EEE7580](v21, -1, -1);
    }

    v34 = *(v0 + 144);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v0 + 96);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6896C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v40 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
    sub_23D685D30();
    sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
    sub_23D685C80();
    v41 = *(v38 + 8);
    *(v0 + 368) = v41;
    *(v0 + 376) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v37, v39);
    v42 = *(MEMORY[0x277D85A58] + 4);
    v43 = swift_task_alloc();
    *(v0 + 384) = v43;
    *v43 = v0;
    v43[1] = sub_23D674BAC;
    v44 = *(v0 + 144);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);

    return MEMORY[0x2822008C8](v46, v0 + 16, v45, v40);
  }

  else
  {
    v47 = *(v0 + 168);
    v48 = *(v0 + 88);
    v49 = *(v0 + 64);
    (*(v3 + 32))(v47, v1, v2);
    (*((*MEMORY[0x277D85000] & *v49) + 0x140))(v47, v48);
    (*(v3 + 8))(v47, v2);
    v50 = sub_23D67A5C4();
    v51 = *(MEMORY[0x277D856D0] + 4);
    v52 = swift_task_alloc();
    *(v0 + 352) = v52;
    *v52 = v0;
    v52[1] = sub_23D673FB4;
    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);

    return MEMORY[0x282200308](v54, v55, v50);
  }
}

uint64_t sub_23D6745D4()
{
  *(v0 + 56) = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D674668, 0, 0);
}

uint64_t sub_23D674668()
{
  v67 = v0;
  v64 = *(v0 + 328);
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 288) + 8;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v64(v1, v2);
  v10 = *(v0 + 360);
  v11 = *(v0 + 312);
  v12 = *(v0 + 64);
  v13 = v10;
  v14 = sub_23D685850();
  v15 = sub_23D685A70();

  v16 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v17 = &selRef_bufferSize;
  if (os_log_type_enabled(v14, v15))
  {
    v18 = *(v0 + 64);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v65;
    *v19 = 136315394;
    v21 = v18;
    v22 = [v21 description];
    v23 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v25 = v24;

    v17 = &selRef_bufferSize;
    v26 = sub_23D652534(v23, v25, &v66);

    *(v19 + 4) = v26;
    v16 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v19 + 12) = 2112;
    v27 = v10;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v28;
    *v20 = v28;
    _os_log_impl(&dword_23D62D000, v14, v15, "[%s]: session failed with %@", v19, 0x16u);
    sub_23D6598A4(v20, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x23EEE7580](v65, -1, -1);
    MEMORY[0x23EEE7580](v19, -1, -1);
  }

  else
  {
  }

  v29 = *(v0 + 312);
  v30 = *(v0 + 72);
  v31 = *(v0 + 64);
  v32 = v30;
  v33 = sub_23D685850();
  v34 = sub_23D685A70();

  if (os_log_type_enabled(v33, v34))
  {
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66 = v38;
    *v37 = *(v16 + 35);
    v39 = v36;
    v40 = [v39 v17[58]];
    v41 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v43 = v42;

    v44 = sub_23D652534(v41, v43, &v66);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2080;
    v45 = [v35 identifier];
    v46 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v48 = v47;

    v49 = sub_23D652534(v46, v48, &v66);

    *(v37 + 14) = v49;
    _os_log_impl(&dword_23D62D000, v33, v34, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v38, -1, -1);
    MEMORY[0x23EEE7580](v37, -1, -1);
  }

  v50 = *(v0 + 144);
  v52 = *(v0 + 120);
  v51 = *(v0 + 128);
  v54 = *(v0 + 104);
  v53 = *(v0 + 112);
  v55 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v56 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v57 = *(v54 + 8);
  *(v0 + 368) = v57;
  *(v0 + 376) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v53, v55);
  v58 = *(MEMORY[0x277D85A58] + 4);
  v59 = swift_task_alloc();
  *(v0 + 384) = v59;
  *v59 = v0;
  v59[1] = sub_23D674BAC;
  v60 = *(v0 + 144);
  v62 = *(v0 + 120);
  v61 = *(v0 + 128);

  return MEMORY[0x2822008C8](v62, v0 + 16, v61, v56);
}

uint64_t sub_23D674BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v10 = *v1;
  *(*v1 + 392) = v0;

  v4 = *(v2 + 376);
  if (v0)
  {
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    v5 = sub_23D67553C;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 128);
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    (*(v7 + 8))(v6, v8);
    v5 = sub_23D674D04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23D674D04()
{
  v98 = v0;
  if (sub_23D685A00())
  {
    v2 = *(v0 + 296);
    v1 = *(v0 + 304);
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 144);
    v10 = *(v0 + 120);
    v94 = *(v0 + 112);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 392);
    v14 = *(v0 + 304);
    v15 = *(v0 + 264) + 16;
    (*(v0 + 320))(*(v0 + 272), *(v0 + 80), *(v0 + 256));
    sub_23D685760();
    v16 = *(v0 + 312);
    if (v13)
    {
      v17 = *(v0 + 64);
      v18 = v13;
      v19 = sub_23D685850();
      v20 = sub_23D685A70();

      v21 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
      v22 = &selRef_bufferSize;
      if (os_log_type_enabled(v19, v20))
      {
        v23 = *(v0 + 64);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v97[0] = v95;
        *v24 = 136315394;
        v26 = v23;
        v27 = [v26 description];
        v28 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v30 = v29;

        v22 = &selRef_bufferSize;
        v31 = sub_23D652534(v28, v30, v97);

        *(v24 + 4) = v31;
        v21 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
        *(v24 + 12) = 2112;
        v32 = v13;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v33;
        *v25 = v33;
        _os_log_impl(&dword_23D62D000, v19, v20, "[%s]: session failed with %@", v24, 0x16u);
        sub_23D6598A4(v25, &qword_27E2E06F0, &qword_23D6893C0);
        MEMORY[0x23EEE7580](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x23EEE7580](v95, -1, -1);
        MEMORY[0x23EEE7580](v24, -1, -1);
      }

      else
      {
      }

      v55 = *(v0 + 312);
      v56 = *(v0 + 72);
      v57 = *(v0 + 64);
      v58 = v56;
      v59 = sub_23D685850();
      v60 = sub_23D685A70();

      if (os_log_type_enabled(v59, v60))
      {
        v62 = *(v0 + 64);
        v61 = *(v0 + 72);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v97[0] = v64;
        *v63 = *(v21 + 35);
        v65 = v62;
        v66 = [v65 v22[58]];
        v67 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v69 = v68;

        v70 = sub_23D652534(v67, v69, v97);

        *(v63 + 4) = v70;
        *(v63 + 12) = 2080;
        v71 = [v61 identifier];
        v72 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v74 = v73;

        v75 = sub_23D652534(v72, v74, v97);

        *(v63 + 14) = v75;
        _os_log_impl(&dword_23D62D000, v59, v60, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v64, -1, -1);
        MEMORY[0x23EEE7580](v63, -1, -1);
      }

      v76 = *(v0 + 144);
      v78 = *(v0 + 120);
      v77 = *(v0 + 128);
      v80 = *(v0 + 104);
      v79 = *(v0 + 112);
      v81 = *(v0 + 96);
      sub_23D685D50();
      *(v0 + 40) = xmmword_23D6896C0;
      *(v0 + 24) = 0;
      *(v0 + 16) = 0;
      *(v0 + 32) = 1;
      v82 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
      sub_23D685D30();
      sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
      sub_23D685C80();
      v83 = *(v80 + 8);
      *(v0 + 368) = v83;
      *(v0 + 376) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v83(v79, v81);
      v84 = *(MEMORY[0x277D85A58] + 4);
      v85 = swift_task_alloc();
      *(v0 + 384) = v85;
      *v85 = v0;
      v85[1] = sub_23D674BAC;
      v86 = *(v0 + 144);
      v88 = *(v0 + 120);
      v87 = *(v0 + 128);

      return MEMORY[0x2822008C8](v88, v0 + 16, v87, v82);
    }

    else
    {
      v34 = *(v0 + 64);
      (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
      v35 = v34;
      v36 = sub_23D685850();
      v37 = sub_23D685A70();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 296);
      v40 = *(v0 + 280);
      v41 = (*(v0 + 288) + 8);
      if (v38)
      {
        v96 = v37;
        v42 = *(v0 + 64);
        v43 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v97[0] = v93;
        *v43 = 136315394;
        v44 = v42;
        v45 = [v44 description];
        v46 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v48 = v47;

        v49 = sub_23D652534(v46, v48, v97);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;
        sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0]);
        v50 = sub_23D685CF0();
        v52 = v51;
        v53 = *v41;
        (*v41)(v39, v40);
        v54 = sub_23D652534(v50, v52, v97);

        *(v43 + 14) = v54;
        _os_log_impl(&dword_23D62D000, v36, v96, "[%s]: running request %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v93, -1, -1);
        MEMORY[0x23EEE7580](v43, -1, -1);
      }

      else
      {

        v53 = *v41;
        (*v41)(v39, v40);
      }

      *(v0 + 328) = v53;
      v89 = *(MEMORY[0x277CDC8C8] + 4);
      v90 = swift_task_alloc();
      *(v0 + 336) = v90;
      *v90 = v0;
      v90[1] = sub_23D673DCC;
      v91 = *(v0 + 304);
      v92 = *(v0 + 248);

      return MEMORY[0x28212BAC8](v92, v91);
    }
  }
}

uint64_t sub_23D67553C()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[15];
  v13 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v10 = v0[1];
  v11 = v0[49];

  return v10();
}

uint64_t sub_23D67564C()
{
  v58 = v0;
  v1 = *(v0 + 288) + 8;
  (*(v0 + 328))(*(v0 + 304), *(v0 + 280));
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 64);
  v5 = v2;
  v6 = sub_23D685850();
  v7 = sub_23D685A70();

  v8 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v9 = &selRef_bufferSize;
  if (os_log_type_enabled(v6, v7))
  {
    v10 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v11 = 136315394;
    v13 = v10;
    v14 = [v13 description];
    v15 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v17 = v16;

    v9 = &selRef_bufferSize;
    v18 = sub_23D652534(v15, v17, &v57);

    *(v11 + 4) = v18;
    v8 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v11 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: session failed with %@", v11, 0x16u);
    sub_23D6598A4(v12, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x23EEE7580](v56, -1, -1);
    MEMORY[0x23EEE7580](v11, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 312);
  v22 = *(v0 + 72);
  v23 = *(v0 + 64);
  v24 = v22;
  v25 = sub_23D685850();
  v26 = sub_23D685A70();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57 = v30;
    *v29 = *(v8 + 35);
    v31 = v28;
    v32 = [v31 v9[58]];
    v33 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v35 = v34;

    v36 = sub_23D652534(v33, v35, &v57);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v37 = [v27 identifier];
    v38 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v40 = v39;

    v41 = sub_23D652534(v38, v40, &v57);

    *(v29 + 14) = v41;
    _os_log_impl(&dword_23D62D000, v25, v26, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v30, -1, -1);
    MEMORY[0x23EEE7580](v29, -1, -1);
  }

  v42 = *(v0 + 144);
  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v47 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v48 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8]);
  sub_23D685C80();
  v49 = *(v46 + 8);
  *(v0 + 368) = v49;
  *(v0 + 376) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v45, v47);
  v50 = *(MEMORY[0x277D85A58] + 4);
  v51 = swift_task_alloc();
  *(v0 + 384) = v51;
  *v51 = v0;
  v51[1] = sub_23D674BAC;
  v52 = *(v0 + 144);
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);

  return MEMORY[0x2822008C8](v54, v0 + 16, v53, v48);
}

void sub_23D675B2C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_23D678F74(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_23D67A758();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_23D685AF0();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_23D685B00();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.identifier.getter()
{
  v1 = sub_23D685730();
  v64 = *(v1 - 8);
  v65 = v1;
  isa = v64[8].isa;
  MEMORY[0x28223BE20](v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D685750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_23D685740();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v63 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v60 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v66 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v24 = *(v14 + 16);
  v67 = v0;
  v25 = v0;
  v26 = v24;
  v24(&v60 - v22, v25, v13);
  v27 = (*(v14 + 88))(v23, v13);
  if (v27 == *MEMORY[0x277CDC810])
  {
    (*(v14 + 96))(v23, v13);
    (*(v6 + 32))(v12, v23, v5);
    (*(v6 + 16))(v10, v12, v5);
    v28 = AccessibilitySoundRecognition.BuiltInDetectorIdentifier.listenType.getter();
    if (v28)
    {
      v29 = v28;
      v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    }

    else
    {
      v30 = 0x6E776F6E6B6E55;
    }

    v58 = *(v6 + 8);
    v58(v10, v5);
    v58(v12, v5);
  }

  else if (v27 == *MEMORY[0x277CDC808])
  {
    (*(v14 + 96))(v23, v13);
    v32 = v64;
    v31 = v65;
    (v64[4].isa)(v4, v23, v65);
    v30 = sub_23D685710();
    (v32[1].isa)(v4, v31);
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v33 = sub_23D685860();
    __swift_project_value_buffer(v33, qword_27E2E0868);
    v35 = v66;
    v34 = v67;
    v36 = v26;
    v26(v66, v67, v13);
    v37 = v68;
    v26(v68, v34, v13);
    v38 = sub_23D685850();
    v39 = sub_23D685A60();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v65) = v39;
      v41 = v40;
      v67 = swift_slowAlloc();
      v69 = v67;
      *v41 = 136315394;
      v42 = v63;
      v36(v63, v35, v13);
      v43 = sub_23D662FD0(v42);
      v44 = v35;
      v45 = v43;
      v47 = v46;
      v62 = v36;
      v48 = *(v14 + 8);
      v64 = v38;
      v48(v44, v13);
      v49 = sub_23D652534(v45, v47, &v69);

      v61 = v41;
      *(v41 + 4) = v49;
      *(v41 + 12) = 2080;
      v50 = v68;
      v62(v42, v68, v13);
      v51 = sub_23D662FD0(v42);
      v53 = v52;
      v48(v50, v13);
      v54 = sub_23D652534(v51, v53, &v69);

      v55 = v61;
      *(v61 + 14) = v54;
      v56 = v64;
      _os_log_impl(&dword_23D62D000, v64, v65, "[%s]: FATAL ERROR - DetectorIdentifier: %s, is unknown and not handled.", v55, 0x16u);
      v57 = v67;
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v57, -1, -1);
      MEMORY[0x23EEE7580](v55, -1, -1);
    }

    else
    {

      v48 = *(v14 + 8);
      v48(v37, v13);
      v48(v35, v13);
    }

    v48(v23, v13);
    return 0;
  }

  return v30;
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.description.getter()
{
  v1 = v0;
  v2 = sub_23D685730();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D685750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D685740();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277CDC810])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    v18 = AccessibilitySoundRecognition.BuiltInDetectorIdentifier.listenType.getter();
    if (v18)
    {
      v19 = v18;
      v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    }

    else
    {
      v20 = 0x6E776F6E6B6E55;
    }

    (*(v8 + 8))(v11, v7);
  }

  else if (v17 == *MEMORY[0x277CDC808])
  {
    (*(v13 + 96))(v16, v12);
    v21 = (*(v3 + 32))(v6, v16, v2);
    v20 = MEMORY[0x23EEE64B0](v21);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = 0x6E776F6E6B6E55;
    (*(v13 + 8))(v16, v12);
  }

  return v20;
}

void *sub_23D67671C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0908, &qword_23D6898E8);
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

uint64_t sub_23D6767A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
    v2 = sub_23D685BC0();
    v16 = v2;
    sub_23D685B40();
    if (sub_23D685B80())
    {
      sub_23D67A758();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23D676BE4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_23D685AF0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_23D685B80());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23D676984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0580, &unk_23D689900);
  result = sub_23D685BB0();
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
      sub_23D685DA0();
      sub_23D685940();
      result = sub_23D685DC0();
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

uint64_t sub_23D676BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  result = sub_23D685BB0();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_23D685AF0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23D676E0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0558, &unk_23D689340);
  result = sub_23D685BB0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      sub_23D685DA0();
      sub_23D685940();
      v20 = sub_23D685DC0();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23D677088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23D685AF0();
  v5 = -1 << *(a2 + 32);
  result = sub_23D685B30();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_23D67710C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0580, &unk_23D689900);
  v2 = *v0;
  v3 = sub_23D685BA0();
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

id sub_23D677268()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  v2 = *v0;
  v3 = sub_23D685BA0();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

id sub_23D6773B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0558, &unk_23D689340);
  v2 = *v0;
  v3 = sub_23D685BA0();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_23D677508(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_23D685B50();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23D67671C(v2, 0);

    v1 = sub_23D679074(&v5, v3 + 4, v2, v1);
    sub_23D67A7A4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_23D6775B8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_23D685B50();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_23D685C00();
    *v1 = result;
  }

  return result;
}

void sub_23D677674(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_23D685B50())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23D685B40();
    sub_23D67A758();
    sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758);
    sub_23D685A30();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_23D67A7A4();
      return;
    }

    while (1)
    {
      v18 = sub_23D677F2C(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_23D685B80())
      {
        sub_23D67A758();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_23D6778A4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23D685B40();
    sub_23D67A758();
    sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758);
    sub_23D685A30();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_23D685B80();
      if (!v22)
      {
        goto LABEL_62;
      }

      v73 = v22;
      sub_23D67A758();
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = *(v4 + 40);
    v24 = v20;
    v25 = sub_23D685AF0();
    v26 = -1 << *(v4 + 32);
    v7 = v25 & ~v26;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v26;
  v27 = sub_23D67A758();
  v28 = *(*(v4 + 48) + 8 * v7);
  v71 = v27;
  while (1)
  {
    v29 = sub_23D685B00();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x28223BE20](v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v68;
    v36 = v69;
LABEL_33:
    v67 = v5;
    while (v36 < 0)
    {
      v38 = sub_23D685B80();
      if (!v38)
      {
        goto LABEL_61;
      }

      v73 = v38;
      swift_dynamicCast();
      v39 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = *(v4 + 40);
      v45 = sub_23D685AF0();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_23D685B00();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v37 = v68;
        v36 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v37 = v68;
        v36 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v41;
      v18 = v41;
      v79 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_23D678330(v65, v63, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_23D6780B4(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x23EEE7580](v59, -1, -1);
  v4 = v61;
LABEL_62:
  sub_23D67A7A4();
LABEL_63:
  v55 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23D677F2C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_23D685B90();

    if (v7)
    {
      v8 = sub_23D678524();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_23D67A758();
  v11 = *(v3 + 40);
  v12 = sub_23D685AF0();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_23D685B00();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23D677268();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_23D67867C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

void sub_23D6780B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_23D685B80())
          {
            goto LABEL_30;
          }

          sub_23D67A758();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_23D678330(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_23D685AF0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_23D67A758();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_23D685B00();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_23D685B00();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_23D678330(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  result = sub_23D685BD0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_23D685AF0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23D678524()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_23D685B50();
  v4 = swift_unknownObjectRetain();
  v5 = sub_23D6767A4(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_23D685AF0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_23D67A758();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_23D685B00();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_23D67867C(v9);
  result = sub_23D685B00();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23D67867C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_23D685B20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_23D685AF0();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_23D67881C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D685B20() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_23D685AF0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

void sub_23D6789A8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D685B20() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_23D685AF0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

void *sub_23D678B34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0750, &qword_23D689620);
  v2 = *v0;
  v3 = sub_23D685CA0();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_23D678C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0760, &unk_23D689630);
  v2 = *v0;
  v3 = sub_23D685CA0();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

void *sub_23D678E10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0A40, &qword_23D689618);
  v2 = *v0;
  v3 = sub_23D685CA0();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_23D678F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_23D685B50())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_23D685B90();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_23D679074(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_23D685B40();
  sub_23D67A758();
  sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758);
  result = sub_23D685A30();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_23D685B80())
      {
        goto LABEL_30;
      }

      sub_23D67A758();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_23D6792A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23D685B50();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_23D685C00();
}

unint64_t sub_23D679304(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_23D685B50();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23EEE6980](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_23D685D00();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_23D6794A0(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_23D679304(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_23D685B50();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_23D685B50())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x23EEE6980](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_23D685D00();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23EEE6980](v33, v7);
        v23 = MEMORY[0x23EEE6980](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_23D6792A0(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_23D6792A0(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_23D685B50();
}

uint64_t sub_23D6797B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_23D67A758();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23D685B50();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23D685B50();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23D6798B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23D685B50();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_23D685B50();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_23D6775B8(result);

  return sub_23D6797B0(v4, v2, 0);
}

uint64_t sub_23D679988()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v1[v2] != 1)
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v46 = sub_23D685860();
    __swift_project_value_buffer(v46, qword_27E2E0868);
    v47 = v1;
    v48 = sub_23D685850();
    v49 = sub_23D685A60();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67 = v51;
      *v50 = 136315138;
      v52 = v47;
      v53 = [v52 description];
      v54 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v56 = v55;

      v57 = sub_23D652534(v54, v56, &v67);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_23D62D000, v48, v49, "[%s]: trying to start sound analysis while the feature is not enabled. Need to enable it first.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23EEE7580](v51, -1, -1);
      MEMORY[0x23EEE7580](v50, -1, -1);
    }

    sub_23D67A7F4();
    swift_allocError();
    *v58 = 0;
    return swift_willThrow();
  }

  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v64 = result - 1;
      if (result < 1)
      {
        __break(1u);
LABEL_44:
        sub_23D67A758();
        result = sub_23D685D20();
        __break(1u);
        return result;
      }

      v65 = v4 & 0xC000000000000001;
      v6 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;

      swift_beginAccess();
      v7 = 0;
      v63 = v6;
      if ((v4 & 0xC000000000000001) != 0)
      {
LABEL_6:
        v8 = MEMORY[0x23EEE6980](v7, v4);
        goto LABEL_8;
      }

      while (1)
      {
        v8 = *(v4 + 8 * v7 + 32);
LABEL_8:
        v9 = v8;
        if (*(*&v1[v6] + 16))
        {
          v10 = *&v1[v6];

          sub_23D67EE10(v9);
          if (v11)
          {

            goto LABEL_29;
          }
        }

        v12 = sub_23D66EC9C(v9);
        if (v12)
        {
          break;
        }

        if (qword_27E2E03D0 != -1)
        {
          swift_once();
        }

        v26 = sub_23D685860();
        __swift_project_value_buffer(v26, qword_27E2E0868);
        v27 = v9;
        v28 = v1;
        v29 = sub_23D685850();
        v30 = sub_23D685A70();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66 = v62;
          *v31 = 136315394;
          v32 = v28;
          v60 = v30;
          v33 = v4;
          v34 = [v32 description];
          v35 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
          log = v29;
          v37 = v36;

          v4 = v33;
          v38 = sub_23D652534(v35, v37, &v66);

          *(v31 + 4) = v38;
          v6 = v63;
          *(v31 + 12) = 2112;
          *(v31 + 14) = v27;
          *v61 = v27;
          v39 = v27;
          _os_log_impl(&dword_23D62D000, log, v60, "[%s]: unable to create a task for detector: %@", v31, 0x16u);
          sub_23D6598A4(v61, &qword_27E2E06F0, &qword_23D6893C0);
          MEMORY[0x23EEE7580](v61, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x23EEE7580](v62, -1, -1);
          MEMORY[0x23EEE7580](v31, -1, -1);
        }

        else
        {
        }

LABEL_29:
        if (v64 == v7)
        {
        }

        ++v7;
        if (v65)
        {
          goto LABEL_6;
        }
      }

      v13 = v12;
      swift_beginAccess();

      v14 = *&v1[v6];
      v15 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *&v1[v6];
      v17 = v68;
      v18 = sub_23D67EE10(v15);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (!v22)
      {
        break;
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_23D685B50();
      if (!result)
      {
        return result;
      }
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v18;
        sub_23D678B34();
        v18 = v43;
        v40 = v68;
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_23D67EFBC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_23D67EE10(v15);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_44;
      }
    }

    v40 = v68;
    if (v24)
    {
LABEL_23:
      v41 = v40[7];
      v42 = *(v41 + 8 * v18);
      *(v41 + 8 * v18) = v13;

LABEL_28:
      v6 = v63;
      *&v1[v63] = v40;
      swift_endAccess();

      goto LABEL_29;
    }

LABEL_26:
    v40[(v18 >> 6) + 8] |= 1 << v18;
    *(v40[6] + 8 * v18) = v15;
    *(v40[7] + 8 * v18) = v13;
    v44 = v40[2];
    v22 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v22)
    {
      goto LABEL_40;
    }

    v40[2] = v45;
    goto LABEL_28;
  }

  return result;
}