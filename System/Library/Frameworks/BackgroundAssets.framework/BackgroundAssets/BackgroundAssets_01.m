uint64_t sub_236E4CC00(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v32 = sub_236E81CF4();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  v12 = __swift_project_value_buffer(v11, qword_27DE87DC8);
  v13 = sub_236E820E4();

  v31[1] = v12;
  v14 = sub_236E81D84();

  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31[0] = v5;
    v17 = v16;
    v34 = v16;
    *v15 = 136315138;
    v18 = v33;
    *(v15 + 4) = sub_236E381CC(v33, a2, &v34);
    _os_log_impl(&dword_236E28000, v14, v13, "Remove asset pack with ID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v19 = v17;
    v4 = v3;
    v5 = v31[0];
    MEMORY[0x2383C0E50](v19, -1, -1);
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  else
  {

    v18 = v33;
  }

  v20 = *(v5 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  sub_236E4EDE4(v18, a2);
  sub_236E81B54();
  if (!v4)
  {
    return (*(v7 + 8))(v10, v32);
  }

  v21 = v18;
  (*(v7 + 8))(v10, v32);
  v22 = sub_236E820F4();

  v23 = v4;
  v24 = sub_236E81D84();

  if (os_log_type_enabled(v24, v22))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v25 = 136446466;
    *(v25 + 4) = sub_236E381CC(v21, a2, &v34);
    *(v25 + 12) = 2114;
    v28 = v4;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v29;
    *v26 = v29;
    _os_log_impl(&dword_236E28000, v24, v22, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v25, 0x16u);
    sub_236E38DBC(v26, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2383C0E50](v27, -1, -1);
    MEMORY[0x2383C0E50](v25, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_236E4CFAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_236E81CF4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4D070, v2, 0);
}

uint64_t sub_236E4D070()
{
  v16 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_236E81DA4();
  v0[8] = __swift_project_value_buffer(v2, qword_27DE87DC8);
  v3 = sub_236E820E4();

  v4 = sub_236E81D84();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_236E381CC(v6, v5, &v15);
    _os_log_impl(&dword_236E28000, v4, v3, "Remove asset pack with ID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v9 = v0[7];
  v10 = *(v0[4] + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  sub_236E4EDE4(v0[2], v0[3]);
  v11 = *(MEMORY[0x277D25C08] + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_236E4D258;
  v13 = v0[7];

  return MEMORY[0x282184AC0](v13);
}

uint64_t sub_236E4D258()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[6];
  if (v0)
  {
    v6 = v2[4];
    (*(v5 + 8))(v2[7], v2[5]);

    return MEMORY[0x2822009F8](sub_236E4D40C, v6, 0);
  }

  else
  {
    v7 = v2[7];
    (*(v5 + 8))();

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_236E4D40C()
{
  v21 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[3];
  v4 = sub_236E820F4();

  v5 = v1;
  v6 = sub_236E81D84();

  if (os_log_type_enabled(v6, v4))
  {
    v7 = v0[10];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_236E381CC(v9, v8, &v20);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_236E28000, v6, v4, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v10, 0x16u);
    sub_236E38DBC(v11, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v15 = v0[10];
  v16 = v0[7];
  swift_willThrow();

  v17 = v0[1];
  v18 = v0[10];

  return v17();
}

void sub_236E4D5DC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88018, &qword_236E85128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v101 - v6;
  v7 = sub_236E81E14();
  v8 = *(v7 - 8);
  v117 = v7;
  v118 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v120 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236E81A64();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v11);
  v111 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_236E81CF4();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v14);
  v116 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_236E81E34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AssetPack(0);
  v22 = *(*(v106 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v106);
  v102 = (&v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v103 = &v101 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v114 = (&v101 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v110 = (&v101 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = &v101 - v31;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v33 = sub_236E81DA4();
  v34 = __swift_project_value_buffer(v33, qword_27DE87DC8);
  v35 = sub_236E820E4();
  sub_236E57598(a1, v32, type metadata accessor for AssetPack);
  (*(v18 + 16))(v21, a2, v17);
  v121 = v34;
  v36 = sub_236E81D84();
  v37 = os_log_type_enabled(v36, v35);
  v104 = a2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v105 = a1;
    v39 = v38;
    v101 = swift_slowAlloc();
    v122 = v101;
    *v39 = 136446466;
    v40 = AssetPack.description.getter();
    v42 = v41;
    sub_236E56DCC(v32, type metadata accessor for AssetPack);
    v43 = sub_236E381CC(v40, v42, &v122);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
    v44 = sub_236E82484();
    v46 = v45;
    (*(v18 + 8))(v21, v17);
    v47 = sub_236E381CC(v44, v46, &v122);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_236E28000, v36, v35, "Process: %{public}s at: %{public}s", v39, 0x16u);
    v48 = v101;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v48, -1, -1);
    v49 = v39;
    a1 = v105;
    MEMORY[0x2383C0E50](v49, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    sub_236E56DCC(v32, type metadata accessor for AssetPack);
  }

  v50 = v110;
  sub_236E57598(a1, v110, type metadata accessor for AssetPack);
  v51 = sub_236E81D84();
  v52 = sub_236E82114();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v116;
  v54 = v117;
  if (v53)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v122 = v57;
    *v56 = 136446210;
    v58 = v50;
    v59 = *v50;
    v60 = *(v58 + 8);

    sub_236E56DCC(v58, type metadata accessor for AssetPack);
    v61 = sub_236E381CC(v59, v60, &v122);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_236E28000, v51, v52, "Processing the asset pack with the ID “%{public}s”…", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x2383C0E50](v57, -1, -1);
    MEMORY[0x2383C0E50](v56, -1, -1);
  }

  else
  {

    sub_236E56DCC(v50, type metadata accessor for AssetPack);
  }

  v62 = v120;
  v64 = v114;
  v63 = v115;
  sub_236E4EDE4(*a1, a1[1]);
  v65 = v111;
  sub_236E81A54();
  v66 = sub_236E81A44();
  v68 = v67;
  (*(v112 + 8))(v65, v113);

  sub_236E81E24();
  v69 = v118;
  if ((*(v118 + 48))(v63, 1, v54) == 1)
  {
    sub_236E38DBC(v63, &qword_27DE88018, &qword_236E85128);
    type metadata accessor for AssetPackManagerError(0);
    sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);
    swift_allocError();
    *v70 = v66;
    v70[1] = v68;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_23:
    (*(v108 + 8))(v55, v109);
    return;
  }

  (*(v69 + 32))(v62, v63, v54);
  sub_236E57598(a1, v64, type metadata accessor for AssetPack);
  v71 = sub_236E81D84();
  v72 = sub_236E82114();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v122 = v74;
    *v73 = 136446210;
    v75 = v64;
    v76 = *v64;
    v77 = v64[1];

    sub_236E56DCC(v75, type metadata accessor for AssetPack);
    v78 = sub_236E381CC(v76, v77, &v122);

    *(v73 + 4) = v78;
    v62 = v120;
    _os_log_impl(&dword_236E28000, v71, v72, "Creating a record of the asset pack with the ID “%{public}s”…", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    v79 = v74;
    v69 = v118;
    MEMORY[0x2383C0E50](v79, -1, -1);
    MEMORY[0x2383C0E50](v73, -1, -1);
  }

  else
  {

    sub_236E56DCC(v64, type metadata accessor for AssetPack);
  }

  if ((a1[3] & 0x8000000000000000) == 0)
  {
    v80 = *(v119 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
    v81 = v107;
    v82 = *(v106 + 48);
    sub_236E81B94();
    if (v81)
    {
      (*(v69 + 8))(v62, v54);
    }

    else
    {
      v83 = v103;
      sub_236E57598(a1, v103, type metadata accessor for AssetPack);
      v84 = sub_236E81D84();
      v85 = sub_236E82114();
      v86 = os_log_type_enabled(v84, v85);
      v105 = a1;
      if (v86)
      {
        v87 = v83;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v122 = v89;
        *v88 = 136446210;
        v90 = *v87;
        v91 = v87[1];

        sub_236E56DCC(v87, type metadata accessor for AssetPack);
        v92 = sub_236E381CC(v90, v91, &v122);
        v55 = v116;

        *(v88 + 4) = v92;
        v54 = v117;
        _os_log_impl(&dword_236E28000, v84, v85, "Moving the asset pack with the ID “%{public}s” into the system container…", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x2383C0E50](v89, -1, -1);
        MEMORY[0x2383C0E50](v88, -1, -1);
      }

      else
      {

        sub_236E56DCC(v83, type metadata accessor for AssetPack);
      }

      sub_236E81CE4();
      sub_236E81CB4();
      sub_236E81B14();

      v93 = v102;
      sub_236E57598(v105, v102, type metadata accessor for AssetPack);
      v94 = sub_236E81D84();
      v95 = sub_236E82114();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v122 = v97;
        *v96 = 136315138;
        v98 = *v93;
        v99 = v93[1];

        sub_236E56DCC(v93, type metadata accessor for AssetPack);
        v100 = sub_236E381CC(v98, v99, &v122);

        *(v96 + 4) = v100;
        _os_log_impl(&dword_236E28000, v94, v95, "The asset pack with the ID “%s” was successfully processed.", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x2383C0E50](v97, -1, -1);
        MEMORY[0x2383C0E50](v96, -1, -1);

        (*(v118 + 8))(v120, v117);
      }

      else
      {

        sub_236E56DCC(v93, type metadata accessor for AssetPack);
        (*(v118 + 8))(v120, v54);
      }
    }

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_236E4E2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_236E81CF4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4E3A8, 0, 0);
}

uint64_t sub_236E4E3A8()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_236E4EDE4(v0[2], v0[3]);
  v3 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v4 = *(MEMORY[0x277D25C30] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_236E4E460;
  v6 = v0[8];
  v7 = v0[4];

  return MEMORY[0x282184AF8](v6, v7);
}

uint64_t sub_236E4E460()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_236E4E5EC;
  }

  else
  {
    v3 = sub_236E4E574;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E4E574()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[8];

  v2 = v0[1];

  return v2();
}

uint64_t sub_236E4E5EC()
{
  v26 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87DC8);
  v4 = sub_236E820F4();

  v5 = v1;
  v6 = sub_236E81D84();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v7)
  {
    v12 = v0[4];
    v22 = v0[3];
    v24 = v0[8];
    v13 = v0[2];
    v23 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 134218498;
    *(v14 + 4) = v12;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_236E381CC(v13, v22, &v25);
    *(v14 + 22) = 2114;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v18;
    *v15 = v18;
    _os_log_impl(&dword_236E28000, v6, v4, "The fact that version %lu of the asset pack with the ID “%{public}s” finished being downloaded couldn’t be reported: %{public}@", v14, 0x20u);
    sub_236E38DBC(v15, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2383C0E50](v16, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);

    (*(v10 + 8))(v24, v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_236E4E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_236E81CF4();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4E914, 0, 0);
}

uint64_t sub_236E4E914()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  sub_236E4EDE4(v0[6], v0[7]);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v8 = *(MEMORY[0x277D25C28] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_236E4E9F8;
  v10 = v0[13];
  v11 = v0[8];

  return MEMORY[0x282184AF0](v10, v11, v4, v5, v6);
}

uint64_t sub_236E4E9F8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_236E4EB84;
  }

  else
  {
    v3 = sub_236E4EB0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E4EB0C()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

uint64_t sub_236E4EB84()
{
  v26 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[7];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87DC8);
  v4 = sub_236E820F4();

  v5 = v1;
  v6 = sub_236E81D84();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v7)
  {
    v12 = v0[8];
    v22 = v0[7];
    v24 = v0[13];
    v13 = v0[6];
    v23 = v0[11];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 134218498;
    *(v14 + 4) = v12;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_236E381CC(v13, v22, &v25);
    *(v14 + 22) = 2114;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v18;
    *v15 = v18;
    _os_log_impl(&dword_236E28000, v6, v4, "The fact that version %lu of the asset pack with the ID “%{public}s” finished being downloaded couldn’t be reported: %{public}@", v14, 0x20u);
    sub_236E38DBC(v15, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2383C0E50](v16, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);

    (*(v10 + 8))(v24, v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_236E4EDE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE87DC8);
  v7 = sub_236E820E4();

  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_236E381CC(a1, a2, &v28);
    _os_log_impl(&dword_236E28000, v8, v7, "Global ID for asset pack ID: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
    v13 = v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID;
    v14 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
    v15 = *(v13 + 8);

    v16 = v14;
    v17 = v15;
    v18 = v12;
    v19 = v11;
    v20 = a1;
    v21 = a2;

    return MEMORY[0x282184B70](v16, v17, v18, v19, v20, v21);
  }

  if (!os_variant_allows_internal_security_policies())
  {
    v25 = sub_236E82104();
    v26 = sub_236E81D84();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_236E28000, v26, v25, "The process lacks a team ID.", v27, 2u);
      MEMORY[0x2383C0E50](v27, -1, -1);
    }

    v16 = sub_236E82344();
    __break(1u);
    return MEMORY[0x282184B70](v16, v17, v18, v19, v20, v21);
  }

  v22 = *(v2 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v23 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);

  return sub_236E81CD4();
}

