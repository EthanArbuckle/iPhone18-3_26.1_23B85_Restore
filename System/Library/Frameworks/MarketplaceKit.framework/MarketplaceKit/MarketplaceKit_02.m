unint64_t sub_1D9614C64()
{
  result = qword_1ECB217C8;
  if (!qword_1ECB217C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217C8);
  }

  return result;
}

unint64_t sub_1D9614CB8()
{
  result = qword_1ECB20B98;
  if (!qword_1ECB20B98)
  {
    type metadata accessor for MarketplaceKitError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B98);
  }

  return result;
}

unint64_t sub_1D9614D14()
{
  result = qword_1ECB217D8;
  if (!qword_1ECB217D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217D8);
  }

  return result;
}

unint64_t sub_1D9614D8C()
{
  result = qword_1ECB217E0;
  if (!qword_1ECB217E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217E0);
  }

  return result;
}

unint64_t sub_1D9614DE4()
{
  result = qword_1ECB217E8;
  if (!qword_1ECB217E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217E8);
  }

  return result;
}

unint64_t sub_1D9614E3C()
{
  result = qword_1ECB217F0;
  if (!qword_1ECB217F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB217F0);
  }

  return result;
}

uint64_t sub_1D9614E90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1D9614FEC()
{
  result = sub_1D96184E0();
  off_1EDCF66B8 = result;
  return result;
}

void sub_1D961500C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 32));
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;

  v4 = *(a2 + 24);
  *(a2 + 24) = 0;

  os_unfair_lock_unlock((a2 + 32));
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_1D966E988();
  [v5 postNotificationName:v6 object:0];
}

uint64_t sub_1D96150EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1D961515C()
{
  if (qword_1EDCF66B0 != -1)
  {
    swift_once();
  }

  v1 = off_1EDCF66B8;
  *(v0 + 96) = off_1EDCF66B8;
  os_unfair_lock_lock(v1 + 8);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0x2000000000000000;
    *(v0 + 64) = 1;
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1D9615310;

    return (sub_1D95EEF68)(v0 + 72, v0 + 16, sub_1D962B900, 0);
  }
}

uint64_t sub_1D9615310()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D96155CC;
  }

  else
  {
    v3 = sub_1D9615424;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D9615424()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 3)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    *(swift_task_alloc() + 16) = v1;
    sub_1D96181D8(v1, v2, 3u);
    sub_1D96181D8(v1, v2, 3u);
    sub_1D96181D8(v1, v2, 3u);
    os_unfair_lock_lock((v5 + 32));
    sub_1D96181C0((v5 + 16));
    v6 = (*(v0 + 96) + 32);
    if (v4)
    {

      os_unfair_lock_unlock(v6);
      return;
    }

    os_unfair_lock_unlock(v6);
    sub_1D95FD1C4(v1, v2, 3u);
    sub_1D95FD1C4(v1, v2, 3u);

    sub_1D95FD1C4(v1, v2, 3u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v1, v2, v3);

    v1 = &unk_1F54F2130;
  }

  v8 = *(v0 + 8);

  v8(v1);
}

uint64_t sub_1D96155CC()
{
  v1 = *(v0 + 8);

  return v1(&unk_1F54F2130);
}

uint64_t sub_1D9615654()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D9615770;

  return (sub_1D95EFB10)(v0 + 16, sub_1D9615864, 0);
}

uint64_t sub_1D9615770()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *static AppDistributor.synchronousDistributorPriorityList.getter()
{
  if (qword_1EDCF66B0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDCF66B8;
  os_unfair_lock_lock(off_1EDCF66B8 + 8);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    v9 = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0x2000000000000000;
    v13 = 1;
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v2 = sub_1D95EBB94(&v9, sub_1D962B914, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8 == 3)
    {
      MEMORY[0x1EEE9AC00](v2);
      sub_1D96181D8(v1, v3, 3u);
      sub_1D96181D8(v1, v3, 3u);
      sub_1D96181D8(v1, v3, 3u);
      os_unfair_lock_lock(v0 + 8);
      sub_1D9618818(v0 + 2);
      os_unfair_lock_unlock(v0 + 8);
      sub_1D95FD1C4(v1, v3, 3u);
      sub_1D95FD1C4(v1, v3, 3u);
      sub_1D95FD1C4(v1, v3, 3u);
    }

    else
    {
      type metadata accessor for MarketplaceKitError();
      sub_1D9614CB8();
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D95FD1C4(v1, v3, v4);

      return &unk_1F54F2160;
    }
  }

  return v1;
}

uint64_t static AppDistributor.synchronousAllApprovedDevelopers.getter()
{
  if (qword_1EDCF66B0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDCF66B8;
  os_unfair_lock_lock(off_1EDCF66B8 + 8);
  v1 = *(v0 + 3);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v11 = 0x2000000000000000;
    v12 = 1;
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v2 = sub_1D95EBB94(v9, sub_1D962B914, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8)
    {
      type metadata accessor for MarketplaceKitError();
      sub_1D9614CB8();
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D95FD1C4(v1, v3, v4);

      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      sub_1D96181D8(v1, v3, 0);
      sub_1D96181D8(v1, v3, 0);
      sub_1D96181D8(v1, v3, 0);
      os_unfair_lock_lock(v0 + 8);
      sub_1D9618284(v0 + 16);
      os_unfair_lock_unlock(v0 + 8);
      sub_1D95FD1C4(v1, v3, 0);
      sub_1D95FD1C4(v1, v3, 0);
      sub_1D95FD1C4(v1, v3, 0);
    }
  }

  return v1;
}

uint64_t static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 65) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9615D10, 0, 0);
}

uint64_t sub_1D9615D10()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 65);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 32) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 4;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1D9615E34;

  return (sub_1D95EFB10)(v0 + 16, sub_1D963144C, 0);
}

uint64_t sub_1D9615E34()
{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1D9618830;
  }

  else
  {
    v3 = sub_1D9615F4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9615F4C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AppDistributor.synchronousSetShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 4;
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(&v5, sub_1D9631460, 0);
}

uint64_t static AppDistributor.synchronousShouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x3000000000000000;
  v15 = 0;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D95EBB94(&v10, sub_1D962B914, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 5)
  {
    sub_1D95FD1C4(v8, *(&v8 + 1), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v3, v4, v5);

    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

uint64_t static AppDistributor.shouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D96161F4, 0, 0);
}

uint64_t sub_1D96161F4()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x3000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D961631C;

  return (sub_1D95EEF68)(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D961631C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D9616538;
  }

  else
  {
    v3 = sub_1D9616430;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9616430()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  if (v3 == 5)
  {
    sub_1D95FD1C4(*(v0 + 72), *(v0 + 80), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v1, v2, v3);

    LOBYTE(v1) = 1;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_1D9616538()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_1D96165C4()
{
  if (qword_1EDCF66B0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D9616714;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D9616714()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D9616914;
  }

  else
  {
    v3 = sub_1D9616828;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9616828()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 6)
  {
    sub_1D95FD1C4(*(v0 + 72), *(v0 + 80), 6u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v2, v1, v3);

    LOBYTE(v2) = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2 & 1);
}

uint64_t sub_1D9616914()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AvailableAppMetadataRequest.distributorID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AvailableAppMetadataRequest.init(distributorID:ids:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1D96169BC()
{
  if (*v0)
  {
    result = 7562345;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_1D96169FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9616AE0(uint64_t a1)
{
  v2 = sub_1D96182D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9616B1C(uint64_t a1)
{
  v2 = sub_1D96182D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvailableAppMetadataRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB217F8, &qword_1D96747A8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96182D0();
  sub_1D966F118();
  v17 = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
    sub_1D9618324(&qword_1ECB21810);
    sub_1D966EF68();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t AvailableAppMetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21818, &qword_1D96747B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96182D0();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
  v18 = 1;
  sub_1D9618324(&qword_1ECB21820);
  sub_1D966EE88();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static AppDistributor.availableApp(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9616FC0, 0, 0);
}

uint64_t sub_1D9616FC0()
{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21828, &qword_1D96747C8);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1D9674770;
  *(v3 + 32) = v2;
  v4 = qword_1EDCF6860;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D961710C;
  v7 = v0[4];
  v6 = v0[5];

  return sub_1D95EFF3C(v7, v6, v3, sub_1D96175E0, 0);
}

uint64_t sub_1D961710C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  v6 = *(v3 + 48);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_1D9617280;
  }

  else
  {

    v8 = sub_1D96172A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D9617280()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  *(*(v0 + 16) + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_1D96172A8()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[2];
    if (v1[2])
    {
      v3 = v1[4];
      v4 = v1[5];

      v5 = 0;
      *v2 = v3;
      v2[1] = v4;
      goto LABEL_7;
    }

    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    v6 = v0[2];
    *v6 = 0;
    v6[1] = 0;
  }

  v5 = 1;
LABEL_7:
  *(v0[2] + 16) = v5;
  v7 = v0[1];

  return v7();
}

uint64_t static AppDistributor.availableApps(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9617374, 0, 0);
}

uint64_t sub_1D9617374()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D9617488;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return sub_1D95EFF3C(v6, v5, v7, sub_1D96175E0, 0);
}

uint64_t sub_1D9617488(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  v7 = *(v4 + 32);
  v8 = *(v4 + 16);
  if (v1)
  {

    a1 = 0;
  }

  v9 = *(v6 + 8);

  return v9(a1);
}

uint64_t static AppDistributor.requestProductPage(_:itemID:versionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D961768C, 0, 0);
}

uint64_t sub_1D961768C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 48);
  *(v1 + 16) = v2 & 1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1D961776C;
  v6 = *(v0 + 64);

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(v0 + 16, v6);
}

uint64_t sub_1D961776C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D9618814;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v4 = sub_1D9618834;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t static AppDistributor.requestSearchPage(_:searchString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9617920, 0, 0);
}

uint64_t sub_1D9617920()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D9617A04;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_1D9617A04()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D9617B94;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v4 = sub_1D9617B24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9617B24()
{
  sub_1D9611758(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9617B94()
{
  sub_1D9611758(v0[8]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t static AppDistributor.requestAuthorization(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9617C98, 0, 0);
}

uint64_t sub_1D9617C98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D961776C;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_1D9617D98()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95EAF50;

  return sub_1D95F0358(1, sub_1D9617E8C, 0);
}

void sub_1D9617E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D96587B0;
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [a1 handleEmergencyResetRequestWithReply_];
  _Block_release(v6);
}

uint64_t static AppDistributor.addAllowedDeveloper(_:name:supportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  v6 = qword_1EDCF6860;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(&v8, sub_1D9618024, 0);
}

uint64_t static AppDistributor.addConditionallyAllowedDeveloper(_:)(uint64_t a1, uint64_t a2)
{
  *&v3[0] = a1;
  *(&v3[0] + 1) = a2;
  memset(&v3[1], 0, 32);
  v4 = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  return sub_1D95EC0A0(v3, sub_1D96180D4, 0);
}

void sub_1D96180E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = sub_1D966E5D8();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D96587B0;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a1 *a7];
  _Block_release(v13);
}

uint64_t sub_1D96181D8(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_1D95EA68C(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_1D9618238(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_1D9618284(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 8);

  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_1D96182D0()
{
  result = qword_1ECB21800;
  if (!qword_1ECB21800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21800);
  }

  return result;
}

uint64_t sub_1D9618324(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21808, &qword_1D96747B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D96183C4()
{
  result = qword_1ECB21830;
  if (!qword_1ECB21830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21830);
  }

  return result;
}

unint64_t sub_1D961841C()
{
  result = qword_1ECB21838;
  if (!qword_1ECB21838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21838);
  }

  return result;
}

unint64_t sub_1D9618474()
{
  result = qword_1ECB21840;
  if (!qword_1ECB21840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21840);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96184E0()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = sub_1D966E918();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21848, &qword_1D96749D0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  out_token = -1;
  sub_1D96186E0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7F98], v0);

  v6 = sub_1D966EBF8();
  (*(v1 + 8))(v4, v0);
  aBlock[4] = sub_1D961872C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96150EC;
  aBlock[3] = &block_descriptor_42_0;
  v7 = _Block_copy(aBlock);

  notify_register_dispatch("com.apple.managedappdistributiond.priorityOrAllowedDevelopersChanged", &out_token, v6, v7);
  _Block_release(v7);

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_1D96186E0()
{
  result = qword_1EDCF66A0;
  if (!qword_1EDCF66A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF66A0);
  }

  return result;
}

