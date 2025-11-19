uint64_t sub_241128F24()
{
  v101 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1128);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 207);
    v5 = *(v0 + 1336);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "People returned %{BOOL}d for PeopleClient.canSendFamilyScreenTimeRequestIMessage()", v6, 8u);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  v97 = *(v0 + 207);
  sub_2410FC88C(*(v0 + 864), v0 + 720, &qword_27E530CF8, &qword_2411684A0);
  v7 = *(v0 + 744);
  if (v7)
  {
    v8 = *(v0 + 752);
    __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v9 = sub_241165978();
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1((v0 + 720));
  }

  else
  {
    sub_2410FB29C(v0 + 720, &qword_27E530CF8, &qword_2411684A0);
    v9 = 0;
  }

  v11 = *(v0 + 896);
  v12 = *(v0 + 888);
  v13 = *(v0 + 880);
  v14 = *(v0 + 856);
  v15 = sub_2411653A8();
  v16 = *(v12 + 104);
  v16(v11, *MEMORY[0x277CEEE00], v13);
  MEMORY[0x245CDB590](v9, v7, v15, v11);

  v17 = *(v12 + 8);
  v17(v11, v13);
  if (v97)
  {
    sub_2410FC88C(*(v0 + 864), v0 + 680, &qword_27E530CF8, &qword_2411684A0);
    v18 = *(v0 + 704);
    if (v18)
    {
      v19 = *(v0 + 712);
      __swift_project_boxed_opaque_existential_1((v0 + 680), *(v0 + 704));
      v20 = sub_241165978();
      v18 = v21;
      __swift_destroy_boxed_opaque_existential_1((v0 + 680));
    }

    else
    {
      sub_2410FB29C(v0 + 680, &qword_27E530CF8, &qword_2411684A0);
      v20 = 0;
    }

    v45 = *(v0 + 896);
    v46 = *(v0 + 880);
    v47 = *(v0 + 856);
    v48 = sub_2411653A8();
    v16(v45, *MEMORY[0x277CEEE10], v46);
    MEMORY[0x245CDB590](v20, v18, v48, v45);

    v17(v45, v46);
    v49 = *(v0 + 1128);
    v50 = sub_241165268();
    v51 = sub_241166068();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2410F8000, v50, v51, "Send destinations are valid", v52, 2u);
      MEMORY[0x245CDC5E0](v52, -1, -1);
    }

    v53 = *(v0 + 1312);
    v54 = *(v0 + 1296);
    v55 = *(v0 + 1288);
    v68 = *(v0 + 1272);
    v72 = *(v0 + 1176);
    v73 = *(v0 + 1216);
    v69 = *(v0 + 1168);
    v70 = *(v0 + 1280);
    v56 = *(v0 + 1112);
    v78 = *(v0 + 1104);
    v79 = *(v0 + 1080);
    v57 = *(v0 + 1056);
    v76 = *(v0 + 1048);
    v77 = *(v0 + 1064);
    v58 = *(v0 + 1032);
    v74 = *(v0 + 1024);
    v75 = *(v0 + 1040);
    v80 = *(v0 + 1072);
    v81 = *(v0 + 1016);
    v83 = *(v0 + 992);
    v85 = *(v0 + 968);
    v71 = *(v0 + 960);
    v87 = *(v0 + 952);
    v90 = *(v0 + 944);
    v93 = *(v0 + 936);
    v96 = *(v0 + 920);
    v100 = *(v0 + 896);

    v59 = *(v53 + 80);
    v60 = *(v53 + 74);
    v61 = sub_241165AA8();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();

    sub_241165A88();
    v64 = objc_allocWithZone(sub_2411658E8());
    v65 = sub_2411658C8();

    sub_241109164(v68, v70);
    sub_241109164(v69, v72);

    sub_241132558(v0 + 144);
    sub_2410FB29C(v71, &qword_27E530658, &unk_241167410);
    (*(v58 + 8))(v75, v74);
    (*(v57 + 8))(v77, v76);

    v66 = *(v0 + 8);
    v67 = *MEMORY[0x277D85DE8];

    return v66(v65);
  }

  else
  {
    v22 = *(v0 + 1312);
    v23 = *(v0 + 1296);
    v24 = *(v0 + 1288);
    v25 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v86 = *(v0 + 1216);
    v82 = *(v0 + 1176);
    v27 = *(v0 + 1168);
    v28 = *(v0 + 1112);
    v29 = *(v0 + 1056);
    v94 = *(v0 + 1048);
    v98 = *(v0 + 1064);
    v30 = *(v0 + 1032);
    v88 = *(v0 + 1024);
    v91 = *(v0 + 1040);
    v84 = *(v0 + 960);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v31 = 4;
    swift_willThrow();

    sub_241109164(v26, v25);
    sub_241109164(v27, v82);

    sub_241132558(v0 + 144);
    sub_2410FB29C(v84, &qword_27E530658, &unk_241167410);
    (*(v30 + 8))(v91, v88);
    (*(v29 + 8))(v98, v94);
    v32 = *(v0 + 1104);
    v33 = *(v0 + 1080);
    v34 = *(v0 + 1072);
    v35 = *(v0 + 1064);
    v36 = *(v0 + 1040);
    v37 = *(v0 + 1016);
    v38 = *(v0 + 992);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 952);
    v89 = *(v0 + 944);
    v92 = *(v0 + 936);
    v95 = *(v0 + 920);
    v99 = *(v0 + 896);

    v42 = *(v0 + 8);
    v43 = *MEMORY[0x277D85DE8];

    return v42();
  }
}

uint64_t sub_2411296BC()
{
  v84 = v0;
  v83[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  swift_willThrow();

  *(v0 + 204) = 1;
  *(v0 + 1208) = 0u;
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 856);
  sub_241165298();
  if (v4(v6, 1, v5) == 1)
  {
    sub_2410FB29C(*(v0 + 1072), &qword_27E530CE8, &qword_241168400);
    goto LABEL_7;
  }

  v8 = (*(*(v0 + 1144) + 88))(*(v0 + 1072), *(v0 + 1136));
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1136);
  v11 = *(v0 + 1072);
  if (v8 != *MEMORY[0x277CEEAD8])
  {
    (*(v9 + 8))(*(v0 + 1072), v10);
LABEL_7:
    *(v0 + 1280) = 0xF000000000000000;
    *(v0 + 1272) = 0;
    sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 544))
    {
      v17 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v0 + 520));
    }

    else
    {
      sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 584))
    {
      v18 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
      sub_241165968();
      __swift_destroy_boxed_opaque_existential_1((v0 + 560));
    }

    else
    {
      sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 624))
    {
      v19 = *(v0 + 632);
      __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
      sub_241165958();
      __swift_destroy_boxed_opaque_existential_1((v0 + 600));
    }

    else
    {
      sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    }

    v20 = *(v0 + 204);
    v21 = *(v0 + 1208);
    v22 = *(v0 + 1176);
    v23 = *(v0 + 1168);
    v24 = *(v0 + 1128);
    v25 = *(v0 + 856);
    v26 = *(v0 + 202);
    sub_241165CE8();
    sub_2411351C8(v23, v22);
    sub_2411351C8(0, 0xF000000000000000);
    sub_241165488();
    v25;
    *(v0 + 1288) = sub_241165C58();
    v27 = sub_241165268();
    v28 = sub_241166068();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 202);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83[0] = v31;
      *v30 = 136315138;
      v32 = sub_241165468();
      v34 = sub_241156B38(v32, v33, v83);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2410F8000, v27, v28, "Attempting to inflate recipient group %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245CDC5E0](v31, -1, -1);
      MEMORY[0x245CDC5E0](v30, -1, -1);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    v35 = *(v0 + 960);
    if (*(v0 + 664))
    {
      v36 = *(v0 + 672);
      __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v0 + 640));
    }

    else
    {
      v37 = *(v0 + 912);
      v38 = *(v0 + 904);
      sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
      (*(v37 + 56))(v35, 1, 1, v38);
    }

    v39 = *(v0 + 960);
    v40 = *(v0 + 952);
    v41 = *(v0 + 936);
    v42 = *(v0 + 928);
    v43 = *(v0 + 912);
    v44 = *(v0 + 904);
    (*(v43 + 104))(v40, *MEMORY[0x277CEED80], v44);
    (*(v43 + 56))(v40, 0, 1, v44);
    v45 = *(v42 + 48);
    sub_2410FC88C(v39, v41, &qword_27E530658, &unk_241167410);
    sub_2410FC88C(v40, v41 + v45, &qword_27E530658, &unk_241167410);
    v46 = *(v43 + 48);
    if (v46(v41, 1, v44) == 1)
    {
      v47 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      if (v46(v41 + v45, 1, v47) == 1)
      {
        sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
LABEL_29:
        v65 = *(v0 + 856);
        v66 = sub_2411653A8();
        v67 = sub_241165368();
        v69 = v68;

        if (v67 == 0xD00000000000001DLL && 0x800000024116A040 == v69)
        {

LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_2411673F0;
          v72 = *MEMORY[0x277D188E0];
          *(v71 + 32) = sub_241165DD8();
          *(v71 + 40) = v73;
          v57 = sub_2410FB2FC(v71);
          swift_setDeallocating();
          sub_2410FB464(v71 + 32);
          swift_deallocClassInstance();
          v58 = 1;
          goto LABEL_34;
        }

        v70 = sub_2411663E8();

        if (v70)
        {
          goto LABEL_33;
        }

LABEL_27:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        v55 = *MEMORY[0x277D18868];
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v56;
        v57 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
        v58 = 0;
LABEL_34:
        *(v0 + 205) = v58;
        *(v0 + 1296) = v57;
        v74 = *(v0 + 201);
        sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
        *(v0 + 184) = 0;
        *(v0 + 192) = v57;
        *(v0 + 200) = v74;

        sub_2411324FC(v0 + 144, v0 + 208);
        v75 = swift_task_alloc();
        *(v0 + 1304) = v75;
        *v75 = v0;
        v75[1] = sub_241127C58;
        v76 = *(v0 + 202);
        v77 = *MEMORY[0x277D85DE8];

        return sub_24115A1D4(v0 + 208, v76);
      }
    }

    else
    {
      v48 = *(v0 + 904);
      sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
      v49 = v46(v41 + v45, 1, v48);
      v50 = *(v0 + 952);
      v51 = *(v0 + 944);
      if (v49 != 1)
      {
        v59 = *(v0 + 936);
        v60 = *(v0 + 920);
        v61 = *(v0 + 912);
        v62 = *(v0 + 904);
        (*(v61 + 32))(v60, v41 + v45, v62);
        sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
        v63 = sub_241165D98();
        v64 = *(v61 + 8);
        v64(v60, v62);
        sub_2410FB29C(v50, &qword_27E530658, &unk_241167410);
        v64(v51, v62);
        sub_2410FB29C(v59, &qword_27E530658, &unk_241167410);
        if ((v63 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      v52 = *(v0 + 912);
      v53 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      (*(v52 + 8))(v51, v53);
    }

    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_27;
  }

  v12 = *(v0 + 984);
  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  (*(v9 + 96))(*(v0 + 1072), v10);
  v15 = *v11;
  *(v0 + 1224) = v15;
  sub_241165AF8();
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v16 = *(v0 + 968);

    sub_2410FB29C(v16, &qword_27E530AB0, &qword_241168080);
    goto LABEL_7;
  }

  (*(*(v0 + 984) + 32))(*(v0 + 992), *(v0 + 968), *(v0 + 976));
  *(v0 + 1232) = [objc_opt_self() sharedSession];
  v79 = *(MEMORY[0x277CC9D20] + 4);
  v80 = swift_task_alloc();
  *(v0 + 1240) = v80;
  *v80 = v0;
  v80[1] = sub_24112722C;
  v81 = *(v0 + 992);
  v82 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28211ED00](v81, 0);
}

uint64_t sub_24112A174()
{
  v75 = v0;
  v74[1] = *MEMORY[0x277D85DE8];

  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1248);
  __swift_project_value_buffer(*(v0 + 1120), qword_27E533A20);
  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1224);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to download app icon from URL: %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
  *(v0 + 1280) = 0xF000000000000000;
  *(v0 + 1272) = 0;
  sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 544))
  {
    v12 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
    sub_241165978();
    __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  }

  else
  {
    sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 584))
  {
    v13 = *(v0 + 592);
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    sub_241165968();
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  else
  {
    sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 624))
  {
    v14 = *(v0 + 632);
    __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
    sub_241165958();
    __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  }

  else
  {
    sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  }

  v15 = *(v0 + 204);
  v16 = *(v0 + 1208);
  v17 = *(v0 + 1176);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 856);
  v21 = *(v0 + 202);
  sub_241165CE8();
  sub_2411351C8(v18, v17);
  sub_2411351C8(0, 0xF000000000000000);
  sub_241165488();
  v20;
  *(v0 + 1288) = sub_241165C58();
  v22 = sub_241165268();
  v23 = sub_241166068();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 202);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v74[0] = v26;
    *v25 = 136315138;
    v27 = sub_241165468();
    v29 = sub_241156B38(v27, v28, v74);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2410F8000, v22, v23, "Attempting to inflate recipient group %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x245CDC5E0](v26, -1, -1);
    MEMORY[0x245CDC5E0](v25, -1, -1);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
  v30 = *(v0 + 960);
  if (*(v0 + 664))
  {
    v31 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
    sub_241165948();
    __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  }

  else
  {
    v32 = *(v0 + 912);
    v33 = *(v0 + 904);
    sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    (*(v32 + 56))(v30, 1, 1, v33);
  }

  v34 = *(v0 + 960);
  v35 = *(v0 + 952);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 912);
  v39 = *(v0 + 904);
  (*(v38 + 104))(v35, *MEMORY[0x277CEED80], v39);
  (*(v38 + 56))(v35, 0, 1, v39);
  v40 = *(v37 + 48);
  sub_2410FC88C(v34, v36, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v35, v36 + v40, &qword_27E530658, &unk_241167410);
  v41 = *(v38 + 48);
  if (v41(v36, 1, v39) == 1)
  {
    v42 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    if (v41(v36 + v40, 1, v42) == 1)
    {
      sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
      goto LABEL_28;
    }

LABEL_25:
    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_26;
  }

  v43 = *(v0 + 904);
  sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
  v44 = v41(v36 + v40, 1, v43);
  v45 = *(v0 + 952);
  v46 = *(v0 + 944);
  if (v44 == 1)
  {
    v47 = *(v0 + 912);
    v48 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    (*(v47 + 8))(v46, v48);
    goto LABEL_25;
  }

  v54 = *(v0 + 936);
  v55 = *(v0 + 920);
  v56 = *(v0 + 912);
  v57 = *(v0 + 904);
  (*(v56 + 32))(v55, v36 + v40, v57);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
  v58 = sub_241165D98();
  v59 = *(v56 + 8);
  v59(v55, v57);
  sub_2410FB29C(v45, &qword_27E530658, &unk_241167410);
  v59(v46, v57);
  sub_2410FB29C(v54, &qword_27E530658, &unk_241167410);
  if ((v58 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v60 = *(v0 + 856);
  v61 = sub_2411653A8();
  v62 = sub_241165368();
  v64 = v63;

  if (v62 != 0xD00000000000001DLL || 0x800000024116A040 != v64)
  {
    v65 = sub_2411663E8();

    if (v65)
    {
      goto LABEL_32;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    v50 = *MEMORY[0x277D18868];
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v51;
    v52 = sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
    v53 = 0;
    goto LABEL_33;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2411673F0;
  v67 = *MEMORY[0x277D188E0];
  *(v66 + 32) = sub_241165DD8();
  *(v66 + 40) = v68;
  v52 = sub_2410FB2FC(v66);
  swift_setDeallocating();
  sub_2410FB464(v66 + 32);
  swift_deallocClassInstance();
  v53 = 1;
LABEL_33:
  *(v0 + 205) = v53;
  *(v0 + 1296) = v52;
  v69 = *(v0 + 201);
  sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
  *(v0 + 184) = 0;
  *(v0 + 192) = v52;
  *(v0 + 200) = v69;

  sub_2411324FC(v0 + 144, v0 + 208);
  v70 = swift_task_alloc();
  *(v0 + 1304) = v70;
  *v70 = v0;
  v70[1] = sub_241127C58;
  v71 = *(v0 + 202);
  v72 = *MEMORY[0x277D85DE8];

  return sub_24115A1D4(v0 + 208, v71);
}

uint64_t sub_24112AB68()
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1128);

  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1352);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "People threw error for PeopleClient.canSendFamilyScreenTimeRequestIMessage(): %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  sub_2410FC88C(*(v0 + 864), v0 + 720, &qword_27E530CF8, &qword_2411684A0);
  v12 = *(v0 + 744);
  if (v12)
  {
    v13 = *(v0 + 752);
    __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v14 = sub_241165978();
    v12 = v15;
    __swift_destroy_boxed_opaque_existential_1((v0 + 720));
  }

  else
  {
    sub_2410FB29C(v0 + 720, &qword_27E530CF8, &qword_2411684A0);
    v14 = 0;
  }

  v16 = *(v0 + 896);
  v17 = *(v0 + 888);
  v18 = *(v0 + 880);
  v19 = *(v0 + 856);
  v20 = sub_2411653A8();
  (*(v17 + 104))(v16, *MEMORY[0x277CEEE00], v18);
  MEMORY[0x245CDB590](v14, v12, v20, v16);

  (*(v17 + 8))(v16, v18);
  v21 = *(v0 + 1312);
  v22 = *(v0 + 1296);
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1280);
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1168);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1056);
  v51 = *(v0 + 1048);
  v53 = *(v0 + 1064);
  v49 = *(v0 + 1040);
  v29 = *(v0 + 1032);
  v46 = *(v0 + 1216);
  v47 = *(v0 + 1024);
  v44 = *(v0 + 1176);
  v45 = *(v0 + 960);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
  sub_2411351DC();
  swift_allocError();
  *v30 = 4;
  swift_willThrow();

  sub_241109164(v25, v24);
  sub_241109164(v26, v44);

  sub_241132558(v0 + 144);
  sub_2410FB29C(v45, &qword_27E530658, &unk_241167410);
  (*(v29 + 8))(v49, v47);
  (*(v28 + 8))(v53, v51);
  v31 = *(v0 + 1104);
  v32 = *(v0 + 1080);
  v33 = *(v0 + 1072);
  v34 = *(v0 + 1064);
  v35 = *(v0 + 1040);
  v36 = *(v0 + 1016);
  v37 = *(v0 + 992);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 952);
  v48 = *(v0 + 944);
  v50 = *(v0 + 936);
  v52 = *(v0 + 920);
  v54 = *(v0 + 896);

  v41 = *(v0 + 8);
  v42 = *MEMORY[0x277D85DE8];

  return v41();
}