uint64_t AssetPackManager.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_statusUpdates);

  v2 = *(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);

  sub_236E38DBC(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, &unk_27DE87EC8, &qword_236E84D48);
  v4 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath;
  v5 = sub_236E81E34();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache);

  v7 = *(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);

  sub_236E57968(v0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference + 8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetPackManager.__deallocating_deinit()
{
  AssetPackManager.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_236E4F218()
{
  v1 = sub_236E81E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetPack(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssetPackManagerError(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_236E57598(v0, v13, type metadata accessor for AssetPackManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_236E57708(v13, v9, type metadata accessor for AssetPack);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_236E82264();

      v25 = 0x1000000000000012;
      v26 = 0x8000000236E8A550;
      v17 = AssetPack.description.getter();
      MEMORY[0x2383BFD30](v17);

      MEMORY[0x2383BFD30](0x1000000000000013, 0x8000000236E8A570);
      v16 = v25;
      sub_236E56DCC(v9, type metadata accessor for AssetPack);
      return v16;
    }

    v22 = *v13;
    v23 = v13[1];
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_236E82264();

    v25 = 0x100000000000001BLL;
    v26 = 0x8000000236E8A530;
    MEMORY[0x2383BFD30](v22, v23);

    v20 = 0x69207369209D80E2;
    v21 = 0xAF2E64696C61766ELL;
LABEL_10:
    MEMORY[0x2383BFD30](v20, v21);
    return v25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v18 = *v13;
    v19 = v13[1];
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_236E82264();
    MEMORY[0x2383BFD30](0x100000000000002CLL, 0x8000000236E8A4B0);
    MEMORY[0x2383BFD30](v18, v19);

    v20 = 0x100000000000001DLL;
    v21 = 0x8000000236E8A4E0;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0xD00000000000002CLL;
  }

  (*(v2 + 32))(v5, v13, v1);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_236E82264();
  MEMORY[0x2383BFD30](0x1000000000000011, 0x8000000236E8A460);
  sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0]);
  v15 = sub_236E82484();
  MEMORY[0x2383BFD30](v15);

  MEMORY[0x2383BFD30](0x1000000000000027, 0x8000000236E8A480);
  v16 = v25;
  (*(v2 + 8))(v5, v1);
  return v16;
}

uint64_t sub_236E4F658(uint64_t a1)
{
  v2 = sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError);

  return MEMORY[0x28211F4C8](a1, v2);
}

uint64_t sub_236E4F978()
{
  v1[3] = v0;
  v2 = type metadata accessor for ManagedBackgroundAssetsError();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4FA18, 0, 0);
}

uint64_t sub_236E4FA18()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___BAAssetPackManager_manager);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_236E4FAB4;

  return sub_236E3AFE0();
}

uint64_t sub_236E4FAB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_236E4FCA4;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_236E4FBDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_236E4FBDC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_236E70B04(sub_236E4FDD0, 0, v0[9]);

  v5 = sub_236E56E2C(v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_236E4FCA4()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);

    sub_236E57708(v5, v6, type metadata accessor for ManagedBackgroundAssetsError);
    sub_236E5AEEC();
    swift_willThrow();
    sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
  }

  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_236E4FDD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_236E57598(a1, &v17 - v9, type metadata accessor for AssetPack);
  v11 = objc_allocWithZone(BAAssetPack);
  sub_236E57598(v10, v8, type metadata accessor for AssetPack);
  v12 = _s16AssetPackWrapperCMa(0);
  v13 = objc_allocWithZone(v12);
  sub_236E57598(v8, v13 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_236E56DCC(v8, type metadata accessor for AssetPack);
  v15 = [v11 init_];

  result = sub_236E56DCC(v10, type metadata accessor for AssetPack);
  *a2 = v15;
  return result;
}

uint64_t sub_236E500C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_236E50170;

  return sub_236E4F978();
}

uint64_t sub_236E50170()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v5)
    {
      v8 = *(v3 + 24);
      v9 = sub_236E81984();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v11 = *(v3 + 24);
      type metadata accessor for BAAssetPack();
      sub_236E57620(&qword_27DE88000, type metadata accessor for BAAssetPack);
      v9 = sub_236E82094();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_236E50388(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for ManagedBackgroundAssetsError();
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E50464, 0, 0);
}

uint64_t sub_236E50464()
{
  v1 = *(v0[7] + OBJC_IVAR___BAAssetPackManager_manager);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_236E5050C;
  v3 = v0[12];
  v4 = v0[5];
  v5 = v0[6];

  return sub_236E3D890(v3, v4, v5);
}

uint64_t sub_236E5050C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_236E50784;
  }

  else
  {
    v3 = sub_236E50620;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E50620()
{
  super_class = v0[5].super_class;
  receiver = v0[6].receiver;
  v4 = v0[4].super_class;
  v3 = v0[5].receiver;
  v5 = objc_allocWithZone(BAAssetPack);
  sub_236E57598(receiver, super_class, type metadata accessor for AssetPack);
  v6 = _s16AssetPackWrapperCMa(0);
  v7 = objc_allocWithZone(v6);
  sub_236E57598(super_class, v7 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
  v0[1].receiver = v7;
  v0[1].super_class = v6;
  v8 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_236E56DCC(super_class, type metadata accessor for AssetPack);
  v9 = [v5 init_];

  sub_236E56DCC(receiver, type metadata accessor for AssetPack);

  v10 = v0->super_class;

  return v10(v9);
}

uint64_t sub_236E50784()
{
  v1 = *(v0 + 112);
  *(v0 + 32) = v1;
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);

    sub_236E57708(v5, v6, type metadata accessor for ManagedBackgroundAssetsError);
    sub_236E5AEEC();
    swift_willThrow();
    sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
  }

  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_236E50A4C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_236E81E94();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_236E50B20;

  return sub_236E50388(v5, v7);
}

uint64_t sub_236E50B20(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  if (v3)
  {
    if (v8)
    {
      v11 = *(v5 + 24);
      v12 = sub_236E81984();

      (v11)[2](v11, 0, v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v8)
  {
    v13 = *(v5 + 24);
    (v13)[2](v13, a1, 0);

    _Block_release(v13);
  }

  else
  {
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_236E50CFC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for ManagedBackgroundAssetsError();
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E50DA0, 0, 0);
}

uint64_t sub_236E50DA0()
{
  v1 = *(v0[6] + OBJC_IVAR___BAAssetPackManager_manager);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_236E50E48;
  v3 = v0[4];
  v4 = v0[5];

  return sub_236E3ECD4((v0 + 2), v3, v4);
}

uint64_t sub_236E50E48()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_236E5103C;
  }

  else
  {
    v3 = sub_236E50F5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E50F5C()
{
  v1 = v0[2];
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v2 = 3;
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = 1;
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v2 = 0;
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v2 = 2;
    if ((v1 & 4) != 0)
    {
LABEL_4:
      v2 |= 4uLL;
    }
  }

LABEL_5:
  if ((v1 & 8) != 0)
  {
    v2 |= 8uLL;
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v2 |= 0x10uLL;
  if ((v1 & 0x20) == 0)
  {
LABEL_8:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_18:
  v2 |= 0x20uLL;
  if ((v1 & 0x40) != 0)
  {
LABEL_9:
    v2 |= 0x40uLL;
  }

LABEL_10:
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_236E5103C()
{
  v1 = *(v0 + 88);
  *(v0 + 24) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);

    sub_236E57708(v5, v6, type metadata accessor for ManagedBackgroundAssetsError);
    sub_236E5AEEC();
    swift_willThrow();
    sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_236E512F0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_236E81E94();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_236E513C4;

  return sub_236E50CFC(v5, v7);
}

uint64_t sub_236E513C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v1)
  {
    if (v7)
    {
      v10 = *(v4 + 24);
      v11 = sub_236E81984();

      (v10)[2](v10, 0, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v12 = *(v4 + 24);
    v12[2](v12, a1, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_236E51590(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ManagedBackgroundAssetsError();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E5165C, 0, 0);
}

uint64_t sub_236E5165C()
{
  v1 = *(v0[4] + OBJC_IVAR___BAAssetPackManager_manager);
  sub_236E57598(*(v0[3] + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, v0[8], type metadata accessor for AssetPack);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_236E51734;
  v3 = v0[8];

  return sub_236E40974(v3);
}

uint64_t sub_236E51734()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {
    sub_236E56DCC(v5, type metadata accessor for AssetPack);

    return MEMORY[0x2822009F8](sub_236E518E0, 0, 0);
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[8];
    sub_236E56DCC(v5, type metadata accessor for AssetPack);

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_236E518E0()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);

    sub_236E57708(v5, v6, type metadata accessor for ManagedBackgroundAssetsError);
    sub_236E5AEEC();
    swift_willThrow();
    sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_236E51BA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_236E51C64;

  return sub_236E51590(v6);
}

uint64_t sub_236E51C64()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v4)
    {
      v8 = *(v2 + 32);
      v9 = sub_236E81984();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v10 = *(v2 + 32);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_236E51E20()
{
  v1[3] = v0;
  v2 = type metadata accessor for ManagedBackgroundAssetsError();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E51EC0, 0, 0);
}

uint64_t sub_236E51EC0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___BAAssetPackManager_manager);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_236E51F5C;

  return sub_236E444A4();
}

uint64_t sub_236E51F5C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 56);
  v7 = *v3;
  v7[8] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_236E4FCA4, 0, 0);
  }

  else
  {
    v9 = v7[5];
    v8 = v7[6];

    v10 = v7[1];

    return v10(a1, a2);
  }
}

uint64_t sub_236E52234(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_236E522DC;

  return sub_236E51E20();
}

uint64_t sub_236E522DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v5)
    {
      v8 = *(v3 + 24);
      v9 = sub_236E81984();

      (v8)[2](v8, 0, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v3 + 24);
    v11 = sub_236E82094();
    v12 = sub_236E82094();
    (v10)[2](v10, v11, v12, 0);
    _Block_release(v10);
  }

  else
  {
  }

  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_236E52500(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v28 = a5;
  v27 = type metadata accessor for ManagedBackgroundAssetsError();
  v10 = *(*(v27 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v27);
  v26 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = sub_236E81E34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v5 + OBJC_IVAR___BAAssetPackManager_manager);

  MEMORY[0x2383BFC50](a1, a2);
  v21 = v29;
  v22 = sub_236E48BF8(v19, a3, a4, v28);
  if (v21)
  {
    (*(v16 + 8))(v19, v15);
    v30 = v21;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
    if (swift_dynamicCast())
    {

      v24 = v26;
      sub_236E57708(v14, v26, type metadata accessor for ManagedBackgroundAssetsError);
      sub_236E5AEEC();
      swift_willThrow();
      sub_236E56DCC(v24, type metadata accessor for ManagedBackgroundAssetsError);
    }
  }

  else
  {
    (*(v16 + 8))(v19, v15);
  }

  return v22;
}

uint64_t sub_236E52898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v22[1] = a5;
  v10 = type metadata accessor for ManagedBackgroundAssetsError();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v22[0] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = sub_236E81E34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + OBJC_IVAR___BAAssetPackManager_manager);

  MEMORY[0x2383BFC50](a1, a2);
  v20 = sub_236E4A408(v18, a3, a4);
  (*(v15 + 8))(v18, v14);
  return v20;
}

void sub_236E52BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ManagedBackgroundAssetsError();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v22[0] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = sub_236E81E34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR___BAAssetPackManager_manager);

  MEMORY[0x2383BFC50](a1, a2);
  v19 = v22[1];
  sub_236E4B3FC(v17, a3);
  if (v19)
  {
    (*(v14 + 8))(v17, v13);
    v23 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
    if (swift_dynamicCast())
    {

      v21 = v22[0];
      sub_236E57708(v12, v22[0], type metadata accessor for ManagedBackgroundAssetsError);
      sub_236E5AEEC();
      swift_willThrow();
      sub_236E56DCC(v21, type metadata accessor for ManagedBackgroundAssetsError);
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_236E52F80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for ManagedBackgroundAssetsError();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E53024, 0, 0);
}

uint64_t sub_236E53024()
{
  v1 = *(v0[5] + OBJC_IVAR___BAAssetPackManager_manager);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_236E530C8;
  v4 = v0[3];
  v3 = v0[4];

  return sub_236E4CFAC(v4, v3);
}

uint64_t sub_236E530C8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236E53210, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_236E53210()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    sub_236E57708(v5, v6, type metadata accessor for ManagedBackgroundAssetsError);
    sub_236E5AEEC();
    swift_willThrow();
    sub_236E56DCC(v6, type metadata accessor for ManagedBackgroundAssetsError);
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_236E534C4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_236E81E94();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_236E53598;

  return sub_236E52F80(v5, v7);
}

uint64_t sub_236E53598()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v5)
    {
      v8 = *(v2 + 24);
      v9 = sub_236E81984();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v2 + 24);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

id BAAssetPackManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_236E53880()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_236E538BC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_236E81DB4();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_236E59300();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_236E53944(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_236E821F4();

    if (v9)
    {

      sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_236E821E4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_236E5442C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_236E54A9C(v22 + 1, &qword_27DE87BB0, &qword_236E85020);
    }

    v20 = v8;
    sub_236E55100(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  v11 = *(v6 + 40);
  v12 = sub_236E82134();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_236E55184(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_236E82144();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_236E53B8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_236E82574();
  sub_236E81F04();
  v9 = sub_236E82594();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_236E824E4() & 1) != 0)
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

    sub_236E55324(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_236E53CDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_236E821F4();

    if (v9)
    {

      type metadata accessor for BAAssetPack();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_236E821E4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_236E5463C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_236E54A9C(v22 + 1, &unk_27DE88008, &unk_236E85028);
    }

    v20 = v8;
    sub_236E55100(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for BAAssetPack();
  v11 = *(v6 + 40);
  v12 = sub_236E82134();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_236E554A4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_236E82144();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_236E53F04(uint64_t a1, void *a2)
{
  v49 = a1;
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v46 - v14);
  MEMORY[0x28223BE20](v13);
  v47 = (&v46 - v16);
  v48 = v2;
  v17 = *v2;
  v18 = *(*v2 + 40);
  sub_236E82574();
  AssetPack.hash(into:)();
  v19 = sub_236E82594();
  v21 = v17 + 56;
  v22 = -1 << *(v17 + 32);
  v23 = v19 & ~v22;
  if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v54 = ~v22;
    v56 = *(v5 + 72);
    *&v20 = 136446466;
    v50 = v20;
    v52 = v17;
    v53 = a2;
    v57 = v9;
    v51 = v17 + 56;
    while (1)
    {
      v24 = *(v17 + 48);
      v55 = v56 * v23;
      sub_236E57598(v24 + v56 * v23, v15, type metadata accessor for AssetPack);
      if (qword_27DE87AE0 != -1)
      {
        swift_once();
      }

      v25 = sub_236E81DA4();
      __swift_project_value_buffer(v25, qword_27DE88220);
      v26 = sub_236E820E4();
      sub_236E57598(v15, v12, type metadata accessor for AssetPack);
      sub_236E57598(a2, v9, type metadata accessor for AssetPack);
      v27 = sub_236E81D84();
      if (os_log_type_enabled(v27, v26))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v58[0] = v29;
        *v28 = v50;
        v30 = AssetPack.description.getter();
        v32 = v31;
        sub_236E56DCC(v12, type metadata accessor for AssetPack);
        v33 = sub_236E381CC(v30, v32, v58);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2082;
        v34 = AssetPack.description.getter();
        v36 = v35;
        sub_236E56DCC(v57, type metadata accessor for AssetPack);
        v37 = sub_236E381CC(v34, v36, v58);
        v17 = v52;

        *(v28 + 14) = v37;
        _os_log_impl(&dword_236E28000, v27, v26, "== LHS: %{public}s RHS: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        v38 = v29;
        v21 = v51;
        MEMORY[0x2383C0E50](v38, -1, -1);
        v39 = v28;
        v9 = v57;
        a2 = v53;
        MEMORY[0x2383C0E50](v39, -1, -1);
      }

      else
      {

        sub_236E56DCC(v9, type metadata accessor for AssetPack);
        sub_236E56DCC(v12, type metadata accessor for AssetPack);
      }

      if (*v15 == *a2 && v15[1] == a2[1])
      {
        break;
      }

      v40 = sub_236E824E4();
      sub_236E56DCC(v15, type metadata accessor for AssetPack);
      if (v40)
      {
        goto LABEL_14;
      }

      v23 = (v23 + 1) & v54;
      if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_236E56DCC(v15, type metadata accessor for AssetPack);
LABEL_14:
    sub_236E56DCC(a2, type metadata accessor for AssetPack);
    sub_236E57598(*(v17 + 48) + v55, v49, type metadata accessor for AssetPack);
    return 0;
  }

  else
  {
LABEL_12:
    v41 = v48;
    v42 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v47;
    sub_236E57598(a2, v47, type metadata accessor for AssetPack);
    v58[0] = *v41;
    sub_236E55634(v44, v23, isUniquelyReferenced_nonNull_native);
    *v41 = v58[0];
    sub_236E57708(a2, v49, type metadata accessor for AssetPack);
    return 1;
  }
}

uint64_t sub_236E5442C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87BB0, &qword_236E85020);
    v2 = sub_236E82234();
    v16 = v2;
    sub_236E821D4();
    if (sub_236E82204())
    {
      sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_236E54A9C(v10 + 1, &qword_27DE87BB0, &qword_236E85020);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_236E82134();
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

      while (sub_236E82204());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_236E5463C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88008, &unk_236E85028);
    v2 = sub_236E82234();
    v16 = v2;
    sub_236E821D4();
    if (sub_236E82204())
    {
      type metadata accessor for BAAssetPack();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_236E54A9C(v10 + 1, &unk_27DE88008, &unk_236E85028);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_236E82134();
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

      while (sub_236E82204());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_236E5483C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88038, &qword_236E85138);
  result = sub_236E82224();
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
      sub_236E82574();
      sub_236E81F04();
      result = sub_236E82594();
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

uint64_t sub_236E54A9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_236E82224();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_236E82134();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_236E54CBC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88028, &qword_236E85130);
  result = sub_236E82224();
  v13 = result;
  if (*(v9 + 16))
  {
    v47 = v2;
    v14 = 0;
    v15 = (v9 + 56);
    v16 = 1 << *(v9 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    *&v12 = 136446210;
    v48 = v12;
    v49 = v8;
    v50 = v5;
    while (v18)
    {
      v27 = __clz(__rbit64(v18));
      v52 = (v18 - 1) & v18;
LABEL_18:
      v30 = *(v9 + 48);
      v51 = *(v5 + 72);
      sub_236E57708(v30 + v51 * (v27 | (v14 << 6)), v8, type metadata accessor for AssetPack);
      v31 = *(v13 + 40);
      sub_236E82574();
      if (qword_27DE87AE0 != -1)
      {
        swift_once();
      }

      v32 = sub_236E81DA4();
      __swift_project_value_buffer(v32, qword_27DE88220);
      v33 = sub_236E820E4();
      v34 = sub_236E81D84();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = v13;
        v37 = v9;
        v38 = swift_slowAlloc();
        v53 = v38;
        *v35 = v48;
        *(v35 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v53);
        _os_log_impl(&dword_236E28000, v34, v33, "Hash into: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v39 = v38;
        v9 = v37;
        v13 = v36;
        v5 = v50;
        MEMORY[0x2383C0E50](v39, -1, -1);
        v40 = v35;
        v8 = v49;
        MEMORY[0x2383C0E50](v40, -1, -1);
      }

      v21 = *v8;
      v22 = v8[1];
      sub_236E81F04();
      result = sub_236E82594();
      v23 = -1 << *(v13 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v20 + 8 * (v24 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v23) >> 6;
        while (++v25 != v42 || (v41 & 1) == 0)
        {
          v43 = v25 == v42;
          if (v25 == v42)
          {
            v25 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v25);
          if (v44 != -1)
          {
            v26 = __clz(__rbit64(~v44)) + (v25 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v20 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_236E57708(v8, *(v13 + 48) + v26 * v51, type metadata accessor for AssetPack);
      ++*(v13 + 16);
      v18 = v52;
    }

    v28 = v14;
    while (1)
    {
      v14 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v29 = v15[v14];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v52 = (v29 - 1) & v29;
        goto LABEL_18;
      }
    }

    v45 = 1 << *(v9 + 32);
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    v2 = v47;
    *(v9 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

unint64_t sub_236E55100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_236E82134();
  v5 = -1 << *(a2 + 32);
  result = sub_236E821C4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_236E55184(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_236E54A9C(v6 + 1, &qword_27DE87BB0, &qword_236E85020);
  }

  else
  {
    if (v7 > v6)
    {
      sub_236E55C84(&qword_27DE87BB0, &qword_236E85020);
      goto LABEL_12;
    }

    sub_236E56208(v6 + 1, &qword_27DE87BB0, &qword_236E85020);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_236E82134();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_236E82144();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_236E824F4();
  __break(1u);
}

uint64_t sub_236E55324(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_236E5483C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_236E55B28();
      goto LABEL_16;
    }

    sub_236E55FD0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_236E82574();
  sub_236E81F04();
  result = sub_236E82594();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_236E824E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_236E824F4();
  __break(1u);
  return result;
}

void sub_236E554A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_236E54A9C(v6 + 1, &unk_27DE88008, &unk_236E85028);
  }

  else
  {
    if (v7 > v6)
    {
      sub_236E55C84(&unk_27DE88008, &unk_236E85028);
      goto LABEL_12;
    }

    sub_236E56208(v6 + 1, &unk_27DE88008, &unk_236E85028);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_236E82134();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for BAAssetPack();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_236E82144();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_236E824F4();
  __break(1u);
}

uint64_t sub_236E55634(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for AssetPack(0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v47 - v16);
  v50 = v3;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  if (v19 > v18 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    v48 = v15;
    v20 = v50;
    sub_236E54CBC(v18 + 1);
  }

  else
  {
    if (v19 > v18)
    {
      sub_236E55DC4();
      goto LABEL_19;
    }

    v48 = v15;
    v20 = v50;
    sub_236E56414(v18 + 1);
  }

  v21 = *v20;
  v22 = *(*v20 + 40);
  sub_236E82574();
  AssetPack.hash(into:)();
  v23 = sub_236E82594();
  v25 = -1 << *(v21 + 32);
  a2 = v23 & ~v25;
  v57 = v21 + 56;
  if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v56 = ~v25;
    v55 = *(v49 + 72);
    *&v24 = 136446466;
    v51 = v24;
    v53 = v17;
    v54 = a1;
    v52 = v21;
    do
    {
      sub_236E57598(*(v21 + 48) + v55 * a2, v17, type metadata accessor for AssetPack);
      if (qword_27DE87AE0 != -1)
      {
        swift_once();
      }

      v26 = sub_236E81DA4();
      __swift_project_value_buffer(v26, qword_27DE88220);
      v27 = sub_236E820E4();
      sub_236E57598(v17, v14, type metadata accessor for AssetPack);
      sub_236E57598(a1, v11, type metadata accessor for AssetPack);
      v28 = sub_236E81D84();
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v58[0] = v30;
        *v29 = v51;
        v31 = AssetPack.description.getter();
        v32 = v11;
        v34 = v33;
        sub_236E56DCC(v14, type metadata accessor for AssetPack);
        v35 = sub_236E381CC(v31, v34, v58);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2082;
        v36 = AssetPack.description.getter();
        v38 = v37;
        v17 = v53;
        sub_236E56DCC(v32, type metadata accessor for AssetPack);
        v39 = sub_236E381CC(v36, v38, v58);
        v11 = v32;
        a1 = v54;

        *(v29 + 14) = v39;
        _os_log_impl(&dword_236E28000, v28, v27, "== LHS: %{public}s RHS: %{public}s", v29, 0x16u);
        swift_arrayDestroy();
        v40 = v30;
        v21 = v52;
        MEMORY[0x2383C0E50](v40, -1, -1);
        MEMORY[0x2383C0E50](v29, -1, -1);
      }

      else
      {

        sub_236E56DCC(v11, type metadata accessor for AssetPack);
        sub_236E56DCC(v14, type metadata accessor for AssetPack);
      }

      if (*v17 == *a1 && v17[1] == a1[1])
      {
        goto LABEL_22;
      }

      v41 = sub_236E824E4();
      sub_236E56DCC(v17, type metadata accessor for AssetPack);
      if (v41)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v56;
    }

    while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v42 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_236E57708(a1, *(v42 + 48) + *(v49 + 72) * a2, type metadata accessor for AssetPack);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v42 + 16) = v46;
    return result;
  }

  __break(1u);
LABEL_22:
  sub_236E56DCC(v17, type metadata accessor for AssetPack);
LABEL_23:
  result = sub_236E824F4();
  __break(1u);
  return result;
}

void *sub_236E55B28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88038, &qword_236E85138);
  v2 = *v0;
  v3 = sub_236E82214();
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

