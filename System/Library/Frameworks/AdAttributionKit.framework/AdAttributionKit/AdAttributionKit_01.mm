unint64_t sub_236A0AF48()
{
  result = qword_27DE61008;
  if (!qword_27DE61008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61000, &unk_236A35160);
    sub_236A0B014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61008);
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

unint64_t sub_236A0B014()
{
  result = qword_27DE61010;
  if (!qword_27DE61010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61010);
  }

  return result;
}

unint64_t sub_236A0B06C()
{
  result = qword_27DE61018;
  if (!qword_27DE61018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61018);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_236A0B0DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_236A0B138(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_236A0B198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236A0B1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_236A0B23C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_236A0B254(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_236A0B2E8()
{
  result = qword_27DE61020;
  if (!qword_27DE61020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61020);
  }

  return result;
}

unint64_t sub_236A0B340()
{
  result = qword_27DE61028;
  if (!qword_27DE61028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61028);
  }

  return result;
}

unint64_t sub_236A0B398()
{
  result = qword_27DE61030;
  if (!qword_27DE61030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61030);
  }

  return result;
}

unint64_t sub_236A0B3F0()
{
  result = qword_27DE61038;
  if (!qword_27DE61038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61038);
  }

  return result;
}

unint64_t sub_236A0B448()
{
  result = qword_2813160E8;
  if (!qword_2813160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160E8);
  }

  return result;
}

unint64_t sub_236A0B4A0()
{
  result = qword_2813160F0;
  if (!qword_2813160F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160F0);
  }

  return result;
}

unint64_t sub_236A0B4F8()
{
  result = qword_281316108;
  if (!qword_281316108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316108);
  }

  return result;
}

unint64_t sub_236A0B550()
{
  result = qword_281316110;
  if (!qword_281316110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316110);
  }

  return result;
}

unint64_t sub_236A0B5A8()
{
  result = qword_281316120;
  if (!qword_281316120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316120);
  }

  return result;
}

unint64_t sub_236A0B600()
{
  result = qword_281316128;
  if (!qword_281316128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316128);
  }

  return result;
}

unint64_t sub_236A0B658()
{
  result = qword_281316130;
  if (!qword_281316130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316130);
  }

  return result;
}

unint64_t sub_236A0B6B0()
{
  result = qword_281316138;
  if (!qword_281316138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316138);
  }

  return result;
}

unint64_t sub_236A0B708()
{
  result = qword_27DE61040;
  if (!qword_27DE61040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61040);
  }

  return result;
}

unint64_t sub_236A0B760()
{
  result = qword_27DE61048;
  if (!qword_27DE61048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61048);
  }

  return result;
}

unint64_t sub_236A0B7B8()
{
  result = qword_27DE61050;
  if (!qword_27DE61050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61050);
  }

  return result;
}

unint64_t sub_236A0B810()
{
  result = qword_27DE61058;
  if (!qword_27DE61058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61058);
  }

  return result;
}

unint64_t sub_236A0B864()
{
  result = qword_281316100;
  if (!qword_281316100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316100);
  }

  return result;
}

uint64_t sub_236A0B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_236A0B8EC, 0, 0);
}

uint64_t sub_236A0B8EC()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = sub_236A0C9D4;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_236A0BA30;

  return sub_236A02B20(sub_236A0CA04, v3);
}

uint64_t sub_236A0BA30()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_236A0CCAC;
  }

  else
  {
    v3 = sub_236A0CC98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_236A0BB44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236A2EE64();
  v11 = sub_236A2EE64();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_236A2E344;
  v13[3] = &block_descriptor_21;
  v12 = _Block_copy(v13);

  [a1 preflightImpressionWithAdvertisedItemID:a6 compactJWS:v10 adNetworkID:v11 reply:v12];
  _Block_release(v12);
}

uint64_t sub_236A0BC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_236A0BC70, 0, 0);
}

uint64_t sub_236A0BC70()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_236A0CA30;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_236A0BDB4;

  return sub_236A02B20(sub_236A0CC90, v3);
}

uint64_t sub_236A0BDB4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_236A0CCA8;
  }

  else
  {
    v3 = sub_236A0CC94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236A0BEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_236A0BEEC, 0, 0);
}

uint64_t sub_236A0BEEC()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_236A0CA6C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_236A0C030;

  return sub_236A02B20(sub_236A0CC90, v3);
}

uint64_t sub_236A0C030()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_236A0C1B0;
  }

  else
  {
    v3 = sub_236A0C144;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236A0C144()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236A0C1B0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

void sub_236A0C21C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v14 = sub_236A2EE64();
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_236A2E344;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t sub_236A0C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_236A0C328, 0, 0);
}

uint64_t sub_236A0C328()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = sub_236A0CAA8;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_236A0C474;

  return sub_236A02B20(sub_236A0CC90, v6);
}

uint64_t sub_236A0C474()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_236A0C5F4;
  }

  else
  {
    v3 = sub_236A0C588;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236A0C588()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236A0C5F4()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

void sub_236A0C660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = aBlock - v16;
  v18 = sub_236A2EE64();
  sub_236A0CBFC(a10, v17);
  v19 = sub_236A2ED44();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    v21 = sub_236A2ED34();
    (*(v20 + 8))(v17, v19);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A2E344;
  aBlock[3] = &block_descriptor_2;
  v22 = _Block_copy(aBlock);

  [a1 processTapWithAdvertisedItemID:a6 compactJWS:v18 eventMessage:a9 reengagementURL:v21 reply:v22];
  _Block_release(v22);
}

uint64_t sub_236A0C848(uint64_t a1)
{
  v2 = sub_236A0CAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A0C884(uint64_t a1)
{
  v2 = sub_236A0CAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A0C8C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE610A0, qword_236A31A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A0CAD8();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

void sub_236A0C9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  sub_236A0BB44(a1, a2, a3, a4, a5, v5[2]);
}

uint64_t sub_236A0CA04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_236A0CAD8()
{
  result = qword_27DE610A8;
  if (!qword_27DE610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610A8);
  }

  return result;
}

unint64_t sub_236A0CB50()
{
  result = qword_27DE610B0;
  if (!qword_27DE610B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610B0);
  }

  return result;
}

unint64_t sub_236A0CBA8()
{
  result = qword_27DE610B8;
  if (!qword_27DE610B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610B8);
  }

  return result;
}

uint64_t sub_236A0CBFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_236A0CCB0()
{
  v0 = sub_236A2F104();

  return v0 != 0;
}

unint64_t sub_236A0CD20()
{
  result = qword_27DE610C0;
  if (!qword_27DE610C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610C0);
  }

  return result;
}

uint64_t sub_236A0CD74()
{
  sub_236A2F3B4();
  sub_236A2EEC4();
  return sub_236A2F3D4();
}

uint64_t sub_236A0CDF8()
{
  sub_236A2F3B4();
  sub_236A2EEC4();
  return sub_236A2F3D4();
}

uint64_t sub_236A0CE54@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_236A0CF90()
{
  result = qword_27DE610C8;
  if (!qword_27DE610C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610C8);
  }

  return result;
}

uint64_t sub_236A0CFE8(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x657372616F63;
  }

  return 1701734758;
}

uint64_t sub_236A0D02C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236A0D10C();
  *a2 = result;
  return result;
}

uint64_t sub_236A0D10C()
{
  v0 = sub_236A2F104();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_236A0D15C()
{
  result = qword_27DE610D0;
  if (!qword_27DE610D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610D0);
  }

  return result;
}

unint64_t sub_236A0D1C0()
{
  result = qword_27DE610D8;
  if (!qword_27DE610D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610D8);
  }

  return result;
}

uint64_t sub_236A0D214(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  v31 = sub_236A12244;
  v32 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_236A10144;
  *(&v30 + 1) = &block_descriptor_59;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611B0, &unk_236A320A0);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v34 = v28;
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v31 = *(a1 + 4);
    v14 = sub_236A2ECF4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A120B4();
    v17 = sub_236A2ECD4();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v17;
      v21 = v18;

      v22 = a2;
      v23 = swift_allocObject();
      *(v23 + 16) = v8;
      *(v23 + 24) = v12;

      v22(&v34, v20, v21, sub_236A12214, v23);

      swift_beginAccess();
      v24 = *(v8 + 16);
      if (v24 >> 8 <= 0xFE)
      {
        if ((v24 & 0x100) == 0)
        {
          sub_236A08300(v20, v21);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v33);
          return v24 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v27 = v24;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      sub_236A08300(v20, v21);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return 0;
}

uint64_t sub_236A0D5D0@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v48 = a3;
  v49 = a2;
  v45 = a4;
  v47 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611A0, &qword_236A32088);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611A8, &unk_236A32090);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = *(*v19 + 104);
  (*(v13 + 56))(v19 + v20, 1, 1, v12);
  v21 = v6[2];
  v53 = sub_236A120AC;
  v54 = v19;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_236A10144;
  *(&v52 + 1) = &block_descriptor_50;
  v22 = _Block_copy(&aBlock);

  v23 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v22);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v55, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611B0, &unk_236A320A0);
  if (!swift_dynamicCast())
  {
    sub_236A083C8();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v24 = v50;
  v56 = v50;
  v25 = a1[1];
  aBlock = *a1;
  v52 = v25;
  v53 = *(a1 + 4);
  v26 = sub_236A2ECF4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A120B4();
  v29 = sub_236A2ECD4();
  if (v5)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v43 = v24;
  v32 = v29;
  v33 = v30;

  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v19;
  *(v34 + 24) = v35;

  v44 = v32;
  v47 = v33;
  v49(&v56, v32, v33, sub_236A12108, v34);

  swift_beginAccess();
  sub_236A12180(v19 + v20, v11, &qword_27DE611A0, &qword_236A32088);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2369F90E0(v11, &qword_27DE611A0, &qword_236A32088);
    sub_236A083C8();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    sub_236A08300(v44, v47);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v37 = v44;
  v38 = v46;
  v39 = v47;
  sub_236A11D04(v11, v46, &qword_27DE60F48, &qword_236A31140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LOBYTE(v50) = *v38;
    v40 = v50;
    sub_236A083C8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v41 = v40;
    sub_236A08300(v37, v39);
    goto LABEL_9;
  }

  sub_236A08300(v37, v39);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_236A11D04(v38, v45, &qword_27DE60CF0, &qword_236A2FF30);
}

uint64_t sub_236A0DB34(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v32 = sub_236A12244;
  *(&v32 + 1) = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_236A10144;
  *(&v31 + 1) = &block_descriptor_44;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v41, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v42 = v40;
    v12 = a1[7];
    v36 = a1[6];
    v37 = v12;
    v38 = a1[8];
    v39 = *(a1 + 144);
    v13 = a1[3];
    v32 = a1[2];
    v33 = v13;
    v14 = a1[5];
    v34 = a1[4];
    v35 = v14;
    v15 = a1[1];
    aBlock = *a1;
    v31 = v15;
    v16 = sub_236A2ECF4();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A12004();
    v19 = sub_236A2ECD4();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v19;
      v23 = v20;

      v24 = a2;
      v25 = swift_allocObject();
      *(v25 + 16) = v8;
      *(v25 + 24) = v7;

      v24(&v42, v22, v23, sub_236A12214, v25);

      swift_beginAccess();
      v26 = *(v8 + 16);
      if (v26 >> 8 <= 0xFE)
      {
        if ((v26 & 0x100) == 0)
        {
          sub_236A08300(v22, v23);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v41);
          return v26 & 1;
        }

        LOBYTE(v40) = *(v8 + 16);
        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v29 = v26;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v27 = 0;
        swift_willThrow();
      }

      sub_236A08300(v22, v23);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return 0;
}

