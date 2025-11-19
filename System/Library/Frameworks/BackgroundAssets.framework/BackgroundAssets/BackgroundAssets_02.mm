uint64_t ManifestInstaller.deinit()
{
  v1 = v0;
  if (qword_27DE87AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_236E81DA4();
  __swift_project_value_buffer(v2, qword_27DE881F0);
  v3 = sub_236E820E4();
  v4 = sub_236E81D84();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_236E28000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x2383C0E50](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  return v1;
}

uint64_t ManifestInstaller.__deallocating_deinit()
{
  ManifestInstaller.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ManifestInstaller.install(_:forAppWithBundleID:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  v6 = *(*(sub_236E81904() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  *(v4 + 176) = *(a1 + 8);
  *(v4 + 88) = *(a1 + 1);

  return MEMORY[0x2822009F8](sub_236E65924, 0, 0);
}

uint64_t sub_236E65924()
{
  v45 = v0;
  if (qword_27DE87AD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = sub_236E81DA4();
  *(v0 + 104) = __swift_project_value_buffer(v4, qword_27DE881F0);
  v5 = sub_236E820E4();

  v6 = sub_236E81D84();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = *(v0 + 80);
    v38 = *(v0 + 48);
    v40 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136446466;

    sub_236E82264();

    v43 = 0xD000000000000024;
    v44 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E667E0();
    v10 = sub_236E820A4();
    MEMORY[0x2383BFD30](v10);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v11 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v42);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_236E381CC(v38, v40, &v42);
    _os_log_impl(&dword_236E28000, v6, v5, "Install: %{public}s for app with bundle ID: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 176);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = sub_236E81944();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 112) = sub_236E81934();
  sub_236E818F4();
  sub_236E81914();
  *(v0 + 16) = v16;
  *(v0 + 24) = v14;
  *(v0 + 32) = v13;
  *(v0 + 40) = v12;
  sub_236E59354();
  v20 = sub_236E81924();
  *(v0 + 120) = v20;
  *(v0 + 128) = v21;
  v41 = v21;
  v22 = v20;
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);

  v25 = sub_236E81D84();
  v26 = sub_236E82114();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 80);
    v37 = *(v0 + 48);
    v39 = *(v0 + 56);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    v43 = 0;
    *v28 = 136446466;
    v44 = 0xE000000000000000;

    sub_236E82264();

    v43 = 0xD000000000000024;
    v44 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E667E0();
    v30 = sub_236E820A4();
    MEMORY[0x2383BFD30](v30);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v31 = sub_236E381CC(v43, v44, &v42);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_236E381CC(v37, v39, &v42);
    _os_log_impl(&dword_236E28000, v25, v26, "Installing the manifest “%{public}s” for the app with the bundle ID “%{public}s”…", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v29, -1, -1);
    MEMORY[0x2383C0E50](v28, -1, -1);
  }

  *(v0 + 136) = *(*(v0 + 64) + 16);
  v32 = *(MEMORY[0x277D25C00] + 4);
  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = sub_236E65EA8;
  v34 = *(v0 + 48);
  v35 = *(v0 + 56);

  return MEMORY[0x282184AB0](v22, v41, v34, v35, 0, 0);
}

uint64_t sub_236E65EA8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_236E6633C;
  }

  else
  {
    v3 = sub_236E65FBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E65FBC()
{
  v19 = v0;
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 56);

    v3 = sub_236E81D84();
    v4 = sub_236E82114();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_236E381CC(v6, v5, &v18);
      _os_log_impl(&dword_236E28000, v3, v4, "Adding an App Review record of the app with the bundle ID “%{public}s”…", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2383C0E50](v8, -1, -1);
      MEMORY[0x2383C0E50](v7, -1, -1);
    }

    v9 = *(MEMORY[0x277D25C18] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_236E661AC;
    v11 = *(v0 + 136);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    return MEMORY[0x282184AD0](v13, v12);
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = *(v0 + 72);
    sub_236E38C74(*(v0 + 120), *(v0 + 128));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_236E661AC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_236E663B4;
  }

  else
  {
    v3 = sub_236E662C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236E662C0()
{
  v1 = v0[14];
  v2 = v0[9];
  sub_236E38C74(v0[15], v0[16]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_236E6633C()
{
  v1 = v0[14];
  sub_236E38C74(v0[15], v0[16]);

  v2 = v0[19];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_236E663B4()
{
  v1 = v0[14];
  sub_236E38C74(v0[15], v0[16]);

  v2 = v0[21];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t ManifestInstaller.uninstall(forAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_236E66450, 0, 0);
}

uint64_t sub_236E66450()
{
  v23 = v0;
  if (qword_27DE87AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_236E81DA4();
  __swift_project_value_buffer(v2, qword_27DE881F0);
  v3 = sub_236E820E4();

  v4 = sub_236E81D84();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_236E381CC(v6, v5, &v22);
    _os_log_impl(&dword_236E28000, v4, v3, "Uninstall for app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v9 = v0[3];

  v10 = sub_236E81D84();
  v11 = sub_236E82114();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_236E381CC(v13, v12, &v22);
    _os_log_impl(&dword_236E28000, v10, v11, "Uninstalling the manifest for the app with the bundle ID: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383C0E50](v15, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  v16 = *(v0[4] + 16);
  v17 = *(MEMORY[0x277D25C10] + 4);
  v18 = swift_task_alloc();
  v0[5] = v18;
  *v18 = v0;
  v18[1] = sub_236E666EC;
  v20 = v0[2];
  v19 = v0[3];

  return MEMORY[0x282184AC8](v20, v19);
}

uint64_t sub_236E666EC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_236E667E0()
{
  result = qword_27DE88020;
  if (!qword_27DE88020)
  {
    type metadata accessor for AssetPack(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88020);
  }

  return result;
}

uint64_t sub_236E6689C(uint64_t a1)
{
  v2 = sub_236E81AC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 3)
  {
LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  if (a1 == 2)
  {
    v7 = MEMORY[0x277D25B78];
    goto LABEL_6;
  }

  if (a1 != 1)
  {
    if (qword_27DE87AD8 != -1)
    {
      swift_once();
    }

    v11 = sub_236E81DA4();
    __swift_project_value_buffer(v11, qword_27DE88208);
    v12 = sub_236E82104();
    v13 = sub_236E81D84();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = a1;
      v21 = v15;
      *v14 = 136446210;
      type metadata accessor for BAContentRequest(0);
      v16 = sub_236E81ED4();
      v18 = sub_236E381CC(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_236E28000, v13, v12, "The content request “%{public}s” is unknown.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2383C0E50](v15, -1, -1);
      MEMORY[0x2383C0E50](v14, -1, -1);
    }

    goto LABEL_12;
  }

  v7 = MEMORY[0x277D25B70];
LABEL_6:
  v8 = *v7;
  v9 = sub_236E81AB4();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  (*(v3 + 104))(v6, *MEMORY[0x277D25B98], v2);
  v10 = sub_236E81AA4();
  (*(v3 + 8))(v6, v2);
  return v10 & 1;
}

uint64_t sub_236E66B28()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88208);
  __swift_project_value_buffer(v0, qword_27DE88208);
  return sub_236E81D94();
}

id sub_236E66BD8(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 integerValue];

  return v4;
}

id AssetPack.download(for:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236E818A4();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v45 = a1;
  if (a2)
  {
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v15 = sub_236E81DA4();
    __swift_project_value_buffer(v15, qword_27DE88220);
    v16 = sub_236E820E4();
    v17 = sub_236E81D84();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_236E28000, v17, v16, "Download", v18, 2u);
LABEL_10:
      MEMORY[0x2383C0E50](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v19 = sub_236E81DA4();
    __swift_project_value_buffer(v19, qword_27DE88220);
    v20 = sub_236E820E4();
    v17 = sub_236E81D84();
    if (os_log_type_enabled(v17, v20))
    {
      v18 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v18 = 136446210;
      v50 = a1;
      type metadata accessor for BAContentRequest(0);
      v21 = sub_236E81ED4();
      v23 = v6;
      v24 = sub_236E381CC(v21, v22, &v51);

      *(v18 + 4) = v24;
      v6 = v23;
      _os_log_impl(&dword_236E28000, v17, v20, "Download for: %{public}s", v18, 0xCu);
      v25 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2383C0E50](v25, -1, -1);
      goto LABEL_10;
    }
  }

  v27 = *v3;
  v26 = *(v3 + 1);
  v28 = type metadata accessor for AssetPack(0);
  (*(v7 + 16))(v10, &v3[v28[9]], v6);
  v29 = sub_236E81894();
  MEMORY[0x28223BE20](v29);
  v42 = v3;
  v46 = v14;
  if (v49)
  {
    v49 = 0;
  }

  else
  {
    v51 = v45;
    sub_236E6C45C(&v51, &v50);
    v49 = v50;
  }

  v30 = *(v3 + 2);
  v31 = &v3[v28[10]];
  if (*(v31 + 1))
  {
    v32 = *v31;
    v33 = *(v31 + 1);
  }

  else
  {
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    sub_236E3BA24();
  }

  v34 = v3[v28[11]];
  v35 = objc_allocWithZone(BAURLDownload);

  v36 = sub_236E81E74();
  v37 = v46;
  v38 = sub_236E81884();
  v39 = sub_236E81E74();

  LOBYTE(v42) = v34;
  v40 = [v35 initWithIdentifier:v36 request:v38 essential:v49 & 1 fileSize:v30 applicationGroupIdentifier:v39 priority:0 forManagedAssetPack:v42];

  (*(v47 + 8))(v37, v48);
  return v40;
}

uint64_t sub_236E67120@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_236E671DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE007963696C6F50;
  v3 = 0xD000000000000011;
  v4 = 0x64616F6C6E776F64;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (v5)
    {
      v6 = 0x8000000236E89D50;
    }

    else
    {
      v6 = 0x8000000236E89D30;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x64616F6C6E776F64;
    v6 = 0xEE007963696C6F50;
  }

  else if (a1 == 3)
  {
    v6 = 0x8000000236E89D80;
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xEB000000006C7255;
    v7 = 0x64616F6C6E776F64;
  }

  v8 = 0x8000000236E89D80;
  v9 = 0xD00000000000001BLL;
  if (a2 != 3)
  {
    v9 = 0x64616F6C6E776F64;
    v8 = 0xEB000000006C7255;
  }

  if (a2 != 2)
  {
    v4 = v9;
    v2 = v8;
  }

  v10 = 0x8000000236E89D50;
  if (a2)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v10 = 0x8000000236E89D30;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v7 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_236E824E4();
  }

  return v13 & 1;
}

uint64_t sub_236E67350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x506E6F6973726576;
  v4 = 0xEF644963696C6275;
  if (v2 != 1)
  {
    v3 = 0x496E6F6973726576;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4E6E6F6973726576;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00007265626D75;
  }

  v7 = 0x506E6F6973726576;
  v8 = 0xEF644963696C6275;
  if (*a2 != 1)
  {
    v7 = 0x496E6F6973726576;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4E6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00007265626D75;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_236E824E4();
  }

  return v11 & 1;
}

uint64_t sub_236E6747C()
{
  v1 = *v0;
  sub_236E82574();
  sub_236E81F04();

  return sub_236E82594();
}

uint64_t sub_236E6753C()
{
  *v0;
  *v0;
  sub_236E81F04();
}

uint64_t sub_236E675E8()
{
  v1 = *v0;
  sub_236E82574();
  sub_236E81F04();

  return sub_236E82594();
}

uint64_t sub_236E676A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236E6F780();
  *a2 = result;
  return result;
}

void sub_236E676D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007265626D75;
  v4 = 0xEF644963696C6275;
  v5 = 0x506E6F6973726576;
  if (v2 != 1)
  {
    v5 = 0x496E6F6973726576;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_236E67750()
{
  v1 = 0x506E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x496E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E6E6F6973726576;
  }
}

uint64_t sub_236E677C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_236E6F780();
  *a1 = result;
  return result;
}