id sub_236E55C84(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_236E82214();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_236E55DC4()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPack(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88028, &qword_236E85130);
  v7 = *v0;
  v8 = sub_236E82214();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_236E57598(*(v7 + 48) + v22, v6, type metadata accessor for AssetPack);
        result = sub_236E57708(v6, *(v9 + 48) + v22, type metadata accessor for AssetPack);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_236E55FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88038, &qword_236E85138);
  result = sub_236E82224();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_236E82574();

      sub_236E81F04();
      result = sub_236E82594();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_236E56208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_236E82224();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_236E82134();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_236E56414(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88028, &qword_236E85130);
  result = sub_236E82224();
  v13 = result;
  if (*(v9 + 16))
  {
    v46 = v2;
    v14 = 0;
    v15 = v9 + 56;
    v16 = 1 << *(v9 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    *&v12 = 136446210;
    v47 = v12;
    v48 = result;
    v49 = v5;
    while (v18)
    {
      v27 = __clz(__rbit64(v18));
      v51 = (v18 - 1) & v18;
LABEL_18:
      v30 = *(v9 + 48);
      v50 = *(v5 + 72);
      sub_236E57598(v30 + v50 * (v27 | (v14 << 6)), v8, type metadata accessor for AssetPack);
      v31 = *(v13 + 40);
      sub_236E82574();
      if (qword_27DE87AE0 != -1)
      {
        swift_once();
      }

      v32 = sub_236E81DA4();
      __swift_project_value_buffer(v32, qword_27DE88220);
      v33 = sub_236E820E4();
      v34 = sub_236E81D84();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = v8;
        v37 = v9;
        v38 = swift_slowAlloc();
        v52 = v38;
        *v35 = v47;
        *(v35 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v52);
        _os_log_impl(&dword_236E28000, v34, v33, "Hash into: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v39 = v38;
        v9 = v37;
        v8 = v36;
        v13 = v48;
        MEMORY[0x2383C0E50](v39, -1, -1);
        v40 = v35;
        v5 = v49;
        MEMORY[0x2383C0E50](v40, -1, -1);
      }

      v21 = *v8;
      v22 = v8[1];
      sub_236E81F04();
      result = sub_236E82594();
      v23 = -1 << *(v13 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v20 + 8 * (v24 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v23) >> 6;
        while (++v25 != v42 || (v41 & 1) == 0)
        {
          v43 = v25 == v42;
          if (v25 == v42)
          {
            v25 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v25);
          if (v44 != -1)
          {
            v26 = __clz(__rbit64(~v44)) + (v25 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_34;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v20 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_236E57708(v8, *(v13 + 48) + v26 * v50, type metadata accessor for AssetPack);
      ++*(v13 + 16);
      v18 = v51;
    }

    v28 = v14;
    while (1)
    {
      v14 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v46;
        goto LABEL_32;
      }

      v29 = *(v15 + 8 * v14);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v51 = (v29 - 1) & v29;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v13;
  }

  return result;
}

void *sub_236E56828(void *a1, int64_t a2, char a3)
{
  result = sub_236E56868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236E56848(char *a1, int64_t a2, char a3)
{
  result = sub_236E569B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_236E56868(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88048, &qword_236E85148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88050, &qword_236E85150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_236E569B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88058, &qword_236E85158);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_236E56ABC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_236E7B334(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_236E64248(v15, v5 & 1);
    v17 = *a3;
    result = sub_236E7B334(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_236E82504();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_14:
    v19[(result >> 6) + 8] |= 1 << result;
    v24 = (v19[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v25 = v19[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v19[2] = v26;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_17;
    }

    return result;
  }

  v23 = result;
  sub_236E63F74();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = *(v19[7] + 8 * result);
  v21 = result;

  if (v9 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v9;
  }

  *(v19[7] + 8 * v21) = v22;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_17:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v30 = *a3;

      result = sub_236E7B334(v7, v6);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_29;
      }

      v8 = v31;
      if (v30[3] < v34)
      {
        sub_236E64248(v34, 1);
        v35 = *a3;
        result = sub_236E7B334(v7, v6);
        if ((v8 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v8)
      {
        v27 = *(v37[7] + 8 * result);
        v28 = result;

        if (v9 <= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v9;
        }

        *(v37[7] + 8 * v28) = v29;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        v38 = (v37[6] + 16 * result);
        *v38 = v7;
        v38[1] = v6;
        *(v37[7] + 8 * result) = v9;
        v39 = v37[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_30;
        }

        v37[2] = v40;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_236E56D34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2383BFEC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_236E53B8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_236E56DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_236E56E2C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_236E821E4())
  {
    v4 = type metadata accessor for BAAssetPack();
    v5 = sub_236E57620(&qword_27DE88000, type metadata accessor for BAAssetPack);
    result = MEMORY[0x2383BFEC0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C0080](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_236E53CDC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_236E821E4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_236E56F8C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_236E821E4())
  {
    v4 = sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    v5 = sub_236E3AA4C();
    result = MEMORY[0x2383BFEC0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C0080](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_236E53944(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_236E821E4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_236E570CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = sub_236E81CF4();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_236E81C94();
  v58 = *(v55 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  __swift_project_value_buffer(v12, qword_27DE87DC8);
  v13 = sub_236E820E4();
  v14 = sub_236E81D84();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v60 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_236E381CC(0x6F6974636E754628, 0xEA0000000000296ELL, &v60);
    _os_log_impl(&dword_236E28000, v14, v13, "With versions of all downloaded asset packs: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2383C0E50](v17, -1, -1);
    v18 = v16;
    v7 = v15;
    MEMORY[0x2383C0E50](v18, -1, -1);
  }

  v19 = *(a1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v20 = *(a1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v21 = *(a1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v22 = *(a1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v23 = *(a1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  v24 = sub_236E81BB4();
  if (v3)
  {
    return v7;
  }

  v49 = 0;
  v25 = *(v24 + 16);
  if (v25)
  {
    v47 = a2;
    v48 = a3;
    v60 = MEMORY[0x277D84F90];
    v26 = v24;
    sub_236E56828(0, v25, 0);
    v27 = v60;
    v28 = *(v58 + 16);
    v29 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v46 = v26;
    v30 = v26 + v29;
    v52 = *(v58 + 72);
    v53 = v28;
    v58 += 16;
    v50 = (v58 - 8);
    v51 = (v7 + 8);
    do
    {
      v31 = v54;
      v32 = v55;
      v53(v54, v30, v55);
      v33 = v56;
      sub_236E81C84();
      v59 = sub_236E81CA4();
      v35 = v34;
      (*v51)(v33, v57);
      v36 = sub_236E81C74();
      (*v50)(v31, v32);
      v60 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_236E56828((v37 > 1), v38 + 1, 1);
        v27 = v60;
      }

      *(v27 + 16) = v38 + 1;
      v39 = (v27 + 24 * v38);
      v39[4] = v59;
      v39[5] = v35;
      v39[6] = v36;
      v30 += v52;
      --v25;
    }

    while (v25);

    a2 = v47;
    a3 = v48;
    if (*(v27 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88040, &qword_236E85140);
      v40 = sub_236E82384();
      goto LABEL_15;
    }
  }

  v40 = MEMORY[0x277D84F98];
LABEL_15:
  v60 = v40;
  v41 = v49;
  sub_236E56ABC(v27, 1, &v60);
  if (!v41)
  {

    v42 = v60;
    if (*(v60 + 16) && (v43 = sub_236E7B334(a2, a3), (v44 & 1) != 0))
    {
      v7 = *(*(v42 + 56) + 8 * v43);
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_236E57598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236E57620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_236E576D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236E57708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_236E57790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236E57838;

  return sub_236E487F8(a1, v5, v4);
}

uint64_t sub_236E57838(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_236E57934@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return sub_236E538BC(a1);
}

void sub_236E579A0()
{
  sub_236E585C0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_236E586AC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_236E81E34();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssetPackManager.allAssetPacks.getter()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_236E57C04;

  return v6();
}

uint64_t sub_236E57C04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AssetPackManager.assetPack(withID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_236E3A910;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AssetPackManager.status(ofAssetPackWithID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_236E59578;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AssetPackManager.ensureLocalAvailability(of:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236E59578;

  return v8(a1);
}

uint64_t dispatch thunk of AssetPackManager.checkForUpdates()()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_236E58218;

  return v6();
}

uint64_t sub_236E58218(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of AssetPackManager.remove(assetPackWithID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_236E59578;

  return v10(a1, a2);
}

void sub_236E585C0()
{
  if (!qword_27DE87EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE87EF0, &qword_236E84E30);
    sub_236E58664(&qword_27DE87EF8, &qword_27DE87EF0, &qword_236E84E30);
    v0 = sub_236E81AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE87EE8);
    }
  }
}

uint64_t sub_236E58664(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_236E586AC()
{
  if (!qword_27DE87F00)
  {
    sub_236E81D74();
    v0 = sub_236E82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE87F00);
    }
  }
}

void sub_236E58704()
{
  type metadata accessor for AssetPack(319);
  if (v0 <= 0x3F)
  {
    sub_236E58790();
    if (v1 <= 0x3F)
    {
      sub_236E58810();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_236E58790()
{
  if (!qword_27DE87F28)
  {
    type metadata accessor for AssetPack(255);
    sub_236E588C4(255, &qword_27DE87F30, 0x277CCAC48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DE87F28);
    }
  }
}

void sub_236E58810()
{
  if (!qword_27DE87F38)
  {
    type metadata accessor for AssetPack(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DE87E20, &qword_236E856B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DE87F38);
    }
  }
}

uint64_t sub_236E588C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.Status(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPack.Status(uint64_t result, int a2, int a3)
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

void sub_236E589D8()
{
  type metadata accessor for AssetPack(319);
  if (v0 <= 0x3F)
  {
    sub_236E58A68();
    if (v1 <= 0x3F)
    {
      sub_236E58A98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_236E58A68()
{
  result = qword_27DE87FF0;
  if (!qword_27DE87FF0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DE87FF0);
  }

  return result;
}

void sub_236E58A98()
{
  if (!qword_27DE87FF8)
  {
    v0 = sub_236E81E34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE87FF8);
    }
  }
}

uint64_t sub_236E58B28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_236E59578;

  return sub_236E534C4(v2, v3, v4);
}

uint64_t sub_236E58BDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_236E59578;

  return sub_236E7A224(v2, v3, v5);
}

uint64_t sub_236E58C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E59578;

  return sub_236E7A30C(a1, v4, v5, v7);
}

uint64_t sub_236E58D68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_236E59578;

  return sub_236E52234(v2, v3);
}

uint64_t sub_236E58E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_236E59578;

  return sub_236E51BA0(v2, v3, v4);
}

uint64_t sub_236E58EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E3A910;

  return sub_236E7A30C(a1, v4, v5, v7);
}

uint64_t sub_236E58F94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_236E59578;

  return sub_236E512F0(v2, v3, v4);
}

uint64_t objectdestroy_61Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236E59090()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_236E59578;

  return sub_236E50A4C(v2, v3, v4);
}

uint64_t objectdestroy_76Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E59184()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_236E59578;

  return sub_236E500C8(v2, v3);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E59298(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_236E592EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236E38C74(a1, a2);
  }

  return a1;
}

unint64_t sub_236E59300()
{
  result = qword_27DE88030;
  if (!qword_27DE88030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88030);
  }

  return result;
}

unint64_t sub_236E59354()
{
  result = qword_27DE88060;
  if (!qword_27DE88060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88060);
  }

  return result;
}

uint64_t sub_236E593A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236E59448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E59578;

  return sub_236E3D60C(a1, v4, v5, v7);
}

uint64_t sub_236E59508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_236E5959C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 16);
  v4 = sub_236E59608();

  return v4;
}

uint64_t sub_236E595CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_236E59608()
{
  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  return qword_27DE8B0F0;
}

uint64_t sub_236E59658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EB8, &unk_236E851A0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D837D0];
  *(v8 + 16) = xmmword_236E84C70;
  *(v8 + 56) = v9;
  *(v8 + 32) = 0x3A676E696E726157;
  *(v8 + 40) = 0xE800000000000000;
  sub_236E5981C();
  sub_236E82564();

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_236E84C70;
      sub_236E3908C(v11, v12 + 32);
      sub_236E82564();

      v11 += 32;
      --v10;
    }

    while (v10);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_236E84C70;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;

  sub_236E82564();
}

unint64_t sub_236E5981C()
{
  result = qword_27DE88070;
  if (!qword_27DE88070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88070);
  }

  return result;
}

uint64_t sub_236E59888()
{
  v0 = sub_236E81EC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E81EB4();
  v5 = sub_236E81EA4();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 != 15)
  {
    v9 = [objc_opt_self() fileHandleWithStandardError];
    v10 = sub_236E81A24();
    [v9 writeData_];

    return sub_236E592EC(v5, v7);
  }

  return result;
}

uint64_t sub_236E599E0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_236E81904() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E59A70, v1, 0);
}

uint64_t sub_236E59A70()
{
  v1 = *(v0 + 136);
  v2 = v1[14];
  *(v0 + 152) = v2;
  v3 = v1[15];
  *(v0 + 160) = v3;
  v4 = v1[16];
  *(v0 + 168) = v4;
  v5 = v1[17];
  *(v0 + 176) = v5;
  if (v2)
  {
    **(v0 + 128) = v2;
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    *(v11 + 8) = v3 & 1;
    *(v11 + 16) = v4;
    *(v11 + 24) = v5;
    sub_236E5AEA8(v8);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 184) = v1[22];
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
      v1 = *(v0 + 136);
    }

    v14 = qword_27DE87DC0;
    v15 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID;
    *(v0 + 192) = qword_27DE87DC0;
    *(v0 + 200) = v15;
    v16 = (v14 + v15);
    v17 = *v16;
    v18 = v16[1];
    *(v0 + 208) = v18;
    v19 = v1[18];
    v20 = v1[19];
    v21 = *(MEMORY[0x277D25BF0] + 4);

    v22 = swift_task_alloc();
    *(v0 + 216) = v22;
    *v22 = v0;
    v22[1] = sub_236E59C28;

    return MEMORY[0x282184A88](v17, v18, v19, v20, 0);
  }
}

uint64_t sub_236E59C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 216);
  v12 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = v3;

  if (v3)
  {
    v7 = v5[17];
    v8 = sub_236E5A324;
  }

  else
  {
    v9 = v5[26];
    v10 = v5[17];

    v8 = sub_236E59D54;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_236E59D54()
{
  v66 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 136);
  v6 = sub_236E818E4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 256) = sub_236E818D4();
  sub_236E818B4();
  v9 = *(v5 + 160);
  v10 = *(v5 + 168);

  sub_236E6FBA0(v9, v10, v2, 1, &v62);
  *(v0 + 16) = v62;
  v11 = v65;
  *(v0 + 32) = v63;
  *(v0 + 40) = v64;
  *(v0 + 56) = v11;
  sub_236E38C10();
  sub_236E818C4();
  if (v1)
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 24);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);

    sub_236E38C64(v15);

    sub_236E38C74(v13, v12);
    v17 = *(v0 + 144);

    v18 = *(v0 + 8);
LABEL_5:

    return v18();
  }

  v60 = *(v0 + 240);
  v19 = *(v0 + 136);
  v20 = *(v0 + 24);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  sub_236E38C64(v21);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  *(v0 + 344) = v24;
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  *(v0 + 264) = v23;
  *(v0 + 272) = v26;
  *(v0 + 280) = v25;
  v27 = v19[14];
  v28 = v19[15];
  v29 = v19[16];
  v30 = v19[17];
  v19[14] = v23;
  v19[15] = v24;
  v61 = v24;
  v19[16] = v26;
  v19[17] = v25;
  v31 = v23;
  v59 = v25;

  sub_236E5AE68(v27);
  if (v60 == 2)
  {
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);

    sub_236E38C74(v33, v32);
    **(v0 + 128) = *(v0 + 264);
    v34 = *(v0 + 168);
    v35 = *(v0 + 176);
    v36 = *(v0 + 152);
    v37 = *(v0 + 160);
    v38 = *(v0 + 144);
    v39 = *(v0 + 128);
    v40 = *(v0 + 272);
    *(v39 + 8) = v61;
    *(v39 + 16) = v40;
    sub_236E5AEA8(v36);

    v18 = *(v0 + 8);
    goto LABEL_5;
  }

  v42 = *(v0 + 144);
  v43 = sub_236E81944();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_236E81934();
  sub_236E818F4();
  sub_236E81914();
  *(v0 + 96) = v31;
  *(v0 + 104) = v61;
  *(v0 + 112) = v26;
  *(v0 + 120) = v59;
  sub_236E59354();
  v46 = sub_236E81924();
  *(v0 + 296) = v46;
  *(v0 + 304) = v47;
  v48 = *(v0 + 192);
  v49 = (v48 + *(v0 + 200));
  v51 = *v49;
  v50 = v49[1];
  *(v0 + 312) = v50;
  v52 = *(v48 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v53 = *(v48 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID + 8);
  *(v0 + 320) = v53;
  v54 = *(MEMORY[0x277D25C00] + 4);
  v55 = v46;
  v56 = v47;

  v57 = swift_task_alloc();
  *(v0 + 328) = v57;
  *v57 = v0;
  v57[1] = sub_236E5A11C;
  v58 = *(v0 + 184);

  return MEMORY[0x282184AB0](v55, v56, v51, v50, v52, v53);
}

uint64_t sub_236E5A11C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v10 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = sub_236E5A390;
  }

  else
  {
    v6 = v2[39];
    v7 = v2[40];
    v8 = v2[17];

    v5 = sub_236E5A24C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_236E5A24C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);

  sub_236E38C74(v6, v5);
  sub_236E38C74(v1, v2);

  v7 = *(v0 + 344);
  **(v0 + 128) = *(v0 + 264);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 272);
  *(v13 + 8) = v7;
  *(v13 + 16) = v14;
  sub_236E5AEA8(v10);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_236E5A324()
{
  v1 = v0[26];

  v2 = v0[31];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_236E5A390()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[28];
  v9 = v0[29];

  sub_236E38C74(v4, v3);

  sub_236E38C74(v10, v9);
  v11 = v0[42];
  v12 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_236E5A46C()
{
  *(v1 + 128) = v0;
  v2 = *(*(sub_236E81904() - 8) + 64) + 15;
  *(v1 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E5A4FC, v0, 0);
}

uint64_t sub_236E5A4FC()
{
  v1 = v0[16];
  v0[18] = v1[22];
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
    v1 = v0[16];
  }

  v2 = qword_27DE87DC0;
  v3 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID;
  v0[19] = qword_27DE87DC0;
  v0[20] = v3;
  v4 = (v2 + v3);
  v5 = *v4;
  v6 = v4[1];
  v0[21] = v6;
  v7 = v1[18];
  v8 = v1[19];
  v9 = *(MEMORY[0x277D25BF0] + 4);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_236E5A624;

  return MEMORY[0x282184A88](v5, v6, v7, v8, 1);
}

