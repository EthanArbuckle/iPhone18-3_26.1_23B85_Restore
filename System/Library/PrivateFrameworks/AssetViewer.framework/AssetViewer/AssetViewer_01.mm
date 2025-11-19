uint64_t sub_24124DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a8;
  v8[31] = v14;
  v8[28] = a6;
  v8[29] = a7;
  v8[26] = a4;
  v8[27] = a5;
  v9 = sub_24135152C();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  sub_241353ECC();
  v8[35] = sub_241353EBC();
  v11 = sub_241353E8C();
  v8[36] = v11;
  v8[37] = v10;

  return MEMORY[0x2822009F8](sub_24124DD30, v11, v10);
}

uint64_t sub_24124DD30()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 216), *(v0 + 256));
  *(v0 + 184) = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  *(v0 + 192) = 0x100000001000;
  *(v0 + 200) = 1;
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_24124DE28;
  v2 = *(v0 + 272);

  return sub_241344E40(v2, (v0 + 184));
}

uint64_t sub_24124DE28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_24124E13C;
  }

  else
  {
    v4[40] = a1;
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_24124DF50;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24124DF50()
{
  *(v0[26] + OBJC_IVAR____TtC11AssetViewer15ModelController_variantLoader) = v0[40];

  v1 = sub_241244E30(MEMORY[0x277D84F90]);
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_24124E020;

  return sub_24124ED04((v0 + 9), (v0 + 2), v1);
}

uint64_t sub_24124E020()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_24124E2D4;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_24124E1C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24124E13C()
{

  v1 = *(v0 + 312);
  (*(v0 + 240))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24124E1C0()
{
  v18 = v0;
  v1 = *(v0 + 224);

  v2 = *(v0 + 88);
  *(v0 + 128) = *(v0 + 72);
  *(v0 + 144) = v2;
  *(v0 + 160) = *(v0 + 104);
  *(v0 + 176) = *(v0 + 120);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 88);
  v11[0] = *(v0 + 72);
  v11[1] = v8;
  v11[2] = *(v0 + 104);
  v12 = *(v0 + 120);
  v13[0] = v3;
  v13[1] = v4;
  v14 = *(v0 + 32);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v1(v11, v13);

  sub_241244AE8(v0 + 128);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24124E2D4()
{

  v1 = *(v0 + 344);
  (*(v0 + 240))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24124E364(__int128 *a1, uint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v63 = a5;
  v11 = sub_2413538CC();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2413538FC();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2413538BC();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_24135391C();
  v57 = *(v65 - 1);
  v17 = MEMORY[0x28223BE20](v65);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v51 - v20;
  v21 = a1[5];
  v79 = a1[4];
  v80 = v21;
  v81[0] = a1[6];
  *(v81 + 9) = *(a1 + 105);
  v22 = a1[1];
  v75 = *a1;
  v76 = v22;
  v23 = a1[3];
  v77 = a1[2];
  v78 = v23;
  v24 = [objc_opt_self() artificialLoadingDelay];
  v25 = swift_allocObject();
  v26 = a3;
  v27 = v63;
  v28 = v25;
  *(v25 + 16) = a2;
  v29 = a1[5];
  *(v25 + 96) = a1[4];
  *(v25 + 112) = v29;
  *(v25 + 128) = a1[6];
  *(v25 + 137) = *(a1 + 105);
  v30 = a1[1];
  *(v25 + 32) = *a1;
  *(v25 + 48) = v30;
  v31 = a1[3];
  *(v25 + 64) = a1[2];
  *(v25 + 80) = v31;
  *(v25 + 160) = v26;
  *(v25 + 168) = a4;
  v66 = a4;
  *(v25 + 176) = v27;
  *(v25 + 184) = a6;
  if (v24 < 1)
  {
    v46 = v26;
    v65 = &v51;
    MEMORY[0x28223BE20](v25);
    *(&v51 - 2) = sub_241255EEC;
    *(&v51 - 1) = v28;
    v47 = objc_opt_self();

    sub_241246210(&v75, &v68, &qword_27E538348);

    sub_241246210(&v75, &v68, &qword_27E538348);

    v48 = [v47 currentThread];
    v49 = [v48 isMainThread];

    if (v49)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v72 = v79;
        v73 = v80;
        v74[0] = v81[0];
        *(v74 + 9) = *(v81 + 9);
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v71 = v78;
        sub_24125072C(&v68, v46, v66, v63);

        sub_241246278(&v75, &qword_27E538348);
      }
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v50 = sub_24135416C();
      sub_24135417C();
    }

    sub_241246278(&v75, &qword_27E538348);
  }

  v53 = v11;

  sub_241246210(&v75, &v68, &qword_27E538348);

  v54 = a2;

  sub_241246210(&v75, &v68, &qword_27E538348);
  v32 = qword_27E537CD0;

  if (v32 != -1)
  {
    swift_once();
  }

  v63 = a6;
  v33 = sub_241352FFC();
  __swift_project_value_buffer(v33, qword_27E53A538);
  v34 = sub_241352FDC();
  v35 = sub_2413540DC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v24;
    _os_log_impl(&dword_241215000, v34, v35, "Artificially adding %lds of delay before asset loading completed", v36, 0xCu);
    MEMORY[0x245CE4870](v36, -1, -1);
  }

  sub_241246158(0, &qword_27E538920);
  v52 = sub_24135416C();
  sub_24135390C();
  *v16 = v24;
  v38 = v55;
  v37 = v56;
  (*(v55 + 104))(v16, *MEMORY[0x277D85188], v56);
  MEMORY[0x245CE1CE0](v19, v16);
  (*(v38 + 8))(v16, v37);
  v57 = *(v57 + 8);
  (v57)(v19, v65);
  *&v70 = sub_241255EEC;
  *(&v70 + 1) = v28;
  *&v68 = MEMORY[0x277D85DD0];
  *(&v68 + 1) = 1107296256;
  *&v69 = sub_2412D5698;
  *(&v69 + 1) = &block_descriptor_0;
  v39 = _Block_copy(&v68);

  v40 = v58;
  sub_2413538DC();
  v67 = MEMORY[0x277D84F90];
  sub_241255F40(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  v41 = v60;
  v42 = v53;
  sub_24135444C();
  v43 = v64;
  v44 = v52;
  MEMORY[0x245CE2500](v64, v40, v41, v39);
  _Block_release(v39);

  (*(v62 + 8))(v41, v42);
  (*(v59 + 8))(v40, v61);
  (v57)(v43, v65);

  sub_241246278(&v75, &qword_27E538348);
}

uint64_t sub_24124EC70(uint64_t a1, __int128 *a2, NSObject *a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24125072C(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_24124ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_241352B6C();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  sub_241353ECC();
  v4[30] = sub_241353EBC();
  v7 = sub_241353E8C();
  v4[31] = v7;
  v4[32] = v6;

  return MEMORY[0x2822009F8](sub_24124EDFC, v7, v6);
}

uint64_t sub_24124EDFC()
{
  v21 = v0;
  v1 = *(v0[26] + OBJC_IVAR____TtC11AssetViewer15ModelController_variantLoader);
  v0[33] = v1;
  if (v1)
  {
    v2 = qword_27E537CD0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    v0[34] = __swift_project_value_buffer(v3, qword_27E53A538);

    v4 = sub_241352FDC();
    v5 = sub_2413540DC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = sub_241353B6C();
      v10 = sub_2412DDC2C(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_241215000, v4, v5, "Loading the new variant: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x245CE4870](v7, -1, -1);
      MEMORY[0x245CE4870](v6, -1, -1);
    }

    sub_2413375C8();
    v11 = swift_task_alloc();
    v0[35] = v11;
    *v11 = v0;
    v11[1] = sub_24124F160;
    v12 = v0[25];

    return sub_241343B70((v0 + 9), (v0 + 2), v12);
  }

  else
  {

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v14 = sub_241352FFC();
    __swift_project_value_buffer(v14, qword_27E53A538);
    v15 = sub_241352FDC();
    v16 = sub_2413540BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_241215000, v15, v16, "variantLoader object not available", v17, 2u);
      MEMORY[0x245CE4870](v17, -1, -1);
    }

    sub_241255C30();
    swift_allocError();
    *v18 = 0xD00000000000001CLL;
    *(v18 + 8) = 0x800000024135E4A0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_24124F160()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_2412506B4;
  }

  else
  {
    v5 = sub_24124F274;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24124F274()
{
  v92 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  *(v0 + 128) = *(v0 + 72);
  *(v0 + 144) = v2;
  *(v0 + 160) = *(v0 + 104);
  *(v0 + 176) = *(v0 + 120);
  v3 = *(v0 + 32);
  *(v0 + 296) = v1;
  *(v0 + 312) = v3;
  *(v0 + 368) = *(v0 + 48);
  *(v0 + 328) = *(v0 + 56);
  sub_241336ED0();
  v4 = sub_241352FDC();
  v5 = sub_2413540DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_241215000, v4, v5, "New variant loaded", v6, 2u);
    MEMORY[0x245CE4870](v6, -1, -1);
  }

  v7 = [objc_opt_self() artificialLoadingDelay];
  *(v0 + 344) = v7;
  if (v7 >= 1)
  {
    v10 = v7;
    v11 = sub_241352FDC();
    v12 = sub_2413540DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_241215000, v11, v12, "Artificially adding %lds of delay before asset loading completed", v13, 0xCu);
      MEMORY[0x245CE4870](v13, -1, -1);
    }

    v7 = sub_24124FC1C;
    v8 = 0;
    v9 = 0;

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v14 = *(v0 + 208);
  v76 = OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController;
  v15 = *(v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
  if (!v15)
  {
    goto LABEL_78;
  }

  v16 = fmodf(6.2832 - v15[9], 6.2832);
  v17 = fmodf(v15[8] + 6.2832, 6.2832);
  v18 = v15[15];
  v19 = OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController;
  v20 = *(v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  v21 = v15[13];
  v22 = OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
  v23 = *(v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v23 >> 62)
  {
    v24 = sub_2413544EC();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v14;
  v75 = v24;
  if (v24)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v71 = v20;

      v27 = MEMORY[0x245CE29C0](0, v23);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v25 = *(v23 + 32);
      v26 = v20;
      v27 = v25;
    }

    sub_241352C5C();
    sub_2413519BC();
    v81 = v28;

    v14 = v83;
  }

  else
  {
    v29 = v20;
  }

  v23 = *(v14 + v22);
  if (v23 >> 62)
  {
    if (sub_2413544EC())
    {
      goto LABEL_20;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    if ((v23 & 0xC000000000000001) != 0)
    {

      v30 = MEMORY[0x245CE29C0](0, v23);

      goto LABEL_23;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v23 + 32);
LABEL_23:

      sub_241352C5C();
      v78 = sub_24135188C();

      v14 = v83;
      goto LABEL_27;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v78 = 0;
LABEL_27:
  v79 = v0 + 16;
  v80 = v0 + 296;
  v81 = v0;
  v31 = *(v14 + v22);
  v0 = v22;
  v77 = v20;
  v72 = v19;
  if (v31 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    if (!i)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x245CE29C0](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      sub_241352C5C();
      sub_24135187C();

      ++v33;
      if (v36 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_38:
  v22 = v80;
  v19 = v81;
  v37 = *(v80 + 72);
  v39 = v81[39];
  v38 = v81[40];
  v73 = *v80;
  v74 = *(v80 + 32);

  v40 = *(v79 + 128);
  v85[0] = *(v79 + 112);
  v85[1] = v40;
  v85[2] = *(v79 + 144);
  v86 = *(v79 + 160);
  v87 = v73;
  v88 = v39;
  v89 = v38;
  v90 = v37;
  v91 = v74;
  sub_241250B40(v85, &v87);
  v14 = v83;
  v41 = *(v83 + v76);
  if (!v41)
  {
    goto LABEL_79;
  }

  *(v41 + 52) = *(v41 + 60) / (v18 / v21);

  sub_2412596EC();
  sub_2412596EC();

  v42 = *(v83 + v76);
  if (!v42)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  *(v42 + 32) = remainderf(v17 + 6.2832, 6.2832);

  sub_2412596EC();
  *(v42 + 36) = remainderf(6.2832 - v16, 6.2832);
  sub_2412596EC();
  sub_2412596EC();

  if (v78)
  {
    v23 = *(v83 + v0);
    if (!(v23 >> 62))
    {
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      goto LABEL_71;
    }

LABEL_70:
    if (sub_2413544EC())
    {
LABEL_43:
      if ((v23 & 0xC000000000000001) == 0)
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v43 = *(v23 + 32);

        v44 = v43;
        goto LABEL_46;
      }

LABEL_72:

      v44 = MEMORY[0x245CE29C0](0, v23);

LABEL_46:
      v45 = v19[28];
      v46 = v19[29];
      v47 = v81[27];

      sub_241352C5C();

      sub_2413518AC();
      sub_241352B5C();

      v48 = v47;
      v19 = v81;
      v7 = (*(v45 + 8))(v46, v48);
      v22 = v80;
      v14 = v83;
      goto LABEL_47;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_47:
  if (!v75)
  {
    goto LABEL_54;
  }

  v23 = *(v14 + v0);
  if (!(v23 >> 62))
  {
    v7 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_50;
    }

    goto LABEL_74;
  }

  v7 = sub_2413544EC();
  if (!v7)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_50:
  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_76:

    v49 = MEMORY[0x245CE29C0](0, v23);

    goto LABEL_53;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v49 = *(v23 + 32);
LABEL_53:

  sub_241352C5C();
  sub_2413519CC();

LABEL_54:
  if (v77)
  {
    v50 = *(v72 + v14);
    if (v50)
    {
      v51 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw;
      *&v50[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = *&v77[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw];
      v52 = v50;

      v53 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch;
      *&v52[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch] = *&v77[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch];

      v54 = v77;
      v55 = sub_241352FDC();
      v56 = sub_2413540DC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134218240;
        *(v57 + 4) = *&v77[v51];
        *(v57 + 12) = 2048;
        *(v57 + 14) = *&v77[v53];
        _os_log_impl(&dword_241215000, v55, v56, "Restored to yaw: %f, pitch: %f", v57, 0x16u);
        v58 = v57;
        v19 = v81;
        MEMORY[0x245CE4870](v58, -1, -1);
      }

      v22 = v80;
      goto LABEL_60;
    }

LABEL_81:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

LABEL_60:

  v59 = *(v22 + 72);
  v61 = v19[39];
  v60 = v19[40];
  v62 = v19;
  v65 = v19 + 23;
  v64 = v19[23];
  v63 = v65[1];
  v82 = *v22;
  v84 = *(v22 + 32);

  v66 = *(v79 + 112);
  v67 = *(v79 + 128);
  v68 = *(v79 + 144);
  *(v64 + 48) = *(v79 + 160);
  *(v64 + 16) = v67;
  *(v64 + 32) = v68;
  *v64 = v66;
  *v63 = v82;
  *(v63 + 16) = v61;
  *(v63 + 24) = v60;
  *(v63 + 32) = v59;
  *(v63 + 40) = v84;

  v69 = v62[1];

  return v69();
}

uint64_t sub_24124FC1C(uint64_t a1)
{
  v3 = *(v1 + 344);
  if (is_mul_ok(v3, 0x3B9ACA00uLL))
  {
    v4 = 1000000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 352) = v5;
    *v5 = v1;
    v5[1] = sub_24124FCD0;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_24124FCD0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_2412505FC;
  }

  else
  {
    v5 = sub_24124FE0C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_24124FE0C()
{
  v77 = v1;
  v3 = *(v1 + 208);
  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
  if (!v4)
  {
    goto LABEL_69;
  }

  v63 = OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController;
  v5 = fmodf(6.2832 - v4[9], 6.2832);
  v6 = fmodf(v4[8] + 6.2832, 6.2832);
  v7 = v4[15];
  v8 = OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController;
  v9 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  v10 = v4[13];
  v11 = OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
  v12 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v12 >> 62)
  {
    v13 = sub_2413544EC();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_9:
    v18 = v9;
    v0 = 0;
    goto LABEL_10;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v58 = v9;

    v16 = MEMORY[0x245CE29C0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }

    v14 = *(v12 + 32);
    v15 = v9;
    v16 = v14;
  }

  sub_241352C5C();
  sub_2413519BC();
  v68 = v17;

  v0 = v68;
LABEL_10:
  v12 = *&v11[v3];
  if (v12 >> 62)
  {
    if (sub_2413544EC())
    {
      goto LABEL_12;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if ((v12 & 0xC000000000000001) != 0)
    {

      v19 = MEMORY[0x245CE29C0](0, v12);

      goto LABEL_15;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v12 + 32);
LABEL_15:

      sub_241352C5C();
      v20 = sub_24135188C();

      goto LABEL_18;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v20 = 0;
LABEL_18:
  v65 = v20;
  v66 = v9;
  v68 = v3;
  v21 = *&v11[v3];
  v64 = v11;
  v59 = v8;
  v62 = v13;
  if (v21 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    if (!i)
    {
      break;
    }

    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x245CE29C0](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_241352C5C();
      sub_24135187C();

      ++v23;
      if (v26 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_29:
  v2 = (v1 + 296);
  v27 = *(v1 + 368);
  v29 = *(v1 + 312);
  v28 = *(v1 + 320);
  v60 = *(v1 + 296);
  v61 = *(v1 + 328);

  v30 = *(v1 + 144);
  v70[0] = *(v1 + 128);
  v70[1] = v30;
  v70[2] = *(v1 + 160);
  v71 = *(v1 + 176);
  v72 = v60;
  v73 = v29;
  v74 = v28;
  v75 = v27;
  v76 = v61;
  sub_241250B40(v70, &v72);
  v0 = v68;
  v31 = *(v68 + v63);
  if (!v31)
  {
    goto LABEL_70;
  }

  *(v31 + 52) = *(v31 + 60) / (v7 / v10);

  sub_2412596EC();
  sub_2412596EC();

  v32 = *(v68 + v63);
  v11 = v66;
  if (!v32)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v32 + 32) = remainderf(v6 + 6.2832, 6.2832);

  sub_2412596EC();
  *(v32 + 36) = remainderf(6.2832 - v5, 6.2832);
  sub_2412596EC();
  sub_2412596EC();

  if (v65)
  {
    v12 = *&v64[v68];
    if (!(v12 >> 62))
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      goto LABEL_62;
    }

LABEL_61:
    if (sub_2413544EC())
    {
LABEL_34:
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v33 = *(v12 + 32);

        v34 = v33;
        goto LABEL_37;
      }

LABEL_63:

      v34 = MEMORY[0x245CE29C0](0, v12);

LABEL_37:
      v35 = *(v1 + 224);
      v36 = *(v1 + 232);
      v37 = *(v1 + 216);

      sub_241352C5C();

      sub_2413518AC();
      sub_241352B5C();

      (*(v35 + 8))(v36, v37);
      v11 = v66;
      v0 = v68;
      goto LABEL_38;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_38:
  if (!v62)
  {
    goto LABEL_45;
  }

  v12 = *&v64[v0];
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    goto LABEL_65;
  }

  if (!sub_2413544EC())
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_41:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_67:

    v38 = MEMORY[0x245CE29C0](0, v12);

    goto LABEL_44;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v38 = *(v12 + 32);
LABEL_44:

  sub_241352C5C();
  sub_2413519CC();

LABEL_45:
  if (v11)
  {
    v39 = *(v0 + v59);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw;
      *&v39[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = *&v11[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw];
      v41 = v39;

      v42 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch;
      *&v41[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch] = *&v11[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch];

      v43 = v11;
      v44 = sub_241352FDC();
      v45 = sub_2413540DC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v11;
        v48 = v46;
        *v46 = 134218240;
        *(v46 + 4) = *&v47[v40];
        *(v46 + 12) = 2048;
        *(v46 + 14) = *&v47[v42];
        _os_log_impl(&dword_241215000, v44, v45, "Restored to yaw: %f, pitch: %f", v46, 0x16u);
        MEMORY[0x245CE4870](v48, -1, -1);
      }

      goto LABEL_51;
    }

LABEL_72:
    __break(1u);
    return;
  }

LABEL_51:

  v49 = *(v2 + 72);
  v51 = *(v1 + 312);
  v50 = *(v1 + 320);
  v53 = *(v1 + 184);
  v52 = *(v1 + 192);
  v67 = *v2;
  v69 = v2[2];

  v54 = *(v1 + 128);
  v55 = *(v1 + 144);
  v56 = *(v1 + 160);
  *(v53 + 48) = *(v1 + 176);
  *(v53 + 16) = v55;
  *(v53 + 32) = v56;
  *v53 = v54;
  *v52 = v67;
  *(v52 + 16) = v51;
  *(v52 + 24) = v50;
  *(v52 + 32) = v49;
  *(v52 + 40) = v69;

  v57 = *(v1 + 8);

  v57();
}

uint64_t sub_2412505FC()
{

  sub_241244AE8(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412506B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24125072C(__int128 *a1, NSObject *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v9 = a1[5];
  v60 = a1[4];
  v61 = v9;
  v62[0] = a1[6];
  *(v62 + 9) = *(a1 + 105);
  v10 = a1[1];
  v56 = *a1;
  v57 = v10;
  v11 = a1[3];
  v58 = a1[2];
  v59 = v11;
  kdebug_load_asset_end();
  sub_241336ED0();
  if (*(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    v12 = a1[5];
    v54[4] = a1[4];
    v54[5] = v12;
    v55[0] = a1[6];
    *(v55 + 9) = *(a1 + 105);
    v13 = a1[1];
    v54[0] = *a1;
    v54[1] = v13;
    v14 = a1[3];
    v54[2] = a1[2];
    v54[3] = v14;
    if (sub_24124640C(v54) == 1)
    {
      v15 = *nullsub_6(v54);
      v49 = v58;
      v50 = v59;
      v47 = v56;
      v48 = v57;
      *(v53 + 9) = *(v62 + 9);
      v52 = v61;
      v53[0] = v62[0];
      v51 = v60;
      v16 = *nullsub_6(&v47);
      v17 = sub_241352FDC();
      v18 = sub_2413540BC();
      sub_241246278(&v56, &qword_27E538348);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v41 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_241354A3C();
        v23 = sub_2412DDC2C(v21, v22, &v41);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_241215000, v17, v18, "Failed to load file, error: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x245CE4870](v20, -1, -1);
        MEMORY[0x245CE4870](v19, -1, -1);
      }

      *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) = 3;
      a4(v15);
    }

    else
    {
      osloga = a2;
      v26 = nullsub_6(v54);
      v27 = *(v26 + 64);
      v28 = *(v26 + 72);
      v30 = *(v26 + 80);
      v29 = *(v26 + 88);
      v31 = *(v26 + 96);
      v32 = *(v26 + 104);
      v38 = *(v26 + 112);
      v33 = sub_241352FDC();
      v34 = sub_2413540DC();
      if (os_log_type_enabled(v33, v34))
      {
        v37 = v32;
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_241215000, v33, v34, "Successfully loaded file", v35, 2u);
        v36 = v35;
        v32 = v37;
        MEMORY[0x245CE4870](v36, -1, -1);
      }

      v47 = *v26;
      v48 = *(v26 + 16);
      v49 = *(v26 + 32);
      *&v50 = *(v26 + 48);
      *&v41 = v27;
      *(&v41 + 1) = v28;
      v42 = v30;
      v43 = v29;
      v44 = v31;
      v45 = v32;
      v46 = v38;
      sub_241250B40(&v47, &v41);
      v47 = *v26;
      v48 = *(v26 + 16);
      v49 = *(v26 + 32);
      *&v50 = *(v26 + 48);
      *&v41 = v27;
      *(&v41 + 1) = v28;
      v42 = v30;
      v43 = v29;
      v44 = v31;
      v45 = v32;
      v46 = v38;
      (osloga)(&v47, &v41);
    }
  }

  else
  {
    oslog = sub_241352FDC();
    v24 = sub_2413540BC();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_241215000, oslog, v24, "handleLoadFileCompleted() called but arView is nil.", v25, 2u);
      MEMORY[0x245CE4870](v25, -1, -1);
    }
  }
}

void sub_241250B40(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = a1[1];
  v49 = *a1;
  v50 = v9;
  v51 = a1[2];
  v52 = *(a1 + 6);
  v39 = *a2;
  v10 = *(a2 + 3);
  v38 = *(a2 + 2);
  HIDWORD(v37) = *(a2 + 32);
  v40 = *(a2 + 40);
  sub_241255B50(&v49, &v45);
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  sub_241244AE8(&v49);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    v42 = v49;
    v43 = v50;
    *v44 = v51;
    *&v44[16] = v52;
    sub_241255B50(&v49, &v45);
    v15 = AssetLoader.FileMetadata.description.getter();
    v17 = v16;
    v45 = v42;
    v46 = v43;
    v47 = *v44;
    v48 = *&v44[16];
    sub_241244AE8(&v45);
    v18 = sub_2412DDC2C(v15, v17, &v41);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_241215000, v11, v12, "Successfully loaded file, metadata: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CE4870](v14, -1, -1);
    MEMORY[0x245CE4870](v13, -1, -1);
  }

  *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) = 2;
  v19 = v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata;
  v20 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 16);
  v45 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata);
  v46 = v20;
  v47 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 32);
  v48 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 48);
  v21 = v50;
  *v19 = v49;
  *(v19 + 16) = v21;
  *(v19 + 32) = v51;
  *(v19 + 48) = v52;
  sub_241255B50(&v49, &v42);
  sub_241244AE8(&v45);
  sub_24124CC98();
  v22 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = *&v22[qword_27E53A1D8];
  *&v22[qword_27E53A1D8] = 0;
  v24 = v22;
  sub_24131B3D8(v23);

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = 0x3FD0000000000000;
  *(v26 + 24) = v25;
  *(v26 + 32) = 1056964608;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 1056964608;

  sub_2412FCD6C(sub_241255BAC, v26, sub_241255BBC, v28, 0.6);

  v42 = v39;
  *&v43 = v38;
  *(&v43 + 1) = v10;
  v44[0] = BYTE4(v37);
  *&v44[8] = v40;
  sub_24125108C(&v42);
  v29 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v29)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v30 = v40;
  v31 = *(v40 + 16);
  v32 = sub_24135152C();
  v33 = *(v32 - 8);
  if (v31)
  {
    (*(*(v32 - 8) + 16))(v8, v30 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)), v32);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v33 + 56))(v8, v34, 1, v32);
  v35 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  swift_beginAccess();
  v36 = v29;
  sub_241255BC8(v8, v29 + v35, &qword_27E538750);
  swift_endAccess();
}