uint64_t sub_236A0DF0C(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v31 = sub_236A12244;
  *(&v31 + 1) = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_236A10144;
  *(&v30 + 1) = &block_descriptor_38_0;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v36, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v37 = v35;
    v12 = a1[5];
    v33 = a1[4];
    v34[0] = v12;
    *(v34 + 9) = *(a1 + 89);
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v14 = a1[3];
    v31 = a1[2];
    v32 = v14;
    v15 = sub_236A2ECF4();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A11FB0();
    v18 = sub_236A2ECD4();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = v18;
      v22 = v19;

      v23 = a2;
      v24 = swift_allocObject();
      *(v24 + 16) = v8;
      *(v24 + 24) = v7;

      v23(&v37, v21, v22, sub_236A12214, v24);

      swift_beginAccess();
      v25 = *(v8 + 16);
      if (v25 >> 8 <= 0xFE)
      {
        if ((v25 & 0x100) == 0)
        {
          sub_236A08300(v21, v22);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v36);
          return v25 & 1;
        }

        LOBYTE(v35) = *(v8 + 16);
        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v28 = v25;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v26 = 0;
        swift_willThrow();
      }

      sub_236A08300(v21, v22);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return 0;
}

uint64_t sub_236A0E2D4(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_236A12244;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_32;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v26, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = sub_236A2ECF4();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A11F5C();
    v13 = sub_236A2ECD4();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_236A12214, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_236A08300(v16, v17);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v26);
          return v20 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_236A08300(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return 0;
}

uint64_t sub_236A0E674(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v31 = sub_236A12244;
  *(&v31 + 1) = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_236A10144;
  *(&v30 + 1) = &block_descriptor_26;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v32, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v33 = v28;
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v31 = a1[2];
    v14 = sub_236A2ECF4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A11F08();
    v17 = sub_236A2ECD4();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v17;
      v21 = v18;

      v22 = a2;
      v23 = swift_allocObject();
      *(v23 + 16) = v8;
      *(v23 + 24) = v12;

      v22(&v33, v20, v21, sub_236A12214, v23);

      swift_beginAccess();
      v24 = *(v8 + 16);
      if (v24 >> 8 <= 0xFE)
      {
        if ((v24 & 0x100) == 0)
        {
          sub_236A08300(v20, v21);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v32);
          return v24 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v27 = v24;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      sub_236A08300(v20, v21);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return 0;
}

uint64_t sub_236A0EA30(char a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  aBlock[4] = sub_236A11ED0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_20;
  v10 = _Block_copy(aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v29, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F70, &qword_236A31190);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v30 = v27;
    LOBYTE(aBlock[0]) = a1;
    v13 = sub_236A2ECF4();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A0883C();
    v16 = sub_236A2ECD4();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v16;
      v20 = v17;

      v21 = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = v8;
      *(v22 + 24) = v12;

      v21(&v30, v19, v20, sub_236A11EEC, v22);

      swift_beginAccess();
      v23 = *(v8 + 16);
      if (v23 >> 8 <= 0xFE)
      {
        if ((v23 & 0x100) == 0)
        {
          sub_236A08300(v19, v20);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v29);
          return v23 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v26 = v23;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v24 = 0;
        swift_willThrow();
      }

      sub_236A08300(v19, v20);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return 0;
}

uint64_t sub_236A0EDE0@<X0>(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61150, &qword_236A32060);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  v8 = v2[2];
  aBlock[4] = sub_236A11D6C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_14;
  v9 = _Block_copy(aBlock);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v30, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (!swift_dynamicCast())
  {
    sub_236A083C8();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v27 = a1;
  v31 = v28;
  v11 = sub_236A2ECF4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A11D74();
  v14 = sub_236A2ECD4();
  if (v3)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v17 = v14;
  v18 = v15;
  v26 = a2;

  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v6;

  v27(&v31, v17, v18, sub_236A11DC8, v19);

  swift_beginAccess();
  v20 = *(v7 + 32);
  if (v20 == 255)
  {
    sub_236A083C8();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v21 = *(v7 + 16);
  if (v20)
  {
    sub_236A083C8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v22 = v21;
LABEL_9:
    sub_236A08300(v17, v18);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v25 = *(v7 + 24);
  sub_236A11DD0(*(v7 + 16), v25);
  sub_236A08300(v17, v18);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_1(v30);
  *v26 = v21;
  v26[1] = v25;
  return result;
}

uint64_t sub_236A0F198(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_236A12244;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v26, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = sub_236A2ECF4();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A08728();
    v13 = sub_236A2ECD4();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_236A12214, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_236A08300(v16, v17);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v26);
          return v20 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_236A08300(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return 0;
}

uint64_t sub_236A0F538(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61110, &unk_236A32020);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_236A12244;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_3;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(v26, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61118, &qword_236A32030);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = sub_236A2ECF4();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_236A2ECE4();
    sub_236A11CB0();
    v13 = sub_236A2ECD4();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_236A12214, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_236A08300(v16, v17);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v26);
          return v20 & 1;
        }

        sub_236A083C8();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_236A083C8();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_236A08300(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_236A083C8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return 0;
}

uint64_t sub_236A0F8D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_236A0F910()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_236A0F940@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_236A0F954(uint64_t a1)
{
  v2 = v1;
  if (qword_27DE60EE0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  return sub_236A0D214(v2, sub_236A0CA04);
}

void sub_236A0FA40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236A2ED64();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_236A2E344;
  v12[3] = &block_descriptor_65;
  v11 = _Block_copy(v12);

  [a1 recordImpressionWithAdvertisedItemID:a6 intakeRequestData:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_236A0FB24(uint64_t a1)
{
  v2 = v1;
  if (qword_27DE60EE0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v9 = MEMORY[0x28223BE20](a1);
  v10 = v3;
  MEMORY[0x28223BE20](v9);
  v8[2] = sub_236A116D4;
  v8[3] = v4;
  return sub_236A0D5D0(v2, sub_236A0CC90, v8, v5);
}

void sub_236A0FC28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = aBlock - v14;
  v16 = sub_236A2ED64();
  sub_236A12180(a7, v15, &qword_27DE60CF0, &qword_236A2FF30);
  v17 = sub_236A2ED44();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    v19 = sub_236A2ED34();
    (*(v18 + 8))(v15, v17);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A2E344;
  aBlock[3] = &block_descriptor_56;
  v20 = _Block_copy(aBlock);

  [a1 processReengagementWithAdvertisedItemID:a6 intakeRequestData:v16 reengagementURL:v19 reply:v20];
  _Block_release(v20);
}

uint64_t sub_236A0FE1C()
{
  v1 = 0x7463617265746E69;
  if (*v0 != 1)
  {
    v1 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4A746361706D6F63;
  }
}

uint64_t sub_236A0FE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A11784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A0FEC8(uint64_t a1)
{
  v2 = sub_236A116DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A0FF04(uint64_t a1)
{
  v2 = sub_236A116DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A0FF40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE610E0, qword_236A31E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A116DC();
  sub_236A2F404();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_236A2F2C4();
  if (!v2)
  {
    v16[14] = *(v3 + 16);
    v16[13] = 1;
    sub_236A11730();
    sub_236A2F304();
    v13 = v3[3];
    v14 = v3[4];
    v16[12] = 2;
    sub_236A2F2C4();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_236A100E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_236A118B4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_236A10144(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_236A101AC()
{
  v0 = sub_236A2ECC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_236A2ECB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61128, &unk_236A32038);
  sub_236A11E7C(qword_2813161C8, &qword_27DE61128, &unk_236A32038);
  sub_236A2ECA4();

  if (v6)
  {
    v3 = v5;
  }

  else
  {
    v3 = v5 & 1;
  }

  return v3 | (v6 << 8);
}

uint64_t sub_236A10424@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61130, &unk_236A32048);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = sub_236A2ECC4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_236A2ECB4();
  sub_236A11E7C(&qword_27DE61138, &qword_27DE61130, &unk_236A32048);
  sub_236A2ECA4();

  sub_236A11D04(v11, v9, &qword_27DE61130, &unk_236A32048);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v4 = *v9;
  }

  else
  {
    sub_236A11D04(v9, v4, &qword_27DE60CF0, &qword_236A2FF30);
  }

  swift_storeEnumTagMultiPayload();
  return sub_236A11D04(v4, v16, &qword_27DE60F48, &qword_236A31140);
}

uint64_t sub_236A107F4()
{
  v0 = sub_236A2ECC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_236A2ECB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61140, &qword_236A32058);
  sub_236A11E7C(&qword_27DE61148, &qword_27DE61140, &qword_236A32058);
  sub_236A2ECA4();

  if (v6)
  {
    v3 = v5;
  }

  else
  {
    v3 = v5 & 1;
  }

  return v3 | (v6 << 8);
}

uint64_t sub_236A10A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_236A2ECC4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_236A2ECB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61160, qword_236A32068);
  sub_236A11E7C(&qword_27DE61168, &qword_27DE61160, qword_236A32068);
  sub_236A2ECA4();

  v6 = v8;
  v7 = v9;
  if (v10)
  {
    v6 = v8;
    v7 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_236A10D08(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611A0, &qword_236A32088);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v16 = sub_236A2EE14();
  __swift_project_value_buffer(v16, qword_2813177A0);
  MEMORY[0x2383B5800](a1);
  v17 = sub_236A2EDF4();
  v18 = sub_236A2F024();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v8;
    v21 = v20;
    *v19 = 138543362;
    MEMORY[0x2383B5800](a1);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_2369F3000, v17, v18, "Error fetching synchronous remote object proxy: %{public}@", v19, 0xCu);
    sub_2369F90E0(v21, &qword_27DE60CE8, &qword_236A2FF10);
    v23 = v21;
    v8 = v28;
    MEMORY[0x2383B5900](v23, -1, -1);
    MEMORY[0x2383B5900](v19, -1, -1);
  }

  *v15 = 3;
  swift_storeEnumTagMultiPayload();
  v24 = *(*a2 + 104);
  swift_beginAccess();
  sub_236A12180(a2 + v24, v10, &qword_27DE611A0, &qword_236A32088);
  v25 = (*(v12 + 48))(v10, 1, v11);
  result = sub_2369F90E0(v10, &qword_27DE611A0, &qword_236A32088);
  if (v25 == 1)
  {
    sub_236A11D04(v15, v8, &qword_27DE60F48, &qword_236A31140);
    (*(v12 + 56))(v8, 0, 1, v11);
    swift_beginAccess();
    sub_236A12110(v8, a2 + v24);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A11070(void *a1, uint64_t a2)
{
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v4 = sub_236A2EE14();
  __swift_project_value_buffer(v4, qword_2813177A0);
  MEMORY[0x2383B5800](a1);
  v5 = sub_236A2EDF4();
  v6 = sub_236A2F024();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x2383B5800](a1);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_2369F3000, v5, v6, "Error fetching synchronous remote object proxy: %{public}@", v7, 0xCu);
    sub_2369F90E0(v8, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v8, -1, -1);
    MEMORY[0x2383B5900](v7, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a2 + 17) == 255)
  {
    *(a2 + 16) = 259;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A111F4(void *a1, uint64_t a2)
{
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v4 = sub_236A2EE14();
  __swift_project_value_buffer(v4, qword_2813177A0);
  MEMORY[0x2383B5800](a1);
  v5 = sub_236A2EDF4();
  v6 = sub_236A2F024();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x2383B5800](a1);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_2369F3000, v5, v6, "Error fetching synchronous remote object proxy: %{public}@", v7, 0xCu);
    sub_2369F90E0(v8, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v8, -1, -1);
    MEMORY[0x2383B5900](v7, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a2 + 32) == 255)
  {
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    *(a2 + 16) = xmmword_236A31E30;
    *(a2 + 32) = 1;
    return sub_236A11E44(v11, v12, 255);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A11390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611A0, &qword_236A32088);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  sub_236A10424(&v19[-v14]);
  v16 = *(*a3 + 104);
  swift_beginAccess();
  sub_236A12180(a3 + v16, v10, &qword_27DE611A0, &qword_236A32088);
  v17 = (*(v12 + 48))(v10, 1, v11);
  result = sub_2369F90E0(v10, &qword_27DE611A0, &qword_236A32088);
  if (v17 == 1)
  {
    sub_236A11D04(v15, v8, &qword_27DE60F48, &qword_236A31140);
    (*(v12 + 56))(v8, 0, 1, v11);
    swift_beginAccess();
    sub_236A12110(v8, a3 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A115C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_236A10A6C(v10);
  v4 = v10[0];
  v5 = v10[1];
  v6 = v11;
  result = swift_beginAccess();
  if (*(a3 + 32) == 255)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    *(a3 + 16) = v4;
    *(a3 + 24) = v5;
    *(a3 + 32) = v6;
    sub_236A11E38(v4, v5, v6);
    sub_236A11E44(v8, v9, 255);
    return sub_236A11E5C(v4, v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A11670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236A101AC();
  result = swift_beginAccess();
  if (*(a3 + 17) == 255)
  {
    *(a3 + 16) = v4 & 0x1FF;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_236A116DC()
{
  result = qword_27DE610E8;
  if (!qword_27DE610E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610E8);
  }

  return result;
}

unint64_t sub_236A11730()
{
  result = qword_27DE610F0;
  if (!qword_27DE610F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610F0);
  }

  return result;
}

uint64_t sub_236A11784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4A746361706D6F63 && a2 == 0xEA00000000005357;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_236A2F334();

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

uint64_t sub_236A118B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61190, &qword_236A32080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A116DC();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_236A2F1B4();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_236A12058();
  sub_236A2F1F4();
  v21 = v24;
  v22 = 2;
  v15 = sub_236A2F1B4();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_236A11AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_236A11B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_236A11B94()
{
  result = qword_27DE610F8;
  if (!qword_27DE610F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE610F8);
  }

  return result;
}

unint64_t sub_236A11BEC()
{
  result = qword_27DE61100;
  if (!qword_27DE61100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61100);
  }

  return result;
}