uint64_t sub_236E5A624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v12 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v7 = v5[16];
    v8 = sub_236E5ACC4;
  }

  else
  {
    v9 = v5[21];
    v10 = v5[16];

    v8 = sub_236E5A750;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_236E5A750()
{
  v58 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 128);
  v6 = sub_236E818E4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_236E818D4();
  sub_236E818B4();
  v9 = *(v5 + 160);
  v10 = *(v5 + 168);

  sub_236E6FBA0(v9, v10, v2, 1, &v54);
  *(v0 + 16) = v54;
  v11 = v57;
  *(v0 + 32) = v55;
  *(v0 + 40) = v56;
  *(v0 + 56) = v11;
  sub_236E38C10();
  sub_236E818C4();
  v12 = *(v0 + 24);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  if (v1)
  {
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);

    sub_236E38C64(v13);

    sub_236E38C74(v16, v15);
    v17 = *(v0 + 136);

    v18 = *(v0 + 8);
LABEL_5:

    return v18();
  }

  v53 = *(v0 + 200);
  v19 = *(v0 + 128);

  sub_236E38C64(v13);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = v19[14];
  v25 = v19[15];
  v26 = v19[16];
  v27 = v19[17];
  v19[14] = v20;
  v19[15] = v21;
  v51 = v23;
  v52 = v21;
  v19[16] = v23;
  v19[17] = v22;
  v28 = v22;

  sub_236E5AE68(v24);
  if (v53 == 2)
  {
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);

    sub_236E38C74(v30, v29);

    v31 = *(v0 + 136);

    v18 = *(v0 + 8);
    goto LABEL_5;
  }

  v33 = *(v0 + 136);
  v34 = sub_236E81944();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(v0 + 224) = sub_236E81934();
  sub_236E818F4();
  sub_236E81914();
  *(v0 + 96) = v20;
  *(v0 + 104) = v52;
  *(v0 + 112) = v51;
  *(v0 + 120) = v28;
  sub_236E59354();
  v37 = sub_236E81924();
  *(v0 + 232) = v37;
  *(v0 + 240) = v38;
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);
  v41 = v37;
  v42 = v38;

  v43 = *(v40 + v39);
  v44 = *(v40 + v39 + 8);
  *(v0 + 248) = v44;
  v45 = v40 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID;
  v46 = *(v40 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v47 = *(v45 + 8);
  *(v0 + 256) = v47;
  v48 = *(MEMORY[0x277D25C00] + 4);

  v49 = swift_task_alloc();
  *(v0 + 264) = v49;
  *v49 = v0;
  v49[1] = sub_236E5AAF0;
  v50 = *(v0 + 144);

  return MEMORY[0x282184AB0](v41, v42, v43, v44, v46, v47);
}

uint64_t sub_236E5AAF0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = sub_236E5AD30;
  }

  else
  {
    v6 = v2[31];
    v7 = v2[32];
    v8 = v2[16];

    v5 = sub_236E5AC20;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_236E5AC20()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[23];
  v5 = v0[24];

  sub_236E38C74(v6, v5);
  sub_236E38C74(v1, v2);

  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_236E5ACC4()
{
  v1 = v0[21];

  v2 = v0[26];
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_236E5AD30()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[23];
  v7 = v0[24];

  sub_236E38C74(v4, v3);

  sub_236E38C74(v8, v7);
  v9 = v0[34];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_236E5ADF0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[17];
  sub_236E5AE68(v0[14]);
  v4 = v0[19];

  v5 = v0[21];

  v6 = v0[22];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_236E5AE68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_236E5AEA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_236E5AEEC()
{
  v1 = v0;
  v2 = sub_236E81E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ManagedBackgroundAssetsError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_236E5B570(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88098, &qword_236E85358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_236E84C70;
    v12 = *MEMORY[0x277CCA170];
    *(inited + 32) = sub_236E81E94();
    *(inited + 40) = v13;
    v14 = @"BAManagedErrorDomain";
    v15 = sub_236E81E04();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v15;
    *(inited + 56) = v16;
    sub_236E65058(inited);
    swift_setDeallocating();
    sub_236E5B7C0(inited + 32);
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = sub_236E81E54();

    v19 = [v17 initWithDomain:v14 code:1 userInfo:v18];

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = *v10;
    v21 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88098, &qword_236E85358);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_236E84C70;
    *(v22 + 32) = sub_236E81E94();
    *(v22 + 72) = MEMORY[0x277D837D0];
    *(v22 + 40) = v23;
    *(v22 + 48) = v20;
    *(v22 + 56) = v21;
    v24 = @"BAManagedErrorDomain";
    sub_236E65058(v22);
    swift_setDeallocating();
    sub_236E5B7C0(v22 + 32);
    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v26 = sub_236E81E54();

    v19 = [v25 initWithDomain:v24 code:0 userInfo:v26];
  }

  return v19;
}

uint64_t ManagedBackgroundAssetsError.description.getter()
{
  v0 = type metadata accessor for ManagedBackgroundAssetsError();
  v1 = sub_236E5B5D4(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);

  return MEMORY[0x28211F4C8](v0, v1);
}

uint64_t type metadata accessor for ManagedBackgroundAssetsError()
{
  result = qword_27DE88078;
  if (!qword_27DE88078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManagedBackgroundAssetsError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_236E81E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedBackgroundAssetsError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_236E5B570(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_236E82264();

    v16 = 0x1000000000000018;
    v17 = 0x8000000236E8A8B0;
    sub_236E5B5D4(&qword_27DE87E98, MEMORY[0x277D854C0]);
    v11 = sub_236E82484();
    MEMORY[0x2383BFD30](v11);

    MEMORY[0x2383BFD30](782074082, 0xA400000000000000);
    v12 = v16;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *v10;
    v14 = v10[1];
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_236E82264();

    v16 = 0x100000000000001DLL;
    v17 = 0x8000000236E8A8D0;
    MEMORY[0x2383BFD30](v13, v14);

    MEMORY[0x2383BFD30](0x20736177209D80E2, 0xAE002E646E756F66);
    return v16;
  }

  return v12;
}

uint64_t sub_236E5B570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedBackgroundAssetsError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E5B5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236E5B61C(uint64_t a1)
{
  v2 = sub_236E5B5D4(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError);

  return MEMORY[0x28211F4C8](a1, v2);
}

void sub_236E5B6D4()
{
  sub_236E5B748();
  if (v0 <= 0x3F)
  {
    sub_236E5B778();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_236E5B748()
{
  result = qword_27DE88088;
  if (!qword_27DE88088)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DE88088);
  }

  return result;
}

void sub_236E5B778()
{
  if (!qword_27DE88090)
  {
    v0 = sub_236E81E34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE88090);
    }
  }
}

uint64_t sub_236E5B7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE881C0, &qword_236E85360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236E5B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_236E593A8(a3, v27 - v11, &unk_27DE87DB0, &qword_236E84C50);
  v13 = sub_236E82034();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_236E38DBC(v12, &unk_27DE87DB0, &qword_236E84C50);
  }

  else
  {
    sub_236E82024();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_236E81FC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_236E81EE4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_236E5BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_236E593A8(a3, v23 - v9, &unk_27DE87DB0, &qword_236E84C50);
  v11 = sub_236E82034();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_236E38DBC(v10, &unk_27DE87DB0, &qword_236E84C50);
  }

  else
  {
    sub_236E82024();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_236E81FC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_236E81EE4() + 32;

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

      sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);

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

  sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_236E5BDD4(uint64_t a1)
{
  v47 = a1;
  v46 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v1 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - v7;
  v9 = type metadata accessor for AssetPack(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v42 - v14;
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v16 = sub_236E81DA4();
  __swift_project_value_buffer(v16, qword_27DE880A0);
  v17 = sub_236E820E4();
  sub_236E654EC(v47, v15, type metadata accessor for AssetPack);
  v18 = sub_236E81D84();
  v19 = os_log_type_enabled(v18, v17);
  v44 = v5;
  v45 = v4;
  v43 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48[0] = v21;
    *v20 = 136446210;
    v22 = AssetPack.description.getter();
    v24 = v23;
    sub_236E39414(v15);
    v25 = sub_236E381CC(v22, v24, v48);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_236E28000, v18, v17, "Yield fake status updates for: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2383C0E50](v21, -1, -1);
    MEMORY[0x2383C0E50](v20, -1, -1);
  }

  else
  {

    sub_236E39414(v15);
  }

  v26 = v3;
  sub_236E654EC(v47, v13, type metadata accessor for AssetPack);
  v27 = sub_236E81D84();
  v28 = sub_236E82114();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48[0] = v30;
    *v29 = 136446210;
    v31 = *v13;
    v32 = v13[1];

    sub_236E39414(v13);
    v33 = sub_236E381CC(v31, v32, v48);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_236E28000, v27, v28, "Yielding fake status updates for the asset pack with the ID %{public}s…", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2383C0E50](v30, -1, -1);
    MEMORY[0x2383C0E50](v29, -1, -1);
  }

  else
  {

    sub_236E39414(v13);
  }

  v34 = v44;
  v35 = OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_continuation;
  v36 = v26;
  sub_236E654EC(v47, v26, type metadata accessor for AssetPack);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
  v42[1] = v35;
  v37 = v43;
  sub_236E82054();
  v38 = *(v34 + 8);
  v39 = v45;
  v38(v37, v45);
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v40 = (qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
  os_unfair_lock_lock((qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
  v41 = v47;
  sub_236E62EC0(v47, &selRef_downloadOfAssetPackBegan_, v48);
  os_unfair_lock_unlock(v40);
  sub_236E654EC(v41, v36, type metadata accessor for AssetPack);
  swift_storeEnumTagMultiPayload();
  sub_236E82054();
  v38(v37, v39);
  os_unfair_lock_lock(v40);
  sub_236E62EC0(v41, &selRef_downloadOfAssetPackFinished_, v48);
  os_unfair_lock_unlock(v40);
}

void *sub_236E5C348(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_236E7B334(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_236E5C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_236E6493C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_236E7B334(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_236E640DC();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_236E6478C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_236E5C4C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_236E5C508()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_236E5C540()
{
  result = [objc_allocWithZone(type metadata accessor for SystemDownloadManagerDelegate(0)) init];
  qword_27DE8B0F0 = result;
  return result;
}

uint64_t sub_236E5C574()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE880A0);
  __swift_project_value_buffer(v0, qword_27DE880A0);
  return sub_236E81D94();
}

id sub_236E5C5F4()
{
  ObjectType = swift_getObjectType();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE881A8, &unk_236E854A8);
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EF0, &qword_236E84E30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_progressCache;
  type metadata accessor for SystemDownloadManagerDelegate.ProgressCache();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_236E65188(MEMORY[0x277D84F90]);
  *&v0[v14] = v15;
  type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v16 = v19;
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v19);
  sub_236E82044();
  (*(v1 + 8))(v4, v16);
  (*(v10 + 32))(&v0[OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_stream], v13, v9);
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_continuation], v8, v20);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_236E5C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v5[3] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v5[8] = v13;
  v14 = type metadata accessor for AssetPack(0);
  v5[9] = v14;
  v15 = *(v14 - 8);
  v5[10] = v15;
  v16 = *(v15 + 64) + 15;
  v5[11] = swift_task_alloc();
  v17 = swift_task_alloc();
  v5[12] = v17;
  *v17 = v5;
  v17[1] = sub_236E5CAC0;

  return sub_236E5CDD8(v13, a4);
}

uint64_t sub_236E5CAC0()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E5CBBC, 0, 0);
}

uint64_t sub_236E5CBBC()
{
  v18 = v0;
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    sub_236E38DBC(v1, &unk_27DE87E00, &unk_236E84CA0);
  }

  else
  {
    v2 = v0[11];
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    sub_236E63BD0(v1, v2);
    sub_236E654EC(v2, v6, type metadata accessor for AssetPack);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
    sub_236E82054();
    (*(v4 + 8))(v3, v5);
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v9 = v0[11];
    v10 = (qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
    os_unfair_lock_lock((qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
    sub_236E62EC0(v9, &selRef_downloadOfAssetPackBegan_, v17);
    os_unfair_lock_unlock(v10);
    sub_236E39414(v0[11]);
  }

  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_236E5CDD8(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_236E5CEB8, 0, 0);
}

uint64_t sub_236E5CEB8()
{
  v9 = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 32) identifier];
  v2 = sub_236E81E94();
  v4 = v3;

  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_236E5CFF8;
  v6 = *(v0 + 48);
  v7 = *MEMORY[0x277D85DE8];

  return sub_236E3D890(v6, v2, v4);
}

uint64_t sub_236E5CFF8()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_236E5D61C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_236E5D148;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236E5D148()
{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 0, 1, v4);
  sub_236E64D08(v1, v2);
  sub_236E593A8(v2, v3, &unk_27DE87E00, &unk_236E84CA0);
  LODWORD(v2) = (*(v5 + 48))(v3, 1, v4);
  sub_236E38DBC(v3, &unk_27DE87E00, &unk_236E84CA0);
  if (v2 == 1)
  {
    if (qword_27DE87AC8 != -1)
    {
      swift_once();
    }

    v6 = v0[4];
    v7 = sub_236E81DA4();
    __swift_project_value_buffer(v7, qword_27DE880A0);
    v8 = sub_236E82104();
    v9 = v6;
    v10 = sub_236E81D84();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = v0[4];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48[0] = v13;
      *v12 = 136446210;
      v14 = [v11 identifier];
      v15 = sub_236E81E94();
      v17 = v16;

      v18 = sub_236E381CC(v15, v17, v48);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_236E28000, v10, v8, "A download with the ID “%{public}s” was scheduled, but there’s no associated asset pack with that ID. Canceling the download…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2383C0E50](v13, -1, -1);
      MEMORY[0x2383C0E50](v12, -1, -1);
    }

    v19 = v0[4];
    v20 = [objc_opt_self() sharedManager];
    v0[2] = 0;
    v21 = [v20 cancelDownload:v19 error:v0 + 2];

    v22 = v0[2];
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v24 = v0[4];
      v25 = v22;
      v26 = sub_236E81994();

      swift_willThrow();
      v27 = sub_236E820F4();
      v28 = v24;
      v29 = v26;
      v30 = sub_236E81D84();

      if (os_log_type_enabled(v30, v27))
      {
        v31 = v0[4];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48[0] = v34;
        *v32 = 136446466;
        v35 = [v31 identifier];
        v36 = sub_236E81E94();
        v38 = v37;

        v39 = sub_236E381CC(v36, v38, v48);

        *(v32 + 4) = v39;
        *(v32 + 12) = 2114;
        v40 = v26;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v41;
        *v33 = v41;
        _os_log_impl(&dword_236E28000, v30, v27, "The download with the ID “%{public}s” couldn’t be canceled: %{public}@", v32, 0x16u);
        sub_236E38DBC(v33, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x2383C0E50](v34, -1, -1);
        MEMORY[0x2383C0E50](v32, -1, -1);
      }

      else
      {
      }
    }
  }

  sub_236E64D08(v0[7], v0[3]);
  v43 = v0[6];
  v42 = v0[7];
  v44 = v0[5];

  v45 = v0[1];
  v46 = *MEMORY[0x277D85DE8];

  return v45();
}