void sub_24125108C(uint64_t a1)
{
  v2 = v1;
  v123 = sub_241351B6C();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24135261C();
  v116 = *(v117 - 8);
  v5 = MEMORY[0x28223BE20](v117);
  v115 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = &v113 - v7;
  v130 = sub_241351DEC();
  v134 = *(v130 - 8);
  v8 = MEMORY[0x28223BE20](v130);
  v127 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v129 = &v113 - v11;
  MEMORY[0x28223BE20](v10);
  v120 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v126 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v113 - v17;
  MEMORY[0x28223BE20](v16);
  v128 = (&v113 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  MEMORY[0x28223BE20](v19 - 8);
  v124 = &v113 - v20;
  v142 = sub_241352B6C();
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v139 = *(a1 + 8);
  v140 = v23;
  v24 = *(a1 + 24);
  v132 = *(a1 + 16);
  v131 = v24;
  v133 = *(a1 + 32);
  v25 = *(a1 + 48);
  v138 = *(a1 + 40);
  v137 = v25;
  v125 = OBJC_IVAR____TtC11AssetViewer15ModelController_logger;
  v26 = sub_241352FDC();
  v27 = sub_2413540DC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_241215000, v26, v27, "setup(sceneInfo) called", v28, 2u);
    MEMORY[0x245CE4870](v28, -1, -1);
  }

  v29 = (v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo);
  v30 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo + 8);
  v143 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo);
  v141 = v30;
  v31 = v139;
  *v29 = v140;
  v29[1] = v31;
  v32 = v131;
  v29[2] = v132;
  v29[3] = v32;
  v33 = v2;
  v34 = v138;
  v29[4] = v133;
  v29[5] = v34;
  v29[6] = v137;

  v35 = v33;

  sub_241255AE8(v143);
  v143 = sub_241352C5C();
  swift_allocObject();
  v36 = sub_24135180C();
  sub_241352C1C();
  v136 = OBJC_IVAR____TtC11AssetViewer15ModelController_arView;
  v37 = *(v33 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v37)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (!*(v37 + qword_27E53A1A0))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_24135181C();

  sub_2413518AC();

  sub_241352B5C();
  v38 = *(v144 + 8);
  v144 += 8;
  v141 = v38;
  v38(v22, v142);
  v39 = v140;
  if (qword_27E537C38 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v135 = v35;
    sub_24135190C();
    v118 = v39 >> 62;
    if (!(v39 >> 62))
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        break;
      }

      goto LABEL_8;
    }

    v40 = sub_2413544EC();
    if (!v40)
    {
      break;
    }

