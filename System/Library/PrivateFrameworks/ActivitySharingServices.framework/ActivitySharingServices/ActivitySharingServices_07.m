uint64_t sub_221F36CAC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = *(v0 + 40);
    v4[2](v4, 1, 0);
    _Block_release(v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F36D4C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = sub_221FB5A98();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F36FB8(int a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a2;

  return MEMORY[0x2822009F8](sub_221F37054, 0, 0);
}

uint64_t sub_221F37054()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD000000000000038, 0x8000000221FC32A0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher), *(v1 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_221F37184;
  v5 = v0[2];
  v4 = v0[3];

  return sub_221F54990(v5, v4);
}

uint64_t sub_221F37184()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_221F37338;
  }

  else
  {
    v3 = sub_221F37298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F37298()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = *(v0 + 40);
    v4[2](v4, 1, 0);
    _Block_release(v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F37338()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = sub_221FB5A98();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F373FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221F36FB8(v2, v3, v4, v5, v6);
}

uint64_t sub_221F374C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221F369CC(v2, v3, v4, v5, v6);
}

uint64_t sub_221F3758C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E9544C;

  return sub_221F36520(v2, v3, v4, v5, v6);
}

uint64_t sub_221F37654(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_221F37678, 0, 0);
}

uint64_t sub_221F37678()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[9] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000090, 0x8000000221FC3200, 0xD00000000000003ALL, 0x8000000221FC3330);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running repair zone task for periodic update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService;
  v0[10] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService;
  __swift_project_boxed_opaque_existential_0Tm((v5 + v6), *(v5 + v6 + 24));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_221F37824;
  v8 = v0[7];

  return sub_221F08A7C(v8);
}

uint64_t sub_221F37824()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_221F37A54;
  }

  else
  {
    v3 = sub_221F37938;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F37938()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running repair contacts task for periodic update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v6 + v5), *(v6 + v5 + 24));
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_221F37C60;

  return sub_221F0BA88();
}

uint64_t sub_221F37A54()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to delete zones for repair: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Running repair contacts task for periodic update.", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v16 = v0[10];
  v17 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v17 + v16), *(v17 + v16 + 24));
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_221F37C60;

  return sub_221F0BA88();
}

uint64_t sub_221F37C60()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_221F37EA0;
  }

  else
  {
    v3 = sub_221F37D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F37D74()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running consolidation task.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  v0[15] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  __swift_project_boxed_opaque_existential_0Tm((v5 + v6), *(v5 + v6 + 24));
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_221F380BC;
  v9 = v0[6];
  v8 = v0[7];

  return sub_221EDD788(v9, v8);
}

uint64_t sub_221F37EA0()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to repair contacts %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Running consolidation task.", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v16 = v0[8];

  v17 = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  v0[15] = OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService;
  __swift_project_boxed_opaque_existential_0Tm((v16 + v17), *(v16 + v17 + 24));
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_221F380BC;
  v20 = v0[6];
  v19 = v0[7];

  return sub_221EDD788(v20, v19);
}

uint64_t sub_221F380BC()
{
  v2 = *(*v1 + 128);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F381F0, 0, 0);
  }
}

uint64_t sub_221F381F0()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running relationship supported feature update.", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v6 + v5), *(v6 + v5 + 24));
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_221F38314;
  v9 = v0[6];
  v8 = v0[7];

  return sub_221EDE92C(v9, v8);
}

uint64_t sub_221F38314()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_221F38550;
  }

  else
  {
    v3 = sub_221F38428;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F38428()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running upgrade task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService + 24));
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_221F38768;
  v7 = v0[7];

  return sub_221F43688(v7);
}

uint64_t sub_221F38550()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to update supported features on relationships: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Running upgrade task for periodic update manager", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v16 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService), *(v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService + 24));
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_221F38768;
  v18 = v0[7];

  return sub_221F43688(v18);
}

uint64_t sub_221F38768()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_221F389A4;
  }

  else
  {
    v3 = sub_221F3887C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F3887C()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running migration task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService + 24));
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_221F38BBC;
  v7 = v0[7];

  return sub_221EFB0E8(v7);
}

uint64_t sub_221F389A4()
{
  v1 = v0[20];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Upgrade task failed with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Running migration task for periodic update manager", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v16 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService), *(v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService + 24));
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_221F38BBC;
  v18 = v0[7];

  return sub_221EFB0E8(v18);
}

uint64_t sub_221F38BBC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_221F38DF8;
  }

  else
  {
    v3 = sub_221F38CD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F38CD0()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Running downgrade task for periodic update manager", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService + 24));
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_221F39010;
  v7 = v0[7];

  return sub_221EB6204(v7);
}

uint64_t sub_221F38DF8()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Migration task failed with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Running downgrade task for periodic update manager", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  v16 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService), *(v16 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService + 24));
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_221F39010;
  v18 = v0[7];

  return sub_221EB6204(v18);
}

uint64_t sub_221F39010()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F3910C, 0, 0);
}

uint64_t sub_221F3910C()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Donating IDS addresses if needed", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_221F39234;

  return sub_221F5CC8C(v8, v7);
}

uint64_t sub_221F39234()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F39330, 0, 0);
}

uint64_t sub_221F39330()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Processing any retry messages", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener + 24));
  v0[25] = v6;
  v7 = __swift_project_boxed_opaque_existential_0Tm(v6 + 5, v6[8]);
  v8 = *v7;
  v0[26] = *v7;

  return MEMORY[0x2822009F8](sub_221F39434, v8, 0);
}

uint64_t sub_221F39434()
{
  v1 = *(v0 + 208);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_221F394BC, 0, 0);
}

uint64_t sub_221F394BC()
{
  v1 = v0[25];
  v0[5] = v0[27];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC480, &unk_221FB90D8);
  v6 = sub_221F39B48();
  *v4 = v0;
  v4[1] = sub_221F395B8;

  return MEMORY[0x28213AEC8](&unk_221FBC7D0, v2, v5, v6);
}

void sub_221F395B8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 216);
    v6 = *(v2 + 224);

    MEMORY[0x2822009F8](sub_221F396FC, 0, 0);
  }
}

uint64_t sub_221F396FC()
{
  v1 = v0[9];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Reporting manatee status", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[8];

  __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService), *(v5 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService + 24));
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_221F3981C;

  return sub_221EC6F14();
}

uint64_t sub_221F3981C()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  *(v3 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F39954, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4(1);
  }
}

uint64_t sub_221F39954()
{
  v1 = v0[31];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to report manatee status with error: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_221F39AAC(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221EC3284(a1, v4);
}

unint64_t sub_221F39B48()
{
  result = qword_281306F60;
  if (!qword_281306F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC480, &unk_221FB90D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F60);
  }

  return result;
}

uint64_t sub_221F39BDC()
{
  v1 = *(v0 + 376);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  sub_221F3B3C0(v1, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  v6 = swift_allocObject();
  *(v0 + 384) = v6;
  *(v6 + 16) = sub_221F3B3F8;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277CE93C8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 392) = v8;
  *v8 = v0;
  v8[1] = sub_221F39D20;

  return MEMORY[0x28213ACC8](1001, &unk_221FBC838, v6, v3, v2);
}

uint64_t sub_221F39D20()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F39E38, 0, 0);
}

uint64_t sub_221F39E38()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 56);
  v4 = swift_allocObject();
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 88);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3B514;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  *(v7 + 16) = &unk_221FBC848;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93B8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  *v9 = v0;
  v9[1] = sub_221F39FBC;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277CE94C0];

  return MEMORY[0x28213ACB8](1004, &unk_221FBC858, v7, v2, v10, v3, v11);
}

uint64_t sub_221F39FBC()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3A0D4, 0, 0);
}

uint64_t sub_221F3A0D4()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 96);
  v4 = swift_allocObject();
  v5 = *(v0 + 112);
  *(v4 + 16) = *(v0 + 96);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 128);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3B8FC;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 416) = v7;
  *(v7 + 16) = &unk_221FBC868;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93B0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  *v9 = v0;
  v9[1] = sub_221F3A254;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277CE94C0];

  return MEMORY[0x28213ACB0](1005, &unk_221FBC878, v7, v2, v10, v3, v11);
}

uint64_t sub_221F3A254()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3A36C, 0, 0);
}

uint64_t sub_221F3A36C()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 136);
  v4 = swift_allocObject();
  v5 = *(v0 + 152);
  *(v4 + 16) = *(v0 + 136);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 168);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3BDC0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 432) = v7;
  *(v7 + 16) = &unk_221FBC888;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 440) = v9;
  *v9 = v0;
  v9[1] = sub_221F3A4F0;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACA8](1002, &unk_221FBC898, v7, v2, v10, v3, v11);
}

uint64_t sub_221F3A4F0()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3A608, 0, 0);
}

uint64_t sub_221F3A608()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 176);
  v4 = swift_allocObject();
  v5 = *(v0 + 192);
  *(v4 + 16) = *(v0 + 176);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 208);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C1A8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 448) = v7;
  *(v7 + 16) = &unk_221FBC8A8;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 456) = v9;
  *v9 = v0;
  v9[1] = sub_221F3A788;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277CE94A8];

  return MEMORY[0x28213ACA8](1003, &unk_221FBC8B0, v7, v2, v10, v3, v11);
}

uint64_t sub_221F3A788()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3A8A0, 0, 0);
}

uint64_t sub_221F3A8A0()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 216);
  v4 = swift_allocObject();
  v5 = *(v0 + 232);
  *(v4 + 16) = *(v0 + 216);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 248);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C2E0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 464) = v7;
  *(v7 + 16) = &unk_221FBC8C0;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  *v9 = v0;
  v9[1] = sub_221F3AA30;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83B88];

  return MEMORY[0x28213ACA0](1006, &unk_221FBC8D0, v7, v2, v10, v11, v3);
}

uint64_t sub_221F3AA30()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3AB48, 0, 0);
}

uint64_t sub_221F3AB48()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 256);
  v4 = swift_allocObject();
  v5 = *(v0 + 272);
  *(v4 + 16) = *(v0 + 256);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 288);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3C6F4;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 480) = v7;
  *(v7 + 16) = &unk_221FBC8E0;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE9398] + 4);
  v9 = swift_task_alloc();
  *(v0 + 488) = v9;
  *v9 = v0;
  v9[1] = sub_221F3ACD4;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83B88];

  return MEMORY[0x28213AC98](1007, &unk_221FBC8F0, v7, v2, v10, v11, v3);
}

uint64_t sub_221F3ACD4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3ADEC, 0, 0);
}

uint64_t sub_221F3ADEC()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 296);
  v4 = swift_allocObject();
  v5 = *(v0 + 312);
  *(v4 + 16) = *(v0 + 296);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 328);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3CA10;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 496) = v7;
  *(v7 + 16) = &unk_221FBC900;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 504) = v9;
  *v9 = v0;
  v9[1] = sub_221F3AF7C;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83B88];

  return MEMORY[0x28213ACA0](1008, &unk_221FBC908, v7, v2, v10, v11, v3);
}

uint64_t sub_221F3AF7C()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3B094, 0, 0);
}

uint64_t sub_221F3B094()
{
  v1 = *(v0 + 376);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  sub_221F3B3C0(v1, v0 + 336);
  v4 = swift_allocObject();
  v5 = *(v0 + 352);
  *(v4 + 16) = *(v0 + 336);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 368);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_221F3CB44;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 512) = v7;
  *(v7 + 16) = &unk_221FBC918;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE9398] + 4);
  v9 = swift_task_alloc();
  *(v0 + 520) = v9;
  *v9 = v0;
  v9[1] = sub_221F3B220;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83B88];

  return MEMORY[0x28213AC98](1009, &unk_221FBC920, v7, v2, v10, v11, v3);
}

uint64_t sub_221F3B220()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_221F3B330()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v0 = sub_221FB61D8();
  __swift_project_value_buffer(v0, qword_281307DC0);
  sub_221E9DCE8(0xD00000000000006ALL, 0x8000000221FC33B0, 0x2928676E6970, 0xE600000000000000);
}

uint64_t sub_221F3B400(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221F3B468()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221E9544C;

  return sub_221F3B400(v2);
}

void sub_221F3B538(uint64_t a1)
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  oslog = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_221E93000, oslog, v3, "Submitted %ld", v4, 0xCu);
    MEMORY[0x223DADA80](v4, -1, -1);
  }
}

uint64_t sub_221F3B638(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_221F3B6A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F3B638(a1, v5);
}

uint64_t sub_221F3B754(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(v3);
}

uint64_t sub_221F3B848(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F3B754(a1, v5);
}

void sub_221F3B924(uint64_t a1, char a2)
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DC0);
  oslog = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a2)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      sub_221FB6A08();
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    v9 = sub_221EF4114(v8, v7, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_221E93000, oslog, v4, "Submitted optional %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_221F3BADC(uint64_t a1, char a2, void (*a3)(uint64_t, void))
{
  a3(a1, a2 & 1);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_221F3BB48(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E963B4;

  return sub_221F3BADC(a1, a2 & 1, v7);
}

uint64_t sub_221F3BC0C(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E9544C;

  return v8(v3, v4);
}

uint64_t sub_221F3BD0C(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F3BC0C(a1, v5);
}

uint64_t sub_221F3BDD4(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_221F3BE3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221EBD108;

  return sub_221F3BDD4(v2);
}

uint64_t sub_221F3BEE8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_221F3BFD4;

  return v6();
}

uint64_t sub_221F3BFD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_221F3C0F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F3BEE8(a1, v5);
}

uint64_t sub_221F3C1CC(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_221F3C234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221F3CC94;

  return sub_221F3C1CC(v2);
}

uint64_t sub_221F3C2E0(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3C2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);

  return v4(v3, 0);
}

uint64_t sub_221F3C35C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221EBD108;

  return sub_221F3C2F0(a1, v5);
}

uint64_t sub_221F3C410(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221F3C508;

  return v8(v4);
}

uint64_t sub_221F3C508(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    *(v9 + 8) = a2 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_221F3C62C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E963B4;

  return sub_221F3C410(a1, a2, v7);
}

uint64_t sub_221F3C6F4(uint64_t a1, char a2)
{
  if (a2)
  {
    return -1;
  }

  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3C710(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a3(a1, a2 & 1);
  v5 = *(v3 + 8);

  return v5(v4, 0);
}

uint64_t sub_221F3C780(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221F3CC94;

  return sub_221F3C710(a1, a2 & 1, v7);
}

uint64_t sub_221F3C844(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_221F3CC90;

  return v9(v4, v5);
}

uint64_t sub_221F3C948(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E963B4;

  return sub_221F3C844(a1, a2, v7);
}

uint64_t sub_221F3CA10(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3CA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);
  v6 = v5 & 1;

  return v4(v3, v6);
}

uint64_t sub_221F3CA90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221F3CC94;

  return sub_221F3CA24(a1, v5);
}