unint64_t sub_236A11C44()
{
  result = qword_27DE61108;
  if (!qword_27DE61108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61108);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_236A11CB0()
{
  result = qword_27DE61120;
  if (!qword_27DE61120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61120);
  }

  return result;
}

uint64_t sub_236A11D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_236A11D74()
{
  result = qword_27DE61158;
  if (!qword_27DE61158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61158);
  }

  return result;
}

uint64_t sub_236A11DD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236A11DE4(a1, a2);
  }

  return a1;
}

uint64_t sub_236A11DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_236A11E38(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_236A11DD0(a1, a2);
  }

  return a1;
}

uint64_t sub_236A11E44(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_236A11E5C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_236A11E5C(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_236A11E68(a1, a2);
  }

  return a1;
}

uint64_t sub_236A11E68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236A08300(a1, a2);
  }

  return a1;
}

uint64_t sub_236A11E7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_236A11F08()
{
  result = qword_27DE61170;
  if (!qword_27DE61170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61170);
  }

  return result;
}

unint64_t sub_236A11F5C()
{
  result = qword_27DE61178;
  if (!qword_27DE61178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61178);
  }

  return result;
}

unint64_t sub_236A11FB0()
{
  result = qword_27DE61180;
  if (!qword_27DE61180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61180);
  }

  return result;
}

unint64_t sub_236A12004()
{
  result = qword_27DE61188;
  if (!qword_27DE61188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61188);
  }

  return result;
}

unint64_t sub_236A12058()
{
  result = qword_27DE61198;
  if (!qword_27DE61198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61198);
  }

  return result;
}

unint64_t sub_236A120B4()
{
  result = qword_27DE611B8;
  if (!qword_27DE611B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611B8);
  }

  return result;
}

uint64_t sub_236A12110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611A0, &qword_236A32088);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_236A12180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_236A12270(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = *a1;
  v12 = sub_236A2ED64();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_236A2E344;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [v11 *a7];
  _Block_release(v13);
}

__int128 *sub_236A12348(__int128 *result)
{
  if (qword_27DE60E68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_27DE6C208)
  {
    return sub_236A0DB34(result, sub_236A12248);
  }

  return result;
}

__int128 *sub_236A123D0(__int128 *result)
{
  if (qword_27DE60E68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_27DE6C208)
  {
    return sub_236A0DF0C(result, sub_236A1225C);
  }

  return result;
}

uint64_t sub_236A12458(uint64_t result)
{
  if (qword_27DE60E68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_27DE6C208)
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);
    return sub_236A0E2D4(sub_236A0CA04);
  }

  return result;
}

void sub_236A12550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_236A2EE64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [a1 clearBiomeWithClearEvent:v8 reply:v9];
  _Block_release(v9);
}

void sub_236A1262C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_236A12550(a1, a2, a3, a4, a5);
}

uint64_t sub_236A12634()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_236A12640()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_236A1264C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_236A1269C()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_236A126A8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_236A126D8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_236A12708()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_236A12714()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

__n128 sub_236A12720@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, char a13, __int128 a14, __n128 a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  result = a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13 & 1;
  *(a9 + 88) = a14;
  *(a9 + 104) = a15;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17 & 1;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  return result;
}