LABEL_8:
    v41 = 0;
    v35 = v39 & 0xC000000000000001;
    v42 = v39 & 0xFFFFFFFFFFFFFF8;
    while (v35)
    {
      MEMORY[0x245CE29C0](v41, v39);
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      sub_2413518AC();
      sub_241352B5C();

      v141(v22, v142);
      ++v41;
      v43 = v39 == v40;
      v39 = v140;
      if (v43)
      {
        goto LABEL_21;
      }
    }

    if (v41 >= *(v42 + 16))
    {
      goto LABEL_18;
    }

    v39 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_21:
  v44 = v124;
  sub_2412552B4(1, v124);
  v45 = sub_241351F8C();
  v46 = (*(*(v45 - 8) + 48))(v44, 1, v45) != 1;
  sub_241246278(v44, &qword_27E538330);
  v47 = v135;
  *(v135 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics) = v46;
  v48 = v128;
  sub_241326100(v139, v128);
  v49 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  sub_241255BC8(v48, v47 + v49, &qword_27E538940);
  swift_endAccess();

  v50 = sub_241352FDC();
  v51 = sub_2413540DC();

  v52 = os_log_type_enabled(v50, v51);
  v125 = v49;
  if (v52)
  {
    v53 = v49;
    v54 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v147 = v124;
    *v54 = 136315138;
    v55 = v119;
    sub_241246210(v47 + v53, v119, &qword_27E538940);
    v56 = v134;
    v57 = v130;
    if ((*(v134 + 48))(v55, 1, v130))
    {
      sub_241246278(v55, &qword_27E538940);
      v58 = 0xE400000000000000;
      v59 = 1701736270;
    }

    else
    {
      (*(v56 + 16))(v120, v55, v57);
      sub_241246278(v55, &qword_27E538940);
      v59 = AnchoringComponent.Target.arql_description.getter();
      v58 = v62;
      (*(v134 + 8))(v120, v57);
    }

    v63 = sub_2412DDC2C(v59, v58, &v147);

    *(v54 + 4) = v63;
    _os_log_impl(&dword_241215000, v50, v51, "anchoringComponentTarget: %s", v54, 0xCu);
    v64 = v124;
    __swift_destroy_boxed_opaque_existential_0(v124);
    MEMORY[0x245CE4870](v64, -1, -1);
    MEMORY[0x245CE4870](v54, -1, -1);

    v60 = v129;
    v61 = v134;
    v49 = v125;
  }

  else
  {

    v57 = v130;
    v60 = v129;
    v61 = v134;
  }

  v65 = v47 + v49;
  v66 = v126;
  sub_241246210(v65, v126, &qword_27E538940);
  v67 = (*(v61 + 48))(v66, 1, v57);
  v68 = v139;
  v69 = v127;
  if (v67 == 1)
  {
    sub_241246278(v66, &qword_27E538940);
    goto LABEL_36;
  }

  (*(v61 + 32))(v60, v66, v57);
  (*(v61 + 16))(v69, v60, v57);
  v70 = (*(v61 + 88))(v69, v57);
  v71 = *(v61 + 8);
  if (v70 != *MEMORY[0x277CDAD58])
  {
    v71(v60, v57);
    v71(v69, v57);
LABEL_35:
    v68 = v139;
LABEL_36:
    ComponentType = RESkyboxComponentGetComponentType();
    sub_2413123F8(ComponentType, 1);
    v83 = *(v47 + v136);
    if (v83)
    {
      v84 = v83;
      v85 = sub_2413267E8();
      sub_24131AB50(v85);

      v86 = v121;
      static CollisionFilter.calculateARQLCollisionFilter(from:)(v36, v121);
      v87 = sub_2413518AC();
      MEMORY[0x28223BE20](v87);
      *(&v113 - 2) = v86;
      sub_2413121C0(1, sub_241255B48, (&v113 - 4));
      v141(v22, v142);
      (*(v122 + 8))(v86, v123);
      sub_241326980(v137);
      if (qword_27E537CD0 != -1)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v88 = sub_241352FFC();
        __swift_project_value_buffer(v88, qword_27E53A538);

        v89 = sub_241352FDC();
        v90 = sub_2413540DC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 134218240;
          if (v118)
          {
            v92 = sub_2413544EC();
          }

          else
          {
            v92 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v91 + 4) = v92;
          *(v91 + 12) = 2048;
          *(v91 + 14) = *(v68 + 16);

          _os_log_impl(&dword_241215000, v89, v90, "Loaded %ld entities, anchors: %ld", v91, 0x16u);
          MEMORY[0x245CE4870](v91, -1, -1);
        }

        else
        {
        }

        printHierarchy(entity:level:debugString:)(v36, 0, 0, 0xE000000000000000);
        sub_2413518AC();
        sub_241255F40(&qword_27E538B00, MEMORY[0x277CDB190]);
        v93 = v142;
        sub_24135403C();
        sub_24135406C();
        v94 = sub_24135405C();
        v141(v22, v93);
        v146 = v94;
        v147 = sub_24135491C();
        v148 = v95;
        MEMORY[0x245CE20D0](0x65697469746E6520, 0xE900000000000073);

        v96 = sub_241352FDC();
        v97 = sub_2413540DC();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_241215000, v96, v97, "Checking for empty root entity names...", v98, 2u);
          MEMORY[0x245CE4870](v98, -1, -1);
        }

        sub_2413518AC();
        sub_241310FCC(0, v22);
        v141(v22, v142);
        sub_241252A78(v36);
        v99 = *(v47 + v136);
        if (!v99)
        {
          goto LABEL_73;
        }

        v100 = v99;
        sub_24135292C();
        sub_2413524EC();

        sub_24135243C();
        swift_dynamicCastClassUnconditional();
        LOBYTE(v100) = sub_24125290C();
        swift_unknownObjectRelease();
        v47 = &qword_27E538000;
        if (v100)
        {
          goto LABEL_66;
        }

        v101 = v135;
        v102 = *(v135 + v136);
        if (!v102)
        {
          goto LABEL_75;
        }

        v103 = v102;
        sub_24135292C();
        sub_2413524EC();

        swift_dynamicCastClassUnconditional();
        sub_241351C5C();
        swift_allocObject();
        sub_241351C4C();
        sub_2413523EC();
        swift_unknownObjectRelease();

        v104 = *(v101 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityHologramInitialized);
        v68 = v139;
        v39 = v140;
        if (v104)
        {
          goto LABEL_66;
        }

        v105 = *(v135 + v136);
        if (!v105)
        {
          goto LABEL_76;
        }

        v106 = v105;
        sub_24135292C();
        sub_2413524EC();

        swift_dynamicCastClassUnconditional();
        v107 = sub_24135242C();
        swift_unknownObjectRelease();
        if (v107 >> 62)
        {
          v108 = sub_2413544EC();
          if (!v108)
          {
LABEL_65:

            v68 = v139;
            v39 = v140;
LABEL_66:
            v111 = v135;
            *(v135 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityHologramInitialized) = 1;
            sub_2412547BC();
            v112 = *(v111 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
            if (v112)
            {
              v147 = v39;
              v148 = v68;
              v149 = v132;
              v150 = v131;
              v151 = v133;
              v152 = v138;
              v153 = v137;

              v112(&v147);
              sub_2412186FC(v112);
            }

            if (*(v111 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
            {

              sub_24135187C();

              return;
            }

            goto LABEL_74;
          }
        }

        else
        {
          v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v108)
          {
            goto LABEL_65;
          }
        }

        v109 = 0;
        v68 = v107 & 0xC000000000000001;
        v39 = v107 & 0xFFFFFFFFFFFFFF8;
        while (v68)
        {
          MEMORY[0x245CE29C0](v109, v107);
          v110 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            goto LABEL_61;
          }

LABEL_57:
          sub_241351BFC();

          ++v109;
          if (v110 == v108)
          {
            goto LABEL_65;
          }
        }

        if (v109 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v110 = v109 + 1;
        if (!__OFADD__(v109, 1))
        {
          goto LABEL_57;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v71(v69, v57);
  sub_241246158(0, &qword_27E538338);
  if (![swift_getObjCClassFromMetadata() isSupported])
  {
    v71(v60, v57);
    v80 = v128;
    (*(v61 + 56))(v128, 1, 1, v57);
    v81 = v125;
    swift_beginAccess();
    sub_241255BC8(v80, v47 + v81, &qword_27E538940);
    swift_endAccess();
    goto LABEL_35;
  }

  *(v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) = 1;
  v72 = *(v47 + v136);
  if (v72)
  {
    v73 = v72;
    v74 = v115;
    sub_2413525FC();
    v134 = sub_24135268C();
    v128 = sub_24135265C();
    v75 = sub_24135262C();
    v76 = v114;
    sub_241287A40(v114, v74);
    v77 = *(v116 + 8);
    v78 = v74;
    v79 = v117;
    v77(v78, v117);
    v77(v76, v79);
    v75(v145, 0);
    (v128)(&v146, 0);
    (v134)(&v147, 0);

    v71(v129, v130);
    v47 = v135;
    v68 = v139;
    v39 = v140;
    goto LABEL_36;
  }

LABEL_77:
  __break(1u);
}

uint64_t sub_24125256C()
{
  v0 = sub_241352B6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241352C0C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2413545EC();

    v31 = 0x4453555F4C515241;
    v32 = 0xEF5F544F4F525F5ALL;
    sub_24135163C();
    sub_2413515FC();
    (*(v5 + 8))(v7, v4);
    v12 = sub_2412AE478(8);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x245CE2060](v12, v14, v16, v18);
    v21 = v20;

    MEMORY[0x245CE20D0](v19, v21);

    sub_241352C1C();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v22 = sub_241352FFC();
    __swift_project_value_buffer(v22, qword_27E53A538);

    v23 = sub_241352FDC();
    v24 = sub_2413540DC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_241352C0C();
      v29 = sub_2412DDC2C(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_241215000, v23, v24, "Renamed empty root entity to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245CE4870](v26, -1, -1);
      MEMORY[0x245CE4870](v25, -1, -1);
    }
  }

  sub_241352C5C();
  sub_2413518AC();
  sub_241310FF8(0, v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24125290C()
{
  v0 = sub_2413523CC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](v3, v1);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_12:
      sub_2413520CC();
      sub_241351C5C();
      swift_allocObject();
      sub_241351C4C();
      v5 = sub_241351D6C();

      if (v5)
      {
        sub_2413520BC();
        v6 = sub_241255174();

        if (v6)
        {
          v7 = 1;
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v3;
      if (v4 == i)
      {
        goto LABEL_18;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v7 = 0;
LABEL_19:

  return v7;
}

uint64_t sub_241252A78(uint64_t a1)
{
  v2 = v1;
  v98 = sub_241352DDC();
  v87 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2413517DC();
  *&v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241352B6C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v87 - v11;
  v13 = sub_241352C5C();
  v88 = a1;
  sub_2413518AC();
  v14 = sub_241255F40(&qword_27E538B00, MEMORY[0x277CDB190]);
  sub_24135403C();
  sub_24135406C();
  v15 = sub_24135405C();
  v18 = *(v7 + 8);
  v16 = v7 + 8;
  v17 = v18;
  result = (v18)(v12, v6);
  if (v15 >= 1)
  {
    sub_2413518AC();
    sub_24135403C();
    sub_24135406C();
    v20 = sub_24135405C();
    v17(v12, v6);
    v104 = v13;
    v99 = v6;
    v100 = v17;
    v101 = v16;
    if (v20 >= 2)
    {
      sub_2413518AC();
      v21 = sub_24135404C();
      if (v21)
      {
        v22 = v21;
        v103 = v2;
        v109 = MEMORY[0x277D84F90];
        sub_2412DE214(0, v21 & ~(v21 >> 63), 0);
        v23 = v109;
        v24 = sub_24135403C();
        if (v22 < 0)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v102 = OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics;
        v25 = (v96 + 8);
        do
        {
          v26 = sub_24135408C();
          v28 = *v27;

          v26(&v105, 0);
          if (*(v103 + v102))
          {
            sub_24135191C();
            v31 = v30;
          }

          else
          {
            sub_241352E1C();
            sub_24135195C();
            v93 = v32;
            v94 = v33;
            *&v35 = simd_matrix4x4(v34);
            v105 = v35;
            v106 = v36;
            v107 = v37;
            v108 = v38;
            sub_24135410C();
            sub_241354A8C();
            sub_241354A9C();
            v94 = v108;
            v93 = v107;
            v92 = v106;
            v91 = v105;
            v39 = v89;
            sub_24135296C();
            sub_2413516FC();
            (*v25)(v39, v90);
            REEntityComputeTightMeshBounds();
            v31 = v40;
            HIDWORD(v31) = HIDWORD(v96);
            HIDWORD(v29) = HIDWORD(v95);
            v96 = v31;
            v95 = v29;
          }

          v109 = v23;
          v42 = *(v23 + 16);
          v41 = *(v23 + 24);
          if (v42 >= v41 >> 1)
          {
            v94 = v31;
            v93 = v29;
            sub_2412DE214((v41 > 1), v42 + 1, 1);
            v29 = v93;
            v31 = v94;
            v23 = v109;
          }

          *(v23 + 16) = v42 + 1;
          v43 = v23 + 48 * v42;
          *(v43 + 32) = v28;
          *(v43 + 40) = &off_2853034C8;
          *(v43 + 48) = v31;
          *(v43 + 64) = v29;
          v44 = v99;
          sub_24135407C();
          --v22;
        }

        while (v22);
        v16 = v101;
        v100(v10, v44);
        v2 = v103;
      }

      else
      {
        v16 = v101;
        v17(v10, v6);
        v23 = MEMORY[0x277D84F90];
      }

      sub_241300068(v23, 0.1);
    }

    v23 = v88;
    printHierarchy(entity:level:debugString:)(v88, 0, 0, 0xE000000000000000);
    sub_2413518AC();
    sub_241255F40(&qword_27E538320, MEMORY[0x277CDB190]);
    v24 = sub_241353DDC();
    v10 = v24;
    if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
    {
      goto LABEL_64;
    }

    while (1)
    {
LABEL_17:
      MEMORY[0x28223BE20](v24);
      *(&v87 - 2) = v23;
      *(&v87 - 1) = v2;
      v46 = sub_241255780(v10, 0, v45, sub_241255778);
      *&v91 = OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
      *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers) = v46;

      v24 = printHierarchy(entity:level:debugString:)(v23, 0, 0, 0xE000000000000000);
      v14 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
      if (v14)
      {
        v16 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
        v47 = qword_27E537CE0;

        if (v47 != -1)
        {
          goto LABEL_66;
        }

        while (1)
        {
          v49 = qword_27E5419B0;
          v48 = *algn_27E5419B8;
          v50 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics);
          v51 = objc_allocWithZone(type metadata accessor for EntityController());

          v53 = sub_24124A108(v52, v14, v16, v49, v48, (v50 & 1) == 0);

          v54 = OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController;
          v55 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
          *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController) = v53;
          v56 = v53;

          v103 = OBJC_IVAR____TtC11AssetViewer15ModelController_arView;
          v57 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (!v57)
          {
            break;
          }

          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          v59 = &v56[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
          v60 = *&v56[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
          *v59 = sub_241255FDC;
          *(v59 + 1) = v58;
          v61 = v57;
          sub_2412186FC(v60);

          v62 = *(v2 + v54);
          if (!v62)
          {
            goto LABEL_75;
          }

          v63 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator);
          if (!v63)
          {
            goto LABEL_76;
          }

          v64 = objc_allocWithZone(ASVTurntableGestureRecognizer);
          v14 = v62;
          v65 = [v64 initWithTurntableDelegate:v14 feedbackGenerator:v63];
          v16 = &OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer;
          v66 = *(v14 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
          *(v14 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) = v65;

          v67 = *(v2 + v54);
          if (!v67)
          {
            goto LABEL_77;
          }

          v68 = *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
          if (v68)
          {
            v24 = [v68 setAllowObjectScaling_];
            v67 = *(v2 + v54);
            if (!v67)
            {
              goto LABEL_78;
            }
          }

          v69 = *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
          if (v69)
          {
            v70 = v69;
            [v67 assetScale];
            [v70 setCurrentObjectScale_];

            v67 = *(v2 + v54);
            if (!v67)
            {
              goto LABEL_79;
            }
          }

          v71 = *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
          if (v71)
          {
            v24 = [v71 setDataSource_];
            v67 = *(v2 + v54);
            if (!v67)
            {
              goto LABEL_80;
            }
          }

          v72 = *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
          if (v72)
          {
            [v72 setEnabledGestureTypes_];
          }

          v90 = v10;
          v73 = *(v2 + v91);
          if (v73 >> 62)
          {
            v74 = sub_2413544EC();
          }

          else
          {
            v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v74)
          {
            v10 = 0;
            *&v96 = v73 & 0xC000000000000001;
            *&v95 = v73 & 0xFFFFFFFFFFFFFF8;
            *&v94 = v87 + 8;
            *&v93 = v73;
            *&v92 = v74;
            v23 = v99;
            while (1)
            {
              if (v96)
              {
                v24 = MEMORY[0x245CE29C0](v10, v73);
              }

              else
              {
                if (v10 >= *(v95 + 16))
                {
                  goto LABEL_61;
                }

                v24 = *(v73 + 8 * v10 + 32);
              }

              v75 = v24;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              v76 = *(v2 + v103);
              if (!v76)
              {
                goto LABEL_70;
              }

              v16 = v2;
              v102 = v10 + 1;
              v14 = OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
              v77 = v76;
              sub_24135292C();
              v2 = sub_2413524BC();

              if (!v2)
              {
                goto LABEL_71;
              }

              v78 = v104;
              sub_2413518AC();
              sub_241352B5C();
              v2 = v78;

              v100(v12, v23);
              sub_2413519BC();
              v79 = v97;
              sub_241352E2C();
              type metadata accessor for RESRT(0);
              sub_241352DCC();
              v24 = (*v94)(v79, v98);
              v80 = v106;
              v81 = v107;
              v82 = &v75[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode];
              *v82 = v105;
              *(v82 + 1) = v80;
              *(v82 + 2) = v81;
              v83 = *(v16 + v103);
              if (!v83)
              {
                goto LABEL_72;
              }

              if (*(v83 + qword_27E53A1A0))
              {

                sub_2413518AC();
                sub_241352B5C();

                v100(v12, v23);
              }

              else
              {
                sub_2413518BC();
              }

              v73 = v93;

              ++v10;
              v2 = v16;
              if (v102 == v92)
              {
                goto LABEL_47;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
          }

          else
          {
LABEL_47:

            sub_2412543A8();
            v14 = *(v2 + v91);
            *&v105 = MEMORY[0x277D84F90];
            if (v14 >> 62)
            {
              v84 = sub_2413544EC();
            }

            else
            {
              v84 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v84)
            {
LABEL_58:

              return sub_241352BFC();
            }

            v16 = 0;
            v2 = v14 & 0xC000000000000001;
            v23 = v14 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v2)
              {
                v85 = MEMORY[0x245CE29C0](v16, v14);
              }

              else
              {
                if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_63;
                }

                v85 = *(v14 + 8 * v16 + 32);
              }

              v86 = v85;
              v10 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              sub_2413518AC();

              sub_241281024(v12);
              ++v16;
              if (v10 == v84)
              {
                goto LABEL_58;
              }
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v24 = sub_2413544EC();
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          __break(1u);
LABEL_66:
          swift_once();
        }
      }

      else
      {
LABEL_73:
        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24125387C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v81[0] = a1;
  v81[1] = a3;
  *&v83 = sub_2413517DC();
  *&v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v6 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241352B6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v81 - v12;
  sub_241352C5C();
  swift_allocObject();
  v14 = sub_24135180C();
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_2413545EC();

  v86 = 0xD000000000000015;
  v87 = 0x800000024135E480;
  v88 = a2;
  v15 = sub_24135491C();
  MEMORY[0x245CE20D0](v15);

  sub_241352C1C();
  sub_241352E7C();
  v16 = sub_241352E8C();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  v17 = sub_241352A7C();
  sub_241352ACC();
  v17(&v86, 0);
  sub_2413518AC();
  sub_241352B5C();
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_2413518AC();
  sub_241352B5C();
  v19 = v7;
  v20 = v82;
  v18(v10, v19);
  v21 = v83;
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    sub_24135296C();
    sub_2413516FC();
    (*(v20 + 8))(v6, v21);
    REProjectiveShadowMarkEntityAsClusterRoot();
  }

  sub_24135296C();
  sub_2413516FC();
  v22 = *(v20 + 8);
  v22(v6, v21);
  if (qword_27E537C38 != -1)
  {
    swift_once();
  }

  if (qword_27E537C40 != -1)
  {
    v82 = xmmword_27E541810;
    swift_once();
  }

  REAnchorShadowMarkerAddToAnchorEntity();
  sub_24135296C();
  sub_2413516FC();
  v22(v6, v21);
  MEMORY[0x245CE38B0](v86, 1);
  sub_2413519BC();
  v83 = v23;
  v24 = sub_2413519AC();
  *(v25 + 32) = v83;
  v24(&v86, 0);
  v26 = v84;
  if ((*(v84 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
  {
    sub_2413102D0((*(v84 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics) & 1) == 0);
    v83 = v27;
    if ((REAABBIsEmpty() & 1) == 0)
    {
      LODWORD(v28) = 0;
      *(&v28 + 1) = -*(&v83 + 1);
      v83 = v28;
      v29 = sub_2413519AC();
      *(v30 + 32) = v83;
      v29(&v86, 0);
    }
  }

  v31 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);

  v32 = sub_24133E21C();
  v33 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics) ^ 1;
  v34 = type metadata accessor for EntityController();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
  *v36 = 0;
  v36[8] = 1;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] = 0;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = 5;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement] = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement] = _D0;
  v42 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox];
  sub_24135178C();
  *v42 = v43;
  v42[1] = v44;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_debugVisualizationEntity] = 0;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_debugBoundingBoxEntities] = MEMORY[0x277D84F90];
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = 0;
  v45 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch;
  [objc_opt_self() floatForKey_];
  *&v35[v45] = v46;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] = 0;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_savedLevitationHeight] = 0;
  v47 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode];
  if (qword_27E537C48 != -1)
  {
    swift_once();
  }

  v48 = xmmword_27E541860;
  v49 = *algn_27E541870;
  v50 = xmmword_27E541880;
  *v47 = xmmword_27E541860;
  v47[1] = v49;
  v47[2] = v50;
  v51 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
  *v51 = v48;
  v51[1] = v49;
  v51[2] = v50;
  v52 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  *v52 = 0;
  v52[1] = 0;
  v53 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
  *v53 = 0;
  v53[1] = 0;
  v54 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
  *(v54 + 2) = 0u;
  v54[48] = 1;
  *v54 = 0u;
  *(v54 + 1) = 0u;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast] = 0;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_groundPlaneEntity] = 0;
  v55 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  *v55 = 0;
  v55[8] = 0;
  *(v55 + 9) = v86;
  *(v55 + 3) = *(&v86 + 3);
  *(v55 + 2) = 4;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 0u;
  *(v55 + 56) = 0u;
  *(v55 + 72) = 0u;
  *(v55 + 81) = 0u;
  v56 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  v57 = sub_24135152C();
  (*(*(v57 - 8) + 56))(&v35[v56], 1, 1, v57);
  v58 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_savedViewToProj];
  v58[2] = 0u;
  v58[3] = 0u;
  *v58 = 0u;
  v58[1] = 0u;
  v59 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform];
  sub_241352E3C();
  *v59 = v60;
  v59[1] = v61;
  v59[2] = v62;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_entity] = v14;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_type] = 0;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_animationManager] = v31;
  _s13PlaneAnimaterCMa();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator] = sub_2412DE3D0(v14, v31);
  v63 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
  *v63 = v14;
  v63[1] = v32;

  sub_24133AFBC(v14, v32);
  v35[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI] = v33 & 1;
  sub_2413102D0(v33 & 1);
  DWORD2(v65) = v64;
  DWORD2(v67) = v66;
  v68 = &v35[OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB];
  *v68 = v65;
  v68[1] = v67;
  REAABBExtents();
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController__assetNaturalSize] = v69;
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController__assetScaleToFitUnitBox] = 1.0 / fmaxf(fmaxf(*&v69, *(&v69 + 2)), *(&v69 + 1));
  swift_allocObject();
  v70 = sub_24135180C();
  sub_241352C1C();
  *&v35[OBJC_IVAR____TtC11AssetViewer16EntityController_verticalPlacementMarker] = v70;
  v85.receiver = v35;
  v85.super_class = v34;
  v71 = objc_msgSendSuper2(&v85, sel_init);

  result = sub_2412464F8();
  v73 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v73)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    v75 = &v71[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
    v76 = *&v71[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
    *v75 = sub_241255ABC;
    *(v75 + 1) = v74;
    v77 = v73;
    result = sub_2412186FC(v76);
    v78 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator);
    if (v78)
    {
      v79 = [objc_allocWithZone(ASVWorldGestureRecognizer) initWithWorldDelegate:v71 feedbackGenerator:v78];
      [v79 setDataSource_];
      [v79 setEnabledGestureTypes_];
      [v71 assetScale];
      [v79 setCurrentObjectScale_];

      v80 = *&v71[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
      *&v71[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] = v79;

      return v71;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2412543A8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers];
  if (v2 >> 62)
  {
    goto LABEL_44;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];

    sub_24135466C();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CE29C0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;

      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
    }

    while (v3 != v5);

    v4 = v20;
  }

  v19 = v4;
  v8 = *&v1[OBJC_IVAR____TtC11AssetViewer15ModelController_arView];
  if (!v8)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v1 = v8;
  sub_24135292C();
  v2 = sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  v9 = sub_2413523CC();
  swift_unknownObjectRelease();
  v18 = v9;
  if (v9 >> 62)
  {
    v10 = sub_2413544EC();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_14:
      v11 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v11, v18);
          v12 = __OFADD__(v11++, 1);
          if (v12)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v11 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v12 = __OFADD__(v11++, 1);
          if (v12)
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            v3 = sub_2413544EC();
            goto LABEL_3;
          }
        }

        v2 = sub_2413520BC();
        sub_24135207C();
        if (swift_dynamicCastClass())
        {
          v13 = sub_24135203C();
          v1 = 0;
          v14 = sub_2412EE948(v13);

          if (!(v14 >> 62))
          {
            goto LABEL_21;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_241365C30;
          *(v14 + 32) = v2;
          if (!(v14 >> 62))
          {
LABEL_21:
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v15)
            {
              goto LABEL_22;
            }

            goto LABEL_15;
          }
        }

        v15 = sub_2413544EC();
        if (v15)
        {
LABEL_22:
          v16 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v2 = MEMORY[0x245CE29C0](v16, v14);
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v2 = *(v14 + 8 * v16 + 32);

              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_41;
              }
            }

            sub_24135226C();
            if (swift_dynamicCastClass())
            {
              v1 = v14;
              if (sub_241351BEC())
              {
                sub_24131268C(v19);
              }

              sub_24135225C();
            }

            ++v16;
          }

          while (v17 != v15);
        }