uint64_t sub_221F3CB44(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && __OFSUB__(result--, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F3CB5C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a3(a1, a2 & 1);
  v5 = *(v3 + 8);
  v7 = v6 & 1;

  return v5(v4, v7);
}

uint64_t sub_221F3CBCC(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221F3CC94;

  return sub_221F3CB5C(a1, a2 & 1, v7);
}

uint64_t sub_221F3CCE8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_221F3CD44()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  v3 = [v2 emptyCopy];

  v4 = *(v0 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_221F3CE14((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  [v3 persistToUserDefaults];
}

uint64_t sub_221F3CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221F3CF70(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_221FB5C38();
  v2[41] = v3;
  v4 = *(v3 - 8);
  v2[42] = v4;
  v5 = *(v4 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F3D03C, 0, 0);
}

uint64_t sub_221F3D03C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[39];
  v1 = v0[40];
  v3 = sub_221FB61D8();
  v0[45] = __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000099, 0x8000000221FC3490, 0xD00000000000001ALL, 0x8000000221FC3530);
  v4 = sub_221FB5BF8();
  v0[46] = v1[6];
  v5 = sub_221FB6788();
  v6 = ASInsertPlaceholderRelationshipEventForFriend();

  sub_221FB67C8();
  swift_unknownObjectRelease();
  v7 = __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v8 = v1[5];
  v0[47] = v8;
  v9 = *v7;
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_221F3D268;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221FA909C;
  v0[21] = &block_descriptor_21;
  v0[22] = v10;
  [v9 fetchAllChangesWithPriority:2 activity:0 group:v8 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F3D268()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_221F3D8E8;
  }

  else
  {
    v3 = sub_221F3D378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F3D378()
{
  v51 = v0;
  v1 = v0[46];
  v2 = v0[39];
  v3 = sub_221FB5BF8();
  v4 = [v1 contactWithUUID_];
  v0[49] = v4;

  if (v4)
  {
    v5 = [v4 relationshipStorage];
    v6 = [v5 secureCloudRelationship];
    v0[50] = v6;

    v7 = v6;
    v8 = [v4 relationshipStorage];
    v9 = [v8 legacyRelationship];
    v0[51] = v9;

    LODWORD(v8) = [v7 isAwaitingInviteResponse];
    if (v8)
    {
      v10 = v0[40];
      [v4 setPendingRelationshipShareItem_];
      [v4 setPendingLegacyShareLocations_];
      [v7 insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v10 + 56), *(v10 + 80));
      v11 = v4;
      v12 = swift_task_alloc();
      v0[52] = v12;
      *v12 = v0;
      v12[1] = sub_221F3D9B4;
      v13 = v0[47];

      return sub_221EBAEA8(v7, v4, v13, 0);
    }

    v28 = v0[45];
    (*(v0[42] + 16))(v0[44], v0[39], v0[41]);
    v29 = sub_221FB61B8();
    v30 = sub_221FB65A8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[44];
    v34 = v0[41];
    v33 = v0[42];
    if (v31)
    {
      v48 = v30;
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v35 = 136315138;
      sub_221EA8278();
      v49 = v9;
      v36 = sub_221FB6B08();
      v38 = v37;
      (*(v33 + 8))(v32, v34);
      v39 = v36;
      v9 = v49;
      v40 = sub_221EF4114(v39, v38, v50);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_221E93000, v29, v48, "Removing friend for inactive friendship: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DADA80](v47, -1, -1);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    sub_221EA4994();
    swift_allocError();
    *v42 = 37;
    swift_willThrow();
  }

  else
  {
    v15 = v0[45];
    (*(v0[42] + 16))(v0[43], v0[39], v0[41]);
    v16 = sub_221FB61B8();
    v17 = sub_221FB65A8();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[42];
    v19 = v0[43];
    v21 = v0[41];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50[0] = v23;
      *v22 = 136315138;
      sub_221EA8278();
      v24 = sub_221FB6B08();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = sub_221EF4114(v24, v26, v50);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_221E93000, v16, v17, "Unable to remove friend, no contact for identifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DADA80](v23, -1, -1);
      MEMORY[0x223DADA80](v22, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    sub_221EA4994();
    swift_allocError();
    *v41 = 21;
    swift_willThrow();
  }

  v43 = v0[46];
  v45 = v0[43];
  v44 = v0[44];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 34, v0[37]);
  [v43 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  v46 = v0[1];

  return v46();
}

uint64_t sub_221F3D8E8()
{
  v1 = v0[48];
  swift_willThrow();
  v2 = v0[48];
  v3 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 34, v0[37]);
  [v3 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F3D9B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {

    v5 = sub_221F3DEC8;
  }

  else
  {
    v5 = sub_221F3DAD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F3DAD0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 360);

  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 424);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Ignored invitation request on secure cloud relationship: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {

    v4 = *(v0 + 424);
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 320);

  [v9 insertEventWithType_];
  v11 = __swift_project_boxed_opaque_existential_0Tm((v10 + 56), *(v10 + 80));
  if ([v9 cloudType])
  {
    v12 = *(v0 + 360);
    v13 = *(v0 + 408);
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 408);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&dword_221E93000, v14, v15, "Attempting to save secure cloud relationship to legacy container %@", v17, 0xCu);
      sub_221EA0558(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v20 = 11;
    swift_willThrow();
    v21 = *(v0 + 424);
    v22 = *(v0 + 392);

    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    [v23 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 408);
    v29 = *(v0 + 392);
    v30 = *(v0 + 376);
    v31 = *__swift_project_boxed_opaque_existential_0Tm(v11 + 6, v11[9]);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 304;
    *(v0 + 88) = sub_221F3DFA0;
    v32 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_221EF4C50;
    *(v0 + 232) = &block_descriptor_5_1;
    *(v0 + 240) = v32;
    [v31 saveRelationship:v28 contact:v29 cloudKitGroup:v30 activity:0 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_221F3DEC8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v4 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F3DFA0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_221F3E268;
  }

  else
  {
    v3 = sub_221F3E0B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F3E0B0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 304);

  v4 = v3;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v4;
    *v9 = v4;
    _os_log_impl(&dword_221E93000, v5, v6, "Ignored invitation request on legacy relationship: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);

    v10 = *(v0 + 424);
  }

  else
  {
    v11 = *(v0 + 392);

    v10 = v4;
  }

  v12 = *(v0 + 368);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);

  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v12 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F3E268()
{
  v1 = *(v0 + 440);
  swift_willThrow();
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);

  v5 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
  [v5 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t getEnumTagSinglePayload for InvitationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InvitationError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221F3E4CC()
{
  result = qword_27CFEC488;
  if (!qword_27CFEC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC488);
  }

  return result;
}

uint64_t sub_221F3E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 7040) = a5;
  *(v5 + 7032) = a4;
  return MEMORY[0x2822009F8](sub_221F3E544, 0, 0);
}

uint64_t sub_221F3E544()
{
  v1 = *(*(v0 + 7032) + OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway);
  *(v0 + 7048) = v1;
  return MEMORY[0x2822009F8](sub_221F3E570, v1, 0);
}

uint64_t sub_221F3E570()
{
  sub_221FB35B8(*(v0 + 7040), (v0 + 6784));
  *(v0 + 7056) = 0;
  v1 = *(v0 + 7048);

  v2 = *(v1 + 112);
  sub_221F3EF6C(v0 + 6784, v0 + 6896);
  sub_221F9B3A4((v0 + 6784), v2, (v0 + 16));
  sub_221EE32F8(v0 + 16, v0 + 3400);
  swift_beginAccess();
  sub_221F3EE3C(v0 + 3400, v1 + 128);
  swift_endAccess();
  v3 = swift_task_alloc();
  *(v0 + 7064) = v3;
  *v3 = v0;
  v3[1] = sub_221F3E6E4;

  return sub_221FA1EC4();
}

uint64_t sub_221F3E6E4()
{
  v1 = *(*v0 + 7064);
  v2 = *(*v0 + 7048);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F3E7F4, v2, 0);
}

uint64_t sub_221F3E7F4(uint64_t a1)
{
  v2 = *(v1 + 7048);
  sub_221EE304C(a1);
  sub_221F3EFC8(v1 + 6784);
  sub_221E95288(v1 + 16);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_221F3E868()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 7056);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 7056);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to create Secure Cloud environment: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221F3EB2C()
{
  v1 = *(*(v0 + 3424) + OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway);
  *(v0 + 3432) = v1;
  return MEMORY[0x2822009F8](sub_221F3EB58, v1, 0);
}

uint64_t sub_221F3EB58()
{
  v1 = v0[429];
  bzero(v0 + 2, 0xD38uLL);
  swift_beginAccess();
  sub_221F3EE3C((v0 + 2), v1 + 128);
  swift_endAccess();
  v2 = v0[1];

  return v2();
}

id sub_221F3ED20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureCloudActivationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221F3ED88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221F3EB0C(a1, v4, v5, v6);
}

uint64_t sub_221F3EE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_221F3EEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E9544C;

  return sub_221F3E520(a1, v4, v5, v7, v6);
}

uint64_t sub_221F3F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221F3F198(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F3F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices19CloudOperationStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221F3F3F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F3F450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221F3F4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F3F50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id Daemon.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_221FB6618();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221FB6608();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v37[2] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221FB6238();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x8000000221FC3610;
  v10 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(a1 + 72) = v10;
  v11 = sub_221FB5D08();
  v12 = v10;
  v13 = sub_221FB5CF8();
  *(a1 + 160) = v13;
  v14 = type metadata accessor for LanguageChangeObserver();
  v15 = swift_allocObject();
  v16 = v13;
  swift_defaultActor_initialize();
  *(v15 + 112) = 0;
  *(v15 + 116) = 1;
  *(a1 + 104) = v14;
  *(a1 + 112) = &off_28355C180;
  v17 = MEMORY[0x277CE9378];
  *(a1 + 80) = v15;
  *(a1 + 144) = v11;
  *(a1 + 152) = v17;
  *(a1 + 120) = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CE9550]) initWithHealthStore_];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v20 = result;
    v37[1] = v5;
    v21 = [result isAppleWatch];

    v22 = [objc_allocWithZone(MEMORY[0x277CE9528]) initWithDatabaseClient:v18 isWatch:v21];
    v23 = ASSecureCloudEnabled();
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      type metadata accessor for SecureCloudActivationGateway();
      v25 = swift_allocObject();
      v26 = v12;
      swift_defaultActor_initialize();
      v25[15] = MEMORY[0x277D84F90];
      bzero(v25 + 16, 0xD38uLL);
      v25[14] = v26;
      v27 = type metadata accessor for SecureCloudActivationObserver();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR____TtC23ActivitySharingServices29SecureCloudActivationObserver_activationGateway] = v25;
      v41.receiver = v28;
      v41.super_class = v27;

      v29 = objc_msgSendSuper2(&v41, sel_init);
      [v22 addObserver_];
      *(a1 + 168) = v29;
      *(a1 + 200) = &type metadata for SecureCloudDaemon;
      *(a1 + 208) = &off_283557C68;
      v30 = swift_allocObject();
      *(a1 + 176) = v30;
      v30[11] = v11;
      v31 = MEMORY[0x277CE9378];
      v30[12] = MEMORY[0x277CE9378];
      v30[8] = v16;
      v32 = (v30 + 8);
      v30[2] = v25;
      v30[6] = &type metadata for SecureCloudListener;
      v30[7] = &off_28355AA98;
      v33 = swift_allocObject();
      v30[3] = v33;
      v24 = MEMORY[0x277D84F90];
      sub_221EA4AB4(v32, v33 + 24);
      *(v33 + 16) = v25;
      v34 = v16;
    }

    else
    {
      *(a1 + 200) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 168) = 0u;
      v31 = MEMORY[0x277CE9378];
    }

    v43[3] = v11;
    v43[4] = v31;
    v43[0] = v16;
    *(a1 + 16) = v22;
    sub_221EA4AB4(v43, a1 + 32);
    sub_221F3FA70();
    v35 = v16;
    sub_221FB6228();
    v42 = v24;
    sub_221F3FABC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
    sub_221F3FB14();
    sub_221FB67D8();
    (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
    v36 = sub_221FB6648();
    result = __swift_destroy_boxed_opaque_existential_0(v43);
    *(a1 + 24) = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_221F3FA70()
{
  result = qword_281306EB8;
  if (!qword_281306EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EB8);
  }

  return result;
}

unint64_t sub_221F3FABC()
{
  result = qword_281306EC0;
  if (!qword_281306EC0)
  {
    sub_221FB6608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EC0);
  }

  return result;
}

unint64_t sub_221F3FB14()
{
  result = qword_281306F48;
  if (!qword_281306F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC500, &qword_221FBCD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F48);
  }

  return result;
}

uint64_t sub_221F3FB98()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000061, 0x8000000221FC3660, 0x6574617669746361, 0xEA00000000002928);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_221F3FCA8;

  return sub_221F7EB14();
}

uint64_t sub_221F3FCA8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v6;
  v4[1] = sub_221F3FDE8;

  return sub_221F39BBC();
}

uint64_t sub_221F3FDE8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F3FEE4, 0, 0);
}

uint64_t sub_221F3FEE4()
{
  sub_221F40318(v0[7] + 176, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_221F40014;

    return sub_221E9D920();
  }

  else
  {
    sub_221F40388((v0 + 2));
    v4 = *__swift_project_boxed_opaque_existential_0Tm((v0[7] + 80), *(v0[7] + 104));
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_221F401B8;

    return sub_221F58384();
  }
}

uint64_t sub_221F40014()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F40110, 0, 0);
}

uint64_t sub_221F40110()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[7] + 80), *(v0[7] + 104));
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_221F401B8;

  return sub_221F58384();
}

uint64_t sub_221F401B8()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F402B4, 0, 0);
}

uint64_t sub_221F402B4()
{
  v1 = *(*(v0 + 56) + 160);
  sub_221FB5CE8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F40318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC508, &qword_221FBCD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221F40388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC508, &qword_221FBCD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices25SecureCloudDaemonProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_221F4044C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_221F40494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F40540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_221E96070;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_221F406A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_221E963B4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 40);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_221E9544C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_221E963B4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221F40AB0(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
LABEL_3:
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
    return sub_221FB6498();
  }

  if (!a1)
  {
    v3 = a3;
    goto LABEL_3;
  }

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
  return sub_221FB64A8();
}

void sub_221F40BE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v8 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D18730]);
    v4 = sub_221FB62E8();
    v5 = [v3 initWithServiceIdentifier_];

    v6 = [v5 setDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_queue)];
    MEMORY[0x28223BE20](v6);
    v7 = v5;
    os_unfair_lock_lock((v1 + 24));
    sub_221F416F0((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }
}