uint64_t sub_24112AFBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_2411652E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v45 = &v36 - v15;
  v49 = *(v2 + 320);
  v48 = *(v49 + 16);
  if (v48)
  {
    v16 = 0;
    v17 = v49 + 32;
    v47 = (v13 + 48);
    v41 = (v13 + 88);
    v42 = (v13 + 32);
    v40 = *MEMORY[0x277CEEAD0];
    v39 = (v13 + 8);
    *&v14 = 136315394;
    v38 = v14;
    v43 = v8;
    v44 = v7;
    while (v16 < *(v49 + 16))
    {
      sub_241135730(v17, v51);
      sub_241165298();
      if ((*v47)(v7, 1, v8) == 1)
      {
        sub_2410FB29C(v7, &qword_27E530CE8, &qword_241168400);
        v18 = 0;
      }

      else
      {
        v19 = *v42;
        v20 = v45;
        (*v42)(v45, v7, v8);
        v21 = v46;
        v19(v46, v20, v8);
        v22 = (*v41)(v21, v8);
        v18 = v22 == v40;
        (*v39)(v21, v8);
      }

      if (qword_27E530618 != -1)
      {
        swift_once();
      }

      v23 = sub_241165288();
      __swift_project_value_buffer(v23, qword_27E533BB8);
      v24 = a1;
      v25 = sub_241165268();
      v26 = sub_241166038();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = a1;
        v29 = swift_slowAlloc();
        v50 = v29;
        *v27 = v38;
        v30 = sub_241165328();
        v32 = sub_241156B38(v30, v31, &v50);

        *(v27 + 4) = v32;
        *(v27 + 12) = 1024;
        *(v27 + 14) = v18;
        _os_log_impl(&dword_2410F8000, v25, v26, "Can process question %s: %{BOOL}d", v27, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v33 = v29;
        a1 = v28;
        v7 = v44;
        MEMORY[0x245CDC5E0](v33, -1, -1);
        v34 = v27;
        v8 = v43;
        MEMORY[0x245CDC5E0](v34, -1, -1);
      }

      if (v18)
      {
        return sub_24110324C(v51, v37);
      }

      ++v16;
      result = __swift_destroy_boxed_opaque_existential_1(v51);
      v17 += 40;
      if (v48 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v35 = v37;
    *(v37 + 32) = 0;
    *v35 = 0u;
    v35[1] = 0u;
  }

  return result;
}

uint64_t sub_24112B3BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24112B48C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 152) = a2;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_24112B4B4, 0, 0);
}

uint64_t sub_24112B4B4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;

  if (v2)
  {
    sub_241165C08();
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_24112B590;
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 152);

  return sub_241125358(v6, v7, v0 + 16, 1);
}

uint64_t sub_24112B590(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_2410FB29C(v3 + 16, &qword_27E530CF8, &qword_2411684A0);
  if (v1)
  {
    v5 = sub_24112B930;
  }

  else
  {
    v5 = sub_24112B6BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24112B6BC()
{
  v1 = v0[11];
  v2 = sub_2411658D8();
  v0[13] = v2;
  v3 = sub_2411658A8();
  v0[14] = v3;
  v4 = sub_2411658B8();
  v0[15] = v4;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_24112B788;
  v6 = v0[9];

  return sub_2411238D4(v2, v3, v4);
}

uint64_t sub_24112B788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_24112B948;
  }

  else
  {
    v9 = v4[14];
    v8 = v4[15];
    v10 = v4[13];

    v4[18] = a1;
    v7 = sub_24112B8C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24112B8C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_24112B948()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];

  v5 = v0[17];
  v6 = v0[1];

  return v6();
}

uint64_t sub_24112B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v7 = sub_241165BD8();
  v5[35] = v7;
  v8 = *(v7 - 8);
  v5[36] = v8;
  v9 = *(v8 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v5[40] = v10;
  v11 = *(v10 - 8);
  v5[41] = v11;
  v12 = *(v11 + 64) + 15;
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112BB4C, 0, 0);
}

uint64_t sub_24112BB4C()
{
  v1 = v0[29];
  if (*(v1 + 16))
  {
    v2 = v0[42];
    v3 = v0[40];
    v4 = v0[32];
    v64 = v0[33];
    v6 = v0[30];
    v5 = v0[31];
    v7 = *(v0[41] + 80);
    v8 = (v7 + 32) & ~v7;
    sub_2410FC88C(v1 + v8, v2, &qword_27E5309F0, &qword_2411692B0);
    v9 = *(v2 + 8);

    v63 = *(v3 + 48);
    v10 = *(v2 + *(v3 + 64));
    sub_241165CC8();

    v11 = objc_allocWithZone(sub_2411656E8());

    v12 = v4;
    v13 = sub_2411656D8();
    v0[43] = v13;
    v14 = sub_2411650D8();
    v15 = *(*(v14 - 8) + 8);
    v15(v2 + v63, v14);
    sub_241165CE8();
    sub_2410FC88C(v1 + v8, v2, &qword_27E5309F0, &qword_2411692B0);
    v16 = *(v2 + 8);

    v17 = *(v3 + 48);
    v18 = *(v2 + *(v3 + 64));
    v19 = v13;
    v20 = sub_241165C68();
    v0[44] = v20;
    v15(v2 + v17, v14);
    if (*(v64 + 24))
    {
      v21 = *(v64 + 24);

      sub_241165C08();

      if (v0[27])
      {
        v22 = v0[35];
        v23 = v0[36];
        v24 = v0[34];
        v25 = v0[28];
        __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
        sub_241165948();
        __swift_destroy_boxed_opaque_existential_1(v0 + 24);
        if ((*(v23 + 48))(v24, 1, v22) != 1)
        {
          (*(v0[36] + 32))(v0[39], v0[34], v0[35]);
          goto LABEL_13;
        }

LABEL_11:
        v34 = v0[35];
        v35 = v0[36];
        v36 = v0[34];
        (*(v35 + 104))(v0[39], *MEMORY[0x277CEED70], v34);
        if ((*(v35 + 48))(v36, 1, v34) != 1)
        {
          sub_2410FB29C(v0[34], &qword_27E530658, &unk_241167410);
        }

LABEL_13:
        v37 = v0[38];
        v39 = v0[36];
        v38 = v0[37];
        v40 = v0[35];
        (*(v39 + 16))(v37, v0[39], v40);
        v41 = sub_241165CC8();
        v42 = sub_2411653A8();

        v0[45] = sub_241154E14(v37);
        v43 = sub_241165C98();
        v45 = v44;
        (*(v39 + 104))(v38, *MEMORY[0x277CEED80], v40);
        v46 = sub_241165BB8();
        v48 = v47;
        v49 = *(v39 + 8);
        v0[46] = v49;
        v0[47] = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49(v38, v40);
        if (v45)
        {
          if (v43 == v46 && v45 == v48)
          {
          }

          else
          {
            v50 = sub_2411663E8();

            if ((v50 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v51 = sub_241165CC8();
          v52 = sub_2411653A8();

          v53 = sub_241165368();
          v55 = v54;

          if (v53 == 0xD00000000000001DLL && 0x800000024116A040 == v55)
          {

LABEL_23:
            v57 = MEMORY[0x277D188E0];
LABEL_25:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2411673F0;
            v59 = *v57;
            *(inited + 32) = sub_241165DD8();
            *(inited + 40) = v60;
            v61 = sub_2410FB2FC(inited);
            v0[48] = v61;
            swift_setDeallocating();
            sub_2410FB464(inited + 32);
            v62 = swift_task_alloc();
            v0[49] = v62;
            *v62 = v0;
            v62[1] = sub_24112C174;

            return sub_241150BD0((v0 + 2), v20, v61);
          }

          v56 = sub_2411663E8();

          if (v56)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

LABEL_24:
        v57 = MEMORY[0x277D18868];
        goto LABEL_25;
      }

      sub_2410FB29C((v0 + 24), &qword_27E530CF8, &qword_2411684A0);
    }

    (*(v0[36] + 56))(v0[34], 1, 1, v0[35]);
    goto LABEL_11;
  }

  sub_241132370();
  swift_allocError();
  *v26 = 1;
  swift_willThrow();
  v27 = v0[42];
  v29 = v0[38];
  v28 = v0[39];
  v30 = v0[37];
  v31 = v0[34];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24112C174()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);

  if (v0)
  {
    v6 = sub_24112C548;
  }

  else
  {
    v6 = sub_24112C2A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24112C2A8()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v2 = sub_241165288();
    __swift_project_value_buffer(v2, qword_27E5339F0);
    v3 = sub_241165268();
    v4 = sub_241166048();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2410F8000, v3, v4, "The data for the messages payload obtained from the AskTo extension was nil.", v5, 2u);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }

    v7 = v0[46];
    v6 = v0[47];
    v9 = v0[44];
    v8 = v0[45];
    v10 = v0[43];
    v11 = v0[39];
    v12 = v0[35];

    sub_241132370();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    sub_241102CC0((v0 + 2));
    v7(v11, v12);
    v14 = v0[42];
    v16 = v0[38];
    v15 = v0[39];
    v17 = v0[37];
    v18 = v0[34];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[46];
    v22 = v0[47];
    v23 = v0[45];
    v24 = v0[42];
    v25 = v0[43];
    v26 = v0[39];
    v31 = v0[38];
    v32 = v0[37];
    v27 = v0[35];
    v33 = v0[34];
    v28 = v0[2];
    sub_241134D44(v28, v1);

    sub_241102CC0((v0 + 2));

    v21(v26, v27);

    v29 = v0[1];
    v30 = v0[44];

    return v29(v30, v28, v1);
  }
}

uint64_t sub_24112C548()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to get the new Messages payload from the AskTo extension. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[43];
  v17 = v0[39];
  v18 = v0[35];

  swift_willThrow();

  v13(v17, v18);
  v19 = v0[50];
  v20 = v0[42];
  v22 = v0[38];
  v21 = v0[39];
  v23 = v0[37];
  v24 = v0[34];

  v25 = v0[1];

  return v25();
}

uint64_t sub_24112C754(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_241165BD8();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112C818, 0, 0);
}

uint64_t sub_24112C818()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = sub_241165C98();
  v7 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277CEED80], v3);
  v8 = sub_241165BB8();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (!v7)
  {

    goto LABEL_18;
  }

  if (v5 == v8 && v7 == v10)
  {

    goto LABEL_10;
  }

  v12 = sub_2411663E8();

  if (v12)
  {
LABEL_10:
    v13 = *(v0 + 192);
    v14 = sub_241165CC8();
    v15 = sub_2411653A8();

    v16 = sub_241165368();
    v18 = v17;

    if (v16 == 0xD00000000000001DLL && 0x800000024116A040 == v18)
    {
    }

    else
    {
      v19 = sub_2411663E8();

      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v20 = sub_241165288();
    __swift_project_value_buffer(v20, qword_27E5339F0);
    v21 = sub_241165268();
    v22 = sub_241166068();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_28;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Skipping IDS sync for ScreenTime request";
    goto LABEL_27;
  }

LABEL_18:
  v25 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  v27 = *MEMORY[0x277D18868];
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v28;
  v29 = sub_2410FB2FC(inited);
  *(v0 + 240) = v29;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v30 = sub_241165CB8();
  *(v0 + 248) = v30;
  if (v30)
  {
    v31 = *(v0 + 200);
    sub_241165C88();
    v32 = sub_241165478();
    if ((v32 & 0x10000) == 0)
    {
      v33 = v32;
      v34 = *(v0 + 208);
      if (*(v34 + 24))
      {
        v35 = *(v34 + 24);

        sub_241165C08();
      }

      else
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
      }

      *(v0 + 16) = v41;
      *(v0 + 32) = v42;
      *(v0 + 48) = v43;
      *(v0 + 56) = 0;
      *(v0 + 64) = v29;
      *(v0 + 72) = 0;

      sub_2411324FC(v0 + 16, v0 + 80);
      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      *v40 = v0;
      v40[1] = sub_24112CCBC;

      return sub_24115A1D4(v0 + 80, v33);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v36 = sub_241165288();
  __swift_project_value_buffer(v36, qword_27E5339F0);
  v21 = sub_241165268();
  v22 = sub_241166048();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "dictionaryRepresentation was nil for payload or could not parse recipient group. Skipping IDS sync";
LABEL_27:
    _os_log_impl(&dword_2410F8000, v21, v22, v24, v23, 2u);
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

LABEL_28:

  v37 = *(v0 + 232);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_24112CCBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v9 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[30];
    v6 = v3[31];

    v7 = sub_24112D21C;
  }

  else
  {
    v7 = sub_24112CDE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24112CDE0()
{
  v1 = *(v0[33] + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];

    v4 = 0;
LABEL_3:
    v0[35] = v3;
    v5 = (v1 + 40 + 16 * v4);
    while (v2 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_22:
        if (!sub_2411661F8())
        {
          goto LABEL_23;
        }

LABEL_12:
        if (qword_27E530638 != -1)
        {
          swift_once();
        }

        v13 = v0[30];
        v12 = v0[31];
        v14 = qword_27E533BE8;
        v15 = swift_task_alloc();
        v0[36] = v15;
        v15[2] = v14;
        v15[3] = v12;
        v15[4] = v3;
        v15[5] = v13;
        v16 = *(MEMORY[0x277D85A40] + 4);
        v17 = swift_task_alloc();
        v0[37] = v17;
        *v17 = v0;
        v17[1] = sub_24112D3D0;
        v18 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v15, v18);
      }

      v6 = v5 + 2;
      ++v4;
      v7 = *(v5 - 1);
      v8 = *v5;

      v9 = sub_241165DA8();
      v10 = IDSCopyBestGuessIDForID();

      v5 = v6;
      if (v10)
      {
        MEMORY[0x245CDB820]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_241165F18();
        }

        sub_241165F28();
        v3 = v36;
        goto LABEL_3;
      }
    }

    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_23:
    v28 = v0[30];
    v29 = v0[31];

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v30 = sub_241165288();
    __swift_project_value_buffer(v30, qword_27E5339F0);
    v22 = sub_241165268();
    v23 = sub_241166068();
    v31 = os_log_type_enabled(v22, v23);
    v32 = v0[33];
    if (v31)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No valid IDS destinations found from conversation participants. Skipping IDS sync.";
      goto LABEL_27;
    }
  }

  else
  {
    v19 = v0[30];
    v20 = v0[31];

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v21 = sub_241165288();
    __swift_project_value_buffer(v21, qword_27E5339F0);
    v22 = sub_241165268();
    v23 = sub_241166068();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[33];
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No conversation participants found. Skipping IDS sync.";
LABEL_27:
      _os_log_impl(&dword_2410F8000, v22, v23, v27, v26, 2u);
      MEMORY[0x245CDC5E0](v26, -1, -1);

      goto LABEL_29;
    }
  }