uint64_t sub_236E5D61C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = v0[8];

  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[4];
  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE880A0);
  v5 = sub_236E820F4();
  v6 = v3;
  v7 = v2;
  v8 = sub_236E81D84();

  v9 = os_log_type_enabled(v8, v5);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30[0] = v14;
    *v12 = 136446466;
    v15 = [v11 identifier];
    v16 = sub_236E81E94();
    v18 = v17;

    v19 = sub_236E381CC(v16, v18, v30);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2114;
    v20 = v10;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_236E28000, v8, v5, "The asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v12, 0x16u);
    sub_236E38DBC(v13, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2383C0E50](v14, -1, -1);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  else
  {
  }

  v22 = v0[3];
  v23 = type metadata accessor for AssetPack(0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[5];

  v27 = v0[1];
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

unint64_t sub_236E5D984(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = v4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v13 = sub_236E81DA4();
  __swift_project_value_buffer(v13, qword_27DE880A0);
  v14 = sub_236E820E4();
  v15 = a1;
  v16 = sub_236E81D84();

  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v15;
    *v18 = v15;
    v19 = v15;
    _os_log_impl(&dword_236E28000, v16, v14, a2, v17, 0xCu);
    sub_236E38DBC(v18, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v18, -1, -1);
    MEMORY[0x2383C0E50](v17, -1, -1);
  }

  v20 = swift_getObjectType();
  result = sub_236E6360C();
  if (v20 == result)
  {
    v22 = sub_236E82034();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v15;
    v23[5] = v6;
    v23[6] = ObjectType;
    v24 = v15;
    v25 = v6;
    sub_236E5B828(0, 0, v12, v27, v23);
  }

  return result;
}

uint64_t sub_236E5DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v5[3] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v5[8] = v13;
  v14 = type metadata accessor for AssetPack(0);
  v5[9] = v14;
  v15 = *(v14 - 8);
  v5[10] = v15;
  v16 = *(v15 + 64) + 15;
  v5[11] = swift_task_alloc();
  v17 = swift_task_alloc();
  v5[12] = v17;
  *v17 = v5;
  v17[1] = sub_236E5DDBC;

  return sub_236E5CDD8(v13, a4);
}

uint64_t sub_236E5DDBC()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E5DEB8, 0, 0);
}

uint64_t sub_236E5DEB8()
{
  v18 = v0;
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    sub_236E38DBC(v1, &unk_27DE87E00, &unk_236E84CA0);
  }

  else
  {
    v2 = v0[11];
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    sub_236E63BD0(v1, v2);
    sub_236E654EC(v2, v6, type metadata accessor for AssetPack);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
    sub_236E82054();
    (*(v4 + 8))(v3, v5);
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v9 = v0[11];
    v10 = (qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
    os_unfair_lock_lock((qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
    sub_236E62EC0(v9, &selRef_downloadOfAssetPackPaused_, v17);
    os_unfair_lock_unlock(v10);
    sub_236E39414(v0[11]);
  }

  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

unint64_t sub_236E5E160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v14 = sub_236E81DA4();
  __swift_project_value_buffer(v14, qword_27DE880A0);
  v15 = sub_236E820E4();
  v16 = a1;
  v17 = sub_236E81D84();

  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138544130;
    *(v18 + 4) = v16;
    *v19 = v16;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a2;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    *(v18 + 32) = 2048;
    *(v18 + 34) = a4;
    v20 = v16;
    _os_log_impl(&dword_236E28000, v17, v15, "Download: %{public}@ did write bytes: %lld total bytes written: %lld total bytes expected to write: %lld", v18, 0x2Au);
    sub_236E38DBC(v19, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v19, -1, -1);
    MEMORY[0x2383C0E50](v18, -1, -1);
  }

  v21 = swift_getObjectType();
  result = sub_236E6360C();
  if (v21 == result)
  {
    v23 = sub_236E82034();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v16;
    v24[5] = v5;
    v25 = v29;
    v24[6] = a4;
    v24[7] = v25;
    v24[8] = ObjectType;
    v26 = v16;
    v27 = v5;
    sub_236E5B828(0, 0, v13, &unk_236E85478, v24);
  }

  return result;
}

uint64_t sub_236E5E3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v10 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v8[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v8[20] = v12;
  v13 = *(v12 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[23] = v16;
  v17 = type metadata accessor for AssetPack(0);
  v8[24] = v17;
  v18 = *(v17 - 8);
  v8[25] = v18;
  v19 = *(v18 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v20 = swift_task_alloc();
  v8[29] = v20;
  *v20 = v8;
  v20[1] = sub_236E5E5F8;

  return sub_236E5CDD8(v16, a4);
}

uint64_t sub_236E5E5F8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E5E6F4, 0, 0);
}

uint64_t sub_236E5E6F4()
{
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_236E38DBC(v1, &unk_27DE87E00, &unk_236E84CA0);
    v3 = v0[27];
    v2 = v0[28];
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[19];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[28];
    v11 = v0[17];
    v13 = v0[13];
    v12 = v0[14];
    sub_236E63BD0(v1, v10);
    v0[30] = *(v12 + OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_progressCache);
    v0[31] = *v10;
    v0[32] = v10[1];
    v14 = swift_allocObject();
    v0[33] = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    sub_236E82014();
    v15 = v13;
    v0[34] = sub_236E82004();
    v17 = sub_236E81FC4();

    return MEMORY[0x2822009F8](sub_236E5E8A4, v17, v16);
  }
}

uint64_t sub_236E5E8A4()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];

  v5 = sub_236E5C348(v2, v3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v0[15];
    if (v7 < 0)
    {
      v7 = *(v0[28] + 16);
    }

    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = [objc_opt_self() progressWithTotalUnitCount_];
    v0[6] = sub_236E64E54;
    v0[7] = v9;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_236E5C4C4;
    v0[5] = &block_descriptor_0;
    v13 = _Block_copy(v0 + 2);
    v14 = v0[7];
    v6 = v12;

    [v6 setCancellationHandler_];
    _Block_release(v13);
    swift_beginAccess();

    v15 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v11 + 16);
    *(v11 + 16) = 0x8000000000000000;
    sub_236E6493C(v6, v10, v8, isUniquelyReferenced_nonNull_native);

    *(v11 + 16) = v21;
    swift_endAccess();
    v5 = 0;
  }

  v0[35] = v6;
  v17 = v0[33];
  v18 = v0[16];
  v19 = v5;
  [v6 setCompletedUnitCount_];

  return MEMORY[0x2822009F8](sub_236E5EAC4, 0, 0);
}

uint64_t sub_236E5EAC4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v30 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881A0, &qword_236E85480) + 48);
  sub_236E654EC(v2, v5, type metadata accessor for AssetPack);
  *(v5 + v8) = v1;
  swift_storeEnumTagMultiPayload();
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
  sub_236E82054();
  (*(v4 + 8))(v3, v30);
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v10 = (qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
  os_unfair_lock_lock((qword_27DE87DC0 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([Strong respondsToSelector_])
    {
      v31 = *(v0 + 280);
      v13 = *(v0 + 216);
      v14 = *(v0 + 208);
      sub_236E654EC(*(v0 + 224), v13, type metadata accessor for AssetPack);
      v15 = objc_allocWithZone(BAAssetPack);
      sub_236E654EC(v13, v14, type metadata accessor for AssetPack);
      v16 = _s16AssetPackWrapperCMa(0);
      v17 = objc_allocWithZone(v16);
      sub_236E654EC(v14, v17 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
      *(v0 + 88) = v17;
      *(v0 + 96) = v16;
      v18 = objc_msgSendSuper2((v0 + 88), sel_init);
      sub_236E39414(v14);
      v19 = [v15 init_];

      sub_236E39414(v13);
      [v12 downloadOfAssetPack:v19 hasProgress:v31];
    }

    swift_unknownObjectRelease();
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 224);
  os_unfair_lock_unlock(v10);

  sub_236E39414(v21);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 208);
  v26 = *(v0 + 176);
  v25 = *(v0 + 184);
  v27 = *(v0 + 152);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_236E5EE28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[3] = a2;
  v2[4] = ObjectType;
  v2[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E5EEE0, 0, 0);
}

uint64_t sub_236E5EEE0()
{
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE880A0);
  v4 = sub_236E820E4();
  v5 = v1;
  v6 = v2;
  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v4))
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&dword_236E28000, v7, v4, "Download: %{public}@ did receive: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v14 = v0[2];

  ObjectType = swift_getObjectType();
  if (ObjectType == sub_236E6360C())
  {
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_236E5F12C;
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[2];

    return sub_236E5CDD8(v20, v22);
  }

  else
  {
    v16 = v0[5];

    v17 = v0[1];

    return v17(1, 0);
  }
}

uint64_t sub_236E5F12C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_236E38DBC(v2, &unk_27DE87E00, &unk_236E84CA0);

  return MEMORY[0x2822009F8](sub_236E5F254, 0, 0);
}

uint64_t sub_236E5F254()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(1, 0);
}

uint64_t sub_236E5F44C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_236E5F524;

  return sub_236E5EE28(v8, v9);
}

uint64_t sub_236E5F524(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v12 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v10 = *(v12 + 8);

  return v10();
}

unint64_t sub_236E5F6B0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v10 = sub_236E81DA4();
  __swift_project_value_buffer(v10, qword_27DE880A0);
  v11 = sub_236E820E4();
  v12 = a1;
  v13 = a2;
  v14 = sub_236E81D84();

  if (os_log_type_enabled(v14, v11))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543618;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2114;
    v17 = v12;
    v18 = a2;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_236E28000, v14, v11, "Download: %{public}@ failed with error: %{public}@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v16, -1, -1);
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  v20 = swift_getObjectType();
  result = sub_236E6360C();
  if (v20 == result)
  {
    v50 = v2;
    v22 = sub_236E820F4();
    v23 = v12;
    v24 = a2;
    v25 = sub_236E81D84();

    if (os_log_type_enabled(v25, v22))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v26 = 136446466;
      v28 = ObjectType;
      v29 = [v23 identifier];
      v30 = sub_236E81E94();
      HIDWORD(v48) = v22;
      v31 = v30;
      v33 = v32;

      ObjectType = v28;
      v34 = sub_236E381CC(v31, v33, &v51);

      *(v26 + 4) = v34;
      *(v26 + 12) = 2114;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v36;
      *v27 = v36;
      _os_log_impl(&dword_236E28000, v25, BYTE4(v48), "A download with the ID “%{public}s” failed: %{public}@", v26, 0x16u);
      sub_236E38DBC(v27, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v27, -1, -1);
      v37 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2383C0E50](v37, -1, -1);
      MEMORY[0x2383C0E50](v26, -1, -1);
    }

    v38 = sub_236E82034();
    v39 = *(*(v38 - 8) + 56);
    v39(v9, 1, 1, v38);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v41 = v50;
    v40[4] = v23;
    v40[5] = v41;
    v40[6] = a2;
    v40[7] = ObjectType;
    v42 = v23;
    v43 = a2;
    v44 = v41;
    sub_236E5BB28(0, 0, v9, &unk_236E85430, v40);

    v39(v9, 1, 1, v38);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v42;
    v45[5] = a2;
    v46 = v42;
    v47 = a2;
    sub_236E5BB28(0, 0, v9, &unk_236E85440, v45);
  }

  return result;
}

uint64_t sub_236E5FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_236E5FCC4, 0, 0);
}

uint64_t sub_236E5FCC4()
{
  v10 = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v0[16] = qword_27DE87DC0;
  v2 = [v1 identifier];
  v3 = sub_236E81E94();
  v5 = v4;

  v0[17] = v5;
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_236E5FE08;
  v7 = v0[15];
  v8 = *MEMORY[0x277D85DE8];

  return sub_236E3D890(v7, v3, v5);
}