void sub_221F40D44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = sub_221FB5BC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221FB5B48();
  v17 = sub_221FB5B58();
  (*(v13 + 8))(v16, v12);
  v18 = *a5;

  v19 = sub_221FB6278();

  (*(v8 + 16))(v11, a1, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v7);
  aBlock[4] = sub_221F41738;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F41064;
  aBlock[3] = &block_descriptor_22;
  v22 = _Block_copy(aBlock);

  [v24 sendInvitationToDestination:v25 expirationDate:v17 context:v26 options:v19 serverAcknowledgedBlock:v22];
  _Block_release(v22);
}

void sub_221F40FF0(void *a1, void *a2)
{
  sub_221F417D4();
  v4 = swift_allocError();
  sub_221F40AB0(a1, a2, v4);
}

void sub_221F41064(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_221F410FC(int a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 acceptInvitation:a3 withContext:a4 serverAcknowledgedBlock:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  return sub_221FB64A8();
}

uint64_t sub_221F4115C(int a1, id a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  [a2 *a5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  return sub_221FB64A8();
}

uint64_t sub_221F41230(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v21 - v11;
  v13 = __swift_project_boxed_opaque_existential_0Tm((a1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener), *(a1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener + 24));
  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_221F41394(v13, v21);
  v15 = swift_allocObject();
  v16 = v21[3];
  *(v15 + 72) = v21[2];
  *(v15 + 88) = v16;
  v17 = v21[5];
  *(v15 + 104) = v21[4];
  *(v15 + 120) = v17;
  v18 = v21[1];
  *(v15 + 40) = v21[0];
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 56) = v18;
  v19 = a4;
  sub_221FA7A78(0, 0, v12, a6, v15);
}

uint64_t sub_221F413F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC3090(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F414B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC2E9C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F41570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221EC2BAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_221F41630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221EC285C(a1, v4, v5, v6, (v1 + 5));
}

id sub_221F416F0(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

void sub_221F41738(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC5A0, qword_221FBCED0) - 8) + 80);

  sub_221F40FF0(a1, a2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221F417D4()
{
  result = qword_27CFEC5A8;
  if (!qword_27CFEC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC5A8);
  }

  return result;
}

void sub_221F41828()
{
  v0 = sub_221FB62E8();
  IsEmail = ASDestinationIsEmail();

  v2 = sub_221FB62E8();
  if (IsEmail)
  {
    v3 = MEMORY[0x223DAD260]();

    if (v3)
    {
      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  IsPhoneNumber = ASDestinationIsPhoneNumber();

  if (!IsPhoneNumber)
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    return;
  }

  v5 = sub_221FB62E8();
  v6 = IDSCopyIDForPhoneNumber();

  if (!v6)
  {
    goto LABEL_9;
  }
}

uint64_t sub_221F41914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F41A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F41B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F41C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

void sub_221F41DC4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DACD50](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_221F41EC4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_221FB6898())
        {
          break;
        }

        sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_221E96470();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_221F420FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x223DACD50](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_221FB69B8();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_221FB69E8();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_221FB69F8();
        sub_221FB69C8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_221F422A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F42374, 0, 0);
}

uint64_t sub_221F42374()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = *(v0 + 168);
    sub_221FB5EA8();
    v7 = sub_221FB5E58();
    v41 = v5;
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v38 = *(v0 + 208);
    v11 = *(v0 + 176);
    v39 = *(v0 + 152);
    v40 = *(v0 + 160);
    v12 = v7;
    v14 = v13;
    sub_221EBEF90(v7, v13);
    sub_221FB5D48();
    sub_221EF9080();
    v15 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v16 = sub_221FB6278();

    v17 = sub_221FB62E8();
    v18 = [v15 initWithDictionary:v16 schema:v17];
    *(v0 + 248) = v18;

    sub_221EBEF30(v12, v14);
    (*(v10 + 8))(v9, v38);
    sub_221F41828();
    *(v0 + 256) = v19;
    v23 = v19;
    v24 = *(v0 + 192);
    v25 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v25;
    if (v24)
    {
      v26 = v25;
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      sub_221F41828();
      v29 = *MEMORY[0x277D185E0];
      v31 = v30;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v32;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v31;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v26;
    }

    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    v34[2] = v41;
    v34[3] = v23;
    v34[4] = v18;
    v34[5] = v0 + 136;
    v35 = *(MEMORY[0x277D85A40] + 4);
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    v37 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v36 = v0;
    v36[1] = sub_221F427E8;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54450, v34, v37);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v20 = *(v0 + 224);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_221F427E8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_221F42A5C;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_221F42904;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F42904()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_221E93000, v3, v4, "Sent invitation %@", v5, 0xCu);
    sub_221EA0558(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  v11 = *(v0 + 224);

  swift_unknownObjectRelease();
  v12 = *(v0 + 136);

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_221F42A5C()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  swift_unknownObjectRelease();

  v5 = v0[17];

  v6 = v0[35];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F42AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F42BB8, 0, 0);
}

uint64_t sub_221F42BB8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = *(v0 + 168);
    sub_221FB5F28();
    v7 = sub_221FB5E58();
    v41 = v5;
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v38 = *(v0 + 208);
    v11 = *(v0 + 176);
    v39 = *(v0 + 152);
    v40 = *(v0 + 160);
    v12 = v7;
    v14 = v13;
    sub_221EBEF90(v7, v13);
    sub_221FB5D48();
    sub_221EF9080();
    v15 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v16 = sub_221FB6278();

    v17 = sub_221FB62E8();
    v18 = [v15 initWithDictionary:v16 schema:v17];
    *(v0 + 248) = v18;

    sub_221EBEF30(v12, v14);
    (*(v10 + 8))(v9, v38);
    sub_221F41828();
    *(v0 + 256) = v19;
    v23 = v19;
    v24 = *(v0 + 192);
    v25 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v25;
    if (v24)
    {
      v26 = v25;
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      sub_221F41828();
      v29 = *MEMORY[0x277D185E0];
      v31 = v30;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v32;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v31;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v26;
    }

    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    v34[2] = v41;
    v34[3] = v23;
    v34[4] = v18;
    v34[5] = v0 + 136;
    v35 = *(MEMORY[0x277D85A40] + 4);
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    v37 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v36 = v0;
    v36[1] = sub_221F4302C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54450, v34, v37);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v20 = *(v0 + 224);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_221F4302C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_221F54490;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_221F54494;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F43148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_221FB5D68();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F43214, 0, 0);
}

uint64_t sub_221F43214()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD000000000000041, 0x8000000221FC3950);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *(v0 + 240) = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = *(v0 + 168);
    sub_221FB60A8();
    v7 = sub_221FB5E58();
    v41 = v5;
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v38 = *(v0 + 208);
    v11 = *(v0 + 176);
    v39 = *(v0 + 152);
    v40 = *(v0 + 160);
    v12 = v7;
    v14 = v13;
    sub_221EBEF90(v7, v13);
    sub_221FB5D48();
    sub_221EF9080();
    v15 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v16 = sub_221FB6278();

    v17 = sub_221FB62E8();
    v18 = [v15 initWithDictionary:v16 schema:v17];
    *(v0 + 248) = v18;

    sub_221EBEF30(v12, v14);
    (*(v10 + 8))(v9, v38);
    sub_221F41828();
    *(v0 + 256) = v19;
    v23 = v19;
    v24 = *(v0 + 192);
    v25 = sub_221ED8054(MEMORY[0x277D84F90]);
    *(v0 + 136) = v25;
    if (v24)
    {
      v26 = v25;
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      sub_221F41828();
      v29 = *MEMORY[0x277D185E0];
      v31 = v30;
      *(v0 + 120) = sub_221FB6318();
      *(v0 + 128) = v32;
      sub_221FB6908();
      *(v0 + 80) = swift_getObjectType();
      *(v0 + 56) = v31;
      sub_221EC45F0((v0 + 56), (v0 + 88));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_221F782F8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      sub_221EC5354(v0 + 16);
      *(v0 + 136) = v26;
    }

    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    v34[2] = v41;
    v34[3] = v23;
    v34[4] = v18;
    v34[5] = v0 + 136;
    v35 = *(MEMORY[0x277D85A40] + 4);
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    v37 = sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
    *v36 = v0;
    v36[1] = sub_221F4302C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000041, 0x8000000221FC3950, sub_221F54304, v34, v37);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v20 = *(v0 + 224);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_221F43688(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F436A8, 0, 0);
}

uint64_t sub_221F436A8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD00000000000002ALL, 0x8000000221FC38F0);
  v3 = [*(v1 + 168) contacts];
  if (v3)
  {
    v4 = v3;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v5 = sub_221FB64F8();
    v0[4] = v5;

    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_221F438E0;
    v7 = v0[2];
    v8 = v0[3];

    return sub_221F43BB0(v5, v7);
  }

  else
  {
    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_221E93000, v10, v11, "Contacts list is empty, nothing to upgrade", v12, 2u);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_221F438E0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F43B4C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = swift_task_alloc();
    v3[7] = v5;
    *v5 = v3;
    v5[1] = sub_221F43A58;
    v6 = v3[3];
    v7 = v3[2];

    return sub_221F44500(v7);
  }
}

uint64_t sub_221F43A58()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_221F43B4C()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221F43BB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F43BD4, 0, 0);
}

uint64_t sub_221F43BD4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000035, 0x8000000221FC3880);
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1 + 10, v1[13]);
  v4 = *v3;
  *(v3 + 8);
  v5 = sub_221FB62E8();

  v0[6] = [v4 installStateForBundleIdentifier_];

  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_221F43D70;

  return sub_221EF490C();
}

uint64_t sub_221F43D70(__int16 a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F43EA8, 0, 0);
  }
}

uint64_t sub_221F43EA8()
{
  v2 = *(v0 + 96) == 5 && (*(v0 + 96) & 0xFF00) == 0x200 && *(v0 + 48) == 1;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_221EF9770(*(v0 + 16));
  v6 = v5;
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;

  v8 = sub_221F420FC(sub_221F5418C, v7, v6);
  *(v0 + 72) = v8;

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v9)
  {
    if (v2)
    {
      v2 = 201;
    }

    else
    {
      v2 = 202;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
    {

      if (!i)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223DACD50](v11, v8);
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v12 insertEventWithType_];

        ++v11;
        if (v14 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v21 = sub_221FB6868();

      if (!v21)
      {
        goto LABEL_34;
      }

      if (v2)
      {
        v2 = 201;
      }

      else
      {
        v2 = 202;
      }
    }

LABEL_24:
    v15 = *(v0 + 32);

    __swift_project_boxed_opaque_existential_0Tm(v15 + 37, v15[40]);
    v16 = v15[20];

    v17 = swift_task_alloc();
    *(v0 + 80) = v17;
    *v17 = v0;
    v17[1] = sub_221F441D8;
    v18 = *(v0 + 24);
    v19 = MEMORY[0x277D84F90];

    return sub_221EBA884(v8, v19, v16, v18);
  }

  else
  {
LABEL_34:
    v22 = *(v0 + 40);
    v23 = sub_221FB61B8();
    v24 = sub_221FB65C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_221E93000, v23, v24, "No relationships to update with upgrade availability", v25, 2u);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F441D8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_221F4449C;
  }

  else
  {

    v4 = sub_221F4431C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F4431C()
{
  v17 = v0;
  v1 = v0[5];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);

    v10 = MEMORY[0x223DAC810](v9, v8);
    v12 = v11;

    v13 = sub_221EF4114(v10, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_221E93000, v2, v3, "Updated relationships with secure could upgrade availability: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F4449C()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221F44500(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221F44590, 0, 0);
}

uint64_t sub_221F44590()
{
  v88 = v0;
  v87[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v1 + 416);
  v3 = *(v1 + 417);
  v4 = *(v1 + 424);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v87[0]) = v2;
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
LABEL_6:
      if (qword_281307080 == -1)
      {
LABEL_7:
        v7 = sub_221FB61D8();
        __swift_project_value_buffer(v7, qword_281307DF0);
        v8 = sub_221FB61B8();
        v9 = sub_221FB65C8();
        if (!os_log_type_enabled(v8, v9))
        {
LABEL_41:

          v40 = *(v0 + 8);
          v41 = *MEMORY[0x277D85DE8];

          return v40();
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Auto upgrade disallowed";
LABEL_40:
        _os_log_impl(&dword_221E93000, v8, v9, v11, v10, 2u);
        MEMORY[0x223DADA80](v10, -1, -1);
        goto LABEL_41;
      }

LABEL_76:
      swift_once();
      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  v12 = [*(*(v0 + 48) + 168) contacts];
  if (!v12)
  {
    if (qword_281307080 != -1)
    {
LABEL_77:
      swift_once();
    }

    v39 = sub_221FB61D8();
    __swift_project_value_buffer(v39, qword_281307DF0);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_41;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "No contacts to migrate";
    goto LABEL_40;
  }

  v13 = v12;
  v86 = sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  v84 = sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v14 = sub_221FB64F8();

  if ((v14 & 0xC000000000000001) == 0)
  {
    v43 = *(v14 + 32);
    v81 = ((1 << v43) + 63) >> 6;
    if ((v43 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v79 = swift_slowAlloc();
        v62 = sub_221F107FC(v79, v81, v14, sub_221F47A2C);

        MEMORY[0x223DADA80](v79, -1, -1);
        goto LABEL_68;
      }
    }

    v80[1] = v80;
    MEMORY[0x28223BE20](v15);
    v82 = v80 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v82, v44);
    v83 = 0;
    v45 = 0;
    v46 = 1 << *(v14 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v14 + 56);
    v49 = (v46 + 63) >> 6;
    while (v48)
    {
      v50 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
LABEL_56:
      v53 = v50 | (v45 << 6);
      v54 = *(v14 + 48);
      v85 = v53;
      v55 = *(v54 + 8 * v53);
      v56 = [v55 relationshipStorage];
      v57 = [v56 primaryRelationship];

      v58 = [v55 relationshipStorage];
      v59 = [v58 primaryRemoteRelationship];

      if ([v57 isFriendshipActive] && !objc_msgSend(v57, sel_cloudType) && objc_msgSend(v57, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v57, sel_secureCloudUpgradeCompleted) & 1) == 0 && (objc_msgSend(v59, sel_isFriendshipActive) & 1) != 0)
      {
        v60 = [v59 secureCloudUpgradeAvailable];

        if (v60)
        {
          *&v82[(v85 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v85;
          if (__OFADD__(v83++, 1))
          {
            __break(1u);
LABEL_65:
            v62 = sub_221F77424(v82, v81, v83, v14);
            goto LABEL_68;
          }
        }
      }

      else
      {
      }
    }

    v51 = v45;
    while (1)
    {
      v45 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v45 >= v49)
      {
        goto LABEL_65;
      }

      v52 = *(v14 + 56 + 8 * v45);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        v48 = (v52 - 1) & v52;
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v16 = MEMORY[0x277D84FA0];
  v87[0] = MEMORY[0x277D84FA0];
  sub_221FB6828();
  v17 = sub_221FB6898();
  if (v17)
  {
    v85 = MEMORY[0x277D84FA0];
    while (1)
    {
      *(v0 + 32) = v17;
      swift_dynamicCast();
      v18 = *(v0 + 24);
      v19 = [v18 relationshipStorage];
      v20 = [v19 primaryRelationship];

      v21 = [v18 relationshipStorage];
      v22 = [v21 primaryRemoteRelationship];

      if ([v20 isFriendshipActive] && !objc_msgSend(v20, sel_cloudType) && objc_msgSend(v20, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v20, sel_secureCloudUpgradeCompleted) & 1) == 0 && objc_msgSend(v22, sel_isFriendshipActive))
      {
        v23 = [v22 secureCloudUpgradeAvailable];

        if (v23)
        {
          v24 = *(v0 + 24);
          v25 = v85;
          v26 = *(v85 + 16);
          if (*(v85 + 24) <= v26)
          {
            sub_221F161CC(v26 + 1);
            v25 = v87[0];
          }

          v27 = *(v25 + 40);
          v28 = sub_221FB6748();
          v29 = v25 + 56;
          v85 = v25;
          v30 = -1 << *(v25 + 32);
          v31 = v28 & ~v30;
          v32 = v31 >> 6;
          if (((-1 << v31) & ~*(v25 + 56 + 8 * (v31 >> 6))) != 0)
          {
            v33 = __clz(__rbit64((-1 << v31) & ~*(v25 + 56 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = 0;
            v35 = (63 - v30) >> 6;
            do
            {
              if (++v32 == v35 && (v34 & 1) != 0)
              {
                __break(1u);
                goto LABEL_77;
              }

              v36 = v32 == v35;
              if (v32 == v35)
              {
                v32 = 0;
              }

              v34 |= v36;
              v37 = *(v29 + 8 * v32);
            }

            while (v37 == -1);
            v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          }

          *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          v38 = v85;
          *(*(v85 + 48) + 8 * v33) = v24;
          ++*(v38 + 16);
          goto LABEL_26;
        }
      }

      else
      {
      }

LABEL_26:
      v17 = sub_221FB6898();
      if (!v17)
      {
        goto LABEL_67;
      }
    }
  }

  v85 = v16;
LABEL_67:

  v62 = v85;
LABEL_68:
  *(v0 + 56) = v62;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v63 = sub_221FB61D8();
  __swift_project_value_buffer(v63, qword_281307DF0);

  v64 = sub_221FB61B8();
  v65 = sub_221FB65C8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v87[0] = v67;
    *v66 = 136315138;
    v68 = sub_221FB6508();
    v70 = sub_221EF4114(v68, v69, v87);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_221E93000, v64, v65, "Attempting to upgrade eligible contacts: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x223DADA80](v67, -1, -1);
    MEMORY[0x223DADA80](v66, -1, -1);
  }

  v72 = *(v0 + 40);
  v71 = *(v0 + 48);
  *(v0 + 16) = v62;
  v73 = swift_task_alloc();
  *(v0 + 64) = v73;
  *(v73 + 16) = v71;
  *(v73 + 24) = v72;
  v74 = *(MEMORY[0x277CE94D8] + 4);
  v75 = swift_task_alloc();
  *(v0 + 72) = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD08, &qword_221FB9210);
  v77 = sub_221F54258();
  *v75 = v0;
  v75[1] = sub_221F45018;
  v78 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28213AEC8](&unk_221FBCFC8, v73, v76, v77);
}

void sub_221F45018()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 64);

    v8 = *(v4 + 8);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