LABEL_29:
  sub_241132558((v0 + 2));
  v33 = v0[29];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24112D21C()
{
  v1 = v0[34];
  sub_241132558((v0 + 2));
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to inflate recipient group for IDS sync: %@. Skipping IDS sync.", v6, 0xCu);
    sub_2410FB29C(v7, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24112D3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_24112D6C4;
  }

  else
  {
    v5 = v2[36];
    v6 = v2[30];
    v7 = v2[31];

    v4 = sub_24112D508;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24112D508()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);

  v3 = sub_241165268();
  v4 = sub_241166068();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = v0[35];
    if (v6 >> 62)
    {
      if (v8 < 0)
      {
        v12 = v0[35];
      }

      v9 = sub_2411661F8();
      v13 = v0[35];
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v0[33];

    *(v7 + 4) = v9;

    _os_log_impl(&dword_2410F8000, v3, v4, "Sent IDS message for cross-device bubble update sync to %ld destinations", v7, 0xCu);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  else
  {
    v10 = v0[33];
    v11 = v0[35];
    swift_bridgeObjectRelease_n();
  }

  sub_241132558((v0 + 2));
  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24112D6C4()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];

  v6 = v0[38];
  sub_241132558((v0 + 2));
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = v6;
  v9 = sub_241165268();
  v10 = sub_241166048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2410F8000, v9, v10, "Failed to inflate recipient group for IDS sync: %@. Skipping IDS sync.", v11, 0xCu);
    sub_2410FB29C(v12, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24112D8A8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_241165728();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112D968, 0, 0);
}

uint64_t sub_24112D968()
{
  v42 = v0;
  v1 = *(v0[4] + 24);
  v0[8] = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

  v5 = sub_241165B78();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {

LABEL_12:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v28 = sub_241165288();
    __swift_project_value_buffer(v28, qword_27E5339F0);
    v29 = sub_241165268();
    v30 = sub_241166048();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116B4D0, v41);
      _os_log_impl(&dword_2410F8000, v29, v30, "%s Client is missing required entitlement com.apple.asktod", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CDC5E0](v32, -1, -1);
      MEMORY[0x245CDC5E0](v31, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = v6;
  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116B4D0, v41);
    *(v12 + 12) = 2080;
    v14 = sub_241165328();
    v16 = sub_241156B38(v14, v15, v41);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_2410F8000, v9, v10, "%s called with question ID: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v17 = *MEMORY[0x277D196D0];
  v18 = IMBalloonExtensionIDWithSuffix();
  if (v18)
  {
    v19 = v0[3];
    v20 = v18;
    v21 = sub_241165DD8();
    v23 = v22;

    v0[9] = v23;
    v24 = swift_task_alloc();
    v0[10] = v24;
    v24[2] = v21;
    v24[3] = v23;
    v24[4] = v19;
    v25 = *(MEMORY[0x277D859E0] + 4);
    v26 = swift_task_alloc();
    v0[11] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D00, &qword_2411684A8);
    *v26 = v0;
    v26[1] = sub_24112DEBC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000024116B4D0, sub_241134D98, v24, v27);
  }

  v36 = sub_241165268();
  v37 = sub_241166048();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2410F8000, v36, v37, "AskTo messages extension bundle identifier was nil", v38, 2u);
    MEMORY[0x245CDC5E0](v38, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v39 = 2;
  swift_willThrow();

LABEL_17:
  v34 = v0[7];

  v35 = v0[1];

  return v35();
}

uint64_t sub_24112DEBC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24112DFF0, 0, 0);
}

uint64_t sub_24112DFF0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24112E064(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = sub_241165DA8();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v5;
  aBlock[4] = sub_241134E1C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241135D58;
  aBlock[3] = &block_descriptor_100;
  v8 = _Block_copy(aBlock);
  v9 = a4;

  IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
  _Block_release(v8);

  swift_beginAccess();
  v10 = *(v5 + 16);

  sub_241142DCC(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D08, &qword_2411684B0);
  sub_241165F78();
}

uint64_t sub_24112E1F4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v92 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531000, &unk_2411684B8);
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9);
  v91 = (&v83 - v11);
  v12 = sub_241165B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v83 - v19;
  v21 = sub_2411650D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v93 = a2;
  v94 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_2410FC88C(a3, v20, &qword_27E530AB0, &qword_241168080);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v85 = a5;
    (*(v22 + 32))(v94, v20, v21);
    v29 = qword_27E530580;
    v30 = v93;

    if (v29 != -1)
    {
      swift_once();
    }

    v31 = sub_241165288();
    v32 = __swift_project_value_buffer(v31, qword_27E5339F0);

    v33 = a4;
    v88 = v32;
    v34 = v30;
    v35 = sub_241165268();
    v36 = sub_241166038();

    v37 = os_log_type_enabled(v35, v36);
    v86 = v33;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v87 = v12;
      v40 = v39;
      v95[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_241156B38(v92, v34, v95);
      *(v38 + 12) = 2080;
      v41 = sub_241165328();
      v43 = sub_241156B38(v41, v42, v95);
      v44 = v13;
      v45 = v21;
      v46 = v16;
      v47 = v22;
      v48 = v44;
      v49 = v43;

      *(v38 + 14) = v49;
      v50 = v48;
      v22 = v47;
      v16 = v46;
      v21 = v45;
      v13 = v50;
      _os_log_impl(&dword_2410F8000, v35, v36, "Inspecting AskTo message with GUID %s for question ID %s", v38, 0x16u);
      swift_arrayDestroy();
      v51 = v40;
      v12 = v87;
      MEMORY[0x245CDC5E0](v51, -1, -1);
      MEMORY[0x245CDC5E0](v38, -1, -1);
    }

    sub_241165B48();
    sub_241165CE8();
    v52 = MEMORY[0x277CEEE38];
    sub_2411356E8(&qword_27E530C50, MEMORY[0x277CEEE38]);
    sub_2411356E8(&qword_27E530C58, v52);
    sub_241165B38();
    v53 = v95[0];
    v54 = sub_241165CC8();
    v55 = sub_241165328();
    v57 = v56;

    v58 = v86;
    if (v55 == sub_241165328() && v57 == v59)
    {
    }

    else
    {
      v60 = sub_2411663E8();

      if ((v60 & 1) == 0)
      {

        (*(v13 + 8))(v16, v12);
LABEL_26:
        (*(v22 + 8))(v94, v21);
        return 0;
      }
    }

    v83 = v53;
    v87 = v12;
    v61 = v93;

    v62 = v58;
    v63 = sub_241165268();
    v64 = sub_241166068();

    v65 = os_log_type_enabled(v63, v64);
    v84 = v13;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v95[0] = v67;
      *v66 = 136315394;
      v68 = sub_241165328();
      v70 = sub_241156B38(v68, v69, v95);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = v92;
      *(v66 + 14) = sub_241156B38(v92, v93, v95);
      _os_log_impl(&dword_2410F8000, v63, v64, "Found matching question with ID %s in message GUID %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v67, -1, -1);
      v72 = v66;
      v61 = v93;
      MEMORY[0x245CDC5E0](v72, -1, -1);
    }

    else
    {

      v71 = v92;
    }

    v73 = v91;
    v74 = *(v90 + 48);
    v75 = *(v90 + 64);
    *v91 = v71;
    *(v73 + 8) = v61;
    (*(v22 + 16))(v73 + v74, v94, v21);
    *(v73 + v75) = v83;
    v76 = v85;
    swift_beginAccess();
    v77 = *(v76 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 16) = v77;
    v79 = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v77 = sub_241160BC8(0, v77[2] + 1, 1, v77);
      *(v76 + 16) = v77;
    }

    v81 = v77[2];
    v80 = v77[3];
    if (v81 >= v80 >> 1)
    {
      v77 = sub_241160BC8(v80 > 1, v81 + 1, 1, v77);
    }

    v77[2] = v81 + 1;
    sub_241135680(v73, v77 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v81, &unk_27E531000, &unk_2411684B8);
    *(v76 + 16) = v77;
    swift_endAccess();
    (*(v84 + 8))(v16, v79);
    goto LABEL_26;
  }

  sub_2410FB29C(v20, &qword_27E530AB0, &qword_241168080);
LABEL_4:
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v25 = sub_241165288();
  __swift_project_value_buffer(v25, qword_27E5339F0);
  v26 = sub_241165268();
  v27 = sub_241166038();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2410F8000, v26, v27, "Got nil messageGUID or payloadURL from IMSPI", v28, 2u);
    MEMORY[0x245CDC5E0](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_24112EBC8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_241165728();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112EC88, 0, 0);
}

uint64_t sub_24112EC88()
{
  v20 = v0;
  v1 = *(v0[8] + 24);
  v0[12] = v1;
  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = v0[7];
      v7 = __swift_project_boxed_opaque_existential_1((v0[8] + 160), *(v0[8] + 184));
      v0[13] = v7;
      v0[14] = sub_241165328();
      v0[15] = v8;
      v9 = *v7;

      return MEMORY[0x2822009F8](sub_24112EF10, v9, 0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E5339F0);
  v11 = sub_241165268();
  v12 = sub_241166048();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116B390, &v19);
    _os_log_impl(&dword_2410F8000, v11, v12, "%s Client is missing required entitlement com.apple.asktod", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  v15 = v0[11];
  sub_241132370();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_24112EF10()
{
  v1 = **(v0 + 104);
  sub_241137810(*(v0 + 112), *(v0 + 120));

  return MEMORY[0x2822009F8](sub_24112EF8C, 0, 0);
}

uint64_t sub_24112EF8C()
{
  v1 = *(v0 + 64);
  sub_24112AFBC(*(v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_24112F0A0;
    v5 = *(v0 + 56);

    return sub_24115F8CC(v5, v3);
  }

  else
  {
    v7 = *(v0 + 96);

    sub_2410FB29C(v0 + 16, &qword_27E530CE0, &qword_2411683F8);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24112F0A0()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24112F19C, 0, 0);
}

uint64_t sub_24112F19C()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24112F210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112F2BC, 0, 0);
}

uint64_t sub_24112F2BC()
{
  v1 = *(*(v0 + 80) + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_241130064((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v4 = v2;
  if (v2 >> 62)
  {
    v5 = sub_2411661F8();
    v4 = v2;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:

    v22 = *(MEMORY[0x277D85698] + 4);
    v23 = swift_task_alloc();
    *(v0 + 104) = v23;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CC8, &unk_2411683C0);
    *v23 = v0;
    v23[1] = sub_24112F6F0;
    v24 = *(v0 + 72);
    v5 = 0;
    v4 = 0;

    return MEMORY[0x2822002C8](v5, v4, v3);
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v26 = v5;
    v29 = **(v0 + 72);
    v30 = v4;
    v28 = *(v0 + 112);
    v27 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v9 = MEMORY[0x245CDBC20](v6);
      }

      else
      {
        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_241165FA8();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v11, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v9;
      *(v14 + 40) = v28;
      sub_2410FC88C(v11, v10, &unk_27E530F50, &qword_241167C20);
      LODWORD(v10) = (*(v13 + 48))(v10, 1, v12);

      v16 = *(v0 + 88);
      if (v10 == 1)
      {
        sub_2410FB29C(*(v0 + 88), &unk_27E530F50, &qword_241167C20);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_241165F98();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      v17 = *(v14 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_241165F58();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_15:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_2411683B0;
      *(v21 + 24) = v14;

      if (v20 | v18)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_2410FB29C(v8, &unk_27E530F50, &qword_241167C20);
      v4 = v30;
      if (v26 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822002C8](v5, v4, v3);
}

uint64_t sub_24112F6F0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24112F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24112F840, 0, 0);
}

uint64_t sub_24112F840()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_24112F944;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000023, 0x800000024116B320, sub_2411320B4, v3, v7);
}

uint64_t sub_24112F944()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24112FA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);

  sub_241165B88();
}

uint64_t sub_24112FBB0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v3 = sub_241165288();
    __swift_project_value_buffer(v3, qword_27E533A08);
    v4 = a1;

    v5 = sub_241165268();
    v6 = sub_241166048();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v7 = 136315394;
      v10 = sub_241165B98();
      v12 = sub_241156B38(v10, v11, &v24);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_2410F8000, v5, v6, "Error calling messagesComposeDidFinish on client with id %s from daemon: %@", v7, 0x16u);
      sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v15 = sub_241165288();
    __swift_project_value_buffer(v15, qword_27E533A08);

    v16 = sub_241165268();
    v17 = sub_241166068();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_241165B98();
      v22 = sub_241156B38(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2410F8000, v16, v17, "Successfully called messagesComposeDidFinish on client with id %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CDC5E0](v19, -1, -1);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  return sub_241165F78();
}

uint64_t *sub_24112FEE4()
{
  v1 = v0[2];

  v2 = v0[3];

  swift_weakDestroy();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  sub_2410FB29C((v0 + 35), &qword_27E530D50, &qword_2411685B0);
  v3 = v0[40];

  return v0;
}

uint64_t sub_24112FF64()
{
  sub_24112FEE4();

  return swift_deallocClassInstance();
}

id sub_241130004()
{
  if (qword_27E530620 != -1)
  {
    swift_once();
  }

  v1 = qword_27E533BD0;

  return v1;
}

uint64_t sub_241130064(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2411303A0(*(*a1 + 16), 0);
  v4 = sub_24113114C(&v6, v3 + 4, v2, v1);

  result = sub_24111606C();
  if (v4 == v2)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24113012C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241130224;

  return v7(a1);
}

uint64_t sub_241130224()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_24113031C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
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

void *sub_2411303A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
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