uint64_t sub_236E677FC(uint64_t a1)
{
  v2 = sub_236E6D978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E67838(uint64_t a1)
{
  v2 = sub_236E6D978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E6788C()
{
  v1 = *v0;
  sub_236E82574();
  MEMORY[0x2383C0390](v1);
  return sub_236E82594();
}

uint64_t sub_236E678D4()
{
  v1 = *v0;
  sub_236E82574();
  MEMORY[0x2383C0390](v1);
  return sub_236E82594();
}

uint64_t sub_236E67948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000236E8ACD0 == a2 || (sub_236E824E4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000236E8ACF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_236E824E4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_236E67A3C(uint64_t a1)
{
  v2 = sub_236E6D9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E67A78(uint64_t a1)
{
  v2 = sub_236E6D9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E67AC0()
{
  v1 = *v0;
  sub_236E82574();
  sub_236E81F04();

  return sub_236E82594();
}

uint64_t sub_236E67BB8()
{
  *v0;
  *v0;
  *v0;
  sub_236E81F04();
}

uint64_t sub_236E67C9C()
{
  v1 = *v0;
  sub_236E82574();
  sub_236E81F04();

  return sub_236E82594();
}

uint64_t sub_236E67D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236E6F7CC();
  *a2 = result;
  return result;
}

void sub_236E67DC0(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C6E776F64;
  v3 = *v1;
  v4 = 0xEE007963696C6F50;
  v5 = 0x8000000236E89D80;
  v6 = 0xD00000000000001BLL;
  if (v3 != 3)
  {
    v6 = 0x64616F6C6E776F64;
    v5 = 0xEB000000006C7255;
  }

  if (v3 != 2)
  {
    v2 = v6;
    v4 = v5;
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000236E89D30;
  if (*v1)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000236E89D50;
  }

  if (*v1 > 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v7;
    v9 = v8;
  }

  *a1 = v2;
  a1[1] = v9;
}

unint64_t sub_236E67E74()
{
  v1 = 0x64616F6C6E776F64;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  if (v2 != 3)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v2 != 2)
  {
    v1 = v3;
  }

  v4 = 0xD000000000000011;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_236E67F24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_236E6F7CC();
  *a1 = result;
  return result;
}

uint64_t sub_236E67F58(uint64_t a1)
{
  v2 = sub_236E6D924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E67F94(uint64_t a1)
{
  v2 = sub_236E6D924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E67FD0()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_236E6801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236E6F818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236E68044(uint64_t a1)
{
  v2 = sub_236E6D8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E68080(uint64_t a1)
{
  v2 = sub_236E6D8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E680BC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 1953722216;
  }

  v4 = 0x6F666E4972657375;
  if (v1 != 3)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C6E776F64;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_236E68190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236E6F930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236E681C4(uint64_t a1)
{
  v2 = sub_236E6D87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E68200(uint64_t a1)
{
  v2 = sub_236E6D87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetPack.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetPack.userInfo.getter()
{
  v1 = *(v0 + 32);
  sub_236E6D7BC(v1, *(v0 + 40));
  return v1;
}

uint64_t AssetPack.description.getter()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000012, 0x8000000236E8AAE0);
    MEMORY[0x2383BFD30](*v0, v0[1]);
    MEMORY[0x2383BFD30](0xD000000000000010, 0x8000000236E8AB00);
    v9 = v0[2];
    v2 = sub_236E82484();
    MEMORY[0x2383BFD30](v2);

    MEMORY[0x2383BFD30](0x6E6F697372657620, 0xEA0000000000203ALL);
    v10 = v0[3];
    v3 = sub_236E82484();
    MEMORY[0x2383BFD30](v3);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

  else
  {
    v4 = v0[4];
    sub_236E59298(v4, v1);
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000012, 0x8000000236E8AAE0);
    MEMORY[0x2383BFD30](*v0, v0[1]);
    MEMORY[0x2383BFD30](0xD000000000000010, 0x8000000236E8AB00);
    v11 = v0[2];
    v5 = sub_236E82484();
    MEMORY[0x2383BFD30](v5);

    MEMORY[0x2383BFD30](0x6E6F697372657620, 0xEA0000000000203ALL);
    v12 = v0[3];
    v6 = sub_236E82484();
    MEMORY[0x2383BFD30](v6);

    MEMORY[0x2383BFD30](0x6E69207265737520, 0xEC000000203A6F66);
    v7 = sub_236E81A14();
    MEMORY[0x2383BFD30](v7);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
    sub_236E592EC(v4, v1);
  }

  return 0;
}

uint64_t sub_236E68560()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88220);
  __swift_project_value_buffer(v0, qword_27DE88220);
  return sub_236E81D94();
}

uint64_t AssetPack.init(id:downloadSize:version:downloadPolicy:url:appGroupID:appleID:appleVersionID:appleInternalVersionID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, objc_class *a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, os_log_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v154 = a5;
  v155 = a6;
  v150 = a2;
  v151 = a3;
  v149 = a1;
  v142 = a7;
  v143 = a12;
  v156 = a10;
  v157 = a11;
  v141 = sub_236E81A64();
  v153 = *(v141 - 8);
  v15 = v153[8];
  v16 = MEMORY[0x28223BE20](v141);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v136 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v145 = &v136 - v23;
  MEMORY[0x28223BE20](v22);
  v144 = &v136 - v24;
  v25 = sub_236E819F4();
  v26 = *(v25 - 8);
  v158 = v25;
  v159 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v136 - v31;
  v33 = sub_236E81AD4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v37 = MEMORY[0x28223BE20](v36);
  v40 = &v136 - v39;
  v146 = a8;
  v147 = v37;
  v152 = a4;
  v148 = v34;
  if (a8)
  {
    v140 = a9;
    v41 = qword_27DE87AE0;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_236E81DA4();
    __swift_project_value_buffer(v42, qword_27DE88220);
    v43 = sub_236E820E4();
    (*(v34 + 16))(v40, v154, v33);
    v44 = v159;
    v45 = v32;
    (*(v159 + 16))(v32, v155, v158);
    v46 = v153;
    v47 = v153[2];
    v48 = v141;
    v47(v144, v156, v141);
    v47(v145, v157, v48);

    v49 = v150;

    v50 = sub_236E81D84();

    v139 = v43;
    if (os_log_type_enabled(v50, v43))
    {
      v51 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v160[0] = v138;
      *v51 = 136448258;
      *(v51 + 4) = sub_236E381CC(v149, v49, v160);
      *(v51 + 12) = 2048;
      *(v51 + 14) = v151;
      *(v51 + 22) = 2048;
      *(v51 + 24) = v152;
      *(v51 + 32) = 2082;
      sub_236E6D7D0(&qword_27DE88240, MEMORY[0x277D25BB8]);
      v137 = v50;
      v52 = v147;
      v53 = sub_236E82484();
      v55 = v54;
      (*(v148 + 8))(v40, v52);
      v56 = v45;
      v57 = sub_236E381CC(v53, v55, v160);

      *(v51 + 34) = v57;
      *(v51 + 42) = 2082;
      sub_236E6D7D0(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v58 = v158;
      v59 = sub_236E82484();
      v61 = v60;
      (*(v44 + 8))(v56, v58);
      v62 = sub_236E381CC(v59, v61, v160);

      *(v51 + 44) = v62;
      *(v51 + 52) = 2082;
      v63 = v142;
      v64 = sub_236E381CC(v142, v146, v160);

      *(v51 + 54) = v64;
      *(v51 + 62) = 2082;
      sub_236E6D7D0(&qword_27DE88248, MEMORY[0x277CC95F0]);
      v65 = v144;
      v66 = sub_236E82484();
      v68 = v67;
      v69 = v46[1];
      v70 = v65;
      v71 = v151;
      v69(v70, v48);
      v72 = sub_236E381CC(v66, v68, v160);

      *(v51 + 64) = v72;
      *(v51 + 72) = 2082;
      v73 = v145;
      v74 = sub_236E82484();
      v76 = v75;
      v69(v73, v48);
      v46 = v153;
      v77 = sub_236E381CC(v74, v76, v160);

      *(v51 + 74) = v77;
      v78 = v150;
      *(v51 + 82) = 2048;
      v79 = v143;
      *(v51 + 84) = v143;
      v80 = v137;
      _os_log_impl(&dword_236E28000, v137, v139, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s app group ID: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v51, 0x5Cu);
      v81 = v138;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v81, -1, -1);
      MEMORY[0x2383C0E50](v51, -1, -1);

      v82 = v152;
      v84 = v148;
      v83 = v149;
      v85 = v58;
      v86 = v147;
    }

    else
    {

      v121 = v46[1];
      v121(v145, v48);
      v121(v144, v48);
      v85 = v158;
      (*(v44 + 8))(v45, v158);
      v84 = v148;
      v122 = v40;
      v86 = v147;
      (*(v148 + 8))(v122, v147);
      v78 = v49;
      v63 = v142;
      v79 = v143;
      v71 = v151;
      v82 = v152;
      v83 = v149;
    }

    a9 = v140;
  }

  else
  {
    v87 = v38;
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v88 = sub_236E81DA4();
    __swift_project_value_buffer(v88, qword_27DE88220);
    v89 = sub_236E820E4();
    (*(v34 + 16))(v87, v154, v33);
    v90 = v30;
    (*(v159 + 16))(v30, v155, v158);
    v91 = v153[2];
    v92 = v21;
    v93 = v21;
    v48 = v141;
    v91(v93, v156, v141);
    v91(v18, v157, v48);
    v78 = v150;

    v94 = sub_236E81D84();

    LODWORD(v145) = v89;
    if (os_log_type_enabled(v94, v89))
    {
      v95 = v92;
      v96 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v160[0] = v144;
      *v96 = 136448002;
      *(v96 + 4) = sub_236E381CC(v149, v78, v160);
      *(v96 + 12) = 2048;
      v97 = v152;
      *(v96 + 14) = v151;
      *(v96 + 22) = 2048;
      *(v96 + 24) = v97;
      *(v96 + 32) = 2082;
      sub_236E6D7D0(&qword_27DE88240, MEMORY[0x277D25BB8]);
      v140 = v94;
      v98 = v147;
      v99 = sub_236E82484();
      v101 = v100;
      (*(v148 + 8))(v87, v98);
      v102 = sub_236E381CC(v99, v101, v160);

      *(v96 + 34) = v102;
      *(v96 + 42) = 2082;
      sub_236E6D7D0(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v103 = v158;
      v104 = sub_236E82484();
      v106 = v105;
      (*(v159 + 8))(v90, v103);
      v107 = sub_236E381CC(v104, v106, v160);

      *(v96 + 44) = v107;
      *(v96 + 52) = 2082;
      sub_236E6D7D0(&qword_27DE88248, MEMORY[0x277CC95F0]);
      v108 = v95;
      v109 = sub_236E82484();
      v111 = v110;
      v112 = v153[1];
      v112(v108, v48);
      v113 = sub_236E381CC(v109, v111, v160);

      *(v96 + 54) = v113;
      *(v96 + 62) = 2082;
      v114 = sub_236E82484();
      v116 = v115;
      v112(v18, v48);
      v117 = sub_236E381CC(v114, v116, v160);

      *(v96 + 64) = v117;
      v78 = v150;
      *(v96 + 72) = 2048;
      v79 = v143;
      *(v96 + 74) = v143;
      v118 = v140;
      _os_log_impl(&dword_236E28000, v140, v145, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v96, 0x52u);
      v119 = v144;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v119, -1, -1);
      v120 = v96;
      v71 = v151;
      MEMORY[0x2383C0E50](v120, -1, -1);

      v82 = v152;
      v46 = v153;
      v84 = v148;
      v83 = v149;
      v63 = v142;
      v85 = v158;
      v86 = v147;
    }

    else
    {

      v123 = v18;
      v46 = v153;
      v124 = v153[1];
      v124(v123, v48);
      v124(v92, v48);
      v85 = v158;
      (*(v159 + 8))(v90, v158);
      v86 = v147;
      v84 = v148;
      (*(v148 + 8))(v87, v147);
      v63 = v142;
      v79 = v143;
      v71 = v151;
      v82 = v152;
      v83 = v149;
    }
  }

  a9->isa = v83;
  a9[1].isa = v78;
  a9[2].isa = v71;
  a9[3].isa = v82;
  *&a9[4].isa = xmmword_236E85660;
  v125 = type metadata accessor for AssetPack(0);
  (*(v84 + 32))(a9 + v125[8], v154, v86);
  (*(v159 + 32))(a9 + v125[9], v155, v85);
  v126 = (a9 + v125[10]);
  v127 = v146;
  *v126 = v63;
  v126[1] = v127;
  *(&a9->isa + v125[11]) = 1;
  v128 = a9 + v125[12];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88238, &qword_236E85670);
  v130 = *(v129 + 48);
  v131 = *(v129 + 64);
  v132 = v46[4];
  v132(v128, v156, v48);
  v132(&v128[v130], v157, v48);
  *&v128[v131] = v79;
  v133 = *MEMORY[0x277D25C48];
  v134 = sub_236E81C64();
  return (*(*(v134 - 8) + 104))(v128, v133, v134);
}

uint64_t AssetPack.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v218 = a3;
  v264 = *MEMORY[0x277D85DE8];
  v230 = sub_236E82294();
  v227 = *(v230 - 8);
  v5 = *(v227 + 64);
  MEMORY[0x28223BE20](v230);
  v231 = (&v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88250, &qword_236E85678);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v220 = &v207 - v9;
  v221 = sub_236E81C64();
  v217 = *(v221 - 8);
  v10 = *(v217 + 64);
  MEMORY[0x28223BE20](v221);
  v216 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_236E81AD4();
  v239 = *(v248 - 8);
  v12 = *(v239 + 64);
  MEMORY[0x28223BE20](v248);
  v228 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88258, &qword_236E85680);
  v237 = *(v240 - 8);
  v14 = *(v237 + 64);
  MEMORY[0x28223BE20](v240);
  v243 = &v207 - v15;
  v214 = sub_236E81A64();
  v211 = *(v214 - 8);
  v16 = v211[8];
  v17 = MEMORY[0x28223BE20](v214);
  v212 = &v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v213 = &v207 - v19;
  v246 = sub_236E819F4();
  v238 = *(v246 - 8);
  v20 = *(v238 + 64);
  v21 = MEMORY[0x28223BE20](v246);
  v224 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v215 = &v207 - v23;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88260, &qword_236E85688);
  v219 = *(v222 - 8);
  v24 = *(v219 + 64);
  MEMORY[0x28223BE20](v222);
  v223 = &v207 - v25;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88268, &qword_236E85690);
  v225 = *(v226 - 8);
  v26 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v229 = &v207 - v27;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88270, &qword_236E85698);
  v232 = *(v233 - 8);
  v28 = *(v232 + 64);
  MEMORY[0x28223BE20](v233);
  v235 = &v207 - v29;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88278, &unk_236E856A0);
  v234 = *(v236 - 1);
  v30 = *(v234 + 64);
  MEMORY[0x28223BE20](v236);
  v241 = &v207 - v31;
  v32 = type metadata accessor for AssetPack(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v249 = (&v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(a2 + 8);
  v245 = *a2;
  v252 = *(a2 + 16);
  v37 = *(a2 + 24);
  v36 = *(a2 + 32);
  v38 = *(a2 + 40);
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v39 = sub_236E81DA4();
  v40 = __swift_project_value_buffer(v39, qword_27DE88220);
  v41 = sub_236E820E4();
  sub_236E6DA84(a1, &v262);

  sub_236E6D818(v36);
  v42 = sub_236E81D84();

  sub_236E38C64(v36);
  v242 = v41;
  v43 = os_log_type_enabled(v42, v41);
  v247 = v32;
  v253 = a1;
  v254 = v38;
  v250 = v35;
  v251 = v37;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v210 = v40;
    v45 = v44;
    v209 = swift_slowAlloc();
    v255 = v209;
    *v45 = 136446466;
    v208 = v42;
    v46 = v263;
    v47 = __swift_project_boxed_opaque_existential_0(&v262, v263);
    v48 = *(*(v46 - 8) + 64);
    MEMORY[0x28223BE20](v47);
    (*(v50 + 16))(&v207 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    v51 = sub_236E81ED4();
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_0(&v262);
    v54 = sub_236E381CC(v51, v53, &v255);

    *(v45 + 4) = v54;
    *(v45 + 12) = 2082;
    v256 = v245;
    v257 = v35;
    v55 = v252;
    v258 = v252;
    v259 = v251;
    v260 = v36;
    v261 = v38;

    sub_236E6D818(v36);
    v56 = AssetPackManifest.DecodingConfiguration.description.getter();
    v58 = v57;
    v59 = v260;

    v60 = v36;
    v61 = v55;
    sub_236E38C64(v59);
    v62 = sub_236E381CC(v56, v58, &v255);
    v63 = v251;

    *(v45 + 14) = v62;
    v64 = v208;
    _os_log_impl(&dword_236E28000, v208, v242, "Init from: %{public}s configuration: %{public}s", v45, 0x16u);
    v65 = v209;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v65, -1, -1);
    MEMORY[0x2383C0E50](v45, -1, -1);

    if (v63 <= 5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v72 = v60;
    v73 = sub_236E82104();

    sub_236E6D818(v72);
    v74 = sub_236E81D84();

    sub_236E38C64(v72);
    LODWORD(v244) = v73;
    if (os_log_type_enabled(v74, v73))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v207 = v72;
      v77 = v76;
      v256 = v76;
      *v75 = 136315138;
      v78 = sub_236E82124();
      v80 = sub_236E381CC(v78, v79, &v256);
      v61 = v252;
      v63 = v251;

      *(v75 + 4) = v80;
      _os_log_impl(&dword_236E28000, v74, v244, "The manifest data source “%s” is unknown.", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v81 = v77;
      v60 = v207;
      MEMORY[0x2383C0E50](v81, -1, -1);
      MEMORY[0x2383C0E50](v75, -1, -1);
    }

    else
    {

      v60 = v72;
      v61 = v252;
    }

    sub_236E6D828();
    v71 = swift_allocError();
    *v90 = v63;
    *(v90 + 8) = 0;
    *(v90 + 16) = 4;
    swift_willThrow();
    LODWORD(v244) = 0;
    LODWORD(v240) = 0;
    LODWORD(v241) = 0;
    v242 = 0;
    LODWORD(v243) = 0;
    goto LABEL_22;
  }

  __swift_destroy_boxed_opaque_existential_0(&v262);
  v61 = v252;
  v60 = v36;
  v63 = v37;
  if (v37 > 5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (((1 << v63) & 0x34) != 0)
  {
    v66 = sub_236E820D4();
    v67 = sub_236E81D84();
    if (os_log_type_enabled(v67, v66))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_236E28000, v67, v66, "Decoding an asset pack using a local-cache (third-party-server/development-override) configuration…", v68, 2u);
      MEMORY[0x2383C0E50](v68, -1, -1);
    }

    v69 = v253[4];
    __swift_project_boxed_opaque_existential_0(v253, v253[3]);
    sub_236E6D87C();
    v70 = v244;
    sub_236E825A4();
    v71 = v70;
    if (v70)
    {
      LODWORD(v244) = 0;
      LODWORD(v240) = 0;
      LODWORD(v241) = 0;
      v242 = 0;
      LODWORD(v243) = 0;
LABEL_22:
      v85 = v250;
      goto LABEL_23;
    }

    LOBYTE(v256) = 0;
    v89 = sub_236E82404();
    v91 = v249;
    *v249 = v89;
    v91[1] = v92;
    LOBYTE(v256) = 1;
    v91[2] = sub_236E82414();
    LOBYTE(v256) = 2;
    v91[3] = sub_236E82414();
    LOBYTE(v256) = 3;
    sub_236E823F4();
    v85 = v250;
    v244 = 0;
    v127 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882B0, &qword_236E856C0);
    v128 = sub_236E81E54();

    v256 = 0;
    v129 = [v127 dataWithJSONObject:v128 options:8 error:&v256];

    v130 = v256;
    v61 = v252;
    if (v129)
    {
      v131 = sub_236E81A34();
      v133 = v132;

      v134 = v249;
      v249[4] = v131;
      v134[5] = v133;
      goto LABEL_43;
    }

    v143 = v130;
    v71 = sub_236E81994();

    swift_willThrow();
    v144 = v240;
    v256 = v71;
    v121 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
    v122 = v231;
    v123 = v230;
    if (swift_dynamicCast())
    {
      v244 = 0;
      v124 = v227;
      if ((*(v227 + 88))(v122, v123) == *MEMORY[0x277D84158])
      {

        (*(v124 + 96))(v122, v123);
        v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88290, &qword_236E856B8) + 48);
        *(v249 + 2) = xmmword_236E85660;
        v126 = sub_236E82284();
        (*(*(v126 - 8) + 8))(v122 + v125, v126);
        __swift_destroy_boxed_opaque_existential_0(v122);

LABEL_43:
        LOBYTE(v256) = 4;
        sub_236E6D7D0(&qword_27DE88298, MEMORY[0x277D25BB8]);
        v135 = v228;
        v136 = v248;
        v137 = v240;
        v138 = v243;
        v139 = v244;
        sub_236E82424();
        v71 = v139;
        if (v139)
        {
          (*(v237 + 8))(v138, v137);
          LODWORD(v241) = 0;
          v242 = 0;
          LODWORD(v243) = 0;
          LODWORD(v244) = 1;
          LODWORD(v240) = 1;
          v61 = v252;
          goto LABEL_23;
        }

        (*(v239 + 32))(v249 + v247[8], v135, v136);
        LOBYTE(v256) = 5;
        sub_236E6D7D0(&qword_27DE882A0, MEMORY[0x277CC9260]);
        v141 = v224;
        v142 = v246;
        sub_236E82424();
        v146 = v247;
        v147 = v249;
        (*(v238 + 32))(v249 + v247[9], v141, v142);
        v148 = (v147 + v146[10]);
        *v148 = v245;
        v148[1] = v85;
        LOBYTE(v256) = 6;
        sub_236E6D7D0(&qword_27DE882A8, MEMORY[0x277D25C50]);

        v149 = v220;
        v150 = v240;
        v151 = v221;
        sub_236E823E4();
        (*(v237 + 8))(v138, v150);
        v154 = v217;
        v155 = *(v217 + 48);
        v156 = v151;
        if (v155(v149, 1, v151) == 1)
        {
          v157 = v216;
          (*(v154 + 104))(v216, *MEMORY[0x277D25C40], v151);
          v158 = v155(v149, 1, v151) == 1;
          v159 = v149;
          v160 = v218;
          v161 = v252;
          if (!v158)
          {
            sub_236E38DBC(v159, &qword_27DE88250, &qword_236E85678);
          }
        }

        else
        {
          v157 = v216;
          (*(v154 + 32))(v216, v149, v151);
          v160 = v218;
          v161 = v252;
        }

        v165 = v247;
        v166 = v249;
        (*(v154 + 32))(v249 + v247[12], v157, v156);

LABEL_57:
        sub_236E38C64(v60);
        *(v166 + v165[11]) = v161;
        sub_236E393B0(v166, v160);
        __swift_destroy_boxed_opaque_existential_0(v253);
        result = sub_236E39414(v166);
LABEL_36:
        v118 = *MEMORY[0x277D85DE8];
        return result;
      }

      (*(v237 + 8))(v243, v144);
      (*(v124 + 8))(v122, v123);
    }

    else
    {
      (*(v237 + 8))(v243, v144);
    }

    LODWORD(v240) = 0;
    LODWORD(v241) = 0;
    v242 = 0;
    LODWORD(v243) = 0;
    LODWORD(v244) = 1;
    goto LABEL_23;
  }

  if (((1 << v63) & 3) != 0)
  {
    v82 = sub_236E820D4();
    v83 = sub_236E81D84();
    v84 = os_log_type_enabled(v83, v82);
    v85 = v250;
    if (v84)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_236E28000, v83, v82, "Decoding an asset pack using an App Store (TestFlight) configuration…", v86, 2u);
      MEMORY[0x2383C0E50](v86, -1, -1);
    }

    v87 = v253[4];
    __swift_project_boxed_opaque_existential_0(v253, v253[3]);
    sub_236E6D8D0();
    v88 = v244;
    sub_236E825A4();
    v71 = v88;
    if (v88)
    {
      LODWORD(v244) = 0;
      LODWORD(v240) = 0;
      LODWORD(v241) = 0;
      v242 = 0;
      LODWORD(v243) = 0;
      v61 = v252;
LABEL_23:
      v94 = sub_236E820F4();

      sub_236E6D818(v60);
      v95 = v71;
      v96 = sub_236E81D84();

      sub_236E38C64(v60);

      LODWORD(v237) = v94;
      if (os_log_type_enabled(v96, v94))
      {
        v97 = v60;
        v98 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 136446466;
        v256 = v245;
        v257 = v85;
        v258 = v61;
        v259 = v251;
        v260 = v97;
        v261 = v254;
        v262 = v99;
        v100 = AssetPackManifest.DecodingConfiguration.description.getter();
        v101 = v71;
        v103 = v102;
        v104 = v260;

        v105 = v249;
        sub_236E38C64(v104);
        v106 = sub_236E381CC(v100, v103, &v262);
        v107 = v248;

        *(v98 + 4) = v106;
        *(v98 + 12) = 2114;
        v108 = v101;
        v109 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 14) = v109;
        v110 = v236;
        *v236 = v109;
        _os_log_impl(&dword_236E28000, v96, v237, "An asset pack couldn’t be decoded with the configuration “%{public}s”: %{public}@", v98, 0x16u);
        sub_236E38DBC(v110, &qword_27DE88170, &qword_236E853C0);
        v111 = v110;
        v112 = v253;
        MEMORY[0x2383C0E50](v111, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x2383C0E50](v99, -1, -1);
        MEMORY[0x2383C0E50](v98, -1, -1);
      }

      else
      {

        sub_236E38C64(v60);
        v112 = v253;
        v107 = v248;
        v105 = v249;
      }

      swift_willThrow();
      result = __swift_destroy_boxed_opaque_existential_0(v112);
      v114 = v247;
      v115 = v246;
      if (v244)
      {
        v116 = *(v105 + 1);
      }

      if (v240)
      {
        result = sub_236E592EC(*(v105 + 4), *(v105 + 5));
      }

      if (v241)
      {
        result = (*(v239 + 8))(&v105[v114[8]], v107);
      }

      if (v242)
      {
        result = (*(v238 + 8))(&v105[v114[9]], v115);
      }

      if (v243)
      {
        v117 = *&v105[v114[10] + 8];
      }

      goto LABEL_36;
    }

    LOBYTE(v256) = 2;
    sub_236E6D924();
    sub_236E823C4();
    LOBYTE(v256) = 3;
    v93 = sub_236E82404();
    v119 = v249;
    *v249 = v93;
    v119[1] = v120;
    LOBYTE(v256) = 1;
    v119[2] = sub_236E82414();
    LOBYTE(v256) = 0;
    sub_236E6D978();
    sub_236E823C4();
    LOBYTE(v256) = 0;
    v140 = sub_236E82414();
    v145 = v249;
    v249[3] = v140;
    *(v145 + 2) = xmmword_236E85660;
    LOBYTE(v256) = 2;
    sub_236E6D9CC();
    sub_236E823C4();
    LOBYTE(v256) = 0;
    v152 = sub_236E82404();
    v85 = v250;
    v162 = v153;
    v237 = 0;
    v207 = v60;
    if (v152 == 0x6169746E65737365 && v153 == 0xE90000000000006CLL)
    {
      v164 = v248;
      v163 = v249;
    }

    else
    {
      v164 = v248;
      v163 = v249;
      v167 = v152;
      if ((sub_236E824E4() & 1) == 0)
      {
        if (v167 == 0x637465662D657270 && v162 == 0xE900000000000068 || (sub_236E824E4() & 1) != 0)
        {

          LOBYTE(v256) = 1;
          v177 = v237;
          v178 = sub_236E82404();
          v237 = v177;
          if (v177)
          {
            (*(v219 + 8))(v223, v222);
            (*(v225 + 8))(v229, v226);
            (*(v232 + 8))(v235, v233);
            (*(v234 + 8))(v241, v236);
            LODWORD(v241) = 0;
            v242 = 0;
            LODWORD(v243) = 0;
            LODWORD(v244) = 1;
            LODWORD(v240) = 1;
            v60 = v207;
            v61 = v252;
            v71 = v237;
            goto LABEL_23;
          }

          v172 = v178;
          v173 = v179;
          if (v178 == 0x6E692D7473726966 && v179 == 0xED00006C6C617473 || (sub_236E824E4() & 1) != 0)
          {

            v174 = v163 + v247[8];
            sub_236E81A74();
          }

          else if (v172 == 0x657461647075 && v173 == 0xE600000000000000 || (sub_236E824E4() & 1) != 0)
          {

            v174 = v163 + v247[8];
            sub_236E81A84();
          }

          else
          {
            if ((v172 != 0xD000000000000017 || 0x8000000236E8AB80 != v173) && (sub_236E824E4() & 1) == 0)
            {
              goto LABEL_104;
            }

            v174 = v163 + v247[8];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882E0, &qword_236E856C8);
            v244 = sub_236E81A94();
            v192 = *(*(v244 - 8) + 72);
            v193 = (*(*(v244 - 8) + 80) + 32) & ~*(*(v244 - 8) + 80);
            v194 = swift_allocObject();
            *(v194 + 1) = xmmword_236E84530;
            sub_236E81A74();
            sub_236E81A84();
            v256 = v194;
            sub_236E6D7D0(&qword_27DE882E8, MEMORY[0x277D25B60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882F0, &qword_236E856D0);
            sub_236E6DA20();
            sub_236E82194();
          }

          v175 = MEMORY[0x277D25BA8];
        }

        else
        {
          if ((v167 != 0x6E616D65642D6E6FLL || v162 != 0xE900000000000064) && (sub_236E824E4() & 1) == 0)
          {
            sub_236E6D828();
            v71 = swift_allocError();
            *v184 = v167;
            *(v184 + 8) = v162;
            *(v184 + 16) = 0;
            swift_willThrow();
            goto LABEL_60;
          }

          v174 = v163 + v247[8];
          v175 = MEMORY[0x277D25BA0];
        }

LABEL_67:
        (*(v239 + 104))(v174, *v175, v164);
        LOBYTE(v256) = 4;
        sub_236E6D7D0(&qword_27DE882A0, MEMORY[0x277CC9260]);
        v176 = v237;
        sub_236E82424();
        v71 = v176;
        if (v176)
        {
          (*(v219 + 8))(v223, v222);
          (*(v225 + 8))(v229, v226);
          (*(v232 + 8))(v235, v233);
          (*(v234 + 8))(v241, v236);
          v242 = 0;
          LODWORD(v243) = 0;
          LODWORD(v244) = 1;
          LODWORD(v240) = 1;
          v171 = &v266;
        }

        else
        {
          (*(v238 + 32))(v163 + v247[9], v215, v246);
          LOBYTE(v256) = 0;
          sub_236E6D7D0(&qword_27DE882D8, MEMORY[0x277CC95F0]);
          sub_236E82424();
          LOBYTE(v256) = 1;
          sub_236E82424();
          LOBYTE(v256) = 2;
          v180 = sub_236E82404();
          v237 = 0;
          v185 = v180;
          v187 = v186;

          v244 = sub_236E6C15C(v185, v187);
          if ((v188 & 1) == 0)
          {

            (*(v219 + 8))(v223, v222);
            (*(v225 + 8))(v229, v226);
            (*(v232 + 8))(v235, v233);
            (*(v234 + 8))(v241, v236);
            v165 = v247;
            v196 = v163;
            v197 = (v163 + v247[10]);
            *v197 = v245;
            v197[1] = v85;
            v198 = v163 + v165[12];
            v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88238, &qword_236E85670);
            v200 = *(v199 + 48);
            v201 = *(v199 + 64);
            v202 = v211[4];
            v203 = v214;
            v202(v198, v213, v214);
            v202(&v198[v200], v212, v203);
            *&v198[v201] = v244;
            v166 = v196;
            (*(v217 + 104))(v198, *MEMORY[0x277D25C48], v221);
            v60 = v207;
            v161 = v252;
            v160 = v218;
            goto LABEL_57;
          }

          sub_236E6D828();
          v71 = swift_allocError();
          *v189 = v185;
          *(v189 + 8) = v187;
          *(v189 + 16) = 2;
          swift_willThrow();
          v190 = v211[1];
          v191 = v214;
          v190(v212, v214);
          v190(v213, v191);
          (*(v219 + 8))(v223, v222);
          (*(v225 + 8))(v229, v226);
          (*(v232 + 8))(v235, v233);
          (*(v234 + 8))(v241, v236);
          LODWORD(v243) = 0;
          LODWORD(v244) = 1;
          LODWORD(v240) = 1;
          LODWORD(v241) = 1;
          v171 = (&v267 + 4);
        }

LABEL_75:
        *(v171 - 64) = 1;
        v60 = v207;
        v61 = v252;
        goto LABEL_23;
      }
    }

    LOBYTE(v256) = 1;
    v168 = v237;
    v169 = sub_236E82404();
    v71 = v168;
    if (v168)
    {
LABEL_60:
      (*(v219 + 8))(v223, v222);
      (*(v225 + 8))(v229, v226);
      (*(v232 + 8))(v235, v233);
      (*(v234 + 8))(v241, v236);
      LODWORD(v241) = 0;
      v242 = 0;
      LODWORD(v243) = 0;
      LODWORD(v244) = 1;
LABEL_61:
      v171 = &v265;
      goto LABEL_75;
    }

    v172 = v169;
    v173 = v170;
    v237 = 0;
    if (v169 == 0x6E692D7473726966 && v170 == 0xED00006C6C617473 || (sub_236E824E4() & 1) != 0)
    {

      v174 = v163 + v247[8];
      sub_236E81A74();
LABEL_66:
      v175 = MEMORY[0x277D25BB0];
      goto LABEL_67;
    }

    if (v172 == 0x657461647075 && v173 == 0xE600000000000000 || (sub_236E824E4() & 1) != 0)
    {

      v174 = v163 + v247[8];
      sub_236E81A84();
      goto LABEL_66;
    }

    if (v172 == 0xD000000000000017 && 0x8000000236E8AB80 == v173 || (sub_236E824E4() & 1) != 0)
    {

      v174 = v163 + v247[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882E0, &qword_236E856C8);
      v244 = sub_236E81A94();
      v181 = *(*(v244 - 8) + 72);
      v182 = (*(*(v244 - 8) + 80) + 32) & ~*(*(v244 - 8) + 80);
      v183 = swift_allocObject();
      *(v183 + 1) = xmmword_236E84530;
      sub_236E81A74();
      sub_236E81A84();
      v256 = v183;
      sub_236E6D7D0(&qword_27DE882E8, MEMORY[0x277D25B60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882F0, &qword_236E856D0);
      sub_236E6DA20();
      sub_236E82194();
      goto LABEL_66;
    }

LABEL_104:
    sub_236E6D828();
    v71 = swift_allocError();
    *v195 = v172;
    *(v195 + 8) = v173;
    LODWORD(v244) = 1;
    *(v195 + 16) = 1;
    swift_willThrow();
    (*(v219 + 8))(v223, v222);
    (*(v225 + 8))(v229, v226);
    (*(v232 + 8))(v235, v233);
    (*(v234 + 8))(v241, v236);
    LODWORD(v241) = 0;
    v242 = 0;
    LODWORD(v243) = 0;
    goto LABEL_61;
  }

  v204 = sub_236E820D4();
  v205 = sub_236E81D84();
  if (os_log_type_enabled(v205, v204))
  {
    v206 = swift_slowAlloc();
    *v206 = 0;
    _os_log_impl(&dword_236E28000, v205, v204, "Decoding an asset pack using an App Review configuration…", v206, 2u);
    MEMORY[0x2383C0E50](v206, -1, -1);
  }

  result = sub_236E82344();
  __break(1u);
  return result;
}