uint64_t sub_221F4519C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F4525C, 0, 0);
}

uint64_t sub_221F4525C()
{
  v26 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000020, 0x8000000221FC2BE0);
  v4 = *(v2 + 168);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[7] = v6;

  if (v6)
  {
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_221EB7350;
    v8 = v0[3];

    return sub_221F455B8(v6, 0);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      sub_221F542BC(&qword_27CFEBB90, MEMORY[0x277CC95F0]);
      v18 = sub_221FB6B08();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_221EF4114(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_221E93000, v10, v11, "Failed to find contact for friend identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    sub_221EA4994();
    swift_allocError();
    *v22 = 21;
    swift_willThrow();
    v23 = v0[6];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_221F455B8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_221FB60D8();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = sub_221FB6078();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v11 = sub_221FB60A8();
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v13 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();
  v14 = sub_221FB5C38();
  v3[32] = v14;
  v15 = *(v14 - 8);
  v3[33] = v15;
  v16 = *(v15 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F457D4, 0, 0);
}

id sub_221F457D4()
{
  v64 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_221FB61D8();
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000022, 0x8000000221FC3920);
  v3 = [v1 relationshipStorage];
  v4 = [v3 primaryRelationship];
  *(v0 + 304) = v4;

  v5 = [v1 relationshipStorage];
  v6 = [v5 primaryRemoteRelationship];
  *(v0 + 312) = v6;

  if ([v4 cloudType])
  {
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v4;
      *v10 = v4;
      v11 = v4;
      _os_log_impl(&dword_221E93000, v7, v8, "Invalid cloud type for primary relationship: %@", v9, 0xCu);
      sub_221EA0558(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 11;
    goto LABEL_29;
  }

  v14 = *(v0 + 168);
  v15 = v4;
  LOBYTE(v14) = sub_221F48184(v15);

  if ((v14 & 1) == 0)
  {
    sub_221EA4994();
    swift_allocError();
    v13 = 18;
LABEL_29:
    *v12 = v13;
    swift_willThrow();

    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v56 = *(v0 + 272);
    v57 = *(v0 + 248);
    v59 = *(v0 + 216);
    v58 = *(v0 + 224);
    v60 = *(v0 + 192);

    v61 = *(v0 + 8);

    return v61();
  }

  v16 = *(v0 + 168);
  v17 = *(v16 + 472);
  v18 = *(v16 + 473);
  v19 = *(v16 + 480);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v63) = v17;
    UserDefaultsKeys.rawValue.getter();
    v20 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v19);

    if (v20 == 2)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  result = [v15 UUID];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = result;
  v24 = *(v0 + 288);
  sub_221FB5C18();

  result = [v6 UUID];
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = *(v0 + 280);
  v62 = *(v0 + 288);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  sub_221FB5C18();

  sub_221F542BC(&qword_27CFEC1D0, MEMORY[0x277CC95F0]);
  LOBYTE(v25) = sub_221FB62C8();
  v29 = *(v28 + 8);
  v29(v26, v27);
  v29(v62, v27);
  if ((v25 & 1) == 0)
  {
    v43 = *(v0 + 152);
    v44 = sub_221FB61B8();
    v45 = sub_221FB65C8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 152);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v47 = 136315138;
      v49 = [v46 displayName];
      v50 = sub_221FB6318();
      v52 = v51;

      v53 = sub_221EF4114(v50, v52, &v63);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_221E93000, v44, v45, "Relationship lost upgrade tie breaker, will let remote relationship initiate upgrade: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x223DADA80](v48, -1, -1);
      MEMORY[0x223DADA80](v47, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 5;
    goto LABEL_29;
  }

LABEL_19:
  v30 = [v15 cloudKitAddress];
  if (!v30)
  {
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v15;
      *v41 = v15;
      v42 = v15;
      _os_log_impl(&dword_221E93000, v38, v39, "Unable to upgrade relationship, missing CloudKit address: %@", v40, 0xCu);
      sub_221EA0558(v41);
      MEMORY[0x223DADA80](v41, -1, -1);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v13 = 20;
    goto LABEL_29;
  }

  v31 = *(v0 + 168);
  v32 = v30;
  v33 = sub_221FB6318();
  v35 = v34;

  *(v0 + 320) = v33;
  *(v0 + 328) = v35;
  v36 = *__swift_project_boxed_opaque_existential_0Tm((v31 + 120), *(v31 + 144));
  v37 = swift_task_alloc();
  *(v0 + 336) = v37;
  *v37 = v0;
  v37[1] = sub_221F45EDC;

  return sub_221F991FC(v36);
}

uint64_t sub_221F45EDC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v9 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v6 = v4[41];

    v7 = sub_221F46670;
  }

  else
  {
    v7 = sub_221F45FFC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F45FFC()
{
  if (!*(v0 + 352))
  {
    v34 = *(v0 + 328);
    v35 = *(v0 + 296);

    v36 = sub_221FB61B8();
    v37 = sub_221FB65C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_221E93000, v36, v37, "Unable to fetch CloudKit address", v38, 2u);
      MEMORY[0x223DADA80](v38, -1, -1);
    }

    v39 = *(v0 + 312);

    sub_221EA4994();
    swift_allocError();
    *v40 = 20;
    swift_willThrow();

    goto LABEL_13;
  }

  if ([*(v0 + 312) secureCloudUpgradeCompleted] && (objc_msgSend(*(v0 + 304), sel_secureCloudUpgradeFailed) & 1) == 0)
  {
    v54 = *(v0 + 328);
    v55 = *(v0 + 296);

    v56 = sub_221FB61B8();
    v57 = sub_221FB65C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_221E93000, v56, v57, "Remote relationship is marked upgraded, marking local as failed to reset state", v58, 2u);
      MEMORY[0x223DADA80](v58, -1, -1);
    }

    v59 = *(v0 + 304);

    v60 = v59;
    v61 = swift_task_alloc();
    *(v0 + 368) = v61;
    *v61 = v0;
    v61[1] = sub_221F46740;
    v62 = *(v0 + 304);
    v63 = *(v0 + 168);

    return sub_221F48844(v62);
  }

  else
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 152);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65C8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 152);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&dword_221E93000, v3, v4, "Upgrading contact: %@", v6, 0xCu);
      sub_221EA0558(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v9 = *(v0 + 304);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 168);

    sub_221FB5C28();
    *(v0 + 384) = sub_221FB5BE8();
    *(v0 + 392) = v14;
    v15 = *(v11 + 8);
    *(v0 + 400) = v15;
    *(v0 + 408) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v10, v12);
    v16 = v9;
    v17 = sub_221FB62E8();
    [v16 setSecureCloudUpgradeToken_];

    [v16 insertEventWithType_];
    v18 = __swift_project_boxed_opaque_existential_0Tm(v13 + 37, v13[40]);
    v19 = v13[20];
    if ([v16 cloudType])
    {
      v20 = *(v0 + 296);
      v21 = *(v0 + 304);
      v22 = sub_221FB61B8();
      v23 = sub_221FB65A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 304);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v24;
        *v26 = v24;
        v27 = v24;
        _os_log_impl(&dword_221E93000, v22, v23, "Attempting to save secure cloud relationship to legacy container %@", v25, 0xCu);
        sub_221EA0558(v26);
        MEMORY[0x223DADA80](v26, -1, -1);
        MEMORY[0x223DADA80](v25, -1, -1);
      }

      v28 = *(v0 + 328);
      v29 = *(v0 + 304);

      sub_221EA4994();
      swift_allocError();
      *v30 = 11;
      swift_willThrow();

      v31 = *(v0 + 392);
      v32 = *(v0 + 352);
      v33 = *(v0 + 312);

LABEL_13:
      v42 = *(v0 + 280);
      v41 = *(v0 + 288);
      v43 = *(v0 + 272);
      v44 = *(v0 + 248);
      v46 = *(v0 + 216);
      v45 = *(v0 + 224);
      v47 = *(v0 + 192);

      v48 = *(v0 + 8);

      return v48();
    }

    v50 = *(v0 + 304);
    v51 = *(v0 + 160);
    v52 = *__swift_project_boxed_opaque_existential_0Tm(v18 + 6, v18[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_221F46960;
    v53 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221EF4C50;
    *(v0 + 104) = &block_descriptor_69;
    *(v0 + 112) = v53;
    [v52 saveRelationship:v50 contact:0 cloudKitGroup:v19 activity:v51 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221F46670()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F46740()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_221F474F4;
  }

  else
  {

    v4 = sub_221F4685C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F4685C()
{
  v1 = *(v0 + 312);
  sub_221EA4994();
  swift_allocError();
  *v2 = 53;
  swift_willThrow();

  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F46960()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_221F46C88;
  }

  else
  {
    v3 = sub_221F46A70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F46A70()
{
  v1 = v0[38];
  v2 = v0[18];
  v0[53] = v2;

  v3 = v2;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_221F46B28;
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[20];
  v8 = v0[21];

  return sub_221F48E68(v6, v5, v3, v7);
}

uint64_t sub_221F46B28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v7 = v3[53];
  if (v1)
  {
    v8 = v4[49];
    v9 = v4[44];
    v10 = v4[41];

    v11 = sub_221F477C4;
  }

  else
  {

    v11 = sub_221F46D90;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_221F46C88()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  swift_willThrow();

  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 352);
  v7 = *(v0 + 312);

  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F46D90()
{
  v1 = v0[55];
  v22 = v0[50];
  v23 = v0[51];
  v24 = v0[48];
  v25 = v0[49];
  v26 = v0[44];
  v2 = v0[34];
  v19 = v0[32];
  v20 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v21 = v0[21];
  sub_221FB5BB8();
  (*(v6 + 104))(v4, *MEMORY[0x277CE9410], v5);
  v10 = v1;
  sub_221FB60B8();
  sub_221FB60C8();
  (*(v8 + 8))(v7, v9);
  sub_221FB5C28();
  sub_221FB5BE8();
  v22(v2, v19);
  sub_221FB6098();
  v11 = *__swift_project_boxed_opaque_existential_0Tm((v21 + 216), *(v21 + 240));

  v12 = swift_task_alloc();
  v0[57] = v12;
  *v12 = v0;
  v12[1] = sub_221F46F68;
  v13 = v0[43];
  v14 = v0[44];
  v16 = v0[40];
  v15 = v0[41];
  v17 = v0[31];

  return sub_221F43148(v16, v15, v17, 1108, v13, v14);
}

uint64_t sub_221F46F68(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(*v2 + 464) = v1;

  v7 = *(v4 + 352);
  v8 = *(v4 + 328);
  if (v1)
  {

    swift_bridgeObjectRelease_n();
    v9 = sub_221F47348;
  }

  else
  {

    v9 = sub_221F470E0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F470E0()
{
  v32 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 440);
  v7 = *(v0 + 424);
  v8 = *(v0 + 352);
  if (v5)
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 240);
    v30 = *(v0 + 248);
    v28 = *(v0 + 312);
    v29 = *(v0 + 232);
    v27 = *(v0 + 440);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v7 = v7;
    v14 = sub_221EF4114(v9, v8, &v31);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_221E93000, v3, v4, "Sent request to upgrade relationship: %@ from: %s", v11, 0x16u);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);

    (*(v10 + 8))(v30, v29);
  }

  else
  {
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 232);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 280);
  v18 = *(v0 + 288);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 192);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F47348()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 464);
  *(v0 + 472) = v4;
  v5 = *(v0 + 296);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "Upgrade failed with error: %@", v9, 0xCu);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = *(v0 + 424);

  v14 = v13;
  v15 = swift_task_alloc();
  *(v0 + 480) = v15;
  *v15 = v0;
  v15[1] = sub_221F475C8;
  v16 = *(v0 + 424);
  v17 = *(v0 + 168);

  return sub_221F48844(v16);
}