uint64_t sub_236E5FE08()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_236E60488;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_236E5FF58;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236E5FF58()
{
  v60 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v57 = *(v0 + 80);
  v58 = *(v0 + 128);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48);
  sub_236E654EC(v1, v4, type metadata accessor for AssetPack);
  *(v4 + v8) = v6;
  swift_storeEnumTagMultiPayload();
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
  sub_236E82054();
  (*(v3 + 8))(v2, v57);
  v10 = (v58 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
  os_unfair_lock_lock((v58 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([Strong respondsToSelector_])
    {
      v13 = *(v0 + 112);
      v14 = *(v0 + 104);
      v15 = *(v0 + 56);
      sub_236E654EC(*(v0 + 120), v13, type metadata accessor for AssetPack);
      v16 = objc_allocWithZone(BAAssetPack);
      sub_236E654EC(v13, v14, type metadata accessor for AssetPack);
      v17 = _s16AssetPackWrapperCMa(0);
      v18 = objc_allocWithZone(v17);
      sub_236E654EC(v14, v18 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
      *(v0 + 16) = v18;
      *(v0 + 24) = v17;
      v19 = objc_msgSendSuper2((v0 + 16), sel_init);
      sub_236E39414(v14);
      v20 = [v16 init_];

      sub_236E39414(v13);
      v21 = sub_236E81984();
      [v12 downloadOfAssetPack:v20 failedWithError:v21];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v22 = *(v0 + 40);
  os_unfair_lock_unlock(v10);
  if (([v22 isEssential] & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 40);
  v24 = sub_236E81DA4();
  __swift_project_value_buffer(v24, qword_27DE880A0);
  v25 = v23;
  v26 = sub_236E81D84();
  v27 = sub_236E82114();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 40);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v59[0] = v30;
    *v29 = 136446210;
    v31 = [v28 identifier];
    v32 = sub_236E81E94();
    v34 = v33;

    v35 = sub_236E381CC(v32, v34, v59);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_236E28000, v26, v27, "Rescheduling the essential download with the ID “%{public}s” as an optional download…", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2383C0E50](v30, -1, -1);
    MEMORY[0x2383C0E50](v29, -1, -1);
  }

  v36 = *(v0 + 40);
  v37 = [objc_opt_self() sharedManager];
  v38 = [v36 copyAsNonEssential];
  *(v0 + 32) = 0;
  v39 = [v37 scheduleDownload:v38 error:v0 + 32];

  v40 = *(v0 + 32);
  if (v39)
  {
    v41 = v40;
LABEL_12:
    v42 = *(v0 + 112);
    v44 = *(v0 + 96);
    v43 = *(v0 + 104);
    v45 = *(v0 + 72);
    sub_236E39414(*(v0 + 120));

    v46 = *(v0 + 8);
    v47 = *MEMORY[0x277D85DE8];
    goto LABEL_14;
  }

  v48 = *(v0 + 120);
  v49 = v40;
  sub_236E81994();

  swift_willThrow();
  sub_236E39414(v48);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);
  v54 = *(v0 + 72);

  v46 = *(v0 + 8);
  v55 = *MEMORY[0x277D85DE8];
LABEL_14:

  return v46();
}

uint64_t sub_236E60488()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_236E60558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for AssetPack(0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E605E8, 0, 0);
}

uint64_t *sub_236E605E8()
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) identifier];
  v3 = sub_236E81E94();
  v5 = v4;

  sub_236E3E11C(v3, v5, v1);

  result = *(v0 + 32);
  v7 = result[3];
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *result;
    v8 = result[1];
    v10 = swift_task_alloc();
    *(v0 + 40) = v10;
    *v10 = v0;
    v10[1] = sub_236E60770;
    v11 = *(v0 + 24);

    return sub_236E4E84C(v9, v8, v7, v11);
  }

  return result;
}

uint64_t sub_236E60770()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E6086C, 0, 0);
}

uint64_t sub_236E6086C()
{
  sub_236E39414(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_236E60950(void *a1, NSObject *a2)
{
  v309[2] = *MEMORY[0x277D85DE8];
  v275 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v4 = *(*(v275 - 8) + 64);
  MEMORY[0x28223BE20](v275);
  v277 = &v267 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88150, &qword_236E853A8);
  v278 = *(v279 - 8);
  v6 = *(v278 + 64);
  MEMORY[0x28223BE20](v279);
  v276 = &v267 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v273 = &v267 - v10;
  v283 = sub_236E81E34();
  v274 = *(v283 - 8);
  v11 = *(v274 + 64);
  MEMORY[0x28223BE20](v283);
  v271 = &v267 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssetPack(0);
  v280 = *(v13 - 8);
  v14 = *(v280 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v270 = &v267 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v272 = (&v267 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v282 = &v267 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v291 = &v267 - v22;
  v281 = v23;
  MEMORY[0x28223BE20](v21);
  v25 = (&v267 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v290 = &v267 - v28;
  v29 = sub_236E819A4();
  v297 = *(v29 - 8);
  v298 = v29;
  v30 = *(v297 + 64);
  MEMORY[0x28223BE20](v29);
  v296 = &v267 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_236E81A64();
  v293 = *(v32 - 8);
  v294 = v32;
  v33 = *(v293 + 64);
  MEMORY[0x28223BE20](v32);
  v292 = &v267 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_236E819F4();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v267 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v288 = &v267 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v267 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v286 = &v267 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v300 = &v267 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v267 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v301 = &v267 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v307 = &v267 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v267 - v57;
  if (qword_27DE87AC8 != -1)
  {
    swift_once();
  }

  v299 = v52;
  v287 = v45;
  v59 = sub_236E81DA4();
  v60 = __swift_project_value_buffer(v59, qword_27DE880A0);
  v61 = sub_236E820E4();
  v62 = v36[2];
  v304 = v36 + 2;
  v305 = a2;
  v303 = v62;
  v62(v58, a2, v35);
  v63 = a1;
  v306 = v60;
  v64 = sub_236E81D84();

  LODWORD(v302) = v61;
  v65 = os_log_type_enabled(v64, v61);
  v285 = v25;
  v284 = v40;
  v295 = v36;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v268 = v67;
    v269 = swift_slowAlloc();
    v309[0] = v269;
    *v66 = 138543618;
    *(v66 + 4) = v63;
    *v67 = v63;
    *(v66 + 12) = 2082;
    sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
    v68 = v63;
    v69 = sub_236E82484();
    v70 = v63;
    v72 = v71;
    v73 = v36[1];
    v73(v58, v35);
    v74 = sub_236E381CC(v69, v72, v309);
    v63 = v70;
    v75 = v35;

    *(v66 + 14) = v74;
    _os_log_impl(&dword_236E28000, v64, v302, "Download: %{public}@ finished with file URL: %{public}s", v66, 0x16u);
    v76 = v268;
    sub_236E38DBC(v268, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v76, -1, -1);
    v77 = v269;
    __swift_destroy_boxed_opaque_existential_0(v269);
    MEMORY[0x2383C0E50](v77, -1, -1);
    MEMORY[0x2383C0E50](v66, -1, -1);
  }

  else
  {

    v73 = v36[1];
    v73(v58, v35);
    v75 = v35;
  }

  ObjectType = swift_getObjectType();
  result = sub_236E6360C();
  if (ObjectType == result)
  {
    v268 = v63;
    v269 = objc_opt_self();
    v81 = [v269 defaultManager];
    v82 = [v81 temporaryDirectory];

    v83 = v301;
    sub_236E819C4();

    v84 = v292;
    sub_236E81A54();
    v85 = sub_236E81A44();
    v87 = v86;
    (*(v293 + 8))(v84, v294);
    v309[0] = v85;
    v309[1] = v87;
    v89 = v296;
    v88 = v297;
    v90 = v298;
    (*(v297 + 104))(v296, *MEMORY[0x277CC91C0], v298);
    sub_236E63658();
    v91 = v307;
    sub_236E819E4();
    (*(v88 + 8))(v89, v90);

    v92 = v295 + 1;
    v73(v83, v75);
    v93 = v299;
    v94 = v303;
    v303(v299, v305, v75);
    v95 = v300;
    v94(v300, v91, v75);
    v96 = sub_236E81D84();
    v97 = sub_236E82114();
    v98 = os_log_type_enabled(v96, v97);
    v302 = v73;
    if (v98)
    {
      v99 = swift_slowAlloc();
      v100 = v75;
      v297 = swift_slowAlloc();
      v309[0] = v297;
      *v99 = 136446466;
      sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v101 = v95;
      v102 = sub_236E82484();
      v103 = v92;
      v105 = v104;
      v302(v93, v100);
      v106 = sub_236E381CC(v102, v105, v309);
      v92 = v103;

      *(v99 + 4) = v106;
      *(v99 + 12) = 2082;
      v107 = sub_236E82484();
      v109 = v108;
      v302(v101, v100);
      v110 = sub_236E381CC(v107, v109, v309);

      *(v99 + 14) = v110;
      _os_log_impl(&dword_236E28000, v96, v97, "Copying the downloaded asset pack from “%{public}s” to “%{public}s”…", v99, 0x16u);
      v111 = v297;
      swift_arrayDestroy();
      v75 = v100;
      v73 = v302;
      MEMORY[0x2383C0E50](v111, -1, -1);
      MEMORY[0x2383C0E50](v99, -1, -1);
    }

    else
    {

      v73(v95, v75);
      v73(v93, v75);
    }

    v112 = [v269 defaultManager];
    v113 = v305;
    v114 = sub_236E819B4();
    v115 = sub_236E819B4();
    v309[0] = 0;
    v116 = [v112 copyItemAtURL:v114 toURL:v115 error:v309];

    v117 = v309[0];
    if (v116)
    {
      v118 = v286;
      v303(v286, v113, v75);
      v119 = v117;
      v120 = sub_236E81D84();
      v121 = sub_236E82114();
      v122 = os_log_type_enabled(v120, v121);
      v298 = v92;
      if (v122)
      {
        v123 = v118;
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v309[0] = v125;
        *v124 = 136446210;
        sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
        v126 = sub_236E82484();
        v127 = v75;
        v129 = v128;
        v73(v123, v127);
        v130 = sub_236E381CC(v126, v129, v309);
        v75 = v127;

        *(v124 + 4) = v130;
        _os_log_impl(&dword_236E28000, v120, v121, "Removing the downloaded asset pack at “%{public}s”…", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x2383C0E50](v125, -1, -1);
        MEMORY[0x2383C0E50](v124, -1, -1);
      }

      else
      {

        v73(v118, v75);
      }

      v158 = v291;
      v159 = [v269 defaultManager];
      v160 = v305;
      v161 = sub_236E819B4();
      v309[0] = 0;
      v162 = [v159 removeItemAtURL:v161 error:v309];

      if (v162)
      {
        v163 = v309[0];
        v164 = 0;
      }

      else
      {
        v165 = v309[0];
        v166 = sub_236E81994();

        swift_willThrow();
        v164 = 0;
        v167 = sub_236E820F4();
        v168 = v284;
        v303(v284, v160, v75);
        v169 = v166;
        v170 = sub_236E81D84();

        if (os_log_type_enabled(v170, v167))
        {
          v171 = swift_slowAlloc();
          v305 = 0;
          v172 = v75;
          v173 = v171;
          v174 = v168;
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v309[0] = v176;
          *v173 = 136446466;
          sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
          v177 = sub_236E82484();
          v179 = v178;
          v302(v174, v172);
          v180 = sub_236E381CC(v177, v179, v309);

          *(v173 + 4) = v180;
          *(v173 + 12) = 2114;
          v181 = v166;
          v182 = _swift_stdlib_bridgeErrorToNSError();
          *(v173 + 14) = v182;
          *v175 = v182;
          _os_log_impl(&dword_236E28000, v170, v167, "The downloaded asset pack at “%{public}s” couldn’t be removed: %{public}@", v173, 0x16u);
          sub_236E38DBC(v175, &qword_27DE88170, &qword_236E853C0);
          MEMORY[0x2383C0E50](v175, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v176);
          MEMORY[0x2383C0E50](v176, -1, -1);
          v183 = v173;
          v75 = v172;
          v164 = v305;
          MEMORY[0x2383C0E50](v183, -1, -1);
        }

        else
        {

          v73(v168, v75);
        }

        v158 = v291;
      }

      v267 = v75;
      v184 = sub_236E82034();
      v185 = *(v184 - 8);
      v186 = v290;
      v305 = *(v185 + 56);
      v300 = (v185 + 56);
      (v305)(v290, 1, 1, v184);
      v187 = swift_allocObject();
      v187[2] = 0;
      v187[3] = 0;
      v188 = v289;
      v189 = v268;
      v187[4] = v289;
      v187[5] = v189;
      v190 = v189;
      v299 = v188;
      sub_236E5B828(0, 0, v186, &unk_236E853D0, v187);

      if (qword_27DE87AB0 != -1)
      {
        swift_once();
      }

      v191 = qword_27DE87DC0;
      v192 = [v190 identifier];
      v193 = v190;
      v194 = sub_236E81E94();
      v196 = v195;

      sub_236E3E11C(v194, v196, v158);
      if (v164)
      {

        v197 = sub_236E820F4();
        v198 = v193;
        v199 = v164;
        v200 = sub_236E81D84();

        if (os_log_type_enabled(v200, v197))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v309[0] = v203;
          *v201 = 136446466;
          v204 = [v198 identifier];
          v205 = sub_236E81E94();
          v207 = v206;

          v208 = sub_236E381CC(v205, v207, v309);

          *(v201 + 4) = v208;
          *(v201 + 12) = 2114;
          v209 = v164;
          v210 = _swift_stdlib_bridgeErrorToNSError();
          *(v201 + 14) = v210;
          *v202 = v210;
          _os_log_impl(&dword_236E28000, v200, v197, "The asset pack with the ID “%{public}s” couldn’t be looked up in the local cache: %{public}@", v201, 0x16u);
          sub_236E38DBC(v202, &qword_27DE88170, &qword_236E853C0);
          MEMORY[0x2383C0E50](v202, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v203);
          MEMORY[0x2383C0E50](v203, -1, -1);
          MEMORY[0x2383C0E50](v201, -1, -1);
        }

        else
        {
        }

        result = (v302)(v307, v267);
      }

      else
      {
        v296 = v193;
        v297 = v184;

        v211 = v285;
        sub_236E63BD0(v158, v285);
        v212 = v267;
        v213 = v303;
        v303(v301, v307, v267);
        v214 = v273;
        sub_236E81DC4();
        v215 = v274;
        v216 = v283;
        if ((*(v274 + 48))(v214, 1, v283) == 1)
        {
          sub_236E38DBC(v214, &qword_27DE87E90, &unk_236E853B0);
          type metadata accessor for SystemDownloadManagerDelegateError(0);
          sub_236E63C54(&unk_27DE88178, type metadata accessor for SystemDownloadManagerDelegateError);
          v217 = swift_allocError();
          v218 = v213;
          v219 = v217;
          v218(v220, v307, v212);
          swift_willThrow();
          v221 = v302;
          v224 = sub_236E820F4();
          v225 = v272;
          sub_236E654EC(v211, v272, type metadata accessor for AssetPack);
          v226 = v219;
          v227 = sub_236E81D84();

          if (os_log_type_enabled(v227, v224))
          {
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            v309[0] = v230;
            *v228 = 136446466;
            v232 = *v225;
            v231 = v225[1];

            sub_236E39414(v225);
            v233 = sub_236E381CC(v232, v231, v309);

            *(v228 + 4) = v233;
            v211 = v285;
            *(v228 + 12) = 2114;
            v234 = v219;
            v235 = _swift_stdlib_bridgeErrorToNSError();
            *(v228 + 14) = v235;
            *v229 = v235;
            _os_log_impl(&dword_236E28000, v227, v224, "The asset pack with the ID “%{public}s” couldn’t be processed: %{public}@", v228, 0x16u);
            sub_236E38DBC(v229, &qword_27DE88170, &qword_236E853C0);
            MEMORY[0x2383C0E50](v229, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v230);
            v236 = v230;
            v221 = v302;
            MEMORY[0x2383C0E50](v236, -1, -1);
            MEMORY[0x2383C0E50](v228, -1, -1);
          }

          else
          {

            sub_236E39414(v225);
          }

          v237 = v297;
          v238 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48);
          v239 = v277;
          sub_236E654EC(v211, v277, type metadata accessor for AssetPack);
          *(v239 + v238) = v219;
          swift_storeEnumTagMultiPayload();
          v240 = v219;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
          v241 = v276;
          sub_236E82054();
          (*(v278 + 8))(v241, v279);
          v242 = (v191 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
          os_unfair_lock_lock((v191 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
          Strong = swift_unknownObjectWeakLoadStrong();
          v244 = v282;
          if (Strong)
          {
            v245 = Strong;
            if ([Strong respondsToSelector_])
            {
              sub_236E654EC(v211, v244, type metadata accessor for AssetPack);
              v246 = objc_allocWithZone(BAAssetPack);
              v247 = v270;
              sub_236E654EC(v244, v270, type metadata accessor for AssetPack);
              v248 = _s16AssetPackWrapperCMa(0);
              v249 = objc_allocWithZone(v248);
              sub_236E654EC(v247, v249 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
              v308.receiver = v249;
              v308.super_class = v248;
              v221 = v302;
              v211 = v285;
              v250 = objc_msgSendSuper2(&v308, sel_init);
              sub_236E39414(v247);
              v251 = [v246 init_];

              sub_236E39414(v244);
              v252 = sub_236E81984();
              [v245 downloadOfAssetPack:v251 failedWithError:v252];

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v237 = v297;
          }

          os_unfair_lock_unlock(v242);
          v253 = v290;
          (v305)(v290, 1, 1, v237);
          sub_236E654EC(v211, v244, type metadata accessor for AssetPack);
          v254 = (*(v280 + 80) + 40) & ~*(v280 + 80);
          v255 = (v281 + v254 + 7) & 0xFFFFFFFFFFFFFFF8;
          v256 = swift_allocObject();
          v256[2] = 0;
          v256[3] = 0;
          v257 = v296;
          v256[4] = v296;
          sub_236E63BD0(v244, v256 + v254);
          *(v256 + v255) = v219;
          v258 = v257;
          v259 = v219;
          sub_236E5B828(0, 0, v253, &unk_236E853F0, v256);

          sub_236E39414(v211);
          result = v221(v307, v267);
        }

        else
        {
          v222 = v271;
          (*(v215 + 32))(v271, v214, v216);
          sub_236E4D5DC(v211, v222);
          v223 = v302;
          v260 = v215;
          sub_236E654EC(v211, v277, type metadata accessor for AssetPack);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88188, &qword_236E853E0);
          v261 = v276;
          sub_236E82054();
          (*(v278 + 8))(v261, v279);
          v262 = (v191 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
          os_unfair_lock_lock((v191 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference));
          sub_236E62EC0(v211, &selRef_downloadOfAssetPackFinished_, v309);
          os_unfair_lock_unlock(v262);
          v263 = v290;
          (v305)(v290, 1, 1, v297);
          v264 = v282;
          sub_236E654EC(v211, v282, type metadata accessor for AssetPack);
          v265 = (*(v280 + 80) + 32) & ~*(v280 + 80);
          v266 = swift_allocObject();
          *(v266 + 16) = 0;
          *(v266 + 24) = 0;
          sub_236E63BD0(v264, v266 + v265);
          sub_236E5B828(0, 0, v263, &unk_236E85400, v266);

          (*(v260 + 8))(v222, v283);
          sub_236E39414(v211);
          result = v223(v307, v267);
        }
      }
    }

    else
    {
      v131 = v309[0];
      v132 = sub_236E81994();

      swift_willThrow();
      v133 = sub_236E820F4();
      v134 = v287;
      v135 = v303;
      v303(v287, v113, v75);
      v136 = v288;
      v135(v288, v307, v75);
      v137 = v132;
      v138 = sub_236E81D84();

      if (os_log_type_enabled(v138, v133))
      {
        v139 = swift_slowAlloc();
        LODWORD(v304) = v133;
        v305 = v138;
        v140 = v75;
        v141 = v139;
        v303 = swift_slowAlloc();
        v306 = swift_slowAlloc();
        v309[0] = v306;
        *v141 = 136446722;
        sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
        v142 = sub_236E82484();
        v144 = v143;
        v145 = v134;
        v146 = v140;
        v73(v145, v140);
        v147 = v73;
        v148 = sub_236E381CC(v142, v144, v309);

        *(v141 + 4) = v148;
        *(v141 + 12) = 2082;
        v149 = sub_236E82484();
        v151 = v150;
        v147(v136, v146);
        v152 = sub_236E381CC(v149, v151, v309);

        *(v141 + 14) = v152;
        *(v141 + 22) = 2114;
        v153 = v132;
        v154 = _swift_stdlib_bridgeErrorToNSError();
        *(v141 + 24) = v154;
        v155 = v303;
        *v303 = v154;
        v156 = v305;
        _os_log_impl(&dword_236E28000, v305, v304, "The downloaded asset pack couldn’t be copied from “%{public}s” to “%{public}s”: %{public}@", v141, 0x20u);
        sub_236E38DBC(v155, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v155, -1, -1);
        v157 = v306;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](v157, -1, -1);
        MEMORY[0x2383C0E50](v141, -1, -1);

        result = (v147)(v307, v146);
      }

      else
      {

        v73(v136, v75);
        v73(v134, v75);
        result = (v73)(v307, v75);
      }
    }
  }

  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236E627D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_236E627F8, 0, 0);
}

uint64_t sub_236E627F8()
{
  v1 = v0[6];
  v0[7] = *(v0[5] + OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_progressCache);
  v2 = [v1 identifier];
  v3 = sub_236E81E94();
  v5 = v4;

  v0[8] = v3;
  v0[9] = v5;
  sub_236E82014();
  v0[10] = sub_236E82004();
  v7 = sub_236E81FC4();

  return MEMORY[0x2822009F8](sub_236E628D4, v7, v6);
}

uint64_t sub_236E628D4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  swift_beginAccess();
  sub_236E5C3CC(0, v4, v2);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

void sub_236E62990()
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = v1[3];
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1;
    v3 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_236E62A7C;

    sub_236E4E2E4(v4, v3, v2);
  }
}

uint64_t sub_236E62A7C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_236E62B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_236E62B94, 0, 0);
}