uint64_t sub_236E6C15C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_236E822A4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_236E6DB3C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_236E6C45C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = v4 + *(type metadata accessor for AssetPack(0) + 32);
  result = sub_236E6689C(v5);
  *a2 = result & 1;
  return result;
}

uint64_t AssetPack.encode(to:)(void *a1)
{
  v2 = v1;
  v90 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88300, &qword_236E856D8);
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - v6;
  v79 = type metadata accessor for AssetPack(0);
  v8 = *(*(v79 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v79);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v14 = sub_236E81DA4();
  v15 = __swift_project_value_buffer(v14, qword_27DE88220);
  v16 = sub_236E820E4();
  sub_236E6DA84(a1, v88);
  v85 = v15;
  v17 = sub_236E81D84();
  v18 = os_log_type_enabled(v17, v16);
  v82 = v7;
  v83 = v4;
  v80 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v86 = v20;
    *v19 = 136446210;
    v21 = v89;
    v22 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v78 = v2;
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    (*(v25 + 16))(&v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_236E81ED4();
    v28 = v27;
    v2 = v78;
    __swift_destroy_boxed_opaque_existential_0(v88);
    v29 = sub_236E381CC(v26, v28, &v86);

    *(v19 + 4) = v29;
    _os_log_impl(&dword_236E28000, v17, v16, "Encode to: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2383C0E50](v20, -1, -1);
    MEMORY[0x2383C0E50](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  v30 = sub_236E820D4();
  sub_236E393B0(v2, v13);
  v31 = sub_236E81D84();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v88[0] = v33;
    *v32 = 136446210;
    v34 = AssetPack.description.getter();
    v36 = v35;
    sub_236E39414(v13);
    v37 = sub_236E381CC(v34, v36, v88);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_236E28000, v31, v30, "Encoding the asset pack “%{public}s”…", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x2383C0E50](v33, -1, -1);
    MEMORY[0x2383C0E50](v32, -1, -1);
  }

  else
  {

    sub_236E39414(v13);
  }

  v38 = v83;
  v39 = v80[4];
  __swift_project_boxed_opaque_existential_0(v80, v80[3]);
  sub_236E6D87C();
  v40 = v82;
  sub_236E825B4();
  v41 = *v2;
  v42 = v2[1];
  LOBYTE(v88[0]) = 0;
  v43 = v81;
  sub_236E82444();
  v44 = v43;
  if (v43)
  {
    (*(v84 + 8))(v40, v38);
  }

  else
  {
    v45 = v2[2];
    LOBYTE(v88[0]) = 1;
    sub_236E82464();
    v46 = v2[3];
    LOBYTE(v88[0]) = 2;
    sub_236E82464();
    v62 = v2[5];
    if (v62 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v67 = v2;
    v68 = v2[4];
    v69 = objc_opt_self();
    sub_236E59298(v68, v62);
    v70 = sub_236E81A24();
    v88[0] = 0;
    v71 = [v69 JSONObjectWithData:v70 options:8 error:v88];

    if (v71)
    {
      v72 = v88[0];
      sub_236E82174();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v73 = v40;
        v74 = v86;
        v75 = v87;
        v88[0] = v86;
        v88[1] = v87;
        LOBYTE(v86) = 3;
        sub_236E6DAE8();
        sub_236E82474();
        sub_236E592EC(v68, v62);
        sub_236E38C74(v74, v75);
        v40 = v73;
LABEL_18:
        v63 = v79;
        v64 = *(v79 + 32);
        LOBYTE(v88[0]) = 4;
        sub_236E81AD4();
        sub_236E6D7D0(&qword_27DE88308, MEMORY[0x277D25BB8]);
        sub_236E82474();
        v65 = *(v63 + 36);
        LOBYTE(v88[0]) = 5;
        sub_236E819F4();
        sub_236E6D7D0(&qword_27DE88310, MEMORY[0x277CC9260]);
        sub_236E82474();
        v66 = *(v63 + 48);
        LOBYTE(v88[0]) = 6;
        sub_236E81C64();
        sub_236E6D7D0(&qword_27DE88318, MEMORY[0x277D25C50]);
        sub_236E82474();
        result = (*(v84 + 8))(v40, v38);
        goto LABEL_16;
      }

      sub_236E6D828();
      v44 = swift_allocError();
      *v77 = v68;
      *(v77 + 8) = v62;
      *(v77 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      v76 = v88[0];
      v44 = sub_236E81994();

      swift_willThrow();
      sub_236E592EC(v68, v62);
    }

    (*(v84 + 8))(v40, v38);
    v2 = v67;
  }

  v47 = sub_236E820F4();
  sub_236E393B0(v2, v11);
  v48 = v44;
  v49 = sub_236E81D84();

  if (os_log_type_enabled(v49, v47))
  {
    v50 = swift_slowAlloc();
    v51 = v11;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v88[0] = v53;
    *v50 = 136446466;
    v54 = AssetPack.description.getter();
    v56 = v55;
    sub_236E39414(v51);
    v57 = sub_236E381CC(v54, v56, v88);

    *(v50 + 4) = v57;
    *(v50 + 12) = 2114;
    v58 = v44;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 14) = v59;
    *v52 = v59;
    _os_log_impl(&dword_236E28000, v49, v47, "The asset pack “%{public}s” couldn’t be encoded: %{public}@", v50, 0x16u);
    sub_236E38DBC(v52, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x2383C0E50](v53, -1, -1);
    MEMORY[0x2383C0E50](v50, -1, -1);
  }

  else
  {

    sub_236E39414(v11);
  }

  result = swift_willThrow();
LABEL_16:
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AssetPack.hash(into:)()
{
  v1 = v0;
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_236E81DA4();
  __swift_project_value_buffer(v2, qword_27DE88220);
  v3 = sub_236E820E4();
  v4 = sub_236E81D84();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v10);
    _os_log_impl(&dword_236E28000, v4, v3, "Hash into: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2383C0E50](v6, -1, -1);
    MEMORY[0x2383C0E50](v5, -1, -1);
  }

  v7 = *v1;
  v8 = v1[1];

  return sub_236E81F04();
}

uint64_t AssetPack.hashValue.getter()
{
  sub_236E82574();
  AssetPack.hash(into:)();
  return sub_236E82594();
}

uint64_t sub_236E6D07C()
{
  sub_236E82574();
  AssetPack.hash(into:)();
  return sub_236E82594();
}

uint64_t sub_236E6D0C0()
{
  sub_236E82574();
  AssetPack.hash(into:)();
  return sub_236E82594();
}

uint64_t sub_236E6D0FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_236E6D10C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_236E82264();

      v12 = 0x1000000000000020;
LABEL_11:
      MEMORY[0x2383BFD30](a1, a2);
      goto LABEL_12;
    }

    v12 = 0;
    sub_236E82264();
    v6 = "sion-ID string “";
    v7 = 0x1000000000000027;