uint64_t sub_221F474F4()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 376);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F475C8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_221F47948;
  }

  else
  {

    v4 = sub_221F476E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F476E4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 312);
  swift_willThrow();

  v3 = *(v0 + 472);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_221F477C4()
{
  v1 = v0[56];
  v0[59] = v1;
  v2 = v0[37];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Upgrade failed with error: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v0[53];

  v11 = v10;
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_221F475C8;
  v13 = v0[53];
  v14 = v0[21];

  return sub_221F48844(v13);
}

uint64_t sub_221F47948()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 312);

  v3 = *(v0 + 488);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 192);

  v11 = *(v0 + 8);

  return v11();
}

id sub_221F47A2C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 relationshipStorage];
  v3 = [v2 primaryRelationship];

  v4 = [v1 relationshipStorage];
  v5 = [v4 primaryRemoteRelationship];

  if ([v3 isFriendshipActive] && !objc_msgSend(v3, sel_cloudType) && objc_msgSend(v3, sel_secureCloudUpgradeAvailable) && (objc_msgSend(v3, sel_secureCloudUpgradeCompleted) & 1) == 0 && objc_msgSend(v5, sel_isFriendshipActive))
  {
    v6 = [v5 secureCloudUpgradeAvailable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_221F47B54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_221FB5C38();
  v3[2] = v6;
  v7 = *(v6 - 8);
  v3[3] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  v3[4] = v9;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_221F47C60;

  return sub_221F455B8(v10, a3);
}

uint64_t sub_221F47C60()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F47D9C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_221F47D9C()
{
  v42 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();

  if (os_log_type_enabled(v6, v7))
  {
    v39 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v12 = 136315650;
    v13 = [v9 UUID];
    sub_221FB5C18();

    sub_221F542BC(&qword_27CFEBB90, MEMORY[0x277CC95F0]);
    v14 = sub_221FB6B08();
    v16 = v15;
    (*(v10 + 8))(v8, v11);
    v17 = sub_221EF4114(v14, v16, &v41);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v9 displayName];
    v19 = sub_221FB6318();
    v21 = v20;

    v22 = sub_221EF4114(v19, v21, &v41);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    v23 = v39;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v24;
    *v38 = v24;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to send upgrade for contact: %s|%s, error: %@", v12, 0x20u);
    sub_221EA0558(v38);
    MEMORY[0x223DADA80](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v40, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v25 = v0[7];
  v26 = v25;
  v27 = v25;
  v28 = sub_221FB5A98();
  v29 = [v28 domain];

  if (!v29)
  {
    sub_221FB6318();
    v29 = sub_221FB62E8();
  }

  v30 = v0[7];
  v31 = sub_221FB5A98();
  v32 = [v31 code];

  result = sub_221FB62E8();
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = v0[7];
  ASAnalyticsReportAddManateeContainer();

  v36 = v0[4];

  v37 = v0[1];

  return v37();
}

BOOL sub_221F48184(void *a1)
{
  v3 = sub_221FB5BC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  if ([a1 secureCloudUpgradeCompleted])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = a1;
    v13 = sub_221FB61B8();
    v14 = sub_221FB65C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_221E93000, v13, v14, "Upgrade already complete for: %@", v15, 0xCu);
      sub_221EA0558(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    return 0;
  }

  else
  {
    if ([a1 hasOutgoingSecureCloudUpgradeRequest] && (v19 = objc_msgSend(a1, sel_dateForLatestOutgoingUpgradeRequest)) != 0)
    {
      v20 = v19;
      sub_221FB5B98();

      v21 = v1;
      sub_221FB5B78();
      v23 = v22;
      v24 = *(v1 + 432);
      v25 = *(v21 + 440);
      v26 = *(v21 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        LOBYTE(v72) = v24;
        UserDefaultsKeys.rawValue.getter();
        v27 = COERCE_DOUBLE(sub_221EF8934(v26));
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          v25 = v27;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v30 = fabs(v23);
      v31 = sub_221FB61D8();
      __swift_project_value_buffer(v31, qword_281307DF0);
      v32 = a1;
      v33 = sub_221FB61B8();
      v34 = sub_221FB65C8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74 = v36;
        *v35 = 136315394;
        v37 = [v32 cloudKitAddress];
        if (v37)
        {
          v38 = v37;
          v39 = sub_221FB6318();
          v41 = v40;

          v72 = 0;
          v73 = 0xE000000000000000;
          v70 = v39;
          v71 = v41;
          sub_221FB6A08();

          v42 = v72;
          v43 = v73;
        }

        else
        {
          v42 = 7104878;
          v43 = 0xE300000000000000;
        }

        v67 = sub_221EF4114(v42, v43, &v74);

        *(v35 + 4) = v67;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v30 < v25;
        _os_log_impl(&dword_221E93000, v33, v34, "Relationship upgrade %s backing off last attempt: %{BOOL}d", v35, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x223DADA80](v36, -1, -1);
        MEMORY[0x223DADA80](v35, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
    }

    else
    {
      if (![a1 secureCloudUpgradeFailed])
      {
        return 1;
      }

      v44 = [a1 dateForLatestUpgradeFailure];
      if (!v44)
      {
        return 1;
      }

      v45 = v44;
      sub_221FB5B98();

      v46 = v1;
      sub_221FB5B78();
      v48 = v47;
      v49 = *(v1 + 432);
      v25 = *(v46 + 440);
      v50 = *(v46 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        LOBYTE(v72) = v49;
        UserDefaultsKeys.rawValue.getter();
        *&v51 = COERCE_DOUBLE(sub_221EF8934(v50));
        v53 = v52;

        if ((v53 & 1) == 0)
        {
          v25 = *&v51;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v30 = fabs(v48);
      v54 = sub_221FB61D8();
      __swift_project_value_buffer(v54, qword_281307DF0);
      v55 = a1;
      v56 = sub_221FB61B8();
      v57 = sub_221FB65C8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v74 = v59;
        *v58 = 136315394;
        v60 = [v55 cloudKitAddress];
        if (v60)
        {
          v61 = v60;
          v62 = sub_221FB6318();
          v64 = v63;

          v72 = 0;
          v73 = 0xE000000000000000;
          v70 = v62;
          v71 = v64;
          sub_221FB6A08();

          v65 = v72;
          v66 = v73;
        }

        else
        {
          v65 = 7104878;
          v66 = 0xE300000000000000;
        }

        v68 = sub_221EF4114(v65, v66, &v74);

        *(v58 + 4) = v68;
        *(v58 + 12) = 1024;
        *(v58 + 14) = v30 < v25;
        _os_log_impl(&dword_221E93000, v56, v57, "Relationship upgrade %s backing off failed attempt: %{BOOL}d", v58, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x223DADA80](v59, -1, -1);
        MEMORY[0x223DADA80](v58, -1, -1);
      }

      (*(v4 + 8))(v8, v3);
    }

    return v30 >= v25;
  }
}

uint64_t sub_221F48844(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_221F48864, 0, 0);
}

uint64_t sub_221F48864()
{
  v1 = v0[19];
  v2 = v0[20];
  [v1 setSecureCloudUpgradeToken_];
  [v1 insertEventWithType_];
  v3 = __swift_project_boxed_opaque_existential_0Tm(v2 + 37, v2[40]);
  v4 = v2[20];
  if ([v1 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_221E93000, v8, v9, "Attempting to save secure cloud relationship to legacy container %@", v11, 0xCu);
      sub_221EA0558(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[19];
    v18 = *__swift_project_boxed_opaque_existential_0Tm(v3 + 6, v3[9]);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_221F48B70;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_221EF4C50;
    v0[13] = &block_descriptor_27_1;
    v0[14] = v19;
    [v18 saveRelationship:v17 contact:0 cloudKitGroup:v4 activity:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_221F48B70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_221F48DFC;
  }

  else
  {
    v3 = sub_221F48C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F48C80()
{
  v1 = *(v0 + 144);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_221E93000, v4, v5, "Saved relationship with failed to upgrade event: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
    v3 = v4;
    v4 = v8;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F48DFC()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F48E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221F48E90, 0, 0);
}

uint64_t sub_221F48E90()
{
  v1 = v0[6];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 32, v1[35]);
  v3 = v1[20];
  v0[7] = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_221F48F48;
  v7 = v0[2];
  v6 = v0[3];

  return sub_221E9F708(v7, v6, v3, v4);
}

uint64_t sub_221F48F48(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  *(v4 + 72) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F4907C, 0, 0);
  }
}

uint64_t sub_221F4907C()
{
  v29 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [*(v0 + 72) userIdentity];
    v3 = [v2 hasiCloudAccount];

    if (v3)
    {
      __swift_project_boxed_opaque_existential_0Tm((*(v0 + 48) + 336), *(*(v0 + 48) + 360));
      v4 = swift_task_alloc();
      *(v0 + 80) = v4;
      *v4 = v0;
      v4[1] = sub_221F49448;
      v5 = *(v0 + 56);
      v7 = *(v0 + 32);
      v6 = *(v0 + 40);

      return sub_221E9AC64(v7, v5, v6);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 24);
    v19 = sub_221FB61D8();
    __swift_project_value_buffer(v19, qword_281307DF0);

    v20 = sub_221FB61B8();
    v21 = sub_221FB65A8();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_221EF4114(v23, v22, v28);
      _os_log_impl(&dword_221E93000, v20, v21, "Destination %s has a participant, but no iCloud account", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DADA80](v25, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 24);
    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);

    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 16);
      v13 = *(v0 + 24);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_221EF4114(v14, v13, v28);
      _os_log_impl(&dword_221E93000, v11, v12, "Destination %s does not have a matching CloudKit participant", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v17 = 12;
    swift_willThrow();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_221F49448(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_221F49728;
  }

  else
  {
    v5 = sub_221F4955C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F4955C()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0Tm((v0[6] + 336), *(v0[6] + 360));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_221F49614;
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[5];

  return sub_221E9A43C(v1, v3, v4, v5);
}

uint64_t sub_221F49614()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_221F49958;
  }

  else
  {
    v3 = sub_221F4978C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F49728()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F4978C()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0Tm((v0[6] + 336), *(v0[6] + 360));
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_221F49844;
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[5];

  return sub_221E993C0(v1, v3, v4, v5);
}

uint64_t sub_221F49844(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_221F49C60;
  }

  else
  {
    v5 = sub_221F499C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F49958()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F499C4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);

    v7 = *(v0 + 8);

    return v7(v4);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = *(v0 + 72);
    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = v9;
    v13 = v10;
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 128);
      v17 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v17;
      v19[1] = v16;
      v20 = v16;
      v21 = v17;
      _os_log_impl(&dword_221E93000, v14, v15, "Failed to create share item for participant: %@, share: %@", v18, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    v22 = *(v0 + 128);
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);

    sub_221EA4994();
    swift_allocError();
    *v25 = 31;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F49C60()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 136);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F49CCC(uint64_t a1, uint64_t a2)
{
  v3[78] = v2;
  v3[77] = a2;
  v3[76] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[79] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[80] = swift_task_alloc();
  v6 = sub_221FB60D8();
  v3[81] = v6;
  v7 = *(v6 - 8);
  v3[82] = v7;
  v8 = *(v7 + 64) + 15;
  v3[83] = swift_task_alloc();
  v9 = sub_221FB6078();
  v3[84] = v9;
  v10 = *(v9 - 8);
  v3[85] = v10;
  v11 = *(v10 + 64) + 15;
  v3[86] = swift_task_alloc();
  v12 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v3[87] = swift_task_alloc();
  v13 = sub_221FB5C38();
  v3[88] = v13;
  v14 = *(v13 - 8);
  v3[89] = v14;
  v15 = *(v14 + 64) + 15;
  v3[90] = swift_task_alloc();
  v16 = sub_221FB60A8();
  v3[91] = v16;
  v17 = *(v16 - 8);
  v3[92] = v17;
  v18 = *(v17 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F49F1C, 0, 0);
}

uint64_t sub_221F49F1C()
{
  v37 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[77];
  v2 = sub_221FB61D8();
  v0[96] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD00000000000002BLL, 0x8000000221FC38C0);
  v3 = [v1 fromID];
  if (!v3)
  {
    sub_221FB6318();
    v3 = sub_221FB62E8();
  }

  v4 = v0[95];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[76];
  v8 = ASSanitizedContactDestination();

  v9 = sub_221FB6318();
  v11 = v10;

  v0[97] = v9;
  v0[98] = v11;
  v12 = *(v5 + 16);
  v12(v4, v7, v6);

  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[95];
  if (v15)
  {
    v17 = v0[94];
    v34 = v14;
    v18 = v0[92];
    v35 = v9;
    v19 = v0[91];
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v20 = 136315394;
    v12(v17, v16, v19);
    v21 = sub_221FB6328();
    v23 = v22;
    v24 = *(v18 + 8);
    v25 = v19;
    v9 = v35;
    v24(v16, v25);
    v26 = sub_221EF4114(v21, v23, &v36);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221EF4114(v35, v11, &v36);
    _os_log_impl(&dword_221E93000, v13, v34, "Handling upgrade request: %s, from: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v33, -1, -1);
    MEMORY[0x223DADA80](v20, -1, -1);
  }

  else
  {
    v27 = v0[92];
    v28 = v0[91];

    v24 = *(v27 + 8);
    v24(v16, v28);
  }

  v0[99] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v29 = swift_allocObject();
  v0[100] = v29;
  *(v29 + 16) = xmmword_221FB81A0;
  *(v29 + 32) = v9;
  *(v29 + 40) = v11;

  v30 = swift_task_alloc();
  v0[101] = v30;
  *v30 = v0;
  v30[1] = sub_221F4A2C4;
  v31 = v0[78];

  return sub_221F4EB1C(v29);
}