LABEL_15:
      }

      while (v11 != v10);
    }
  }
}

void sub_2412547BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController;

  sub_2413499C4(0xD000000000000015, 0x800000024135E460);

  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v4 >> 62)
  {
    v5 = sub_2413544EC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v28[0] = MEMORY[0x277D84F90];

  sub_24135466C();
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v25 = v2;
  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245CE29C0](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
  }

  while (v5 != v6);

  v9 = v28[0];
  v2 = v25;
LABEL_12:
  *(v3 + 16) = v9;

  v10 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v11 = *(v1 + v2);

  v12 = v10;
  sub_24135292C();

  sub_241351B3C();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  swift_allocObject();
  swift_weakInit();
  sub_24135254C();

  sub_241246278(v26, &qword_27E538310);
  v13 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_playbackCompletedCancellable;
  swift_beginAccess();
  sub_241255BC8(v28, v11 + v13, &qword_27E538318);
  swift_endAccess();

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E53A538);

  v15 = sub_241352FDC();
  v16 = sub_2413540DC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136315138;
    v19 = sub_241352C5C();

    v21 = MEMORY[0x245CE21F0](v20, v19);
    v23 = v22;

    v24 = sub_2412DDC2C(v21, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_241215000, v15, v16, "Updated modelAnimationController.rootEntities to: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x245CE4870](v18, -1, -1);
    MEMORY[0x245CE4870](v17, -1, -1);
  }
}

uint64_t sub_241254BDC()
{
  v1 = OBJC_IVAR____TtC11AssetViewer15ModelController_logger;
  v2 = sub_241352FFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 32);

  sub_2412186FC(v4);
  swift_unknownObjectRelease();

  sub_2412186FC(*(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback));

  sub_241255AE8(*(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo));

  sub_241246278(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget, &qword_27E538940);

  return v0;
}