uint64_t sub_1D9618744(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1D96187A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LicenseResolutionContext.logKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LicenseResolutionContext.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseResolutionContext() + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LicenseResolutionContext()
{
  result = qword_1ECB21868;
  if (!qword_1ECB21868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LicenseResolutionContext.init(logKey:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LicenseResolutionContext() + 20);
  v7 = sub_1D966E5B8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1D96189C8()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x79654B676F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D96189F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9618AD0(uint64_t a1)
{
  v2 = sub_1D9618CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9618B0C(uint64_t a1)
{
  v2 = sub_1D9618CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseResolutionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21850, &qword_1D9674A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9618CEC();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = *(type metadata accessor for LicenseResolutionContext() + 20);
    v15[14] = 1;
    sub_1D966E5B8();
    sub_1D95E63E8(&qword_1ECB20860);
    sub_1D966EF68();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9618CEC()
{
  result = qword_1ECB21858;
  if (!qword_1ECB21858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21858);
  }

  return result;
}

uint64_t LicenseResolutionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1D966E5B8();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21860, &qword_1D9674A68);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LicenseResolutionContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9618CEC();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1D966EE58();
  v13[1] = v17;
  v25 = 1;
  sub_1D95E63E8(&qword_1ECB20870);
  sub_1D966EE88();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1D9619050(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D96190B4(v13);
}

uint64_t sub_1D9619050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96190B4(uint64_t a1)
{
  v2 = type metadata accessor for LicenseResolutionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9619168()
{
  result = sub_1D966E5B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D96191F8()
{
  result = qword_1ECB21878;
  if (!qword_1ECB21878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21878);
  }

  return result;
}

unint64_t sub_1D9619250()
{
  result = qword_1ECB21880;
  if (!qword_1ECB21880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21880);
  }

  return result;
}

unint64_t sub_1D96192A8()
{
  result = qword_1ECB21888;
  if (!qword_1ECB21888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21888);
  }

  return result;
}

uint64_t sub_1D9619318()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D9619414;

  return sub_1D95F06D0(0, 0, 2, sub_1D9619538, 0);
}

uint64_t sub_1D9619414()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_1D961B46C;
  }

  else
  {
    v3 = sub_1D961B458;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return result;
}

uint64_t static Restores.discover(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D961956C, 0, 0);
}

uint64_t sub_1D961956C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D9619684;
  v3 = v0[2];

  return sub_1D95F06D0(v3, v1, 2, sub_1D9619870, 0);
}

uint64_t sub_1D9619684()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1D96197FC;
  }

  else
  {
    v3 = sub_1D9619798;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9619798()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D96197FC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:)(MarketplaceKit::DiscoverRestoresRequest accountID)
{
  *v1 = accountID.field1D9688E50;
  *(v1 + 16) = 2;
  return accountID;
}

uint64_t sub_1D96198A0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D961999C;

  return sub_1D95F06D0(0, 0, 1, sub_1D9619B84, 0);
}

uint64_t sub_1D961999C()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_1D9619B14;
  }

  else
  {
    v3 = sub_1D9619AB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9619AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9619B14()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 24);

  return v1();
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:promptToInstallDistributors:)(MarketplaceKit::DiscoverRestoresRequest accountID, Swift::Bool_optional promptToInstallDistributors)
{
  *v2 = accountID.field1D9688E50;
  *(v2 + 16) = promptToInstallDistributors;
  accountID.field1D9688E5C = promptToInstallDistributors;
  return accountID;
}

uint64_t static Restores.prioritize(app:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9619BB8, 0, 0);
}

uint64_t sub_1D9619BB8()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D9619CB0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1D95F0A00(v3, v2, sub_1D9619DAC, 0);
}

uint64_t sub_1D9619CB0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D9619DE0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F0E18(v2, sub_1D9619EE0, 0);
}

uint64_t DiscoverRestoresRequest.accountID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1D9619F2C()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_1D9619F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9680BE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961A05C(uint64_t a1)
{
  v2 = sub_1D961AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961A098(uint64_t a1)
{
  v2 = sub_1D961AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiscoverRestoresRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21890, &qword_1D9674C28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AEFC();
  sub_1D966F118();
  v16 = 0;
  v11 = v13[1];
  sub_1D966EEE8();
  if (!v11)
  {
    v15 = 1;
    sub_1D966EEF8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DiscoverRestoresRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218A0, &qword_1D9674C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AEFC();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE08();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D966EE18();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PromoteAppsRequest.appsToPromote.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1D961A4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72506F5473707061 && a2 == 0xED000065746F6D6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D961A560(uint64_t a1)
{
  v2 = sub_1D961AF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961A59C(uint64_t a1)
{
  v2 = sub_1D961AF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromoteAppsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218A8, &unk_1D9674C38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AF50();

  sub_1D966F118();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
  sub_1D96125F8(&qword_1EDCF6200);
  sub_1D966EF68();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PromoteAppsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218B8, &qword_1D9674C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AF50();
  sub_1D966F0F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D96125F8(&qword_1EDCF6670);
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PrioritizeAppRequest.appToPrioritize.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrioritizeAppRequest.appToPrioritize.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1D961A9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6972506F54707061 && a2 == 0xEF657A697469726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D961AA80(uint64_t a1)
{
  v2 = sub_1D961AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961AABC(uint64_t a1)
{
  v2 = sub_1D961AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrioritizeAppRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218C0, &qword_1D9674C50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PrioritizeAppRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218D0, &qword_1D9674C58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F0F8();
  if (!v2)
  {
    v11 = sub_1D966EE58();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D961ADC0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218C0, &qword_1D9674C50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D961AEFC()
{
  result = qword_1ECB21898;
  if (!qword_1ECB21898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21898);
  }

  return result;
}

unint64_t sub_1D961AF50()
{
  result = qword_1ECB218B0;
  if (!qword_1ECB218B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218B0);
  }

  return result;
}

unint64_t sub_1D961AFA4()
{
  result = qword_1ECB218C8;
  if (!qword_1ECB218C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218C8);
  }

  return result;
}

uint64_t sub_1D961B008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1D961B064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D961B11C()
{
  result = qword_1ECB218D8;
  if (!qword_1ECB218D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218D8);
  }

  return result;
}

unint64_t sub_1D961B174()
{
  result = qword_1ECB218E0;
  if (!qword_1ECB218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218E0);
  }

  return result;
}

unint64_t sub_1D961B1CC()
{
  result = qword_1ECB218E8;
  if (!qword_1ECB218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218E8);
  }

  return result;
}

unint64_t sub_1D961B224()
{
  result = qword_1ECB218F0;
  if (!qword_1ECB218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218F0);
  }

  return result;
}

unint64_t sub_1D961B27C()
{
  result = qword_1ECB218F8;
  if (!qword_1ECB218F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218F8);
  }

  return result;
}

unint64_t sub_1D961B2D4()
{
  result = qword_1ECB21900;
  if (!qword_1ECB21900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21900);
  }

  return result;
}

unint64_t sub_1D961B32C()
{
  result = qword_1ECB21908;
  if (!qword_1ECB21908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21908);
  }

  return result;
}

unint64_t sub_1D961B384()
{
  result = qword_1ECB21910;
  if (!qword_1ECB21910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21910);
  }

  return result;
}

unint64_t sub_1D961B3DC()
{
  result = qword_1ECB21918;
  if (!qword_1ECB21918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21918);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.installType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.appName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0) + 32);
  v2 = *v1;
  sub_1D961B554(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1D961B554(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D95EA68C(a1, a2);
  }

  return a1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(v12 + 28);
  v14 = sub_1D966E5B8();
  result = (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0xE000000000000000;
  v16 = (a6 + *(v12 + 32));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:appName:iconURL:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v13 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  result = sub_1D961B690(a6, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a7;
  v15[1] = a8;
  return result;
}

uint64_t sub_1D961B690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D961B704()
{
  v1 = *v0;
  v2 = 0x6D6F6942776F6873;
  v3 = 0x656D614E707061;
  v4 = 0x4C52556E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x546C6C6174736E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D961B7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D962413C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D961B7E0(uint64_t a1)
{
  v2 = sub_1D9621C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961B81C(uint64_t a1)
{
  v2 = sub_1D9621C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21920, &qword_1D9675158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9621C44();
  sub_1D966F118();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_1D966EF48();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v22) = 1;
    sub_1D966EF38();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v22) = 2;
    sub_1D966EF38();
    v16 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
    v17 = *(v16 + 28);
    LOBYTE(v22) = 3;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0]);
    sub_1D966EF18();
    v18 = (v3 + *(v16 + 32));
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v21[15] = 4;
    sub_1D961B554(v22, v19);
    sub_1D9621C98();
    sub_1D966EF18();
    sub_1D9621CEC(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21938, &qword_1D9675160);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v22 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9621C44();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v18 = v23;
  LOBYTE(v26) = 0;
  *v15 = sub_1D966EE68() & 1;
  LOBYTE(v26) = 1;
  *(v15 + 1) = sub_1D966EE58();
  *(v15 + 2) = v19;
  LOBYTE(v26) = 2;
  *(v15 + 3) = sub_1D966EE58();
  *(v15 + 4) = v20;
  sub_1D966E5B8();
  LOBYTE(v26) = 3;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0]);
  sub_1D966EE38();
  sub_1D961B690(v7, &v15[*(v12 + 28)]);
  v27 = 4;
  sub_1D9621D48();
  sub_1D966EE38();
  (*(v8 + 8))(v11, v24);
  *&v15[*(v12 + 32)] = v26;
  sub_1D96221B8(v15, v18, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D9622220(v15, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
}

uint64_t InstallSheetContext.Source.WebInstallContext.appName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InstallSheetContext.Source.WebInstallContext.iconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_1D95E5820(v3, a1);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(domain:developerName:developerID:appName:isUpdate:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v11 = a9 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_1D961B690(a11, v11);
}

uint64_t sub_1D961C034()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x656D614E707061;
  v4 = 0x6574616470557369;
  if (v1 != 4)
  {
    v4 = 0x4C52556E6F6369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65706F6C65766564;
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

uint64_t sub_1D961C100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9624300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D961C128(uint64_t a1)
{
  v2 = sub_1D9622164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961C164(uint64_t a1)
{
  v2 = sub_1D9622164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.WebInstallContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21948, &qword_1D9675168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622164();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22[14] = 1;
    sub_1D966EF38();
    v15 = v3[4];
    v16 = v3[5];
    v22[13] = 2;
    sub_1D966EF38();
    v17 = v3[6];
    v18 = v3[7];
    v22[12] = 3;
    sub_1D966EF38();
    v19 = *(v3 + 64);
    v22[11] = 4;
    sub_1D966EF48();
    v20 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
    v22[10] = 5;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0]);
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21958, &qword_1D9675170);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622164();
  v30 = v11;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v17 = v28;
  v18 = v29;
  v36 = 0;
  *v15 = sub_1D966EE58();
  *(v15 + 1) = v19;
  v35 = 1;
  *(v15 + 2) = sub_1D966EE58();
  *(v15 + 3) = v20;
  v34 = 2;
  *(v15 + 4) = sub_1D966EE58();
  *(v15 + 5) = v21;
  v33 = 3;
  *(v15 + 6) = sub_1D966EE58();
  *(v15 + 7) = v22;
  v32 = 4;
  v15[64] = sub_1D966EE68() & 1;
  sub_1D966E5B8();
  v31 = 5;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0]);
  v23 = v26;
  sub_1D966EE38();
  (*(v17 + 8))(v30, v18);
  sub_1D961B690(v23, &v15[*(v12 + 36)]);
  sub_1D96221B8(v15, v27, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9622220(v15, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
}

uint64_t InstallSheetContext.Source.DistributorContext.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.appName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D961C97C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_1D95E5820(v4, a2);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(name:id:appName:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);

  return sub_1D961B690(a7, v9);
}

uint64_t sub_1D961CA20()
{
  v1 = 1701667182;
  v2 = 0x656D614E707061;
  if (*v0 != 2)
  {
    v2 = 0x4C52556E6F6369;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D961CA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9624504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D961CAB0(uint64_t a1)
{
  v2 = sub_1D9622614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961CAEC(uint64_t a1)
{
  v2 = sub_1D9622614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.DistributorContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21960, &qword_1D9675178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622614();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_1D966EF38();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_1D966EF38();
    v17 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
    v19[12] = 3;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0]);
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21970, &qword_1D9675180);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622614();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  *v15 = sub_1D966EE58();
  v15[1] = v20;
  v31 = 1;
  v15[2] = sub_1D966EE58();
  v15[3] = v21;
  v30 = 2;
  v24[1] = 0;
  v15[4] = sub_1D966EE58();
  v15[5] = v22;
  sub_1D966E5B8();
  v29 = 3;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0]);
  sub_1D966EE38();
  (*(v19 + 8))(v11, v18);
  sub_1D961B690(v17, v15 + *(v25 + 28));
  sub_1D96221B8(v15, v26, type metadata accessor for InstallSheetContext.Source.DistributorContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9622220(v15, type metadata accessor for InstallSheetContext.Source.DistributorContext);
}