void *sub_241130428(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D30, &unk_241168530);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24113049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241165EA8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_241130A28();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2411662F8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_241130A28()
{
  v0 = sub_241165EB8();
  v4 = sub_241130AA8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_241130AA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_241165E18();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_241166178();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_241130428(v9, 0);
  v12 = sub_241130C00(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_241165E18();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2411662F8();
LABEL_4:

  return sub_241165E18();
}

unint64_t sub_241130C00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_241130E20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241165E88();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2411662F8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_241130E20(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_241165E68();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_241130E20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241165E98();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CDB7C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_241130E9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_241130FF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24113114C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2411312A0(uint64_t a1, void *a2)
{
  v9 = type metadata accessor for PendingAskStore();
  v10 = &off_2852EBB00;
  *&v8 = a1;
  a2[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  a2[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CD8, &qword_2411683F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2411673F0;
  if (qword_27E530630 != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  v5 = qword_27E533BE0;
  *(v4 + 56) = &type metadata for CommunicationLimitsPayloadProcessor;
  *(v4 + 64) = &off_2852EC7F8;
  *(v4 + 32) = v5;
  a2[9] = v4;
  sub_24110324C(&v8, (a2 + 4));

  return a2;
}

uint64_t sub_2411313A4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = type metadata accessor for IDSLookupController();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24114C9EC(v5);
  v80[3] = v2;
  v80[4] = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
  sub_241131B28(v5, boxed_opaque_existential_1);
  v80[8] = &type metadata for MessagesSPI;
  v80[9] = &off_2852EAD78;
  sub_241131B8C(v5);
  v7 = type metadata accessor for DaemonSendAskFlowPresenter();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2410FD064;
  *(v8 + 24) = 0;
  if (qword_27E530628 != -1)
  {
    swift_once();
  }

  v9 = qword_27E533BD8;
  v79[3] = &type metadata for iMessageSender;
  v79[4] = &off_2852EACE0;
  v79[0] = swift_allocObject();
  sub_241131C30(v80, v79[0] + 16);
  v78[3] = &type metadata for ClientResponseTaskMapper;
  v78[4] = &off_2852EC7E8;
  v77[3] = v7;
  v77[4] = &off_2852EAAD0;
  v77[0] = v8;
  v10 = type metadata accessor for PendingAskStore();
  v75 = v10;
  v76 = &off_2852EBB00;
  v74[0] = v9;
  v72 = &type metadata for CommunicationLimitsSettings;
  v73 = &off_2852EBE48;
  v69 = &type metadata for ContactsSyncVerifier;
  v70 = &off_2852EAEE0;
  type metadata accessor for Server();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v79, &type metadata for iMessageSender);
  v47 = &v44;
  v13 = *(off_2852EACC0 + 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v78, &type metadata for ClientResponseTaskMapper);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v77, v7);
  v46 = &v44;
  v18 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v75;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  v45 = &v44;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v28 = *v20;
  v29 = *v26;
  v66 = &type metadata for iMessageSender;
  v67 = &off_2852EACE0;
  v30 = swift_allocObject();
  *&v65 = v30;
  v31 = v15[3];
  v30[3] = v15[2];
  v30[4] = v31;
  v30[5] = v15[4];
  v32 = v15[1];
  v30[1] = *v15;
  v30[2] = v32;
  v63 = &type metadata for ClientResponseTaskMapper;
  v64 = &off_2852EC7E8;
  v60 = v7;
  v61 = &off_2852EAAD0;
  *&v59 = v28;
  v57 = v10;
  v58 = &off_2852EBB00;
  *&v56 = v29;
  v54 = &type metadata for CommunicationLimitsSettings;
  v55 = &off_2852EBE48;
  v51 = &type metadata for ContactsSyncVerifier;
  v52 = &off_2852EAEE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CB8, &qword_241168368);
  v33 = sub_241165BD8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v44 = xmmword_2411673F0;
  *(v37 + 16) = xmmword_2411673F0;
  (*(v34 + 104))(v37 + v36, *MEMORY[0x277CEED80], v33);

  v38 = sub_2410FC448(v37);
  swift_setDeallocating();
  (*(v34 + 8))(v37 + v36, v33);
  swift_deallocClassInstance();
  *(v11 + 16) = v38;
  *(v11 + 24) = 0;
  swift_weakInit();
  *(v11 + 312) = 0;
  *(v11 + 280) = 0u;
  *(v11 + 296) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CC0, &unk_241168370);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  if (qword_27E530630 != -1)
  {
    v43 = v39;
    swift_once();
    v39 = v43;
  }

  v40 = qword_27E533BE0;
  *(v39 + 56) = &type metadata for CommunicationLimitsPayloadProcessor;
  *(v39 + 64) = &off_2852EC810;
  *(v39 + 32) = v40;
  *(v11 + 320) = v39;
  v41 = *(v11 + 24);
  *(v11 + 24) = v48;

  swift_weakAssign();
  sub_24110324C(&v65, v11 + 40);
  sub_24110324C(&v62, v11 + 80);
  sub_24110324C(&v59, v11 + 120);
  sub_24110324C(&v56, v11 + 160);
  sub_24110324C(&v53, v11 + 200);
  sub_24110324C(&v50, v11 + 240);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_241131CDC(v80);
  return v11;
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

uint64_t sub_241131B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLookupController();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241131B8C(uint64_t a1)
{
  v2 = type metadata accessor for IDSLookupController();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241131BE8()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_241131D30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24112341C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241131E08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_241135C18;

  return sub_24112F210(a1, a2, v6, v7);
}

uint64_t sub_241131EC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_241131F00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241135C18;

  return sub_24112F81C(a1, v4, v5, v6, v7);
}

uint64_t sub_241131FC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241131FFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241106740;

  return sub_24113012C(a1, v5);
}

uint64_t sub_2411320C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241132190(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_24112FBB0(a1);
}

uint64_t sub_24113222C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_241132284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_241135C18;

  return sub_2411225E4(a1, v4, v5, v6, v7, v8, v9, v11);
}

unint64_t sub_241132370()
{
  result = qword_27E530CD0;
  if (!qword_27E530CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CD0);
  }

  return result;
}

uint64_t sub_2411323CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24113241C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241106740;

  return sub_2411218BC(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t objectdestroy_9Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2411325F8(uint64_t a1)
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
  v10[1] = sub_241135C18;

  return sub_241121068(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2411326CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_24111FD90(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t sub_2411327D4()
{
  result = qword_27E530CF0;
  if (!qword_27E530CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CF0);
  }

  return result;
}

uint64_t sub_241132828(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_241165898();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v7 = sub_241165BD8();
  v2[37] = v7;
  v8 = *(v7 - 8);
  v2[38] = v8;
  v9 = *(v8 + 64) + 15;
  v2[39] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v2[40] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241132A20, 0, 0);
}

uint64_t sub_241132A20()
{
  v1 = v0[30];
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_241165C08();

    if (v0[21])
    {
      v3 = v0[44];
      v4 = v0[22];
      __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      goto LABEL_6;
    }

    sub_2410FB29C((v0 + 18), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[38] + 56))(v0[44], 1, 1, v0[37]);
LABEL_6:
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[37];
  v10 = v0[38];
  (*(v10 + 104))(v6, *MEMORY[0x277CEED98], v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = *(v8 + 48);
  sub_2410FC88C(v5, v7, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v6, v7 + v11, &qword_27E530658, &unk_241167410);
  v12 = *(v10 + 48);
  if (v12(v7, 1, v9) != 1)
  {
    v14 = v0[37];
    sub_2410FC88C(v0[41], v0[42], &qword_27E530658, &unk_241167410);
    v15 = v12(v7 + v11, 1, v14);
    v16 = v0[42];
    v17 = v0[43];
    if (v15 != 1)
    {
      v35 = v0[41];
      v37 = v0[38];
      v36 = v0[39];
      v38 = v0[37];
      (*(v37 + 32))(v36, v7 + v11, v38);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
      v39 = sub_241165D98();
      v40 = *(v37 + 8);
      v40(v36, v38);
      sub_2410FB29C(v17, &qword_27E530658, &unk_241167410);
      v40(v16, v38);
      sub_2410FB29C(v35, &qword_27E530658, &unk_241167410);
      if ((v39 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    v18 = v0[37];
    v19 = v0[38];
    sub_2410FB29C(v0[43], &qword_27E530658, &unk_241167410);
    (*(v19 + 8))(v16, v18);
LABEL_11:
    sub_2410FB29C(v0[41], &qword_27E530650, &qword_241167408);
    goto LABEL_12;
  }

  v13 = v0[37];
  sub_2410FB29C(v0[43], &qword_27E530658, &unk_241167410);
  if (v12(v7 + v11, 1, v13) != 1)
  {
    goto LABEL_11;
  }

  sub_2410FB29C(v0[41], &qword_27E530658, &unk_241167410);
LABEL_20:
  v41 = v0[29];
  v42 = sub_2411653A8();
  v43 = sub_241165368();
  v45 = v44;

  if (v43 == 0xD00000000000002DLL && 0x800000024116B440 == v45)
  {
    goto LABEL_22;
  }

  v46 = sub_2411663E8();

  if (v46)
  {
    goto LABEL_24;
  }

  v84 = v0[29];
  v85 = sub_2411653A8();
  v86 = sub_241165368();
  v88 = v87;

  if (v86 == 0xD00000000000001DLL && 0x800000024116B470 == v88)
  {
LABEL_22:

LABEL_24:
    v48 = v0[35];
    v47 = v0[36];
    v49 = v0[29];
    sub_241165298();
    sub_2410FC88C(v47, v48, &qword_27E530CE8, &qword_241168400);
    v50 = sub_2411652E8();
    v51 = *(v50 - 8);
    v52 = (*(v51 + 48))(v48, 1, v50);
    v53 = v0[35];
    if (v52 == 1)
    {
      sub_2410FB29C(v53, &qword_27E530CE8, &qword_241168400);
    }

    else
    {
      v54 = (*(v51 + 88))(v53, v50);
      if (v54 == *MEMORY[0x277CEEAD0])
      {
        v55 = v0[35];
        v56 = v0[36];
        v95 = v54;
        (*(v51 + 96))(v55, v50);
        v93 = *v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D48, &qword_2411685A8);
        v57 = sub_241165A38();
        v58 = *(v57 - 8);
        v59 = *(v58 + 72);
        v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_241167EC0;
        v62 = v61 + v60;
        v63 = *(v58 + 104);
        v63(v62, *MEMORY[0x277CEECA8], v57);
        v63(v62 + v59, *MEMORY[0x277CEEC80], v57);
        v64 = v93;
        sub_2410FC8F4(v61);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_241165A48();

        sub_2410FB29C(v56, &qword_27E530CE8, &qword_241168400);
        *v56 = v64;
        (*(v51 + 104))(v56, v95, v50);
        (*(v51 + 56))(v56, 0, 1, v50);
      }

      else
      {
        (*(v51 + 8))(v0[35], v50);
      }
    }

    v90 = [objc_opt_self() defaultStore];
    v0[45] = v90;
    if (v90)
    {
      v91 = v90;
      v0[2] = v0;
      v0[7] = (v0 + 28);
      v0[3] = sub_241133524;
      v92 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24112B3BC;
      v0[13] = &block_descriptor_188;
      v0[14] = v92;
      [v91 aa:v0 + 10 primaryAppleAccountWithCompletion:?];
      v90 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v90);
  }

  v89 = sub_2411663E8();

  if (v89)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v20 = sub_241165288();
  __swift_project_value_buffer(v20, qword_27E5339F0);
  v21 = sub_241165268();
  v22 = sub_241166068();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2410F8000, v21, v22, "Requesting to send message compose via daemon", v23, 2u);
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

  v24 = v0[30];

  if (!*(v24 + 24))
  {
    goto LABEL_29;
  }

  v25 = *(v24 + 24);

  sub_241165C08();

  if (!v0[26])
  {
    sub_2410FB29C((v0 + 23), &qword_27E530CF8, &qword_2411684A0);
LABEL_29:
    v65 = v0[44];
    sub_2410FDF20();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();
    sub_2410FB29C(v65, &qword_27E530658, &unk_241167410);
    v68 = v0[43];
    v67 = v0[44];
    v70 = v0[41];
    v69 = v0[42];
    v71 = v0[39];
    v73 = v0[35];
    v72 = v0[36];
    v75 = v0[33];
    v74 = v0[34];

    v83 = v0[1];
    goto LABEL_30;
  }

  v26 = v0[29];
  v27 = v0[30];
  v28 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v29 = sub_241165988();
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v30 = objc_allocWithZone(sub_241165668());
  v31 = v29;
  v32 = v26;
  v33 = sub_241165648();
  v34 = *__swift_project_boxed_opaque_existential_1((v27 + 120), *(v27 + 144));
  sub_2410FD0E4(v33);
  v78 = v0[42];
  v77 = v0[43];
  v79 = v0[41];
  v80 = v0[39];
  v82 = v0[35];
  v81 = v0[36];
  v94 = v0[34];
  v96 = v0[33];
  sub_2410FB29C(v0[44], &qword_27E530658, &unk_241167410);

  v83 = v0[1];
LABEL_30:

  return v83();
}

uint64_t sub_241133524()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_241133A94;
  }

  else
  {
    v3 = sub_241133634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241133634()
{
  v1 = *(v0 + 224);

  v44 = v1;
  if (v1)
  {
    v2 = [v1 aa_firstName];
    if (v2)
    {
      v3 = v2;
      sub_241165DD8();
    }
  }

  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 256);
  v42 = *(v0 + 248);
  v7 = *(v0 + 232);
  sub_2410FC88C(v4, *(v0 + 272), &qword_27E530CE8, &qword_241168400);
  sub_241165388();
  sub_2411653B8();
  sub_241165868();
  sub_241165878();
  sub_241165398();
  sub_241165888();
  sub_2411653C8();

  (*(v6 + 8))(v5, v42);
  sub_2410FB29C(v4, &qword_27E530CE8, &qword_241168400);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2410F8000, v9, v10, "Requesting to send message compose via daemon", v11, 2u);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v12 = *(v0 + 240);

  if (*(v12 + 24))
  {
    v13 = *(v12 + 24);

    sub_241165C08();

    if (*(v0 + 208))
    {
      v14 = *(v0 + 232);
      v15 = *(v0 + 240);
      v16 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      v17 = sub_241165988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 184));
      v18 = objc_allocWithZone(sub_241165668());
      v19 = v17;
      v20 = v14;
      v21 = sub_241165648();
      v22 = *__swift_project_boxed_opaque_existential_1((v15 + 120), *(v15 + 144));
      sub_2410FD0E4(v21);
      v36 = *(v0 + 336);
      v35 = *(v0 + 344);
      v37 = *(v0 + 328);
      v38 = *(v0 + 312);
      v40 = *(v0 + 280);
      v39 = *(v0 + 288);
      v43 = *(v0 + 272);
      v45 = *(v0 + 264);
      sub_2410FB29C(*(v0 + 352), &qword_27E530658, &unk_241167410);

      v41 = *(v0 + 8);
      goto LABEL_13;
    }

    sub_2410FB29C(v0 + 184, &qword_27E530CF8, &qword_2411684A0);
  }

  v23 = *(v0 + 352);
  sub_2410FDF20();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
  sub_2410FB29C(v23, &qword_27E530658, &unk_241167410);
  v26 = *(v0 + 344);
  v25 = *(v0 + 352);
  v28 = *(v0 + 328);
  v27 = *(v0 + 336);
  v29 = *(v0 + 312);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v33 = *(v0 + 264);
  v32 = *(v0 + 272);

  v41 = *(v0 + 8);
LABEL_13:

  return v41();
}