unint64_t sub_236A127C0(unsigned __int8 a1)
{
  v1 = 0x69737265766E6F63;
  if (a1 > 4u)
  {
    if (a1 == 8)
    {
      v1 = 0x6973736572706D69;
    }

    if (a1 == 7)
    {
      v1 = 0x6F726665726F7473;
    }

    v4 = 0x656873696C627570;
    if (a1 != 5)
    {
      v4 = 0x6C7074656B72616DLL;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x726F7774654E6461;
    if (a1 != 3)
    {
      v2 = 0x4449656372756F73;
    }

    if (a1 == 2)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_236A12934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A13458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A12968(uint64_t a1)
{
  v2 = sub_236A12C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A129A4(uint64_t a1)
{
  v2 = sub_236A12C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A129E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611C0, &qword_236A320B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A12C84();
  sub_236A2F404();
  v11 = *v3;
  v12 = v3[1];
  v32[15] = 0;
  sub_236A2F244();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v32[14] = 1;
  sub_236A2F2B4();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v32[13] = 2;
  sub_236A2F274();
  v17 = v3[6];
  v18 = v3[7];
  v32[12] = 3;
  sub_236A2F244();
  v19 = *(v3 + 16);
  v20 = *(v3 + 68);
  v32[11] = 4;
  v32[8] = v20;
  sub_236A2F2A4();
  v21 = v3[9];
  v22 = *(v3 + 80);
  v32[7] = 5;
  sub_236A2F2B4();
  v23 = v3[11];
  v24 = v3[12];
  v32[6] = 6;
  sub_236A2F244();
  v25 = v3[13];
  v26 = v3[14];
  v32[5] = 7;
  sub_236A2F244();
  v27 = v3[15];
  v28 = *(v3 + 128);
  v32[4] = 8;
  sub_236A2F264();
  v30 = v3[17];
  v31 = *(v3 + 144);
  v32[3] = 9;
  sub_236A2F264();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_236A12C84()
{
  result = qword_27DE611C8;
  if (!qword_27DE611C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611C8);
  }

  return result;
}

double sub_236A12CD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_236A137A8(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_236A12D64()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_236A12D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_236A12DA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_236A12DD0()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_236A12DDC()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_236A12DE8()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_236A12DF4()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_236A12E00@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  return result;
}

unint64_t sub_236A12E7C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x69737265766E6F63;
    if (v1 != 1)
    {
      v5 = 0x6F726665726F7473;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0x6573616863727570;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0x6843746E756F6D61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_236A12F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A13DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A12FB4(uint64_t a1)
{
  v2 = sub_236A13D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A12FF0(uint64_t a1)
{
  v2 = sub_236A13D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1302C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611D0, &qword_236A320B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A13D50();
  sub_236A2F404();
  v11 = *v3;
  v12 = *(v3 + 8);
  v26[15] = 0;
  sub_236A2F2B4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v26[14] = 1;
  sub_236A2F244();
  v15 = v3[4];
  v16 = v3[5];
  v26[13] = 2;
  sub_236A2F244();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v26[12] = 3;
  sub_236A2F294();
  v19 = v3[8];
  v20 = *(v3 + 72);
  v26[11] = 4;
  sub_236A2F274();
  v21 = v3[10];
  v22 = *(v3 + 88);
  v26[10] = 5;
  sub_236A2F274();
  v24 = v3[12];
  v25 = *(v3 + 104);
  v26[9] = 6;
  sub_236A2F264();
  return (*(v6 + 8))(v9, v5);
}

__n128 sub_236A13260@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_236A14008(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_236A132CC(uint64_t a1)
{
  v2 = sub_236A1442C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A13308(uint64_t a1)
{
  v2 = sub_236A1442C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A13344(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE611E0, qword_236A320C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1442C();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_236A13458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL;
  if (v3 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000236A36ED0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEF44496D65744972 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (sub_236A2F334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (sub_236A2F334() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657461446E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657461446E6FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_236A137A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61238, qword_236A32540);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v8 = &v36 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A12C84();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v64[0]) = 0;
  v11 = sub_236A2F134();
  v13 = v12;
  v14 = v11;
  LOBYTE(v64[0]) = 1;
  v51 = sub_236A2F1A4();
  v86 = v15 & 1;
  LOBYTE(v64[0]) = 2;
  v50 = sub_236A2F164();
  v85 = v16 & 1;
  LOBYTE(v64[0]) = 3;
  v49 = sub_236A2F134();
  v52 = v17;
  LOBYTE(v64[0]) = 4;
  v18 = sub_236A2F194();
  v87 = BYTE4(v18) & 1;
  LOBYTE(v64[0]) = 5;
  v48 = v18;
  v45 = sub_236A2F1A4();
  v84 = v19 & 1;
  LOBYTE(v64[0]) = 6;
  v20 = sub_236A2F134();
  v46 = v21;
  v42 = v20;
  LOBYTE(v64[0]) = 7;
  v44 = 0;
  v41 = sub_236A2F134();
  v43 = v22;
  LOBYTE(v64[0]) = 8;
  v40 = sub_236A2F154();
  v47 = 0;
  v83 = v23 & 1;
  v88 = 9;
  v24 = sub_236A2F154();
  v47 = 0;
  v25 = v24;
  v27 = v26;
  (*(v10 + 8))(v8, v53);
  v82 = v27 & 1;
  v39 = v14;
  *&v54 = v14;
  *(&v54 + 1) = v13;
  *&v55 = v51;
  LODWORD(v53) = v86;
  BYTE8(v55) = v86;
  *&v56 = v50;
  LODWORD(v44) = v85;
  BYTE8(v56) = v85;
  *&v57 = v49;
  *(&v57 + 1) = v52;
  LODWORD(v58) = v48;
  v38 = v87;
  BYTE4(v58) = v87;
  v28 = v46;
  *(&v58 + 1) = v45;
  v37 = v84;
  LOBYTE(v59) = v84;
  v29 = v42;
  *(&v59 + 1) = v42;
  *&v60 = v46;
  v30 = v43;
  *(&v60 + 1) = v41;
  *&v61 = v43;
  *(&v61 + 1) = v40;
  HIDWORD(v36) = v83;
  LOBYTE(v62) = v83;
  *(&v62 + 1) = v25;
  v27 &= 1u;
  v63 = v27;
  sub_236A14C8C(&v54, v64);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v64[0] = v39;
  v64[1] = v13;
  v64[2] = v51;
  v65 = v53;
  v66 = v50;
  v67 = v44;
  v68 = v49;
  v69 = v52;
  v70 = v48;
  v71 = v38;
  v72 = v45;
  v73 = v37;
  v74 = v29;
  v75 = v28;
  v76 = v41;
  v77 = v30;
  v78 = v40;
  v79 = BYTE4(v36);
  v80 = v25;
  v81 = v27;
  result = sub_236A14CC4(v64);
  v32 = v61;
  *(a2 + 96) = v60;
  *(a2 + 112) = v32;
  *(a2 + 128) = v62;
  *(a2 + 144) = v63;
  v33 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v33;
  v34 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v34;
  v35 = v55;
  *a2 = v54;
  *(a2 + 16) = v35;
  return result;
}

unint64_t sub_236A13D50()
{
  result = qword_27DE611D8;
  if (!qword_27DE611D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611D8);
  }

  return result;
}

uint64_t sub_236A13DA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000236A36ED0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843746E756F6D61 && a2 == 0xED00006465677261 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000236A36EF0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000236A36F10 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v5 = sub_236A2F334();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_236A14008@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61230, &qword_236A32538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_236A13D50();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v12 = v6;
  LOBYTE(v53) = 0;
  v13 = v5;
  v14 = sub_236A2F1A4();
  v71 = v15 & 1;
  LOBYTE(v53) = 1;
  v16 = sub_236A2F134();
  v18 = v17;
  v44 = v16;
  LOBYTE(v53) = 2;
  v19 = sub_236A2F134();
  v45 = v20;
  v43 = v19;
  LOBYTE(v53) = 3;
  v42 = sub_236A2F184();
  v70 = v21 & 1;
  LOBYTE(v53) = 4;
  v41 = sub_236A2F164();
  v69 = v22 & 1;
  LOBYTE(v53) = 5;
  v40 = sub_236A2F164();
  v68 = v23 & 1;
  v72 = 6;
  v24 = sub_236A2F154();
  v26 = v25;
  v27 = *(v12 + 8);
  v39 = v24;
  v27(v9, v13);
  v28 = v26 & 1;
  v67 = v26 & 1;
  v38 = v14;
  *&v47 = v14;
  v37 = v71;
  BYTE8(v47) = v71;
  *&v48 = v44;
  *(&v48 + 1) = v18;
  *&v49 = v43;
  *(&v49 + 1) = v45;
  v29 = v41;
  *&v50 = v42;
  v36 = v70;
  BYTE8(v50) = v70;
  *&v51 = v41;
  LOBYTE(v13) = v69;
  BYTE8(v51) = v69;
  v30 = v40;
  *&v52[0] = v40;
  LOBYTE(v14) = v68;
  BYTE8(v52[0]) = v68;
  *&v52[1] = v39;
  BYTE8(v52[1]) = v28;
  sub_236A14C24(&v47, &v53);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v53 = v38;
  v54 = v37;
  v55 = v44;
  v56 = v18;
  v57 = v43;
  v58 = v45;
  v59 = v42;
  v60 = v36;
  v61 = v29;
  v62 = v13;
  v63 = v30;
  v64 = v14;
  v65 = v39;
  v66 = v28;
  result = sub_236A14C5C(&v53);
  v32 = v52[0];
  a2[4] = v51;
  a2[5] = v32;
  *(a2 + 89) = *(v52 + 9);
  v33 = v48;
  *a2 = v47;
  a2[1] = v33;
  v34 = v50;
  a2[2] = v49;
  a2[3] = v34;
  return result;
}

unint64_t sub_236A1442C()
{
  result = qword_27DE611E8;
  if (!qword_27DE611E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611E8);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_236A144C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_236A14520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_236A145D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_236A14634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeEventRequest.PurchaseEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeEventRequest.PurchaseEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BiomeEventRequest.ConversionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeEventRequest.ConversionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236A14968()
{
  result = qword_27DE611F0;
  if (!qword_27DE611F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611F0);
  }

  return result;
}

unint64_t sub_236A149C0()
{
  result = qword_27DE611F8;
  if (!qword_27DE611F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE611F8);
  }

  return result;
}

unint64_t sub_236A14A18()
{
  result = qword_27DE61200;
  if (!qword_27DE61200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61200);
  }

  return result;
}

unint64_t sub_236A14A70()
{
  result = qword_27DE61208;
  if (!qword_27DE61208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61208);
  }

  return result;
}

unint64_t sub_236A14AC8()
{
  result = qword_27DE61210;
  if (!qword_27DE61210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61210);
  }

  return result;
}

unint64_t sub_236A14B20()
{
  result = qword_27DE61218;
  if (!qword_27DE61218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61218);
  }

  return result;
}

unint64_t sub_236A14B78()
{
  result = qword_27DE61220;
  if (!qword_27DE61220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61220);
  }

  return result;
}

unint64_t sub_236A14BD0()
{
  result = qword_27DE61228;
  if (!qword_27DE61228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61228);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A14D24()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A8A70;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_5;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_6_0;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for TokenHandoffServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_2813177B8 = result;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A15270()
{
  v0 = sub_236A2EE14();
  __swift_allocate_value_buffer(v0, qword_27DE6C288);
  __swift_project_value_buffer(v0, qword_27DE6C288);
  return sub_236A2EE04();
}

uint64_t sub_236A155F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_236A2EE14();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_236A2EE04();
}

uint64_t sub_236A15690(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_236A2EE14();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_236A15708@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_236A2EE14();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t sub_236A15828(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0xD000000000000015;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x8000000236A36780;
    v12 = 0xD00000000000001ALL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v11 = 0x8000000236A367A0;
    }

    v13 = 0x6973736572706D69;
    v14 = 0xEF657079742D6E6FLL;
    if (a1 == 4)
    {
      v13 = 0x6D617473656D6974;
      v14 = 0xE900000000000070;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x8000000236A36730;
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x8000000236A36750;
    }

    v7 = 0x8000000236A366F0;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v7 = 0x8000000236A36710;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000236A36710;
        v3 = 0xD000000000000019;
        goto LABEL_41;
      }

      v15 = "impression-identifier";
      goto LABEL_35;
    }

    if (a2 != 2)
    {
      v2 = 0x8000000236A36750;
      v3 = 0xD000000000000011;
      goto LABEL_41;
    }

    v16 = "advertised-item-identifier";
    goto LABEL_40;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "ad-network-identifier";
LABEL_35:
      v2 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_41;
    }

    v16 = "eligible-for-re-engagement";
LABEL_40:
    v2 = (v16 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001ALL;
    goto LABEL_41;
  }

  if (a2 == 4)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x6973736572706D69;
    v2 = 0xEF657079742D6E6FLL;
  }

LABEL_41:
  if (v9 == v3 && v10 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_236A2F334();
  }

  return v17 & 1;
}

uint64_t sub_236A15A68()
{
  sub_236A2EEC4();
}