uint64_t sub_221F4A2C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 808);
  v8 = *v2;
  v3[102] = a1;
  v3[103] = v1;

  if (v1)
  {
    v5 = sub_221F4DF6C;
  }

  else
  {
    v6 = v3[100];

    v5 = sub_221F4A3E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F4A3E4()
{
  v1 = v0[102];
  v2 = v0[96];
  v3 = [v1 relationshipStorage];
  v4 = [v3 primaryRelationship];
  v0[104] = v4;

  v0[73] = v4;
  v5 = [v1 relationshipStorage];
  v6 = [v5 primaryRemoteRelationship];
  v0[105] = v6;

  v7 = v6;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v4;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v4;
    v11[1] = v7;
    v12 = v7;
    v13 = v4;
    _os_log_impl(&dword_221E93000, v8, v9, "Upgrade request for relationships - local: %@, remote: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v14 = v0[103];

  v15 = v4;
  sub_221F4F0C0(v15);
  if (v14)
  {
    v16 = v0[102];
    v17 = v0[98];

    v18 = v0[95];
    v19 = v0[94];
    v20 = v0[93];
    v21 = v0[90];
    v22 = v0[87];
    v23 = v0[86];
    v24 = v0[83];
    v25 = v0[80];

    v26 = v0[1];

    return v26();
  }

  else
  {

    v28 = swift_task_alloc();
    v0[106] = v28;
    *v28 = v0;
    v28[1] = sub_221F4A6CC;
    v29 = v0[78];

    return sub_221F4F810();
  }
}

uint64_t sub_221F4A6CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 848);
  v6 = *v2;
  *(*v2 + 856) = v1;

  if (v1)
  {
    v7 = *(v4 + 784);

    v8 = sub_221F4E54C;
  }

  else
  {
    *(v4 + 1144) = a1 & 1;
    v8 = sub_221F4A800;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F4A800()
{
  if (*(v0 + 1144) == 1)
  {
    v1 = *(v0 + 856);
    v2 = *(v0 + 840);
    v3 = *(v0 + 832);
    v4 = *(v0 + 624);
    v5 = *(v0 + 608);
    v6 = sub_221FB6088();
    sub_221F4FD48(v6, v7, v3, v2);
    v8 = *(v0 + 832);
    if (v1)
    {
      v9 = v1;
      v10 = *(v0 + 784);

      goto LABEL_4;
    }

    v35 = *(v0 + 624);

    v36 = v8;
    LOBYTE(v35) = sub_221F50194(v36);

    if ((v35 & 1) == 0)
    {
      v55 = *(v0 + 832);
      v56 = *(v0 + 624);
      [v55 insertEventWithType_];
      v57 = __swift_project_boxed_opaque_existential_0Tm(v56 + 37, v56[40]);
      v58 = v56[20];
      *(v0 + 864) = v58;
      if (![v55 cloudType])
      {
        v69 = *(v0 + 832);
        v70 = *__swift_project_boxed_opaque_existential_0Tm(v57 + 6, v57[9]);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 592;
        *(v0 + 24) = sub_221F4AF00;
        v71 = swift_continuation_init();
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
        *(v0 + 872) = v72;
        *(v0 + 328) = v72;
        *(v0 + 272) = MEMORY[0x277D85DD0];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_221EF4C50;
        *(v0 + 296) = &block_descriptor_41;
        *(v0 + 304) = v71;
        [v70 saveRelationship:v69 contact:0 cloudKitGroup:v58 activity:0 completion:v0 + 272];
        v26 = v0 + 16;

        return MEMORY[0x282200938](v26);
      }

      v59 = *(v0 + 768);
      v60 = *(v0 + 832);
      v61 = sub_221FB61B8();
      v62 = sub_221FB65A8();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 832);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        *(v64 + 4) = v63;
        *v65 = v63;
        v66 = v63;
        _os_log_impl(&dword_221E93000, v61, v62, "Attempting to save secure cloud relationship to legacy container %@", v64, 0xCu);
        sub_221EA0558(v65);
        MEMORY[0x223DADA80](v65, -1, -1);
        MEMORY[0x223DADA80](v64, -1, -1);
      }

      v8 = *(v0 + 832);
      v67 = *(v0 + 784);

      sub_221EA4994();
      v9 = swift_allocError();
      *v68 = 11;
      swift_willThrow();
LABEL_4:

      v11 = *(v0 + 832);
      *(v0 + 1120) = v11;
      *(v0 + 1112) = v9;
      v12 = *(v0 + 768);
      v13 = v9;
      v14 = sub_221FB61B8();
      v15 = sub_221FB65A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v9;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_221E93000, v14, v15, "Failed to handle upgrade request: %@", v16, 0xCu);
        sub_221EA0558(v17);
        MEMORY[0x223DADA80](v17, -1, -1);
        MEMORY[0x223DADA80](v16, -1, -1);
      }

      v20 = v9;
      v21 = v9;
      v22 = sub_221FB5A98();
      v23 = [v22 domain];

      if (!v23)
      {
        sub_221FB6318();
        v23 = sub_221FB62E8();
      }

      v24 = sub_221FB5A98();
      v25 = [v24 code];

      v26 = sub_221FB62E8();
      if (v25 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v25 <= 0x7FFFFFFF)
      {
        v27 = v26;
        ASAnalyticsReportAddManateeContainer();

        v28 = v11;
        v29 = swift_task_alloc();
        *(v0 + 1128) = v29;
        *v29 = v0;
        v29[1] = sub_221F4E050;
        v30 = *(v0 + 624);

        return sub_221F48844(v28);
      }

      __break(1u);
      return MEMORY[0x282200938](v26);
    }

    v37 = *(v0 + 784);
    v38 = *(v0 + 768);

    v39 = sub_221FB61B8();
    v40 = sub_221FB65A8();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 840);
    v43 = *(v0 + 832);
    v44 = *(v0 + 816);
    if (v41)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_221E93000, v39, v40, "Already handling an upgrade request", v45, 2u);
      MEMORY[0x223DADA80](v45, -1, -1);
    }

    v46 = *(v0 + 760);
    v47 = *(v0 + 752);
    v48 = *(v0 + 744);
    v49 = *(v0 + 720);
    v50 = *(v0 + 696);
    v51 = *(v0 + 688);
    v52 = *(v0 + 664);
    v53 = *(v0 + 640);

    v54 = *(v0 + 8);

    return v54();
  }

  else
  {
    v32 = *(v0 + 784);

    v33 = swift_task_alloc();
    *(v0 + 1096) = v33;
    *v33 = v0;
    v33[1] = sub_221F4DBBC;
    v34 = *(v0 + 624);

    return sub_221F4F410();
  }
}

uint64_t sub_221F4AF00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 880) = v2;
  if (v2)
  {
    v3 = sub_221F4B250;
  }

  else
  {
    v3 = sub_221F4B010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4B010()
{
  v1 = v0[104];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[74];
  v0[111] = v4;

  swift_beginAccess();
  v0[73] = v4;

  __swift_project_boxed_opaque_existential_0Tm((v2 + 336), *(v2 + 360));
  v5 = sub_221FB6068();
  v0[112] = v5;
  v6 = swift_task_alloc();
  v0[113] = v6;
  *v6 = v0;
  v6[1] = sub_221F4B100;
  v7 = v0[108];

  return sub_221E98A68(v5, v7);
}

uint64_t sub_221F4B100(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 904);
  v6 = *v2;
  v4[114] = a1;
  v4[115] = v1;

  v7 = v3[112];
  if (v1)
  {
    v8 = v4[98];

    v9 = sub_221F4B6F4;
  }

  else
  {

    v9 = sub_221F4B4DC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F4B250()
{
  v1 = v0[110];
  v2 = v0[104];
  v3 = v0[98];
  swift_willThrow();

  v4 = v0[110];
  v5 = v0[104];
  v0[140] = v5;
  v0[139] = v4;
  v6 = v0[96];
  v7 = v4;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to handle upgrade request: %@", v10, 0xCu);
    sub_221EA0558(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v14 = v4;
  v15 = v4;
  v16 = sub_221FB5A98();
  v17 = [v16 domain];

  if (!v17)
  {
    sub_221FB6318();
    v17 = sub_221FB62E8();
  }

  v18 = sub_221FB5A98();
  v19 = [v18 code];

  result = sub_221FB62E8();
  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = result;
  ASAnalyticsReportAddManateeContainer();

  v22 = v5;
  v23 = swift_task_alloc();
  v0[141] = v23;
  *v23 = v0;
  v23[1] = sub_221F4E050;
  v24 = v0[78];

  return sub_221F48844(v22);
}

uint64_t sub_221F4B4DC()
{
  v1 = *(v0 + 888);
  v2 = swift_task_alloc();
  *(v0 + 928) = v2;
  *v2 = v0;
  v2[1] = sub_221F4B58C;
  v3 = *(v0 + 888);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 624);

  return sub_221F48E68(v5, v4, v3, 0);
}

uint64_t sub_221F4B58C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 928);
  v6 = *v2;
  *(v4 + 936) = a1;
  *(v4 + 944) = v1;

  v7 = *(v3 + 888);
  v8 = *(v3 + 784);
  if (v1)
  {

    v9 = sub_221F4E7B4;
  }

  else
  {

    v9 = sub_221F4B95C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F4B6F4()
{
  v1 = v0[115];
  v2 = v0[111];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v0[96];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade request: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = v2;
  v20 = swift_task_alloc();
  v0[141] = v20;
  *v20 = v0;
  v20[1] = sub_221F4E050;
  v21 = v0[78];

  return sub_221F48844(v19);
}

uint64_t sub_221F4B95C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 624);
  v3 = [*(v0 + 816) relationshipStorage];
  v4 = [v3 secureCloudRelationship];
  *(v0 + 952) = v4;

  v5 = v4;
  [v5 setRemoteRelationshipZoneShareID_];
  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 296), *(v2 + 320));
  if ([v5 cloudType] == 1)
  {
    v7 = [v5 secureCloudZoneName];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    v9 = *(v0 + 768);
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    v10 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    v15 = sub_221FB65D8();
    v11 = [v5 recordWithZoneID:v15 recordEncryptionType:1];
    *(v0 + 960) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221FB81B0;
    *(v12 + 32) = v11;
    v13 = v11;
    v14 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v2 = sub_221FB61B8();
    LOBYTE(v15) = sub_221FB65C8();
    if (!os_log_type_enabled(v2, v15))
    {
LABEL_6:
      v20 = *(v0 + 864);

      v21 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 11, v6[14]);
      *(v0 + 968) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v22 = sub_221FB6428();
      *(v0 + 976) = v22;

      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v23 = sub_221FB6428();
      *(v0 + 984) = v23;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 552;
      *(v0 + 88) = sub_221F4C078;
      v24 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_221EBA78C;
      *(v0 + 360) = &block_descriptor_46;
      *(v0 + 368) = v24;
      [v21 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v22 recordIDsToDelete:v23 priority:2 activity:0 useZoneWideSharing:1 group:v20 completion:v0 + 336];
      v7 = (v0 + 80);

      return MEMORY[0x282200938](v7);
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = v14 >> 62;
    if (!(v14 >> 62))
    {
LABEL_5:
      *(v16 + 4) = v17;
      v18 = v15;
      v19 = v16;
      _os_log_impl(&dword_221E93000, v2, v18, "Pushing relationship to iCloud with %ld extra records", v16, 0xCu);
      MEMORY[0x223DADA80](v19, -1, -1);
      goto LABEL_6;
    }

LABEL_22:
    v52 = v16;
    v17 = sub_221FB6868();
    v16 = v52;
    goto LABEL_5;
  }

  v25 = *(v0 + 768);
  v26 = v5;
  v27 = sub_221FB61B8();
  v28 = sub_221FB65A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v2 = v26;
    v30 = v26;
    _os_log_impl(&dword_221E93000, v27, v28, "Attempting to save legacy relationship to secure cloud container %@", v29, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v29, -1, -1);
  }

  sub_221EA4994();
  v6 = swift_allocError();
  *v31 = 11;
  swift_willThrow();
  v32 = *(v0 + 952);
  v33 = *(v0 + 936);

  v34 = *(v0 + 888);
  *(v0 + 1120) = v34;
  *(v0 + 1112) = v6;
  v35 = *(v0 + 768);
  v36 = v6;
  v37 = sub_221FB61B8();
  v38 = sub_221FB65A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v39 = 138412290;
    v40 = v6;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v2 = v41;
    _os_log_impl(&dword_221E93000, v37, v38, "Failed to handle upgrade request: %@", v39, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v39, -1, -1);
  }

  v42 = v6;
  v43 = v6;
  v44 = sub_221FB5A98();
  v15 = [v44 domain];

  if (!v15)
  {
    sub_221FB6318();
    v15 = sub_221FB62E8();
  }

  v45 = sub_221FB5A98();
  v46 = [v45 code];

  v16 = sub_221FB62E8();
  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v47 = v16;
  ASAnalyticsReportAddManateeContainer();

  v48 = v34;
  v49 = swift_task_alloc();
  *(v0 + 1128) = v49;
  *v49 = v0;
  v49[1] = sub_221F4E050;
  v50 = *(v0 + 624);

  return sub_221F48844(v48);
}

uint64_t sub_221F4C078()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 992) = v2;
  if (v2)
  {
    v3 = sub_221F4C188;
  }

  else
  {
    v3 = sub_221F4C434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4C188()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 960);
  swift_willThrow();

  v5 = *(v0 + 992);
  v6 = *(v0 + 952);
  v7 = *(v0 + 936);

  v8 = *(v0 + 888);
  *(v0 + 1120) = v8;
  *(v0 + 1112) = v5;
  v9 = *(v0 + 768);
  v10 = v5;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_221E93000, v11, v12, "Failed to handle upgrade request: %@", v13, 0xCu);
    sub_221EA0558(v14);
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v17 = v5;
  v18 = v5;
  v19 = sub_221FB5A98();
  v20 = [v19 domain];

  if (!v20)
  {
    sub_221FB6318();
    v20 = sub_221FB62E8();
  }

  v21 = sub_221FB5A98();
  v22 = [v21 code];

  result = sub_221FB62E8();
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v24 = result;
  ASAnalyticsReportAddManateeContainer();

  v25 = v8;
  v26 = swift_task_alloc();
  *(v0 + 1128) = v26;
  *v26 = v0;
  v26[1] = sub_221F4E050;
  v27 = *(v0 + 624);

  return sub_221F48844(v25);
}