uint64_t InstallSheetContext.Source.isAppStore.getter()
{
  v1 = type metadata accessor for InstallSheetContext.Source(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D96221B8(v0, v4, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1;
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_9:
      sub_1D9622220(v4, v7);
      return v6;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v6 = 0;
      v7 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    v7 = type metadata accessor for InstallSheetContext.Source;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v6 = 0;
    v7 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    goto LABEL_9;
  }

  return v6;
}

uint64_t InstallSheetContext.Source.isWebInstall.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext.Source(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallSheetContext.Source;
  sub_1D96221B8(v1, v5, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8 = 1;
      v9 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    }

    else
    {
      v8 = 0;
      v9 = type metadata accessor for InstallSheetContext.Source;
    }

    v6 = v9;
  }

  sub_1D9622220(v5, v6);
  return v8;
}

uint64_t sub_1D961D398(uint64_t a1)
{
  v2 = sub_1D96228E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D3D4(uint64_t a1)
{
  v2 = sub_1D96228E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D410(uint64_t a1)
{
  v2 = sub_1D9622894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D44C(uint64_t a1)
{
  v2 = sub_1D9622894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D961D488()
{
  v1 = *v0;
  v2 = 0x65726F7453707061;
  v3 = 0xD000000000000016;
  v4 = 6448503;
  if (v1 != 4)
  {
    v4 = 0x4368746957626577;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7562697274736964;
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

uint64_t sub_1D961D55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9624660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D961D584(uint64_t a1)
{
  v2 = sub_1D9622688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D5C0(uint64_t a1)
{
  v2 = sub_1D9622688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D5FC()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1D961D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961D6F8(uint64_t a1)
{
  v2 = sub_1D9622840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D734(uint64_t a1)
{
  v2 = sub_1D9622840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D770(uint64_t a1)
{
  v2 = sub_1D96227EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D7AC(uint64_t a1)
{
  v2 = sub_1D96227EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D7E8()
{
  if (*v0)
  {
    result = 0x65706F6C65766564;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_1D961D82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961D90C(uint64_t a1)
{
  v2 = sub_1D9622730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D948(uint64_t a1)
{
  v2 = sub_1D9622730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D984(uint64_t a1)
{
  v2 = sub_1D96226DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D9C0(uint64_t a1)
{
  v2 = sub_1D96226DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21978, &qword_1D9675188);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v68 - v4;
  v82 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21980, &qword_1D9675190);
  v85 = *(v87 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21988, &qword_1D9675198);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v11;
  v74 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v12 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21990, &qword_1D96751A0);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21998, &qword_1D96751A8);
  v72 = *(v73 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v68 - v18;
  v69 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v19 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB219A0, &qword_1D96751B0);
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v25 = type metadata accessor for InstallSheetContext.Source(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB219A8, &qword_1D96751B8);
  v90 = *(v29 - 8);
  v30 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v68 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622688();
  v91 = v32;
  sub_1D966F118();
  sub_1D96221B8(v93, v28, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = v70;
      sub_1D9622784(v28, v70, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v95 = 1;
      sub_1D9622894();
      v51 = v71;
      v52 = v91;
      sub_1D966EED8();
      sub_1D9621D00(&qword_1ECB219F0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v53 = v73;
      sub_1D966EF68();
      (*(v72 + 8))(v51, v53);
      sub_1D9622220(v50, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      return (*(v90 + 8))(v52, v29);
    }

    v35 = v92;
    v36 = v29;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *v28;
      v37 = v28[1];
      v40 = v28[2];
      v39 = v28[3];
      v98 = 2;
      sub_1D9622840();
      v41 = v75;
      v42 = v91;
      sub_1D966EED8();
      v97 = 0;
      v43 = v77;
      sub_1D966EF38();

      if (!v35)
      {
        v96 = 1;
        sub_1D966EF38();
      }

      (*(v76 + 8))(v41, v43);
      v66 = *(v90 + 8);
      v67 = v42;
    }

    else
    {
      v62 = v78;
      sub_1D9622784(v28, v78, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v99 = 3;
      sub_1D96227EC();
      v63 = v79;
      v64 = v91;
      sub_1D966EED8();
      sub_1D9621D00(&qword_1ECB219D8, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v65 = v81;
      sub_1D966EF68();
      (*(v80 + 8))(v63, v65);
      sub_1D9622220(v62, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v66 = *(v90 + 8);
      v67 = v64;
    }

    return v66(v67, v36);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v55 = *v28;
    v54 = v28[1];
    v57 = v28[2];
    v56 = v28[3];
    v102 = 4;
    sub_1D9622730();
    v58 = v83;
    v36 = v29;
    v59 = v91;
    sub_1D966EED8();
    v101 = 0;
    v60 = v87;
    v61 = v92;
    sub_1D966EF38();

    if (!v61)
    {
      v100 = 1;
      sub_1D966EF38();
    }

    (*(v85 + 8))(v58, v60);
    v66 = *(v90 + 8);
    v67 = v59;
    return v66(v67, v36);
  }

  v44 = v29;
  v45 = v91;
  if (EnumCaseMultiPayload == 4)
  {
    v46 = v84;
    sub_1D9622784(v28, v84, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v103 = 5;
    sub_1D96226DC();
    v47 = v86;
    sub_1D966EED8();
    sub_1D9621D00(&qword_1ECB219C0, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v48 = v89;
    sub_1D966EF68();
    (*(v88 + 8))(v47, v48);
    sub_1D9622220(v46, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  }

  else
  {
    v94 = 0;
    sub_1D96228E8();
    sub_1D966EED8();
    (*(v68 + 8))(v24, v21);
  }

  return (*(v90 + 8))(v45, v44);
}

uint64_t InstallSheetContext.Source.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A00, &qword_1D96751C0);
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A08, &qword_1D96751C8);
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v87 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A10, &qword_1D96751D0);
  v100 = *(v101 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v112 = &v87 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A18, &qword_1D96751D8);
  v98 = *(v99 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v87 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A20, &qword_1D96751E0);
  v96 = *(v97 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v106 = &v87 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A28, &qword_1D96751E8);
  v93 = *(v94 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v109 = &v87 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A30, &unk_1D96751F0);
  v115 = *(v110 - 8);
  v18 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v20 = &v87 - v19;
  v108 = type metadata accessor for InstallSheetContext.Source(0);
  v21 = *(*(v108 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v108);
  v95 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v87 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v87 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v87 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v87 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v87 - v36;
  v38 = a1[3];
  v39 = a1[4];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D9622688();
  v40 = v116;
  sub_1D966F0F8();
  if (!v40)
  {
    v90 = v35;
    v41 = v109;
    v91 = v29;
    v88 = v32;
    v89 = v26;
    v116 = 0;
    v42 = v111;
    v43 = v112;
    v45 = v113;
    v44 = v114;
    v92 = v37;
    v46 = v110;
    v47 = sub_1D966EEB8();
    v48 = (2 * *(v47 + 16)) | 1;
    v118 = v47;
    v119 = v47 + 32;
    v120 = 0;
    v121 = v48;
    v49 = sub_1D9605E28();
    if (v49 == 6 || v120 != v121 >> 1)
    {
      v56 = sub_1D966ED58();
      swift_allocError();
      v58 = v57;
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v58 = v108;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v49 <= 2u)
    {
      if (!v49)
      {
        v122 = 0;
        sub_1D96228E8();
        v64 = v116;
        sub_1D966EDE8();
        v50 = v107;
        if (!v64)
        {
          (*(v93 + 8))(v41, v94);
          (*(v115 + 8))(v20, v46);
          swift_unknownObjectRelease();
          v55 = v92;
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v50 = v107;
      v51 = v116;
      if (v49 == 1)
      {
        v122 = 1;
        sub_1D9622894();
        v52 = v106;
        sub_1D966EDE8();
        if (!v51)
        {
          type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
          sub_1D9621D00(&qword_1ECB21A48, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
          v53 = v90;
          v54 = v97;
          sub_1D966EE88();
          (*(v96 + 8))(v52, v54);
          (*(v115 + 8))(v20, v46);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v55 = v92;
          sub_1D9622784(v53, v92, type metadata accessor for InstallSheetContext.Source);
LABEL_29:
          sub_1D9622784(v55, v50, type metadata accessor for InstallSheetContext.Source);
          return __swift_destroy_boxed_opaque_existential_1(v117);
        }

        goto LABEL_10;
      }

      v122 = 2;
      sub_1D9622840();
      sub_1D966EDE8();
      if (v51)
      {
LABEL_10:
        (*(v115 + 8))(v20, v46);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v117);
      }

      v122 = 0;
      v71 = v99;
      v72 = sub_1D966EE58();
      v79 = v78;
      v116 = v72;
      v122 = 1;
      v114 = sub_1D966EE58();
      v80 = v71;
      v81 = (v115 + 8);
      v86 = v85;
      (*(v98 + 8))(v42, v80);
      (*v81)(v20, v46);
      swift_unknownObjectRelease();
      v84 = v88;
      *v88 = v116;
      v84[1] = v79;
      v84[2] = v114;
      v84[3] = v86;
      goto LABEL_27;
    }

    if (v49 == 3)
    {
      v122 = 3;
      sub_1D96227EC();
      v65 = v116;
      sub_1D966EDE8();
      if (v65)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
      sub_1D9621D00(&qword_1ECB21A40, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v66 = v91;
      v67 = v101;
      sub_1D966EE88();
      v68 = v115;
      (*(v100 + 8))(v43, v67);
      (*(v68 + 8))(v20, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v49 == 4)
      {
        v122 = 4;
        sub_1D9622730();
        v61 = v116;
        sub_1D966EDE8();
        if (v61)
        {
          goto LABEL_10;
        }

        v122 = 0;
        v62 = v103;
        v63 = sub_1D966EE58();
        v74 = v73;
        v75 = v20;
        v116 = v63;
        v122 = 1;
        v114 = sub_1D966EE58();
        v76 = (v115 + 8);
        v83 = v82;
        (*(v102 + 8))(v45, v62);
        (*v76)(v75, v46);
        swift_unknownObjectRelease();
        v84 = v89;
        *v89 = v116;
        v84[1] = v74;
        v84[2] = v114;
        v84[3] = v83;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        v77 = v84;
        goto LABEL_28;
      }

      v122 = 5;
      sub_1D96226DC();
      v69 = v116;
      sub_1D966EDE8();
      if (v69)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
      sub_1D9621D00(&qword_1ECB21A38, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v66 = v95;
      v70 = v104;
      sub_1D966EE88();
      (*(v105 + 8))(v44, v70);
      (*(v115 + 8))(v20, v46);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v77 = v66;
LABEL_28:
    v55 = v92;
    sub_1D9622784(v77, v92, type metadata accessor for InstallSheetContext.Source);
    v50 = v107;
    goto LABEL_29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v117);
}

uint64_t sub_1D961F3D8(uint64_t a1)
{
  v2 = sub_1D96229E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F414(uint64_t a1)
{
  v2 = sub_1D96229E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961F450()
{
  if (*v0)
  {
    result = 0x6C7074656B72616DLL;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_1D961F48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961F56C(uint64_t a1)
{
  v2 = sub_1D962293C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F5A8(uint64_t a1)
{
  v2 = sub_1D962293C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961F5E4(uint64_t a1)
{
  v2 = sub_1D9622990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F620(uint64_t a1)
{
  v2 = sub_1D9622990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.InstallType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A50, &qword_1D9675200);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A58, &qword_1D9675208);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A60, &qword_1D9675210);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D962293C();
  sub_1D966F118();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D9622990();
    v18 = v22;
    sub_1D966EED8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D96229E4();
    sub_1D966EED8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t InstallSheetContext.InstallType.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t InstallSheetContext.InstallType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A80, &qword_1D9675218);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A88, &qword_1D9675220);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A90, &qword_1D9675228);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D962293C();
  v16 = v36;
  sub_1D966F0F8();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D966EEB8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D9605E20();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D966ED58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v26 = &type metadata for InstallSheetContext.InstallType;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D9622990();
        sub_1D966EDE8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D96229E4();
        sub_1D966EDE8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t InstallSheetContext.versionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InstallSheetContext.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InstallSheetContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InstallSheetContext.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext(0) + 36);
  v2 = *v1;
  sub_1D961B554(*v1, *(v1 + 8));
  return v2;
}

uint64_t InstallSheetContext.learnMoreURL.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallSheetContext(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *a6;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a7;
  a9[5] = a8;
  v17 = type metadata accessor for InstallSheetContext(0);
  result = sub_1D9622784(a5, a9 + v17[7], type metadata accessor for InstallSheetContext.Source);
  *(a9 + v17[8]) = v16;
  v19 = (a9 + v17[10]);
  *v19 = a10;
  v19[1] = a11;
  v20 = (a9 + v17[9]);
  *v20 = a12;
  v20[1] = a13;
  *(a9 + v17[11]) = a14;
  return result;
}

unint64_t sub_1D962007C()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 0x726F4D6E7261656CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79654B676F6CLL;
  if (v1 != 2)
  {
    v5 = 0x656372756F73;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973726576;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D962017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9624874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D96201B0(uint64_t a1)
{
  v2 = sub_1D9622A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96201EC(uint64_t a1)
{
  v2 = sub_1D9622A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A98, &qword_1D9675230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622A58();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    sub_1D966EEE8();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    sub_1D966EF38();
    v17 = type metadata accessor for InstallSheetContext(0);
    v18 = v17[7];
    LOBYTE(v27) = 3;
    type metadata accessor for InstallSheetContext.Source(0);
    sub_1D9621D00(&qword_1ECB21AA8, type metadata accessor for InstallSheetContext.Source);
    sub_1D966EF68();
    LOBYTE(v27) = *(v3 + v17[8]);
    v29 = 4;
    sub_1D9622AAC();
    sub_1D966EF68();
    v19 = (v3 + v17[9]);
    v20 = v19[1];
    v27 = *v19;
    v28 = v20;
    v29 = 5;
    sub_1D961B554(v27, v20);
    sub_1D9621C98();
    sub_1D966EF18();
    sub_1D9621CEC(v27, v28);
    v21 = (v3 + v17[10]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v27) = 6;
    sub_1D966EF38();
    v24 = *(v3 + v17[11]);
    LOBYTE(v27) = 7;
    sub_1D966EF48();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for InstallSheetContext.Source(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21AB8, &qword_1D9675238);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v37 - v9;
  v11 = type metadata accessor for InstallSheetContext(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9622A58();
  v40 = v10;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v17 = v39;
  LOBYTE(v43) = 0;
  *v14 = sub_1D966EE58();
  v14[1] = v19;
  LOBYTE(v43) = 1;
  v14[2] = sub_1D966EE08();
  v14[3] = v20;
  LOBYTE(v43) = 2;
  v21 = sub_1D966EE58();
  v37 = 0;
  v14[4] = v21;
  v14[5] = v22;
  LOBYTE(v43) = 3;
  sub_1D9621D00(&qword_1ECB21AC0, type metadata accessor for InstallSheetContext.Source);
  v23 = v37;
  sub_1D966EE88();
  v37 = v23;
  if (v23)
  {
    (*(v17 + 8))(v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = v14[1];

    v26 = v14[3];

    v25 = v14[5];
  }

  else
  {
    sub_1D9622784(v7, v14 + v11[7], type metadata accessor for InstallSheetContext.Source);
    v44 = 4;
    sub_1D9622B00();
    v27 = v40;
    v28 = v41;
    v29 = v37;
    sub_1D966EE88();
    if (v29)
    {
      (*(v17 + 8))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v30 = v14[1];

      v31 = v14[3];

      v32 = v14[5];

      return sub_1D9622220(v14 + v11[7], type metadata accessor for InstallSheetContext.Source);
    }

    else
    {
      *(v14 + v11[8]) = v43;
      v44 = 5;
      sub_1D9621D48();
      sub_1D966EE38();
      *(v14 + v11[9]) = v43;
      LOBYTE(v43) = 6;
      v33 = sub_1D966EE58();
      v34 = (v14 + v11[10]);
      *v34 = v33;
      v34[1] = v35;
      LOBYTE(v43) = 7;
      v36 = sub_1D966EE68();
      (*(v17 + 8))(v27, v28);
      *(v14 + v11[11]) = v36 & 1;
      sub_1D96221B8(v14, v38, type metadata accessor for InstallSheetContext);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return sub_1D9622220(v14, type metadata accessor for InstallSheetContext);
    }
  }
}

uint64_t sub_1D9620B18@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D966E518();
    if (v10)
    {
      v11 = sub_1D966E538();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D966E528();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D966E518();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D966E538();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D966E528();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D9620D48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D9620ED8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D95EA55C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1D9620B18(v14, a3, a4, &v13);
  v10 = v4;
  sub_1D95EA55C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1D9620ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D966E518();
  v11 = result;
  if (result)
  {
    result = sub_1D966E538();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D966E528();
  sub_1D9620B18(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D9620F90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D95EA68C(a3, a4);
          return sub_1D9620D48(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for InstallSheetContext.Source(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v66 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v66 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v66 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v66 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C10, &qword_1D9676478);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = (&v66 + *(v31 + 56) - v32);
  v34 = a1;
  v35 = &v66 - v32;
  sub_1D96221B8(v34, &v66 - v32, type metadata accessor for InstallSheetContext.Source);
  sub_1D96221B8(v69, v33, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D96221B8(v35, v20, type metadata accessor for InstallSheetContext.Source);
      v53 = *v20;
      v52 = v20[1];
      v55 = v20[2];
      v54 = v20[3];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v57 = v33[2];
        v56 = v33[3];
        if (v53 == *v33 && v52 == v33[1])
        {
          v62 = v33[1];
        }

        else
        {
          v59 = v33[1];
          v60 = sub_1D966EFB8();

          if ((v60 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v55 == v57 && v54 == v56)
        {
          goto LABEL_43;
        }

LABEL_44:
        v64 = sub_1D966EFB8();

        if (v64)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    sub_1D96221B8(v35, v17, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v46 = v68;
      sub_1D9622784(v33, v68, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v47 = _s14MarketplaceKit19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(v17, v46);
      v48 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
      sub_1D9622220(v46, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v49 = v17;
LABEL_35:
      sub_1D9622220(v49, v48);
      sub_1D9622220(v35, type metadata accessor for InstallSheetContext.Source);
      return v47;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    v51 = v17;
LABEL_31:
    sub_1D9622220(v51, v50);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D96221B8(v35, v28, type metadata accessor for InstallSheetContext.Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D9622784(v33, v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v47 = _s14MarketplaceKit19InstallSheetContextV6SourceO08AppStoredE0V2eeoiySbAG_AGtFZ_0(v28, v12);
      v48 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
      sub_1D9622220(v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v49 = v28;
      goto LABEL_35;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
    v51 = v28;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D96221B8(v35, v23, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v61 = v67;
      sub_1D9622784(v33, v67, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v47 = _s14MarketplaceKit19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(v23, v61);
      v48 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      sub_1D9622220(v61, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v49 = v23;
      goto LABEL_35;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
    v51 = v23;
    goto LABEL_31;
  }

  sub_1D96221B8(v35, v26, type metadata accessor for InstallSheetContext.Source);
  v38 = *v26;
  v37 = v26[1];
  v40 = v26[2];
  v39 = v26[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v33[2];
    v41 = v33[3];
    if (v38 == *v33 && v37 == v33[1])
    {
      v63 = v33[1];

LABEL_41:
      if (v40 == v42 && v39 == v41)
      {
LABEL_43:

LABEL_45:
        sub_1D9622220(v35, type metadata accessor for InstallSheetContext.Source);
        return 1;
      }

      goto LABEL_44;
    }

    v44 = v33[1];
    v45 = sub_1D966EFB8();

    if (v45)
    {
      goto LABEL_41;
    }

LABEL_23:

LABEL_47:
    sub_1D9622220(v35, type metadata accessor for InstallSheetContext.Source);
    return 0;
  }

LABEL_28:

LABEL_32:
  sub_1D95EA898(v35, &qword_1ECB21C10, &qword_1D9676478);
  return 0;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO08AppStoredE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1D966EFB8() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1D966EFB8() & 1) == 0)
  {
    return 0;
  }

  v32 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v17 = *(v32 + 28);
  v18 = *(v13 + 48);
  sub_1D95E5820(a1 + v17, v16);
  sub_1D95E5820(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1D95E5820(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_1D95EA898(v16, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0]);
  v20 = sub_1D966E978();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = *(v32 + 32);
  v23 = a1 + v22;
  v25 = *(a1 + v22);
  v24 = *(v23 + 1);
  v26 = (a2 + v22);
  v28 = *v26;
  v27 = v26[1];
  if (v24 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      sub_1D961B554(v25, *(v23 + 1));
      sub_1D961B554(v28, v27);
      sub_1D9621CEC(v25, v24);
      return 1;
    }

    goto LABEL_19;
  }

  if (v27 >> 60 == 15)
  {
LABEL_19:
    sub_1D961B554(v25, *(v23 + 1));
    sub_1D961B554(v28, v27);
    sub_1D9621CEC(v25, v24);
    sub_1D9621CEC(v28, v27);
    return 0;
  }

  sub_1D961B554(v25, *(v23 + 1));
  sub_1D961B554(v28, v27);
  v30 = sub_1D9620F90(v25, v24, v28, v27);
  sub_1D9621CEC(v28, v27);
  sub_1D9621CEC(v25, v24);
  return (v30 & 1) != 0;
}

unint64_t sub_1D9621C44()
{
  result = qword_1ECB21928;
  if (!qword_1ECB21928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21928);
  }

  return result;
}

unint64_t sub_1D9621C98()
{
  result = qword_1ECB21930;
  if (!qword_1ECB21930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21930);
  }

  return result;
}

uint64_t sub_1D9621CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D95EA55C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D9621D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9621D48()
{
  result = qword_1ECB21940;
  if (!qword_1ECB21940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21940);
  }

  return result;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D966EFB8() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v17 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
  v18 = *(v13 + 48);
  sub_1D95E5820(a1 + v17, v16);
  sub_1D95E5820(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
      return 1;
    }

    goto LABEL_19;
  }

  sub_1D95E5820(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_19:
    sub_1D95EA898(v16, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0]);
  v21 = sub_1D966E978();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
  return (v21 & 1) != 0;
}

unint64_t sub_1D9622164()
{
  result = qword_1ECB21950;
  if (!qword_1ECB21950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21950);
  }

  return result;
}

uint64_t sub_1D96221B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9622220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D966EFB8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D966EFB8() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D966EFB8() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
  v18 = *(v13 + 48);
  sub_1D95E5820(a1 + v17, v16);
  sub_1D95E5820(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
      return 1;
    }

    goto LABEL_15;
  }

  sub_1D95E5820(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_15:
    sub_1D95EA898(v16, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0]);
  v21 = sub_1D966E978();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D95EA898(v16, &qword_1ECB20848, &qword_1D9670000);
  return (v21 & 1) != 0;
}

unint64_t sub_1D9622614()
{
  result = qword_1ECB21968;
  if (!qword_1ECB21968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21968);
  }

  return result;
}

unint64_t sub_1D9622688()
{
  result = qword_1ECB219B0;
  if (!qword_1ECB219B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219B0);
  }

  return result;
}

unint64_t sub_1D96226DC()
{
  result = qword_1ECB219B8;
  if (!qword_1ECB219B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219B8);
  }

  return result;
}

unint64_t sub_1D9622730()
{
  result = qword_1ECB219C8;
  if (!qword_1ECB219C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219C8);
  }

  return result;
}

uint64_t sub_1D9622784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D96227EC()
{
  result = qword_1ECB219D0;
  if (!qword_1ECB219D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219D0);
  }

  return result;
}

unint64_t sub_1D9622840()
{
  result = qword_1ECB219E0;
  if (!qword_1ECB219E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219E0);
  }

  return result;
}

unint64_t sub_1D9622894()
{
  result = qword_1ECB219E8;
  if (!qword_1ECB219E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219E8);
  }

  return result;
}

unint64_t sub_1D96228E8()
{
  result = qword_1ECB219F8;
  if (!qword_1ECB219F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219F8);
  }

  return result;
}

unint64_t sub_1D962293C()
{
  result = qword_1ECB21A68;
  if (!qword_1ECB21A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A68);
  }

  return result;
}

unint64_t sub_1D9622990()
{
  result = qword_1ECB21A70;
  if (!qword_1ECB21A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A70);
  }

  return result;
}

unint64_t sub_1D96229E4()
{
  result = qword_1ECB21A78;
  if (!qword_1ECB21A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A78);
  }

  return result;
}

unint64_t sub_1D9622A58()
{
  result = qword_1ECB21AA0;
  if (!qword_1ECB21AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AA0);
  }

  return result;
}

unint64_t sub_1D9622AAC()
{
  result = qword_1ECB21AB0;
  if (!qword_1ECB21AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AB0);
  }

  return result;
}

unint64_t sub_1D9622B00()
{
  result = qword_1ECB21AC8;
  if (!qword_1ECB21AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AC8);
  }

  return result;
}

unint64_t sub_1D9622B58()
{
  result = qword_1ECB21AD0;
  if (!qword_1ECB21AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AD0);
  }

  return result;
}

void sub_1D9622BD4()
{
  sub_1D960D9D8(319, &qword_1EDCF6218);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InstallSheetContext.Source(319);
    if (v1 <= 0x3F)
    {
      sub_1D960D9D8(319, &qword_1EDCF6660);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9622CB4()
{
  sub_1D9622DD8(319, qword_1EDCF64F8, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  if (v0 <= 0x3F)
  {
    sub_1D960450C(319, &qword_1EDCF6228);
    if (v1 <= 0x3F)
    {
      sub_1D9622DD8(319, &qword_1EDCF6640, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      if (v2 <= 0x3F)
      {
        sub_1D960450C(319, &qword_1EDCF6220);
        if (v3 <= 0x3F)
        {
          sub_1D9622DD8(319, qword_1EDCF65A0, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9622DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D9622E4C()
{
  sub_1D95E9634();
  if (v0 <= 0x3F)
  {
    sub_1D960D9D8(319, &qword_1EDCF6660);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9622F28()
{
  sub_1D95E9634();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9622FE0()
{
  sub_1D95E9634();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for InstallSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstallSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D96233D8()
{
  result = qword_1ECB21AD8;
  if (!qword_1ECB21AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AD8);
  }

  return result;
}

unint64_t sub_1D9623430()
{
  result = qword_1ECB21AE0;
  if (!qword_1ECB21AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AE0);
  }

  return result;
}

unint64_t sub_1D9623488()
{
  result = qword_1ECB21AE8;
  if (!qword_1ECB21AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AE8);
  }

  return result;
}

unint64_t sub_1D96234E0()
{
  result = qword_1ECB21AF0;
  if (!qword_1ECB21AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AF0);
  }

  return result;
}

unint64_t sub_1D9623538()
{
  result = qword_1ECB21AF8;
  if (!qword_1ECB21AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AF8);
  }

  return result;
}

unint64_t sub_1D9623590()
{
  result = qword_1ECB21B00;
  if (!qword_1ECB21B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B00);
  }

  return result;
}

unint64_t sub_1D96235E8()
{
  result = qword_1ECB21B08;
  if (!qword_1ECB21B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B08);
  }

  return result;
}

unint64_t sub_1D9623640()
{
  result = qword_1ECB21B10;
  if (!qword_1ECB21B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B10);
  }

  return result;
}

unint64_t sub_1D9623698()
{
  result = qword_1ECB21B18;
  if (!qword_1ECB21B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B18);
  }

  return result;
}

unint64_t sub_1D96236F0()
{
  result = qword_1ECB21B20;
  if (!qword_1ECB21B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B20);
  }

  return result;
}

unint64_t sub_1D9623748()
{
  result = qword_1ECB21B28;
  if (!qword_1ECB21B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B28);
  }

  return result;
}

unint64_t sub_1D96237A0()
{
  result = qword_1ECB21B30;
  if (!qword_1ECB21B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B30);
  }

  return result;
}

unint64_t sub_1D96237F8()
{
  result = qword_1ECB21B38;
  if (!qword_1ECB21B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B38);
  }

  return result;
}

unint64_t sub_1D9623850()
{
  result = qword_1ECB21B40;
  if (!qword_1ECB21B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B40);
  }

  return result;
}

unint64_t sub_1D96238A8()
{
  result = qword_1ECB21B48;
  if (!qword_1ECB21B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B48);
  }

  return result;
}

unint64_t sub_1D9623900()
{
  result = qword_1ECB21B50;
  if (!qword_1ECB21B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B50);
  }

  return result;
}

unint64_t sub_1D9623958()
{
  result = qword_1ECB21B58;
  if (!qword_1ECB21B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B58);
  }

  return result;
}

unint64_t sub_1D96239B0()
{
  result = qword_1ECB21B60;
  if (!qword_1ECB21B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B60);
  }

  return result;
}

unint64_t sub_1D9623A08()
{
  result = qword_1ECB21B68;
  if (!qword_1ECB21B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B68);
  }

  return result;
}

unint64_t sub_1D9623A60()
{
  result = qword_1ECB21B70;
  if (!qword_1ECB21B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B70);
  }

  return result;
}

unint64_t sub_1D9623AB8()
{
  result = qword_1ECB21B78;
  if (!qword_1ECB21B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B78);
  }

  return result;
}

unint64_t sub_1D9623B10()
{
  result = qword_1ECB21B80;
  if (!qword_1ECB21B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B80);
  }

  return result;
}

unint64_t sub_1D9623B68()
{
  result = qword_1ECB21B88;
  if (!qword_1ECB21B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B88);
  }

  return result;
}

unint64_t sub_1D9623BC0()
{
  result = qword_1ECB21B90;
  if (!qword_1ECB21B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B90);
  }

  return result;
}

unint64_t sub_1D9623C18()
{
  result = qword_1ECB21B98;
  if (!qword_1ECB21B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B98);
  }

  return result;
}

unint64_t sub_1D9623C70()
{
  result = qword_1ECB21BA0;
  if (!qword_1ECB21BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BA0);
  }

  return result;
}

unint64_t sub_1D9623CC8()
{
  result = qword_1ECB21BA8;
  if (!qword_1ECB21BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BA8);
  }

  return result;
}

unint64_t sub_1D9623D20()
{
  result = qword_1ECB21BB0;
  if (!qword_1ECB21BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BB0);
  }

  return result;
}

unint64_t sub_1D9623D78()
{
  result = qword_1ECB21BB8;
  if (!qword_1ECB21BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BB8);
  }

  return result;
}

unint64_t sub_1D9623DD0()
{
  result = qword_1ECB21BC0;
  if (!qword_1ECB21BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BC0);
  }

  return result;
}