uint64_t sub_241254D7C()
{
  sub_241254BDC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelController()
{
  result = qword_27E5382F8;
  if (!qword_27E5382F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_241254E28()
{
  sub_241352FFC();
  if (v0 <= 0x3F)
  {
    sub_241254F68();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_241254F68()
{
  if (!qword_280DA2A40)
  {
    sub_241351DEC();
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DA2A40);
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelController.LoadingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelController.LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241255120()
{
  result = qword_27E538308;
  if (!qword_27E538308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538308);
  }

  return result;
}

uint64_t sub_241255174()
{
  sub_24135201C();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_24135207C();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v1 = sub_24135203C();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_20:
    v4 = sub_2413544EC();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v0 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](v5, v2);
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    v6 = sub_241255174();

    ++v5;
  }

  while ((v6 & 1) == 0);

  return v0;
}

uint64_t sub_2412552B4@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v3 = sub_241352B6C();
  MEMORY[0x28223BE20](v3 - 8);
  v32[1] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - v11;
  v13 = sub_241352AAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_241351F8C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v32[0] = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v32 - v21;
  v33 = v2;
  sub_241352A8C();
  sub_241352ABC();
  (*(v14 + 8))(v16, v13);
  v23 = v18[6];
  if (v23(v12, 1, v17) == 1)
  {
    sub_241246278(v12, &qword_27E538330);
    v24 = v36;
    if (v35)
    {
      sub_241352C5C();
      sub_2413518AC();
      sub_241352B2C();
      sub_241352B3C();
      if (v38)
      {
        while (1)
        {
          sub_2412552B4(1);

          if (v23(v10, 1, v17) != 1)
          {
            break;
          }

          sub_241246278(v10, &qword_27E538330);
          sub_241352B3C();
          if (!v38)
          {
            goto LABEL_6;
          }
        }

        (*(v34 + 8))(v6, v37);
        v30 = v18[4];
        v31 = v32[0];
        v30(v32[0], v10, v17);
        v30(v24, v31, v17);
        v28 = v18[7];
        v29 = v24;
        return v28(v29, 0, 1, v17);
      }

LABEL_6:
      (*(v34 + 8))(v6, v37);
    }

    return (v18[7])(v24, 1, 1, v17);
  }

  v26 = v18[4];
  v26(v22, v12, v17);
  v27 = v36;
  v26(v36, v22, v17);
  v28 = v18[7];
  v29 = v27;
  return v28(v29, 0, 1, v17);
}

uint64_t sub_241255780(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = a1;
  v25 = a1 >> 62;
  if (a1 >> 62)
  {
    while (1)
    {
      v7 = sub_2413544EC();
      v8 = a3 - a2;
      if (__OFSUB__(a3, a2))
      {
        break;
      }

LABEL_3:
      if (v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      v26 = MEMORY[0x277D84F90];
      sub_24135466C();
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      v22 = v6;
      if (!v9)
      {
        v11 = v6 & 0xFFFFFFFFFFFFFF8;
        v24 = v6 & 0xC000000000000001;
        v16 = a2;
LABEL_26:
        if (v16 <= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = v16;
        }

        v21 = v17;
        v18 = v16;
        if (v25)
        {
          while (v9 != sub_2413544EC())
          {
LABEL_33:
            if (v24)
            {
              v6 = MEMORY[0x245CE29C0](v9, v6);
              if (__OFADD__(v9, 1))
              {
                goto LABEL_44;
              }
            }

            else
            {
              if (v9 >= *(v11 + 16))
              {
                goto LABEL_50;
              }

              v6 = *(v6 + 8 * v9 + 32);

              if (__OFADD__(v9, 1))
              {
LABEL_44:
                __break(1u);
LABEL_45:

                return v26;
              }
            }

            if (a3 == v18)
            {
              goto LABEL_45;
            }

            if (a3 < a2)
            {
              goto LABEL_51;
            }

            if (v16 < a2)
            {
              goto LABEL_52;
            }

            if (v21 == v18)
            {
              goto LABEL_53;
            }

            a4(v6, v18);

            sub_24135464C();
            sub_24135467C();
            v6 = v22;
            sub_24135468C();
            sub_24135465C();
            ++v9;
            ++v18;
            if (!v25)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          if (v9 != *(v11 + 16))
          {
            goto LABEL_33;
          }
        }

        return v26;
      }

      v10 = 0;
      v24 = v6 & 0xC000000000000001;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      if (a3 <= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = a3;
      }

      v20 = v12 - a2;
      v13 = a2 - a3;
      while (1)
      {
        v14 = v25 ? sub_2413544EC() : *(v11 + 16);
        if (v10 == v14)
        {
          break;
        }

        if (v24)
        {
          v6 = MEMORY[0x245CE29C0](v10, v6);
          if (!(v13 + v10))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v10 >= *(v11 + 16))
          {
            goto LABEL_54;
          }

          v6 = *(v6 + 8 * v10 + 32);

          if (!(v13 + v10))
          {
            goto LABEL_59;
          }
        }

        if (a3 < a2)
        {
          goto LABEL_48;
        }

        if (v20 == v10)
        {
          goto LABEL_49;
        }

        v15 = v10 + 1;
        a4(v6, a2 + v10);

        sub_24135464C();
        sub_24135467C();
        v6 = v22;
        sub_24135468C();
        sub_24135465C();
        v10 = v15;
        if (v9 == v15)
        {
          v16 = a2 + v15;
          goto LABEL_26;
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
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = a3 - a2;
    if (!__OFSUB__(a3, a2))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:

  __break(1u);
  return result;
}

uint64_t sub_241255AE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241255BC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_241255C30()
{
  result = qword_27E538350;
  if (!qword_27E538350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538350);
  }

  return result;
}

void sub_241255C84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_2412186FC(a5);
  }
}

uint64_t sub_241255CE0(uint64_t a1)
{
  v3 = *(sub_24135152C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_2412450EC;

  return sub_24124DC2C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

void sub_241255E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16)
  {
  }

  else
  {
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241255F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241255F88(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_241255FE0()
{
  if (v0->i64[0] >= 4uLL)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      return [v1 alignment] == 1;
    }
  }

  v3 = v0[2];
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  if (qword_27E537C40 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  v7 = vmulq_f32(v6, xmmword_27E541820);
  return fabsf(v7.f32[2] + vaddv_f32(*v7.f32)) <= 0.1;
}

uint64_t sub_2412560E8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383A8);
  v1 = sub_241353C7C();
  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  MEMORY[0x245CE20D0](0xD000000000000013, 0x800000024135E6F0);
  return v1;
}

uint64_t sub_241256170()
{
  if (qword_27E537C38 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = xmmword_27E541810;
  swift_beginAccess();
  *(v0 + 104) = MEMORY[0x277D84F90];

  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  v1 = *(v0 + 192);
  v4[2] = *(v0 + 176);
  v4[3] = v1;
  v4[4] = *(v0 + 208);
  v2 = *(v0 + 160);
  v4[0] = *(v0 + 144);
  v4[1] = v2;
  *(v0 + 144) = 4;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  return sub_2412580E8(v4);
}

void sub_24125624C(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, double a5@<D1>, double a6@<D2>, __int128 a7@<Q3>)
{
  v8 = v7;
  v59 = a7;
  v60 = a4;
  v14 = sub_24135426C();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0uLL;
  if (!a2)
  {
    v23 = 4;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    goto LABEL_17;
  }

  v18 = [a2 currentFrame];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 camera];
  sub_24135427C();

  v21 = sub_24135425C();
  if ((*(*(v21 - 8) + 48))(v16, 2, v21) != 2)
  {

    sub_24125808C(v16);
LABEL_15:
    v23 = 4;
LABEL_16:
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v17 = 0uLL;
    goto LABEL_17;
  }

  sub_24125808C(v16);
  [v19 cameraPosition];
  sub_2412569E0(v62, v22);
  if ((a1 & 1) == 0 || *(v8 + 32) != 1)
  {
    v23 = v62[0];
    if (v62[0] == 4)
    {

      goto LABEL_16;
    }

LABEL_20:
    v40 = v65;
    v39 = v66;
    v42 = v63;
    v41 = v64;
    goto LABEL_21;
  }

  v23 = v62[0];
  if (v62[0] != 4 && v62[0] != 3)
  {
    goto LABEL_20;
  }

  v24 = xmmword_241365D00;
  DWORD1(v24) = DWORD1(v59);
  v58 = v24;
  v25 = *(v8 + 144);
  v59 = xmmword_241364640;
  if (v25 != 4 && sub_241257B70(*(v8 + 176)))
  {
    sub_241314E58(&unk_2852FD610);
    HIDWORD(v26) = 0;
    v59 = v26;
  }

  v27 = [objc_opt_self() mainScreen];
  v28 = [v27 currentOrientation];

  [v19 normalizedImagePointForScreenPoint:v28 viewportSize:*v60.i64 orientation:{a5, a6}];
  v30 = v29;
  [objc_opt_self() floatForKey_];
  LODWORD(v32) = v31;
  v33 = [v19 hitTestOnPlaneWithWorldTransform:*&_PromotedConst forImagePoint:*&v59 maxDistance:{0.0, *&v58, v30, v32}];
  if (!v33)
  {

    sub_2412580E8(v62);
    goto LABEL_15;
  }

  v34 = v33;
  [v33 worldTransform];
  v58 = v35;
  v60 = v36;
  v57 = v37;
  v59 = v38;
  sub_2412580E8(v62);

  v39 = v59;
  v40 = v57;
  v41 = v60;
  v42 = v58;
  v23 = 2;
LABEL_21:
  v60 = v41;
  v59 = v39;
  v67 = v23;
  v58 = v42;
  v68 = v42;
  v69 = v41;
  v57 = v40;
  v70 = v40;
  v71 = v39;
  sub_241257A94(v23);
  sub_2412567A4();
  sub_24124B044(v23);

  if ([objc_opt_self() useSceneReconstructionMeshForOrientation])
  {
    v46 = vmulq_f32(v60, v60);
    *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
    *v46.f32 = vrsqrte_f32(v47);
    *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
    *v48.i64 = sub_2412573E4(1, vmulq_n_f32(v60, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]));
    v56 = v48;
    v49 = v59;
    v49.i32[3] = 0;
    v55 = v49;
    [v19 timestamp];
    sub_24125725C(v55, v50);

    v51 = v56;
    v51.i32[3] = v60.i32[3];
  }

  else
  {

    v51 = v60;
  }

  v60 = v51;
  v52 = *(v8 + 192);
  v61[2] = *(v8 + 176);
  v61[3] = v52;
  v61[4] = *(v8 + 208);
  v53 = *(v8 + 144);
  v61[1] = *(v8 + 160);
  v61[0] = v53;
  *(v8 + 144) = v23;
  *(v8 + 160) = v58;
  *(v8 + 176) = v51;
  v54 = v59;
  *(v8 + 192) = v57;
  *(v8 + 208) = v54;
  sub_241257A94(v23);
  sub_2412580E8(v61);
  v44 = v57;
  v43 = v60;
  v17 = v58;
  v45 = v59;
LABEL_17:
  *a3 = v23;
  *(a3 + 8) = 0;
  *(a3 + 16) = v17;
  *(a3 + 32) = v43;
  *(a3 + 48) = v44;
  *(a3 + 64) = v45;
}

uint64_t sub_2412567A4()
{
  v13 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538380);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_241366280;
  v2 = *v0;
  if (*v0 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x6465646E65747865;
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_8;
      }

      v4 = 0x6574696E69666E69;
    }

    v3 = 0xED0000656E616C50;
    goto LABEL_14;
  }

  if (!v2)
  {
LABEL_11:
    v3 = 0x800000024135E690;
    v4 = 0x1000000000000015;
    goto LABEL_14;
  }

  if (v2 == 1)
  {
    v3 = 0xE400000000000000;
    v4 = 1752393069;
    goto LABEL_14;
  }

LABEL_8:
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = v2;
  if ([v6 alignment] == 1)
  {
    sub_241257AFC(v0);
    v3 = 0xEE00656E616C7020;
    v4 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x800000024135E6B0;
    sub_241257AFC(v0);
    v4 = 0xD000000000000010;
  }

LABEL_14:
  v8 = vmulq_f32(v13, v13);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v14 = vmulq_n_f32(v13, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_241257AA8();
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  v10 = MEMORY[0x277D83A90];
  v11 = MEMORY[0x277D83B08];
  *(v1 + 96) = MEMORY[0x277D83A90];
  *(v1 + 104) = v11;
  *(v1 + 72) = v14.i32[0];
  *(v1 + 136) = v10;
  *(v1 + 144) = v11;
  *(v1 + 112) = v14.i32[1];
  *(v1 + 176) = v10;
  *(v1 + 184) = v11;
  *(v1 + 152) = v14.i32[2];

  return sub_241353C4C();
}

void sub_2412569E0(uint64_t a1@<X8>, float32x4_t a2@<Q2>)
{
  v79 = a2;
  v4 = sub_241351BBC();
  *&v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v76 - v7;
  MEMORY[0x28223BE20](v9);
  v81 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  if (qword_27E537C40 != -1)
  {
    swift_once();
  }

  v17 = *(v2 + 16);
  v18 = MEMORY[0x277D84F90];
  v78 = xmmword_27E541820;
  if (v17)
  {

    v19 = sub_2412D0868();
    v86 = v20;
  }

  else
  {
    v86 = xmmword_27E541820;
    v19 = MEMORY[0x277D84F90];
  }

  v90 = v18;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = sub_2413527FC();

  if (v22)
  {
    v23 = swift_unknownObjectUnownedLoadStrong();
    v24 = [v23 session];

    v25 = [v24 raycast_];
    sub_241246158(0, &qword_27E538398);
    v26 = sub_241353E2C();

    sub_2412813B0(v26);
    v18 = v90;
  }

  if (!(v18 >> 62))
  {
    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v83 = v8;
    if (v27)
    {
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31 = sub_2413544EC();
  *&v83 = v8;
  if (!v31)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = *(v18 + 32);

  if (v28)
  {
    [v28 worldTransform];
    v29.i32[3] = 0;
    v85 = v29;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    v89 = sub_241258010();
    *&v87 = swift_allocObject();
    *(v87 + 16) = v85;
    sub_241258074(&v87, &v90);
    v30 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v28 = 0;
  v92 = MEMORY[0x277D837D0];
  v93 = MEMORY[0x277D83838];
  v90 = 0;
  v91 = 0xE000000000000000;
  v30 = 1;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(&v90);
  if (!*(v19 + 16))
  {
    v92 = MEMORY[0x277D837D0];
    v93 = MEMORY[0x277D83838];
    v90 = 0;
    v91 = 0xE000000000000000;
    __swift_destroy_boxed_opaque_existential_0(&v90);

    if (v30)
    {
      v48 = 0uLL;
      v49 = 4;
      v45 = 0uLL;
      v47 = 0uLL;
      v46 = 0uLL;
LABEL_33:
      *a1 = v49;
      *(a1 + 8) = 0;
      *(a1 + 16) = v48;
      *(a1 + 32) = v45;
      *(a1 + 48) = v47;
      *(a1 + 64) = v46;
      return;
    }

    v49 = [v28 anchor];
    [v28 worldTransform];
    v83 = v57;
    v84 = v56;
    v85 = v59;
    v86 = v58;

    goto LABEL_31;
  }

  v77 = v13;
  v80 = a1;
  v32 = v84;
  v33 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v34 = *(v84 + 16);
  v34(v16, v19 + v33, v4);
  sub_241351B9C();
  sub_241351BAC();
  v85 = v35;
  v36 = v16;
  v37 = *(v32 + 8);
  v37(v36, v4);
  v38 = v85;
  v38.i32[3] = 0;
  v85 = v38;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
  v89 = sub_241258010();
  *&v87 = swift_allocObject();
  *(v87 + 16) = v85;
  sub_241258074(&v87, &v90);
  __swift_destroy_boxed_opaque_existential_0(&v90);
  v39 = *(v19 + 16);
  if (v30)
  {
    if (v39)
    {
      v40 = v19 + v33;
      v41 = v82;
      v34(v82, v40, v4);

      v42 = v83;
      (*(v84 + 32))(v83, v41, v4);
      v43 = v86;
      HIDWORD(v43) = 0;
      v86 = v43;
      sub_241351BAC();
      v44.i32[3] = 1.0;
      v85 = v44;
      v37(v42, v4);
      v46 = v85;
      v45 = v86;
      v47 = xmmword_241365EE0;
      v48 = xmmword_241365E70;
      v49 = 1;
LABEL_25:
      a1 = v80;
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v39)
  {
    v50 = v81;
    v34(v81, v19 + v33, v4);

    v51 = v77;
    (*(v84 + 32))(v77, v50, v4);
    if (sub_241257D70(v28))
    {
      v49 = [v28 anchor];
      [v28 worldTransform];
      v83 = v53;
      v84 = v52;
      v85 = v55;
      v86 = v54;

      v37(v51, v4);
      v47 = v83;
      v48 = v84;
      v46 = v85;
      v45 = v86;
      goto LABEL_25;
    }

    [v28 worldTransform];
    v61 = vmulq_f32(v60, v60);
    *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
    *v61.f32 = vrsqrte_f32(v62);
    *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
    v63 = vmulq_f32(v78, vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]));
    a1 = v80;
    if (fabsf(v63.f32[2] + vaddv_f32(*v63.f32)) <= 0.1 && ([objc_opt_self() forceDisableArKitVerticalRejection] & 1) == 0 || (objc_msgSend(v28, sel_worldTransform), v65 = vsubq_f32(v64, v79), v85 = vmulq_f32(v65, v65), sub_241351B9C(), sub_241351BAC(), v67 = vsubq_f32(v66, v79), v68 = vmulq_f32(v67, v67), *v68.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v85, v85, 8uLL), *&vextq_s8(v68, v68, 8uLL)), vadd_f32(vzip1_s32(*v85.i8, *v68.i8), vzip2_s32(*v85.i8, *v68.i8)))), (vcgt_f32(vdup_lane_s32(*v68.i8, 1), *v68.i8).u32[0] & 1) == 0))
    {
      v73 = v86;
      HIDWORD(v73) = 0;
      v86 = v73;
      sub_241351BAC();
      v85 = v74;

      v75 = v85;
      v75.i32[3] = 1.0;
      v85 = v75;
      v37(v51, v4);
      v46 = v85;
      v45 = v86;
      v47 = xmmword_241365EE0;
      v48 = xmmword_241365E70;
      v49 = 1;
      goto LABEL_33;
    }

    v49 = [v28 anchor];
    [v28 worldTransform];
    v83 = v70;
    v84 = v69;
    v85 = v72;
    v86 = v71;

    v37(v51, v4);
LABEL_31:
    v47 = v83;
    v48 = v84;
    v46 = v85;
    v45 = v86;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

double sub_241257210()
{
  sub_241351B9C();
  sub_241351BAC();
  return *&_PromotedConst_28;
}

uint64_t sub_24125725C(float32x4_t a1, double a2)
{
  if (*(v2 + 96) & 1) != 0 || (*(v2 + 128))
  {
    *(v2 + 80) = a1;
    *(v2 + 96) = 0;
    v3 = (v2 + 128);
  }

  else
  {
    v3 = (v2 + 128);
    v4 = a2 - *(v2 + 120);
    if (v4 >= 2.22044605e-16)
    {
      v5 = *(v2 + 80);
      *&v4 = v4;
      v6 = COERCE_FLOAT(vsubq_f32(a1, v5).i32[2]) / *&v4;
      v7 = vsub_f32(*a1.f32, *v5.f32);
      *v5.f32 = vdup_lane_s32(*&v4, 0);
      v8 = vdup_n_s32(0x3DCCCCCDu);
      v9 = vdiv_f32(v7, *v5.f32);
      v10 = *(v2 + 48);
      if (qword_27E537C38 != -1)
      {
        v29 = a2;
        v28 = v6;
        v30 = v8;
        v27 = v9;
        v25 = *(v2 + 48);
        v26 = a1;
        result = swift_once();
        v10 = v25;
        a1 = v26;
        v9 = v27;
        v8 = v30;
        v6 = v28;
        v3 = (v2 + 128);
        a2 = v29;
      }

      *&v11 = vmul_f32(v9, v8);
      v12 = v6 * 0.1;
      v13 = vmovn_s32(vceqq_f32(v10, xmmword_27E541810));
      if ((v13.i8[0] & 1) == 0 || (v13.i8[2] & 1) == 0 || (v13.i8[4] & 1) == 0)
      {
        v14 = *(v2 + 48);
        __asm { FMOV            V4.2S, #0.25 }

        v20 = vmul_f32(*&v11, _D4);
        v21 = vdup_laneq_s32(v14, 2);
        v21.f32[0] = v12;
        v22 = vmul_f32(v21, 0x3F4000003E800000);
        __asm { FMOV            V4.2S, #0.75 }

        *&v11 = vadd_f32(v20, vmul_f32(*v14.i8, _D4));
        LODWORD(v12) = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
      }

      *(&v11 + 1) = LODWORD(v12);
      *(v2 + 48) = v11;
    }

    *(v2 + 80) = a1;
    *(v2 + 96) = 0;
  }

  *(v2 + 120) = a2;
  *v3 = 0;
  return result;
}

double sub_2412573E4(char a1, __n128 a2)
{
  v11 = a2.n128_f64[0];
  if (a1)
  {
    sub_2412574E0(a2);
  }

  swift_beginAccess();
  v3 = *(v2 + 104);
  v4 = v3[1].i64[0];
  result = v11;
  if (v4)
  {
    v6 = qword_27E537C38;

    if (v6 == -1)
    {
      v7 = xmmword_27E541810;
    }

    else
    {
      swift_once();
      v4 = v3[1].i64[0];
      v7 = xmmword_27E541810;
      if (!v4)
      {
LABEL_8:
        v12 = v7;

        *v10.i32 = *(*(v2 + 104) + 16);
        *&result = vdivq_f32(v12, vdupq_lane_s32(v10, 0)).u64[0];
        return result;
      }
    }

    v8 = v3 + 2;
    do
    {
      v9 = *v8++;
      v7 = vaddq_f32(v7, v9);
      v7.i32[3] = 0;
      --v4;
    }

    while (v4);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_2412574E0(__n128 a1)
{
  swift_beginAccess();
  v2 = *(v1 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 104) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2412A18FC(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 104) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_2412A18FC((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  *&v2[16 * v5 + 32] = a1;
  *(v1 + 104) = v2;
  result = swift_endAccess();
  if (v5 >= 0xF)
  {
    swift_beginAccess();
    sub_241257F50(0, 1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2412575DC()
{

  sub_24124B034(*(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_11AssetViewer18WorldRaycastResultV0E4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_2412576AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFB && *(a1 + 80))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 3;
  if (v4 < 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_241257714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483644;
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2412577AC(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6465646E65747865;
    }

    if (a1 == 3)
    {
      return 0x6574696E69666E69;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x1000000000000015;
    }

    if (a1 == 1)
    {
      return 1752393069;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return 0x1000000000000015;
  }

  v4 = v3;
  v5 = a1;
  if ([v4 alignment] == 1)
  {
    sub_24124B044(a1);
    return 0x6C61636974726576;
  }

  else
  {
    sub_24124B044(a1);
    return 0xD000000000000010;
  }
}

uint64_t sub_241257938(uint64_t a1, uint64_t a2)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v8 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a1 + 64);
  v4 = *(a2 + 48);
  v5 = *(a2 + 32);
  v3 = *(a2 + 64);
  if ((sub_2412579B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v11.columns[1] = v9;
  v11.columns[0] = v10;
  v11.columns[2] = v8;
  v12.columns[0] = v6;
  v11.columns[3] = v7;
  v12.columns[2] = v4;
  v12.columns[1] = v5;
  v12.columns[3] = v3;
  return simd_equal(v11, v12);
}

uint64_t sub_2412579B0(void *a1, char *a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 3)
  {
    if (a2 == 3)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 3)
  {
    if (a1)
    {
      if (a2)
      {
        sub_241246158(0, &qword_27E539E40);
        sub_241257A94(a2);
        sub_241257A94(a1);
        v5 = sub_2413542BC();
        sub_24124B044(a1);
        sub_24124B044(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

id sub_241257A94(id result)
{
  if (result - 1 >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_241257AA8()
{
  result = qword_27E538388;
  if (!qword_27E538388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538388);
  }

  return result;
}

BOOL sub_241257B70(float32x4_t a1)
{
  if (qword_27E537C40 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  v3 = vrsqrte_f32(v2);
  v4 = vmul_f32(v3, vrsqrts_f32(v2, vmul_f32(v3, v3)));
  v5 = vsubq_f32(0, xmmword_27E541820);
  v5.f32[2] = 0.0 - *(&xmmword_27E541820 + 2);
  v6 = vmulq_f32(vmulq_n_f32(a1, vmul_f32(v4, vrsqrts_f32(v2, vmul_f32(v4, v4))).f32[0]), v5);
  return (v6.f32[2] + vaddv_f32(*v6.f32)) >= 0.95;
}

uint64_t sub_241257C44()
{
  *(v0 + 32) = 1;
  if (qword_27E537C38 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = xmmword_27E541810;
  *(v0 + 64) = 15;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = MEMORY[0x277D84F90];
  *(v0 + 112) = 1061158912;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 4;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v1 = 0;
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    type metadata accessor for RealityKitWorldRaycast();
    v1 = swift_allocObject();
    swift_unknownObjectUnownedInit();
  }

  *(v0 + 16) = v1;
  type metadata accessor for ARKitWorldRaycast();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v0 + 24) = v2;
  return v0;
}

BOOL sub_241257D70(void *a1)
{
  [a1 worldTransform];
  v3 = vmulq_f32(v2, v2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v17 = vmulq_n_f32(v2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  sub_241351B9C();
  v16 = v5;
  sub_241351BAC();
  v6 = vmulq_f32(v16, v16);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_f32(v17, vmulq_n_f32(v16, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]));
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  [a1 worldTransform];
  v18 = v10;
  sub_241351B9C();
  sub_241351BAC();
  v12 = vsubq_f32(v18, v11);
  v13 = vmulq_f32(v12, v12);
  return sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) < 0.05 && v9 >= 0.965;
}

unint64_t sub_241257EA8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_241257F50(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2412A18FC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_241257EA8(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_241258010()
{
  result = qword_27E538390;
  if (!qword_27E538390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E538B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538390);
  }

  return result;
}

uint64_t sub_241258074(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24125808C(uint64_t a1)
{
  v2 = sub_24135426C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2412580E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241258150(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  result = sub_2413544EC();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_2413544EC();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_241258254(uint64_t a1, uint64_t a2)
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2413544EC();
  if (result < v2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v9 = sub_2413544EC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (!v10)
  {
    sub_24128741C(result, 1);
    return sub_241258150(v4, v2, 0, MEMORY[0x277CBCDA8]);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_241258334(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241258394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2412583F0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
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

uint64_t sub_24125843C(uint64_t a1, int a2)
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

uint64_t sub_241258484(uint64_t result, int a2, int a3)
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

void sub_2412584D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000013;
  *(inited + 16) = xmmword_241366520;
  *(inited + 40) = 0x800000024135E7D0;
  sub_241258CC0();
  v8 = *(a1 + 16);
  *(inited + 48) = sub_24135429C();
  *(inited + 56) = 0x6169726156736168;
  *(inited + 64) = 0xEB0000000073746ELL;
  *(inited + 72) = sub_24135429C();
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000024135E7F0;
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v42 = a5;
    v43 = MEMORY[0x277D84F90];
    sub_2412DE1F4(0, v8, 0);
    v10 = v43;
    v11 = v43[2];
    v12 = a1;
    v13 = a1 + 48;
    v14 = v8;
    do
    {
      v15 = *(*v13 + 16);
      v44 = v10;
      v16 = v10[3];
      v17 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        sub_2412DE1F4((v16 > 1), v11 + 1, 1);
        v10 = v44;
      }

      v10[2] = v17;
      v10[v11 + 4] = v15;
      v13 += 40;
      ++v11;
      --v14;
    }

    while (v14);
    a1 = v12;
  }

  else
  {
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (!v17)
    {
      goto LABEL_20;
    }

    v42 = a5;
    v10 = MEMORY[0x277D84F90];
  }

  v18 = v10[4];
  v19 = v17 - 1;
  if (v17 == 1)
  {
    a5 = v42;
    goto LABEL_20;
  }

  if (v17 >= 5)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v21 = vdupq_n_s64(v18);
    v22 = (v10 + 7);
    v23 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v21;
    do
    {
      v21 = vbslq_s8(vcgtq_s64(v21, v22[-1]), v21, v22[-1]);
      v24 = vbslq_s8(vcgtq_s64(v24, *v22), v24, *v22);
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    v25 = vbslq_s8(vcgtq_s64(v21, v24), v21, v24);
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
    v18 = vbsl_s8(vcgtd_s64(v25.i64[0], v26), *v25.i8, v26);
    a5 = v42;
    if (v19 == (v19 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 1;
    a5 = v42;
  }

  v27 = v17 - v20;
  v28 = 8 * v20 + 32;
  do
  {
    if (v18 <= *(v10 + v28))
    {
      v18 = *(v10 + v28);
    }

    v28 += 8;
    --v27;
  }

  while (v27);
LABEL_20:

  *(inited + 96) = sub_24135429C();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000024135E7B0;
  if (v8)
  {
    sub_2412DE1F4(0, v8, 0);
    v29 = *(v9 + 16);
    v30 = a1 + 48;
    do
    {
      v31 = *(*v30 + 16);
      v32 = *(v9 + 24);
      v33 = v29 + 1;
      if (v29 >= v32 >> 1)
      {
        sub_2412DE1F4((v32 > 1), v29 + 1, 1);
      }

      *(v9 + 16) = v33;
      *(v9 + 8 * v29 + 32) = v31;
      v30 += 40;
      ++v29;
      --v8;
    }

    while (v8);
  }

  else
  {
    v33 = *(v9 + 16);
    if (!v33)
    {
LABEL_30:

      *(inited + 120) = sub_24135429C();
      *(inited + 128) = 0x556E6F6973736573;
      *(inited + 136) = 0xEB00000000444955;
      *(inited + 144) = sub_241353BDC();
      *(inited + 152) = 0x65707954697475;
      *(inited + 160) = 0xE700000000000000;
      v38 = sub_241353BDC();

      *(inited + 168) = v38;
      sub_241244D2C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383C0);
      swift_arrayDestroy();
      if (a5)
      {
        v39 = 0xD000000000000021;
      }

      else
      {
        v39 = 0xD00000000000002BLL;
      }

      if (a5)
      {
        v40 = "userTappedVariantBar";
      }

      else
      {
        v40 = "iewer.ql.variants";
      }

      v41 = [objc_opt_self() defaultCenter];
      sub_24124B4D0(v39, v40 | 0x8000000000000000);

      return;
    }
  }

  v34 = 0;
  v35 = 32;
  while (1)
  {
    v36 = *(v9 + v35);
    v37 = __OFADD__(v34, v36);
    v34 += v36;
    if (v37)
    {
      break;
    }

    v35 += 8;
    if (!--v33)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_241258998(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000024135E790;
    sub_241258CC0();
    *(inited + 48) = sub_24135429C();
    *(inited + 56) = 0x556E6F6973736573;
    *(inited + 64) = 0xEB00000000444955;
    *(inited + 72) = sub_241353BDC();
    sub_241244D2C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383C0);
    swift_arrayDestroy();
    if (a1)
    {
      v6 = sub_24135429C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2412A66F4(v6, 0xD000000000000015, 0x800000024135E810, isUniquelyReferenced_nonNull_native);
    }

    v8 = [objc_opt_self() defaultCenter];
    sub_24124B4D0(0xD000000000000021, 0x800000024135E730);
  }
}

void sub_241258B50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x800000024135E710;
    sub_241258CC0();
    *(inited + 48) = sub_24135429C();
    *(inited + 56) = 0x556E6F6973736573;
    *(inited + 64) = 0xEB00000000444955;
    *(inited + 72) = sub_241353BDC();
    sub_241244D2C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383C0);
    swift_arrayDestroy();
    v4 = [objc_opt_self() defaultCenter];
    sub_24124B4D0(0xD000000000000021, 0x800000024135E730);
  }
}

unint64_t sub_241258CC0()
{
  result = qword_27E5383B8;
  if (!qword_27E5383B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5383B8);
  }

  return result;
}

void sub_241258D0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365E60;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000024135E810;
  sub_241258CC0();
  *(inited + 48) = sub_24135429C();
  *(inited + 56) = 0x556E6F6973736573;
  *(inited + 64) = 0xEB00000000444955;
  *(inited + 72) = sub_241353BDC();
  *(inited + 80) = 0x65707954697475;
  *(inited + 88) = 0xE700000000000000;
  v6 = sub_241353BDC();

  *(inited + 96) = v6;
  sub_241244D2C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5383C0);
  swift_arrayDestroy();
  v7 = (a4 & 1) == 0;
  if (a4)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = 0xD00000000000002BLL;
  }

  if (v7)
  {
    v9 = "iewer.ql.variants";
  }

  else
  {
    v9 = "userTappedVariantBar";
  }

  v10 = [objc_opt_self() defaultCenter];
  sub_24124B4D0(v8, v9 | 0x8000000000000000);
}

uint64_t sub_241258F44()
{
  sub_2413545EC();
  MEMORY[0x245CE20D0](0xD000000000000010, 0x800000024135EA30);
  sub_241353FCC();
  MEMORY[0x245CE20D0](32, 0xE100000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](32, 0xE100000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](0x6C736E617274202CLL, 0xEE00206E6F697461);
  sub_241353FCC();
  MEMORY[0x245CE20D0](32, 0xE100000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](32, 0xE100000000000000);
  sub_241353FCC();
  return 0;
}

BOOL sub_2412590A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  return sub_24125D3D8(v5, v6);
}

uint64_t sub_2412590E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 48) = _Q0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = _Q0;
  *(v2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_24125913C(float a1)
{
  REAABBExtents();
  *(v1 + 60) = fmaxf(fmaxf(v3, v4), v5) / 0.35;
  sub_2412596EC();
  REAABBCenter();
  *(v1 + 56) = v6;
  sub_2412596EC();
  *(v1 + 32) = a1;
  sub_2412596EC();
  *(v1 + 36) = 0;
  sub_2412596EC();
  *(v1 + 48) = *(v1 + 56);
  sub_2412596EC();
  *(v1 + 52) = *(v1 + 60);
  sub_2412596EC();
  sub_2412596EC();
  v7 = *(v1 + 48);
  *(v1 + 64) = *(v1 + 32);
  *(v1 + 80) = v7;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);

  oslog = sub_241352FDC();
  v9 = sub_2413540DC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = *(v1 + 80);
    v18 = *(v1 + 64);
    v19 = v12;
    v13 = sub_241258F44();
    v15 = sub_2412DDC2C(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_241215000, oslog, v9, "identityState %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CE4870](v11, -1, -1);
    MEMORY[0x245CE4870](v10, -1, -1);
  }
}

BOOL sub_241259340()
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v0[2], v0[4]))) & 1) != 0 && v0[3].f32[0] == v0[5].f32[0] && v0[3].f32[1] == v0[5].f32[1] && v0[3].f32[2] == v0[5].f32[2])
  {
    return v0[3].f32[3] == v0[5].f32[3];
  }

  return result;
}

uint64_t sub_2412593A4(double a1, float a2, uint64_t a3, uint64_t a4, float *a5, float *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = fminf(fmaxf(a2, 0.0), 1.0);
    v12 = (v11 * v11) * ((v11 * -2.0) + 3.0);
    *(result + 32) = *a5 + (v12 * (*a6 - *a5));
    sub_2412596EC();
    v10[9] = a5[1] + (v12 * (a6[1] - a5[1]));
    sub_2412596EC();
    v10[10] = a5[2] + (v12 * (a6[2] - a5[2]));
    sub_2412596EC();
    v10[11] = a5[3] + (v12 * (a6[3] - a5[3]));
    sub_2412596EC();
    v10[12] = a5[4] + (v12 * (a6[4] - a5[4]));
    sub_2412596EC();
    v10[13] = a5[5] + (v12 * (a6[5] - a5[5]));
    sub_2412596EC();
    sub_2412596EC();
  }

  return result;
}

uint64_t sub_2412594CC(void (*a1)(void), uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = a4[1];
    *(result + 32) = *a4;
    *(result + 48) = v6;
    sub_2412596EC();
    sub_2412596EC();
  }

  return result;
}

void sub_24125954C(char a1, float a2)
{
  *(v2 + 52) = *(v2 + 60) / a2;
  sub_2412596EC();
  sub_2412596EC();
  if (a1)
  {
    v4 = *(v2 + 60);
    v5 = *(v2 + 52);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v2 + 104);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6, -*(v2 + 36), *(v2 + 32), v4 / v5);

      swift_unknownObjectRelease();
    }
  }
}

void sub_241259608(char a1, float a2, float a3)
{
  *(v3 + 32) = remainderf(a3 + 6.2832, 6.2832);
  sub_2412596EC();
  *(v3 + 36) = remainderf(6.2832 - a2, 6.2832);
  sub_2412596EC();
  sub_2412596EC();
  if (a1)
  {
    v6 = *(v3 + 60);
    v7 = *(v3 + 52);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v3 + 104);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8, -*(v3 + 36), *(v3 + 32), v6 / v7);

      swift_unknownObjectRelease();
    }
  }
}