uint64_t sub_241133A94()
{
  v1 = v0[45];
  v2 = v0[46];
  swift_willThrow();

  v3 = v0[36];
  v4 = v0[33];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  sub_2410FC88C(v3, v0[34], &qword_27E530CE8, &qword_241168400);
  sub_241165388();
  sub_2411653B8();
  sub_241165868();
  sub_241165878();
  sub_241165398();
  sub_241165888();
  sub_2411653C8();
  (*(v5 + 8))(v4, v6);
  sub_2410FB29C(v3, &qword_27E530CE8, &qword_241168400);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2410F8000, v9, v10, "Requesting to send message compose via daemon", v11, 2u);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v12 = v0[30];

  if (*(v12 + 24))
  {
    v13 = *(v12 + 24);

    sub_241165C08();

    if (v0[26])
    {
      v14 = v0[29];
      v15 = v0[30];
      v16 = v0[27];
      __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
      v17 = sub_241165988();
      __swift_destroy_boxed_opaque_existential_1(v0 + 23);
      v18 = objc_allocWithZone(sub_241165668());
      v19 = v17;
      v20 = v14;
      v21 = sub_241165648();
      v22 = *__swift_project_boxed_opaque_existential_1((v15 + 120), *(v15 + 144));
      sub_2410FD0E4(v21);
      v36 = v0[42];
      v35 = v0[43];
      v37 = v0[41];
      v38 = v0[39];
      v40 = v0[35];
      v39 = v0[36];
      v42 = v0[34];
      v43 = v0[33];
      sub_2410FB29C(v0[44], &qword_27E530658, &unk_241167410);

      v41 = v0[1];
      goto LABEL_10;
    }

    sub_2410FB29C((v0 + 23), &qword_27E530CF8, &qword_2411684A0);
  }

  v23 = v0[44];
  sub_2410FDF20();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
  sub_2410FB29C(v23, &qword_27E530658, &unk_241167410);
  v26 = v0[43];
  v25 = v0[44];
  v28 = v0[41];
  v27 = v0[42];
  v29 = v0[39];
  v31 = v0[35];
  v30 = v0[36];
  v33 = v0[33];
  v32 = v0[34];

  v41 = v0[1];
LABEL_10:

  return v41();
}

void sub_241133EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v5 = *(a2 + 24);

    sub_241165C08();

    if (v16)
    {
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v6 = sub_241165978();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1(v15);
      if (v8)
      {
        if (qword_27E530640 != -1)
        {
          swift_once();
        }

        sub_24115B034(a1, v6, v8);

        goto LABEL_13;
      }
    }

    else
    {
      sub_2410FB29C(v15, &qword_27E530CF8, &qword_2411684A0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E5339F0);
  v10 = sub_241165268();
  v11 = sub_241166048();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_241156B38(0xD000000000000019, 0x800000024116B6A0, v15);
    _os_log_impl(&dword_2410F8000, v10, v11, "%s Could not get bundle identifier information from client", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_2411661F8())
  {
    sub_2410FCC14(MEMORY[0x277D84F90]);
  }

LABEL_13:
  sub_241165928();
  sub_2411356E8(&qword_27E531380, MEMORY[0x277CEEC50]);
  v14 = sub_241165FB8();
  (*(a3 + 16))(a3, v14);
}

uint64_t sub_241134174(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_241134194, 0, 0);
}

uint64_t sub_241134194()
{
  v33 = v0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_241165288();
  *(v0 + 176) = __swift_project_value_buffer(v2, qword_27E5339F0);

  v3 = sub_241165268();
  v4 = sub_241166068();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116B680, &v32);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    _os_log_impl(&dword_2410F8000, v3, v4, "%s Performing %ld response tasks", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  else
  {
    v9 = *(v0 + 160);
  }

  *(v0 + 184) = 0x800000024116B680;
  v10 = *(v0 + 160);
  v11 = *(v10 + 16);
  *(v0 + 192) = v11;
  *(v0 + 200) = 0;
  if (v11)
  {
    *(v0 + 64) = 0;
    sub_241135730(v10 + 32, v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v0 + 80);
    v14 = 1;
    v15 = *(v0 + 96);
  }

  else
  {
    v14 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v15 = 0uLL;
  }

  *(v0 + 216) = v14;
  *(v0 + 208) = v12;
  *(v0 + 16) = v12;
  *(v0 + 32) = v13;
  *(v0 + 48) = v15;
  v16 = *(v0 + 176);
  if (v15)
  {
    v17 = v12;
    sub_24110324C((v0 + 24), v0 + 112);
    v18 = sub_241165268();
    v19 = sub_241166068();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 184);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *(v0 + 152) = v22;
      *v21 = 136315394;
      result = sub_241156B38(0xD000000000000011, v20, (v0 + 152));
      *(v21 + 4) = result;
      *(v21 + 12) = 2048;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      *(v21 + 14) = v17 + 1;
      _os_log_impl(&dword_2410F8000, v18, v19, "%s Performing response task #%ld", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v21, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v24 = swift_task_alloc();
    *(v0 + 224) = v24;
    *v24 = v0;
    v24[1] = sub_2411345FC;
    v25 = *(v0 + 168);

    return sub_241140C68(v25);
  }

  else
  {
    v26 = sub_241165268();
    v27 = sub_241166068();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 184);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_241156B38(0xD000000000000011, v28, &v32);
      *(v29 + 12) = 2048;
      *(v29 + 14) = 0;
      _os_log_impl(&dword_2410F8000, v26, v27, "%s Successfully performed %ld response tasks", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245CDC5E0](v30, -1, -1);
      MEMORY[0x245CDC5E0](v29, -1, -1);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_2411345FC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_241134A4C;
  }

  else
  {
    v3 = sub_241134710;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_241134710()
{
  v26 = v0;
  v1 = *(v0 + 200);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v3 = *(v0 + 216);
  *(v0 + 200) = v2;
  v4 = *(v0 + 192);
  v5 = 0uLL;
  if (v3 == v4)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    goto LABEL_7;
  }

  if (v3 >= v4)
  {
    goto LABEL_20;
  }

  v8 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v0 + 160) + 40 * v3;
  *(v0 + 64) = v3;
  sub_241135730(v9 + 32, v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v3 = v8;
  v7 = *(v0 + 96);
LABEL_7:
  *(v0 + 216) = v3;
  *(v0 + 208) = v5;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  v10 = *(v0 + 176);
  if (v7)
  {
    v11 = v5;
    sub_24110324C((v0 + 24), v0 + 112);
    v12 = sub_241165268();
    v13 = sub_241166068();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_11:

      __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
      v17 = swift_task_alloc();
      *(v0 + 224) = v17;
      *v17 = v0;
      v17[1] = sub_2411345FC;
      v18 = *(v0 + 168);

      sub_241140C68(v18);
      return;
    }

    v14 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *(v0 + 152) = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_241156B38(0xD000000000000011, v14, (v0 + 152));
    *(v15 + 12) = 2048;
    if (!__OFADD__(v11, 1))
    {
      *(v15 + 14) = v11 + 1;
      _os_log_impl(&dword_2410F8000, v12, v13, "%s Performing response task #%ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v19 = sub_241165268();
  v20 = sub_241166068();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 184);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_241156B38(0xD000000000000011, v21, &v25);
    *(v22 + 12) = 2048;
    *(v22 + 14) = v2;
    _os_log_impl(&dword_2410F8000, v19, v20, "%s Successfully performed %ld response tasks", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CDC5E0](v23, -1, -1);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_241134A4C()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166068();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    result = swift_slowAlloc();
    *v7 = 134218242;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = v0[29];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2112;
    v12 = v11;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2410F8000, v4, v5, "Caught error while performing response task #%ld: %@", v7, 0x16u);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v14 = v0[29];

  sub_2411354F4();
  swift_allocError();
  *v15 = v14;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v16 = v0[1];

  return v16();
}

uint64_t sub_241134BF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_241134C50(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_241135C18;

  return sub_24111E51C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_241134D44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_241134DA4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241134DDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241134E3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241134E78(uint64_t a1)
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
  v10[1] = sub_241135C18;

  return sub_24111D8C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_106Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_241134F9C(uint64_t a1)
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
  v10[1] = sub_241135C18;

  return sub_24111CF00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241135078()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2411350D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v14 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_241135C18;

  return sub_24111C79C(a1, v4, v5, v6, v7, v11, v14, v8);
}

uint64_t sub_2411351C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_241134D44(a1, a2);
  }

  return a1;
}

unint64_t sub_2411351DC()
{
  result = qword_27E530D28;
  if (!qword_27E530D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530D20, &qword_241168528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D28);
  }

  return result;
}

uint64_t sub_241135240()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2411352A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_241135C18;

  return sub_24111BC00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2411353A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_241135400(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_241135C18;

  return sub_2411187FC(a1, v14, v4, v5, v6, v7, v8, v10);
}

unint64_t sub_2411354F4()
{
  result = qword_27E530D40;
  if (!qword_27E530D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D40);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2411355A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_24111729C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_241135680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2411356E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241135730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon9SendErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2411357B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24113580C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_241135868(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon13ResponseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2411358B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2411358FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_241135940(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DaemonError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DaemonError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241135AC0()
{
  result = qword_27E530D58;
  if (!qword_27E530D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D58);
  }

  return result;
}

unint64_t sub_241135B1C()
{
  result = qword_27E530D60;
  if (!qword_27E530D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D60);
  }

  return result;
}

unint64_t sub_241135B70()
{
  result = qword_27E530D68;
  if (!qword_27E530D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241135C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241135CC0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_241135D24()
{
  v1 = *v0;
  sub_2411351C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_241135D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (!a2)
  {
    v12 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_2411650D8();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    goto LABEL_6;
  }

  v12 = sub_241165DD8();
  a2 = v13;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_241165098();
  v14 = sub_2411650D8();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
LABEL_6:

  v16 = v11(v12, a2, v9);

  sub_241137218(v9);
  return v16 & 1;
}

uint64_t sub_241135EC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v84 = a4;
  v11 = sub_2411651A8();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_241165B58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v75 - v22;
  v24 = sub_2411650D8();
  v85 = *(v24 - 8);
  v25 = *(v85 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v75 = a6;
    v82 = v28;
    v83 = a1;
    v78 = v19;
    v29 = v26;
    v30 = qword_27E5305F0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_241165288();
    v32 = __swift_project_value_buffer(v31, qword_27E533B40);

    v81 = v32;
    v33 = sub_241165268();
    v34 = sub_241166038();

    v35 = os_log_type_enabled(v33, v34);
    v76 = v16;
    v77 = v15;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v87[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_241156B38(v83, a2, v87);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_241156B38(v84, a5, v87);
      _os_log_impl(&dword_2410F8000, v33, v34, "Inspecting AskTo message with GUID %s in Messages DB to see if it matches with question ID %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v37, -1, -1);
      MEMORY[0x245CDC5E0](v36, -1, -1);
    }

    sub_241109054(a3, v23);
    v38 = v85;
    v39 = v29;
    if ((*(v85 + 48))(v23, 1, v29) == 1)
    {
      sub_241137218(v23);

      v40 = sub_241165268();
      v41 = sub_241166048();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v87[0] = v43;
        *v42 = 136315138;
        v44 = sub_241156B38(v83, a2, v87);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_2410F8000, v40, v41, "Payload URL for message with GUID %s was nil. Skipping.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x245CDC5E0](v43, -1, -1);
        MEMORY[0x245CDC5E0](v42, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    (*(v38 + 32))(v82, v23, v29);
    v49 = v78;
    sub_241165B48();
    sub_241165CE8();
    sub_241137280(&qword_27E530C50);
    sub_241137280(&qword_27E530C58);
    sub_241165B38();
    v50 = v87[0];
    v51 = sub_241165CC8();
    v52 = sub_241165328();
    v54 = v53;

    if (v52 == v84 && v54 == a5)
    {
      v55 = v76;
LABEL_20:

      goto LABEL_22;
    }

    v56 = sub_2411663E8();

    v55 = v76;
    if ((v56 & 1) == 0)
    {
      v70 = sub_241165CC8();
      sub_2411653D8();

      v71 = sub_241165188();
      v73 = v72;
      (*(v79 + 8))(v14, v80);
      if (v71 == v84 && v73 == a5)
      {
        goto LABEL_20;
      }

      v74 = sub_2411663E8();

      if ((v74 & 1) == 0)
      {

        (*(v55 + 8))(v49, v77);
        (*(v85 + 8))(v82, v39);
        return 0;
      }
    }

LABEL_22:
    v57 = v75;
    swift_beginAccess();
    v58 = *(v57 + 24);
    if (v58)
    {
      v59 = *(v57 + 16);

      v60 = sub_241165268();
      v61 = sub_241166048();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v81 = v59;
        v63 = v62;
        v64 = swift_slowAlloc();
        v86[0] = v64;
        *v63 = 136315650;
        *(v63 + 4) = sub_241156B38(v84, a5, v86);
        v84 = v39;
        *(v63 + 12) = 2080;
        v65 = v55;
        v66 = sub_241156B38(v81, v58, v86);

        *(v63 + 14) = v66;
        *(v63 + 22) = 2080;
        *(v63 + 24) = sub_241156B38(v83, a2, v86);
        _os_log_impl(&dword_2410F8000, v60, v61, "Found multiple messages matching question id %s. Previous found guid: %s. New found guid: %s", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v64, -1, -1);
        MEMORY[0x245CDC5E0](v63, -1, -1);

        (*(v65 + 8))(v78, v77);
        (*(v85 + 8))(v82, v84);
LABEL_27:
        v67 = v75;
        swift_beginAccess();
        v68 = *(v67 + 24);
        *(v67 + 16) = v83;
        *(v67 + 24) = a2;

        return 0;
      }
    }

    (*(v55 + 8))(v49, v77);
    (*(v85 + 8))(v82, v39);
    goto LABEL_27;
  }

  if (qword_27E5305F0 != -1)
  {
    swift_once();
  }

  v45 = sub_241165288();
  __swift_project_value_buffer(v45, qword_27E533B40);
  v46 = sub_241165268();
  v47 = sub_241166048();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2410F8000, v46, v47, "Got back nil message GUID from IMSPI", v48, 2u);
    MEMORY[0x245CDC5E0](v48, -1, -1);
  }

  return 0;
}

void sub_24113693C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_241165DA8();
  sub_2410FCF28(0, &qword_27E5310D0, 0x277D85C78);
  v12 = sub_2411660C8();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_241136E50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241136ED0;
  aBlock[3] = &block_descriptor_7;
  v15 = _Block_copy(aBlock);

  IMSPIQueryMessageWithGUIDAndQOS();
  _Block_release(v15);
}

void sub_241136B44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *(a1 + 16) && (sub_241100374(a1 + 32, v14), sub_2410FCF28(0, &qword_27E530D78, 0x277D18DD0), (swift_dynamicCast() & 1) != 0))
  {
    v5 = [v13 sender];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isMe];

      LOBYTE(v14[0]) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
      sub_241165F78();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27E5305F0 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533B40);

    v9 = sub_241165268();
    v10 = sub_241166048();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(a2, a3, v14);
      _os_log_impl(&dword_2410F8000, v9, v10, "Could not find message with guid: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    LOBYTE(v14[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
    sub_241165F78();
  }
}

uint64_t sub_241136D80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241136E50(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ") - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_241136B44(a1, v4, v5);
}

uint64_t sub_241136ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_241165EF8();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241136F68(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D196D0];
  v5 = IMBalloonExtensionIDWithSuffix();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    v17[4] = sub_24113720C;
    v17[5] = v8;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_241135D58;
    v17[3] = &block_descriptor_9_0;
    v9 = _Block_copy(v17);

    IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
    _Block_release(v9);

    swift_beginAccess();
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (qword_27E5305F0 != -1)
    {
      swift_once();
    }

    v12 = sub_241165288();
    __swift_project_value_buffer(v12, qword_27E533B40);
    v13 = sub_241165268();
    v14 = sub_241166048();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2410F8000, v13, v14, "IMBalloonBundleIdentifierAskTo was nil", v15, 2u);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_241137194()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2411371CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241137218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241137280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_241165CE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2411372E8()
{
  type metadata accessor for PendingAskStore();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_2410FBB24(MEMORY[0x277D84F90]);
  *(v0 + 120) = 0;
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  *(v0 + 112) = sub_24113734C;
  qword_27E533BD8 = v0;
  return result;
}