unint64_t sub_1D9623E28()
{
  result = qword_1ECB21BC8;
  if (!qword_1ECB21BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BC8);
  }

  return result;
}

unint64_t sub_1D9623E80()
{
  result = qword_1ECB21BD0;
  if (!qword_1ECB21BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BD0);
  }

  return result;
}

unint64_t sub_1D9623ED8()
{
  result = qword_1ECB21BD8;
  if (!qword_1ECB21BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BD8);
  }

  return result;
}

unint64_t sub_1D9623F30()
{
  result = qword_1ECB21BE0;
  if (!qword_1ECB21BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BE0);
  }

  return result;
}

unint64_t sub_1D9623F88()
{
  result = qword_1ECB21BE8;
  if (!qword_1ECB21BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BE8);
  }

  return result;
}

unint64_t sub_1D9623FE0()
{
  result = qword_1ECB21BF0;
  if (!qword_1ECB21BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BF0);
  }

  return result;
}

unint64_t sub_1D9624038()
{
  result = qword_1ECB21BF8;
  if (!qword_1ECB21BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BF8);
  }

  return result;
}

unint64_t sub_1D9624090()
{
  result = qword_1ECB21C00;
  if (!qword_1ECB21C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C00);
  }

  return result;
}

unint64_t sub_1D96240E8()
{
  result = qword_1ECB21C08;
  if (!qword_1ECB21C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C08);
  }

  return result;
}