uint64_t sub_236A15BB8()
{
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A15D50(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6580587;
  }

  else
  {
    v2 = 6777953;
  }

  if (*a2)
  {
    v3 = 6580587;
  }

  else
  {
    v3 = 6777953;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_236A2F334();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_236A15DC8()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A15E30()
{
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_236A15E7C()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A15EE0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_236A15F40(uint64_t *a1@<X8>)
{
  v2 = 6777953;
  if (*v1)
  {
    v2 = 6580587;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_236A15F68()
{
  if (*v0)
  {
    return 6580587;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_236A15F8C@<X0>(char *a1@<X8>)
{
  v2 = sub_236A2F104();

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

uint64_t sub_236A15FF0(uint64_t a1)
{
  v2 = sub_236A161FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1602C(uint64_t a1)
{
  v2 = sub_236A161FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A16068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61240, "(\");
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A161FC();
  sub_236A2F404();
  v16 = 0;
  sub_236A2F2C4();
  if (!v5)
  {
    v15 = 1;
    sub_236A2F2C4();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_236A161FC()
{
  result = qword_27DE61248;
  if (!qword_27DE61248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61248);
  }

  return result;
}

uint64_t sub_236A16250(uint64_t *a1)
{
  result = sub_236A16ED0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_236A1627C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_236A16ED0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_236A162CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_236A2EDD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_236A163C4()
{
  v1 = (v0 + *(type metadata accessor for AppImpressionPayload() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_236A16450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236A17844();
  *a2 = result;
  return result;
}

void sub_236A16480(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE900000000000070;
    v9 = 0x6D617473656D6974;
    v10 = 0xD000000000000015;
    v11 = 0x8000000236A36780;
    if (v2 != 6)
    {
      v10 = 0xD00000000000001ALL;
      v11 = 0x8000000236A367A0;
    }

    if (v2 != 4)
    {
      v9 = 0x6973736572706D69;
      v8 = 0xEF657079742D6E6FLL;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (*v1 > 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000236A36730;
    v4 = 0xD000000000000011;
    if (v2 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x8000000236A36750;
    }

    v5 = 0xD000000000000015;
    v6 = 0x8000000236A366F0;
    if (*v1)
    {
      v5 = 0xD000000000000019;
      v6 = 0x8000000236A36710;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_236A165A4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xD000000000000015;
    if (v1 != 6)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v1 != 4)
    {
      v5 = 0x6973736572706D69;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 2)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000015;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_236A166C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_236A17844();
  *a1 = result;
  return result;
}

uint64_t sub_236A166F4(uint64_t a1)
{
  v2 = sub_236A17100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A16730(uint64_t a1)
{
  v2 = sub_236A17100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1676C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61250, &qword_236A325E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A17100();
  sub_236A2F404();
  v21[15] = 0;
  sub_236A2EDD4();
  sub_236A171A8(&qword_27DE61260);
  sub_236A2F304();
  if (!v2)
  {
    v11 = type metadata accessor for AppImpressionPayload();
    v12 = *(v3 + v11[5]);
    v21[14] = 1;
    sub_236A2F314();
    v13 = *(v3 + v11[6]);
    v21[13] = 2;
    sub_236A2F314();
    v14 = *(v3 + v11[7]);
    v21[12] = 3;
    sub_236A2F2E4();
    v15 = *(v3 + v11[8]);
    v21[11] = 4;
    sub_236A2F314();
    v21[10] = 5;
    sub_236A17154();
    sub_236A2F304();
    v16 = (v3 + v11[10]);
    v17 = *v16;
    v18 = v16[1];
    v21[9] = 6;
    sub_236A2F2C4();
    v19 = *(v3 + v11[11]);
    v21[8] = 7;
    sub_236A2F254();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_236A16A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_236A2EDD4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61270, &qword_236A325F0);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppImpressionPayload();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A17100();
  v30 = v10;
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  v38 = 0;
  sub_236A171A8(&qword_27DE61278);
  v17 = v27;
  sub_236A2F1F4();
  (*(v16 + 32))(v14, v17, v4);
  v37 = 1;
  *&v14[v11[5]] = sub_236A2F204();
  v36 = 2;
  v18 = sub_236A2F204();
  v19 = v28;
  *&v14[v11[6]] = v18;
  v35 = 3;
  *&v14[v11[7]] = sub_236A2F1D4();
  v34 = 4;
  *&v14[v11[8]] = sub_236A2F204();
  v33 = 5;
  sub_236A171EC();
  sub_236A2F1F4();
  v32 = 6;
  v20 = sub_236A2F1B4();
  v21 = &v14[v11[10]];
  *v21 = v20;
  v21[1] = v22;
  v31 = 7;
  v23 = sub_236A2F144();
  (*(v19 + 8))(v30, v29);
  v14[v11[11]] = v23;
  sub_236A17240(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_236A172A4(v14);
}

uint64_t sub_236A16ED0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE612C0, &unk_236A329B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A161FC();
  sub_236A2F3F4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_236A2F1B4();
    v11 = 1;
    sub_236A2F1B4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t type metadata accessor for AppImpressionPayload()
{
  result = qword_281316500;
  if (!qword_281316500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_236A17100()
{
  result = qword_27DE61258;
  if (!qword_27DE61258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61258);
  }

  return result;
}

unint64_t sub_236A17154()
{
  result = qword_27DE61268;
  if (!qword_27DE61268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61268);
  }

  return result;
}

uint64_t sub_236A171A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_236A2EDD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_236A171EC()
{
  result = qword_27DE61280;
  if (!qword_27DE61280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61280);
  }

  return result;
}

uint64_t sub_236A17240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppImpressionPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236A172A4(uint64_t a1)
{
  v2 = type metadata accessor for AppImpressionPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236A1730C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_236A17354(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_236A173CC()
{
  sub_236A2EDD4();
  if (v0 <= 0x3F)
  {
    sub_236A17484();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_236A17484()
{
  if (!qword_27DE61288)
  {
    v0 = sub_236A2F054();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE61288);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppImpressionPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppImpressionPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_236A17638()
{
  result = qword_27DE61290;
  if (!qword_27DE61290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61290);
  }

  return result;
}

unint64_t sub_236A17690()
{
  result = qword_27DE61298;
  if (!qword_27DE61298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61298);
  }

  return result;
}

unint64_t sub_236A176E8()
{
  result = qword_27DE612A0;
  if (!qword_27DE612A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612A0);
  }

  return result;
}

unint64_t sub_236A17740()
{
  result = qword_27DE612A8;
  if (!qword_27DE612A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612A8);
  }

  return result;
}

unint64_t sub_236A17798()
{
  result = qword_27DE612B0;
  if (!qword_27DE612B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612B0);
  }

  return result;
}

unint64_t sub_236A177F0()
{
  result = qword_27DE612B8;
  if (!qword_27DE612B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612B8);
  }

  return result;
}

uint64_t sub_236A17844()
{
  v0 = sub_236A2F104();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_236A178B4(char a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_236A2F334();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = sub_236A2F334();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_236A179D4(char a1)
{
  if (!a1)
  {
    return 0x64616F6C6E776F64;
  }

  if (a1 == 1)
  {
    return 0x6F6C6E776F646572;
  }

  return 0x6761676E652D6572;
}

uint64_t sub_236A17A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6E776F646572;
  v4 = 0xEA00000000006461;
  if (v2 != 1)
  {
    v3 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F6C6E776F646572;
  v8 = 0xEA00000000006461;
  if (*a2 != 1)
  {
    v7 = 0x6761676E652D6572;
    v8 = 0xED0000746E656D65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_236A2F334();
  }

  return v11 & 1;
}

uint64_t sub_236A17B60()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A17C14()
{
  *v0;
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_236A17CB4()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A17D64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236A17F38();
  *a2 = result;
  return result;
}

void sub_236A17D94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006461;
  v5 = 0x6F6C6E776F646572;
  if (v2 != 1)
  {
    v5 = 0x6761676E652D6572;
    v4 = 0xED0000746E656D65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_236A17EC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_236A180A8();
  result = MEMORY[0x2383B5090](v2, &type metadata for ConversionType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2369FBB94(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_236A17F38()
{
  v0 = sub_236A2F104();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_236A17F88()
{
  result = qword_27DE612C8;
  if (!qword_27DE612C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612C8);
  }

  return result;
}

unint64_t sub_236A17FE0()
{
  result = qword_27DE612D0;
  if (!qword_27DE612D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE612D8, qword_236A32AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612D0);
  }

  return result;
}

unint64_t sub_236A18054()
{
  result = qword_27DE612E0;
  if (!qword_27DE612E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612E0);
  }

  return result;
}

unint64_t sub_236A180A8()
{
  result = qword_27DE612E8;
  if (!qword_27DE612E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612E8);
  }

  return result;
}

uint64_t sub_236A180FC()
{
  v0 = sub_236A2F104();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236A18150(char a1)
{
  if (a1)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6D706F6C65766564;
  }
}

uint64_t sub_236A18194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69746375646F7270;
  }

  else
  {
    v4 = 0x6D706F6C65766564;
  }

  if (v3)
  {
    v5 = 0xEB00000000746E65;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v6 = 0x69746375646F7270;
  }

  else
  {
    v6 = 0x6D706F6C65766564;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xEB00000000746E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_236A2F334();
  }

  return v9 & 1;
}

unint64_t sub_236A1824C()
{
  result = qword_27DE612F0;
  if (!qword_27DE612F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612F0);
  }

  return result;
}

uint64_t sub_236A182A0()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A18330()
{
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_236A183AC()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_236A18438@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_236A18498(uint64_t *a1@<X8>)
{
  v2 = 0x6D706F6C65766564;
  if (*v1)
  {
    v2 = 0x69746375646F7270;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_236A185A4()
{
  result = qword_27DE612F8;
  if (!qword_27DE612F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE612F8);
  }

  return result;
}

uint64_t sub_236A18644()
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = sub_236A18A0C;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_236A18778;

  return sub_236A02E54(sub_236A0CA04, v3);
}

uint64_t sub_236A18778(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_236A188D4, 0, 0);
  }

  else
  {
    v7 = v5[3];
    v6 = v5[4];

    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_236A188D4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(0);
}

void sub_236A18944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_236A2E344;
  v9[3] = &block_descriptor_15_0;
  v8 = _Block_copy(v9);

  [a1 isEligibleForPurchaseProcessingWithAppItemID:a6 reply:v8];
  _Block_release(v8);
}

uint64_t sub_236A18A14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_236A18A34, 0, 0);
}

uint64_t sub_236A18A34()
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = sub_236A18E40;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_236A18B70;
  v5 = v0[3];

  return sub_236A03258(v5, sub_236A0CC90, v3);
}

uint64_t sub_236A18B70()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_236A18CF0;
  }

  else
  {
    v3 = sub_236A18C84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236A18C84()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236A18CF0()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_236A18D5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236A2ED64();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_236A2E344;
  v12[3] = &block_descriptor_12;
  v11 = _Block_copy(v12);

  [a1 processInAppPurchaseWithAppItemID:a6 inAppPurchaseData:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_236A18E48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_236A18E68, 0, 0);
}

uint64_t sub_236A18E68()
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = sub_236A19194;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_236A18FA0;

  return (sub_236A035CC)(sub_236A0CC90, v4);
}

uint64_t sub_236A18FA0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_236A19478;
  }

  else
  {
    v3 = sub_236A1946C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_236A190B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236A2ED04();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_236A2E344;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [a1 reportPurchaseIntakeFailureWithAppItemID:a6 error:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_236A1919C(uint64_t a1)
{
  v2 = sub_236A19328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A191D8(uint64_t a1)
{
  v2 = sub_236A19328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A19214(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61300, qword_236A32C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A19328();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_236A19328()
{
  result = qword_27DE61308;
  if (!qword_27DE61308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61308);
  }

  return result;
}

unint64_t sub_236A193A0()
{
  result = qword_27DE61310;
  if (!qword_27DE61310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61310);
  }

  return result;
}

unint64_t sub_236A193F8()
{
  result = qword_27DE61318;
  if (!qword_27DE61318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61318);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A1947C()
{
  if (*v0)
  {
    result = 0x746E756F63736964;
  }

  else
  {
    result = 0x6169725465657266;
  }

  *v0;
  return result;
}

uint64_t sub_236A194C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169725465657266 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_236A2F334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63736964 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_236A2F334();

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

uint64_t sub_236A195AC(uint64_t a1)
{
  v2 = sub_236A199E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A195E8(uint64_t a1)
{
  v2 = sub_236A199E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A19624(uint64_t a1)
{
  v2 = sub_236A19A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A19660(uint64_t a1)
{
  v2 = sub_236A19A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1969C(uint64_t a1)
{
  v2 = sub_236A19A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A196D8(uint64_t a1)
{
  v2 = sub_236A19A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A19724(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61320, &qword_236A32DD0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61328, &qword_236A32DD8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61330, &qword_236A32DE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A199E0();
  sub_236A2F404();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_236A19A34();
    sub_236A2F234();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_236A19A88();
    sub_236A2F234();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_236A199E0()
{
  result = qword_27DE61338;
  if (!qword_27DE61338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61338);
  }

  return result;
}

unint64_t sub_236A19A34()
{
  result = qword_27DE61340;
  if (!qword_27DE61340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61340);
  }

  return result;
}

unint64_t sub_236A19A88()
{
  result = qword_27DE61348;
  if (!qword_27DE61348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61348);
  }

  return result;
}

uint64_t sub_236A19B04(char a1)
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](a1 & 1);
  return sub_236A2F3D4();
}

uint64_t sub_236A19B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_236A19BB4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_236A19BB4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61390, &qword_236A33180);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61398, &qword_236A33188);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE613A0, &unk_236A33190);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A199E0();
  v15 = v32;
  sub_236A2F3F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_236A2F214();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_236A2E284();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_236A2F0E4();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
    *v24 = &type metadata for PurchaseIntakeOfferType;
    sub_236A2F124();
    sub_236A2F0D4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_236A19A34();
    sub_236A2F114();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_236A19A88();
    sub_236A2F114();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_236A1A074()
{
  result = qword_27DE61350;
  if (!qword_27DE61350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61350);
  }

  return result;
}

unint64_t sub_236A1A10C()
{
  result = qword_27DE61358;
  if (!qword_27DE61358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61358);
  }

  return result;
}

unint64_t sub_236A1A164()
{
  result = qword_27DE61360;
  if (!qword_27DE61360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61360);
  }

  return result;
}

unint64_t sub_236A1A1BC()
{
  result = qword_27DE61368;
  if (!qword_27DE61368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61368);
  }

  return result;
}

unint64_t sub_236A1A214()
{
  result = qword_27DE61370;
  if (!qword_27DE61370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61370);
  }

  return result;
}

unint64_t sub_236A1A26C()
{
  result = qword_27DE61378;
  if (!qword_27DE61378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61378);
  }

  return result;
}

unint64_t sub_236A1A2C4()
{
  result = qword_27DE61380;
  if (!qword_27DE61380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61380);
  }

  return result;
}

unint64_t sub_236A1A31C()
{
  result = qword_27DE61388;
  if (!qword_27DE61388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61388);
  }

  return result;
}

uint64_t sub_236A1A388@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 17) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_236A1A3BC()
{
  if (qword_27DE60EE8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A037E4(v2, sub_236A1A8A0, 0);
}

unint64_t sub_236A1A4B4()
{
  v1 = *v0;
  v2 = 0x74736F506B636F6CLL;
  if (v1 != 3)
  {
    v2 = 0x69737265766E6F63;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_236A1A574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A1AA24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A1A5A8(uint64_t a1)
{
  v2 = sub_236A1A97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1A5E4(uint64_t a1)
{
  v2 = sub_236A1A97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1A620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE613A8, qword_236A331A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1A97C();
  sub_236A2F404();
  v11 = *v3;
  v17[15] = 0;
  sub_236A2F314();
  if (!v2)
  {
    v13 = v3[1];
    v17[14] = 1;
    sub_236A2F2E4();
    v17[13] = *(v3 + 16);
    v17[12] = 2;
    sub_236A1A9D0();
    sub_236A2F284();
    v14 = *(v3 + 17);
    v17[11] = 3;
    sub_236A2F2D4();
    v15 = v3[3];
    v16 = v3[4];
    v17[10] = 4;
    sub_236A2F244();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_236A1A840@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_236A1ABEC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_236A1A8A0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_236A1A97C()
{
  result = qword_27DE613B0;
  if (!qword_27DE613B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613B0);
  }

  return result;
}

unint64_t sub_236A1A9D0()
{
  result = qword_27DE613B8;
  if (!qword_27DE613B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613B8);
  }

  return result;
}

uint64_t sub_236A1AA24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000236A36ED0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000236A37030 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000236A37050 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_236A2F334();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_236A1ABEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE613D8, &qword_236A33378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1A97C();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_236A2F204();
  v26 = 1;
  v21 = sub_236A2F1D4();
  v24 = 2;
  sub_236A1B164();
  sub_236A2F174();
  v12 = v25;
  v23 = 3;
  v13 = sub_236A2F1C4();
  v19 = v12;
  v20 = v13;
  v22 = 4;
  v14 = sub_236A2F134();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v21;
  *a2 = v11;
  *(a2 + 8) = v18;
  LOBYTE(v18) = v20;
  *(a2 + 16) = v19;
  *(a2 + 17) = v18 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_236A1AE44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_236A1AEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostbackProxyRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PostbackProxyRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_236A1B060()
{
  result = qword_27DE613C0;
  if (!qword_27DE613C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613C0);
  }

  return result;
}

unint64_t sub_236A1B0B8()
{
  result = qword_27DE613C8;
  if (!qword_27DE613C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613C8);
  }

  return result;
}

unint64_t sub_236A1B110()
{
  result = qword_27DE613D0;
  if (!qword_27DE613D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613D0);
  }

  return result;
}

unint64_t sub_236A1B164()
{
  result = qword_27DE613E0;
  if (!qword_27DE613E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613E0);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_236A1B224()
{
  v1 = *v0;
  v2 = 0x4449656372756F73;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_236A1B2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A1B6EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A1B300(uint64_t a1)
{
  v2 = sub_236A1B570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1B33C(uint64_t a1)
{
  v2 = sub_236A1B570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1B378(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE613E8, &qword_236A33380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1B570();
  sub_236A2F404();
  v19 = 0;
  sub_236A2F2E4();
  if (!v3)
  {
    v18 = a3;
    v17 = 1;
    sub_236A1B5C4();
    sub_236A2F304();
    v16 = 2;
    sub_236A2F2D4();
    v15 = 3;
    sub_236A2F2D4();
    v14 = 4;
    sub_236A2F2D4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_236A1B570()
{
  result = qword_27DE613F0;
  if (!qword_27DE613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613F0);
  }

  return result;
}

unint64_t sub_236A1B5C4()
{
  result = qword_27DE613F8;
  if (!qword_27DE613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE613F8);
  }

  return result;
}

uint64_t sub_236A1B618(uint64_t *a1)
{
  result = sub_236A1B8A8(a1);
  if (v1)
  {
    return v3 & 0x10101FF;
  }

  return result;
}

uint64_t sub_236A1B648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_236A1B8A8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 9) = BYTE1(v5) & 1;
    *(a2 + 10) = BYTE2(v5) & 1;
    *(a2 + 11) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_236A1B690(void *a1)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 11);
  return sub_236A1B378(a1, *v1, *(v1 + 8));
}

uint64_t sub_236A1B6EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656372756F73 && a2 == 0xEE00737469676944;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000236A37070 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000236A37090 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000236A370B0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000236A370D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_236A2F334();

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

uint64_t sub_236A1B8A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61418, &qword_236A33558);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1B570();
  sub_236A2F3F4();
  v15 = 0;
  v8 = sub_236A2F1D4();
  v14 = 1;
  sub_236A1BC30();
  sub_236A2F1F4();
  v13 = 2;
  v10[3] = sub_236A2F1C4();
  v12 = 3;
  v10[2] = sub_236A2F1C4();
  v11 = 4;
  sub_236A2F1C4();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_236A1BB2C()
{
  result = qword_27DE61400;
  if (!qword_27DE61400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61400);
  }

  return result;
}

unint64_t sub_236A1BB84()
{
  result = qword_27DE61408;
  if (!qword_27DE61408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61408);
  }

  return result;
}