uint64_t sub_241137380@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_241165068();
  v1 = *(v33 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2411650D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = [v12 URLsForDirectory:5 inDomains:1];

  v14 = sub_241165EF8();
  if (*(v14 + 16))
  {
    v15 = *(v5 + 16);
    v16 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v30 = v4;
    v31 = v11;
    v15(v11, v16, v4);

    v35 = 0xD000000000000010;
    v36 = 0x800000024116BD70;
    v17 = *MEMORY[0x277CC91C0];
    v29 = v1[13];
    v18 = v32;
    v19 = v33;
    v29(v32, v17, v33);
    sub_241139978();
    sub_2411650C8();
    v20 = v1[1];
    v20(v18, v19);
    v35 = 0x41676E69646E6570;
    v36 = 0xEF6E6F736A2E6B73;
    v29(v18, *MEMORY[0x277CC91D8], v19);
    sub_2411650C8();
    v20(v18, v19);
    v21 = *(v5 + 8);
    v22 = v30;
    v21(v9, v30);
    return (v21)(v31, v22);
  }

  else
  {

    if (qword_27E530600 != -1)
    {
      swift_once();
    }

    v24 = sub_241165288();
    __swift_project_value_buffer(v24, qword_27E533B70);
    v25 = sub_241165268();
    v26 = sub_241166048();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116BD90, &v35);
      _os_log_impl(&dword_2410F8000, v25, v26, "PendingAskStore.%s failed to lookup default file path", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245CDC5E0](v28, -1, -1);
      MEMORY[0x245CDC5E0](v27, -1, -1);
    }

    sub_2411399CC();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_241137810(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-1] - v7;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  sub_241165138();
  v9 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  swift_beginAccess();
  sub_241137A84(v8, a1, a2);
  swift_endAccess();
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533B70);

  v11 = sub_241165268();
  v12 = sub_241166068();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116BE10, v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_241156B38(a1, a2, v16);
    _os_log_impl(&dword_2410F8000, v11, v12, "PendingAskStore.%s added pending ask %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  sub_2411387BC();
}

uint64_t sub_241137A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PendingAskStore.Metadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2410FB29C(a1, &qword_27E530DE8, &qword_241168B50);
    sub_241152004(a2, a3, v10);

    return sub_2410FB29C(v10, &qword_27E530DE8, &qword_241168B50);
  }

  else
  {
    sub_2410FC768(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_241153E84(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_241137C44(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  swift_beginAccess();
  v9 = *(v2 + 128);
  if (*(v9 + 16))
  {

    v10 = sub_2410FAD78(a1, a2);
    if (v11)
    {
      v12 = v10;
      v13 = *(v9 + 56);
      v14 = type metadata accessor for PendingAskStore.Metadata();
      v15 = *(v14 - 8);
      sub_241139C34(v13 + *(v15 + 72) * v12, v8);

      v16 = 1;
      (*(v15 + 56))(v8, 0, 1, v14);
      goto LABEL_8;
    }
  }

  v17 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v16 = 0;
LABEL_8:
  sub_2410FB29C(v8, &qword_27E530DE8, &qword_241168B50);
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v18 = sub_241165288();
  __swift_project_value_buffer(v18, qword_27E533B70);

  v19 = sub_241165268();
  v20 = sub_241166068();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_241156B38(0xD000000000000019, 0x800000024116BDF0, &v24);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_241156B38(a1, a2, &v24);
    *(v21 + 22) = 1024;
    *(v21 + 24) = v16;
    _os_log_impl(&dword_2410F8000, v19, v20, "PendingAskStore.%s %s ispendingAsk: %{BOOL}d", v21, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v22, -1, -1);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  return v16;
}

void sub_241137F68(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-1] - v7;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  v9 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_beginAccess();

  sub_241137A84(v8, a1, a2);
  swift_endAccess();
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533B70);

  v11 = sub_241165268();
  v12 = sub_241166068();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_241156B38(0xD00000000000001DLL, 0x800000024116BDD0, v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_241156B38(a1, a2, v16);
    _os_log_impl(&dword_2410F8000, v11, v12, "PendingAskStore.%s removed pending ask %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  sub_2411387BC();
}

uint64_t sub_2411381D4()
{
  v1 = v0;
  v2 = sub_2411650D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  (v12)(v8);
  v32 = v3;
  v13 = [objc_opt_self() defaultManager];
  sub_2411650B8();
  v14 = sub_241165DA8();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    v12();
    v24 = sub_2411650E8();
    v26 = v25;
    (*(v32 + 8))(v7, v2);
    v27 = sub_241164E38();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_241164E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139B30();
    sub_241164E18();
    sub_2410FB5B8(v24, v26);

    v30 = v33;
  }

  else
  {
    v30 = sub_2410FBB24(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  v16 = *(v1 + 128);
  *(v1 + 128) = v30;

  *(v1 + 136) = 1;
  v17 = v32;
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v18 = sub_241165288();
  __swift_project_value_buffer(v18, qword_27E533B70);

  v19 = sub_241165268();
  v20 = sub_241166068();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_241156B38(0x292864616F6CLL, 0xE600000000000000, &v34);
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = *(*(v1 + 128) + 16);

    _os_log_impl(&dword_2410F8000, v19, v20, "PendingAskStore.%s Loaded pending asks. Count %ld", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CDC5E0](v22, -1, -1);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  else
  {
  }

  return (*(v17 + 8))(v10, v2);
}

void sub_2411387BC()
{
  v1 = v0;
  v2 = sub_2411650D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241138C24();
  v7 = sub_241164E68();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_241164E58();
  swift_beginAccess();
  v21 = *(v0 + 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DC0, &qword_241168B48);
  sub_241139A74();
  v10 = sub_241164E48();
  v12 = v11;

  v14 = *(v0 + 120);
  (*(v1 + 112))(v13);
  sub_241165128();
  (*(v3 + 8))(v6, v2);
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v15 = sub_241165288();
  __swift_project_value_buffer(v15, qword_27E533B70);
  v16 = sub_241165268();
  v17 = sub_241166068();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_241156B38(0x292865766173, 0xE600000000000000, &v21);
    _os_log_impl(&dword_2410F8000, v16, v17, "PendingAskStore.%ssaved pending asks", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  sub_2410FB5B8(v10, v12);
}

void sub_241138C24()
{
  v51[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2411650D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  (v16)(v13);
  v49 = v16;
  v50 = v6;
  v48 = v9;
  sub_241165088();
  v27 = *(v2 + 8);
  v27(v12, v1);
  sub_2411650B8();
  v27(v15, v1);
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = sub_241165DA8();

  v31 = [v29 fileExistsAtPath_];

  if (v31)
  {
    if (qword_27E530600 != -1)
    {
      swift_once();
    }

    v32 = sub_241165288();
    __swift_project_value_buffer(v32, qword_27E533B70);
    v33 = sub_241165268();
    v34 = sub_241166068();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_241156B38(0xD00000000000001BLL, 0x800000024116BDB0, v51);
      _os_log_impl(&dword_2410F8000, v33, v34, "PendingAskStore.%s directory already exists", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x245CDC5E0](v36, -1, -1);
      MEMORY[0x245CDC5E0](v35, -1, -1);
    }

LABEL_13:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  v38 = [v28 defaultManager];
  v39 = v50;
  v49();
  v40 = v48;
  sub_241165088();
  v27(v39, v1);
  v41 = sub_241165078();
  v27(v40, v1);
  v51[0] = 0;
  v42 = [v38 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v51];

  v43 = v51[0];
  if (!v42)
  {
    v50 = v51[0];
    v46 = v51[0];
    v47 = sub_241165058();

    swift_willThrow();
    if (qword_27E530600 != -1)
    {
      swift_once();
    }

    v18 = sub_241165288();
    __swift_project_value_buffer(v18, qword_27E533B70);
    v19 = v47;
    v20 = sub_241165268();
    v21 = sub_241166048();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_241156B38(0xD00000000000001BLL, 0x800000024116BDB0, v51);
      *(v22 + 12) = 2112;
      v25 = v47;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_2410F8000, v20, v21, "PendingAskStore.%s Failed to create storage directory: %@", v22, 0x16u);
      sub_2410FB29C(v23, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CDC5E0](v24, -1, -1);
      MEMORY[0x245CDC5E0](v22, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v44 = *MEMORY[0x277D85DE8];

  v45 = v43;
}

uint64_t sub_24113920C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_241139284(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165168();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241139304(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165168();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PendingAskStore.Metadata()
{
  result = qword_27E530D80;
  if (!qword_27E530D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411393C0()
{
  result = sub_241165168();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_241139448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2411663E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2411394E8(uint64_t a1)
{
  v2 = sub_241139A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241139524(uint64_t a1)
{
  v2 = sub_241139A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241139560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_241165168();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D98, &qword_241168B30);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PendingAskStore.Metadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241139A20();
  sub_2411664D8();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_241139BEC(&qword_27E530DA8, MEMORY[0x277CC9578]);
    sub_241166398();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_2410FC768(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_241139800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DB0, &unk_241168B38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241139A20();
  sub_2411664E8();
  sub_241165168();
  sub_241139BEC(&qword_27E530DB8, MEMORY[0x277CC9578]);
  sub_2411663A8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_241139978()
{
  result = qword_27E530FE0;
  if (!qword_27E530FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530FE0);
  }

  return result;
}

unint64_t sub_2411399CC()
{
  result = qword_27E530D90;
  if (!qword_27E530D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D90);
  }

  return result;
}

unint64_t sub_241139A20()
{
  result = qword_27E530DA0;
  if (!qword_27E530DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DA0);
  }

  return result;
}

unint64_t sub_241139A74()
{
  result = qword_27E530DC8;
  if (!qword_27E530DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139BEC(&qword_27E530DD0, type metadata accessor for PendingAskStore.Metadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DC8);
  }

  return result;
}

unint64_t sub_241139B30()
{
  result = qword_27E530DD8;
  if (!qword_27E530DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139BEC(&qword_27E530DE0, type metadata accessor for PendingAskStore.Metadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DD8);
  }

  return result;
}

uint64_t sub_241139BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241139C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_241139CC4()
{
  result = qword_27E530DF0;
  if (!qword_27E530DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DF0);
  }

  return result;
}

unint64_t sub_241139D1C()
{
  result = qword_27E530DF8;
  if (!qword_27E530DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DF8);
  }

  return result;
}

unint64_t sub_241139D74()
{
  result = qword_27E530E00;
  if (!qword_27E530E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E00);
  }

  return result;
}

unint64_t sub_241139DCC()
{
  result = qword_27E530E08;
  if (!qword_27E530E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E08);
  }

  return result;
}

void *sub_241139E4C()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for PendingAskMetadataStore();
  result = swift_allocObject();
  result[3] = sub_241139ED0;
  result[4] = 0;
  result[5] = sub_24113A4CC;
  result[6] = 0;
  result[2] = v0;
  qword_27E533BE0 = result;
  return result;
}

uint64_t sub_241139F1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a2;
  v49 = a3;
  v54 = sub_241165068();
  v4 = *(v54 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v54);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2411650D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v37[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v37[-v15];
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 URLsForDirectory:5 inDomains:1];

  v19 = sub_241165EF8();
  if (*(v19 + 16))
  {
    v44 = v9;
    v45 = v16;
    (*(v9 + 16))(v16, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v46 = v3;
    v52 = 0xD000000000000010;
    v53 = 0x800000024116BD70;
    v38 = *MEMORY[0x277CC91C0];
    v39 = v8;
    v20 = v4[13];
    v21 = v54;
    v20(v7);
    v43 = v4 + 13;
    v41 = v20;
    v22 = sub_241139978();
    v23 = v47;
    v40 = v22;
    sub_2411650C8();
    v24 = v4[1];
    v24(v7, v21);
    v42 = v4 + 1;
    v52 = 0xD000000000000014;
    v53 = 0x800000024116BEB0;
    (v20)(v7, v38, v21);
    v25 = v48;
    sub_2411650C8();
    v24(v7, v21);
    v26 = *(v44 + 8);
    v27 = v23;
    v28 = v39;
    v26(v27, v39);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_2411662B8();
    v29 = v51;

    v52 = v50;
    v53 = v29;
    MEMORY[0x245CDB790](0x7461646174656D5FLL, 0xEE006E6F736A2E61);
    v41(v7, *MEMORY[0x277CC91D0], v21);
    sub_2411650C8();
    v24(v7, v21);

    v26(v25, v28);
    return (v26)(v45, v28);
  }

  else
  {

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v31 = sub_241165288();
    __swift_project_value_buffer(v31, qword_27E533AC8);
    v32 = sub_241165268();
    v33 = sub_241166048();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116BEF0, &v52);
      _os_log_impl(&dword_2410F8000, v32, v33, "PendingAskMetadataStore.%s failed to lookup default file path", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v34, -1, -1);
    }

    sub_24113C6FC();
    swift_allocError();
    *v36 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_24113A518@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a2;
  v49 = a3;
  v54 = sub_241165068();
  v4 = *(v54 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v54);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2411650D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v37[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v37[-v15];
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 URLsForDirectory:13 inDomains:1];

  v19 = sub_241165EF8();
  if (*(v19 + 16))
  {
    v44 = v9;
    v45 = v16;
    (*(v9 + 16))(v16, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v46 = v3;
    v52 = 0xD000000000000010;
    v53 = 0x800000024116BD70;
    v38 = *MEMORY[0x277CC91C0];
    v39 = v8;
    v20 = v4[13];
    v21 = v54;
    v20(v7);
    v43 = v4 + 13;
    v41 = v20;
    v22 = sub_241139978();
    v23 = v47;
    v40 = v22;
    sub_2411650C8();
    v24 = v4[1];
    v24(v7, v21);
    v42 = v4 + 1;
    v52 = 0xD000000000000014;
    v53 = 0x800000024116BEB0;
    (v20)(v7, v38, v21);
    v25 = v48;
    sub_2411650C8();
    v24(v7, v21);
    v26 = *(v44 + 8);
    v27 = v23;
    v28 = v39;
    v26(v27, v39);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_2411662B8();
    v29 = v51;

    v52 = v50;
    v53 = v29;
    MEMORY[0x245CDB790](0x7461646174656D5FLL, 0xEE006E6F736A2E61);
    v41(v7, *MEMORY[0x277CC91D0], v21);
    sub_2411650C8();
    v24(v7, v21);

    v26(v25, v28);
    return (v26)(v45, v28);
  }

  else
  {

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v31 = sub_241165288();
    __swift_project_value_buffer(v31, qword_27E533AC8);
    v32 = sub_241165268();
    v33 = sub_241166048();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_241156B38(0xD000000000000012, 0x800000024116BED0, &v52);
      _os_log_impl(&dword_2410F8000, v32, v33, "PendingAskMetadataStore.%s failed to lookup default file path", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v34, -1, -1);
    }

    sub_24113C6FC();
    swift_allocError();
    *v36 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_24113AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2411650D8();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113AB90, 0, 0);
}

uint64_t sub_24113AB90()
{
  v27 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 + 48);
  (*(v2 + 40))(v0[4], v0[5]);
  v4 = v0[9];
  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];
  sub_24113C220();
  sub_241165128();
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v9 = v0[5];
  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533BA0);

  v11 = sub_241165268();
  v12 = sub_241166068();

  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  if (v13)
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_241156B38(0xD000000000000026, 0x800000024116BFA0, v26);
    *(v19 + 12) = 2080;
    v21 = sub_241165E08();
    v23 = sub_241156B38(v21, v22, v26);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_2410F8000, v11, v12, "PendingAskMetadataStore.%s added cached pending metadata %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  (*(v15 + 8))(v14, v16);
  v24 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_24113AFD8(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_2411650D8();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24113B0E0, 0, 0);
}

uint64_t sub_24113B0E0()
{
  v119 = v0;
  v118[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 + 32);
  (*(v2 + 24))(v0[4], v0[5]);
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  sub_24113C220();
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);
  v9(v8, v7);
  v32 = v0[10];
  v33 = *(v0[6] + 16);
  sub_2411650B8();
  v34 = sub_241165DA8();

  LODWORD(v32) = [v33 fileExistsAtPath_];

  if (!v32)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v77 = v0[9];
    v78 = v0[10];
    v79 = v0[7];
    v80 = v0[8];
    v81 = v0[5];
    v82 = sub_241165288();
    __swift_project_value_buffer(v82, qword_27E533BA0);
    (*(v80 + 16))(v77, v78, v79);

    v83 = sub_241165268();
    v84 = sub_241166048();

    v85 = os_log_type_enabled(v83, v84);
    v87 = v0[10];
    v86 = v0[11];
    v89 = v0[8];
    v88 = v0[9];
    v90 = v0[7];
    if (v85)
    {
      v91 = v0[4];
      v92 = v0[5];
      v117 = v0[11];
      v93 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v118[0] = v115;
      *v93 = 136315650;
      *(v93 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v118);
      *(v93 + 12) = 2080;
      v94 = sub_241165E08();
      v96 = sub_241156B38(v94, v95, v118);

      *(v93 + 14) = v96;
      *(v93 + 22) = 2080;
      sub_24113C750();
      v97 = sub_2411663B8();
      v99 = v98;
      v100 = *(v89 + 8);
      v100(v88, v90);
      v101 = sub_241156B38(v97, v99, v118);

      *(v93 + 24) = v101;
      _os_log_impl(&dword_2410F8000, v83, v84, "PendingAskMetadataStore.%s File not found to move %s, %s", v93, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v115, -1, -1);
      MEMORY[0x245CDC5E0](v93, -1, -1);

      v100(v87, v90);
      v100(v117, v90);
    }

    else
    {

      v109 = *(v89 + 8);
      v109(v88, v90);
      v109(v87, v90);
      v109(v86, v90);
    }

    goto LABEL_30;
  }

  v35 = v0[11];
  sub_2411650B8();
  v36 = sub_241165DA8();

  LODWORD(v35) = [v33 fileExistsAtPath_];

  if (v35)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v37 = v0[5];
    v38 = sub_241165288();
    __swift_project_value_buffer(v38, qword_27E533BA0);

    v39 = sub_241165268();
    v40 = sub_241166038();

    if (os_log_type_enabled(v39, v40))
    {
      v42 = v0[4];
      v41 = v0[5];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v118[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v118);
      *(v43 + 12) = 2080;
      v45 = sub_241165E08();
      v47 = sub_241156B38(v45, v46, v118);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_2410F8000, v39, v40, "PendingAskMetadataStore.%s file already exists %s removing...", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v44, -1, -1);
      MEMORY[0x245CDC5E0](v43, -1, -1);
    }

    v48 = v0[11];
    sub_2411650B8();
    v49 = sub_241165DA8();

    v0[3] = 0;
    v50 = [v33 removeItemAtPath:v49 error:v0 + 3];

    v51 = v0[3];
    if (!v50)
    {
      goto LABEL_27;
    }

    v52 = v51;
  }

  v53 = v0[10];
  v54 = v0[11];
  v55 = sub_241165078();
  v56 = sub_241165078();
  v0[2] = 0;
  v57 = [v33 moveItemAtURL:v55 toURL:v56 error:v0 + 2];

  v51 = v0[2];
  if (v57)
  {
    v58 = qword_27E530610;
    v59 = v51;
    if (v58 != -1)
    {
      swift_once();
    }

    v60 = v0[5];
    v61 = sub_241165288();
    __swift_project_value_buffer(v61, qword_27E533BA0);

    v62 = sub_241165268();
    v63 = sub_241166038();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v0[10];
    v66 = v0[11];
    v68 = v0[7];
    v67 = v0[8];
    if (v64)
    {
      v70 = v0[4];
      v69 = v0[5];
      v116 = v0[11];
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v118[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v118);
      *(v71 + 12) = 2080;
      v73 = sub_241165E08();
      v75 = sub_241156B38(v73, v74, v118);

      *(v71 + 14) = v75;
      _os_log_impl(&dword_2410F8000, v62, v63, "PendingAskMetadataStore.%s Move cached pending metadata %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v72, -1, -1);
      MEMORY[0x245CDC5E0](v71, -1, -1);

      v76 = *(v67 + 8);
      v76(v65, v68);
      v76(v116, v68);
    }

    else
    {

      v110 = *(v67 + 8);
      v110(v65, v68);
      v110(v66, v68);
    }

LABEL_30:
    v112 = v0[10];
    v111 = v0[11];
    v113 = v0[9];

    v29 = v0[1];
    v114 = *MEMORY[0x277D85DE8];
    goto LABEL_7;
  }

LABEL_27:
  v103 = v0[10];
  v102 = v0[11];
  v104 = v0[7];
  v105 = v0[8];
  v106 = v51;
  v107 = sub_241165058();

  swift_willThrow();
  v108 = *(v105 + 8);
  v108(v103, v104);
  v108(v102, v104);
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v11 = v0[5];
  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533BA0);

  v13 = v107;
  v14 = sub_241165268();
  v15 = sub_241166048();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[4];
    v16 = v0[5];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v118[0] = v20;
    *v18 = 136315650;
    *(v18 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v118);
    *(v18 + 12) = 2080;
    v21 = sub_241165E08();
    v23 = sub_241156B38(v21, v22, v118);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2112;
    v24 = v107;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v25;
    *v19 = v25;
    _os_log_impl(&dword_2410F8000, v14, v15, "PendingAskMetadataStore.%s Failed to move cached pending metadata %s: %@", v18, 0x20u);
    sub_2410FDEB8(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[9];
  swift_willThrow();

  v29 = v0[1];
  v30 = *MEMORY[0x277D85DE8];
LABEL_7:

  return v29();
}