uint64_t sub_1D962413C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6942776F6873 && a2 == 0xEE00736369727465;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680C30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9624300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D9624504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9624660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9680C50 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEB00000000726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9680C70 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4368746957626577 && a2 == 0xEE00747865746E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D9624874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9680C90 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D9680CB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

MarketplaceKit::SecureButtonTag::ButtonImagePlacement_optional __swiftcall SecureButtonTag.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureButtonTag.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label);
  v2 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8);

  return v1;
}

uint64_t SecureButtonTag.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName);
  v2 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8);

  return v1;
}

double SecureButtonTag.size.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size);
  v2 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size + 8);
  return result;
}

id SecureButtonTag.__allocating_init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v27 = objc_allocWithZone(v13);
  v28 = *a5;
  v29 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v28;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = a6;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = a7;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = a9;
  v31 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = a12;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = a13;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = a8;
  v33.receiver = v27;
  v33.super_class = v13;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  ObjectType = swift_getObjectType();
  v28 = *a5;
  v29 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v28;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = a6;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = a7;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = a9;
  v31 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = a12;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = a13;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = a8;
  v33.receiver = v13;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D9625D30(a1);

  return v4;
}

id SecureButtonTag.init(coder:)(void *a1)
{
  v2 = sub_1D9625D30(a1);

  return v2;
}

Swift::Void __swiftcall SecureButtonTag.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label);
  v4 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8);
  v5 = sub_1D966E988();
  v6 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName);
    v8 = sub_1D966E988();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement);
  v11 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor);
  v13 = type metadata accessor for SerializableColor();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v12;
  v46.receiver = v14;
  v46.super_class = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v46, sel_init);
  v17 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor);
  v19 = objc_allocWithZone(v13);
  *&v19[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v18;
  v45.receiver = v19;
  v45.super_class = v13;
  v20 = v18;
  v21 = objc_msgSendSuper2(&v45, sel_init);
  v22 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius);
  v24 = sub_1D966E668();
  v25 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size;
  v27 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size);
  v28 = sub_1D966E668();
  v29 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  v30 = *(v26 + 8);
  v31 = sub_1D966E668();
  v32 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  v33 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize);
  v34 = sub_1D966E668();
  v35 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

  v36 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth);
  v37 = sub_1D966E668();
  v38 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor);
  v40 = objc_allocWithZone(v13);
  *&v40[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v39;
  v44.receiver = v40;
  v44.super_class = v13;
  v41 = v39;
  v42 = objc_msgSendSuper2(&v44, sel_init);
  v43 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v42 forKey:v43, v44.receiver, v44.super_class, v45.receiver, v45.super_class, v46.receiver, v46.super_class];
}

uint64_t SecureButtonTag.hash.getter()
{
  v1 = v0;
  sub_1D966F0D8();
  v2 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label);
  v3 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8);
  sub_1D966E9D8();
  if (*(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName);
    sub_1D966F098();
    sub_1D966E9D8();
  }

  else
  {
    sub_1D966F098();
  }

  MEMORY[0x1DA733F80](*(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement));
  v5 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor);
  type metadata accessor for CGColor(0);
  sub_1D9626180();
  sub_1D966E698();
  v6 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor);
  sub_1D966E698();
  v7 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v7);
  v8 = v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size;
  v9 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v9);
  v10 = *(v8 + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v10);
  v11 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v11);
  v12 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v12);
  v13 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor);
  sub_1D966E698();
  return sub_1D966F0B8();
}

uint64_t SecureButtonTag.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D96261D8(a1, v17);
  if (!v18)
  {
    sub_1D9626248(v17);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v14 = 0;
    return v14 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label) == *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label] && *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8) == *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8];
  if (!v3 && (sub_1D966EFB8() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8);
  v5 = *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName) == *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName] && v4 == v5;
    if (!v6 && (sub_1D966EFB8() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
LABEL_27:

    goto LABEL_28;
  }

  if (*(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement) != v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement])
  {
    goto LABEL_27;
  }

  type metadata accessor for CGColor(0);
  v7 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor);
  v8 = *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor];
  sub_1D9626180();
  v9 = v8;
  LOBYTE(v7) = sub_1D966E688();

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor);
  v11 = *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor];
  LOBYTE(v10) = sub_1D966E688();

  if ((v10 & 1) == 0 || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius) != *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size) != *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size + 8) != *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size + 8] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize) != *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth) != *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth])
  {
    goto LABEL_27;
  }

  v12 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor);
  v13 = *&v16[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor];
  v14 = sub_1D966E688();

  return v14 & 1;
}

id SecureButtonTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureButtonTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D9625A70(void *a1)
{
  v3 = sub_1D966EA58();
  *(v3 + 16) = 4;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  v4 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor);
  UISGetColorSRGBComponents();
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3 + 32);
  v6 = sub_1D966E668();
  v7 = sub_1D966E988();
  [a1 encodeObject:v6 forKey:v7];

  if (*(v3 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v3 + 40);
  v9 = sub_1D966E668();
  v10 = sub_1D966E988();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v3 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(v3 + 48);
  v12 = sub_1D966E668();
  v13 = sub_1D966E988();
  [a1 encodeObject:v12 forKey:v13];

  if (*(v3 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = *(v3 + 56);
  v15 = sub_1D966E668();
  v16 = sub_1D966E988();
  [a1 encodeObject:v15 forKey:v16];
}

id sub_1D9625CEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9625D30(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D9626498();
  v5 = sub_1D966EC08();
  if (v5)
  {
    v6 = v5;
    sub_1D966E998();
  }

  v7 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = sub_1D966EC08();
  sub_1D966E998();

  v9 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_1D966E988();
  v11 = [a1 decodeIntegerForKey_];

  if (v11 >= 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v12;
  type metadata accessor for SerializableColor();
  v13 = sub_1D966EC08();
  if (!v13 || (v14 = *(v13 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v15 = v13, GenericRGB = v14, v15, !v14))
  {
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = GenericRGB;
  v17 = sub_1D966EC08();
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v19 = v17, v20 = v18, v19, !v18))
  {
    v20 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = v20;
  v21 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v23 = v22;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = v23;
  v24 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v26 = v25;

  v27 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v29 = v28;

  v30 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v30 = v26;
  v30[1] = v29;
  v31 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v33 = v32;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = v33;
  v34 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v36 = v35;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = v36;
  v37 = sub_1D966EC08();
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v39 = v37, v40 = v38, v39, !v38))
  {
    v40 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = v40;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init, 0);
}

unint64_t sub_1D9626180()
{
  result = qword_1ECB21C88;
  if (!qword_1ECB21C88)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C88);
  }

  return result;
}

uint64_t sub_1D96261D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C90, &qword_1D9676490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9626248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C90, &qword_1D9676490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D96262B4()
{
  result = qword_1ECB21C98;
  if (!qword_1ECB21C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C98);
  }

  return result;
}