LABEL_10:
    MEMORY[0x2383BFD30](v7, v6 | 0x8000000000000000);
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v12 = 0;
    sub_236E82264();
    v6 = "The custom information “";
    v7 = 0x1000000000000022;
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    sub_236E82264();

    v12 = 0x100000000000001ALL;
    v5 = sub_236E81A14();
    MEMORY[0x2383BFD30](v5);

LABEL_12:
    v9 = 0x69207369209D80E2;
    v10 = 0x64696C61766ELL;
    goto LABEL_13;
  }

  sub_236E82264();

  v12 = 0x100000000000001CLL;
  v8 = sub_236E82124();
  MEMORY[0x2383BFD30](v8);

  v9 = 0x75207369209D80E2;
  v10 = 0x6E776F6E6B6ELL;
LABEL_13:
  MEMORY[0x2383BFD30](v9, v10 & 0xFFFFFFFFFFFFLL | 0xAF2E000000000000);
  return v12;
}

void __swiftcall BAAssetPack.init()(BAAssetPack *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void *sub_236E6D748(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87BA0, &unk_236E848D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_236E6D7BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236E59298(a1, a2);
  }

  return a1;
}

uint64_t sub_236E6D7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236E6D818(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_236E6D828()
{
  result = qword_27DE88280;
  if (!qword_27DE88280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88280);
  }

  return result;
}

unint64_t sub_236E6D87C()
{
  result = qword_27DE88288;
  if (!qword_27DE88288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88288);
  }

  return result;
}

unint64_t sub_236E6D8D0()
{
  result = qword_27DE882B8;
  if (!qword_27DE882B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882B8);
  }

  return result;
}

unint64_t sub_236E6D924()
{
  result = qword_27DE882C0;
  if (!qword_27DE882C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882C0);
  }

  return result;
}

unint64_t sub_236E6D978()
{
  result = qword_27DE882C8;
  if (!qword_27DE882C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882C8);
  }

  return result;
}

unint64_t sub_236E6D9CC()
{
  result = qword_27DE882D0;
  if (!qword_27DE882D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882D0);
  }

  return result;
}

unint64_t sub_236E6DA20()
{
  result = qword_27DE882F8;
  if (!qword_27DE882F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE882F0, &qword_236E856D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882F8);
  }

  return result;
}

uint64_t sub_236E6DA84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_236E6DAE8()
{
  result = qword_27DE88320;
  if (!qword_27DE88320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88320);
  }

  return result;
}

unsigned __int8 *sub_236E6DB3C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_236E81F84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_236E6E0C0();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_236E822A4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_236E6E0C0()
{
  v0 = sub_236E81F94();
  v4 = sub_236E6E140(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_236E6E140(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_236E81EF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_236E82164();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_236E6D748(v9, 0);
  v12 = sub_236E6E298(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_236E81EF4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_236E822A4();
LABEL_4:

  return sub_236E81EF4();
}

unint64_t sub_236E6E298(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_236E6E4B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_236E81F64();
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
          result = sub_236E822A4();
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

    result = sub_236E6E4B8(v12, a6, a7);
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

    result = sub_236E81F44();
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

uint64_t sub_236E6E4B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_236E81F74();
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
    v5 = MEMORY[0x2383BFD60](15, a1 >> 16);
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

uint64_t _s16BackgroundAssets9AssetPackV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  __swift_project_value_buffer(v11, qword_27DE88220);
  v12 = sub_236E820E4();
  sub_236E393B0(a1, v10);
  sub_236E393B0(a2, v8);
  v13 = sub_236E81D84();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446466;
    v16 = AssetPack.description.getter();
    v18 = v17;
    sub_236E39414(v10);
    v19 = sub_236E381CC(v16, v18, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = AssetPack.description.getter();
    v22 = v21;
    sub_236E39414(v8);
    v23 = sub_236E381CC(v20, v22, &v27);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_236E28000, v13, v12, "== LHS: %{public}s RHS: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v15, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  else
  {

    sub_236E39414(v8);
    sub_236E39414(v10);
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_236E824E4();
  }

  return v24 & 1;
}

unint64_t sub_236E6E7B0()
{
  result = qword_27DE88328;
  if (!qword_27DE88328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88328);
  }

  return result;
}

unint64_t sub_236E6E808()
{
  result = qword_27DE88330;
  if (!qword_27DE88330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88330);
  }

  return result;
}

unint64_t sub_236E6E860()
{
  result = qword_27DE88338;
  if (!qword_27DE88338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88338);
  }

  return result;
}

unint64_t sub_236E6E8B8()
{
  result = qword_27DE88340;
  if (!qword_27DE88340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88340);
  }

  return result;
}

void sub_236E6E988()
{
  sub_236E6EA9C(319, &qword_27DE88360);
  if (v0 <= 0x3F)
  {
    sub_236E81AD4();
    if (v1 <= 0x3F)
    {
      sub_236E819F4();
      if (v2 <= 0x3F)
      {
        sub_236E6EA9C(319, &qword_27DE88368);
        if (v3 <= 0x3F)
        {
          sub_236E81C64();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_236E6EA9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_236E82154();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_236E6EB30()
{
  result = type metadata accessor for AssetPack(319);
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

unint64_t type metadata accessor for BAAssetPack()
{
  result = qword_27DE88390;
  if (!qword_27DE88390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE88390);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_236E6EC48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_236E6EC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_236E6ED08(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_236E6ED98(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236E6F258()
{
  result = qword_27DE88398;
  if (!qword_27DE88398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88398);
  }

  return result;
}

unint64_t sub_236E6F2B0()
{
  result = qword_27DE883A0;
  if (!qword_27DE883A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883A0);
  }

  return result;
}

unint64_t sub_236E6F308()
{
  result = qword_27DE883A8;
  if (!qword_27DE883A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883A8);
  }

  return result;
}

unint64_t sub_236E6F360()
{
  result = qword_27DE883B0;
  if (!qword_27DE883B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883B0);
  }

  return result;
}

unint64_t sub_236E6F3B8()
{
  result = qword_27DE883B8;
  if (!qword_27DE883B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883B8);
  }

  return result;
}

unint64_t sub_236E6F414()
{
  result = qword_27DE883C0;
  if (!qword_27DE883C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883C0);
  }

  return result;
}

unint64_t sub_236E6F46C()
{
  result = qword_27DE883C8;
  if (!qword_27DE883C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883C8);
  }

  return result;
}

unint64_t sub_236E6F4C4()
{
  result = qword_27DE883D0;
  if (!qword_27DE883D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883D0);
  }

  return result;
}

unint64_t sub_236E6F51C()
{
  result = qword_27DE883D8;
  if (!qword_27DE883D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883D8);
  }

  return result;
}

unint64_t sub_236E6F574()
{
  result = qword_27DE883E0;
  if (!qword_27DE883E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883E0);
  }

  return result;
}

unint64_t sub_236E6F5CC()
{
  result = qword_27DE883E8;
  if (!qword_27DE883E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883E8);
  }

  return result;
}

unint64_t sub_236E6F624()
{
  result = qword_27DE883F0;
  if (!qword_27DE883F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883F0);
  }

  return result;
}

unint64_t sub_236E6F67C()
{
  result = qword_27DE883F8;
  if (!qword_27DE883F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883F8);
  }

  return result;
}

unint64_t sub_236E6F6D4()
{
  result = qword_27DE88400;
  if (!qword_27DE88400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88400);
  }

  return result;
}

unint64_t sub_236E6F72C()
{
  result = qword_27DE88408;
  if (!qword_27DE88408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88408);
  }

  return result;
}