uint64_t sub_24113BB20(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2411650D8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24113BC10, 0, 0);
}

uint64_t sub_24113BC10()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + 32);
  (*(v2 + 24))(v0[3], v0[4]);
  v19 = v0[8];
  v20 = *(v0[5] + 16);
  sub_2411650B8();
  v21 = sub_241165DA8();

  v22 = [v20 fileExistsAtPath_];

  if (!v22)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v45 = v0[4];
    v46 = sub_241165288();
    __swift_project_value_buffer(v46, qword_27E533BA0);

    v31 = sub_241165268();
    v32 = sub_241166068();

    v47 = os_log_type_enabled(v31, v32);
    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[6];
    if (!v47)
    {
      goto LABEL_18;
    }

    v49 = v0[3];
    v48 = v0[4];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v62[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v62);
    *(v39 + 12) = 2080;
    v50 = sub_241165E08();
    v52 = sub_241156B38(v50, v51, v62);

    *(v39 + 14) = v52;
    v44 = "PendingAskMetadataStore.%s message %s not found to remove";
    goto LABEL_17;
  }

  v23 = v0[8];
  v24 = sub_241165078();
  v0[2] = 0;
  v25 = [v20 removeItemAtURL:v24 error:v0 + 2];

  v26 = v0[2];
  if (v25)
  {
    v27 = qword_27E530610;
    v28 = v26;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = v0[4];
    v30 = sub_241165288();
    __swift_project_value_buffer(v30, qword_27E533BA0);

    v31 = sub_241165268();
    v32 = sub_241166068();

    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[6];
    if (!v33)
    {
      goto LABEL_18;
    }

    v38 = v0[3];
    v37 = v0[4];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v62[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v62);
    *(v39 + 12) = 2080;
    v41 = sub_241165E08();
    v43 = sub_241156B38(v41, v42, v62);

    *(v39 + 14) = v43;
    v44 = "PendingAskMetadataStore.%s removed pending message %s";
LABEL_17:
    _os_log_impl(&dword_2410F8000, v31, v32, v44, v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v40, -1, -1);
    MEMORY[0x245CDC5E0](v39, -1, -1);
LABEL_18:

    (*(v35 + 8))(v34, v36);
    goto LABEL_19;
  }

  v58 = v0[7];
  v57 = v0[8];
  v59 = v0[6];
  v60 = v26;
  v61 = sub_241165058();

  swift_willThrow();
  (*(v58 + 8))(v57, v59);
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533BA0);

  v6 = v61;
  v7 = sub_241165268();
  v8 = sub_241166048();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62[0] = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v62);
    *(v11 + 12) = 2080;
    v14 = sub_241165E08();
    v16 = sub_241156B38(v14, v15, v62);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2112;
    v17 = v61;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_2410F8000, v7, v8, "PendingAskMetadataStore.%s Failed to remove pending message %s: %@", v11, 0x20u);
    sub_2410FDEB8(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  else
  {
  }

LABEL_19:
  v53 = v0[8];

  v54 = v0[1];
  v55 = *MEMORY[0x277D85DE8];

  return v54();
}

void sub_24113C220()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2411650D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241165088();
  sub_2411650A8();
  v6 = *(v0 + 16);
  v7 = sub_241165DA8();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E533AC8);
    v10 = sub_241165268();
    v11 = sub_241166068();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_241156B38(0xD000000000000023, 0x800000024116BF10, v31);
      _os_log_impl(&dword_2410F8000, v10, v11, "PendingAskMetadataStore.%s directory already exists", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v14 = sub_241165078();
    v31[0] = 0;
    v15 = [v6 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v31];

    if (v15)
    {
      v16 = *(v2 + 8);
      v17 = v31[0];
      v16(v5, v1);
    }

    else
    {
      v18 = v31[0];
      v19 = sub_241165058();

      swift_willThrow();
      (*(v2 + 8))(v5, v1);
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v20 = sub_241165288();
      __swift_project_value_buffer(v20, qword_27E533AC8);
      v21 = v19;
      v22 = sub_241165268();
      v23 = sub_241166048();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = sub_241156B38(0xD000000000000023, 0x800000024116BF10, v31);
        *(v24 + 12) = 2112;
        v27 = v19;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_2410F8000, v22, v23, "PendingAskMetadataStore.%s Failed to create storage directory: %@", v24, 0x16u);
        sub_2410FDEB8(v25);
        MEMORY[0x245CDC5E0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x245CDC5E0](v26, -1, -1);
        MEMORY[0x245CDC5E0](v24, -1, -1);
      }

      else
      {
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24113C690()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_24113C6FC()
{
  result = qword_27E530E10;
  if (!qword_27E530E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E10);
  }

  return result;
}

unint64_t sub_24113C750()
{
  result = qword_27E530C70;
  if (!qword_27E530C70)
  {
    sub_2411650D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppExtension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24113C908()
{
  result = qword_27E530E18;
  if (!qword_27E530E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E18);
  }

  return result;
}

uint64_t sub_24113C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2411400E0(a3, v27 - v11);
  v13 = sub_241165FA8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2410FB29C(v12, &unk_27E530F50, &qword_241167C20);
  }

  else
  {
    sub_241165F98();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_241165F58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_241165DF8() + 32;
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

      sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);

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

  sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);
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

uint64_t sub_24113CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113CCEC, 0, 0);
}

uint64_t sub_24113CCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = v3;
  v4 = v3[20];
  v5 = v4[9];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      v9 = v3[17];
      sub_241135730(v8, (v3 + 7));
      v10 = sub_2411656C8();
      v44 = sub_241160DD4(v10);

      if (qword_27E530618 != -1)
      {
        swift_once();
      }

      v11 = v3[17];
      v12 = sub_241165288();
      __swift_project_value_buffer(v12, qword_27E533BB8);
      v13 = v11;
      v14 = sub_241165268();
      v15 = sub_241166038();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v3[17];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v45 = v18;
        *v17 = 136315394;
        v19 = sub_2411656C8();
        v20 = v6;
        v21 = sub_241165328();
        v23 = v22;

        v24 = v21;
        v6 = v20;
        v25 = sub_241156B38(v24, v23, &v45);

        *(v17 + 4) = v25;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v44;
        _os_log_impl(&dword_2410F8000, v14, v15, "Can process response for question %s: %{BOOL}d", v17, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v26 = v18;
        v5 = v42;
        MEMORY[0x245CDC5E0](v26, -1, -1);
        MEMORY[0x245CDC5E0](v17, -1, -1);

        if (v44)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v44)
        {
LABEL_12:
          sub_24110324C((v43 + 56), v43 + 16);
          v27 = *__swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
          v28 = swift_task_alloc();
          *(v43 + 176) = v28;
          *v28 = v43;
          v28[1] = sub_24113D0D8;
          v29 = *(v43 + 136);

          return sub_24115FCFC(v29, v27);
        }
      }

      ++v7;
      v3 = v43;
      a1 = __swift_destroy_boxed_opaque_existential_1((v43 + 56));
      v8 += 40;
      if (v6 == v7)
      {
        v4 = *(v43 + 160);
        break;
      }
    }
  }

  v31 = v3[21];
  v33 = v3[18];
  v32 = v3[19];
  v34 = v3[17];
  v35 = sub_241165FA8();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v4;
  v36[5] = v34;
  v36[6] = v33;
  v36[7] = v32;
  v34;

  sub_24113C95C(0, 0, v31, &unk_241168EE8, v36);

  v37 = __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v3[23] = v37;
  v38 = sub_2411656C8();
  v39 = sub_241165328();
  v41 = v40;

  v3[24] = v39;
  v3[25] = v41;
  a2 = *v37;
  a1 = sub_24113D334;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24113D0D8()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24113D1D4, 0, 0);
}

uint64_t sub_24113D1D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = sub_241165FA8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;
  v7[7] = v3;
  v8 = v5;

  sub_24113C95C(0, 0, v1, &unk_241168EE8, v7);

  v9 = __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v0[23] = v9;
  v10 = sub_2411656C8();
  v11 = sub_241165328();
  v13 = v12;

  v0[24] = v11;
  v0[25] = v13;
  v14 = *v9;

  return MEMORY[0x2822009F8](sub_24113D334, v14, 0);
}

uint64_t sub_24113D334()
{
  v1 = **(v0 + 184);
  *(v0 + 248) = sub_241137C44(*(v0 + 192), *(v0 + 200)) & 1;

  return MEMORY[0x2822009F8](sub_24113D3B8, 0, 0);
}

uint64_t sub_24113D3B8()
{
  v38 = v0;
  if (*(v0 + 248) == 1)
  {
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 136);
    v2 = sub_241165288();
    *(v0 + 208) = __swift_project_value_buffer(v2, qword_27E533AE0);
    v3 = v1;
    v4 = sub_241165268();
    v5 = sub_241166068();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 136);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37 = v8;
      *v7 = 136315138;
      v9 = sub_2411656C8();
      v10 = sub_241165328();
      v12 = v11;

      v13 = sub_241156B38(v10, v12, &v37);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_2410F8000, v4, v5, "This is a pending Ask for this device. Processing response. %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245CDC5E0](v8, -1, -1);
      MEMORY[0x245CDC5E0](v7, -1, -1);
    }

    v14 = *(v0 + 160);
    sub_24113DE94(*(v0 + 136), *(v0 + 144), *(v0 + 152));
    v15 = __swift_project_boxed_opaque_existential_1((v14 + 32), *(v14 + 56));
    *(v0 + 216) = v15;
    v16 = sub_2411656C8();
    v17 = sub_241165328();
    v19 = v18;

    *(v0 + 224) = v17;
    *(v0 + 232) = v19;
    v20 = *v15;

    return MEMORY[0x2822009F8](sub_24113D728, v20, 0);
  }

  else
  {
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 136);
    v22 = sub_241165288();
    __swift_project_value_buffer(v22, qword_27E533AE0);
    v23 = v21;
    v24 = sub_241165268();
    v25 = sub_241166068();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 136);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      v29 = sub_2411656C8();
      v30 = sub_241165328();
      v32 = v31;

      v33 = sub_241156B38(v30, v32, &v37);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2410F8000, v24, v25, "This is not a pending Ask for this device. Ignoring response. %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245CDC5E0](v28, -1, -1);
      MEMORY[0x245CDC5E0](v27, -1, -1);
    }

    v34 = *(v0 + 168);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_24113D728()
{
  v1 = **(v0 + 216);
  sub_241137F68(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](sub_24113D7A4, 0, 0);
}