id sub_1D962637C(void *a1)
{
  v3 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v5 = v4;

  v6 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  *&v1[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = CGColorCreateSRGB(v5, v8, v11, v14);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1D9626498()
{
  result = qword_1ECB21D70;
  if (!qword_1ECB21D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB21D70);
  }

  return result;
}

uint64_t static UpdateService.availableUpdate(for:checkInWithServer:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D962650C, 0, 0);
}

uint64_t sub_1D962650C()
{
  v1 = *(v0 + 32);
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1D9626614;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_1D95F1230(v7, v5, v6, v4, sub_1D9626730, 0);
}

uint64_t sub_1D9626614()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

MarketplaceKit::UpdateMetadataRequest __swiftcall UpdateMetadataRequest.init(bundleID:shouldCheckInWithServer:)(MarketplaceKit::UpdateMetadataRequest bundleID, Swift::Bool shouldCheckInWithServer)
{
  *v2 = bundleID.field1D9689480;
  *(v2 + 16) = shouldCheckInWithServer;
  bundleID.field1D968948C = shouldCheckInWithServer;
  return bundleID;
}

uint64_t static UpdateService.requestUpdate(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v3 = a1[3];
  v1[3] = a1[2];
  v1[4] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D9626770, 0, 0);
}

uint64_t sub_1D9626770()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D9615770;

  return sub_1D95F1560((v0 + 16), sub_1D9626868, 0);
}

uint64_t UpdateMetadataRequest.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1D96268B4()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_1D96268F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D96269D8(uint64_t a1)
{
  v2 = sub_1D9626DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9626A14(uint64_t a1)
{
  v2 = sub_1D9626DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateMetadataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21D78, &qword_1D96765D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9626DF4();
  sub_1D966F118();
  v16 = 0;
  v11 = v13[1];
  sub_1D966EF38();
  if (!v11)
  {
    v15 = 1;
    sub_1D966EF48();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UpdateMetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21D88, &qword_1D96765D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9626DF4();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D966EE68();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9626DF4()
{
  result = qword_1ECB21D80;
  if (!qword_1ECB21D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D80);
  }

  return result;
}

unint64_t sub_1D9626E7C()
{
  result = qword_1ECB21D90;
  if (!qword_1ECB21D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D90);
  }

  return result;
}

unint64_t sub_1D9626ED4()
{
  result = qword_1ECB21D98;
  if (!qword_1ECB21D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D98);
  }

  return result;
}

unint64_t sub_1D9626F2C()
{
  result = qword_1ECB21DA0;
  if (!qword_1ECB21DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21DA0);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static AppLibrary.getSearchTerritory(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9626FC0, 0, 0);
}

uint64_t sub_1D9626FC0()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D96270E8;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D96270E8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D9627278;
  }

  else
  {
    v3 = sub_1D96271FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D96271FC()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  if (v4 != 7)
  {
    sub_1D95FD1C4(v2, v3, v4);
    v2 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2, v3);
}

uint64_t sub_1D9627278()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3(0, 0);
}

uint64_t static AppLibrary.setSearchTerritory(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_1D966EAB8();
  v4[13] = sub_1D966EAA8();
  v6 = sub_1D966EA78();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D9627388, v6, v5);
}

uint64_t sub_1D9627388()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 96);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v1;
  *(v0 + 64) = 5;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1D96274BC;

  return sub_1D95EFB10(v0 + 16, sub_1D96276D4, 0);
}

uint64_t sub_1D96274BC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[12];
    v6 = v2[10];

    v7 = v2[14];
    v8 = v2[15];
    v9 = sub_1D9628E00;
  }

  else
  {
    v9 = sub_1D9627604;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D9627604()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1D9627674, v3, v4);
}

uint64_t sub_1D9627674()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D96276D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppLibrary.associatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D96277D0, 0, 0);
}

uint64_t sub_1D96277D0()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D96278F8;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D96278F8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D9627AA0;
  }

  else
  {
    v3 = sub_1D9627A0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9627A0C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);

  if (v4 != 2)
  {
    sub_1D95FD1C4(v3, v2, v4);
    v3 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1D9627AA0()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = MEMORY[0x1E69E7CC0];

  return v3(v4);
}

uint64_t static AppLibrary.synchronousAssociatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x1000000000000000;
  v13 = 0;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D95EBB94(&v8, sub_1D962B914, 0, &v6);
  v3 = v6;
  v4 = v7;

  result = v3;
  if (v4 != 2)
  {
    sub_1D95FD1C4(v3, *(&v3 + 1), v4);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D9627C24()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D9627D4C;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D9627D4C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D9627FA8;
  }

  else
  {
    v3 = sub_1D9627E60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9627E60()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 72);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 80);
    type metadata accessor for MarketplaceKitError();
    sub_1D9628C6C(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D9627FA8()
{
  v1 = *(v0 + 104);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall AppLibrary.beginIndeterminantProgress(itemID:versionID:version:shortVersion:account:)(Swift::UInt64 itemID, Swift::UInt64 versionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  object = account.value._object;
  countAndFlagsBits = account.value._countAndFlagsBits;
  v7 = shortVersion._object;
  v22 = shortVersion._countAndFlagsBits;
  v8 = version._object;
  *(&v21 + 1) = version._countAndFlagsBits;
  *&v21 = versionID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v24 = v5;
  v14 = AppLibrary.app(forAppleItemID:)(itemID);
  swift_getKeyPath();
  *&v30[0] = v14;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  if (!*(v14 + 96))
  {
    v15 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());

    v16 = sub_1D965D1EC(itemID);
    v26 = v21;
    *&v27 = v8;
    *(&v27 + 1) = v22;
    *&v28 = v7;
    *(&v28 + 1) = countAndFlagsBits;
    *&v29 = object;
    *(&v29 + 1) = v16;
    v30[0] = v21;
    v30[1] = v27;
    v30[2] = v28;
    v30[3] = v29;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v14;
    *(&v20 - 1) = v30;
    v25 = v14;
    sub_1D966E628();
    sub_1D9628CD0(&v26);

    v18 = type metadata accessor for MarketplaceKitError();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    *(&v20 - 2) = v14;
    *(&v20 - 1) = v13;
    v25 = v14;
    sub_1D966E628();

    sub_1D9628D40(v13);
    AppLibrary.updateInstallState(forUpdated:)(v14);
  }
}

uint64_t AppLibrary.resetAppToAvailable(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8[-v4];
  memset(v14, 0, sizeof(v14));
  swift_getKeyPath();
  v11 = a1;
  v12 = v14;
  v13 = a1;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E628();

  v6 = type metadata accessor for MarketplaceKitError();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_getKeyPath();
  v9 = a1;
  v10 = v5;
  v13 = a1;
  sub_1D966E628();

  sub_1D9628D40(v5);
  return AppLibrary.updateInstallState(forUpdated:)(a1);
}

uint64_t RepairRequest.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RepairRequest.init(bundleID:isBackground:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AppLibrary.handleRepairRequest(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 32) = *(a1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D96285DC, 0, 0);
}

uint64_t sub_1D96285DC()
{
  v3 = *(v2 + 32);
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v2 + 56);
    v1 = *(v2 + 24);
    if (qword_1EDCF6860 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1D9628704;
  v5 = *(v2 + 16);

  return sub_1D95F1900(sub_1D95F1900, v5, v1, v0 ^ 1u | (v3 << 32), 1, sub_1D964C90C, 0);
}

uint64_t sub_1D9628704()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1D9628838;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1D9628820;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9628838()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1D962889C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v6 = v3[8];
  v10 = v3[7];
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return sub_1D95FEFC8(v9, &v8, &qword_1ECB21DB8, &unk_1D9676870);
}

uint64_t sub_1D9628970(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v2 = *a2;
  swift_getKeyPath();
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E628();
}

uint64_t sub_1D9628A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  v4 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_1D95FEFC8(v3 + v4, a2, &qword_1ECB21DA8, &qword_1D967D6C0);
}

uint64_t sub_1D9628B24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1D95FEFC8(a1, &v10[-v6], &qword_1ECB21DA8, &qword_1D967D6C0);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E628();

  return sub_1D9628D40(v7);
}

uint64_t sub_1D9628C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9628D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 FetchPrivateDataRequest.init(request:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t FetchPrivateDataRequest.run()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D9628E58, 0, 0);
}

uint64_t sub_1D9628E58()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D9615770;
  v2 = *(v0 + 72);

  return sub_1D95EEF68(v2, v0 + 16, sub_1D962B900, 0);
}

uint64_t FetchPrivateDataRequest.runSynchronously()@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  if (qword_1EDCF6860 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  return sub_1D95EBB94(v5, sub_1D962B914, 0, a1);
}

uint64_t SetPrivateDataRequest.run()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D962902C, 0, 0);
}

uint64_t sub_1D962902C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D9629124;

  return sub_1D95EFB10(v0 + 16, sub_1D963144C, 0);
}

uint64_t sub_1D9629124()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SetPrivateDataRequest.runSynchronously()()
{
  v1 = *(v0 + 16);
  v2[0] = *v0;
  v2[1] = v1;
  v2[2] = *(v0 + 32);
  v3 = *(v0 + 48);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(v2, sub_1D9631460, 0);
}