void sub_2412596EC()
{
  v1.n128_u64[0] = *(v0 + 44);
  v1.n128_u64[1] = *(v0 + 52);
  v2.f32[0] = sub_2412FEE00(v1);
  v35 = v2;
  v37 = v3;
  v38 = v4;
  v39 = v5;
  v6.f32[0] = sub_2412FEED4(*(v0 + 32));
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  *v10.i64 = sub_2412FEFCC(*(v0 + 36));
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  *v14.i64 = sub_2412FF0BC(*(v0 + 40));
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v27.f32[0]), v15, *v27.f32, 1), v16, v27, 2), v17, v27, 3);
  v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v28.f32[0]), v15, *v28.f32, 1), v16, v28, 2), v17, v28, 3);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v29.f32[0]), v15, *v29.f32, 1), v16, v29, 2), v17, v29, 3);
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v30.f32[0]), v15, *v30.f32, 1), v16, v30, 2), v17, v30, 3);
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v31.f32[0]), v19, *v31.f32, 1), v20, v31, 2), v21, v31, 3);
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v32.f32[0]), v19, *v32.f32, 1), v20, v32, 2), v21, v32, 3);
  v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v33.f32[0]), v19, *v33.f32, 1), v20, v33, 2), v21, v33, 3);
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v34.f32[0]), v19, *v34.f32, 1), v20, v34, 2), v21, v34, 3);
  v36.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v35.f32[0]), v23, *v35.f32, 1), v24, v35, 2), v25, v35, 3);
  v36.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v37.f32[0]), v23, *v37.f32, 1), v24, v37, 2), v25, v37, 3);
  v36.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v38.f32[0]), v23, *v38.f32, 1), v24, v38, 2), v25, v38, 3);
  v36.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v39.f32[0]), v23, *v39.f32, 1), v24, v39, 2), v25, v39, 3);
  sub_241352C5C();
  sub_24135198C();
  simd_quaternion(v36);
  sub_2413518FC();
  *v26.columns[0].i64 = sub_2412FEFCC(*(v0 + 36));
  if (*(v0 + 24))
  {
    simd_quaternion(v26);
    sub_2413518FC();
  }
}

uint64_t sub_2412598B4()
{

  sub_24124B00C(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_24125995C(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_wantsFastMovement] = 1;
  v3 = objc_opt_self();
  v4 = [v3 buttonWithType_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 darkGrayColor];
  [v6 setBackgroundColor_];

  v8 = [v5 whiteColor];
  [v6 setTintColor_];

  [v6 _setContinuousCornerRadius_];
  [v6 setFrame_];

  v9 = sub_241353BDC();
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed_];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_upButton;
  [v6 setImage:v11 forState:0];

  [v6 setImageEdgeInsets_];
  v13 = v6;
  [v13 setContentHorizontalAlignment_];
  [v13 setContentVerticalAlignment_];

  *&v2[v12] = v13;
  v14 = [v3 buttonWithType_];
  v15 = [v5 darkGrayColor];
  [v14 setBackgroundColor_];

  v16 = [v5 whiteColor];
  [v14 setTintColor_];

  [v14 _setContinuousCornerRadius_];
  [v14 setFrame_];

  v17 = sub_241353BDC();
  v18 = [v10 systemImageNamed_];

  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_rightButton;
  [v14 setImage:v18 forState:0];

  [v14 setImageEdgeInsets_];
  v20 = v14;
  [v20 setContentHorizontalAlignment_];
  [v20 setContentVerticalAlignment_];

  *&v2[v19] = v20;
  v21 = [v3 buttonWithType_];
  v22 = [v5 darkGrayColor];
  [v21 setBackgroundColor_];

  v23 = [v5 whiteColor];
  [v21 setTintColor_];

  [v21 _setContinuousCornerRadius_];
  [v21 setFrame_];

  v24 = sub_241353BDC();
  v25 = [v10 systemImageNamed_];

  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_downButton;
  [v21 setImage:v25 forState:0];

  [v21 setImageEdgeInsets_];
  v27 = v21;
  [v27 setContentHorizontalAlignment_];
  [v27 setContentVerticalAlignment_];

  *&v2[v26] = v27;
  v28 = [v3 buttonWithType_];
  v29 = [v5 darkGrayColor];
  [v28 setBackgroundColor_];

  v30 = [v5 whiteColor];
  [v28 setTintColor_];

  [v28 _setContinuousCornerRadius_];
  [v28 setFrame_];

  v31 = sub_241353BDC();
  v32 = [v10 systemImageNamed_];

  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_leftButton;
  [v28 setImage:v32 forState:0];

  [v28 setImageEdgeInsets_];
  v34 = v28;
  [v34 setContentHorizontalAlignment_];
  [v34 setContentVerticalAlignment_];

  *&v2[v33] = v34;
  v35 = [v3 buttonWithType_];
  v36 = [v5 darkGrayColor];
  [v35 setBackgroundColor_];

  v37 = [v5 whiteColor];
  [v35 setTintColor_];

  [v35 _setContinuousCornerRadius_];
  [v35 setFrame_];

  v38 = sub_241353BDC();
  v39 = [v10 systemImageNamed_];

  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_fastMovementButton;
  [v35 setImage:v39 forState:0];

  [v35 setImageEdgeInsets_];
  v41 = v35;
  [v41 setContentHorizontalAlignment_];
  [v41 setContentVerticalAlignment_];

  *&v2[v40] = v41;
  v42 = [v3 buttonWithType_];
  v43 = [v5 darkGrayColor];
  [v42 setBackgroundColor_];

  v44 = [v5 whiteColor];
  [v42 setTintColor_];

  [v42 _setContinuousCornerRadius_];
  [v42 setFrame_];

  v45 = sub_241353BDC();
  v46 = [v10 systemImageNamed_];

  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomOutButton;
  [v42 setImage:v46 forState:0];

  [v42 setImageEdgeInsets_];
  v48 = v42;
  [v48 setContentHorizontalAlignment_];
  [v48 setContentVerticalAlignment_];

  *&v2[v47] = v48;
  v49 = [v3 buttonWithType_];
  v50 = [v5 darkGrayColor];
  [v49 setBackgroundColor_];

  v51 = [v5 whiteColor];
  [v49 setTintColor_];

  [v49 _setContinuousCornerRadius_];
  [v49 setFrame_];

  v52 = sub_241353BDC();
  v53 = [v10 systemImageNamed_];

  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomInButton;
  [v49 setImage:v53 forState:0];

  [v49 setImageEdgeInsets_];
  v55 = v49;
  [v55 setContentHorizontalAlignment_];
  [v55 setContentVerticalAlignment_];

  *&v2[v54] = v55;
  v56 = [v3 buttonWithType_];
  v57 = [v5 darkGrayColor];
  [v56 setBackgroundColor_];

  v58 = [v5 whiteColor];
  [v56 setTintColor_];

  [v56 _setContinuousCornerRadius_];
  [v56 setFrame_];

  v59 = sub_241353BDC();
  v60 = [v10 systemImageNamed_];

  if (v60)
  {
    v61 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton;
    [v56 setImage:v60 forState:0];

    *&v2[v61] = v56;
    *&v2[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_cameraController] = a1;
    *&v2[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController] = a2;
    v88.receiver = v2;
    v88.super_class = type metadata accessor for CameraControlsView();

    v82 = a2;
    v62 = objc_msgSendSuper2(&v88, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2413665B0;
    v64 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_upButton];
    *(inited + 32) = v64;
    v65 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_rightButton];
    *(inited + 40) = v65;
    v66 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_downButton];
    *(inited + 48) = v66;
    v67 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_leftButton];
    *(inited + 56) = v67;
    v68 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_fastMovementButton];
    *(inited + 64) = v68;
    v83 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomOutButton];
    *(inited + 72) = v83;
    v86 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomInButton];
    *(inited + 80) = v86;
    v81 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton;
    v84 = *&v62[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton];
    *(inited + 88) = v84;
    v69 = v62;
    v70 = v64;
    v71 = v65;
    v72 = v66;
    v73 = v67;
    v74 = v68;
    v75 = v83;
    v76 = v86;
    v77 = v84;
    v78 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x245CE29C0](v78, inited);
      }

      else
      {
        if (v78 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v79 = *(inited + 8 * v78 + 32);
      }

      v80 = v79;
      ++v78;
      [v79 addTarget:v69 action:sel_buttonPressedWithSender_ forControlEvents:{64, v81}];
      [v69 addSubview_];

      if (v78 == 8)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        [*&v62[v81] setShowsMenuAsPrimaryAction_];
        sub_24125A7F4();

        return;
      }
    }
  }

LABEL_24:
  __break(1u);
}

void sub_24125A7F4()
{
  v1 = v0;
  v2 = sub_241353BDC();
  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed_];

  if (!v4)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_241246158(0, &qword_27E538430);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37[4] = sub_2413542DC();
  v6 = [objc_opt_self() overrideCameraStateSerializedString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_241353C0C();
    v10 = v9;

    v11 = sub_241353BDC();
    v12 = [v3 systemImageNamed_];

    if (!v12)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v8;
    v14[4] = v10;
    v6 = sub_2413542DC();
  }

  v37[5] = v6;
  sub_24125C258();
  v37[6] = v15;
  v16 = sub_241353BDC();
  v17 = [v3 systemImageNamed_];

  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v18;
  v37[7] = sub_2413542DC();
  v19 = sub_241353BDC();
  v20 = [v3 systemImageNamed_];

  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v21;
  v22 = 0;
  v37[8] = sub_2413542DC();
  v23 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
LABEL_8:
  if (v22 <= 5)
  {
    v24 = 5;
  }

  else
  {
    v24 = v22;
  }

  while (v22 != 5)
  {
    if (v24 == v22)
    {
      __break(1u);
      goto LABEL_21;
    }

    v25 = v37[v22++ + 4];
    if (v25)
    {
      v26 = v25;
      MEMORY[0x245CE21C0](v26, v27, v28, v29, v30);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
      v23 = v36;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538440);
  swift_arrayDestroy();
  v1 = *&v1[OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton];
  if (!(v23 >> 62))
  {

    sub_24135498C();
    sub_241246158(0, &qword_27E538448);
    v31 = v23;
    goto LABEL_19;
  }

LABEL_21:
  sub_241246158(0, &qword_27E538448);

  v31 = sub_2413547EC();

LABEL_19:

  sub_241246158(0, &qword_27E538450);
  v33 = v31;
  v32 = sub_24135421C();
  [v1 setMenu_];
}

void sub_24125AD8C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_wantsFastMovement;
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_wantsFastMovement))
  {
    v2 = 0.2;
  }

  else
  {
    v2 = 0.005;
  }

  if (*(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_wantsFastMovement))
  {
    v3 = 0.15;
  }

  else
  {
    v3 = 0.01;
  }

  v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_upButton);
  sub_241246158(0, &qword_27E538438);
  v5 = v4;
  v6 = sub_2413542BC();

  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
    v3 = -v3;
LABEL_9:
    v8 = v7;
    v9 = 0.0;
    v10 = v3;
LABEL_13:
    v28 = v8;
    sub_241247088(v9, v10);
    goto LABEL_14;
  }

  v11 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_rightButton);
  v12 = sub_2413542BC();

  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
LABEL_12:
    v8 = v13;
    v10 = 0.0;
    v9 = v3;
    goto LABEL_13;
  }

  v14 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_downButton);
  v15 = sub_2413542BC();

  if (v15)
  {
    v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
    goto LABEL_9;
  }

  v16 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_leftButton);
  v17 = sub_2413542BC();

  if (v17)
  {
    v13 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
    v3 = -v3;
    goto LABEL_12;
  }

  v18 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_fastMovementButton);
  v19 = sub_2413542BC();

  if (v19)
  {
    *(v0 + v1) ^= 1u;
    v20 = sub_241353BDC();

    v28 = [objc_opt_self() systemImageNamed_];

    if (!v28)
    {
      __break(1u);
      return;
    }

    [v18 setImage:v28 forState:0];
  }

  else
  {
    v21 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomOutButton);
    v22 = sub_2413542BC();

    if (v22)
    {
      v28 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
      [v28 assetScale];
      v24 = v23 - v2;
    }

    else
    {
      v25 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomInButton);
      v26 = sub_2413542BC();

      if ((v26 & 1) == 0)
      {
        v28 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton);
        sub_2413542BC();
        goto LABEL_14;
      }

      v28 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
      [v28 assetScale];
      v24 = v2 + v27;
    }

    sub_241249F70(v24);
  }

LABEL_14:
}

void sub_24125B148()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_241215000, v3, v4, "Saving camera state to user defaults", v5, 2u);
      MEMORY[0x245CE4870](v5, -1, -1);
    }

    v6 = sub_24125B4A8();
    v8 = v7;

    v9 = sub_241352FDC();
    v10 = sub_2413540DC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2412DDC2C(v6, v8, &v16);
      _os_log_impl(&dword_241215000, v9, v10, "Setting user defaults camera state override to: '%s'", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CE4870](v12, -1, -1);
      MEMORY[0x245CE4870](v11, -1, -1);
    }

    v13 = objc_opt_self();
    v14 = sub_241353BDC();

    [v13 setPreferencesValueForKey:@"OverrideCameraState" value:v14];

    sub_24125A7F4(v15);
  }
}

char *sub_24125B4A8()
{
  v2 = sub_241353C6C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2413511AC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2413511EC();
  swift_allocObject();
  v6 = sub_2413511DC();
  sub_24135119C();
  sub_2413511BC();
  v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
  v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch);
  v9 = *(*(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_cameraController) + 52);
  LODWORD(v46) = *(v7 + OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw);
  HIDWORD(v46) = v8;
  LODWORD(v47) = v9;
  sub_24125D65C();
  v10 = sub_2413511CC();
  if (v1)
  {
LABEL_2:

    return v4;
  }

  v12 = v10;
  v13 = v11;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E53A538);
  sub_24125D6B0(v12, v13);
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  sub_24125D520(v12, v13);
  v17 = os_log_type_enabled(v15, v16);
  v45 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v44 = v6;
    v19 = v18;
    v43 = swift_slowAlloc();
    v46 = v43;
    *v19 = 136315138;
    sub_24125D6B0(v12, v13);
    v20 = v12;
    v21 = v13;
    v22 = sub_24135153C();
    v24 = v23;
    sub_24125D520(v20, v21);
    v25 = sub_2412DDC2C(v22, v24, &v46);

    *(v19 + 4) = v25;
    v13 = v21;
    v12 = v20;
    _os_log_impl(&dword_241215000, v15, v16, "original data user defaults: %s", v19, 0xCu);
    v26 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  sub_241353C5C();
  v27 = sub_241353C2C();
  if (!v28)
  {
    v45 = v12;
    v4 = 0x800000024135EBA0;
    v35 = sub_241352FDC();
    v36 = sub_2413540BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v13;
      v39 = v38;
      v48 = v38;
      *v37 = 136315138;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_2413545EC();

      v46 = 0xD000000000000011;
      v47 = 0x800000024135EA70;
      MEMORY[0x245CE20D0](0xD000000000000018, 0x800000024135EBA0);
      v40 = sub_2412DDC2C(v46, v47, &v48);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_241215000, v35, v36, "Failed to override state: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v13 = v44;
      MEMORY[0x245CE4870](v39, -1, -1);
      MEMORY[0x245CE4870](v37, -1, -1);
    }

    sub_24125D464();
    swift_allocError();
    *v41 = 0xD000000000000018;
    v41[1] = 0x800000024135EBA0;
    swift_willThrow();
    sub_24125D520(v45, v13);
    goto LABEL_2;
  }

  v4 = v27;
  v29 = v28;

  v30 = sub_241352FDC();
  v31 = sub_2413540DC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2412DDC2C(v4, v29, &v46);
    _os_log_impl(&dword_241215000, v30, v31, "Serialized camera state: '%s'", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245CE4870](v33, -1, -1);
    MEMORY[0x245CE4870](v32, -1, -1);
  }

  sub_24125D520(v12, v13);

  return v4;
}