unint64_t sub_236A1BBDC()
{
  result = qword_27DE61410;
  if (!qword_27DE61410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61410);
  }

  return result;
}

unint64_t sub_236A1BC30()
{
  result = qword_27DE61420;
  if (!qword_27DE61420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61420);
  }

  return result;
}

void sub_236A1BC84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_8;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_236A1BD68@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_236A1BD7C()
{
  if (qword_27DE60E68 != -1)
  {
    result = swift_once();
  }

  if (qword_27DE6C208)
  {
    return sub_236A0E674(v0, sub_236A1BC84);
  }

  return result;
}

uint64_t sub_236A1BE00()
{
  v1 = 0x5643656E6966;
  v2 = 0x69737265766E6F63;
  if (*v0 != 2)
  {
    v2 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x5643657372616F63;
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

uint64_t sub_236A1BE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A1C1B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A1BEC4(uint64_t a1)
{
  v2 = sub_236A1C108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1BF00(uint64_t a1)
{
  v2 = sub_236A1C108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1BF3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61428, qword_236A33560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1C108();
  sub_236A2F404();
  v11 = *v3;
  v17[15] = 0;
  sub_236A2F2E4();
  if (!v2)
  {
    v17[14] = *(v3 + 8);
    v17[13] = 1;
    sub_236A1A9D0();
    sub_236A2F284();
    v12 = v3[2];
    v13 = v3[3];
    v17[12] = 2;
    sub_236A2F244();
    v14 = v3[4];
    v15 = v3[5];
    v17[11] = 3;
    sub_236A2F2C4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_236A1C108()
{
  result = qword_27DE61430;
  if (!qword_27DE61430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61430);
  }

  return result;
}

double sub_236A1C15C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_236A1C328(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_236A1C1B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5643656E6966 && a2 == 0xE600000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5643657372616F63 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_236A2F334();

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

uint64_t sub_236A1C328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61450, qword_236A33740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1C108();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_236A2F1D4();
  v25 = 1;
  sub_236A1B164();
  sub_236A2F174();
  v12 = v26;
  v24 = 2;
  v13 = sub_236A2F134();
  v15 = v14;
  HIDWORD(v21) = v12;
  v22 = v13;
  v23 = 3;
  v16 = sub_236A2F1B4();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = BYTE4(v21);
  *(a2 + 16) = v22;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v19;
  return result;
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

uint64_t sub_236A1C590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_236A1C5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_236A1C648()
{
  result = qword_27DE61438;
  if (!qword_27DE61438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61438);
  }

  return result;
}

unint64_t sub_236A1C6A0()
{
  result = qword_27DE61440;
  if (!qword_27DE61440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61440);
  }

  return result;
}

unint64_t sub_236A1C6F8()
{
  result = qword_27DE61448;
  if (!qword_27DE61448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61448);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A1C764()
{
  result = sub_236A1C8D4();
  qword_27DE6C348 = result;
  return result;
}

uint64_t sub_236A1C784()
{
  v1 = v0;
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v2 = sub_236A2EE14();
  __swift_project_value_buffer(v2, qword_2813177A0);
  v3 = sub_236A2EDF4();
  v4 = sub_236A2F014();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2369F3000, v3, v4, "deinitializing ServiceConnection", v5, 2u);
    MEMORY[0x2383B5900](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  return v1;
}

uint64_t sub_236A1C87C()
{
  sub_236A1C784();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_236A1C8D4()
{
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v0 = sub_236A2EE14();
  __swift_project_value_buffer(v0, qword_2813177A0);
  v1 = sub_236A2EDF4();
  v2 = sub_236A2F014();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2369F3000, v1, v2, "initializing ServiceConnection", v3, 2u);
    MEMORY[0x2383B5900](v3, -1, -1);
  }

  v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v5 = sub_236A2EE64();
  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [v6 setExportedInterface_];

  v9 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v6 setExportedObject_];

  v10 = [v7 interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  v18 = sub_236A02084;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_236A02090;
  v17 = &block_descriptor_9;
  v11 = _Block_copy(&v14);
  [v6 setInterruptionHandler_];
  _Block_release(v11);
  v18 = sub_236A020D4;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_236A02090;
  v17 = &block_descriptor_6_1;
  v12 = _Block_copy(&v14);
  [v6 setInvalidationHandler_];
  _Block_release(v12);
  [v6 resume];
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A1CBF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_236A1CC20, 0, 0);
}

uint64_t sub_236A1CC20()
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_236A1CE78;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_236A0C030;
  v5 = *(v0 + 72);

  return sub_236A03B30(v5, sub_236A1CE84, v3);
}

void sub_236A1CD6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_236A2ED64();
  v11 = sub_236A2ED64();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_236A2E344;
  v13[3] = &block_descriptor_21_0;
  v12 = _Block_copy(v13);

  [a1 handoffTokenWithAdvertisedItemID:a6 tokenData:v10 requestData:v11 reply:v12];
  _Block_release(v12);
}

void sub_236A1CE78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[3];
  v7 = v5[4];
  sub_236A1CD6C(a1, a2, a3, a4, a5, v5[2]);
}

uint64_t sub_236A1CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_236A1CEB4, 0, 0);
}

uint64_t sub_236A1CEB4()
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_236A1D000;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_236A0BDB4;
  v5 = *(v0 + 72);

  return sub_236A03B30(v5, sub_236A1D98C, v3);
}

uint64_t sub_236A1D03C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_281315FF0 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20]();
  MEMORY[0x28223BE20]();
  return sub_236A0EA30(a4, sub_236A1D98C);
}

void sub_236A1D144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v14 = sub_236A2ED64();
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_236A2E344;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t sub_236A1D288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69766E456E616B73 && a2 == 0xEF746E656D6E6F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236A2F334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236A1D318(uint64_t a1)
{
  v2 = sub_236A1D4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1D354(uint64_t a1)
{
  v2 = sub_236A1D4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1D390(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61458, qword_236A337A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1D4D8();
  sub_236A2F404();
  v11[15] = a2;
  sub_236A1D52C();
  sub_236A2F284();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_236A1D4D8()
{
  result = qword_2813160D0;
  if (!qword_2813160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160D0);
  }

  return result;
}

unint64_t sub_236A1D52C()
{
  result = qword_2813160D8;
  if (!qword_2813160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160D8);
  }

  return result;
}

void *sub_236A1D598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_236A1D5E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_236A1D5E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61468, &qword_236A33968);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1D4D8();
  sub_236A2F3F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_236A1D918();
    sub_236A2F174();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for TokenHandoffRequest(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_236A1D814()
{
  result = qword_27DE61460;
  if (!qword_27DE61460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61460);
  }

  return result;
}