uint64_t sub_236E6F780()
{
  v0 = sub_236E823A4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_236E6F7CC()
{
  v0 = sub_236E823A4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_236E6F818(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_236E824E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_236E824E4();

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

uint64_t sub_236E6F930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_236E824E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEC000000657A6953 || (sub_236E824E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE007963696C6F50 || (sub_236E824E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_236E824E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_236E6FBA0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v10 = qword_27DE87AE8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_236E81DA4();
    __swift_project_value_buffer(v11, qword_27DE88410);
    v12 = sub_236E820E4();

    v13 = sub_236E81D84();

    if (!os_log_type_enabled(v13, v12))
    {

      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v14 = 136446722;
    v15 = sub_236E381CC(a1, a2, &v31);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;
    v16 = sub_236E82124();
    v18 = a4;
    v19 = a3;
    v20 = a1;
    v21 = sub_236E381CC(v16, v17, &v31);

    *(v14 + 14) = v21;
    a1 = v20;
    a3 = v19;
    a4 = v18;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v18 & 1;
    _os_log_impl(&dword_236E28000, v13, v12, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    v22 = v29;
    goto LABEL_10;
  }

  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v23 = sub_236E81DA4();
  __swift_project_value_buffer(v23, qword_27DE88410);
  v24 = sub_236E820E4();
  v13 = sub_236E81D84();
  if (os_log_type_enabled(v13, v24))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v31 = swift_slowAlloc();
    v25 = v31;
    *v14 = 136446466;
    v26 = sub_236E82124();
    v28 = sub_236E381CC(v26, v27, &v31);

    *(v14 + 4) = v28;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a4 & 1;
    _os_log_impl(&dword_236E28000, v13, v24, "Init source: %{public}s managed: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v22 = v25;
    a1 = v30;
LABEL_10:
    MEMORY[0x2383C0E50](v22, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

LABEL_12:

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4 & 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = a3;
}

uint64_t sub_236E6FE9C(uint64_t a1)
{
  v3 = sub_236E81AC4();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = *v1;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v14 = sub_236E81DA4();
  __swift_project_value_buffer(v14, qword_27DE88430);
  v15 = sub_236E820E4();

  v16 = sub_236E81D84();

  v17 = os_log_type_enabled(v16, v15);
  v40 = v13;
  v41 = v3;
  if (v17)
  {
    v18 = v7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136446210;
    v21 = MEMORY[0x2383BFDC0](a1, v6);
    v23 = sub_236E381CC(v21, v22, &v46);

    *(v19 + 4) = v23;
    v3 = v41;
    _os_log_impl(&dword_236E28000, v16, v15, "Asset packs with download policy: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2383C0E50](v20, -1, -1);
    v24 = v19;
    v7 = v18;
    MEMORY[0x2383C0E50](v24, -1, -1);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = *(v7 + 72);
    v28 = v42;
    v29 = (v43 + 48);
    v44 = (v43 + 32);
    v30 = MEMORY[0x277D84F90];
    v31 = &qword_27DE88530;
    do
    {
      sub_236E593A8(v26, v12, v31, &qword_236E86200);
      sub_236E59508(v12, v28, v31, &qword_236E86200);
      if ((*v29)(v28, 1, v3) == 1)
      {
        sub_236E38DBC(v28, v31, &qword_236E86200);
      }

      else
      {
        v32 = v31;
        v33 = v12;
        v34 = *v44;
        (*v44)(v45, v28, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_236E753B0(0, *(v30 + 2) + 1, 1, v30);
        }

        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        if (v36 >= v35 >> 1)
        {
          v30 = sub_236E753B0(v35 > 1, v36 + 1, 1, v30);
        }

        *(v30 + 2) = v36 + 1;
        v3 = v41;
        v34(&v30[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36], v45, v41);
        v12 = v33;
        v28 = v42;
        v31 = v32;
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v38 = sub_236E75B00(v37, v30);

  return v38;
}

uint64_t sub_236E702E8(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v30 = a2;
  v5 = type metadata accessor for AssetPack(0);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v26 = v3;
    v34 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v10 = -1 << *(a1 + 32);
    v33 = a1 + 56;
    result = sub_236E821A4();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v27 = a1 + 64;
    v32 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v33 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v16 = v8;
      v17 = v28;
      sub_236E393B0(*(a1 + 48) + *(v29 + 72) * v11, v28);
      AssetPack.download(for:)(v30, v31 & 1);
      sub_236E39414(v17);
      sub_236E822B4();
      v18 = *(v34 + 16);
      sub_236E822E4();
      a1 = v32;
      sub_236E822F4();
      result = sub_236E822C4();
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_24;
      }

      v19 = *(v33 + 8 * v15);
      if ((v19 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v8 = v16;
      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v14 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v15 << 6;
        v22 = v15 + 1;
        v23 = (v27 + 8 * v15);
        while (v22 < (v14 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_236E7649C(v11, v13, 0);
            v14 = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        result = sub_236E7649C(v11, v13, 0);
LABEL_18:
        a1 = v32;
      }

      ++v12;
      v11 = v14;
      if (v12 == v16)
      {
        return v34;
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
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_236E705A8(uint64_t a1)
{
  v3 = type metadata accessor for AssetPack(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = v1;
    v28 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v8 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    result = sub_236E821A4();
    v9 = result;
    v10 = 0;
    v27 = *(a1 + 36);
    v23 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v26 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v13 = v24;
      sub_236E393B0(*(a1 + 48) + *(v25 + 72) * v9, v24);
      AssetPack.download(for:)(0, 1);
      sub_236E39414(v13);
      sub_236E822B4();
      v14 = *(v28 + 16);
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v15 = *(v26 + 8 * v12);
      if ((v15 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v11 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v12 << 6;
        v18 = v12 + 1;
        v19 = (v23 + 8 * v12);
        while (v18 < (v11 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_236E7649C(v9, v27, 0);
            v11 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v9, v27, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_236E70854(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for AssetPack(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v23[1] = v2;
    v30 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v9 = -1 << *(a1 + 32);
    v28 = a1 + 56;
    result = sub_236E821A4();
    v10 = result;
    v11 = 0;
    v29 = *(a1 + 36);
    v24 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v28 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v14 = v25;
      sub_236E393B0(*(a1 + 48) + *(v26 + 72) * v10, v25);
      AssetPack.download(for:)(v27, 0);
      sub_236E39414(v14);
      sub_236E822B4();
      v15 = *(v30 + 16);
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v16 = *(v28 + 8 * v13);
      if ((v16 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v12 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v13 << 6;
        v19 = v13 + 1;
        v20 = (v24 + 8 * v13);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_236E7649C(v10, v29, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v10, v29, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v7)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_236E70B04(void (*a1)(char **__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a2;
  v6 = type metadata accessor for AssetPack(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v36 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v12 = -1 << *(a3 + 32);
    v33 = a3 + 56;
    v13 = sub_236E821A4();
    v14 = 0;
    v34 = *(a3 + 36);
    v27 = a3 + 64;
    v28 = v9;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a3 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v33 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      if (v34 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      sub_236E393B0(*(a3 + 48) + *(v29 + 72) * v13, v9);
      v30(&v35, v9);
      v32 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      v17 = a3;
      sub_236E39414(v9);
      v9 = v35;
      sub_236E822B4();
      v18 = *(v36 + 16);
      sub_236E822E4();
      sub_236E822F4();
      sub_236E822C4();
      v15 = 1 << *(v17 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v19 = *(v33 + 8 * v16);
      if ((v19 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v17;
      if (v34 != *(v17 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v13 & 0x3F));
      if (v20)
      {
        v15 = __clz(__rbit64(v20)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v16 << 6;
        v22 = v16 + 1;
        v23 = (v27 + 8 * v16);
        while (v22 < (v15 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_236E7649C(v13, v34, 0);
            v15 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_236E7649C(v13, v34, 0);
      }

LABEL_4:
      ++v14;
      v13 = v15;
      v9 = v28;
      v4 = v32;
      if (v14 == v10)
      {
        return v36;
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
LABEL_26:
    __break(1u);
LABEL_27:
    sub_236E39414(v9);

    __break(1u);
  }

  return result;
}

uint64_t sub_236E70DE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AssetPack(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = *v3;
  if (qword_27DE87AF8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = sub_236E81DA4();
    __swift_project_value_buffer(v16, qword_27DE88430);
    v17 = sub_236E820E4();

    v18 = sub_236E81D84();

    v19 = os_log_type_enabled(v18, v17);
    v33 = v7;
    v34 = a3;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_236E381CC(a1, a2, &v35);
      _os_log_impl(&dword_236E28000, v18, v17, "Asset pack with ID: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2383C0E50](v21, -1, -1);
      MEMORY[0x2383C0E50](v20, -1, -1);
    }

    a3 = v15 + 56;
    v22 = 1 << *(v15 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v15 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    if (v24)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v7 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v7 >= v25)
      {

        v28 = 1;
        v29 = v34;
        return (*(v8 + 56))(v29, v28, 1, v33);
      }

      v24 = *(a3 + 8 * v7);
      ++v26;
      if (v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v7 = v26;
LABEL_11:
    sub_236E393B0(*(v15 + 48) + *(v8 + 72) * (__clz(__rbit64(v24)) | (v7 << 6)), v14);
    sub_236E63BD0(v14, v12);
    v27 = *v12 == a1 && v12[1] == a2;
    if (v27 || (sub_236E824E4() & 1) != 0)
    {
      break;
    }

    v24 &= v24 - 1;
    sub_236E39414(v12);
    v26 = v7;
    if (!v24)
    {
      goto LABEL_8;
    }
  }

  v30 = v34;
  sub_236E63BD0(v12, v34);
  v29 = v30;
  v28 = 0;
  return (*(v8 + 56))(v29, v28, 1, v33);
}

uint64_t AssetPackManifest.DecodingConfiguration.description.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (!v1)
  {
    if (v3)
    {

      sub_236E82264();
      MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E8AE10);
      v11 = sub_236E82124();
      MEMORY[0x2383BFD30](v11);

      MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
      if (v2)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v2)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      MEMORY[0x2383BFD30](v12, v13);

      MEMORY[0x2383BFD30](0xD000000000000013, 0x8000000236E8AE60);
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      *(v14 + 24) = v5;
      goto LABEL_18;
    }

    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E8AE10);
    v20 = sub_236E82124();
    MEMORY[0x2383BFD30](v20);

    MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
    if (v2)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v2)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v19 = v21;
LABEL_33:
    MEMORY[0x2383BFD30](v18, v19);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
    return 0;
  }

  v6 = *v0;
  if (!v3)
  {
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000028, 0x8000000236E8AE80);
    MEMORY[0x2383BFD30](v6, v1);
    MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
    if (v2)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v2)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x2383BFD30](v16, v17);

    MEMORY[0x2383BFD30](0x3A656372756F7320, 0xE900000000000020);
    v18 = sub_236E82124();
    goto LABEL_33;
  }

  sub_236E82264();
  MEMORY[0x2383BFD30](0xD000000000000028, 0x8000000236E8AE80);
  MEMORY[0x2383BFD30](v6, v1);
  MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2383BFD30](v7, v8);

  MEMORY[0x2383BFD30](0x3A656372756F7320, 0xE900000000000020);
  v9 = sub_236E82124();
  MEMORY[0x2383BFD30](v9);

  MEMORY[0x2383BFD30](0xD000000000000013, 0x8000000236E8AE60);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v5;
LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88448, &unk_236E861E0);
  v15 = sub_236E81ED4();
  MEMORY[0x2383BFD30](v15);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  sub_236E38C64(v3);
  return 0;
}

uint64_t sub_236E71564()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88410);
  __swift_project_value_buffer(v0, qword_27DE88410);
  return sub_236E81D94();
}

void AssetPackManifest.DecodingConfiguration.init(appReviewDecodingHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE88410);
  v7 = sub_236E820E4();

  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88448, &unk_236E861E0);
    v12 = sub_236E81ED4();
    v14 = sub_236E381CC(v12, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_236E28000, v8, v7, "Init App Review decoding handler: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 3;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
}

void AssetPackManifest.DecodingConfiguration.init(source:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE88410);
  v5 = sub_236E820E4();
  v6 = sub_236E81D84();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_236E82124();
    v11 = sub_236E381CC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_236E28000, v6, v5, "Init source: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = a1;
}

uint64_t sub_236E71920()
{
  sub_236E82574();
  MEMORY[0x2383C0390](0);
  return sub_236E82594();
}

uint64_t sub_236E7198C()
{
  sub_236E82574();
  MEMORY[0x2383C0390](0);
  return sub_236E82594();
}

uint64_t sub_236E719DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236E824E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236E71A70(uint64_t a1)
{
  v2 = sub_236E75704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E71AAC(uint64_t a1)
{
  v2 = sub_236E75704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E71AE8()
{
  if (*v0)
  {
    result = 0x70416D6F72467369;
  }

  else
  {
    result = 0x6361507465737361;
  }

  *v0;
  return result;
}

uint64_t sub_236E71B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361507465737361 && a2 == 0xEA0000000000736BLL;
  if (v6 || (sub_236E824E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70416D6F72467369 && a2 == 0xEF77656976655270)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_236E824E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_236E71C20(uint64_t a1)
{
  v2 = sub_236E75660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236E71C5C(uint64_t a1)
{
  v2 = sub_236E75660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236E71CA0()
{
  v0 = sub_236E818E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_236E818D4();
  result = sub_236E818B4();
  qword_27DE88428 = v3;
  return result;
}

unint64_t AssetPackManifest.description.getter()
{
  v1 = *v0;
  sub_236E82264();

  type metadata accessor for AssetPack(0);
  sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack);
  v2 = sub_236E820A4();
  MEMORY[0x2383BFD30](v2);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_236E71DC4()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88430);
  __swift_project_value_buffer(v0, qword_27DE88430);
  return sub_236E81D94();
}

__n128 AssetPackManifest.init(contentsOf:appGroupID:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v65 = a2;
  v58 = a4;
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_236E81DA4();
  v14 = __swift_project_value_buffer(v13, qword_27DE88430);
  v15 = sub_236E820E4();
  v59 = v7[2];
  v59(v12, a1, v6);

  v60 = v14;
  v16 = sub_236E81D84();

  v17 = os_log_type_enabled(v16, v15);
  v61 = a1;
  v64 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v18 = 136446466;
    sub_236E755C4(&unk_27DE87B30, MEMORY[0x277CC9260]);
    v19 = sub_236E82484();
    v20 = v7;
    v21 = a3;
    v22 = v6;
    v24 = v23;
    v69 = v20[1];
    v69(v12, v22);
    v25 = sub_236E381CC(v19, v24, &v66);
    v6 = v22;
    a3 = v21;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_236E381CC(v65, v21, &v66);
    _os_log_impl(&dword_236E28000, v16, v15, "Init contents of: %{public}s app group ID: %{public}s", v18, 0x16u);
    v26 = v57;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v26, -1, -1);
    v27 = v18;
    a1 = v61;
    MEMORY[0x2383C0E50](v27, -1, -1);
  }

  else
  {

    v69 = v7[1];
    v69(v12, v6);
  }

  v28 = v62;
  v29 = sub_236E81A04();
  v31 = v63;
  if (v28)
  {
    v34 = sub_236E820F4();
    v59(v31, a1, v6);

    v35 = v28;
    v36 = v6;
    v37 = sub_236E81D84();

    if (os_log_type_enabled(v37, v34))
    {
      v38 = swift_slowAlloc();
      LODWORD(v60) = v34;
      v39 = v38;
      v40 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v39 = 136446722;
      sub_236E755C4(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v41 = sub_236E82484();
      v42 = v31;
      v44 = v43;
      v69(v42, v36);
      v45 = sub_236E381CC(v41, v44, &v66);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2082;
      v46 = sub_236E381CC(v65, a3, &v66);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2114;
      v47 = v28;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v48;
      *v40 = v48;
      _os_log_impl(&dword_236E28000, v37, v60, "An asset-pack manifest couldn’t be created with the contents of “%{public}s” and the app group ID “%{public}s”: %{public}@", v39, 0x20u);
      sub_236E38DBC(v40, &qword_27DE88170, &qword_236E853C0);
      v49 = v40;
      a1 = v61;
      MEMORY[0x2383C0E50](v49, -1, -1);
      v50 = v62;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v50, -1, -1);
      v51 = v39;
      v52 = v69;
      MEMORY[0x2383C0E50](v51, -1, -1);
    }

    else
    {

      v52 = v69;
      v69(v31, v36);
    }

    swift_willThrow();
    v52(a1, v36);
  }

  else
  {
    v32 = v29;
    v33 = v30;

    AssetPackManifest.init(from:appGroupID:)(v32, v33, v65, a3, &v66);
    v69(a1, v6);

    v53 = v67;
    result = v68;
    v55 = v58;
    v58->n128_u64[0] = v66;
    v55->n128_u8[8] = v53;
    v55[1] = result;
  }

  return result;
}

uint64_t AssetPackManifest.init(from:appGroupID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v9 = sub_236E81DA4();
  __swift_project_value_buffer(v9, qword_27DE88430);
  v10 = sub_236E820E4();
  sub_236E59298(a1, a2);

  v11 = sub_236E81D84();
  sub_236E38C74(a1, a2);

  v66 = a2;
  v57 = a1;
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v58[0] = v13;
    *v12 = 136446466;
    sub_236E59298(a1, a2);
    v14 = sub_236E81A14();
    v15 = a2;
    v16 = a1;
    v17 = a3;
    v18 = v14;
    v20 = v19;
    sub_236E38C74(v16, v15);
    v21 = sub_236E381CC(v18, v20, v58);

    *(v12 + 4) = v21;
    a3 = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_236E381CC(v17, a4, v58);
    _os_log_impl(&dword_236E28000, v11, v10, "Init from: %{public}s app group ID: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v13, -1, -1);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  if (qword_27DE87AF0 != -1)
  {
    swift_once();
  }

  v22 = qword_27DE87AE8;
  swift_bridgeObjectRetain_n();
  if (v22 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27DE88410);
  v23 = sub_236E820E4();

  v24 = sub_236E81D84();

  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58[0] = v26;
    *v25 = 136446722;
    v27 = sub_236E381CC(a3, a4, v58);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2082;
    v28 = sub_236E82124();
    v30 = a3;
    v31 = sub_236E381CC(v28, v29, v58);

    *(v25 + 14) = v31;
    a3 = v30;
    *(v25 + 22) = 1024;
    *(v25 + 24) = 0;
    _os_log_impl(&dword_236E28000, v24, v23, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v26, -1, -1);
    MEMORY[0x2383C0E50](v25, -1, -1);
  }

  else
  {
  }

  v32 = v66;
  v58[0] = a3;
  v58[1] = a4;
  v59 = 0;
  v60 = 4;
  sub_236E38C10();
  v61 = 0;
  v62 = 0;
  v33 = v55;
  sub_236E818C4();
  if (v55)
  {
    v34 = v61;

    sub_236E38C64(v34);
    v35 = sub_236E820F4();
    sub_236E59298(v57, v32);

    v36 = v55;
    v37 = sub_236E81D84();
    sub_236E38C74(v57, v32);

    if (os_log_type_enabled(v37, v35))
    {
      v38 = v32;
      v54 = a3;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58[0] = v56;
      *v39 = 136446722;
      sub_236E59298(v57, v38);
      v53 = v35;
      v41 = sub_236E81A14();
      v43 = v42;
      sub_236E38C74(v57, v38);
      v44 = sub_236E381CC(v41, v43, v58);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = sub_236E381CC(v54, a4, v58);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2114;
      v46 = v33;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v47;
      *v40 = v47;
      _os_log_impl(&dword_236E28000, v37, v53, "An asset-pack manifest couldn’t be created from “%{public}s” with the app group ID “%{public}s”: %{public}@", v39, 0x20u);
      sub_236E38DBC(v40, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v56, -1, -1);
      v32 = v38;
      MEMORY[0x2383C0E50](v39, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
    return sub_236E38C74(v57, v32);
  }

  else
  {
    v48 = v61;

    sub_236E38C64(v48);

    result = sub_236E38C74(v57, v32);
    v50 = v64;
    v51 = v65;
    *a5 = v63;
    *(a5 + 8) = v50;
    *(a5 + 16) = v51;
  }

  return result;
}

uint64_t AssetPackManifest.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a1;
  v105 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88450, &qword_236E861F0);
  v107 = *(v4 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v4);
  v111 = &v101 - v6;
  v116 = type metadata accessor for AssetPack(0);
  v7 = *(*(v116 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v116);
  v103 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v114 = (&v101 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v101 - v13;
  MEMORY[0x28223BE20](v12);
  v102 = &v101 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88458, &qword_236E861F8);
  v106 = *(v108 - 8);
  v15 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v110 = &v101 - v16;
  v17 = *(a2 + 8);
  v118 = *a2;
  v120 = v17;
  v117 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v21 = sub_236E81DA4();
  v22 = __swift_project_value_buffer(v21, qword_27DE88430);
  v23 = sub_236E820E4();
  sub_236E6DA84(v119, v127);

  sub_236E6D818(v19);
  v24 = sub_236E81D84();

  sub_236E38C64(v19);
  v112 = v23;
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v104 = v4;
    v26 = v19;
    v27 = v25;
    v101 = swift_slowAlloc();
    v129 = v101;
    *v27 = 136446466;
    v28 = v128;
    v29 = __swift_project_boxed_opaque_existential_0(v127, v128);
    v109 = v22;
    v30 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v29);
    (*(v32 + 16))(&v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = sub_236E81ED4();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0(v127);
    v36 = sub_236E381CC(v33, v35, &v129);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2082;
    v121 = v118;
    v122 = v120;
    v123 = v117;
    v124 = v18;
    v125 = v26;
    v126 = v20;

    sub_236E6D818(v26);
    v37 = AssetPackManifest.DecodingConfiguration.description.getter();
    v39 = v38;
    v22 = v109;

    sub_236E38C64(v26);
    v40 = sub_236E381CC(v37, v39, &v129);

    *(v27 + 14) = v40;
    _os_log_impl(&dword_236E28000, v24, v112, "Init from: %{public}s configuration: %{public}s", v27, 0x16u);
    v41 = v101;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v41, -1, -1);
    v42 = v27;
    v19 = v26;
    v4 = v104;
    MEMORY[0x2383C0E50](v42, -1, -1);

    if (v18 <= 5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v49 = sub_236E82104();

    sub_236E6D818(v19);
    v50 = sub_236E81D84();

    sub_236E38C64(v19);
    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v109 = v22;
      v53 = v52;
      v121 = v52;
      *v51 = 136315138;
      v54 = sub_236E82124();
      v56 = v19;
      v57 = sub_236E381CC(v54, v55, &v121);

      *(v51 + 4) = v57;
      v19 = v56;
      _os_log_impl(&dword_236E28000, v50, v49, "The manifest data source “%s” is unknown.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x2383C0E50](v53, -1, -1);
      MEMORY[0x2383C0E50](v51, -1, -1);
    }

    sub_236E7560C();
    v48 = swift_allocError();
    *v58 = v18;
    *(v58 + 8) = 0;
    goto LABEL_30;
  }

  __swift_destroy_boxed_opaque_existential_0(v127);
  if (v18 > 5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (((1 << v18) & 0x34) != 0)
  {
    v43 = sub_236E820D4();
    v44 = sub_236E81D84();
    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_236E28000, v44, v43, "Decoding an asset-pack manifest using a local-cache (third-party-server/development-override) configuration…", v45, 2u);
      MEMORY[0x2383C0E50](v45, -1, -1);
    }

    v46 = v119[4];
    __swift_project_boxed_opaque_existential_0(v119, v119[3]);
    sub_236E75660();
    v47 = v115;
    sub_236E825A4();
    v48 = v47;
    if (!v47)
    {
      LOBYTE(v121) = 0;
      sub_236E823B4();
      v109 = v22;
      v115 = MEMORY[0x277D84FA0];
      v129 = MEMORY[0x277D84FA0];
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v69 = sub_236E824A4();
      if ((v69 & 1) == 0)
      {
        v104 = v4;
        v70 = v103;
        do
        {
          v121 = v118;
          v122 = v120;
          v123 = v117;
          v124 = v18;
          v125 = v19;
          v71 = v19;
          v126 = v20;
          __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
          sub_236E755C4(&qword_27DE88470, type metadata accessor for AssetPack);
          sub_236E82494();
          v72 = v114;
          sub_236E393B0(v70, v114);
          v73 = v113;
          sub_236E53F04(v113, v72);
          sub_236E39414(v73);
          sub_236E39414(v70);
          __swift_project_boxed_opaque_existential_0(v127, v128);
          v19 = v71;
        }

        while ((sub_236E824A4() & 1) == 0);
        v115 = v129;
        v4 = v104;
      }

      LOBYTE(v121) = 1;
      v74 = v111;
      v98 = sub_236E823D4();
      (*(v107 + 8))(v74, v4);
      __swift_destroy_boxed_opaque_existential_0(v127);
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (((1 << v18) & 3) != 0)
  {
    v59 = sub_236E820D4();
    v60 = sub_236E81D84();
    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_236E28000, v60, v59, "Decoding an asset-pack manifest using an App Store (TestFlight) configuration…", v61, 2u);
      MEMORY[0x2383C0E50](v61, -1, -1);
    }

    v62 = v119[4];
    __swift_project_boxed_opaque_existential_0(v119, v119[3]);
    sub_236E75704();
    v63 = v115;
    sub_236E825A4();
    v48 = v63;
    if (!v63)
    {
      sub_236E823B4();
      v109 = v22;
      v115 = MEMORY[0x277D84FA0];
      v129 = MEMORY[0x277D84FA0];
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v93 = sub_236E824A4();
      if ((v93 & 1) == 0)
      {
        v94 = v102;
        do
        {
          v121 = v118;
          v122 = v120;
          v123 = v117;
          v95 = v18;
          v124 = v18;
          v125 = v19;
          v126 = v20;
          __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
          sub_236E755C4(&qword_27DE88470, type metadata accessor for AssetPack);
          sub_236E82494();
          v96 = v114;
          sub_236E393B0(v94, v114);
          v97 = v113;
          sub_236E53F04(v113, v96);
          sub_236E39414(v97);
          sub_236E39414(v94);
          __swift_project_boxed_opaque_existential_0(v127, v128);
          v18 = v95;
        }

        while ((sub_236E824A4() & 1) == 0);
        v115 = v129;
      }

      (*(v106 + 8))(v110, v108);
      __swift_destroy_boxed_opaque_existential_0(v127);
      v98 = 0;
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v64 = sub_236E820D4();
  v65 = sub_236E81D84();
  if (os_log_type_enabled(v65, v64))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_236E28000, v65, v64, "Decoding an asset-pack manifest using an App Review configuration…", v66, 2u);
    MEMORY[0x2383C0E50](v66, -1, -1);
  }

  if (!v19)
  {
    sub_236E7560C();
    v48 = swift_allocError();
    *v75 = 0;
    *(v75 + 8) = 1;
LABEL_30:
    swift_willThrow();
    goto LABEL_31;
  }

  v67 = v115;
  v68 = v19(v119, v118, v120);
  v48 = v67;
  if (!v67)
  {
    v115 = v68;
    sub_236E38C64(v19);
    v98 = 1;
LABEL_41:
    v99 = v105;
    sub_236E38C64(v19);
    *v99 = v115;
    *(v99 + 8) = v98 & 1;
    v100 = v120;
    *(v99 + 16) = v118;
    *(v99 + 24) = v100;

    __swift_destroy_boxed_opaque_existential_0(v119);
  }

  sub_236E38C64(v19);
LABEL_31:
  v76 = sub_236E820F4();

  sub_236E6D818(v19);
  v77 = v48;
  v78 = sub_236E81D84();

  sub_236E38C64(v19);

  if (os_log_type_enabled(v78, v76))
  {
    v79 = v18;
    v80 = v19;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v116 = v48;
    v84 = v83;
    v126 = v20;
    v127[0] = v83;
    *v81 = 136446466;
    v85 = v118;
    LODWORD(v118) = v76;
    v121 = v85;
    v122 = v120;
    v123 = v117;
    v124 = v79;
    v125 = v80;
    v86 = AssetPackManifest.DecodingConfiguration.description.getter();
    v88 = v87;

    sub_236E38C64(v80);
    v89 = sub_236E381CC(v86, v88, v127);

    *(v81 + 4) = v89;
    *(v81 + 12) = 2114;
    v90 = v116;
    v91 = _swift_stdlib_bridgeErrorToNSError();
    *(v81 + 14) = v91;
    *v82 = v91;
    _os_log_impl(&dword_236E28000, v78, v118, "An asset-pack manifest couldn’t be decoded with the configuration “%{public}s”: %{public}@", v81, 0x16u);
    sub_236E38DBC(v82, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v82, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x2383C0E50](v84, -1, -1);
    MEMORY[0x2383C0E50](v81, -1, -1);
  }

  else
  {

    sub_236E38C64(v19);
  }

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(v119);
}

uint64_t AssetPackManifest.allDownloads(for:)(uint64_t a1, int a2)
{
  v64 = a1;
  v4 = sub_236E81AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  v18 = *v2;
  if (a2)
  {
    if (qword_27DE87AF8 != -1)
    {
      swift_once();
    }

    v19 = sub_236E81DA4();
    __swift_project_value_buffer(v19, qword_27DE88430);
    v20 = sub_236E820E4();
    v21 = sub_236E81D84();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_236E28000, v21, v20, "All downloads", v22, 2u);
      MEMORY[0x2383C0E50](v22, -1, -1);
    }

    goto LABEL_22;
  }

  v61 = v15;
  LODWORD(v60) = *(v2 + 8);
  v23 = *(v2 + 16);
  v58 = *(v2 + 24);
  v59 = v23;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v24 = sub_236E81DA4();
  __swift_project_value_buffer(v24, qword_27DE88430);
  v25 = sub_236E820E4();
  v26 = sub_236E81D84();
  v27 = os_log_type_enabled(v26, v25);
  v63 = a2;
  v62 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v65 = v56;
    *v28 = 136446210;
    v69 = v64;
    type metadata accessor for BAContentRequest(0);
    v29 = sub_236E81ED4();
    v31 = v18;
    v32 = v17;
    v33 = v8;
    v34 = v5;
    v35 = sub_236E381CC(v29, v30, &v65);

    *(v28 + 4) = v35;
    v5 = v34;
    v8 = v33;
    v17 = v32;
    v18 = v31;
    _os_log_impl(&dword_236E28000, v26, v25, "All downloads for: %{public}s", v28, 0xCu);
    v36 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x2383C0E50](v36, -1, -1);
    v37 = v28;
    v4 = v62;
    MEMORY[0x2383C0E50](v37, -1, -1);
  }

  v38 = v61;
  switch(v64)
  {
    case 1:
      v40 = MEMORY[0x277D25B70];
LABEL_17:
      (*(v5 + 104))(v14, *v40, v4);
      v39 = 0;
      goto LABEL_18;
    case 3:
      v39 = 1;
LABEL_18:
      (*(v5 + 56))(v14, v39, 1, v4);
      sub_236E59508(v14, v17, &unk_27DE87B00, &unk_236E84540);
      sub_236E593A8(v17, v38, &unk_27DE87B00, &unk_236E84540);
      if ((*(v5 + 48))(v38, 1, v4) == 1)
      {
        sub_236E38DBC(v38, &unk_27DE87B00, &unk_236E84540);
        sub_236E38DBC(v17, &unk_27DE87B00, &unk_236E84540);
        v18 = MEMORY[0x277D84FA0];
      }

      else
      {
        (*(v5 + 32))(v8, v38, v4);
        v65 = v18;
        LOBYTE(v66) = v60;
        v67 = v59;
        v68 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
        v42 = *(v41 + 72);
        v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = swift_allocObject();
        v61 = v44;
        *(v44 + 16) = xmmword_236E84530;
        v45 = v44 + v43;
        v57 = v5;
        v59 = *(v5 + 16);
        v59(v44 + v43, v8, v4);
        v46 = *MEMORY[0x277D25B98];
        v47 = v4;
        v48 = sub_236E81AC4();
        v49 = *(v48 - 8);
        v60 = v17;
        v50 = *(v49 + 104);
        v50(v45, v46, v48);
        v51 = *(v49 + 56);
        v51(v45, 0, 1, v48);
        v59(v45 + v42, v8, v47);
        v50(v45 + v42, *MEMORY[0x277D25B90], v48);
        v51(v45 + v42, 0, 1, v48);
        v18 = sub_236E6FE9C(v61);

        (*(v57 + 8))(v8, v62);
        sub_236E38DBC(v60, &unk_27DE87B00, &unk_236E84540);
      }

      LOBYTE(a2) = v63;
LABEL_22:
      v52 = sub_236E702E8(v18, v64, a2 & 1);

      v53 = sub_236E56F8C(v52);

      return v53;
    case 2:
      v40 = MEMORY[0x277D25B78];
      goto LABEL_17;
  }

  v65 = 0;
  v66 = 0xE000000000000000;
  sub_236E82264();
  MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
  v69 = v64;
  type metadata accessor for BAContentRequest(0);
  sub_236E82304();
  MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
  result = sub_236E82344();
  __break(1u);
  return result;
}

uint64_t AssetPackManifest.encode(to:)(void *a1)
{
  v3 = type metadata accessor for AssetPack(0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88480, &qword_236E86208);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v50 - v9;
  v11 = *v1;
  v51 = *(v1 + 8);
  v50[2] = v1[3];
  if (qword_27DE87AF8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v12 = sub_236E81DA4();
  v13 = __swift_project_value_buffer(v12, qword_27DE88430);
  v14 = sub_236E820E4();
  sub_236E6DA84(a1, &v59);
  v50[1] = v13;
  v15 = sub_236E81D84();
  v16 = os_log_type_enabled(v15, v14);
  v55 = v6;
  v52 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v62 = v18;
    *v17 = 136446210;
    v53 = v11;
    v19 = v61;
    v20 = __swift_project_boxed_opaque_existential_0(&v59, v61);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = v10;
    (*(v24 + 16))(v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_236E81ED4();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0(&v59);
    v28 = sub_236E381CC(v25, v27, &v62);
    v10 = v23;

    *(v17 + 4) = v28;
    v11 = v53;
    _os_log_impl(&dword_236E28000, v15, v14, "Encode to: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383C0E50](v18, -1, -1);
    MEMORY[0x2383C0E50](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_236E75660();
  sub_236E825B4();
  LOBYTE(v62) = 0;
  v53 = v10;
  sub_236E82434();
  a1 = v11 + 56;
  v29 = 1 << v11[32];
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v6 = v30 & *(v11 + 7);
  v10 = ((v29 + 63) >> 6);

  v31 = 0;
  v32 = v54;
  if (v6)
  {
    while (1)
    {
      v33 = v31;
LABEL_12:
      sub_236E393B0(*(v11 + 6) + *(v56 + 72) * (__clz(__rbit64(v6)) | (v33 << 6)), v32);
      v7 = v61;
      __swift_mutable_project_boxed_opaque_existential_1(&v59, v61);
      sub_236E755C4(&qword_27DE88488, type metadata accessor for AssetPack);
      v34 = v58;
      sub_236E824B4();
      v58 = v34;
      if (v34)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_236E39414(v32);
      v31 = v33;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    sub_236E39414(v32);

    (*(v52 + 8))(v53, v55);
    v38 = v58;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(&v59);
    v39 = sub_236E820F4();

    v40 = v38;
    v41 = sub_236E81D84();

    if (os_log_type_enabled(v41, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = 0;
      v62 = v58;
      *v42 = 136446466;
      v60 = 0xE000000000000000;

      sub_236E82264();

      v59 = 0xD000000000000024;
      v60 = 0x8000000236E89E50;
      sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack);
      v44 = sub_236E820A4();
      MEMORY[0x2383BFD30](v44);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);

      v45 = sub_236E381CC(v59, v60, &v62);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2114;
      v46 = v38;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v47;
      *v43 = v47;
      _os_log_impl(&dword_236E28000, v41, v39, "The asset-pack manifest “%{public}s” couldn’t be encoded: %{public}@", v42, 0x16u);
      sub_236E38DBC(v43, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v43, -1, -1);
      v48 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x2383C0E50](v48, -1, -1);
      MEMORY[0x2383C0E50](v42, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    while (1)
    {
LABEL_9:
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v33 >= v10)
      {
        break;
      }

      v6 = a1[v33];
      ++v31;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v62) = 1;
    v35 = v55;
    v36 = v53;
    v37 = v58;
    sub_236E82454();
    v38 = v37;
    if (v37)
    {
      (*(v52 + 8))(v36, v35);
      goto LABEL_17;
    }

    (*(v52 + 8))(v36, v35);
    return __swift_destroy_boxed_opaque_existential_0(&v59);
  }
}

unint64_t sub_236E749E0()
{
  v1 = *v0;
  sub_236E82264();

  type metadata accessor for AssetPack(0);
  sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack);
  v2 = sub_236E820A4();
  MEMORY[0x2383BFD30](v2);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_236E74AE8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000021;
  }

  sub_236E82264();

  v3 = sub_236E82124();
  MEMORY[0x2383BFD30](v3);

  MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
  return 0x100000000000001CLL;
}

uint64_t sub_236E74CAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_236E393B0(a1, &v17 - v9);
  v11 = objc_allocWithZone(BAAssetPack);
  sub_236E393B0(v10, v8);
  v12 = _s16AssetPackWrapperCMa(0);
  v13 = objc_allocWithZone(v12);
  sub_236E393B0(v8, v13 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_236E39414(v8);
  v15 = [v11 init_];

  result = sub_236E39414(v10);
  *a2 = v15;
  return result;
}

void __swiftcall BAAssetPackManifest.init()(BAAssetPackManifest *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

size_t sub_236E753B0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE884D0, &unk_236E86660);
  v10 = *(sub_236E81AC4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_236E81AC4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_236E75588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_236E755C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_236E7560C()
{
  result = qword_27DE88460;
  if (!qword_27DE88460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88460);
  }

  return result;
}

unint64_t sub_236E75660()
{
  result = qword_27DE88468;
  if (!qword_27DE88468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88468);
  }

  return result;
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

unint64_t sub_236E75704()
{
  result = qword_27DE88478;
  if (!qword_27DE88478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88478);
  }

  return result;
}

unint64_t *sub_236E75758(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_236E757F4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_236E757F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v43 = a4;
  v34 = a1;
  v5 = sub_236E81AC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for AssetPack(0);
  v36 = *(v42 - 8);
  v10 = *(v36 + 64);
  result = MEMORY[0x28223BE20](v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = a3;
  v14 = 0;
  v15 = *(a3 + 56);
  v33 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v41 = v6 + 16;
  v35 = v19;
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v40 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v14 << 6);
    v24 = *(v38 + 48);
    v25 = *(v36 + 72);
    v39 = v23;
    sub_236E393B0(v24 + v25 * v23, v13);
    v26 = 0;
    v27 = *(v43 + 16);
    do
    {
      if (v27 == v26)
      {
        result = sub_236E39414(v13);
        v19 = v35;
        v18 = v40;
        goto LABEL_5;
      }

      (*(v6 + 16))(v9, v43 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26++, v5);
      v28 = *(v42 + 32);
      v29 = sub_236E81AA4();
      (*(v6 + 8))(v9, v5);
    }

    while ((v29 & 1) == 0);
    result = sub_236E39414(v13);
    *(v34 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v30 = __OFADD__(v37++, 1);
    v19 = v35;
    v18 = v40;
    if (v30)
    {
      __break(1u);
LABEL_18:
      v31 = v38;

      return sub_236E7AF64(v34, v32, v37, v31);
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_18;
    }

    v22 = *(v33 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v40 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236E75B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x277D85DE8];
  v6 = sub_236E81AC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AssetPack(0);
  v44 = *(v48 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = a2;
  v50 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38 = v14;
    v39 = v3;
    v37[1] = v37;
    MEMORY[0x28223BE20](v16);
    v41 = v37 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v45 = 0;
    v15 = 0;
    v17 = *(a1 + 56);
    v40 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v14 = v7 + 16;
    v42 = v21;
    v43 = a1;
LABEL_6:
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
LABEL_13:
      v25 = v22 | (v15 << 6);
      v26 = *(a1 + 48);
      v27 = *(v44 + 72);
      v46 = v25;
      sub_236E393B0(v26 + v27 * v25, v50);
      v28 = 0;
      v3 = *(v49 + 16);
      do
      {
        if (v3 == v28)
        {
          sub_236E39414(v50);
          v21 = v42;
          a1 = v43;
          v20 = v47;
          goto LABEL_6;
        }

        (*(v7 + 16))(v10, v49 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28++, v6);
        v29 = *(v48 + 32);
        v30 = sub_236E81AA4();
        (*(v7 + 8))(v10, v6);
      }

      while ((v30 & 1) == 0);
      sub_236E39414(v50);
      *&v41[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
      v31 = __OFADD__(v45++, 1);
      v21 = v42;
      a1 = v43;
      v20 = v47;
      if (v31)
      {
        __break(1u);
LABEL_19:
        v32 = sub_236E7AF64(v41, v38, v45, a1);

        goto LABEL_20;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v21)
      {
        goto LABEL_19;
      }

      v24 = *(v40 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v49;

  v32 = sub_236E75758(v35, v14, a1, v36);

  MEMORY[0x2383C0E50](v35, -1, -1);

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236E75F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236E75F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s7Decoder_pSSSgShy16BackgroundAssets9AssetPackVGs5Error_pIegngozo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_236E76008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_236E76064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackManifestError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetPackManifestError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_236E7614C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236E76168(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_236E7628C()
{
  result = qword_27DE884A0;
  if (!qword_27DE884A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884A0);
  }

  return result;
}

unint64_t sub_236E762E4()
{
  result = qword_27DE884A8;
  if (!qword_27DE884A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884A8);
  }

  return result;
}

unint64_t sub_236E76340()
{
  result = qword_27DE884B0;
  if (!qword_27DE884B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884B0);
  }

  return result;
}

unint64_t sub_236E76398()
{
  result = qword_27DE884B8;
  if (!qword_27DE884B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884B8);
  }

  return result;
}

unint64_t sub_236E763F0()
{
  result = qword_27DE884C0;
  if (!qword_27DE884C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884C0);
  }

  return result;
}

unint64_t sub_236E76448()
{
  result = qword_27DE884C8;
  if (!qword_27DE884C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884C8);
  }

  return result;
}

uint64_t sub_236E7649C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_236E764C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v196 = sub_236E81AB4();
  *&v195 = *(v196 - 8);
  v8 = *(v195 + 64);
  v9 = MEMORY[0x28223BE20](v196);
  v190 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v189 = &v183 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v191 = &v183 - v14;
  MEMORY[0x28223BE20](v13);
  v197 = (&v183 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v194 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v192 = (&v183 - v21);
  MEMORY[0x28223BE20](v20);
  v200 = &v183 - v22;
  v23 = sub_236E819F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = a4;
  if (qword_27DE87A90 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v198 = sub_236E81DA4();
    v28 = __swift_project_value_buffer(v198, qword_27DE87A98);
    v29 = sub_236E820E4();
    (*(v24 + 16))(v27, a2, v23);
    v30 = a3;
    v31 = sub_236E81D84();

    v32 = os_log_type_enabled(v31, v29);
    v193 = a1;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v199 = a2;
      v34 = v33;
      v35 = swift_slowAlloc();
      v201 = v28;
      v36 = v35;
      v188 = swift_slowAlloc();
      v204 = v188;
      *v34 = 136446722;
      v210 = a1;
      type metadata accessor for BAContentRequest(0);
      v37 = sub_236E81ED4();
      v39 = sub_236E381CC(v37, v38, &v204);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      sub_236E7B4A8(&unk_27DE87B30, MEMORY[0x277CC9260]);
      v40 = sub_236E82484();
      v42 = v41;
      (*(v24 + 8))(v27, v23);
      v43 = sub_236E381CC(v40, v42, &v204);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2114;
      *(v34 + 24) = v30;
      *v36 = v30;
      v44 = v30;
      _os_log_impl(&dword_236E28000, v31, v29, "Downloads for: %{public}s manifest URL: %{public}s extension info: %{public}@", v34, 0x20u);
      sub_236E38DBC(v36, &qword_27DE88170, &qword_236E853C0);
      v45 = v36;
      v28 = v201;
      MEMORY[0x2383C0E50](v45, -1, -1);
      v46 = v188;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v46, -1, -1);
      MEMORY[0x2383C0E50](v34, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v27, v23);
    }

    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
      break;
    }

    v48 = v47;
    v49 = v30;
    v50 = sub_236E81D84();
    v51 = sub_236E82114();
    v52 = os_log_type_enabled(v50, v51);
    v199 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v204 = v54;
      *v53 = 136315138;
      [v48 manifestDataSource];
      v55 = sub_236E82124();
      v57 = v28;
      v58 = sub_236E381CC(v55, v56, &v204);

      *(v53 + 4) = v58;
      v28 = v57;
      _os_log_impl(&dword_236E28000, v50, v51, "The managed downloader extension was launched with a manifest from “%s”.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x2383C0E50](v54, -1, -1);
      MEMORY[0x2383C0E50](v53, -1, -1);
    }

    v59 = sub_236E81A04();
    v61 = v60;
    v62 = sub_236E818E4();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_236E818D4();
    sub_236E818B4();
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v201 = v28;
    v65 = qword_27DE87DC0;
    v188 = sub_236E3BA24();
    v67 = v66;
    v68 = [v48 manifestDataSource];
    v69 = qword_27DE87AE8;

    if (v69 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v198, qword_27DE88410);
    v70 = sub_236E820E4();

    v71 = sub_236E81D84();

    if (os_log_type_enabled(v71, v70))
    {
      v72 = swift_slowAlloc();
      v198 = v65;
      v73 = v72;
      v187 = swift_slowAlloc();
      v204 = v187;
      *v73 = 136446722;
      LODWORD(v186) = v70;
      v74 = v188;
      v75 = v68;
      v76 = sub_236E381CC(v188, v67, &v204);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      v77 = sub_236E82124();
      v79 = sub_236E381CC(v77, v78, &v204);
      v185 = v71;
      v80 = v79;
      v68 = v75;

      *(v73 + 14) = v80;
      v81 = v74;
      *(v73 + 22) = 1024;
      *(v73 + 24) = 1;
      v82 = v185;
      _os_log_impl(&dword_236E28000, v185, v186, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v73, 0x1Cu);
      v83 = v187;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v83, -1, -1);
      v84 = v73;
      v65 = v198;
      MEMORY[0x2383C0E50](v84, -1, -1);
    }

    else
    {

      v81 = v188;
    }

    v204 = v81;
    v205 = v67;
    LOBYTE(v206) = 1;
    v207 = v68;
    sub_236E38C10();
    v208 = 0;
    v209 = 0;
    sub_236E818C4();
    v91 = v208;

    sub_236E38C64(v91);

    sub_236E38C74(v59, v61);
    v92 = v210;
    v93 = v211;
    v94 = v212;
    v95 = v213;
    v96 = sub_236E81D84();
    v97 = sub_236E82114();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_236E28000, v96, v97, "Installing the manifest that Background Assets provided to the managed downloader extension…", v98, 2u);
      MEMORY[0x2383C0E50](v98, -1, -1);
    }

    v204 = v92;
    LODWORD(v187) = v93;
    LOBYTE(v205) = v93;
    v188 = v94;
    v206 = v94;
    v207 = v95;

    v198 = v65;
    sub_236E3E794(&v204);
    v99 = v195;
    v100 = v194;

    v101 = MEMORY[0x277D25B70];
    v102 = v196;
    v27 = v192;
    if (v193 == 1)
    {
      v103 = 1;
      v105 = MEMORY[0x277D25B70];
    }

    else
    {
      if (v193 == 3)
      {
        v103 = 3;
        v104 = 1;
        goto LABEL_31;
      }

      v103 = v193;
      if (v193 != 2)
      {
        v204 = 0;
        v205 = 0xE000000000000000;
        sub_236E82264();
        MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
        v210 = v103;
        type metadata accessor for BAContentRequest(0);
        sub_236E82304();
        MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
        v182 = 0;
        v181 = 87;
        sub_236E82344();
        __break(1u);
        return;
      }

      v105 = MEMORY[0x277D25B78];
    }

    (*(v99 + 104))(v192, *v105, v196);
    v104 = 0;
LABEL_31:
    (*(v99 + 56))(v27, v104, 1, v102);
    sub_236E38CDC(v27, v200);
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      else
      {
        v106 = MEMORY[0x277D84FA0];
      }

      v102 = v196;
      v99 = v195;
      v100 = v194;
    }

    else
    {
      v106 = MEMORY[0x277D84FA0];
    }

    v210 = v106;
    sub_236E593A8(v200, v100, &unk_27DE87B00, &unk_236E84540);
    if ((*(v99 + 48))(v100, 1, v102) != 1)
    {
      v192 = v95;
      v186 = v92;
      v107 = v197;
      (*(v99 + 32))(v197, v100, v102);
      v108 = *(v99 + 16);
      v109 = v191;
      v108(v191, v107, v102);
      v185 = *(v99 + 88);
      v110 = (v185)(v109, v102);
      if (v110 == *v101)
      {
        v111 = sub_236E81D84();
        v112 = sub_236E82114();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_236E28000, v111, v112, "Scheduling essential and prefetch asset packs for a first installation to be downloaded…", v113, 2u);
          MEMORY[0x2383C0E50](v113, -1, -1);
        }

LABEL_47:
        v118 = v186;
      }

      else
      {
        if (v110 != *MEMORY[0x277D25B78])
        {
          v120 = sub_236E82104();
          v121 = v189;
          v108(v189, v197, v102);
          v122 = v102;
          v123 = sub_236E81D84();
          LODWORD(v194) = v120;
          v124 = v120;
          v125 = v123;
          if (os_log_type_enabled(v123, v124))
          {
            v126 = swift_slowAlloc();
            v184 = v126;
            v183 = swift_slowAlloc();
            v204 = v183;
            *v126 = 136446210;
            sub_236E7B4A8(&unk_27DE88520, MEMORY[0x277D25B80]);
            v127 = sub_236E82484();
            v129 = v128;
            v130 = v121;
            v131 = *(v195 + 8);
            v131(v130, v122);
            v132 = sub_236E381CC(v127, v129, &v204);

            v133 = v184;
            *(v184 + 1) = v132;
            _os_log_impl(&dword_236E28000, v125, v194, "The installation event type “%{public}s” is unknown.", v133, 0xCu);
            v134 = v108;
            v135 = v183;
            __swift_destroy_boxed_opaque_existential_0(v183);
            v136 = v135;
            v108 = v134;
            MEMORY[0x2383C0E50](v136, -1, -1);
            MEMORY[0x2383C0E50](v184, -1, -1);

            v114 = (v131)(v191, v196);
          }

          else
          {

            v137 = v121;
            v138 = *(v195 + 8);
            v138(v137, v102);
            v114 = (v138)(v191, v102);
          }

          goto LABEL_47;
        }

        v115 = sub_236E81D84();
        v116 = sub_236E82114();
        v117 = os_log_type_enabled(v115, v116);
        v118 = v186;
        if (v117)
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_236E28000, v115, v116, "Scheduling essential and prefetch asset packs for a subsequent update to be downloaded…", v119, 2u);
          MEMORY[0x2383C0E50](v119, -1, -1);
        }
      }

      MEMORY[0x28223BE20](v114);
      *(&v183 - 8) = v118;
      *(&v183 - 56) = v187;
      v139 = v192;
      *(&v183 - 6) = v188;
      *(&v183 - 5) = v139;
      *(&v183 - 4) = v197;
      *(&v183 - 3) = &v214;
      v181 = v103;
      v140 = sub_236E37CD0(sub_236E7B464, (&v183 - 10));
      v194 = 0;
      sub_236E38EAC(v140);

      v141 = v196;
      v142 = v103;
      v27 = v185;
      v143 = v190;
      v108(v190, v197, v196);
      if ((v27)(v143, v141) == *MEMORY[0x277D25B78])
      {
        v144 = *(v195 + 8);
        v144(v143, v141);
        v27 = v192;
        v145 = v194;
        sub_236E789CC(&v210, v118, v187, v188, v192, v142);
        v194 = v145;
        if (v145)
        {

          v27 = sub_236E820F4();
          v146 = v194;
          v147 = v194;
          v148 = sub_236E81D84();

          if (os_log_type_enabled(v148, v27))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *v149 = 138543362;
            v151 = v194;
            v152 = v194;
            v153 = _swift_stdlib_bridgeErrorToNSError();
            *(v149 + 4) = v153;
            *v150 = v153;
            _os_log_impl(&dword_236E28000, v148, v27, "Update downloads couldn’t be added: %{public}@", v149, 0xCu);
            sub_236E38DBC(v150, &qword_27DE88170, &qword_236E853C0);
            MEMORY[0x2383C0E50](v150, -1, -1);
            MEMORY[0x2383C0E50](v149, -1, -1);
          }

          else
          {
          }

          v194 = 0;
          v141 = v196;
        }

        else
        {
        }

        v144(v197, v141);
      }

      else
      {

        v154 = *(v195 + 8);
        v154(v143, v141);
        v154(v197, v141);
      }

      goto LABEL_57;
    }

    sub_236E38DBC(v100, &unk_27DE87B00, &unk_236E84540);
    sub_236E789CC(&v210, v92, v187, v188, v95, v103);
    v194 = 0;

LABEL_57:
    v193 = v210;
    if ((v210 & 0xC000000000000001) != 0)
    {

      sub_236E821D4();
      sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
      sub_236E3AA4C();
      sub_236E820C4();
      v156 = v204;
      v23 = v205;
      a3 = v206;
      a1 = v207;
      v157 = v208;
    }

    else
    {
      v158 = -1 << *(v210 + 32);
      v23 = v210 + 56;
      a3 = ~v158;
      v159 = -v158;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      else
      {
        v160 = -1;
      }

      v157 = v160 & *(v210 + 56);
      a1 = 0;
    }

    v192 = a3;
    v24 = (a3 + 64) >> 6;
    *&v155 = 136446466;
    v195 = v155;
    v196 = v24;
    while (v156 < 0)
    {
      v165 = sub_236E82204();
      if (!v165 || (v202 = v165, sub_236E588C4(0, &qword_27DE88510, off_278A0CA20), swift_dynamicCast(), v164 = v203, a2 = a1, v163 = v157, !v203))
      {
LABEL_83:
        sub_236E38DBC(v200, &unk_27DE87B00, &unk_236E84540);

        sub_236E38E68();
        return;
      }

LABEL_75:
      v198 = v163;
      v27 = v164;
      v166 = sub_236E81D84();
      a3 = sub_236E82114();

      if (os_log_type_enabled(v166, a3))
      {
        v167 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v203 = v197;
        *v167 = v195;
        v168 = [v27 isEssential];
        v169 = v168 == 0;
        if (v168)
        {
          v170 = 0x6169746E65737365;
        }

        else
        {
          v170 = 0x6863746566657270;
        }

        if (v169)
        {
          v171 = 0xE800000000000000;
        }

        else
        {
          v171 = 0xE90000000000006CLL;
        }

        v172 = sub_236E381CC(v170, v171, &v203);

        *(v167 + 4) = v172;
        *(v167 + 12) = 2082;
        v173 = [v27 identifier];
        v174 = sub_236E81E94();
        v175 = v156;
        v176 = v23;
        v178 = v177;

        v179 = v174;
        v24 = v196;
        v180 = sub_236E381CC(v179, v178, &v203);
        v23 = v176;
        v156 = v175;

        *(v167 + 14) = v180;
        _os_log_impl(&dword_236E28000, v166, a3, "Scheduling the %{public}s asset pack with the ID “%{public}s” to be downloaded…", v167, 0x16u);
        a3 = v197;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](a3, -1, -1);
        MEMORY[0x2383C0E50](v167, -1, -1);
      }

      else
      {
      }

      a1 = a2;
      v157 = v198;
    }

    v161 = a1;
    v162 = v157;
    a2 = a1;
    if (v157)
    {
LABEL_71:
      v163 = (v162 - 1) & v162;
      v164 = *(*(v156 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v162)))));
      if (!v164)
      {
        goto LABEL_83;
      }

      goto LABEL_75;
    }

    while (1)
    {
      a2 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        break;
      }

      if (a2 >= v24)
      {
        goto LABEL_83;
      }

      v162 = *(v23 + 8 * a2);
      ++v161;
      if (v162)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_85:
    swift_once();
  }

  v85 = sub_236E82104();
  v86 = v30;
  v87 = sub_236E81D84();

  if (os_log_type_enabled(v87, v85))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138543362;
    *(v88 + 4) = v86;
    *v89 = v86;
    v90 = v86;
    _os_log_impl(&dword_236E28000, v87, v85, "The extension info “%{public}@” isn’t managed-downloader-extension info.", v88, 0xCu);
    sub_236E38DBC(v89, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v89, -1, -1);
    MEMORY[0x2383C0E50](v88, -1, -1);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
  {
    sub_236E38944(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_236E7804C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v80 = a1;
  v73 = a8;
  v83 = a7;
  v75 = a6;
  v89 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for AssetPack(0);
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v78 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = v69 - v18;
  MEMORY[0x28223BE20](v17);
  v82 = v69 - v19;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_236E84530;
  v24 = v23 + v22;
  v25 = sub_236E81AB4();
  v26 = *(v25 - 8);
  v74 = *(v26 + 16);
  v76 = v26 + 16;
  v74(v24, a6, v25);
  v27 = *MEMORY[0x277D25B98];
  v28 = sub_236E81AC4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v30(v24, v27, v28);
  v31 = *(v29 + 56);
  v31(v24, 0, 1, v28);
  v74(v24 + v21, v75, v25);
  v30(v24 + v21, *MEMORY[0x277D25B90], v28);
  v31(v24 + v21, 0, 1, v28);
  v32 = v83;
  v33 = sub_236E6FE9C(v23);

  v34 = v80;

  v35 = v81;
  v36 = sub_236E7B708(v33, v34);
  v37 = v35;

  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v39 = *(v36 + 32);
  LODWORD(v35) = v39 & 0x3F;
  v40 = ((1 << v39) + 63) >> 6;
  v41 = (8 * v40);
  v42 = swift_unknownObjectRetain_n();
  if (v35 > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v70 = v40;
    v71 = v38;
    v72 = v37;
    v69[1] = v69;
    MEMORY[0x28223BE20](v42);
    v74 = (v69 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v74, v41);
    v75 = 0;
    v40 = 0;
    v80 = v36;
    v44 = *(v36 + 56);
    v36 += 56;
    v43 = v44;
    v45 = 1 << *(v36 - 24);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v43;
    v38 = (v45 + 63) >> 6;
    while (v47)
    {
      v48 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
LABEL_12:
      v51 = v48 | (v40 << 6);
      v52 = *(v80 + 48);
      v53 = *(v79 + 72);
      v76 = v51;
      sub_236E393B0(v52 + v53 * v51, v82);
      if (v83 && ([v83 respondsToSelector_] & 1) != 0)
      {
        v54 = v77;
        sub_236E393B0(v82, v77);
        v55 = objc_allocWithZone(BAAssetPack);
        v81 = v47;
        v56 = v55;
        v57 = v78;
        sub_236E393B0(v54, v78);
        v58 = _s16AssetPackWrapperCMa(0);
        v41 = objc_allocWithZone(v58);
        sub_236E393B0(v57, v41 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
        v84.receiver = v41;
        v84.super_class = v58;
        v59 = objc_msgSendSuper2(&v84, sel_init);
        sub_236E39414(v57);
        v60 = [v56 init_];

        sub_236E39414(v54);
        v37 = [v83 shouldDownloadAssetPack_];

        v47 = v81;
        sub_236E39414(v82);
        if (v37)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_236E39414(v82);
LABEL_17:
        *(v74 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
        if (__OFADD__(v75++, 1))
        {
          __break(1u);
LABEL_20:
          swift_unknownObjectRelease();
          v62 = sub_236E7AF64(v74, v70, v75, v80);

          v63 = v73;
          goto LABEL_21;
        }
      }
    }

    v49 = v40;
    while (1)
    {
      v40 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        goto LABEL_20;
      }

      v50 = *(v36 + 8 * v40);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        v47 = (v50 - 1) & v50;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  swift_unknownObjectRelease();
  v67 = swift_slowAlloc();
  v68 = sub_236E7AED4(v67, v40, v36, sub_236E7BA68);
  if (v37)
  {

    result = MEMORY[0x2383C0E50](v67, -1, -1);
    __break(1u);
  }

  else
  {
    v62 = v68;

    MEMORY[0x2383C0E50](v67, -1, -1);

    v63 = v73;
LABEL_21:
    v64 = sub_236E7871C(v62, v63);

    v65 = *MEMORY[0x277D85DE8];
    return v64;
  }

  return result;
}

uint64_t sub_236E7871C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for AssetPack(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v23[1] = v2;
    v30 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v9 = -1 << *(a1 + 32);
    v28 = a1 + 56;
    result = sub_236E821A4();
    v10 = result;
    v11 = 0;
    v29 = *(a1 + 36);
    v24 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v28 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v14 = v25;
      sub_236E393B0(*(a1 + 48) + *(v26 + 72) * v10, v25);
      AssetPack.download(for:)(v27, 0);
      sub_236E39414(v14);
      sub_236E822B4();
      v15 = *(v30 + 16);
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v16 = *(v28 + 8 * v13);
      if ((v16 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v12 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v13 << 6;
        v19 = v13 + 1;
        v20 = (v24 + 8 * v13);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_236E7649C(v10, v29, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v10, v29, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v7)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_21:
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

void sub_236E789CC(uint64_t *a1, NSObject *a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v7 = v6;
  v10 = *a1;
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  __swift_project_value_buffer(v11, qword_27DE87A98);
  v12 = sub_236E820E4();

  v13 = sub_236E81D84();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136446722;
    sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    sub_236E3AA4C();
    v16 = sub_236E820A4();
    v18 = sub_236E381CC(v16, v17, &v40);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;

    sub_236E82264();

    v37 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E7B4A8(&qword_27DE88020, type metadata accessor for AssetPack);
    v19 = sub_236E820A4();
    MEMORY[0x2383BFD30](v19);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v20 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v40);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    v36 = a6;
    type metadata accessor for BAContentRequest(0);
    v21 = sub_236E81ED4();
    v23 = sub_236E381CC(v21, v22, &v40);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_236E28000, v13, v12, "Add update downloads to: %{public}s for: %{public}s content request: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    v24 = v15;
    v7 = v6;
    MEMORY[0x2383C0E50](v24, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  v25 = sub_236E81D84();
  v26 = sub_236E82114();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_236E28000, v25, v26, "Checking for asset-pack updates…", v27, 2u);
    MEMORY[0x2383C0E50](v27, -1, -1);
  }

  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v36 = a2;
  LOBYTE(v37) = a3 & 1;
  v38 = a4;
  v39 = a5;
  v28 = sub_236E4741C(&v36, a6);
  if (!v7)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = v28;
      if (!sub_236E821E4())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v29 = v28;
      if (!*(v28 + 16))
      {
LABEL_14:
        v30 = sub_236E81D84();
        v31 = sub_236E82114();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_236E28000, v30, v31, "All asset packs are up to date.", v32, 2u);
          MEMORY[0x2383C0E50](v32, -1, -1);
        }
      }
    }

    sub_236E369F8(v29);
  }
}

uint64_t sub_236E78E6C(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E78F38, 0, 0);
}

uint64_t sub_236E78F38()
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87A98);
  v4 = sub_236E820E4();
  v5 = v1;
  v6 = v2;
  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v4))
  {
    v9 = v0[20];
    v8 = v0[21];
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
    _os_log_impl(&dword_236E28000, v7, v4, "Background download: %{public}@ did receive: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[22];
  v20 = v0[20];
  v21 = v0[21];
  v17 = qword_27DE8B0F0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236E79264;
  swift_continuation_init();
  v0[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87B40, &qword_236E84560);
  sub_236E81FD4();
  (*(v14 + 32))(boxed_opaque_existential_0, v15, v16);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236E37620;
  v0[13] = &block_descriptor_1;
  [v17 download:v20 didReceiveChallenge:v21 completionHandler:v0 + 10];
  (*(v14 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236E79264()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236E79344, 0, 0);
}

uint64_t sub_236E79344()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4(v3, v2);
}

void sub_236E793B0(void *a1, void *a2)
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE87A98);
  v5 = sub_236E820E4();
  v6 = a1;
  v7 = a2;
  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2114;
    v11 = v6;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_236E28000, v8, v5, "Background download: %{public}@ failed with error: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v14 = qword_27DE8B0F0;
  v15 = sub_236E81984();
  [v14 download:v6 failedWithError:v15];
}