uint64_t sub_1D96292B4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D9629418(uint64_t a1)
{
  v2 = sub_1D96342B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629454(uint64_t a1)
{
  v2 = sub_1D96342B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9629490(uint64_t a1)
{
  v2 = sub_1D96345F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96294CC(uint64_t a1)
{
  v2 = sub_1D96345F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9629508(uint64_t a1)
{
  v2 = sub_1D96345A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629544(uint64_t a1)
{
  v2 = sub_1D96345A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96295A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D962962C(uint64_t a1)
{
  v2 = sub_1D9634550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629668(uint64_t a1)
{
  v2 = sub_1D9634550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96296AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9638C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D96296D4(uint64_t a1)
{
  v2 = sub_1D963425C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629710(uint64_t a1)
{
  v2 = sub_1D963425C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962974C(uint64_t a1)
{
  v2 = sub_1D96344FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629788(uint64_t a1)
{
  v2 = sub_1D96344FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96297C4(uint64_t a1)
{
  v2 = sub_1D9634304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629800(uint64_t a1)
{
  v2 = sub_1D9634304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962983C(uint64_t a1)
{
  v2 = sub_1D9634454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629878(uint64_t a1)
{
  v2 = sub_1D9634454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96298B4(uint64_t a1)
{
  v2 = sub_1D9634358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96298F0(uint64_t a1)
{
  v2 = sub_1D9634358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962992C(uint64_t a1)
{
  v2 = sub_1D96343AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629968(uint64_t a1)
{
  v2 = sub_1D96343AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96299A4(uint64_t a1)
{
  v2 = sub_1D9634400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96299E0(uint64_t a1)
{
  v2 = sub_1D9634400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DC0, &qword_1D9676890);
  v73 = *(v74 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DC8, &qword_1D9676898);
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v68 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DD0, &qword_1D96768A0);
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v68 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DD8, &qword_1D96768A8);
  v70 = *(v71 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DE0, &qword_1D96768B0);
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v68 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DE8, &qword_1D96768B8);
  v85 = *(v81 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v99 = &v68 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DF0, &qword_1D96768C0);
  v76 = *(v77 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DF8, &qword_1D96768C8);
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E00, &qword_1D96768D0);
  v95 = *(v21 - 8);
  v22 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E08, &qword_1D96768D8);
  v79 = *(v80 - 8);
  v25 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v68 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E10, &unk_1D96768E0);
  v103 = *(v27 - 8);
  v28 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v68 - v29;
  v31 = *(v1 + 8);
  v102 = *v1;
  v100 = v31;
  v32 = *(v1 + 24);
  v93 = *(v1 + 16);
  v94 = v32;
  v33 = *(v1 + 40);
  v92 = *(v1 + 32);
  v34 = *(v1 + 48);
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963425C();
  v101 = v30;
  sub_1D966F118();
  v36 = v33;
  if (v34)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  v38 = (v33 >> 60) & 3 | v37;
  if (v38 > 2)
  {
    if (v38 > 4)
    {
      v39 = v101;
      if (v38 != 5)
      {
        if (v93 | v100 | v102 | v94 | v92 || v33 != 0x2000000000000000)
        {
          v64 = v93 | v100 | v94 | v92;
          if (v33 != 0x2000000000000000 || v102 != 1 || v64)
          {
            if (v33 == 0x2000000000000000 && v102 == 2 && !v64)
            {
              LOBYTE(v105) = 6;
              sub_1D96343AC();
              v66 = v69;
              sub_1D966EED8();
              (*(v70 + 8))(v66, v71);
            }

            else
            {
              LOBYTE(v105) = 9;
              sub_1D96342B0();
              v67 = v72;
              sub_1D966EED8();
              (*(v73 + 8))(v67, v74);
            }

            goto LABEL_20;
          }

          LOBYTE(v105) = 3;
          sub_1D96344FC();
          v65 = v75;
          sub_1D966EED8();
          (*(v76 + 8))(v65, v77);
        }

        else
        {
          LOBYTE(v105) = 0;
          sub_1D96345F8();
          v63 = v78;
          sub_1D966EED8();
          (*(v79 + 8))(v63, v80);
        }

        return (*(v103 + 8))(v39, v27);
      }

      LOBYTE(v105) = 8;
      sub_1D9634304();
      v40 = v89;
      sub_1D966EED8();
      v105 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
      sub_1D95FD2CC(&qword_1ECB20C28, sub_1D95FD278);
      v41 = v91;
      sub_1D966EF68();
      v51 = v90;
    }

    else
    {
      v39 = v101;
      if (v38 == 3)
      {
        LOBYTE(v105) = 5;
        sub_1D9634400();
        v40 = v82;
        sub_1D966EED8();
        v41 = v84;
        sub_1D966EF38();
        v42 = &v112;
      }

      else
      {
        LOBYTE(v105) = 7;
        sub_1D9634358();
        v40 = v86;
        sub_1D966EED8();
        v41 = v88;
        sub_1D966EF38();
        v42 = &v113;
      }

      v51 = *(v42 - 32);
    }

    (*(v51 + 8))(v40, v41);
LABEL_20:
    v53 = *(v103 + 8);
    v54 = v39;
    return v53(v54, v27);
  }

  v43 = v24;
  v45 = v95;
  v44 = v96;
  v46 = v97;
  v47 = v98;
  v48 = v99;
  if (!v38)
  {
    LOBYTE(v105) = 1;
    sub_1D96345A4();
    v52 = v101;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v45 + 8))(v43, v21);
    v53 = *(v103 + 8);
    v54 = v52;
    return v53(v54, v27);
  }

  if (v38 == 1)
  {
    LOBYTE(v105) = 2;
    sub_1D9634550();
    v49 = v101;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v46 + 8))(v44, v47);
    return (*(v103 + 8))(v49, v27);
  }

  else
  {
    v55 = v102;
    v56 = HIDWORD(v102);
    v57 = v100;
    v58 = v93;
    v59 = v94;
    v95 = HIDWORD(v100);
    v96 = HIDWORD(v93);
    v97 = HIDWORD(v94);
    LOBYTE(v105) = 4;
    sub_1D9634454();
    v98 = v27;
    v60 = v101;
    sub_1D966EED8();
    v105 = __PAIR64__(v56, v55);
    v106 = __PAIR64__(v95, v57);
    v107 = v58;
    v108 = v96;
    v109 = v59;
    v110 = v97;
    v111 = 0;
    sub_1D96344A8();
    v61 = v81;
    v62 = v104;
    sub_1D966EF68();
    if (!v62)
    {
      v105 = v92;
      v106 = v36 & 0xCFFFFFFFFFFFFFFFLL;
      v111 = 1;
      sub_1D9621C98();
      sub_1D966EF68();
    }

    (*(v85 + 8))(v48, v61);
    return (*(v103 + 8))(v60, v98);
  }
}

uint64_t FetchPrivateDataRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E60, &qword_1D96768F0);
  v108 = *(v105 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v115 = &v90 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E68, &qword_1D96768F8);
  v110 = *(v109 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v114 = &v90 - v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E70, &qword_1D9676900);
  v106 = *(v107 - 8);
  v7 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  *&v118 = &v90 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E78, &qword_1D9676908);
  v101 = *(v103 - 8);
  v9 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v112 = &v90 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E80, &qword_1D9676910);
  v100 = *(v102 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v117 = &v90 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E88, &qword_1D9676918);
  v104 = *(v99 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v90 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E90, &qword_1D9676920);
  v97 = *(v98 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v113 = &v90 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E98, &qword_1D9676928);
  v96 = *(v95 - 8);
  v17 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v116 = &v90 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EA0, &qword_1D9676930);
  v93 = *(v94 - 8);
  v19 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v21 = &v90 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EA8, &qword_1D9676938);
  v92 = *(v22 - 8);
  v23 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EB0, &unk_1D9676940);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D963425C();
  v33 = v121;
  sub_1D966F0F8();
  if (v33)
  {
    goto LABEL_13;
  }

  v34 = v25;
  v90 = v22;
  v36 = v116;
  v35 = v117;
  v37 = v118;
  v91 = 0;
  v121 = v27;
  v38 = v119;
  v39 = sub_1D966EEB8();
  v40 = (2 * *(v39 + 16)) | 1;
  v127 = v39;
  v128 = v39 + 32;
  v129 = 0;
  v130 = v40;
  v41 = sub_1D9605E24();
  if (v41 == 10 || v129 != v130 >> 1)
  {
    v52 = sub_1D966ED58();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v54 = &type metadata for FetchPrivateDataRequest.Request;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
LABEL_11:
    (*(v121 + 8))(v30, v26);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v50 = v120;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (v41 > 4u)
  {
    v57 = v30;
    v58 = v26;
    v51 = v38;
    if (v41 <= 6u)
    {
      if (v41 == 5)
      {
        LOBYTE(v124) = 5;
        sub_1D9634400();
        v66 = v35;
        v60 = v58;
        v61 = v57;
        v67 = v91;
        sub_1D966EDE8();
        if (!v67)
        {
          v68 = v102;
          v47 = sub_1D966EE58();
          v44 = v88;
          (*(v100 + 8))(v66, v68);
          (*(v121 + 8))(v57, v58);
          swift_unknownObjectRelease();
          v45 = 0;
          v49 = 0;
          v46 = 0uLL;
          v48 = 0x3000000000000000;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      LOBYTE(v124) = 6;
      sub_1D96343AC();
      v81 = v112;
      v82 = v91;
      sub_1D966EDE8();
      if (!v82)
      {
        (*(v101 + 8))(v81, v103);
        (*(v121 + 8))(v57, v58);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0uLL;
        v49 = 1;
        v48 = 0x2000000000000000;
        v47 = 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (v41 == 7)
      {
        LOBYTE(v124) = 7;
        sub_1D9634358();
        v60 = v58;
        v61 = v57;
        v73 = v91;
        sub_1D966EDE8();
        if (!v73)
        {
          v83 = v107;
          v47 = sub_1D966EE58();
          v44 = v87;
          (*(v106 + 8))(v37, v83);
          (*(v121 + 8))(v57, v58);
          swift_unknownObjectRelease();
          v45 = 0;
          v48 = 0;
          v46 = 0uLL;
          v49 = 1;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      if (v41 == 8)
      {
        LOBYTE(v124) = 8;
        sub_1D9634304();
        v59 = v114;
        v60 = v58;
        v61 = v57;
        v62 = v91;
        sub_1D966EDE8();
        if (!v62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
          sub_1D95FD2CC(&qword_1ECB20C40, sub_1D95FD344);
          v63 = v109;
          sub_1D966EE88();
          (*(v110 + 8))(v59, v63);
          (*(v121 + 8))(v57, v58);
          swift_unknownObjectRelease();
          v44 = 0;
          v45 = 0;
          v47 = v124;
          v46 = 0uLL;
          v49 = 1;
          v48 = 0x1000000000000000;
          goto LABEL_42;
        }

LABEL_29:
        (*(v121 + 8))(v61, v60);
        swift_unknownObjectRelease();
        v50 = v120;
        return __swift_destroy_boxed_opaque_existential_1(v50);
      }

      LOBYTE(v124) = 9;
      sub_1D96342B0();
      v78 = v115;
      v79 = v91;
      sub_1D966EDE8();
      if (!v79)
      {
        (*(v108 + 8))(v78, v105);
        (*(v121 + 8))(v57, v58);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0uLL;
        v49 = 1;
        v48 = 0x2000000000000000;
        v47 = 3;
        goto LABEL_42;
      }
    }

    (*(v121 + 8))(v57, v58);
    goto LABEL_12;
  }

  if (v41 > 1u)
  {
    v42 = v91;
    if (v41 == 2)
    {
      LOBYTE(v124) = 2;
      sub_1D9634550();
      v69 = v36;
      sub_1D966EDE8();
      if (!v42)
      {
        v70 = v95;
        v71 = sub_1D966EE58();
        v72 = v121;
        v47 = v71;
        v44 = v86;
        (*(v96 + 8))(v69, v70);
        (*(v72 + 8))(v30, v26);
        swift_unknownObjectRelease();
        v45 = 0;
        v49 = 0;
        v46 = 0uLL;
        v48 = 0x1000000000000000;
        v50 = v120;
        v51 = v38;
        goto LABEL_43;
      }

      goto LABEL_11;
    }

    if (v41 == 3)
    {
      LOBYTE(v124) = 3;
      sub_1D96344FC();
      v43 = v113;
      sub_1D966EDE8();
      if (!v42)
      {
        (*(v97 + 8))(v43, v98);
        (*(v121 + 8))(v30, v26);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0uLL;
        v47 = 1;
        v48 = 0x2000000000000000;
        v49 = 1;
        v50 = v120;
        v51 = v38;
LABEL_43:
        *v51 = v47;
        *(v51 + 8) = v44;
        *(v51 + 16) = v46;
        *(v51 + 32) = v45;
        *(v51 + 40) = v48;
        *(v51 + 48) = v49;
        return __swift_destroy_boxed_opaque_existential_1(v50);
      }

      goto LABEL_11;
    }

    LOBYTE(v124) = 4;
    sub_1D9634454();
    v74 = v111;
    sub_1D966EDE8();
    v75 = v26;
    if (!v42)
    {
      v51 = v38;
      v76 = v75;
      v132 = 0;
      sub_1D963464C();
      v77 = v99;
      sub_1D966EE88();
      v47 = v124;
      v44 = v125;
      v118 = v126;
      v131 = 1;
      sub_1D9621D48();
      sub_1D966EE88();
      (*(v104 + 8))(v74, v77);
      (*(v121 + 8))(v30, v76);
      swift_unknownObjectRelease();
      v49 = 0;
      v45 = v122;
      v48 = v123 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v50 = v120;
      v46 = v118;
      goto LABEL_43;
    }

LABEL_35:
    (*(v121 + 8))(v30, v75);
    goto LABEL_12;
  }

  v64 = v91;
  if (v41)
  {
    LOBYTE(v124) = 1;
    sub_1D96345A4();
    v80 = v21;
    sub_1D966EDE8();
    v75 = v26;
    if (v64)
    {
      goto LABEL_35;
    }

    v51 = v38;
    v84 = v75;
    v85 = v94;
    v47 = sub_1D966EE58();
    v44 = v89;
    (*(v93 + 8))(v80, v85);
    (*(v121 + 8))(v30, v84);
    swift_unknownObjectRelease();
    v45 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0uLL;
LABEL_42:
    v50 = v120;
    goto LABEL_43;
  }

  LOBYTE(v124) = 0;
  sub_1D96345F8();
  sub_1D966EDE8();
  v65 = v26;
  if (!v64)
  {
    v51 = v38;
    (*(v92 + 8))(v34, v90);
    (*(v121 + 8))(v30, v65);
    swift_unknownObjectRelease();
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0uLL;
    v49 = 1;
    v48 = 0x2000000000000000;
    v50 = v120;
    goto LABEL_43;
  }

  (*(v121 + 8))(v30, v26);
  swift_unknownObjectRelease();
  v50 = v120;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t FetchPrivateDataRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1D96346A0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D962B940(uint64_t a1)
{
  v2 = sub_1D9634704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962B97C(uint64_t a1)
{
  v2 = sub_1D9634704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPrivateDataRequest.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EC0, &qword_1D9676950);
  v28 = *(v20 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v19 = v16 - v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v17 = v11;
  v12 = a1[3];
  v18 = a1[4];
  v16[1] = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D96346A0(v5, v6, v7, v8, v10, v9, v11);
  sub_1D9634704();
  v13 = v19;
  sub_1D966F118();
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v10;
  v26 = v9;
  v27 = v17;
  sub_1D9634758();
  v14 = v20;
  sub_1D966EF68();
  sub_1D96347AC(v21, v22, v23, v24, v25, v26, v27);
  return (*(v28 + 8))(v13, v14);
}

uint64_t FetchPrivateDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EC8, &qword_1D9676958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634704();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9634810();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v15[1];
    v13 = v15[2];
    *a2 = v15[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D962BCEC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6554686372616573;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D962BE88(uint64_t a1)
{
  v2 = sub_1D96348B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BEC4(uint64_t a1)
{
  v2 = sub_1D96348B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BF00(uint64_t a1)
{
  v2 = sub_1D9634BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BF3C(uint64_t a1)
{
  v2 = sub_1D9634BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BF78(uint64_t a1)
{
  v2 = sub_1D9634B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BFB4(uint64_t a1)
{
  v2 = sub_1D9634B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BFF0(uint64_t a1)
{
  v2 = sub_1D9634B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C02C(uint64_t a1)
{
  v2 = sub_1D9634B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9638FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D962C098(uint64_t a1)
{
  v2 = sub_1D9634864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C0D4(uint64_t a1)
{
  v2 = sub_1D9634864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C110(uint64_t a1)
{
  v2 = sub_1D9634AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C14C(uint64_t a1)
{
  v2 = sub_1D9634AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C188(uint64_t a1)
{
  v2 = sub_1D963490C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C1C4(uint64_t a1)
{
  v2 = sub_1D963490C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C200(uint64_t a1)
{
  v2 = sub_1D9634A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C23C(uint64_t a1)
{
  v2 = sub_1D9634A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C278(uint64_t a1)
{
  v2 = sub_1D9634960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C2B4(uint64_t a1)
{
  v2 = sub_1D9634960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C2F0(uint64_t a1)
{
  v2 = sub_1D96349B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C32C(uint64_t a1)
{
  v2 = sub_1D96349B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C368(uint64_t a1)
{
  v2 = sub_1D9634A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C3A4(uint64_t a1)
{
  v2 = sub_1D9634A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchDataResponse.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21ED0, &qword_1D9676960);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21ED8, &qword_1D9676968);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EE0, &qword_1D9676970);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EE8, &qword_1D9676978);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EF0, &qword_1D9676980);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EF8, &qword_1D9676988);
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v48 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F00, &qword_1D9676990);
  v54 = *(v55 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v48 - v21;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F08, &qword_1D9676998);
  v51 = *(v52 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v48 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F10, &qword_1D96769A0);
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F18, &qword_1D96769A8);
  v48 = *(v28 - 8);
  v29 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v48 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F20, &qword_1D96769B0);
  v33 = *(v32 - 8);
  v77 = v32;
  v78 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v48 - v35;
  v37 = *v1;
  v74 = v1[1];
  v75 = v37;
  v38 = *(v1 + 16);
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634864();
  v76 = v36;
  sub_1D966F118();
  if (v38 > 4)
  {
    if (v38 <= 6)
    {
      if (v38 == 5)
      {
        LOBYTE(v79) = 5;
        sub_1D9634A08();
        v40 = v57;
        v42 = v76;
        v41 = v77;
        sub_1D966EED8();
        v43 = v61;
        sub_1D966EF48();
        v44 = v60;
      }

      else
      {
        LOBYTE(v79) = 6;
        sub_1D96349B4();
        v40 = v62;
        v42 = v76;
        v41 = v77;
        sub_1D966EED8();
        v43 = v64;
        sub_1D966EF48();
        v44 = v63;
      }
    }

    else if (v38 == 7)
    {
      LOBYTE(v79) = 7;
      sub_1D9634960();
      v40 = v65;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v43 = v67;
      sub_1D966EEE8();
      v44 = v66;
    }

    else if (v38 == 8)
    {
      LOBYTE(v79) = 8;
      sub_1D963490C();
      v40 = v68;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v79 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
      sub_1D95EDFE4(&qword_1ECB20BF0);
      v43 = v70;
      sub_1D966EF68();
      v44 = v69;
    }

    else
    {
      LOBYTE(v79) = 9;
      sub_1D96348B8();
      v40 = v71;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v79 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F30, &qword_1D96769B8);
      sub_1D9634CCC(&qword_1ECB21F38, &qword_1ECB21F40);
      v43 = v73;
      sub_1D966EF68();
      v44 = v72;
    }

    goto LABEL_20;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      LOBYTE(v79) = 2;
      sub_1D9634B04();
      v40 = v50;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v79 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200);
      v43 = v52;
      sub_1D966EF68();
      v44 = v51;
    }

    else if (v38 == 3)
    {
      LOBYTE(v79) = 3;
      sub_1D9634AB0();
      v40 = v53;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v79 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200);
      v43 = v55;
      sub_1D966EF68();
      v44 = v54;
    }

    else
    {
      LOBYTE(v79) = 4;
      sub_1D9634A5C();
      v40 = v56;
      v42 = v76;
      v41 = v77;
      sub_1D966EED8();
      v79 = v75;
      v80 = v74;
      sub_1D9621C98();
      v43 = v59;
      sub_1D966EF68();
      v44 = v58;
    }

LABEL_20:
    (*(v44 + 8))(v40, v43);
    return (*(v78 + 8))(v42, v41);
  }

  if (!v38)
  {
    LOBYTE(v79) = 0;
    sub_1D9634BAC();
    v46 = v76;
    v45 = v77;
    sub_1D966EED8();
    v79 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F80, &qword_1D96769C0);
    sub_1D9634C00(&qword_1ECB21F88, sub_1D9634C78);
    sub_1D966EF68();
    (*(v48 + 8))(v31, v28);
    return (*(v78 + 8))(v46, v45);
  }

  LOBYTE(v79) = 1;
  sub_1D9634B58();
  v42 = v76;
  v41 = v77;
  sub_1D966EED8();
  sub_1D966EF48();
  (*(v49 + 8))(v27, v24);
  return (*(v78 + 8))(v42, v41);
}

uint64_t FetchDataResponse.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F98, &qword_1D96769C8);
  v4 = *(v3 - 8);
  v108 = v3;
  v109 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v113 = &v86[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FA0, &qword_1D96769D0);
  v8 = *(v7 - 8);
  v106 = v7;
  v107 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v86[-v10];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FA8, &qword_1D96769D8);
  v105 = *(v104 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v116 = &v86[-v12];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FB0, &qword_1D96769E0);
  v103 = *(v102 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v115 = &v86[-v14];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FB8, &qword_1D96769E8);
  v101 = *(v100 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v112 = &v86[-v16];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FC0, &qword_1D96769F0);
  v99 = *(v96 - 8);
  v17 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v110 = &v86[-v18];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FC8, &qword_1D96769F8);
  v97 = *(v98 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v111 = &v86[-v20];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FD0, &qword_1D9676A00);
  v94 = *(v95 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v114 = &v86[-v22];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FD8, &qword_1D9676A08);
  v92 = *(v93 - 8);
  v23 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v25 = &v86[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FE0, &qword_1D9676A10);
  v91 = *(v26 - 8);
  v27 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v86[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FE8, &qword_1D9676A18);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v86[-v33];
  v36 = a1[3];
  v35 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1D9634864();
  v37 = v127;
  sub_1D966F0F8();
  if (v37)
  {
    goto LABEL_14;
  }

  v89 = v29;
  v88 = v26;
  v38 = v114;
  v39 = v115;
  v40 = v116;
  v90 = 0;
  v127 = v31;
  v41 = v117;
  v42 = v118;
  v43 = sub_1D966EEB8();
  v44 = (2 * *(v43 + 16)) | 1;
  v122 = v43;
  v123 = v43 + 32;
  v124 = 0;
  v125 = v44;
  v45 = sub_1D9605E24();
  if (v45 != 10 && v124 == v125 >> 1)
  {
    v87 = v45;
    if (v45 <= 4u)
    {
      v46 = v90;
      if (v45 > 1u)
      {
        if (v45 == 2)
        {
          LOBYTE(v120) = 2;
          sub_1D9634B04();
          v48 = v38;
          sub_1D966EDE8();
          v47 = v127;
          if (!v46)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
            sub_1D96125F8(&qword_1EDCF6670);
            v49 = v95;
            sub_1D966EE88();
            v50 = &v126;
            goto LABEL_10;
          }

          goto LABEL_42;
        }

        v47 = v127;
        if (v45 == 3)
        {
          LOBYTE(v120) = 3;
          sub_1D9634AB0();
          v48 = v111;
          sub_1D966EDE8();
          if (!v46)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
            sub_1D96125F8(&qword_1EDCF6670);
            v49 = v98;
            sub_1D966EE88();
            v50 = &v128;
LABEL_10:
            (*(*(v50 - 32) + 8))(v48, v49);
            (*(v47 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v51 = 0;
            v52 = v119;
            v53 = v120;
LABEL_46:
            *v42 = v53;
            *(v42 + 8) = v51;
            *(v42 + 16) = v87;
            return __swift_destroy_boxed_opaque_existential_1(v52);
          }

          goto LABEL_42;
        }

        LOBYTE(v120) = 4;
        sub_1D9634A5C();
        v73 = v110;
        sub_1D966EDE8();
        if (v46)
        {
LABEL_42:
          (*(v47 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v52 = v119;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }

        v60 = v42;
        sub_1D9621D48();
        v74 = v96;
        sub_1D966EE88();
        (*(v99 + 8))(v73, v74);
        (*(v47 + 8))(v34, v30);
        swift_unknownObjectRelease();
        v53 = v120;
        v51 = v121;
        goto LABEL_43;
      }

      if (v45)
      {
        LOBYTE(v120) = 1;
        sub_1D9634B58();
        sub_1D966EDE8();
        if (!v46)
        {
          v78 = v93;
          v85 = sub_1D966EE68();
          (*(v92 + 8))(v25, v78);
          (*(v127 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v51 = 0;
          v53 = v85 & 1;
          v52 = v119;
          goto LABEL_46;
        }
      }

      else
      {
        LOBYTE(v120) = 0;
        sub_1D9634BAC();
        v64 = v89;
        sub_1D966EDE8();
        if (!v46)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F80, &qword_1D96769C0);
          sub_1D9634C00(&qword_1ECB22000, sub_1D9634DB0);
          v65 = v88;
          sub_1D966EE88();
          (*(v91 + 8))(v64, v65);
          (*(v127 + 8))(v34, v30);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = v119;
          v53 = v120;
          goto LABEL_46;
        }
      }

      goto LABEL_12;
    }

    if (v45 > 6u)
    {
      if (v45 != 7)
      {
        v59 = v127;
        if (v45 == 8)
        {
          v60 = v42;
          LOBYTE(v120) = 8;
          sub_1D963490C();
          v61 = v41;
          v62 = v90;
          sub_1D966EDE8();
          if (!v62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
            sub_1D95EDFE4(&qword_1ECB20C00);
            v63 = v106;
            sub_1D966EE88();
            (*(v107 + 8))(v61, v63);
            (*(v59 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v51 = 0;
            v53 = v120;
            goto LABEL_43;
          }
        }

        else
        {
          LOBYTE(v120) = 9;
          sub_1D96348B8();
          v75 = v90;
          sub_1D966EDE8();
          if (!v75)
          {
            v60 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F30, &qword_1D96769B8);
            sub_1D9634CCC(&qword_1ECB21FF0, &qword_1ECB21FF8);
            v76 = v108;
            v77 = v113;
            sub_1D966EE88();
            (*(v109 + 8))(v77, v76);
            (*(v59 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v51 = 0;
            v52 = v119;
            v53 = v120;
LABEL_44:
            v42 = v60;
            goto LABEL_46;
          }
        }

        (*(v59 + 8))(v34, v30);
        goto LABEL_13;
      }

      LOBYTE(v120) = 7;
      sub_1D9634960();
      v70 = v40;
      v71 = v90;
      sub_1D966EDE8();
      v72 = v127;
      if (v71)
      {
        (*(v127 + 8))(v34, v30);
        swift_unknownObjectRelease();
        v52 = v119;
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      v60 = v42;
      v82 = v104;
      v53 = sub_1D966EE08();
      v51 = v83;
      (*(v105 + 8))(v70, v82);
      (*(v72 + 8))(v34, v30);
      swift_unknownObjectRelease();
LABEL_43:
      v52 = v119;
      goto LABEL_44;
    }

    if (v45 == 5)
    {
      LOBYTE(v120) = 5;
      sub_1D9634A08();
      v66 = v112;
      v67 = v90;
      sub_1D966EDE8();
      v68 = v127;
      if (!v67)
      {
        v69 = v100;
        v84 = sub_1D966EE68();
        (*(v101 + 8))(v66, v69);
LABEL_45:
        (*(v68 + 8))(v34, v30);
        swift_unknownObjectRelease();
        v51 = 0;
        v53 = v84 & 1;
        v42 = v118;
        v52 = v119;
        goto LABEL_46;
      }
    }

    else
    {
      LOBYTE(v120) = 6;
      sub_1D96349B4();
      v79 = v39;
      v80 = v90;
      sub_1D966EDE8();
      v68 = v127;
      if (!v80)
      {
        v81 = v102;
        v84 = sub_1D966EE68();
        (*(v103 + 8))(v79, v81);
        goto LABEL_45;
      }
    }

    (*(v68 + 8))(v34, v30);
    goto LABEL_13;
  }

  v54 = sub_1D966ED58();
  swift_allocError();
  v56 = v55;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
  *v56 = &type metadata for FetchDataResponse.Response;
  sub_1D966EDF8();
  sub_1D966ED48();
  (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
  swift_willThrow();
LABEL_12:
  (*(v127 + 8))(v34, v30);
LABEL_13:
  swift_unknownObjectRelease();
LABEL_14:
  v52 = v119;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t FetchDataResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D96181D8(v2, v3, v4);
}