void sub_236E62B94()
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) identifier];
  v3 = sub_236E81E94();
  v5 = v4;

  v6 = *(v1 + 24);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v5;
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_236E62CB4;
    v8 = *(v0 + 32);

    sub_236E4E84C(v3, v5, v6, v8);
  }
}

uint64_t sub_236E62CB4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void *sub_236E62EC0@<X0>(uint64_t a1@<X1>, SEL *a2@<X3>, char *a3@<X8>)
{
  v6 = type metadata accessor for AssetPack(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v14 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v19 = 1;
    goto LABEL_6;
  }

  sub_236E654EC(a1, v12, type metadata accessor for AssetPack);
  v21 = objc_allocWithZone(BAAssetPack);
  sub_236E654EC(v12, v10, type metadata accessor for AssetPack);
  v15 = _s16AssetPackWrapperCMa(0);
  v16 = objc_allocWithZone(v15);
  sub_236E654EC(v10, v16 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, type metadata accessor for AssetPack);
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_236E39414(v10);
  v18 = [v21 init_];

  sub_236E39414(v12);
  [v14 *a2];

  result = swift_unknownObjectRelease();
  v19 = 0;
LABEL_6:
  *a3 = v19;
  return result;
}

void sub_236E6308C(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedManager];
  v25[0] = 0;
  v3 = [v2 cancelDownload:a1 error:v25];

  v4 = v25[0];
  if (v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    v6 = v4;
  }

  else
  {
    v7 = v25[0];
    v8 = sub_236E81994();

    swift_willThrow();
    if (qword_27DE87AC8 != -1)
    {
      swift_once();
    }

    v9 = sub_236E81DA4();
    __swift_project_value_buffer(v9, qword_27DE880A0);
    v10 = sub_236E820F4();
    v11 = a1;
    v12 = v8;
    v13 = sub_236E81D84();

    if (os_log_type_enabled(v13, v10))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v14 = 136446466;
      v17 = [v11 identifier];
      v18 = sub_236E81E94();
      v20 = v19;

      v21 = sub_236E381CC(v18, v20, v25);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2114;
      v22 = v8;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v23;
      *v15 = v23;
      _os_log_impl(&dword_236E28000, v13, v10, "The download with the ID “%{public}s” couldn’t be canceled: %{public}@", v14, 0x16u);
      sub_236E38DBC(v15, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x2383C0E50](v16, -1, -1);
      MEMORY[0x2383C0E50](v14, -1, -1);
    }

    else
    {
    }

    v24 = *MEMORY[0x277D85DE8];
  }
}

void sub_236E63478()
{
  sub_236E63588(319, &qword_27DE88140, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_236E63588(319, &qword_27DE88148, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_236E63588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_236E6360C()
{
  result = qword_27DE88158;
  if (!qword_27DE88158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE88158);
  }

  return result;
}

unint64_t sub_236E63658()
{
  result = qword_27DE88160;
  if (!qword_27DE88160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88160);
  }

  return result;
}

uint64_t sub_236E636AC()
{
  v1 = sub_236E819F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemDownloadManagerDelegateError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E654EC(v0, v9, type metadata accessor for SystemDownloadManagerDelegateError);
  (*(v2 + 32))(v5, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_236E82264();
  MEMORY[0x2383BFD30](0x204C525520656854, 0xAB000000009C80E2);
  sub_236E63C54(&unk_27DE87B30, MEMORY[0x277CC9260]);
  v10 = sub_236E82484();
  MEMORY[0x2383BFD30](v10);

  MEMORY[0x2383BFD30](0x100000000000002DLL, 0x8000000236E8AA70);
  v11 = v13[0];
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_236E638B0(uint64_t a1)
{
  v2 = sub_236E63C54(&unk_27DE88178, type metadata accessor for SystemDownloadManagerDelegateError);

  return MEMORY[0x28211F4C8](a1, v2);
}

uint64_t sub_236E63920(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236E63A18;

  return v7(a1);
}

uint64_t sub_236E63A18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_236E63B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E59578;

  return sub_236E627D8(a1, v4, v5, v7, v6);
}

uint64_t sub_236E63BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E63C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236E63C9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AssetPack(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_236E59578;

  return sub_236E62B70(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_236E63DCC(uint64_t a1)
{
  v4 = *(type metadata accessor for AssetPack(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E59578;

  return sub_236E62970(a1, v6, v7, v1 + v5);
}

uint64_t sub_236E63EBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236E59578;

  return sub_236E63920(a1, v5);
}

void *sub_236E63F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88040, &qword_236E85140);
  v2 = *v0;
  v3 = sub_236E82364();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_236E640DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88190, &qword_236E85420);
  v2 = *v0;
  v3 = sub_236E82364();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_236E64248(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88040, &qword_236E85140);
  v38 = a2;
  result = sub_236E82374();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_236E82574();
      sub_236E81F04();
      result = sub_236E82594();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_236E644E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88190, &qword_236E85420);
  v39 = a2;
  result = sub_236E82374();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_236E82574();
      sub_236E81F04();
      result = sub_236E82594();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_236E6478C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_236E821B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_236E82574();

      sub_236E81F04();
      v13 = sub_236E82594();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
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

LABEL_4:
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

  return result;
}

uint64_t sub_236E6493C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_236E7B334(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_236E644E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_236E7B334(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_236E82504();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_236E640DC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_236E64AB4(uint64_t a1)
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
  v10[1] = sub_236E59578;

  return sub_236E5FB54(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_236E64B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_236E3A910;

  return sub_236E60558(a1, v4, v5, v7, v6);
}

uint64_t sub_236E64C48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_236E59578;

  return sub_236E5F44C(v2, v3, v5, v4);
}

uint64_t sub_236E64D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E64D78(uint64_t a1)
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
  v11[1] = sub_236E59578;

  return sub_236E5E3FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236E64E74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_236E59578;

  return sub_236E5DBE0(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_236E64F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_236E3A910;

  return sub_236E5C8E4(a1, v4, v5, v6, v7);
}

unint64_t sub_236E65058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881B8, &qword_236E854B8);
    v3 = sub_236E82384();
    v4 = a1 + 32;

    while (1)
    {
      sub_236E593A8(v4, &v13, &unk_27DE881C0, &qword_236E85360);
      v5 = v13;
      v6 = v14;
      result = sub_236E7B334(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_236E6528C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_236E65188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88190, &qword_236E85420);
    v3 = sub_236E82384();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_236E7B334(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_236E6528C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_236E6529C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881D0, &unk_236E854C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_236E65314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881D0, &unk_236E854C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_236E653A4(uint64_t a1)
{
  sub_236E6545C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_236E819F4();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_236E6545C()
{
  if (!qword_27DE881E8)
  {
    v0 = sub_236E819F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE881E8);
    }
  }
}

uint64_t sub_236E654EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236E65554()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE881F0);
  __swift_project_value_buffer(v0, qword_27DE881F0);
  return sub_236E81D94();
}

uint64_t ManifestInstaller.__allocating_init()()
{
  v0 = swift_allocObject();
  ManifestInstaller.init()();
  return v0;
}

void *ManifestInstaller.init()()
{
  v2 = v0;
  v3 = *v0;
  if (qword_27DE87AD0 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE881F0);
  v5 = sub_236E820E4();
  v6 = sub_236E81D84();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_236E28000, v6, v5, "Init", v7, 2u);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  sub_236E81C54();
  v8 = sub_236E81C44();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v8;
  }

  return v2;
}