void sub_236E795A8(void *a1, uint64_t a2)
{
  v4 = sub_236E819F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v9 = sub_236E81DA4();
  __swift_project_value_buffer(v9, qword_27DE87A98);
  v10 = sub_236E820E4();
  (*(v5 + 16))(v8, a2, v4);
  v11 = a1;
  v12 = sub_236E81D84();

  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    sub_236E7B4A8(&unk_27DE87B30, MEMORY[0x277CC9260]);
    v25 = v10;
    v17 = v11;
    v18 = sub_236E82484();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_236E381CC(v18, v20, &v27);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_236E28000, v12, v25, "Background download: %{public}@ finished with file URL: %{public}s", v14, 0x16u);
    sub_236E38DBC(v15, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2383C0E50](v16, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v22 = qword_27DE8B0F0;
  v23 = sub_236E819B4();
  [v22 download:v11 finishedWithFileURL:v23];
}

uint64_t sub_236E79C40(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_236E79D1C;

  return sub_236E78E6C(v6, v7);
}

uint64_t sub_236E79D1C(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  if (v7)
  {
    v11 = *(v5 + 32);
    (v11)[2](v11, a1, a2);
    _Block_release(v11);
  }

  v12 = *(v10 + 8);

  return v12();
}

void __swiftcall BAManagedDownloaderExtensionWrapper.init()(BAManagedDownloaderExtensionWrapper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_236E7A0A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if (!a2 || ([a2 respondsToSelector_] & 1) == 0)
  {
    return 1;
  }

  sub_236E393B0(a1, v10);
  v11 = objc_allocWithZone(BAAssetPack);
  sub_236E393B0(v10, v8);
  v12 = _s16AssetPackWrapperCMa(0);
  v13 = objc_allocWithZone(v12);
  sub_236E393B0(v8, v13 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
  v18.receiver = v13;
  v18.super_class = v12;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  sub_236E39414(v8);
  v15 = [v11 init_];

  sub_236E39414(v10);
  v16 = [a2 shouldDownloadAssetPack_];

  return v16;
}

uint64_t sub_236E7A224(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_236E59578;

  return v7();
}

uint64_t sub_236E7A30C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_236E3A910;

  return v8();
}