uint64_t sub_221F4C434()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[78];
  v0[125] = v0[70];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 296), *(v6 + 320));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v10 = sub_221FB64E8();
  v0[126] = v10;

  v0[18] = v0;
  v0[23] = v0 + 71;
  v0[19] = sub_221F4C60C;
  v11 = swift_continuation_init();
  v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_221EBCB58;
  v0[53] = &block_descriptor_49_0;
  v0[54] = v11;
  [v8 handleSavedRecords:v10 forContact:0 completion:v0 + 50];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F4C60C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1016) = v2;
  if (v2)
  {
    v3 = sub_221F4CD8C;
  }

  else
  {
    v3 = sub_221F4C71C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4C71C()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 952);
  v4 = *(v0 + 912);
  v5 = *(v0 + 768);
  v6 = *(v0 + 576);
  *(v0 + 1024) = v6;

  v7 = v6;
  v8 = v4;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 912);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v7;
    *v13 = v11;
    v13[1] = v7;
    v14 = v11;
    _os_log_impl(&dword_221E93000, v9, v10, "Saved share identifier: %@ on %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v9 = v7;
  }

  v15 = *(v0 + 888);
  v16 = *(v0 + 720);
  v17 = *(v0 + 712);
  v18 = *(v0 + 704);
  v19 = *(v0 + 624);

  sub_221FB5C28();
  *(v0 + 1032) = sub_221FB5BE8();
  *(v0 + 1040) = v20;
  v21 = *(v17 + 8);
  *(v0 + 1048) = v21;
  *(v0 + 1056) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v16, v18);
  v22 = v15;
  v23 = sub_221FB62E8();
  [v22 setSecureCloudUpgradeToken_];

  [v22 insertEventWithType_];
  v24 = __swift_project_boxed_opaque_existential_0Tm((v19 + 296), *(v19 + 320));
  if (![v22 cloudType])
  {
    v60 = *(v0 + 888);
    v61 = *(v0 + 872);
    v62 = *(v0 + 864);
    v63 = *__swift_project_boxed_opaque_existential_0Tm(v24 + 6, v24[9]);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 600;
    *(v0 + 216) = sub_221F4D030;
    v64 = swift_continuation_init();
    *(v0 + 520) = v61;
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_221EF4C50;
    *(v0 + 488) = &block_descriptor_52_0;
    *(v0 + 496) = v64;
    [v63 saveRelationship:v60 contact:0 cloudKitGroup:v62 activity:0 completion:v0 + 464];
    v54 = v0 + 208;

    return MEMORY[0x282200938](v54);
  }

  v25 = *(v0 + 768);
  v26 = *(v0 + 888);
  v27 = sub_221FB61B8();
  v28 = sub_221FB65A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 888);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v29;
    *v31 = v29;
    v32 = v29;
    _os_log_impl(&dword_221E93000, v27, v28, "Attempting to save secure cloud relationship to legacy container %@", v30, 0xCu);
    sub_221EA0558(v31);
    MEMORY[0x223DADA80](v31, -1, -1);
    MEMORY[0x223DADA80](v30, -1, -1);
  }

  sub_221EA4994();
  v33 = swift_allocError();
  *v34 = 11;
  swift_willThrow();
  v35 = *(v0 + 1040);
  v36 = *(v0 + 936);
  v37 = *(v0 + 912);
  v38 = *(v0 + 888);

  v39 = *(v0 + 888);
  *(v0 + 1120) = v39;
  *(v0 + 1112) = v33;
  v40 = *(v0 + 768);
  v41 = v33;
  v42 = sub_221FB61B8();
  v43 = sub_221FB65A8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = v33;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v47;
    *v45 = v47;
    _os_log_impl(&dword_221E93000, v42, v43, "Failed to handle upgrade request: %@", v44, 0xCu);
    sub_221EA0558(v45);
    MEMORY[0x223DADA80](v45, -1, -1);
    MEMORY[0x223DADA80](v44, -1, -1);
  }

  v48 = v33;
  v49 = v33;
  v50 = sub_221FB5A98();
  v51 = [v50 domain];

  if (!v51)
  {
    sub_221FB6318();
    v51 = sub_221FB62E8();
  }

  v52 = sub_221FB5A98();
  v53 = [v52 code];

  v54 = sub_221FB62E8();
  if (v53 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v53 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282200938](v54);
  }

  v55 = v54;
  ASAnalyticsReportAddManateeContainer();

  v56 = v39;
  v57 = swift_task_alloc();
  *(v0 + 1128) = v57;
  *v57 = v0;
  v57[1] = sub_221F4E050;
  v58 = *(v0 + 624);

  return sub_221F48844(v56);
}

uint64_t sub_221F4CD8C()
{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[119];
  v5 = v0[117];
  v6 = v0[114];
  swift_willThrow();

  v7 = v0[127];
  v8 = v0[111];
  v0[140] = v8;
  v0[139] = v7;
  v9 = v0[96];
  v10 = v7;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_221E93000, v11, v12, "Failed to handle upgrade request: %@", v13, 0xCu);
    sub_221EA0558(v14);
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v17 = v7;
  v18 = v7;
  v19 = sub_221FB5A98();
  v20 = [v19 domain];

  if (!v20)
  {
    sub_221FB6318();
    v20 = sub_221FB62E8();
  }

  v21 = sub_221FB5A98();
  v22 = [v21 code];

  result = sub_221FB62E8();
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v24 = result;
  ASAnalyticsReportAddManateeContainer();

  v25 = v8;
  v26 = swift_task_alloc();
  v0[141] = v26;
  *v26 = v0;
  v26[1] = sub_221F4E050;
  v27 = v0[78];

  return sub_221F48844(v25);
}

uint64_t sub_221F4D030()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1064) = v2;
  if (v2)
  {
    v3 = sub_221F4D44C;
  }

  else
  {
    v3 = sub_221F4D140;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4D140()
{
  v20 = v0[131];
  v21 = v0[132];
  v22 = v0[129];
  v23 = v0[130];
  v1 = v0[117];
  v2 = v0[111];
  v3 = v0[90];
  v17 = v0[88];
  v18 = v0[93];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[82];
  v16 = v0[81];
  v19 = v0[78];
  v0[134] = v0[75];

  sub_221FB5BB8();
  (*(v6 + 104))(v5, *MEMORY[0x277CE9418], v7);
  v10 = v1;
  sub_221FB60B8();
  sub_221FB60C8();
  (*(v9 + 8))(v8, v16);
  sub_221FB5C28();
  sub_221FB5BE8();
  v20(v3, v17);
  sub_221FB6098();
  v11 = *__swift_project_boxed_opaque_existential_0Tm((v19 + 216), *(v19 + 240));
  v12 = swift_task_alloc();
  v0[135] = v12;
  *v12 = v0;
  v12[1] = sub_221F4D338;
  v13 = v0[93];
  v14 = v0[77];

  return sub_221FA8C90(v14, v13, 1109);
}

uint64_t sub_221F4D338()
{
  v2 = *(*v1 + 1080);
  v5 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_221F4D914;
  }

  else
  {
    v3 = sub_221F4D6F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4D44C()
{
  v1 = *(v0 + 1064);
  swift_willThrow();
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 936);
  v5 = *(v0 + 912);
  v6 = *(v0 + 888);

  v7 = *(v0 + 888);
  *(v0 + 1120) = v7;
  *(v0 + 1112) = v2;
  v8 = *(v0 + 768);
  v9 = v2;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221E93000, v10, v11, "Failed to handle upgrade request: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v16 = v2;
  v17 = v2;
  v18 = sub_221FB5A98();
  v19 = [v18 domain];

  if (!v19)
  {
    sub_221FB6318();
    v19 = sub_221FB62E8();
  }

  v20 = sub_221FB5A98();
  v21 = [v20 code];

  result = sub_221FB62E8();
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = result;
  ASAnalyticsReportAddManateeContainer();

  v24 = v7;
  v25 = swift_task_alloc();
  *(v0 + 1128) = v25;
  *v25 = v0;
  v25[1] = sub_221F4E050;
  v26 = *(v0 + 624);

  return sub_221F48844(v24);
}

uint64_t sub_221F4D6F0()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 1072);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1072);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v32 = v3;
    _os_log_impl(&dword_221E93000, v3, v4, "Upgraded relationship: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
    v8 = (v0 + 1024);
    v9 = (v0 + 936);
    v10 = (v0 + 912);
    v11 = (v0 + 840);
    v12 = (v0 + 816);
  }

  else
  {
    v11 = (v0 + 1072);

    v9 = (v0 + 1024);
    v32 = *(v0 + 936);
    v12 = (v0 + 912);
    v8 = (v0 + 840);
    v10 = (v0 + 816);
  }

  v13 = *v12;
  v14 = *v9;
  v15 = *v10;
  v16 = *v11;
  v17 = *(v0 + 1072);
  v18 = *(v0 + 792);
  v19 = *(v0 + 744);
  v20 = *(v0 + 736);
  v21 = *(v0 + 728);

  v18(v19, v21);
  v22 = *(v0 + 760);
  v23 = *(v0 + 752);
  v24 = *(v0 + 744);
  v25 = *(v0 + 720);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 664);
  v29 = *(v0 + 640);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_221F4D914()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 912);
  v3 = *(v0 + 792);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);

  v3(v4, v6);
  v7 = *(v0 + 1088);
  v8 = *(v0 + 1072);
  *(v0 + 1120) = v8;
  *(v0 + 1112) = v7;
  v9 = *(v0 + 768);
  v10 = v7;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_221E93000, v11, v12, "Failed to handle upgrade request: %@", v13, 0xCu);
    sub_221EA0558(v14);
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  v17 = v7;
  v18 = v7;
  v19 = sub_221FB5A98();
  v20 = [v19 domain];

  if (!v20)
  {
    sub_221FB6318();
    v20 = sub_221FB62E8();
  }

  v21 = sub_221FB5A98();
  v22 = [v21 code];

  result = sub_221FB62E8();
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v24 = result;
  ASAnalyticsReportAddManateeContainer();

  v25 = v8;
  v26 = swift_task_alloc();
  *(v0 + 1128) = v26;
  *v26 = v0;
  v26[1] = sub_221F4E050;
  v27 = *(v0 + 624);

  return sub_221F48844(v25);
}

uint64_t sub_221F4DBBC()
{
  v2 = *(*v1 + 1096);
  v5 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v3 = sub_221F4E2E4;
  }

  else
  {
    v3 = sub_221F4DCD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4DCD0()
{
  sub_221EA4994();
  v1 = swift_allocError();
  *v2 = 18;
  swift_willThrow();
  v3 = v0[104];
  v0[140] = v3;
  v0[139] = v1;
  v4 = v0[96];
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to handle upgrade request: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = v1;
  v13 = v1;
  v14 = sub_221FB5A98();
  v15 = [v14 domain];

  if (!v15)
  {
    sub_221FB6318();
    v15 = sub_221FB62E8();
  }

  v16 = sub_221FB5A98();
  v17 = [v16 code];

  result = sub_221FB62E8();
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  ASAnalyticsReportAddManateeContainer();

  v20 = v3;
  v21 = swift_task_alloc();
  v0[141] = v21;
  *v21 = v0;
  v21[1] = sub_221F4E050;
  v22 = v0[78];

  return sub_221F48844(v20);
}

uint64_t sub_221F4DF6C()
{
  v1 = v0[100];
  v2 = v0[98];

  v3 = v0[103];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[80];

  v12 = v0[1];

  return v12();
}

uint64_t sub_221F4E050()
{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v6 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v4 = sub_221F4EA24;
  }

  else
  {

    v4 = sub_221F4E16C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F4E16C()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[105];
  v4 = v0[102];
  v5 = v0[80];
  v6 = v0[79];
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v9 = v8;
  sub_221EA4A40(v5, v8);
  *(v9 + *(v7 + 20)) = v2;
  swift_willThrow();

  v10 = v0[95];
  v11 = v0[94];
  v12 = v0[93];
  v13 = v0[90];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[83];
  v17 = v0[80];

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F4E2E4()
{
  v1 = v0[138];
  v2 = v0[104];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v0[96];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade request: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = v2;
  v20 = swift_task_alloc();
  v0[141] = v20;
  *v20 = v0;
  v20[1] = sub_221F4E050;
  v21 = v0[78];

  return sub_221F48844(v19);
}

uint64_t sub_221F4E54C()
{
  v1 = v0[107];
  v2 = v0[104];
  v0[140] = v2;
  v0[139] = v1;
  v3 = v0[96];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade request: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = v2;
  v20 = swift_task_alloc();
  v0[141] = v20;
  *v20 = v0;
  v20[1] = sub_221F4E050;
  v21 = v0[78];

  return sub_221F48844(v19);
}

uint64_t sub_221F4E7B4()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 888);
  *(v0 + 1120) = v2;
  *(v0 + 1112) = v1;
  v3 = *(v0 + 768);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade request: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = v2;
  v20 = swift_task_alloc();
  *(v0 + 1128) = v20;
  *v20 = v0;
  v20[1] = sub_221F4E050;
  v21 = *(v0 + 624);

  return sub_221F48844(v19);
}

uint64_t sub_221F4EA24()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[105];
  v4 = v0[102];

  v5 = v0[142];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[83];
  v13 = v0[80];

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F4EB1C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for IDSErrorAction(0);
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F4EBB0, 0, 0);
}

uint64_t sub_221F4EBB0()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 15, v1[18]);
  v3 = v1[20];
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221F4ECF4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_33_0;
  v0[14] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F4ECF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_221F4EFB0;
  }

  else
  {
    v3 = sub_221F4EE04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4EE04()
{
  v1 = v0[18];
  v2 = *(v0[19] + 168);
  v3 = sub_221FB6428();
  v4 = [v2 contactWithDestinations_];

  v5 = v0[21];
  if (v4)
  {

    v6 = v0[1];

    return v6(v4);
  }

  else
  {
    v8 = v0[20];
    v9 = v0[21];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v10 = swift_allocError();
    *v11 = 21;
    v12 = type metadata accessor for IDSError(0);
    sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v14 = v13;
    sub_221EA4A40(v9, v13);
    v15 = v0[21];
    *(v14 + *(v12 + 20)) = v10;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_221F4EFB0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v6 = v5;
  sub_221EA4A40(v1, v5);
  v7 = v0[21];
  *(v6 + *(v4 + 20)) = v0[22];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F4F0C0(void *a1)
{
  v2 = type metadata accessor for IDSErrorAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = a1;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (!os_log_type_enabled(v8, v9))
    {
      v13 = 11;
      goto LABEL_14;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_221E93000, v8, v9, "Invalid cloud type for relationship: %@", v10, 0xCu);
    v13 = 11;
  }

  else
  {
    result = [a1 secureCloudUpgradeCompleted];
    if ((result & 1) == 0)
    {
      return result;
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v15 = sub_221FB61D8();
    __swift_project_value_buffer(v15, qword_281307DF0);
    v16 = a1;
    v8 = sub_221FB61B8();
    v17 = sub_221FB65A8();

    if (!os_log_type_enabled(v8, v17))
    {
      v13 = 17;
      goto LABEL_14;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v16;
    *v11 = v16;
    v18 = v16;
    _os_log_impl(&dword_221E93000, v8, v17, "Relationship already upgraded: %@", v10, 0xCu);
    v13 = 17;
  }

  sub_221EA0558(v11);
  MEMORY[0x223DADA80](v11, -1, -1);
  MEMORY[0x223DADA80](v10, -1, -1);
LABEL_14:

  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v19 = swift_allocError();
  *v20 = v13;
  v21 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v23 = v22;
  sub_221EA4A40(v5, v22);
  *(v23 + *(v21 + 20)) = v19;
  return swift_willThrow();
}

uint64_t sub_221F4F430()
{
  v1 = [*(v0[2] + 168) contacts];
  if (v1)
  {
    v2 = v1;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v3 = sub_221FB64F8();
    v0[3] = v3;

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_221F4F634;
    v5 = v0[2];

    return sub_221F43BB0(v3, 0);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_221E93000, v8, v9, "No contact to update availability", v10, 2u);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_221F4F634()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_221F4F7AC;
  }

  else
  {
    v3 = sub_221F4F748;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F4F748()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F4F7AC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_221F4F830()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[4] + 80), *(v0[4] + 104));
  v2 = *v1;
  *(v1 + 8);
  v3 = sub_221FB62E8();

  v4 = [v2 installStateForBundleIdentifier_];

  if (v4 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_221F4FA44;

    return sub_221EF490C();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_221E93000, v8, v9, "App not installed to handle upgrade message", v10, 2u);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_221F4FA44(__int16 a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F4FB7C, 0, 0);
  }
}

uint64_t sub_221F4FB7C()
{
  v12 = v0;
  v1 = *(v0 + 48);
  if (v1 != 517)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DF0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 50) = v5;
      sub_221FB6A08();
      v8 = sub_221EF4114(*(v0 + 16), *(v0 + 24), &v11);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_221E93000, v3, v4, "Invalid account info for upgrade request: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }
  }

  v9 = *(v0 + 8);

  return v9(v1 == 517);
}