unint64_t sub_236A1D86C()
{
  result = qword_2813160C0;
  if (!qword_2813160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160C0);
  }

  return result;
}

unint64_t sub_236A1D8C4()
{
  result = qword_2813160C8;
  if (!qword_2813160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160C8);
  }

  return result;
}

unint64_t sub_236A1D918()
{
  result = qword_27DE61470;
  if (!qword_27DE61470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61470);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_236A1D998(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_236A2E344;
  v7[3] = &block_descriptor_11;
  v6 = _Block_copy(v7);

  [v5 getSnoutStoriesWithReply_];
  _Block_release(v6);
}

uint64_t sub_236A1DA50()
{
  if (qword_27DE60E68 != -1)
  {
    swift_once();
  }

  if (!qword_27DE6C208)
  {
    return 0;
  }

  result = sub_236A0EDE0(sub_236A1D998, &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_236A1DAF0(uint64_t a1)
{
  v2 = sub_236A1DC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1DB2C(uint64_t a1)
{
  v2 = sub_236A1DC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1DB68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61478, qword_236A33970);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1DC7C();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_236A1DC7C()
{
  result = qword_27DE61480;
  if (!qword_27DE61480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61480);
  }

  return result;
}

unint64_t sub_236A1DCF4()
{
  result = qword_27DE61488;
  if (!qword_27DE61488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61488);
  }

  return result;
}

unint64_t sub_236A1DD4C()
{
  result = qword_27DE61490;
  if (!qword_27DE61490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61490);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A1DDF0()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t sub_236A1DE04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperBillingEvent() + 24);
  v4 = sub_236A2EDB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperBillingEvent()
{
  result = qword_27DE614E0;
  if (!qword_27DE614E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A1DEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = type metadata accessor for DeveloperBillingEvent();
  v9 = a6 + *(v8 + 24);
  result = sub_236A2EDA4();
  *(a6 + *(v8 + 28)) = a5;
  return result;
}

uint64_t sub_236A1DF48()
{
  v1 = 0x6563697270;
  v2 = 0x6573616863727570;
  if (*v0 != 2)
  {
    v2 = 0x707954726566666FLL;
  }

  if (*v0)
  {
    v1 = 0x797469746E617571;
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

uint64_t sub_236A1DFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A1EB5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A1DFF4(uint64_t a1)
{
  v2 = sub_236A1E328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A1E030(uint64_t a1)
{
  v2 = sub_236A1E328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A1E06C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61498, &qword_236A33AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A1E328();
  sub_236A2F404();
  v17 = *v3;
  v18 = *(v3 + 4);
  v16 = 0;
  type metadata accessor for Decimal();
  sub_236A1E7F8(&qword_27DE614A8, type metadata accessor for Decimal);
  sub_236A2F304();
  if (!v2)
  {
    v12 = *(v3 + 3);
    LOBYTE(v17) = 1;
    sub_236A2F2E4();
    v13 = type metadata accessor for DeveloperBillingEvent();
    v14 = *(v13 + 24);
    LOBYTE(v17) = 2;
    sub_236A2EDB4();
    sub_236A1E7F8(&qword_27DE614B0, MEMORY[0x277CC9578]);
    sub_236A2F304();
    LOBYTE(v17) = *(v3 + *(v13 + 28));
    v16 = 3;
    sub_236A1E37C();
    sub_236A2F284();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_236A1E328()
{
  result = qword_27DE614A0;
  if (!qword_27DE614A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE614A0);
  }

  return result;
}

unint64_t sub_236A1E37C()
{
  result = qword_27DE614B8;
  if (!qword_27DE614B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE614B8);
  }

  return result;
}

uint64_t sub_236A1E3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_236A2EDB4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE614C0, qword_236A33AF8);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DeveloperBillingEvent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_236A1E328();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v24 = v7;
  v18 = v27;
  type metadata accessor for Decimal();
  v34 = 0;
  sub_236A1E7F8(&qword_27DE614C8, type metadata accessor for Decimal);
  v19 = v28;
  sub_236A2F1F4();
  *v15 = v30;
  *(v15 + 4) = v31;
  v33 = 1;
  *(v15 + 3) = sub_236A2F1D4();
  v33 = 2;
  sub_236A1E7F8(&qword_27DE614D0, MEMORY[0x277CC9578]);
  v20 = v24;
  sub_236A2F1F4();
  v21 = *(v26 + 32);
  v23 = *(v12 + 24);
  v21(&v15[v23], v20, v4);
  v32 = 3;
  sub_236A1E840();
  sub_236A2F174();
  (*(v18 + 8))(v11, v19);
  v15[*(v12 + 28)] = v33;
  sub_236A1E894(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2369FF3A4(v15);
}

uint64_t sub_236A1E7F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_236A1E840()
{
  result = qword_27DE614D8;
  if (!qword_27DE614D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE614D8);
  }

  return result;
}

uint64_t sub_236A1E894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperBillingEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_236A1E950()
{
  type metadata accessor for Decimal();
  if (v0 <= 0x3F)
  {
    sub_236A2EDB4();
    if (v1 <= 0x3F)
    {
      sub_236A1E9F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_236A1E9F4()
{
  if (!qword_27DE614F0)
  {
    v0 = sub_236A2F054();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE614F0);
    }
  }
}

unint64_t sub_236A1EA58()
{
  result = qword_27DE614F8;
  if (!qword_27DE614F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE614F8);
  }

  return result;
}

unint64_t sub_236A1EAB0()
{
  result = qword_27DE61500;
  if (!qword_27DE61500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61500);
  }

  return result;
}

unint64_t sub_236A1EB08()
{
  result = qword_27DE61508;
  if (!qword_27DE61508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61508);
  }

  return result;
}

uint64_t sub_236A1EB5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_236A2F334();

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

uint64_t sub_236A1ECC8(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_236A2F3E4();
  result = sub_236A2F054();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_236A1ED6C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_236A2F3E4();
  v5 = sub_236A2F054();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t sub_236A1EE24()
{
  sub_236A1ED6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_236A1EECC(unsigned __int8 a1)
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](a1);
  return sub_236A2F3D4();
}

uint64_t sub_236A1EF14(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v43 = 46;
  v44 = 0xE100000000000000;
  v42 = &v43;

  v5 = sub_236A20E08(0x7FFFFFFFFFFFFFFFLL, 0, sub_236A212D4, v41, a1, a2, v4);
  if (v5[2] == 3)
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];

    v10 = MEMORY[0x2383B4F60](v6, v7, v8, v9);
    v12 = v11;

    v43 = v10;
    v44 = v12;
    v13 = sub_236A21344();
    v14 = MEMORY[0x277D837D0];
    v15 = sub_236A2F064();
    v17 = v16;

    v43 = v15;
    v44 = v17;
    v39 = v13;
    v40 = v13;
    v37 = v14;
    v38 = v13;
    v18 = sub_236A2F064();
    v20 = v19;

    v43 = v18;
    v44 = v20;

    v21 = sub_236A2EED4();

    v22 = v21 & 3;
    if (v21 <= 0)
    {
      v22 = -(-v21 & 3);
    }

    if (v22)
    {
      v23 = sub_236A2EF14();
      MEMORY[0x2383B4FA0](v23);
    }

    v24 = sub_236A2ED54();
    v26 = v25;

    if (v26 >> 60 != 15)
    {
      v31 = objc_opt_self();
      v32 = sub_236A2ED64();
      v43 = 0;
      v33 = [v31 JSONObjectWithData:v32 options:0 error:{&v43, v37, v38, v39, v40, 47, 0xE100000000000000}];

      if (v33)
      {
        v34 = v43;
        sub_236A2F074();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61520, &qword_236A33D10);
        if (swift_dynamicCast())
        {
          sub_236A11E68(v24, v26);
          result = 95;
          goto LABEL_10;
        }

        sub_236A212F0();
        swift_allocError();
        *v36 = 1;
      }

      else
      {
        v35 = v43;
        sub_236A2ED14();
      }

      swift_willThrow();
      result = sub_236A11E68(v24, v26);
      goto LABEL_10;
    }

    sub_236A212F0();
    swift_allocError();
    *v27 = 1;
  }

  else
  {

    sub_236A212F0();
    swift_allocError();
    *v28 = 0;
  }

  result = swift_willThrow();
LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236A1F2DC()
{
  sub_236A21344();
  sub_236A2F064();
  v0 = sub_236A2F064();

  v5 = v0;

  v1 = sub_236A2EED4();

  v2 = v1 & 3;
  if (v1 <= 0)
  {
    v2 = -(-v1 & 3);
  }

  if (v2)
  {
    v3 = sub_236A2EF14();
    MEMORY[0x2383B4FA0](v3);
  }

  return v5;
}

uint64_t sub_236A1F424(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v43 = 46;
  v44 = 0xE100000000000000;
  v42 = &v43;

  v5 = sub_236A20E08(0x7FFFFFFFFFFFFFFFLL, 0, sub_236A21A1C, v41, a1, a2, v4);
  if (v5[2] == 3)
  {
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = v5[11];

    v10 = MEMORY[0x2383B4F60](v6, v7, v8, v9);
    v12 = v11;

    v43 = v10;
    v44 = v12;
    v13 = sub_236A21344();
    v14 = MEMORY[0x277D837D0];
    v15 = sub_236A2F064();
    v17 = v16;

    v43 = v15;
    v44 = v17;
    v39 = v13;
    v40 = v13;
    v37 = v14;
    v38 = v13;
    v18 = sub_236A2F064();
    v20 = v19;

    v43 = v18;
    v44 = v20;

    v21 = sub_236A2EED4();

    v22 = v21 & 3;
    if (v21 <= 0)
    {
      v22 = -(-v21 & 3);
    }

    if (v22)
    {
      v23 = sub_236A2EF14();
      MEMORY[0x2383B4FA0](v23);
    }

    v24 = sub_236A2ED54();
    v26 = v25;

    if (v26 >> 60 != 15)
    {
      v31 = objc_opt_self();
      v32 = sub_236A2ED64();
      v43 = 0;
      v33 = [v31 JSONObjectWithData:v32 options:0 error:{&v43, v37, v38, v39, v40, 47, 0xE100000000000000}];

      if (v33)
      {
        v34 = v43;
        sub_236A2F074();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61520, &qword_236A33D10);
        if (swift_dynamicCast())
        {
          sub_236A11E68(v24, v26);
          result = 95;
          goto LABEL_10;
        }

        sub_236A212F0();
        swift_allocError();
        *v36 = 2;
      }

      else
      {
        v35 = v43;
        sub_236A2ED14();
      }

      swift_willThrow();
      result = sub_236A11E68(v24, v26);
      goto LABEL_10;
    }

    sub_236A212F0();
    swift_allocError();
    *v27 = 2;
  }

  else
  {

    sub_236A212F0();
    swift_allocError();
    *v28 = 0;
  }

  result = swift_willThrow();
LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_236A1F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v87 = a4;
  v88 = a7;
  v85 = a2;
  v86 = a5;
  v83 = a3;
  v9 = sub_236A2EE44();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236A2EE94();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_236A2EC54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_236A2EC94();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_236A2EC84();
  (*(v18 + 104))(v21, *MEMORY[0x277CC8768], v17);
  sub_236A2EC64();
  v26 = v95;
  v27 = sub_236A2EC74();
  if (v26)
  {
    goto LABEL_2;
  }

  v29 = v27;
  v30 = v28;
  v79 = v16;
  v80 = v13;
  v77 = v9;
  v78 = v12;
  v87 = a9;
  v31 = sub_236A2ED74();
  v95 = v25;
  v93 = v31;
  v94 = v32;
  v91 = 43;
  v92 = 0xE100000000000000;
  v89 = 45;
  v90 = 0xE100000000000000;
  sub_236A21344();
  v33 = sub_236A2F064();
  v35 = v34;

  v93 = v33;
  v94 = v35;
  v91 = 47;
  v92 = 0xE100000000000000;
  v89 = 95;
  v90 = 0xE100000000000000;
  v36 = sub_236A2F064();
  v38 = v37;

  v93 = v36;
  v94 = v38;
  v91 = 61;
  v92 = 0xE100000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  v81 = sub_236A2F064();
  v88 = v39;
  sub_236A08300(v29, v30);

  v40 = sub_236A2EC74();
  v86 = 0;
  v87 = v40;
  v43 = v41;
  v93 = sub_236A2ED74();
  v94 = v44;
  v91 = 43;
  v92 = 0xE100000000000000;
  v89 = 45;
  v90 = 0xE100000000000000;
  v45 = sub_236A2F064();
  v47 = v46;

  v93 = v45;
  v94 = v47;
  v91 = 47;
  v92 = 0xE100000000000000;
  v89 = 95;
  v90 = 0xE100000000000000;
  v48 = sub_236A2F064();
  v50 = v49;

  v93 = v48;
  v94 = v50;
  v91 = 61;
  v92 = 0xE100000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  v12 = sub_236A2F064();
  v52 = v51;
  sub_236A08300(v87, v43);

  v93 = v81;
  v94 = v88;

  MEMORY[0x2383B4FA0](46, 0xE100000000000000);

  MEMORY[0x2383B4FA0](v12, v52);

  v53 = v79;
  sub_236A2EE84();
  v54 = sub_236A2EE74();
  v56 = v55;

  (*(v84 + 8))(v53, v80);
  if (v56 >> 60 == 15)
  {

    sub_236A212F0();
    swift_allocError();
    *v57 = 4;
    swift_willThrow();
LABEL_2:

    return v12;
  }

  v87 = v52;
  v58 = v54;
  v93 = v54;
  v94 = v56;
  sub_236A21398();
  v59 = v78;
  v60 = v86;
  sub_236A2EE24();
  if (v60)
  {

    sub_236A11E68(v54, v56);
  }

  else
  {
    v61 = sub_236A2EE34();
    v84 = v62;
    v85 = v61;
    v63 = sub_236A2ED74();
    v86 = 0;
    v93 = v63;
    v94 = v64;
    v91 = 43;
    v92 = 0xE100000000000000;
    v89 = 45;
    v90 = 0xE100000000000000;
    v65 = sub_236A2F064();
    v67 = v66;

    v93 = v65;
    v94 = v67;
    v91 = 47;
    v92 = 0xE100000000000000;
    v89 = 95;
    v90 = 0xE100000000000000;
    v68 = sub_236A2F064();
    v70 = v69;

    v93 = v68;
    v94 = v70;
    v91 = 61;
    v92 = 0xE100000000000000;
    v89 = 0;
    v90 = 0xE000000000000000;
    v71 = sub_236A2F064();
    v73 = v72;
    sub_236A08300(v85, v84);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61528, &qword_236A33D18);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_236A33D00;
    v75 = v87;
    v76 = v88;
    *(v74 + 32) = v81;
    *(v74 + 40) = v76;
    *(v74 + 48) = v12;
    *(v74 + 56) = v75;
    *(v74 + 64) = v71;
    *(v74 + 72) = v73;
    v93 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61530, &qword_236A33D20);
    sub_236A213EC();
    v12 = sub_236A2EE54();
    sub_236A11E68(v58, v56);

    (*(v82 + 8))(v59, v77);
  }

  return v12;
}

uint64_t sub_236A2006C()
{
  sub_236A2ED74();
  sub_236A21344();
  sub_236A2F064();

  sub_236A2F064();

  v0 = sub_236A2F064();

  return v0;
}

uint64_t sub_236A20238(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_236A20270(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_236A202A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v122 = a5;
  v123 = a7;
  v142 = a4;
  v124 = *(a3 - 8);
  v125 = a6;
  v13 = *(v124 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v121 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = *(v16 - 8);
  v129 = v16;
  v17 = *(v128 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_236A2EC04();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = 46;
  v133 = 0xE100000000000000;
  v131 = &v132;

  v120 = a1;
  v25 = sub_236A20E08(0x7FFFFFFFFFFFFFFFLL, 0, sub_236A21A1C, v130, a1, a2, &v143);
  if (v25[2] != 3)
  {

    sub_236A212F0();
    swift_allocError();
    *v52 = 0;
    return swift_willThrow();
  }

  v119 = v8;
  v26 = sub_236A2EC44();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_236A2EC34();
  (*(v21 + 104))(v24, *MEMORY[0x277CC86C0], v20);
  v127 = v29;
  result = sub_236A2EC14();
  if (!v25[2])
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v118 = a3;
  v126 = a8;
  v32 = v25[4];
  v31 = v25[5];
  v33 = v25[6];
  v34 = v25[7];

  v35 = MEMORY[0x2383B4F60](v32, v31, v33, v34);
  v37 = v36;

  v132 = v35;
  v133 = v37;
  v140 = 45;
  v141 = 0xE100000000000000;
  v138 = 43;
  v139 = 0xE100000000000000;
  sub_236A21344();
  v38 = sub_236A2F064();
  v40 = v39;

  v132 = v38;
  v133 = v40;
  v140 = 95;
  v141 = 0xE100000000000000;
  v138 = 47;
  v139 = 0xE100000000000000;
  v41 = sub_236A2F064();
  v43 = v42;

  v132 = v41;
  v133 = v43;

  v44 = sub_236A2EED4();

  v45 = v44 & 3;
  if (v44 <= 0)
  {
    v45 = -(-v44 & 3);
  }

  if (v45)
  {
    v46 = sub_236A2EF14();
    MEMORY[0x2383B4FA0](v46);
  }

  v47 = sub_236A2ED54();
  v49 = v48;

  v50 = v126;
  if (v49 >> 60 == 15)
  {

    sub_236A212F0();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();
  }

  v117 = a2;
  v53 = v129;
  v54 = v119;
  sub_236A2EC24();
  if (v54)
  {

    sub_236A11E68(v47, v49);
  }

  v116 = v47;
  v119 = v49;
  result = (*(v128 + 32))(v50, v19, v53);
  if (v25[2] < 2uLL)
  {
    goto LABEL_36;
  }

  v56 = v25[8];
  v55 = v25[9];
  v57 = v25[10];
  v58 = v25[11];

  v59 = MEMORY[0x2383B4F60](v56, v55, v57, v58);
  v61 = v60;

  v132 = v59;
  v133 = v61;
  v140 = 45;
  v141 = 0xE100000000000000;
  v138 = 43;
  v139 = 0xE100000000000000;
  v62 = sub_236A2F064();
  v64 = v63;

  v132 = v62;
  v133 = v64;
  v140 = 95;
  v141 = 0xE100000000000000;
  v138 = 47;
  v139 = 0xE100000000000000;
  v65 = sub_236A2F064();
  v67 = v66;

  v132 = v65;
  v133 = v67;

  v68 = sub_236A2EED4();

  v69 = v68 & 3;
  if (v68 <= 0)
  {
    v69 = -(-v68 & 3);
  }

  if (v69)
  {
    v70 = sub_236A2EF14();
    MEMORY[0x2383B4FA0](v70);
  }

  v71 = sub_236A2ED54();
  v73 = v72;

  v74 = v118;
  v75 = v125;
  if (v73 >> 60 != 15)
  {
    v81 = v121;
    sub_236A2EC24();
    v82 = v74;
    v83 = v73;
    v84 = v71;
    v85 = v126;
    v115 = v83;
    v132 = v129;
    v133 = v82;
    v134 = v142;
    v135 = v122;
    v136 = v75;
    v137 = v123;
    v86 = v82;
    v114 = type metadata accessor for JWS();
    result = (*(v124 + 32))(v85 + *(v114 + 68), v81, v86);
    if (v25[2] >= 3uLL)
    {
      v87 = v25[12];
      v88 = v25[13];
      v90 = v25[14];
      v89 = v25[15];

      v91 = MEMORY[0x2383B4F60](v87, v88, v90, v89);
      v93 = v92;

      v132 = v91;
      v133 = v93;
      v140 = 45;
      v141 = 0xE100000000000000;
      v138 = 43;
      v139 = 0xE100000000000000;
      v132 = sub_236A2F064();
      v133 = v94;
      v140 = 95;
      v141 = 0xE100000000000000;
      v138 = 47;
      v139 = 0xE100000000000000;
      v95 = sub_236A2F064();
      v97 = v96;

      v132 = v95;
      v133 = v97;

      v98 = sub_236A2EED4();

      v99 = v98 & 3;
      if (v98 <= 0)
      {
        v99 = -(-v98 & 3);
      }

      if (v99)
      {
        v100 = sub_236A2EF14();
        MEMORY[0x2383B4FA0](v100);
      }

      v101 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v101 = v91 & 0xFFFFFFFFFFFFLL;
      }

      v102 = v84;
      if (v101)
      {
        v103 = sub_236A2ED54();
        v105 = v104;

        v106 = v115;
        if (v105 >> 60 != 15)
        {
          sub_236A11E68(v103, v105);

          sub_236A11E68(v116, v119);
          result = sub_236A11E68(v102, v106);
          v109 = v114;
          v110 = v126;
          v111 = (v126 + *(v114 + 72));
          *v111 = v91;
          v111[1] = v93;
          v112 = (v110 + *(v109 + 76));
          v113 = v117;
          *v112 = v120;
          v112[1] = v113;
          return result;
        }
      }

      else
      {

        v106 = v115;
      }

      sub_236A212F0();
      swift_allocError();
      *v107 = 3;
      swift_willThrow();
      sub_236A11E68(v102, v106);
      sub_236A11E68(v116, v119);

      v77 = 1;
      v75 = v125;
      v78 = v126;
      v79 = v142;
      v80 = v129;
      v74 = v118;
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  sub_236A212F0();
  swift_allocError();
  *v76 = 2;
  swift_willThrow();
  sub_236A11E68(v116, v119);

  v77 = 0;
  v78 = v126;
  v79 = v142;
  v80 = v129;
LABEL_31:
  result = (*(v128 + 8))(v78, v80);
  if (v77)
  {
    v132 = v80;
    v133 = v74;
    v134 = v79;
    v135 = v122;
    v136 = v75;
    v137 = v123;
    v108 = type metadata accessor for JWS();
    return (*(v124 + 8))(v78 + *(v108 + 68), v74);
  }

  return result;
}

unint64_t sub_236A20E08@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_236A2EF34();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_236A211C8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_236A211C8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_236A2EF24();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_236A2EEE4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_236A2EEE4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_236A2EF34();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_236A211C8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_236A2EF34();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_236A211C8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_236A211C8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_236A2EEE4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}