uint64_t sub_236E7A3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_236E593A8(a3, v25 - v11, &unk_27DE87DB0, &qword_236E84C50);
  v13 = sub_236E82034();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_236E38DBC(v12, &unk_27DE87DB0, &qword_236E84C50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_236E82024();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_236E81FC4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_236E81EE4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);

    return v23;
  }

LABEL_8:
  sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_236E7A6F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_236E59578;

  return sub_236E79C40(v2, v3, v5);
}

uint64_t sub_236E7A7B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236E59578;

  return sub_236E63920(a1, v5);
}

uint64_t sub_236E7A868(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236E3A910;

  return sub_236E63920(a1, v5);
}

uint64_t sub_236E7A938(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AssetPack(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v10;
    v30 = &v28;
    MEMORY[0x28223BE20](v7);
    v29 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v11);
    v31 = 0;
    v10 = 0;
    v34 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_236E393B0(*(v34 + 48) + *(v32 + 72) * v21, v9);
      v22 = v33(v9);
      sub_236E39414(v9);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v22)
      {
        *&v29[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_236E7AF64(v29, v28, v31, v34);
          goto LABEL_18;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_236E7AED4(v26, v10, a3, v33);

  result = MEMORY[0x2383C0E50](v26, -1, -1);
  if (!v3)
  {
    result = v27;
  }

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236E7AC48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for AssetPack(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_236E393B0(*(v32 + 48) + *(v30 + 72) * v22, v10);
    v23 = v31(v10);
    result = sub_236E39414(v10);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_236E7AF64(v28, v27, v29, v25);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_236E7AE38(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_236E7B4F0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_236E7AED4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_236E7AC48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_236E7AF64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AssetPack(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88028, &qword_236E85130);
  result = sub_236E82244();
  v13 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 56;
  *&v15 = 136446210;
  v42 = v15;
  v43 = v9;
  v44 = a4;
  v45 = v12;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
LABEL_16:
    v22 = *(a4 + 48);
    v47 = *(v9 + 72);
    sub_236E393B0(v22 + v47 * (v19 | (v17 << 6)), v12);
    v23 = *(v13 + 40);
    sub_236E82574();
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v24 = sub_236E81DA4();
    __swift_project_value_buffer(v24, qword_27DE88220);
    v25 = sub_236E820E4();
    v26 = sub_236E81D84();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = v42;
      *(v27 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v48);
      _os_log_impl(&dword_236E28000, v26, v25, "Hash into: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v29 = v28;
      a4 = v44;
      MEMORY[0x2383C0E50](v29, -1, -1);
      v30 = v27;
      v9 = v43;
      MEMORY[0x2383C0E50](v30, -1, -1);
    }

    v12 = v45;
    v31 = *v45;
    v32 = *(v45 + 1);
    sub_236E81F04();
    result = sub_236E82594();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v18 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_35;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v18 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    result = sub_236E63BD0(v12, *(v13 + 48) + v36 * v47);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_36;
    }

    v16 = v46;
    if (!a3)
    {
LABEL_32:

      return v13;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      goto LABEL_32;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v46 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_236E7B334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_236E82574();
  sub_236E81F04();
  v6 = sub_236E82594();

  return sub_236E7B3AC(a1, a2, v6);
}

unint64_t sub_236E7B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_236E824E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_236E7B464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_236E7804C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), **(v2 + 56), *(v2 + 64));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_236E7B4A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236E7B4F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a1;
  v6 = type metadata accessor for AssetPack(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    sub_236E393B0(*(a3 + 48) + *(v34 + 72) * v20, v10);
    if (*(a4 + 16) && (v21 = sub_236E7B334(*v10, v10[1]), (v22 & 1) != 0))
    {
      v23 = v10[3];
      if (v23 <= 0)
      {
        result = sub_236E39414(v10);
      }

      else
      {
        v24 = *(a4 + 56);
        v33 = v15;
        v25 = a3;
        v26 = *(v24 + 8 * v21);
        result = sub_236E39414(v10);
        v27 = v26 >= v23;
        a3 = v25;
        v15 = v33;
        if (!v27)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      result = sub_236E39414(v10);
LABEL_18:
      *(v31 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_21:

        return sub_236E7AF64(v31, v30, v32, a3);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_21;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236E7B708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for AssetPack(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = (8 * v11);

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v35 = v11;
    v36 = v3;
    v34 = &v34;
    MEMORY[0x28223BE20](v13);
    v37 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v12);
    v38 = 0;
    v14 = 0;
    v11 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v3 = a1;
    v12 = v39;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
LABEL_13:
      v22 = v19 | (v14 << 6);
      sub_236E393B0(*(v3 + 48) + *(v7 + 72) * v22, v12);
      if (*(a2 + 16) && (v23 = sub_236E7B334(*v12, v12[1]), (v24 & 1) != 0))
      {
        a1 = v12[3];
        if (a1 <= 0)
        {
          sub_236E39414(v12);
          v17 = v40;
        }

        else
        {
          v25 = v7;
          v26 = v3;
          v27 = *(*(a2 + 56) + 8 * v23);
          sub_236E39414(v39);
          v28 = v27 >= a1;
          v3 = v26;
          v7 = v25;
          v12 = v39;
          v17 = v40;
          if (!v28)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_236E39414(v12);
        v17 = v40;
LABEL_19:
        *&v37[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_22:
          v30 = sub_236E7AF64(v37, v35, v38, v3);

          goto LABEL_23;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_22;
      }

      v21 = *(v11 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();

  v30 = sub_236E7AE38(v33, v11, a1, a2);

  MEMORY[0x2383C0E50](v33, -1, -1);

LABEL_23:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void NSErrorWithBAErrorDomainCodeUserInfo_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}