uint64_t sub_24113D7A4()
{
  v1 = v0[18];
  v2 = v0[19];
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v3 = sub_24113FEE0(v1, v2, 0);
  v17 = v3;
  if (!v3)
  {
    goto LABEL_2;
  }

  v18 = [v3 identities];
  sub_2410FCF28(0, &unk_27E530E20, 0x277CC1E58);
  v19 = sub_241165EF8();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_2;
  }

  result = sub_2411661F8();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x245CDBC20](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [objc_opt_self() identityForLSApplicationIdentity_];
  if (!v22)
  {

LABEL_2:
    v4 = v0[26];
    v5 = sub_241165268();
    v6 = sub_241166048();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2410F8000, v5, v6, "Client process identity was nil. Assuming client process is XPC-capable.", v7, 2u);
      MEMORY[0x245CDC5E0](v7, -1, -1);
    }

    v8 = &type metadata for DaemonLauncher;
    v9 = &off_2852EC878;
    v0[15] = &type metadata for DaemonLauncher;
    v0[16] = &off_2852EC878;
    goto LABEL_5;
  }

  v23 = v22;
  v24 = v0[26];
  v25 = [v22 isApplication];
  v26 = sub_241165268();
  v27 = sub_241166068();
  v28 = os_log_type_enabled(v26, v27);
  if (v25)
  {
    if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2410F8000, v26, v27, "Client process is an app. Using BoardServices to notify the client of the AskTo response.", v29, 2u);
      MEMORY[0x245CDC5E0](v29, -1, -1);
    }

    v8 = &type metadata for AppLauncher;
    v9 = &off_2852EB0F8;
  }

  else
  {
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2410F8000, v26, v27, "Client process is not an app, so we're assuming we're a daemon or some other process type that allows us to XPC to it.", v30, 2u);
      MEMORY[0x245CDC5E0](v30, -1, -1);
    }

    v8 = &type metadata for DaemonLauncher;
    v9 = &off_2852EC878;
  }

  v0[15] = v8;
  v0[16] = v9;

LABEL_5:
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v10 = v9[1];
  v31 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_24113DBAC;
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];

  return (v31)(v14, v13, v15, v8, v9);
}

uint64_t sub_24113DBAC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24113DCA8, 0, 0);
}

uint64_t sub_24113DCA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[21];

  v2 = v0[1];

  return v2();
}

id sub_24113DD10()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
LABEL_5:
    v9 = v1;
    return v2;
  }

  v3 = *(v0 + 16);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() defaultCenter];
    v7 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v3 accountStore:v5 notificationCenter:v6];

    v8 = *(v0 + 24);
    *(v0 + 24) = v7;
    v2 = v7;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24113DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_241106740;

  return sub_2411402F8(a5, a6, a7);
}

void sub_24113DE94(void *a1, void *a2, uint64_t a3)
{
  v99 = a3;
  v98 = a2;
  v97 = sub_2411659F8();
  v4 = *(v97 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v97);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v93 - v10);
  v12 = sub_2411656C8();
  v13 = sub_2411653A8();

  v14 = sub_241165368();
  v16 = v15;

  if (v14 == 0xD00000000000002DLL && 0x800000024116B440 == v16)
  {

    goto LABEL_5;
  }

  v17 = sub_2411663E8();

  if (v17)
  {
LABEL_5:
    v18 = sub_2411656C8();
    sub_241165298();

    v19 = sub_2411652E8();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v11, 1, v19) == 1)
    {
      sub_2410FB29C(v11, &qword_27E530CE8, &qword_241168400);
LABEL_16:
      if (qword_27E5305D0 != -1)
      {
        swift_once();
      }

      v36 = sub_241165288();
      __swift_project_value_buffer(v36, qword_27E533AE0);
      v37 = a1;
      v38 = sub_241165268();
      v39 = sub_241166048();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v102 = v41;
        *v40 = 136315138;
        v42 = sub_2411656C8();
        v43 = sub_241165328();
        v45 = v44;

        v46 = sub_241156B38(v43, v45, &v102);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_2410F8000, v38, v39, "Comm Limits AskTo response for question %s could not decode topic", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x245CDC5E0](v41, -1, -1);
        MEMORY[0x245CDC5E0](v40, -1, -1);
      }

      return;
    }

    if ((*(v20 + 88))(v11, v19) != *MEMORY[0x277CEEAD0])
    {
      (*(v20 + 8))(v11, v19);
      goto LABEL_16;
    }

    (*(v20 + 96))(v11, v19);
    v21 = *v11;
    v22 = sub_2411656A8();
    v23 = sub_241165418();
    v25 = v24;

    if (v23 == 0xD000000000000028 && 0x800000024116C060 == v25)
    {
    }

    else
    {
      v48 = sub_2411663E8();

      if ((v48 & 1) == 0)
      {
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v78 = sub_241165288();
        __swift_project_value_buffer(v78, qword_27E533AE0);
        v79 = a1;
        v64 = sub_241165268();
        v65 = sub_241166068();

        if (!os_log_type_enabled(v64, v65))
        {
          goto LABEL_53;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v102 = v67;
        *v66 = 136315138;
        v80 = sub_2411656C8();
        v81 = sub_241165328();
        v83 = v82;

        v84 = sub_241156B38(v81, v83, &v102);

        *(v66 + 4) = v84;
        v73 = "Comm Limits AskTo response for question %s was declined";
        goto LABEL_52;
      }
    }

    v96 = a1;
    v102 = MEMORY[0x277D84F90];
    v49 = sub_241165A18();
    v50 = *(v49 + 16);
    if (v50)
    {
      v94 = v21;
      v95 = v49;
      v51 = v4 + 16;
      v52 = *(v4 + 16);
      v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
      v54 = *(v51 + 56);
      v55 = (v51 - 8);
      do
      {
        v56 = v97;
        v52(v7, v53, v97);
        v57 = sub_24113E968(v7, v98, v99);
        (*v55)(v7, v56);
        v58 = v57;
        MEMORY[0x245CDB820]();
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_241165F18();
        }

        sub_241165F28();

        v53 += v54;
        --v50;
      }

      while (v50);
      v59 = v102;

      v21 = v94;
      if (!(v59 >> 62))
      {
LABEL_31:
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

LABEL_39:

        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v74 = sub_241165288();
        __swift_project_value_buffer(v74, qword_27E533AE0);
        v75 = sub_241165268();
        v76 = sub_241166048();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_2410F8000, v75, v76, "No contacts to save! Bailing", v77, 2u);
          MEMORY[0x245CDC5E0](v77, -1, -1);
        }

        return;
      }
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_31;
      }
    }

    if (sub_2411661F8())
    {
LABEL_32:
      v60 = sub_24113EFB4(v59);

      if (v60)
      {
        v61 = v96;
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v62 = sub_241165288();
        __swift_project_value_buffer(v62, qword_27E533AE0);
        v63 = v61;
        v64 = sub_241165268();
        v65 = sub_241166048();

        if (!os_log_type_enabled(v64, v65))
        {
          goto LABEL_53;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v101 = v67;
        *v66 = 136315138;
        v68 = sub_2411656C8();
        v69 = sub_241165328();
        v71 = v70;

        v72 = sub_241156B38(v69, v71, &v101);

        *(v66 + 4) = v72;
        v73 = "Successfully handled AskTo response for question id %s";
      }

      else
      {
        v85 = v96;
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v86 = sub_241165288();
        __swift_project_value_buffer(v86, qword_27E533AE0);
        v87 = v85;
        v64 = sub_241165268();
        v65 = sub_241166048();

        if (!os_log_type_enabled(v64, v65))
        {
          goto LABEL_53;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v101 = v67;
        *v66 = 136315138;
        v88 = sub_2411656C8();
        v89 = sub_241165328();
        v91 = v90;

        v92 = sub_241156B38(v89, v91, &v101);

        *(v66 + 4) = v92;
        v73 = "Failed to handle AskTo response for question id %s";
      }

LABEL_52:
      _os_log_impl(&dword_2410F8000, v64, v65, v73, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x245CDC5E0](v67, -1, -1);
      MEMORY[0x245CDC5E0](v66, -1, -1);
LABEL_53:

      return;
    }

    goto LABEL_39;
  }

  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v26 = sub_241165288();
  __swift_project_value_buffer(v26, qword_27E533AE0);
  v27 = a1;
  v100 = sub_241165268();
  v28 = sub_241166048();

  if (os_log_type_enabled(v100, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v102 = v30;
    *v29 = 136315138;
    v31 = sub_2411656C8();
    v32 = sub_241165328();
    v34 = v33;

    v35 = sub_241156B38(v32, v34, &v102);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_2410F8000, v100, v28, "Question %s was not a communication question", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245CDC5E0](v30, -1, -1);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  else
  {
    v47 = v100;
  }
}

id sub_24113E968(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v49 - v6;
  v8 = sub_241165028();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2411659B8();
  if (v14 && (v15 = sub_24113F6E4(v13, v14), , v15))
  {
    [v15 mutableCopy];
    sub_2411661A8();

    swift_unknownObjectRelease();
    sub_2410FCF28(0, &qword_27E530E58, 0x277CBDB38);
    swift_dynamicCast();
    v17 = v51;
    v16 = v52;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    sub_2411659D8();
    if (v19)
    {

      sub_241165038();

      (*(v9 + 56))(v7, 0, 1, v8);
      (*(v9 + 32))(v12, v7, v8);
      v16 = v18;
      sub_24115AB9C();
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v16 = v18;
    }

    v20 = sub_241165998();
    v17 = v51;
    if (v21 >> 60 != 15)
    {
      v22 = v20;
      v23 = v21;
      v24 = sub_2411650F8();
      [v16 setImageData_];

      sub_241109164(v22, v23);
    }
  }

  sub_2410FCF28(0, &unk_27E530E40, 0x277CC1E90);

  v25 = sub_24113FD84(v17, a3, 1);
  if (v25)
  {
    v50 = v25;
    v28 = [v25 localizedName];
    v26 = sub_241165DD8();
    v27 = v29;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v50 = 0;
  }

  v30 = sub_2411659E8();
  v49[1] = MEMORY[0x245CDB260]();

  v31 = sub_2411659E8();
  MEMORY[0x245CDB260]();

  v51 = v16;
  if (v27)
  {
    v49[0] = v26;
  }

  else
  {

    v49[0] = v17;
  }

  v32 = sub_2411659E8();
  MEMORY[0x245CDB260](v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2411673F0;
  *(v33 + 32) = v17;
  *(v33 + 40) = a3;
  v34 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

  v35 = sub_241165DA8();

  v36 = sub_241165DA8();

  v37 = sub_241165DA8();

  v38 = sub_241165DA8();

  v39 = sub_241165EE8();

  v40 = [v34 initWithUrlString:0 username:v35 userIdentifier:v36 service:v37 displayname:v38 teamIdentifier:0 bundleIdentifiers:v39];

  v41 = objc_allocWithZone(MEMORY[0x277CBDB20]);
  v42 = [v41 initWithLabel:0 value:{v40, v49[0]}];
  v43 = v51;
  v44 = [v51 socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E50, qword_241168F00);
  v45 = sub_241165EF8();

  v53 = v45;
  MEMORY[0x245CDB820]();
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v48 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_241165F18();
  }

  sub_241165F28();
  v46 = sub_241165EE8();

  [v43 setSocialProfiles_];

  return v43;
}

id sub_24113EFB4(unint64_t a1)
{
  v5 = a1;
  v57 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    v6 = sub_2411661F8();
    if (v6)
    {
LABEL_3:
      v7 = sub_24113DD10();
      v53 = [v7 downtimeWhitelistContainer];

      v55 = MEMORY[0x277D84F90];
      v56 = MEMORY[0x277D84F90];
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v51 = v1;
        v8 = 0;
        v2 = MEMORY[0x277D84F90];
        v3 = MEMORY[0x277D84F90];
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x245CDBC20](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = [v9 hasBeenPersisted];
          v12 = v10;
          if (v11)
          {
            MEMORY[0x245CDB820]();
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v14 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_241165F18();
            }

            sub_241165F28();

            v2 = v55;
          }

          else
          {
            MEMORY[0x245CDB820]();
            if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v13 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_241165F18();
            }

            sub_241165F28();

            v3 = v56;
          }

          ++v8;
        }

        while (v6 != v8);
        v5 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
        [v5 setIgnoresGuardianRestrictions_];
        v4 = 0x278CC3000uLL;
        v15 = [v53 identifier];
        v16 = sub_241165DD8();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19)
        {
          if (qword_27E5305D0 != -1)
          {
            swift_once();
          }

          v20 = sub_241165288();
          __swift_project_value_buffer(v20, qword_27E533AE0);
          v21 = sub_241165268();
          v22 = sub_241166048();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&dword_2410F8000, v21, v22, "downtimeContainer.identifier has no value. This will cause issues saving the contact.", v23, 2u);
            MEMORY[0x245CDC5E0](v23, -1, -1);
          }
        }

        if (!(v3 >> 62))
        {
          v52 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v52)
          {
            goto LABEL_41;
          }

LABEL_26:
          if (v52 < 1)
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v24 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x245CDBC20](v24, v3);
            }

            else
            {
              v25 = *(v3 + 8 * v24 + 32);
            }

            v26 = v25;
            v27 = [v53 *(v4 + 3448)];
            if (!v27)
            {
              sub_241165DD8();
              v27 = sub_241165DA8();
            }

            ++v24;
            [v5 addContact:v26 toContainerWithIdentifier:v27];
          }

          while (v52 != v24);
LABEL_41:

          if (v2 >> 62)
          {
            v33 = sub_2411661F8();
            if (v33)
            {
LABEL_43:
              if (v33 >= 1)
              {
                for (i = 0; i != v33; ++i)
                {
                  if ((v2 & 0xC000000000000001) != 0)
                  {
                    v35 = MEMORY[0x245CDBC20](i, v2);
                  }

                  else
                  {
                    v35 = *(v2 + 8 * i + 32);
                  }

                  v36 = v35;
                  [v5 updateContact_];
                }

                goto LABEL_50;
              }

              goto LABEL_59;
            }
          }

          else
          {
            v33 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v33)
            {
              goto LABEL_43;
            }
          }

LABEL_50:

          v37 = *(v51 + 16);
          v54 = 0;
          v32 = [v37 executeSaveRequest:v5 error:&v54];
          if (v32)
          {
            v38 = v54;
          }

          else
          {
            v39 = v54;
            v40 = sub_241165058();

            swift_willThrow();
            if (qword_27E5305D0 != -1)
            {
              swift_once();
            }

            v41 = sub_241165288();
            __swift_project_value_buffer(v41, qword_27E533AE0);
            v42 = v40;
            v43 = sub_241165268();
            v44 = sub_241166048();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              *v45 = 138412290;
              v47 = v40;
              v48 = _swift_stdlib_bridgeErrorToNSError();
              *(v45 + 4) = v48;
              *v46 = v48;
              _os_log_impl(&dword_2410F8000, v43, v44, "Error persisting contacts: %@", v45, 0xCu);
              sub_2410FB29C(v46, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v46, -1, -1);
              MEMORY[0x245CDC5E0](v45, -1, -1);
            }

            else
            {
            }
          }

          goto LABEL_57;
        }
      }

      v52 = sub_2411661F8();
      if (!v52)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E5305D0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v28 = sub_241165288();
  __swift_project_value_buffer(v28, qword_27E533AE0);
  v29 = sub_241165268();
  v30 = sub_241166048();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2410F8000, v29, v30, "No contacts were found in the vCard data in the AskTo payload", v31, 2u);
    MEMORY[0x245CDC5E0](v31, -1, -1);
  }

  v32 = 0;
LABEL_57:
  v49 = *MEMORY[0x277D85DE8];
  return v32;
}