void sub_24125BA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v8 = sub_241352FFC();
    __swift_project_value_buffer(v8, qword_27E53A538);
    v9 = sub_241352FDC();
    v10 = sub_2413540DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_241215000, v9, v10, "Resetting camera state from user default", v11, 2u);
      MEMORY[0x245CE4870](v11, -1, -1);
    }

    sub_24125BB64(a3, a4);
  }
}

void sub_24125BB64(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_241353C6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  v13 = __swift_project_value_buffer(v12, qword_27E53A538);

  v50 = v13;
  v14 = sub_241352FDC();
  v15 = sub_2413540DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v49 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v48 = v8;
    v19 = v18;
    v51 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2412DDC2C(a1, a2, &v51);
    _os_log_impl(&dword_241215000, v14, v15, "Overriding camera state with serialized string: '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v20 = v19;
    v4 = v3;
    v8 = v48;
    MEMORY[0x245CE4870](v20, -1, -1);
    v21 = v17;
    v5 = v49;
    MEMORY[0x245CE4870](v21, -1, -1);
  }

  sub_241353C5C();
  v22 = sub_241353C1C();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  if (v24 >> 60 == 15)
  {
    v25 = sub_241352FDC();
    v26 = sub_2413540BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v28;
      sub_2413545EC();

      v51 = 0xD000000000000011;
      v52 = 0x800000024135EA70;
      MEMORY[0x245CE20D0](0xD00000000000001ALL, 0x800000024135EA50);
      v29 = sub_2412DDC2C(v51, v52, &v53);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_241215000, v25, v26, "Failed to override state: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245CE4870](v28, -1, -1);
      MEMORY[0x245CE4870](v27, -1, -1);
    }

    sub_24125D464();
    swift_allocError();
    *v30 = 0xD00000000000001ALL;
    v30[1] = 0x800000024135EA50;
    swift_willThrow();
  }

  else
  {
    sub_24135118C();
    swift_allocObject();
    sub_24135117C();
    sub_24125D4B8();
    sub_24135116C();
    if (v4)
    {

      v31 = v4;
      v32 = sub_241352FDC();
      v33 = sub_2413540BC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v51 = v35;
        *v34 = 136315138;
        swift_getErrorValue();
        v36 = sub_241354A3C();
        v38 = sub_2412DDC2C(v36, v37, &v51);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_241215000, v32, v33, "Couldn't decode camera state serialized string, error: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x245CE4870](v35, -1, -1);
        MEMORY[0x245CE4870](v34, -1, -1);
      }

      swift_willThrow();
      sub_24125D50C(v22, v24);
    }

    else
    {

      v39 = v51;
      *(*(v5 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_cameraController) + 52) = v52;

      sub_2412596EC();

      v40 = *(v5 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_entityController);
      *&v40[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch] = HIDWORD(v39);
      *&v40[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = v39;
      v41 = v40;
      sub_241247088(0.0, 0.0);

      v42 = sub_241352FDC();
      v43 = sub_2413540DC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315138;
        v51 = 0;
        v52 = 0xE000000000000000;
        v53 = v45;
        sub_2413545EC();
        MEMORY[0x245CE20D0](0xD000000000000010, 0x800000024135EA90);
        sub_241353FCC();
        MEMORY[0x245CE20D0](0x206863746970202CLL, 0xE800000000000000);
        sub_241353FCC();
        MEMORY[0x245CE20D0](544874540, 0xE400000000000000);
        sub_241353FCC();
        v46 = sub_2412DDC2C(v51, v52, &v53);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_241215000, v42, v43, "Override camera state with %s", v44, 0xCu);
        v47 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x245CE4870](v47, -1, -1);
        MEMORY[0x245CE4870](v44, -1, -1);
      }

      sub_24125D50C(v22, v24);
    }
  }
}

void sub_24125C258()
{
  v0 = [objc_opt_self() overrideCameraStateSerializedString];
  if (v0)
  {

    v1 = sub_241353BDC();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      sub_241246158(0, &qword_27E538430);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_2413542DC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24125C388()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_241215000, v3, v4, "Deleting camera state user default", v5, 2u);
      MEMORY[0x245CE4870](v5, -1, -1);
    }

    v6 = [objc_opt_self() setPreferencesValueForKey:@"OverrideCameraState" value:0];
    sub_24125A7F4(v6);
  }
}

void sub_24125C4C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_241215000, v3, v4, "Copying camera state to clipboard", v5, 2u);
      MEMORY[0x245CE4870](v5, -1, -1);
    }

    v6 = sub_24125B4A8();
    v8 = v7;
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    v9 = v6;
    sub_2413545EC();
    MEMORY[0x245CE20D0](0xD000000000000042, 0x800000024135EB50);
    MEMORY[0x245CE20D0](v9, v8);

    MEMORY[0x245CE20D0](39, 0xE100000000000000);

    v10 = sub_241352FDC();
    v11 = sub_2413540DC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2412DDC2C(0, 0xE000000000000000, v16);
      _os_log_impl(&dword_241215000, v10, v11, "User defaults for setting camera state: \n%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245CE4870](v13, -1, -1);
      MEMORY[0x245CE4870](v12, -1, -1);
    }

    v14 = [objc_opt_self() generalPasteboard];
    v15 = sub_241353BDC();

    [v14 setString_];
  }
}

void sub_24125C890()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538458);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v49 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E53A538);
    v6 = sub_241352FDC();
    v7 = sub_2413540DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_241215000, v6, v7, "Using pasteboard string as camera state", v8, 2u);
      MEMORY[0x245CE4870](v8, -1, -1);
    }

    v9 = [objc_opt_self() generalPasteboard];
    v10 = [v9 string];

    if (v10)
    {
      v50 = v4;
      v11 = sub_241353C0C();
      v13 = v12;

      v53 = v11;
      v54 = v13;
      v51 = 123;
      v52 = 0xE100000000000000;
      v14 = sub_24135168C();
      v15 = *(*(v14 - 8) + 56);
      v15(v2, 1, 1, v14);
      sub_24125D5A0();
      v16 = sub_2413543AC();
      v18 = v17;
      sub_24125D5F4(v2);
      if (v18 & 1) != 0 || (v53 = v11, v54 = v13, v51 = 125, v52 = 0xE100000000000000, v15(v2, 1, 1, v14), v19 = sub_2413543AC(), v21 = v20, sub_24125D5F4(v2), (v21))
      {

        v22 = sub_241352FDC();
        v23 = sub_2413540BC();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_241215000, v22, v23, "Couldn't find open/close {} brace", v24, 2u);
          MEMORY[0x245CE4870](v24, -1, -1);
        }

        v4 = v50;
      }

      else
      {
        if (v19 >> 14 < v16 >> 14)
        {
          __break(1u);
          return;
        }

        sub_241353CEC();
        v28 = sub_241353D9C();
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = sub_241352FDC();
        v36 = sub_2413540DC();

        v37 = os_log_type_enabled(v35, v36);
        v4 = v50;
        if (v37)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v53 = v39;
          *v38 = 136315138;

          v40 = MEMORY[0x245CE2060](v28, v30, v32, v34);
          v49 = v32;
          v41 = v30;
          v42 = v28;
          v44 = v43;

          v45 = sub_2412DDC2C(v40, v44, &v53);
          v28 = v42;
          v30 = v41;
          v32 = v49;

          *(v38 + 4) = v45;
          _os_log_impl(&dword_241215000, v35, v36, "Using potential json substring: '%s'", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x245CE4870](v39, -1, -1);
          MEMORY[0x245CE4870](v38, -1, -1);
        }

        v46 = MEMORY[0x245CE2060](v28, v30, v32, v34);
        v48 = v47;

        sub_24125BB64(v46, v48);
      }
    }

    else
    {
      v25 = sub_241352FDC();
      v26 = sub_2413540BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_241215000, v25, v26, "No string found on clipboard", v27, 2u);
        MEMORY[0x245CE4870](v27, -1, -1);
      }
    }
  }
}

id sub_24125CE54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24125CFA0()
{
  sub_2413545EC();
  MEMORY[0x245CE20D0](0xD000000000000010, 0x800000024135EA90);
  sub_241353FCC();
  MEMORY[0x245CE20D0](0x206863746970202CLL, 0xE800000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](544874540, 0xE400000000000000);
  sub_241353FCC();
  return 0;
}

uint64_t sub_24125D0A4()
{
  v1 = 0x616C736E6172547ALL;
  if (*v0 == 1)
  {
    v1 = 0x6C6261746E727574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6261746E727574;
  }
}

uint64_t sub_24125D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24125E65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24125D14C(uint64_t a1)
{
  v2 = sub_24125E99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24125D188(uint64_t a1)
{
  v2 = sub_24125E99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24125D1C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24125E99C();
  sub_241354B3C();
  v8[15] = 0;
  sub_2413548DC();
  if (!v1)
  {
    v8[14] = 1;
    sub_2413548DC();
    v8[13] = 2;
    sub_2413548DC();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_24125D37C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24125E784(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
  }
}

unint64_t sub_24125D464()
{
  result = qword_27E538420;
  if (!qword_27E538420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538420);
  }

  return result;
}

unint64_t sub_24125D4B8()
{
  result = qword_27E538428;
  if (!qword_27E538428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538428);
  }

  return result;
}

uint64_t sub_24125D50C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24125D520(a1, a2);
  }

  return a1;
}

uint64_t sub_24125D520(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24125D5A0()
{
  result = qword_27E538460;
  if (!qword_27E538460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538460);
  }

  return result;
}

uint64_t sub_24125D5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24125D65C()
{
  result = qword_27E538468;
  if (!qword_27E538468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538468);
  }

  return result;
}