uint64_t sub_221F4FD48(uint64_t a1, unint64_t a2, id a3, void *a4)
{
  if (![a3 isFriendshipActive])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v15 = sub_221FB61D8();
    __swift_project_value_buffer(v15, qword_281307DF0);
    v16 = a3;
    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_221E93000, v17, v18, "Attempting to upgrade inactive friendship: %@", v19, 0xCu);
      sub_221EA0558(v20);
      MEMORY[0x223DADA80](v20, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v23 = 8;
LABEL_29:
    *v22 = v23;
    return swift_willThrow();
  }

  v9 = *(v4 + 456);
  v10 = *(v4 + 457);
  v11 = *(v4 + 464);
  result = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  if ((result & 1) == 0)
  {
    if (v10)
    {
      return result;
    }

    goto LABEL_14;
  }

  UserDefaultsKeys.rawValue.getter();
  v13 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v11);

  if (v13 == 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
LABEL_14:
    v24 = [a4 secureCloudUpgradeToken];
    if (v24)
    {
      v25 = v24;
      v26 = sub_221FB6318();
      v28 = v27;

      if (v26 == a1 && v28 == a2)
      {
      }

      v30 = sub_221FB6B58();

      if (v30)
      {
        return result;
      }
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v31 = sub_221FB61D8();
    __swift_project_value_buffer(v31, qword_281307DF0);

    v32 = a4;
    v33 = sub_221FB61B8();
    v34 = sub_221FB65A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_221EF4114(a1, a2, &v42);
      *(v35 + 12) = 2080;
      v37 = [v32 secureCloudUpgradeToken];
      if (v37)
      {
        v38 = v37;
        sub_221FB6318();

        sub_221FB6A08();

        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v40 = 0xE300000000000000;
        v39 = 7104878;
      }

      v41 = sub_221EF4114(v39, v40, &v42);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_221E93000, v33, v34, "Invalid upgrade token (request: %s, cloud: %s)", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v36, -1, -1);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    v23 = 15;
    goto LABEL_29;
  }

  return result;
}

id sub_221F50194(void *a1)
{
  v2 = v1;
  v4 = sub_221FB5BC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-v13];
  sub_221FB5BB8();
  sub_221FB5B28();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v14, v4);
  result = [a1 hasIncomingSecureCloudUpgradeRequest];
  if (result)
  {
    result = [a1 dateForLatestIncomingUpgradeRequest];
    if (result)
    {
      v19 = result;
      sub_221FB5B98();

      (*(v5 + 32))(v12, v9, v4);
      sub_221FB5B28();
      v21 = v20;
      v22 = *(v2 + 432);
      v23 = *(v2 + 440);
      v24 = *(v2 + 448);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        v28[15] = v22;
        UserDefaultsKeys.rawValue.getter();
        v25 = COERCE_DOUBLE(sub_221EF8934(v24));
        v27 = v26;

        v17(v12, v4);
        if ((v27 & 1) == 0)
        {
          v23 = v25;
        }
      }

      else
      {
        v17(v12, v4);
      }

      return (v16 - v21 < v23);
    }
  }

  return result;
}

uint64_t sub_221F503C8(uint64_t a1, uint64_t a2)
{
  v3[56] = a2;
  v3[57] = v2;
  v3[55] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[58] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v6 = sub_221FB60A8();
  v3[60] = v6;
  v7 = *(v6 - 8);
  v3[61] = v7;
  v8 = *(v7 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F504C8, 0, 0);
}

uint64_t sub_221F504C8()
{
  v54 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = sub_221FB61D8();
  v0[64] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000093, 0x8000000221FC37B0, 0xD000000000000028, 0x8000000221FC3850);
  v3 = [objc_msgSend(v1 destination)];
  swift_unknownObjectRelease();
  v4 = sub_221FB64F8();

  sub_221F058C0(v4);
  v6 = v5;

  if (v6)
  {
    v7 = v0[63];
    v8 = v0[60];
    v9 = v0[61];
    v10 = v0[55];
    v11 = sub_221FB62E8();

    v12 = ASSanitizedContactDestination();

    v13 = sub_221FB6318();
    v15 = v14;

    v16 = *(v9 + 16);
    v16(v7, v10, v8);

    v17 = sub_221FB61B8();
    v18 = sub_221FB65C8();
    v52 = v15;

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[63];
    if (v19)
    {
      v22 = v0[61];
      v21 = v0[62];
      v51 = v13;
      v23 = v0[60];
      v24 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53[0] = v50;
      *v24 = 136315394;
      v16(v21, v20, v23);
      v25 = sub_221FB6328();
      v27 = v26;
      v28 = v23;
      v13 = v51;
      (*(v22 + 8))(v20, v28);
      v29 = sub_221EF4114(v25, v27, v53);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_221EF4114(v51, v52, v53);
      _os_log_impl(&dword_221E93000, v17, v18, "Handling upgrade response: %s, from: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v50, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    else
    {
      v45 = v0[60];
      v46 = v0[61];

      (*(v46 + 8))(v20, v45);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v47 = swift_allocObject();
    v0[65] = v47;
    *(v47 + 16) = xmmword_221FB81A0;
    *(v47 + 32) = v13;
    *(v47 + 40) = v52;
    v48 = swift_task_alloc();
    v0[66] = v48;
    *v48 = v0;
    v48[1] = sub_221F50A28;
    v49 = v0[57];

    return sub_221F4EB1C(v47);
  }

  else
  {
    v30 = sub_221FB61B8();
    v31 = sub_221FB65A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_221E93000, v30, v31, "Failed to find address for upgrade response", v32, 2u);
      MEMORY[0x223DADA80](v32, -1, -1);
    }

    v34 = v0[58];
    v33 = v0[59];

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v35 = swift_allocError();
    *v36 = 48;
    v37 = type metadata accessor for IDSError(0);
    sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v39 = v38;
    sub_221EA4A40(v33, v38);
    *(v39 + *(v37 + 20)) = v35;
    swift_willThrow();
    v41 = v0[62];
    v40 = v0[63];
    v42 = v0[59];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_221F50A28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v8 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v5 = sub_221F5350C;
  }

  else
  {
    v6 = v3[65];

    v5 = sub_221F50B48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F50B48()
{
  v1 = v0[67];
  v2 = v0[64];
  v3 = [v1 relationshipStorage];
  v4 = [v3 primaryRelationship];
  v0[69] = v4;

  v5 = [v1 relationshipStorage];
  v6 = [v5 primaryRemoteRelationship];
  v0[70] = v6;

  v7 = v4;
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v7;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&dword_221E93000, v9, v10, "Upgrade response for relationships - local: %@, remote: %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v0[68];

  sub_221F4F0C0(v7);
  if (v15)
  {
    v16 = v0[67];

    v18 = v0[62];
    v17 = v0[63];
    v19 = v0[59];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[71] = v22;
    *v22 = v0;
    v22[1] = sub_221F50DD4;
    v23 = v0[57];

    return sub_221F4F810();
  }
}

uint64_t sub_221F50DD4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v7 = sub_221F53A34;
  }

  else
  {
    *(v4 + 752) = a1 & 1;
    v7 = sub_221F50F00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F50F00()
{
  if (*(v0 + 752) == 1)
  {
    v1 = *(v0 + 576);
    v2 = *(v0 + 560);
    v3 = *(v0 + 552);
    v4 = *(v0 + 456);
    v5 = *(v0 + 440);
    v6 = sub_221FB6088();
    sub_221F4FD48(v6, v7, v3, v2);
    if (v1)
    {

      *(v0 + 728) = v1;
      v8 = *(v0 + 512);
      v9 = v1;
      v10 = sub_221FB61B8();
      v11 = sub_221FB65A8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v1;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_221E93000, v10, v11, "Failed to handle upgrade response: %@", v12, 0xCu);
        sub_221EA0558(v13);
        MEMORY[0x223DADA80](v13, -1, -1);
        MEMORY[0x223DADA80](v12, -1, -1);
      }

      v16 = v1;
      v17 = v1;
      v18 = sub_221FB5A98();
      v19 = [v18 domain];

      if (!v19)
      {
        sub_221FB6318();
        v19 = sub_221FB62E8();
      }

      v20 = sub_221FB5A98();
      v21 = [v20 code];

      result = sub_221FB62E8();
      if (v21 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v21 <= 0x7FFFFFFF)
      {
        v23 = result;
        ASAnalyticsReportAddManateeContainer();

        v24 = swift_task_alloc();
        *(v0 + 736) = v24;
        *v24 = v0;
        v24[1] = sub_221F53594;
        v25 = *(v0 + 552);
        v26 = *(v0 + 456);

        return sub_221F48844(v25);
      }

      __break(1u);
      return result;
    }

    v29 = *(v0 + 456);
    v30 = *(v0 + 440);

    __swift_project_boxed_opaque_existential_0Tm(v29 + 42, v29[45]);
    v31 = sub_221FB6068();
    *(v0 + 584) = v31;
    v32 = v29[20];
    *(v0 + 592) = v32;
    v33 = swift_task_alloc();
    *(v0 + 600) = v33;
    *v33 = v0;
    v33[1] = sub_221F512C0;

    return sub_221E98A68(v31, v32);
  }

  else
  {
    v27 = swift_task_alloc();
    *(v0 + 712) = v27;
    *v27 = v0;
    v27[1] = sub_221F53178;
    v28 = *(v0 + 456);

    return sub_221F4F410();
  }
}

uint64_t sub_221F512C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 600);
  v6 = *v2;
  *(v4 + 608) = a1;
  *(v4 + 616) = v1;

  if (v1)
  {
    v7 = sub_221F51400;
  }

  else
  {
    v7 = sub_221F51654;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F51400()
{
  v1 = v0[77];
  v0[91] = v1;
  v2 = v0[64];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade response: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = swift_task_alloc();
  v0[92] = v18;
  *v18 = v0;
  v18[1] = sub_221F53594;
  v19 = v0[69];
  v20 = v0[57];

  return sub_221F48844(v19);
}

uint64_t sub_221F51654()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 456);
  v3 = [*(v0 + 536) relationshipStorage];
  v4 = [v3 secureCloudRelationship];
  *(v0 + 624) = v4;

  v5 = v4;
  [v5 setRemoteRelationshipZoneShareID_];
  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 296), *(v2 + 320));
  if ([v5 cloudType] == 1)
  {
    v7 = [v5 secureCloudZoneName];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    v9 = *(v0 + 512);
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    v10 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    v15 = sub_221FB65D8();
    v11 = [v5 recordWithZoneID:v15 recordEncryptionType:1];
    *(v0 + 632) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221FB81B0;
    *(v12 + 32) = v11;
    v13 = v11;
    v14 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v2 = sub_221FB61B8();
    LOBYTE(v15) = sub_221FB65C8();
    if (!os_log_type_enabled(v2, v15))
    {
LABEL_6:
      v20 = *(v0 + 592);

      v21 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 11, v6[14]);
      *(v0 + 640) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v22 = sub_221FB6428();
      *(v0 + 648) = v22;

      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v23 = sub_221FB6428();
      *(v0 + 656) = v23;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 400;
      *(v0 + 24) = sub_221F51D54;
      v24 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_221EBA78C;
      *(v0 + 232) = &block_descriptor_23;
      *(v0 + 240) = v24;
      [v21 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v22 recordIDsToDelete:v23 priority:2 activity:0 useZoneWideSharing:1 group:v20 completion:v0 + 208];
      v7 = (v0 + 16);

      return MEMORY[0x282200938](v7);
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = v14 >> 62;
    if (!(v14 >> 62))
    {
LABEL_5:
      *(v16 + 4) = v17;
      v18 = v15;
      v19 = v16;
      _os_log_impl(&dword_221E93000, v2, v18, "Pushing relationship to iCloud with %ld extra records", v16, 0xCu);
      MEMORY[0x223DADA80](v19, -1, -1);
      goto LABEL_6;
    }

LABEL_22:
    v50 = v16;
    v17 = sub_221FB6868();
    v16 = v50;
    goto LABEL_5;
  }

  v25 = *(v0 + 512);
  v26 = v5;
  v27 = sub_221FB61B8();
  v28 = sub_221FB65A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v2 = v26;
    v30 = v26;
    _os_log_impl(&dword_221E93000, v27, v28, "Attempting to save legacy relationship to secure cloud container %@", v29, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v29, -1, -1);
  }

  sub_221EA4994();
  v6 = swift_allocError();
  *v31 = 11;
  swift_willThrow();

  v32 = *(v0 + 608);
  *(v0 + 728) = v6;
  v33 = *(v0 + 512);
  v34 = v6;
  v35 = sub_221FB61B8();
  v36 = sub_221FB65A8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v37 = 138412290;
    v38 = v6;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v2 = v39;
    _os_log_impl(&dword_221E93000, v35, v36, "Failed to handle upgrade response: %@", v37, 0xCu);
    sub_221EA0558(v2);
    MEMORY[0x223DADA80](v2, -1, -1);
    MEMORY[0x223DADA80](v37, -1, -1);
  }

  v40 = v6;
  v41 = v6;
  v42 = sub_221FB5A98();
  v15 = [v42 domain];

  if (!v15)
  {
    sub_221FB6318();
    v15 = sub_221FB62E8();
  }

  v43 = sub_221FB5A98();
  v44 = [v43 code];

  v16 = sub_221FB62E8();
  if (v44 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v44 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = v16;
  ASAnalyticsReportAddManateeContainer();

  v46 = swift_task_alloc();
  *(v0 + 736) = v46;
  *v46 = v0;
  v46[1] = sub_221F53594;
  v47 = *(v0 + 552);
  v48 = *(v0 + 456);

  return sub_221F48844(v47);
}