uint64_t sub_24125D6B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_24125D704()
{
  *(v0 + OBJC_IVAR____TtC11AssetViewer18CameraControlsView_wantsFastMovement) = 1;
  v1 = objc_opt_self();
  v2 = [v1 buttonWithType_];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 darkGrayColor];
  [v4 setBackgroundColor_];

  v6 = [v3 whiteColor];
  [v4 setTintColor_];

  [v4 _setContinuousCornerRadius_];
  [v4 setFrame_];

  v7 = sub_241353BDC();
  v8 = objc_opt_self();
  v9 = [v8 systemImageNamed_];

  if (!v9)
  {
    __break(1u);
  }

  v10 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_upButton;
  [v4 setImage:v9 forState:0];

  [v4 setImageEdgeInsets_];
  v11 = v4;
  [v11 setContentHorizontalAlignment_];
  [v11 setContentVerticalAlignment_];

  *(v0 + v10) = v11;
  v12 = [v1 buttonWithType_];
  v13 = [v3 darkGrayColor];
  [v12 setBackgroundColor_];

  v14 = [v3 whiteColor];
  [v12 setTintColor_];

  [v12 _setContinuousCornerRadius_];
  [v12 setFrame_];

  v15 = sub_241353BDC();
  v16 = [v8 systemImageNamed_];

  if (!v16)
  {
    __break(1u);
  }

  v17 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_rightButton;
  [v12 setImage:v16 forState:0];

  [v12 setImageEdgeInsets_];
  v18 = v12;
  [v18 setContentHorizontalAlignment_];
  [v18 setContentVerticalAlignment_];

  *(v0 + v17) = v18;
  v19 = [v1 buttonWithType_];
  v20 = [v3 darkGrayColor];
  [v19 setBackgroundColor_];

  v21 = [v3 whiteColor];
  [v19 setTintColor_];

  [v19 _setContinuousCornerRadius_];
  [v19 setFrame_];

  v22 = sub_241353BDC();
  v23 = [v8 systemImageNamed_];

  if (!v23)
  {
    __break(1u);
  }

  v24 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_downButton;
  [v19 setImage:v23 forState:0];

  [v19 setImageEdgeInsets_];
  v25 = v19;
  [v25 setContentHorizontalAlignment_];
  [v25 setContentVerticalAlignment_];

  *(v0 + v24) = v25;
  v26 = [v1 buttonWithType_];
  v27 = [v3 darkGrayColor];
  [v26 setBackgroundColor_];

  v28 = [v3 whiteColor];
  [v26 setTintColor_];

  [v26 _setContinuousCornerRadius_];
  [v26 setFrame_];

  v29 = sub_241353BDC();
  v30 = [v8 systemImageNamed_];

  if (!v30)
  {
    __break(1u);
  }

  v31 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_leftButton;
  [v26 setImage:v30 forState:0];

  [v26 setImageEdgeInsets_];
  v32 = v26;
  [v32 setContentHorizontalAlignment_];
  [v32 setContentVerticalAlignment_];

  *(v0 + v31) = v32;
  v33 = [v1 buttonWithType_];
  v34 = [v3 darkGrayColor];
  [v33 setBackgroundColor_];

  v35 = [v3 whiteColor];
  [v33 setTintColor_];

  [v33 _setContinuousCornerRadius_];
  [v33 setFrame_];

  v36 = sub_241353BDC();
  v37 = [v8 systemImageNamed_];

  if (!v37)
  {
    __break(1u);
  }

  v38 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_fastMovementButton;
  [v33 setImage:v37 forState:0];

  [v33 setImageEdgeInsets_];
  v39 = v33;
  [v39 setContentHorizontalAlignment_];
  [v39 setContentVerticalAlignment_];

  *(v0 + v38) = v39;
  v40 = [v1 buttonWithType_];
  v41 = [v3 darkGrayColor];
  [v40 setBackgroundColor_];

  v42 = [v3 whiteColor];
  [v40 setTintColor_];

  [v40 _setContinuousCornerRadius_];
  [v40 setFrame_];

  v43 = sub_241353BDC();
  v44 = [v8 systemImageNamed_];

  if (!v44)
  {
    __break(1u);
  }

  v45 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomOutButton;
  [v40 setImage:v44 forState:0];

  [v40 setImageEdgeInsets_];
  v46 = v40;
  [v46 setContentHorizontalAlignment_];
  [v46 setContentVerticalAlignment_];

  *(v0 + v45) = v46;
  v47 = [v1 buttonWithType_];
  v48 = [v3 darkGrayColor];
  [v47 setBackgroundColor_];

  v49 = [v3 whiteColor];
  [v47 setTintColor_];

  [v47 _setContinuousCornerRadius_];
  [v47 setFrame_];

  v50 = sub_241353BDC();
  v51 = [v8 systemImageNamed_];

  if (!v51)
  {
    __break(1u);
  }

  v52 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_zoomInButton;
  [v47 setImage:v51 forState:0];

  [v47 setImageEdgeInsets_];
  v53 = v47;
  [v53 setContentHorizontalAlignment_];
  [v53 setContentVerticalAlignment_];

  *(v0 + v52) = v53;
  v54 = [v1 buttonWithType_];
  v55 = [v3 darkGrayColor];
  [v54 setBackgroundColor_];

  v56 = [v3 whiteColor];
  [v54 setTintColor_];

  [v54 _setContinuousCornerRadius_];
  [v54 setFrame_];

  v57 = sub_241353BDC();
  v58 = [v8 systemImageNamed_];

  if (!v58)
  {
    __break(1u);
  }

  v59 = OBJC_IVAR____TtC11AssetViewer18CameraControlsView_menuButton;
  [v54 setImage:v58 forState:0];

  *(v0 + v59) = v54;
  sub_2413547DC();
  __break(1u);
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraControlsView.SavedState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraControlsView.SavedState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_24125E5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24125E608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24125E65C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6C6261746E727574 && a2 == 0xEC00000077615965;
  if (v3 || (sub_24135497C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6261746E727574 && a2 == 0xEE00686374695065 || (sub_24135497C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C736E6172547ALL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_24135497C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

float sub_24125E784(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538470);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24125E99C();
  sub_241354B2C();
  v12 = 0;
  sub_24135489C();
  v7 = v6;
  v11 = 1;
  sub_24135489C();
  v10 = 2;
  sub_24135489C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24125E99C()
{
  result = qword_27E538478;
  if (!qword_27E538478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetLoader.FileMetadata.FileType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetLoader.FileMetadata.FileType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24125EB44()
{
  result = qword_27E538488;
  if (!qword_27E538488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538488);
  }

  return result;
}

unint64_t sub_24125EB9C()
{
  result = qword_27E538490;
  if (!qword_27E538490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538490);
  }

  return result;
}

unint64_t sub_24125EBF4()
{
  result = qword_27E538498;
  if (!qword_27E538498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538498);
  }

  return result;
}

uint64_t sub_24125EC48(uint64_t a1, void (*a2)(__int128 *), void *a3)
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v73 = *(Information - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](Information);
  v74 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64[-v9];
  sub_2413513FC();
  sub_241353C8C();

  v11 = sub_24135486C();

  if (v11)
  {
    if (v11 != 1)
    {
      sub_241255C30();
      v42 = swift_allocError();
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *v43 = 1;
      *(v43 + 24) = 2;
      *&v82[0] = v42;
      sub_24127BE04(v82);
      v79 = v82[4];
      v80 = v82[5];
      v81[0] = v83[0];
      *(v81 + 9) = *(v83 + 9);
      v75 = v82[0];
      v76 = v82[1];
      v77 = v82[2];
      v78 = v82[3];
      a2(&v75);
      v84[4] = v79;
      v84[5] = v80;
      v85[0] = v81[0];
      *(v85 + 9) = *(v81 + 9);
      v84[0] = v75;
      v84[1] = v76;
      v84[2] = v77;
      v84[3] = v78;
      return sub_241246278(v84, &qword_27E538348);
    }

    v65 = 1;
  }

  else
  {
    v65 = 0;
  }

  v69 = a1;
  v12 = sub_24135142C();
  v14 = v13;
  v15 = swift_allocObject();
  v72 = v12;
  v15[2] = v12;
  v15[3] = v14;
  v68 = a2;
  v15[4] = a2;
  v15[5] = a3;
  v70 = v15;
  v16 = qword_27E537D08;
  v17 = v14;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v71 = a3;
  v18 = qword_27E53A740;
  v19 = sub_241353EEC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v66 = v20 + 56;
  v67 = v21;
  v21(v10, 1, 1, v19);
  v22 = qword_27E537D00;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27E53A738;
  v24 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  *(v25 + 32) = v18;
  *(v25 + 40) = 9;
  *(v25 + 48) = v72;
  *(v25 + 56) = v17;
  v26 = v17;

  sub_241327238(0, 0, v10, &unk_241366D48, v25);

  v27 = v69;
  if ((*(v69 + *(Information + 48)) & 1) != 0 || (v28 = [objc_opt_self() useEntityLoadFor3DLoading], v28))
  {
    v29 = v71;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v30 = sub_241352FFC();
    __swift_project_value_buffer(v30, qword_27E5384A0);
    v31 = sub_241352FDC();
    v32 = sub_2413540DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_241215000, v31, v32, "Override using Entity.load", v33, 2u);
      MEMORY[0x245CE4870](v33, -1, -1);
    }

    v67(v10, 1, 1, v19);
    v34 = v27;
    v35 = v74;
    sub_24127BF00(v34, v74);
    sub_241353ECC();

    v36 = sub_241353EBC();
    v37 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    *(v38 + 16) = v36;
    *(v38 + 24) = v39;
    sub_241244A20(v35, v38 + v37);
    v40 = (v38 + ((v7 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v40 = v68;
    v40[1] = v29;
    sub_241241C74(0, 0, v10, &unk_241366D50, v38);

    swift_bridgeObjectRelease_n();
  }

  else if (v65)
  {
    v45 = v70;
    v44 = v71;
    if (*(v27 + *(Information + 44)))
    {
      MEMORY[0x28223BE20](v28);
      *&v64[-32] = v27;
      *&v64[-24] = sub_2412807A0;
      *&v64[-16] = v45;
      v46 = [objc_opt_self() currentThread];
      v47 = [v46 isMainThread];

      if (v47)
      {

        sub_241262CC8(v27, v72, v26, v68, v44);
      }

      else
      {
        sub_241246158(0, &qword_27E538920);
        v63 = sub_24135416C();
        sub_24135417C();
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v55 = sub_241352FFC();
      __swift_project_value_buffer(v55, qword_27E5384A0);
      v56 = sub_241352FDC();
      v57 = sub_2413540DC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = [objc_opt_self() currentThread];
        *(v58 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&dword_241215000, v56, v57, "Using RIO/CDM loading, Thread: %@", v58, 0xCu);
        sub_241246278(v59, &unk_27E539B90);
        MEMORY[0x245CE4870](v59, -1, -1);
        MEMORY[0x245CE4870](v58, -1, -1);
      }

      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      LOBYTE(v84[0]) = 0;

      v62 = sub_241271608(v27, v84, v61, sub_2412807A0, v45);

      swift_bridgeObjectRelease_n();

      swift_beginAccess();
      *(v61 + 16) = v62;
    }
  }

  else
  {
    v48 = v71;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v49 = sub_241352FFC();
    __swift_project_value_buffer(v49, qword_27E5384A0);
    v50 = sub_241352FDC();
    v51 = sub_2413540DC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = [objc_opt_self() currentThread];
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&dword_241215000, v50, v51, "Importing Reality File, Thread: %@", v52, 0xCu);
      sub_241246278(v53, &unk_27E539B90);
      MEMORY[0x245CE4870](v53, -1, -1);
      MEMORY[0x245CE4870](v52, -1, -1);
    }

    sub_24126F3F8(v27, v72, v26, v68, v48);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_24125F684(uint64_t a1)
{
  v30 = sub_2413522BC();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v24 = v1;
    v34 = MEMORY[0x277D84F90];
    sub_2412DE234(0, v5, 0);
    v32 = v34;
    v7 = a1 + 64;
    result = sub_24135445C();
    v8 = result;
    v9 = 0;
    v27 = a1 + 64;
    v28 = (v3 + 8);
    v25 = a1 + 72;
    v26 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v31 = *(a1 + 36);

      v12 = v29;
      sub_2413521AC();
      sub_2413516FC();
      (*v28)(v12, v30);

      v13 = v32;
      v14 = v33;
      v34 = v32;
      v16 = *(v32 + 16);
      v15 = *(v32 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2412DE234((v15 > 1), v16 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v16 + 1;
      *(v13 + 8 * v16 + 32) = v14;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v27;
      v17 = *(v27 + 8 * v11);
      if ((v17 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v32 = v13;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v8 & 0x3F));
      if (v18)
      {
        v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v25 + 8 * v11);
        while (v20 < (v10 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_24121C288(v8, v31, 0);
            v10 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_24121C288(v8, v31, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v26)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_24125F980(void (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v24 = sub_24135152C();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    v10 = a3;
    v28 = MEMORY[0x277D84F90];
    a3 = &v28;
    sub_2412DE254(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v28;
    v13 = v10;
    v22 = v10;
    v23 = v10 & 0xC000000000000001;
    v19 = v10 & 0xFFFFFFFFFFFFFF8;
    v20 = v6 + 32;
    v21 = i;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23)
      {
        v15 = MEMORY[0x245CE29C0](v11, v13);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v13 + 8 * v11 + 32);
      }

      i = v15;
      v27 = v15;
      a3 = v26;
      v25(&v27);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v28 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        a3 = &v28;
        sub_2412DE254(v16 > 1, v17 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v17 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v24);
      ++v11;
      v13 = v22;
      if (v14 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_24125FBC8(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2413544EC();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v24 = MEMORY[0x277D84F90];
    sub_24135466C();
    result = sub_2413546DC();
    v21 = result;
    v22 = v4;
    v23 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v24 = MEMORY[0x277D84F90];
  sub_24135466C();
  result = sub_24135445C();
  v5 = *(v1 + 36);
  v21 = result;
  v22 = v5;
  v23 = 0;
LABEL_7:
  v6 = 0;
  v18 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v21;
    v14 = v22;
    v15 = v23;
    sub_24126E3F8(v20, v21, v22, v23, v1);
    v16 = v1;
    sub_24126EF10();

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    result = sub_24135465C();
    if (v19)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_24135470C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538548);
      v17 = sub_241353B7C();
      sub_2413547CC();
      result = v17(v20, 0);
    }

    else
    {
      v7 = sub_24126E2A0(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = sub_24121C288(v13, v14, v15);
      v21 = v7;
      v22 = v9;
      v23 = v11 & 1;
      v1 = v16;
      v2 = v18;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_24121C288(v21, v22, v23);
      return v24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_24125FE48(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538560);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v38 = sub_241351D5C();
  v6 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v30 - v9;
  v35 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = sub_2413546EC() | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v11 = ~v14;
    v10 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(a1 + 64);
    v13 = a1;
  }

  v18 = 0;
  v34 = v11;
  v37 = (v6 + 48);
  v30 = v6;
  v31 = (v6 + 32);
  v36 = MEMORY[0x277D84F90];
  while ((v13 & 0x8000000000000000) != 0)
  {
    if (!sub_24135479C() || (v23 = v22, swift_unknownObjectRelease(), v39 = v23, sub_24135255C(), swift_dynamicCast(), !v40))
    {
LABEL_24:
      sub_24121C274();
      return v36;
    }

LABEL_17:
    sub_2413524AC();

    if ((*v37)(v5, 1, v38) == 1)
    {
      result = sub_241246278(v5, &qword_27E538560);
    }

    else
    {
      v24 = *v31;
      v25 = v38;
      (*v31)(v32, v5, v38);
      v24(v33, v32, v25);
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_2412A1A00(0, v36[2] + 1, 1, v36);
      }

      v28 = v36[2];
      v27 = v36[3];
      if (v28 >= v27 >> 1)
      {
        v36 = sub_2412A1A00(v27 > 1, v28 + 1, 1, v36);
      }

      v29 = v36;
      v36[2] = v28 + 1;
      result = (v26)(v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, v33, v38);
    }
  }

  v19 = v18;
  v20 = v12;
  if (v12)
  {
LABEL_13:
    v12 = (v20 - 1) & v20;
    v21 = *(*(v13 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v20 = *(v10 + 8 * v18);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_241260218(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v34 - v3;
  v41 = sub_241351DEC();
  v36 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v39 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = v34 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = sub_2413546EC() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v8 = ~v11;
    v7 = a1 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 64);
    v10 = a1;
  }

  v15 = 0;
  v34[1] = v8;
  v16 = (v8 + 64) >> 6;
  v37 = (v36 + 32);
  v38 = (v36 + 48);
  v42 = MEMORY[0x277D84F90];
  while ((v10 & 0x8000000000000000) != 0)
  {
    v22 = sub_2413547AC();
    if (!v22 || (v44 = v22, sub_241352C5C(), swift_dynamicCast(), v21 = v45, v19 = v15, v20 = v9, !v45))
    {
LABEL_26:
      sub_24121C274();
      return v42;
    }

LABEL_19:
    v45 = v21;
    v23 = v40;
    v24 = v43;
    sub_24126C678(&v45, v40);
    v43 = v24;
    if (v24)
    {

      sub_24121C274();

      return v42;
    }

    v25 = v41;
    v26 = (*v38)(v23, 1, v41);
    v27 = v23;
    if (v26 == 1)
    {
      result = sub_241246278(v23, &qword_27E538940);
    }

    else
    {
      v28 = *v37;
      v29 = v35;
      (*v37)(v35, v27, v25);
      v28(v39, v29, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2412A1780(0, v42[2] + 1, 1, v42);
      }

      v31 = v42[2];
      v30 = v42[3];
      if (v31 >= v30 >> 1)
      {
        v42 = sub_2412A1780(v30 > 1, v31 + 1, 1, v42);
      }

      v32 = v41;
      v33 = v42;
      v42[2] = v31 + 1;
      result = (v28)(v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v39, v32);
    }

    v15 = v19;
    v9 = v20;
  }

  v17 = v15;
  v18 = v9;
  v19 = v15;
  if (v9)
  {
LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v10 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_26;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnchoringComponent.Target.arql_description.getter()
{
  v1 = v0;
  v2 = sub_241351DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDAD70])
  {
    return 0x646C726F77;
  }

  if (v6 == *MEMORY[0x277CDAD60])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = 0x28206567616D69;
    v13 = 0xE700000000000000;
LABEL_7:
    v14[0] = v12;
    v14[1] = v13;
    MEMORY[0x245CE20D0](v8, v9);

    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    MEMORY[0x245CE20D0](v10, v11);

    MEMORY[0x245CE20D0](41, 0xE100000000000000);
    return v14[0];
  }

  if (v6 == *MEMORY[0x277CDAD88])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = 0x28207463656A626FLL;
    v13 = 0xE800000000000000;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x277CDAD80])
  {
    return 0x6172656D6163;
  }

  if (v6 == *MEMORY[0x277CDAD58])
  {
    return 1701011814;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t AssetLoader.SupportedFileExtension.rawValue.getter()
{
  if (*v0)
  {
    return 2053403509;
  }

  else
  {
    return 0x7974696C616572;
  }
}

uint64_t sub_2412608C0()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E5384A0);
  __swift_project_value_buffer(v0, qword_27E5384A0);
  return sub_241352FEC();
}

uint64_t sub_241260940@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X8>)
{
  v6 = sub_2413539FC();
  v93 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v88 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v69 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v79 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v86 = &v69 - v24;
  v85 = sub_241353A1C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v69 - v28;
  if (qword_27E537D08 != -1)
  {
LABEL_21:
    swift_once();
  }

  v78 = a3;
  v80 = v17;
  v82 = v14;
  v84 = v11;
  v30 = qword_27E53A740;
  v31 = sub_241353EEC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v73 = v31;
  v72 = v33;
  v71 = v32 + 56;
  (v33)(v29, 1, 1);
  v34 = qword_27E537D00;

  v35 = v34 == -1;
  v36 = v29;
  if (!v35)
  {
    swift_once();
  }

  v29 = qword_27E53A738;
  v37 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v17 = swift_allocObject();
  *(v17 + 2) = v29;
  *(v17 + 3) = v37;
  v69 = v37;
  v74 = v30;
  *(v17 + 4) = v30;
  v17[40] = 2;
  v76 = a1;
  v77 = a2;
  *(v17 + 6) = a1;
  *(v17 + 7) = a2;
  v70 = v29;
  swift_retain_n();
  v75 = v36;
  sub_241327238(0, 0, v36, &unk_24136ADF0, v17);

  sub_241353A5C();
  v81 = v26;
  v14 = sub_241353A0C();
  v38 = v86;
  sub_2413539DC();
  v11 = v93 + 16;
  v91 = *(v93 + 2);
  v91(v95, v38, v6);
  v39 = v14 + 64;
  v40 = 1 << v14[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  a2 = v41 & *(v14 + 8);
  a1 = (v40 + 63) >> 6;
  v94 = (v11 - 8);
  v92 = v11;
  v89 = (v11 + 16);
  v90 = v14;

  a3 = 0;
  if (a2)
  {
    while (1)
    {
      v42 = a3;
LABEL_12:
      v43 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v29 = v93;
      v44 = v87;
      v91(v87, (*(v90 + 7) + *(v93 + 9) * (v43 | (v42 << 6))), v6);
      v11 = v88;
      v14 = v95;
      sub_2413539BC();
      v17 = *(v29 + 1);
      v45 = v44;
      v26 = v94;
      (v17)(v45, v6);
      (v17)(v14, v6);
      (*(v29 + 4))(v14, v11, v6);
      if (!a2)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v42 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v42 >= a1)
    {
      break;
    }

    a2 = *&v39[8 * v42];
    ++a3;
    if (a2)
    {
      a3 = v42;
      goto LABEL_12;
    }
  }

  v46 = *v94;
  (*v94)(v86, v6);

  v47 = v78;
  (*v89)(v78, v95, v6);

  v48 = v75;
  v72(v75, 1, 1, v73);
  v49 = swift_allocObject();
  v50 = v69;
  *(v49 + 16) = v70;
  *(v49 + 24) = v50;
  *(v49 + 32) = v74;
  *(v49 + 40) = 2;
  v51 = v77;
  *(v49 + 48) = v76;
  *(v49 + 56) = v51;

  sub_241327238(0, 0, v48, &unk_241366C00, v49);

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v52 = sub_241352FFC();
  __swift_project_value_buffer(v52, qword_27E5384A0);
  v53 = v79;
  v54 = v91;
  v91(v79, v47, v6);
  v55 = v80;
  v54(v80, v47, v6);
  v56 = v82;
  v54(v82, v47, v6);
  v57 = v84;
  v54(v84, v47, v6);
  v58 = sub_241352FDC();
  v59 = sub_2413540DC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = v53;
    v61 = swift_slowAlloc();
    *v61 = 134218752;
    v62 = sub_2413539EC();
    v46(v60, v6);
    *(v61 + 4) = v62;
    *(v61 + 12) = 2048;
    v63 = sub_2413539AC();
    v46(v55, v6);
    *(v61 + 14) = v63;
    *(v61 + 22) = 2048;
    v64 = sub_24135398C();
    v46(v56, v6);
    *(v61 + 24) = v64;
    *(v61 + 32) = 2048;
    v65 = sub_24135399C();
    v46(v57, v6);
    *(v61 + 34) = v65;
    _os_log_impl(&dword_241215000, v58, v59, "[AssetLoader] Expecting %ld meshes, %ld triangles, %ld points with %ld attributes", v61, 0x2Au);
    MEMORY[0x245CE4870](v61, -1, -1);
  }

  else
  {
    v46(v57, v6);
    v46(v56, v6);
    v46(v55, v6);
    v46(v53, v6);
  }

  v66 = v85;
  v67 = v83;

  return (*(v67 + 8))(v81, v66);
}

AssetViewer::AssetLoader::SupportedFileExtension_optional __swiftcall AssetLoader.SupportedFileExtension.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24135486C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2412612BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 2053403509;
  }

  else
  {
    v3 = 0x7974696C616572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 2053403509;
  }

  else
  {
    v5 = 0x7974696C616572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24135497C();
  }

  return v8 & 1;
}

uint64_t sub_24126135C()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_2412613D8()
{
  sub_241353CCC();
}

uint64_t sub_241261440()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_2412614B8@<X0>(char *a1@<X8>)
{
  v2 = sub_24135486C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_241261518(uint64_t *a1@<X8>)
{
  v2 = 2053403509;
  if (!*v1)
  {
    v2 = 0x7974696C616572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_241261550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    v4 = sub_241353BDC();
    v5 = objc_opt_self();
    v6 = [v5 bundleWithIdentifier_];

    v7 = v6;
    if (!v6)
    {
      v7 = [v5 mainBundle];
    }

LABEL_5:
    v8 = v6;
    goto LABEL_18;
  }

  if (!(a3 | a2 | a1))
  {
LABEL_12:
    v12 = sub_241353BDC();
    v13 = objc_opt_self();
    v6 = [v13 bundleWithIdentifier_];

    v7 = v6;
    if (!v6)
    {
      v7 = [v13 mainBundle];
    }

    goto LABEL_5;
  }

  if (a1 != 1 || a3 | a2)
  {
    v14 = sub_241353BDC();
    v15 = objc_opt_self();
    v11 = [v15 bundleWithIdentifier_];

    v7 = v11;
    if (!v11)
    {
      v7 = [v15 mainBundle];
    }
  }

  else
  {
    v9 = sub_241353BDC();
    v10 = objc_opt_self();
    v11 = [v10 bundleWithIdentifier_];

    v7 = v11;
    if (!v11)
    {
      v7 = [v10 mainBundle];
    }
  }

  v8 = v11;
LABEL_18:
  sub_24135131C();
  v16 = sub_241353C3C();

  return v16;
}

uint64_t AssetLoader.SceneInformation.entities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AssetLoader.SceneInformation.anchorTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AssetLoader.SceneInformation.gravity.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t AssetLoader.SceneInformation.urls.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t AssetLoader.SceneInformation.wrapperEntityByOriginalChangeSceneRootEntity.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

AssetViewer::AssetLoader::FileMetadata::FileType_optional __swiftcall AssetLoader.FileMetadata.FileType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24135486C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetLoader.FileMetadata.FileType.rawValue.getter()
{
  v1 = 0x64657473656ELL;
  if (*v0 != 1)
  {
    v1 = 0x7974696C616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2053403509;
  }
}

uint64_t sub_241261BC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64657473656ELL;
  if (v2 != 1)
  {
    v4 = 0x7974696C616572;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2053403509;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64657473656ELL;
  if (*a2 != 1)
  {
    v8 = 0x7974696C616572;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2053403509;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24135497C();
  }

  return v11 & 1;
}