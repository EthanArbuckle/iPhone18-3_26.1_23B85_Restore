void *sub_2225D2A68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2225D2B20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstallation.Phase(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppInstallation.Progress(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2225D2C44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppInstallation.Phase(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppInstallation.Progress(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2225D2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22261ADE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2225D2E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22261ADE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2225D2F1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2225D2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for State();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2225D2FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for State();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_2225D307C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = v4;
  v5 = *(v3 + 152);
  *(a2 + 8) = v5;
  return sub_2225E5394(v4, v5);
}

uint64_t sub_2225D30D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2225D3114()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2225D3164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2225D31AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2225D31EC()
{
  v1 = sub_22261AE30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_2225EA754(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2225D334C()
{
  MEMORY[0x223DBC280](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2225D3384()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2225D33C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2225D33FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2225D34A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2225D34D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2225D3520()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2225D3558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2225D3598@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ams_isManagedAppleID];
  *a2 = result;
  return result;
}

uint64_t sub_2225D35E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2225D3624()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2225D3668@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t sub_2225D36C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2225D3700()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2225D3748()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2225D3780()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2225D37B8()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2225D3808()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2225D3848()
{
  v1 = sub_22261ADE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2225D390C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v3 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2225D3964()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2225D399C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t dispatch thunk of AccountFamily.fetchFamilyMemberIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225D3D18;

  return v9(a1, a2);
}

uint64_t sub_2225D3D18(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2225D3E38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225D3E58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2225D3E94(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010880, type metadata accessor for ASDError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2225D3F00(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010880, type metadata accessor for ASDError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2225D3F6C(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2225D3FE8(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2225D4054(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2225D40C0(void *a1, uint64_t a2)
{
  v4 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2225D4150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2225D41DC(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2225D4248(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2225D42B4(void *a1, uint64_t a2)
{
  v4 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2225D4344(uint64_t a1, uint64_t a2)
{
  v4 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2225D43C0()
{
  v2 = *v0;
  sub_22261B700();
  sub_22261B1B0();
  return sub_22261B740();
}

uint64_t sub_2225D4448(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010840, type metadata accessor for ASDServerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2225D44B4(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010840, type metadata accessor for ASDServerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2225D4520(uint64_t a1)
{
  v2 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2225D458C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2225D46DC(&qword_27D010838, type metadata accessor for ASDServerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2225D4610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2225D46DC(&qword_27D0108B0, type metadata accessor for ASDError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2225D46DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2225D4930()
{
  result = qword_27D010868;
  if (!qword_27D010868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010868);
  }

  return result;
}

void sub_2225D4B00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AdamID.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2225D4C80()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2225D4CC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22261AF10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 < 0)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_22261B500();

    v21 = 0xD00000000000001DLL;
    v22 = 0x800000022261EEF0;
    v24 = a1;
    v10 = sub_22261B610();
    MEMORY[0x223DBB650](v10);

    v11 = v21;
    v12 = v22;
    sub_2225D50A4();
    v13 = swift_allocError();
    *v14 = v11;
    v14[1] = v12;
    swift_willThrow();
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    v15 = *(sub_22261AF30() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v23 = MEMORY[0x277D84A28];
    v21 = a1;
    sub_22261AEC0();
    sub_2225D5F6C(&v21);
    sub_22261AEF0();
    swift_getErrorValue();
    v23 = v20;
    v18 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(*(v20 - 8) + 16))(v18);
    sub_22261AEC0();
    sub_2225D5F6C(&v21);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B070();

    result = sub_2225D5EB0(a2);
    v9 = 0;
  }

  else
  {
    result = sub_2225D5EB0(a2);
    v9 = a1;
  }

  *a3 = v9;
  *(a3 + 8) = a1 < 0;
  return result;
}

uint64_t AdamID.init(value:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    sub_22261B500();

    v2 = sub_22261B610();
    MEMORY[0x223DBB650](v2);

    sub_2225D50A4();
    swift_allocError();
    *v3 = 0xD00000000000001DLL;
    v3[1] = 0x800000022261EEF0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2225D50A4()
{
  result = qword_27D0108C8;
  if (!qword_27D0108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0108C8);
  }

  return result;
}

void AdamID.init(value:)(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = [a1 longLongValue];
  if ((v4 & 0x8000000000000000) != 0)
  {
    sub_22261B500();

    v5 = sub_22261B610();
    MEMORY[0x223DBB650](v5);

    sub_2225D50A4();
    swift_allocError();
    *v6 = 0xD00000000000001DLL;
    v6[1] = 0x800000022261EEF0;
    swift_willThrow();
  }

  else
  {

    *a2 = v4;
  }
}

uint64_t AdamID.init(value:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v32 = result;
    v10 = sub_2225D57B8(result, a2, 10);
    result = v32;
    if (v33)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v37 = result;
      v5 = sub_22261B530();
      result = v37;
    }

    v8 = *v5;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v17 = v6 - 1;
        if (v6 != 1)
        {
          v10 = 0;
          if (!v5)
          {
            goto LABEL_62;
          }

          v18 = (v5 + 1);
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v17)
            {
LABEL_53:
              LOBYTE(v5) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 == 45)
    {
      if (v6 >= 1)
      {
        v9 = v6 - 1;
        if (v6 != 1)
        {
          v10 = 0;
          if (!v5)
          {
            goto LABEL_62;
          }

          v11 = (v5 + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_71;
    }

    if (v6)
    {
      v10 = 0;
      if (!v5)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v24 = *v5 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v5;
        if (!--v6)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v38 = result;
  v39 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v5)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (--v5)
      {
        v10 = 0;
        v14 = &v38 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v5)
    {
      v10 = 0;
      v26 = &v38;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        v26 = (v26 + 1);
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v10 = 0;
    LOBYTE(v5) = 1;
LABEL_62:
    LOBYTE(v40) = v5;
    if (v5)
    {
LABEL_63:
      v38 = 0;
      v39 = 0xE000000000000000;
      v29 = result;
      sub_22261B500();

      v38 = 0xD000000000000020;
      v39 = 0x800000022261EF10;
      v30 = v29;
      v31 = a2;
LABEL_68:
      MEMORY[0x223DBB650](v30, v31);

      v34 = v38;
      v35 = v39;
      sub_2225D50A4();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      return swift_willThrow();
    }

LABEL_65:

    if ((v10 & 0x8000000000000000) == 0)
    {
      *a3 = v10;
      return result;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22261B500();

    v38 = 0xD00000000000001DLL;
    v39 = 0x800000022261EEF0;
    v40 = v10;
    v30 = sub_22261B610();
    goto LABEL_68;
  }

  if (v5)
  {
    if (--v5)
    {
      v10 = 0;
      v21 = &v38 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

id AdamID.numberValue.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithLongLong_];
}

uint64_t AdamID.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  return sub_22261B740();
}

uint64_t sub_2225D5700()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  return sub_22261B740();
}

uint64_t sub_2225D5774()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  return sub_22261B740();
}

unsigned __int8 *sub_2225D57B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22261B280();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2225D6038();
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
      result = sub_22261B530();
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

unint64_t sub_2225D5D4C()
{
  result = qword_280D9F2D8;
  if (!qword_280D9F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F2D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdamID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AdamID(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2225D5E10(uint64_t a1, int a2)
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

uint64_t sub_2225D5E58(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2225D5F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D8, &qword_22261D9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2225D6038()
{
  v0 = sub_22261B290();
  v4 = sub_2225D60B8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2225D60B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22261B200();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22261B460();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2225D6210(v9, 0);
  v12 = sub_2225D6284(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22261B200();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22261B530();
LABEL_4:

  return sub_22261B200();
}

void *sub_2225D6210(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E0, &qword_22261C8C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2225D6284(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2225D64A4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22261B250();
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
          result = sub_22261B530();
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

    result = sub_2225D64A4(v12, a6, a7);
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

    result = sub_22261B230();
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

uint64_t sub_2225D64A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22261B260();
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
    v5 = MEMORY[0x223DBB670](15, a1 >> 16);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2225D6538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2225D6580(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

char *AMSAccountFamily.__allocating_init(primaryAccount:bag:)(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22261B010();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225D6718(a1, v15);
  (*(v6 + 16))(v9, a2, v5);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  swift_allocObject();
  v12 = sub_2225D7E5C(v15, v9, sub_2225D677C, 0);
  (*(v6 + 8))(a2, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_2225D6718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_2225D677C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEE4E0]) initWithAccount:a1 bag:sub_22261AFE0()];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2225D67D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22261AE80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  LODWORD(a1) = (*(v5 + 88))(v8, v4);
  v9 = *MEMORY[0x277D21970];
  result = (*(v5 + 8))(v8, v4);
  if (a1 == v9)
  {
    v11 = *(a2 + OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache);

    os_unfair_lock_lock((v11 + 24));
    v12 = *(v11 + 16);

    *(v11 + 16) = 0;
    os_unfair_lock_unlock((v11 + 24));
  }

  return result;
}

uint64_t AMSAccountFamily.fetchFamilyMemberIDs()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_22261B0B0();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225D6A78, 0, 0);
}

uint64_t sub_2225D6A78()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = (v0[3] + OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22261AF80();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2225D8124(v0[4]);
    v6 = MEMORY[0x277D84F90];
LABEL_5:
    v11 = v0[7];
    v12 = v0[4];

    v13 = v0[1];

    return v13(v6);
  }

  v7 = v0[3];
  (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
  v8 = OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache;
  v0[8] = OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache;
  v9 = *(v7 + v8);

  os_unfair_lock_lock((v9 + 24));
  v6 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));

  if (v6)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  v15 = v0[7];
  v16 = v0[3];
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  v19 = MEMORY[0x223DBB4C0](v10);
  v20 = v18(v19, v16 + OBJC_IVAR____TtC8AppState16AMSAccountFamily_bag);

  v21 = [v20 performFamilyInfoLookup];
  v0[9] = v21;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010900, &qword_22261C910);
  v23 = v21;
  v0[10] = sub_22261B100();
  v24 = sub_2225D818C();
  v25 = *(MEMORY[0x277D22390] + 4);
  v26 = swift_task_alloc();
  v0[11] = v26;
  *v26 = v0;
  v26[1] = sub_2225D6CE8;

  return MEMORY[0x282180360](v0 + 2, v22, v24);
}

uint64_t sub_2225D6CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[10];

  if (v0)
  {
    v6 = sub_2225D7150;
  }

  else
  {
    v2[13] = v2[2];
    v6 = sub_2225D6E24;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2225D6E24()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 104) familyMembers];
  sub_2225D83D0(0, &qword_27D010910, 0x277CEE4E8);
  v4 = sub_22261B2B0();

  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  v6 = sub_2225D72DC(sub_2225D8238, v5, v4);
  v31 = v1;

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v7 = sub_22261B5B0();
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DBB940](v10, v6);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v6 + 8 * v10 + 32);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v12 = v11;
      v13 = [v12 iTunesDSID];
      if (v13)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    v14 = v9;
    v15 = v13;
    v30 = [v13 longLongValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2225D777C(0, *(v14 + 2) + 1, 1, v14);
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v14;
    if (v17 >= v16 >> 1)
    {
      v18 = sub_2225D777C((v16 > 1), v17 + 1, 1, v14);
    }

    *(v18 + 2) = v17 + 1;
    v19 = &v18[8 * v17];
    v9 = v18;
    *(v19 + 4) = v30;
  }

  while (v8 != v7);
LABEL_24:
  v20 = *(v0 + 64);
  v21 = *(v0 + 24);

  v22 = *(v21 + v20);
  *(swift_task_alloc() + 16) = v9;

  os_unfair_lock_lock((v22 + 24));
  sub_2225D8258((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));
  if (!v31)
  {
    v23 = *(v0 + 72);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 40);

    (*(v25 + 8))(v24, v26);
    v27 = *(v0 + 56);
    v28 = *(v0 + 32);

    v29 = *(v0 + 8);

    v29(v9);
  }
}

uint64_t sub_2225D7150()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5();
}

uint64_t sub_2225D71EC(id *a1)
{
  v1 = *a1;
  if ([*a1 isSharingPurchases])
  {
    goto LABEL_2;
  }

  v3 = [v1 iTunesDSID];
  swift_getKeyPath();
  sub_22261B0A0();

  if (v3)
  {
    if (v5)
    {
      sub_2225D83D0(0, &qword_280D9F270, 0x277CCABB0);
      v2 = sub_22261B410();
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v2 = 0;
    v3 = v5;
LABEL_9:

    return v2 & 1;
  }

LABEL_2:
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_2225D72DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22261B5B0())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x223DBB940](v8, v4);
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
        sub_22261B550();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_22261B580();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_22261B590();
        sub_22261B560();
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

uint64_t AMSAccountFamily.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC8AppState16AMSAccountFamily_bag;
  v3 = sub_22261B010();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount));
  return v0;
}

uint64_t AMSAccountFamily.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8AppState16AMSAccountFamily_bag;
  v3 = sub_22261B010();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache];

  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2225D75EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225D767C;

  return AMSAccountFamily.fetchFamilyMemberIDs()();
}

uint64_t sub_2225D767C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

char *sub_2225D777C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010950, &unk_22261ED20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2225D7880(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010928, &qword_22261C980);
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

size_t sub_2225D798C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010930, &qword_22261C988);
  v10 = *(type metadata accessor for State() - 8);
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
  v15 = *(type metadata accessor for State() - 8);
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

size_t sub_2225D7B64(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010938, &unk_22261C990);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010940, &qword_22261ECF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010940, &qword_22261ECF0) - 8);
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

void *sub_2225D7D54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010928, &qword_22261C980);
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

void *sub_2225D7DD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010948, qword_22261C9A0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_2225D7E5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a2;
  v22 = a1;
  v10 = *v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010958, &qword_22261E610);
  v11 = *(v23 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v21 - v13;
  sub_2225D6718(a1, &v5[OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount]);
  v15 = OBJC_IVAR____TtC8AppState16AMSAccountFamily_bag;
  v16 = sub_22261B010();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a2, v16);
  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010960, &qword_22261C9F0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *&v5[OBJC_IVAR____TtC8AppState16AMSAccountFamily_familyIDsCache] = v18;
  v19 = *&v5[OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount + 32];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount], *&v5[OBJC_IVAR____TtC8AppState16AMSAccountFamily_primaryAccount + 24]);

  sub_22261AF90();
  swift_getObjectType();
  sub_2225FEC80();
  sub_22261AF50();
  swift_unknownObjectRelease();
  (*(v17 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v11 + 8))(v14, v23);
  return v5;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2225D8124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2225D818C()
{
  result = qword_27D010908;
  if (!qword_27D010908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010900, &qword_22261C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010908);
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

uint64_t sub_2225D8258(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t type metadata accessor for AMSAccountFamily()
{
  result = qword_27D010918;
  if (!qword_27D010918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2225D82F4()
{
  result = sub_22261B010();
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

uint64_t sub_2225D83D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t App.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

uint64_t sub_2225D84D0()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

uint64_t sub_2225D8544()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

void *App.init(id:kind:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

char *App.withKind(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  *a2 = *v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static App.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t App.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x223DBBB60](*v0);
  return MEMORY[0x223DBBB40](v1);
}

uint64_t App.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  MEMORY[0x223DBBB40](v2);
  return sub_22261B740();
}

uint64_t sub_2225D86B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  MEMORY[0x223DBBB40](v2);
  return sub_22261B740();
}

uint64_t sub_2225D8710()
{
  v1 = *(v0 + 8);
  MEMORY[0x223DBBB60](*v0);
  return MEMORY[0x223DBBB40](v1);
}

uint64_t sub_2225D8750()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  MEMORY[0x223DBBB40](v2);
  return sub_22261B740();
}

unint64_t sub_2225D87B0()
{
  result = qword_280D9F6A8[0];
  if (!qword_280D9F6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D9F6A8);
  }

  return result;
}

unint64_t sub_2225D8808()
{
  result = qword_27D010968;
  if (!qword_27D010968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010970, &qword_22261CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010968);
  }

  return result;
}

unint64_t sub_2225D8870()
{
  result = qword_280D9F6A0;
  if (!qword_280D9F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F6A0);
  }

  return result;
}

uint64_t sub_2225D88C4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for App(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for App(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for App.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for App.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2225D8B24(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for State() - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_2225D8D00(a2, &v19 - v14);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225D8D64(v15, type metadata accessor for State);
  if (a2 == 8)
  {
    sub_2225D8D00(a1, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 9)
    {
      v17 = 1;
      if (((1 << EnumCaseMultiPayload) & 0x22D) != 0)
      {
LABEL_10:
        sub_2225D8D64(v13, type metadata accessor for State);
        return v17;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_2225D8D00(v13, v7);
        if (*v7)
        {
          goto LABEL_10;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_2225D8D00(v13, v10);
        sub_2225D8D64(v10, type metadata accessor for AppInstallation);
        goto LABEL_10;
      }
    }

    v17 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_2225D8D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225D8D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AppInstallation.Progress.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22261ADE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id AppInstallation.Progress.progress.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallation.Progress(0) + 24));

  return v1;
}

uint64_t AppInstallation.Progress.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22261ADD0();
  [a1 fractionCompleted];
  v5 = v4;
  result = type metadata accessor for AppInstallation.Progress(0);
  *(a2 + *(result + 20)) = v5;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t AppInstallation.Progress.init(fractionCompleted:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_22261ADD0();
  result = type metadata accessor for AppInstallation.Progress(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t AppInstallation.Progress.hash(into:)()
{
  sub_22261ADE0();
  sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
  sub_22261B1B0();
  v1 = type metadata accessor for AppInstallation.Progress(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x223DBBB60](*&v2);
  v3 = *(v0 + *(v1 + 24));
  return sub_22261B420();
}

uint64_t AppInstallation.Progress.hashValue.getter()
{
  sub_22261B700();
  sub_22261ADE0();
  sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
  sub_22261B1B0();
  v1 = type metadata accessor for AppInstallation.Progress(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x223DBBB60](*&v2);
  v3 = *(v0 + *(v1 + 24));
  sub_22261B420();
  return sub_22261B740();
}

uint64_t sub_2225D9118(uint64_t a1, uint64_t a2)
{
  sub_22261ADE0();
  sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
  sub_22261B1B0();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x223DBBB60](*&v4);
  v5 = *(v2 + *(a2 + 24));
  return sub_22261B420();
}

uint64_t sub_2225D91D0(uint64_t a1, uint64_t a2)
{
  sub_22261B700();
  sub_22261ADE0();
  sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
  sub_22261B1B0();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x223DBBB60](*&v4);
  v5 = *(v2 + *(a2 + 24));
  sub_22261B420();
  return sub_22261B740();
}

uint64_t sub_2225D92AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v4 = type metadata accessor for AppInstallation.Progress(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v59 - v8;
  v9 = type metadata accessor for AppInstallation.Phase(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v59 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v59 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v59 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010980, &qword_22261CB68);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v59 - v29;
  v31 = *(v28 + 56);
  v63 = v2;
  sub_2225DA744(v2, &v59 - v29, type metadata accessor for AppInstallation.Phase);
  sub_2225DA744(a1, &v30[v31], type metadata accessor for AppInstallation.Phase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2225DA744(v30, v23, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v61;
        sub_2225DA324(v23, v61);
        v49 = v62;
        sub_2225DA324(&v30[v31], v62);
        v50 = v48;
        v51 = v64;
        sub_2225DA324(v50, v64);
        v52 = sub_22261ADE0();
        (*(*(v52 - 8) + 24))(v51, v49, v52);
        sub_2225D9E78(v49, type metadata accessor for AppInstallation.Progress);
        goto LABEL_19;
      }

      v42 = v23;
    }

    else
    {
      sub_2225DA744(v30, v25, type metadata accessor for AppInstallation.Phase);
      if (!swift_getEnumCaseMultiPayload())
      {
        v54 = v61;
        sub_2225DA324(v25, v61);
        v55 = v62;
        sub_2225DA324(&v30[v31], v62);
        v56 = v54;
        v57 = v64;
        sub_2225DA324(v56, v64);
        v58 = sub_22261ADE0();
        (*(*(v58 - 8) + 24))(v57, v55, v58);
        sub_2225D9E78(v55, type metadata accessor for AppInstallation.Progress);
        goto LABEL_19;
      }

      v42 = v25;
    }

LABEL_16:
    sub_2225D9E78(v42, type metadata accessor for AppInstallation.Progress);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2225DA744(v30, v20, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = v61;
      sub_2225DA324(v20, v61);
      v44 = v62;
      sub_2225DA324(&v30[v31], v62);
      v45 = v43;
      v46 = v64;
      sub_2225DA324(v45, v64);
      v47 = sub_22261ADE0();
      (*(*(v47 - 8) + 24))(v46, v44, v47);
      sub_2225D9E78(v44, type metadata accessor for AppInstallation.Progress);
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v41 = v30;
      return sub_2225D9E78(v41, type metadata accessor for AppInstallation.Phase);
    }

    v42 = v20;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_17:
    sub_2225DA744(v63, v64, type metadata accessor for AppInstallation.Phase);
    return sub_2225D9E10(v30);
  }

  sub_2225DA744(v30, v17, type metadata accessor for AppInstallation.Phase);
  v33 = *v17;
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
  v34 = swift_projectBox();
  v35 = *&v30[v31];
  v36 = swift_projectBox();
  v37 = v59;
  sub_2225DA744(v34, v59, type metadata accessor for AppInstallation.Phase);
  v38 = v36;
  v39 = v60;
  sub_2225DA744(v38, v60, type metadata accessor for AppInstallation.Phase);
  v40 = swift_allocBox();
  sub_2225D92AC(v39);
  sub_2225D9E78(v39, type metadata accessor for AppInstallation.Phase);
  sub_2225D9E78(v37, type metadata accessor for AppInstallation.Phase);
  *v64 = v40;
  swift_storeEnumTagMultiPayload();

  v41 = v30;
  return sub_2225D9E78(v41, type metadata accessor for AppInstallation.Phase);
}

uint64_t static AppInstallation.Phase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallation.Phase(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v43 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v43 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010980, &qword_22261CB68);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v43 - v24;
  v26 = (&v43 + *(v23 + 56) - v24);
  sub_2225DA744(a1, &v43 - v24, type metadata accessor for AppInstallation.Phase);
  sub_2225DA744(a2, v26, type metadata accessor for AppInstallation.Phase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2225DA744(v25, v20, type metadata accessor for AppInstallation.Phase);
      if (!swift_getEnumCaseMultiPayload())
      {
        v41 = type metadata accessor for AppInstallation.Progress(0);
        v35 = *&v20[*(v41 + 20)] == *(v26 + *(v41 + 20));
        sub_2225D9E78(v26, type metadata accessor for AppInstallation.Progress);
        v39 = v20;
        goto LABEL_21;
      }

      v37 = v20;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2225DA744(v25, v15, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v38 = type metadata accessor for AppInstallation.Progress(0);
      v35 = *&v15[*(v38 + 20)] == *(v26 + *(v38 + 20));
      sub_2225D9E78(v26, type metadata accessor for AppInstallation.Progress);
      v39 = v15;
LABEL_21:
      sub_2225D9E78(v39, type metadata accessor for AppInstallation.Progress);
      v36 = v25;
      goto LABEL_22;
    }

    v37 = v15;
LABEL_18:
    sub_2225D9E78(v37, type metadata accessor for AppInstallation.Progress);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_19;
    }

    sub_22261B630();
    __break(1u);
LABEL_13:
    sub_2225DA744(v25, v18, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = type metadata accessor for AppInstallation.Progress(0);
      v35 = *&v18[*(v40 + 20)] == *(v26 + *(v40 + 20));
      sub_2225D9E78(v26, type metadata accessor for AppInstallation.Progress);
      v39 = v18;
      goto LABEL_21;
    }

    v37 = v18;
    goto LABEL_18;
  }

  sub_2225DA744(v25, v12, type metadata accessor for AppInstallation.Phase);
  v28 = *v12;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v29 = swift_projectBox();
    v30 = *v26;
    v31 = swift_projectBox();
    v32 = v43;
    sub_2225DA744(v29, v43, type metadata accessor for AppInstallation.Phase);
    v33 = v31;
    v34 = v44;
    sub_2225DA744(v33, v44, type metadata accessor for AppInstallation.Phase);
    v35 = static AppInstallation.Phase.== infix(_:_:)(v32, v34);
    sub_2225D9E78(v34, type metadata accessor for AppInstallation.Phase);
    sub_2225D9E78(v32, type metadata accessor for AppInstallation.Phase);

    v36 = v25;
LABEL_22:
    sub_2225D9E78(v36, type metadata accessor for AppInstallation.Phase);
    return v35 & 1;
  }

LABEL_19:
  sub_2225D9E10(v25);
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_2225D9E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010980, &qword_22261CB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2225D9E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AppInstallation.Phase.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AppInstallation.Progress(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for AppInstallation.Phase(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v30 - v18);
  sub_2225DA744(v1, &v30 - v18, type metadata accessor for AppInstallation.Phase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2225DA324(v19, v7);
      MEMORY[0x223DBBB40](2);
      sub_22261ADE0();
      sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
      sub_22261B1B0();
      v24 = *&v7[*(v3 + 20)];
      if (v24 == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x223DBBB60](*&v24);
      v25 = *&v7[*(v3 + 24)];
      sub_22261B420();
      return sub_2225D9E78(v7, type metadata accessor for AppInstallation.Progress);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v28 = *v19;
      v29 = swift_projectBox();
      sub_2225DA744(v29, v17, type metadata accessor for AppInstallation.Phase);
      MEMORY[0x223DBBB40](3);
      AppInstallation.Phase.hash(into:)(a1);
      sub_2225D9E78(v17, type metadata accessor for AppInstallation.Phase);
    }

    else
    {
      result = sub_22261B630();
      __break(1u);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2225DA324(v19, v10);
    MEMORY[0x223DBBB40](1);
    sub_22261ADE0();
    sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
    sub_22261B1B0();
    v26 = *&v10[*(v3 + 20)];
    if (v26 == 0.0)
    {
      v26 = 0.0;
    }

    MEMORY[0x223DBBB60](*&v26);
    v27 = *&v10[*(v3 + 24)];
    sub_22261B420();
    return sub_2225D9E78(v10, type metadata accessor for AppInstallation.Progress);
  }

  else
  {
    sub_2225DA324(v19, v12);
    MEMORY[0x223DBBB40](0);
    sub_22261ADE0();
    sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
    sub_22261B1B0();
    v21 = *&v12[*(v3 + 20)];
    if (v21 == 0.0)
    {
      v21 = 0.0;
    }

    MEMORY[0x223DBBB60](*&v21);
    v22 = *&v12[*(v3 + 24)];
    sub_22261B420();
    return sub_2225D9E78(v12, type metadata accessor for AppInstallation.Progress);
  }

  return result;
}

uint64_t sub_2225DA324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallation.Progress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225DA3A4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225DA3DC()
{
  v1 = *v0;
  sub_22261B700();
  v2 = [*(v1 + 16) bundleID];
  sub_22261B1E0();

  sub_22261B210();

  return sub_22261B740();
}

uint64_t sub_2225DA464()
{
  v1 = [*(*v0 + 16) bundleID];
  sub_22261B1E0();

  sub_22261B210();
}

uint64_t sub_2225DA4E0()
{
  v1 = *v0;
  sub_22261B700();
  v2 = [*(v1 + 16) bundleID];
  sub_22261B1E0();

  sub_22261B210();

  return sub_22261B740();
}

BOOL sub_2225DA564(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) storeItemID];
  return v3 == [*(v2 + 16) storeItemID];
}

uint64_t AppInstallation.init(phase:progress:hasPostProcessingPhase:essentialBackgroundAssetDownloadEstimate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for AppInstallation(0);
  sub_2225DA744(a1, a5 + v10[5], type metadata accessor for AppInstallation.Phase);
  sub_2225DA744(a2, a5 + v10[6], type metadata accessor for AppInstallation.Progress);
  *(a5 + v10[7]) = a3;
  *(a5 + v10[8]) = a4;
  *(a5 + v10[9]) = 0;
  *(a5 + v10[10]) = 0;
  v11 = objc_allocWithZone(MEMORY[0x277CEC328]);
  v12 = sub_22261B1D0();
  v13 = [v11 initWithBundleID_];

  sub_2225D9E78(a2, type metadata accessor for AppInstallation.Progress);
  sub_2225D9E78(a1, type metadata accessor for AppInstallation.Phase);
  type metadata accessor for AppInstallation.ASDAppStore();
  result = swift_allocObject();
  *(result + 16) = v13;
  *a5 = result;
  return result;
}

uint64_t sub_2225DA70C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2225DA744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id AppInstallation.pausedProgress.getter()
{
  v1 = type metadata accessor for AppInstallation.Progress(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppInstallation.Phase(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AppInstallation(0);
  sub_2225DA744(v0 + *(v12 + 20), v11, type metadata accessor for AppInstallation.Phase);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *v11;
    v14 = swift_projectBox();
    sub_2225DA744(v14, v9, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() <= 2)
    {
      sub_2225DA324(v9, v4);
      v15 = *&v4[*(v1 + 24)];
      sub_2225D9E78(v4, type metadata accessor for AppInstallation.Progress);

      return v15;
    }

    sub_2225D9E78(v9, type metadata accessor for AppInstallation.Phase);
  }

  else
  {
    sub_2225D9E78(v11, type metadata accessor for AppInstallation.Phase);
  }

  return 0;
}

uint64_t AppInstallation.isPaused.getter()
{
  v1 = type metadata accessor for AppInstallation.Progress(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppInstallation.Phase(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AppInstallation(0);
  sub_2225DA744(v0 + *(v12 + 20), v11, type metadata accessor for AppInstallation.Phase);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *v11;
    v14 = swift_projectBox();
    sub_2225DA744(v14, v9, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() < 3)
    {
      sub_2225DA324(v9, v4);
      v15 = *&v4[*(v1 + 24)];
      sub_2225D9E78(v4, type metadata accessor for AppInstallation.Progress);

      return 1;
    }

    sub_2225D9E78(v9, type metadata accessor for AppInstallation.Phase);
  }

  else
  {
    sub_2225D9E78(v11, type metadata accessor for AppInstallation.Phase);
  }

  return 0;
}

uint64_t AppInstallation.init(_app:phase:overallProgress:isExternalUpdateAvailable:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for AppInstallation.Progress(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppInstallation.Phase(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225DA744(a2, v17, type metadata accessor for AppInstallation.Phase);
  sub_2225DA744(a3, v13, type metadata accessor for AppInstallation.Progress);
  type metadata accessor for AppInstallation.ASDAppStore();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *a5 = v18;
  v19 = type metadata accessor for AppInstallation(0);
  sub_2225DA744(v17, a5 + v19[5], type metadata accessor for AppInstallation.Phase);
  sub_2225DA744(v13, a5 + v19[6], type metadata accessor for AppInstallation.Progress);
  v20 = a1;
  *(a5 + v19[7]) = [v20 hasPostProcessing];
  *(a5 + v19[8]) = [v20 essentialBackgroundAssetDownloadEstimate];
  *(a5 + v19[9]) = a4;
  v21 = [v20 storeExternalVersionID];

  sub_2225D9E78(a3, type metadata accessor for AppInstallation.Progress);
  sub_2225D9E78(a2, type metadata accessor for AppInstallation.Phase);
  sub_2225D9E78(v13, type metadata accessor for AppInstallation.Progress);
  result = sub_2225D9E78(v17, type metadata accessor for AppInstallation.Phase);
  *(a5 + v19[10]) = v21;
  return result;
}

uint64_t AppInstallation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = [*(*v1 + 16) bundleID];
  sub_22261B1E0();

  sub_22261B210();

  v5 = type metadata accessor for AppInstallation(0);
  v6 = v2 + v5[5];
  AppInstallation.Phase.hash(into:)(a1);
  v7 = v2 + v5[6];
  sub_22261ADE0();
  sub_2225DB2C8(&qword_27D010978, MEMORY[0x277CC9578]);
  sub_22261B1B0();
  v8 = type metadata accessor for AppInstallation.Progress(0);
  v9 = *(v7 + *(v8 + 20));
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x223DBBB60](*&v9);
  v10 = *(v7 + *(v8 + 24));
  sub_22261B420();
  v11 = *(v2 + v5[7]);
  sub_22261B720();
  MEMORY[0x223DBBB60](*(v2 + v5[8]));
  v12 = *(v2 + v5[9]);
  sub_22261B720();
  return MEMORY[0x223DBBB60](*(v2 + v5[10]));
}

uint64_t sub_2225DB070(void (*a1)(_BYTE *))
{
  sub_22261B700();
  a1(v3);
  return sub_22261B740();
}

uint64_t sub_2225DB0D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_22261B700();
  a3(v5);
  return sub_22261B740();
}

uint64_t sub_2225DB134(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22261B700();
  a4(v6);
  return sub_22261B740();
}

BOOL _s8AppState0A12InstallationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = [*(*a1 + 16) storeItemID];
  if (v5 == [*(v4 + 16) storeItemID] && (v6 = type metadata accessor for AppInstallation(0), (static AppInstallation.Phase.== infix(_:_:)(a1 + v6[5], a2 + v6[5]) & 1) != 0) && (v7 = v6[6], v8 = a1 + v7, v9 = a2 + v7, v10 = type metadata accessor for AppInstallation.Progress(0), *(v8 + *(v10 + 20)) == *&v9[*(v10 + 20)]) && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && *(a1 + v6[9]) == *(a2 + v6[9]))
  {
    return *(a1 + v6[10]) == *(a2 + v6[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225DB2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2225DB3C8()
{
  result = type metadata accessor for AppInstallation.ASDAppStore();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppInstallation.Phase(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppInstallation.Progress(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2225DB4A8()
{
  result = sub_22261ADE0();
  if (v1 <= 0x3F)
  {
    result = sub_2225DB534();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2225DB534()
{
  result = qword_280D9F018;
  if (!qword_280D9F018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F018);
  }

  return result;
}

void sub_2225DB5D0()
{
  sub_2225DB640();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2225DB640()
{
  if (!qword_280D9F158)
  {
    v0 = type metadata accessor for AppInstallation.Progress(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280D9F158);
    }
  }
}

uint64_t AppInstallationType.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for State();
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_2225DB76C(a1);
      v5 = 3;
      goto LABEL_11;
    }

    if (result == 6)
    {
      v5 = 1;
      goto LABEL_11;
    }

LABEL_8:
    result = sub_2225DB76C(a1);
    v5 = 0;
    goto LABEL_11;
  }

  if (!result)
  {
    v5 = *a1;
    goto LABEL_11;
  }

  if (result != 2)
  {
    goto LABEL_8;
  }

  result = sub_2225DB76C(a1);
  v5 = 2;
LABEL_11:
  *a2 = v5;
  return result;
}

uint64_t sub_2225DB76C(uint64_t a1)
{
  v2 = type metadata accessor for State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AppState::AppInstallationType_optional __swiftcall AppInstallationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22261B5F0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppInstallationType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x657461647075;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6E776F646572;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

unint64_t sub_2225DB8B0()
{
  result = qword_27D0109B0;
  if (!qword_27D0109B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109B0);
  }

  return result;
}

uint64_t sub_2225DB904()
{
  v1 = *v0;
  sub_22261B700();
  sub_22261B210();

  return sub_22261B740();
}

uint64_t sub_2225DB9C8()
{
  *v0;
  *v0;
  *v0;
  sub_22261B210();
}

uint64_t sub_2225DBA78()
{
  v1 = *v0;
  sub_22261B700();
  sub_22261B210();

  return sub_22261B740();
}

void sub_2225DBB44(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6E776F646572;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for AppInstallationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppInstallationType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2225DBD1C()
{
  xmmword_280D9F0A0 = 0uLL;
  byte_280D9F0B0 = 1;
  qword_280D9F0B8 = 0;
  unk_280D9F0C0 = 0xE000000000000000;
  qword_280D9F0C8 = 0;
  qword_280D9F0D0 = 0xE000000000000000;
}

void __swiftcall AppOffer.init(flags:ageRating:baseBuyParams:metricsBuyParams:)(AppState::AppOffer *__return_ptr retstr, AppState::AppOffer::Flags flags, Swift::Int_optional ageRating, Swift::String baseBuyParams, Swift::String metricsBuyParams)
{
  retstr->flags.rawValue = *flags.rawValue;
  retstr->ageRating.value = ageRating.value;
  retstr->ageRating.is_nil = ageRating.is_nil;
  retstr->baseBuyParams = baseBuyParams;
  retstr->metricsBuyParams = metricsBuyParams;
}

uint64_t static AppOffer.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D9F098 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = byte_280D9F0B0;
  v3 = qword_280D9F0B8;
  v2 = unk_280D9F0C0;
  v4 = qword_280D9F0C8;
  v5 = qword_280D9F0D0;
  *a1 = xmmword_280D9F0A0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_2225DBE44()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

uint64_t sub_2225DBEB8()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

BOOL sub_2225DBF40(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2225DBF70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2225DBF9C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2225DC078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t AppOffer.ageRating.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_2225DC0E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    v6 = sub_2225D7880(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2225D7880((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v10 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v10 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2225D7880(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_2225D7880((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v4;
    *(v13 + 5) = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109D0, &qword_22261EC40);
  sub_2225DC9C8();
  v14 = sub_22261B1C0();

  return v14;
}

BOOL sub_2225DC280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return (sub_22261B270() & 1) == 0;
}

uint64_t AppOffer.apply(to:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for State();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v2 & 2) != 0 && (sub_2225D8D00(a1, v8), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_2225DB76C(v8), EnumCaseMultiPayload == 3))
  {
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    return sub_2225D8D00(a1, a2);
  }
}

uint64_t AppOffer.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x223DBBB40](*v0);
  sub_22261B720();
  if (v2 != 1)
  {
    MEMORY[0x223DBBB40](v1);
  }

  sub_22261B210();

  return sub_22261B210();
}

uint64_t AppOffer.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_22261B700();
  MEMORY[0x223DBBB40](v2);
  sub_22261B720();
  if (v3 != 1)
  {
    MEMORY[0x223DBBB40](v1);
  }

  sub_22261B210();
  sub_22261B210();
  return sub_22261B740();
}

uint64_t sub_2225DC500()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x223DBBB40](*v0);
  sub_22261B720();
  if (v2 != 1)
  {
    MEMORY[0x223DBBB40](v1);
  }

  sub_22261B210();

  return sub_22261B210();
}

uint64_t sub_2225DC5A8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_22261B700();
  MEMORY[0x223DBBB40](v2);
  sub_22261B720();
  if (v3 != 1)
  {
    MEMORY[0x223DBBB40](v1);
  }

  sub_22261B210();
  sub_22261B210();
  return sub_22261B740();
}

uint64_t _s8AppState0A5OfferV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if ((v3 != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_22261B620() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_22261B620();
}

unint64_t sub_2225DC748()
{
  result = qword_27D0109B8;
  if (!qword_27D0109B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109B8);
  }

  return result;
}

unint64_t sub_2225DC7A0()
{
  result = qword_27D0109C0;
  if (!qword_27D0109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109C0);
  }

  return result;
}

unint64_t sub_2225DC7F4()
{
  result = qword_280D9EE60;
  if (!qword_280D9EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EE60);
  }

  return result;
}

unint64_t sub_2225DC84C()
{
  result = qword_280D9EE58;
  if (!qword_280D9EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EE58);
  }

  return result;
}

unint64_t sub_2225DC8A4()
{
  result = qword_27D0109C8;
  if (!qword_27D0109C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109C8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2225DC914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225DC95C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2225DC9C8()
{
  result = qword_280D9EC00;
  if (!qword_280D9EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0109D0, &qword_22261EC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EC00);
  }

  return result;
}

AppState::AppOpenableDestination_optional __swiftcall AppOpenableDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22261B5F0();

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

uint64_t AppOpenableDestination.rawValue.getter()
{
  if (*v0)
  {
    result = 0x736567617373656DLL;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_2225DCACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736567617373656DLL;
  }

  else
  {
    v4 = 7368801;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x736567617373656DLL;
  }

  else
  {
    v6 = 7368801;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22261B620();
  }

  return v9 & 1;
}

unint64_t sub_2225DCB70()
{
  result = qword_27D0109D8;
  if (!qword_27D0109D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109D8);
  }

  return result;
}

uint64_t sub_2225DCBC4()
{
  v1 = *v0;
  sub_22261B700();
  sub_22261B210();

  return sub_22261B740();
}

uint64_t sub_2225DCC40()
{
  *v0;
  sub_22261B210();
}

uint64_t sub_2225DCCA8()
{
  v1 = *v0;
  sub_22261B700();
  sub_22261B210();

  return sub_22261B740();
}

uint64_t sub_2225DCD20@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22261B5F0();

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

void sub_2225DCD80(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x736567617373656DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AppPurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

unint64_t sub_2225DCE58()
{
  result = qword_27D0109E0;
  if (!qword_27D0109E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0109E0);
  }

  return result;
}

void *RemoteInstalledAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = &unk_2835C0F20;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v0[4] = v4;
  return v0;
}

void *RemoteInstalledAppStateDataSource.init()()
{
  v0[3] = &unk_2835C0F20;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v0[4] = v4;
  return v0;
}

void *RemoteInstalledAppStateDataSource.__allocating_init(supportedAppKinds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = a1;
  v2[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v2[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v2[4] = v6;
  return v2;
}

void *RemoteInstalledAppStateDataSource.init(supportedAppKinds:)(uint64_t a1)
{
  v1[3] = a1;
  v1[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v1[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v1[4] = v5;
  return v1;
}

void RemoteInstalledAppStateDataSource.state(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DDB4C();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_2225DD1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_2225F1650(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for State();
    v12 = *(v11 - 8);
    sub_2225D8D00(v10 + *(v12 + 72) * v9, a3);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for State();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

BOOL RemoteInstalledAppStateDataSource.providesState(forApp:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
  }

  while (*(a1 + 8) != v7);
  return v5 != 0;
}

BOOL sub_2225DD364(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t RemoteInstalledAppStateDataSource.setRemoteInstalled(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DDB4C();
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

uint64_t sub_2225DD404(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for State();
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  sub_222618F1C(v6, a2);
  return swift_endAccess();
}

uint64_t RemoteInstalledAppStateDataSource.clearRemoteInstalled(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DE678();
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

uint64_t sub_2225DD584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = sub_2225F1650(a2);
  if (v10)
  {
    v11 = v9;
    v12 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    v20 = v14;
    *(a1 + 16) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22261A170();
      v14 = v20;
    }

    v15 = *(v14 + 56);
    v16 = type metadata accessor for State();
    v17 = *(v16 - 8);
    sub_2225DDDD0(v15 + *(v17 + 72) * v11, v7);
    sub_222619C30(v11, v14);
    *(a1 + 16) = v14;
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  else
  {
    v18 = type metadata accessor for State();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  swift_endAccess();
  return sub_2225DE544(v7);
}

void *RemoteInstalledAppStateDataSource.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t RemoteInstalledAppStateDataSource.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_2225DD800(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DE678();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_2225DD888(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DE678();
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

uint64_t sub_2225DD8FC(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225DE678();
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

unint64_t sub_2225DD970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A40, &qword_22261D390);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A48, &qword_22261D398);
    v8 = sub_22261B5E0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2225DE5AC(v10, v6, &qword_27D010A40, &qword_22261D390);
      result = sub_2225F1650(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for State();
      result = sub_2225DDDD0(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_2225DDB4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2225DDC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F8, &qword_22261D348);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A00, &unk_22261D350);
    v8 = sub_22261B5E0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2225DE5AC(v10, v6, &qword_27D0109F8, &qword_22261D348);
      result = sub_2225F173C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for State();
      result = sub_2225DDDD0(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_2225DDDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2225DDE34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A50, &qword_22261D3A0);
    v3 = sub_22261B5E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2225DE5AC(v4, v10, &qword_27D010A58, qword_22261E0A0);
      result = sub_2225F17A8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2225D2F1C(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_2225DDF60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A18, &qword_22261D368);
    v3 = sub_22261B5E0();
    for (i = a1 + 32; ; i += 48)
    {
      sub_2225DE5AC(i, v10, &qword_27D010A20, &qword_22261D370);
      result = sub_2225F173C(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2225D2F1C(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_2225DE080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A30, &unk_22261D380);
    v3 = sub_22261B5E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2225F003C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_2225DE17C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A28, &qword_22261D378);
  v3 = sub_22261B5E0();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_2225F1650(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = v5;
    v13[1] = v7;
    v13[2] = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v7 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_2225F1650(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2225DE2A0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A10, &qword_22261D360);
  v3 = sub_22261B5E0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2225F1650(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2225F1650(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2225DE3A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A08, &qword_22261E3A0);
  v3 = sub_22261B5E0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v27 = a1;
  v29 = *(a1 + 80);
  v11 = *(a1 + 88);
  v10 = *(a1 + 96);
  v12 = sub_2225F16BC(v4, v5);
  result = v29;
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (v27 + 168);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v16 = v3[6] + 16 * v12;
    *v16 = v4;
    *(v16 + 8) = v5;
    v17 = v3[7] + 56 * v12;
    *v17 = v6;
    *(v17 + 8) = v7;
    *(v17 + 16) = v8 & 1;
    *(v17 + 24) = v9;
    *(v17 + 32) = result;
    *(v17 + 40) = v11;
    *(v17 + 48) = v10;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    v21 = v1 - 1;
    if (!v21)
    {
      goto LABEL_8;
    }

    v4 = *(v15 - 8);
    v5 = *(v15 - 56);
    v7 = *(v15 - 5);
    v26 = *(v15 - 6);
    v28 = v15 + 9;
    v8 = *(v15 - 32);
    v9 = *(v15 - 3);
    v22 = *(v15 - 2);
    v30 = v21;
    v24 = *(v15 - 1);
    v23 = *v15;

    v12 = sub_2225F16BC(v4, v5);
    v10 = v23;
    v6 = v26;
    v15 = v28;
    result = v22;
    v11 = v24;
    v1 = v30;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2225DE544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2225DE5AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2225DE690@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for State();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a2;
  if ([a1 isFamilyShared] && (objc_msgSend(a1, sel_isOpenable) & 1) == 0 && (objc_msgSend(a1, sel_isUpdateAvailable) & 1) == 0)
  {
    v17 = [a1 progress];
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  if ([a1 isInstalled])
  {
    goto LABEL_9;
  }

  v18 = [a1 progress];
  if (v18)
  {

LABEL_9:
    sub_2225DEA0C(a1, a3 & 1, v11);
    if ((*(v28 + 48))(v11, 1, v12) != 1)
    {

      sub_2225DDDD0(v11, v15);
LABEL_26:
      sub_2225DDDD0(v15, a4);
      return (*(v28 + 56))(a4, 0, 1, v12);
    }

    sub_2225DE544(v11);
    if ([a1 isUpdateAvailable])
    {
      v19 = [a1 updateBuyParams];
      if (v19)
      {
        v20 = v19;
        v21 = sub_22261B1E0();
        v23 = v22;

        *v15 = v21;
        v15[1] = v23;
LABEL_25:
        swift_storeEnumTagMultiPayload();
        goto LABEL_26;
      }
    }

    if ([a1 hasMessagesExtension] && ((objc_msgSend(a1, sel_isLaunchProhibited) & 1) != 0 || v16 == 1))
    {
      v26 = [a1 storeExternalVersionID];

      *v15 = 1;
    }

    else
    {
      if ([a1 isLaunchProhibited])
      {

        goto LABEL_25;
      }

      v26 = [a1 storeExternalVersionID];

      *v15 = 0;
    }

    v15[1] = v26;
    goto LABEL_25;
  }

LABEL_19:

  v24 = *(v28 + 56);

  return v24(a4, 1, 1, v12);
}

uint64_t sub_2225DEA0C@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for AppInstallation.Phase(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for AppInstallation.Progress(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = [a1 progress];
  if (v20)
  {
    v50 = a3;
    v21 = a2;
    v22 = v20;
    sub_22261ADD0();
    [v22 fractionCompleted];
    *&v19[*(v13 + 20)] = v23;
    v24 = *(v13 + 24);
    v51 = v22;
    *&v19[v24] = v22;
    v25 = [a1 progressPhase];
    if (v25 > 2)
    {
      if (v25 > 5)
      {
        if (v25 == 6)
        {
          sub_2225DF6F8(v19, type metadata accessor for AppInstallation.Progress);

          v47 = type metadata accessor for State();
          return (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
        }

        v26 = v21;
        if (v25 == 7)
        {
          v32 = v17;
          sub_2225DF5AC(a1, v19, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
          v33 = swift_allocBox();
          v34 = v26;
          sub_2225DA744(v12, v35, type metadata accessor for AppInstallation.Phase);
          *v10 = v33;
          swift_storeEnumTagMultiPayload();
          sub_2225DA744(v19, v17, type metadata accessor for AppInstallation.Progress);
          type metadata accessor for AppInstallation.ASDAppStore();
          v36 = swift_allocObject();
          *(v36 + 16) = a1;
          v37 = v50;
          *v50 = v36;
          v38 = type metadata accessor for AppInstallation(0);
          sub_2225DA744(v10, &v37[v38[5]], type metadata accessor for AppInstallation.Phase);
          sub_2225DA744(v32, &v37[v38[6]], type metadata accessor for AppInstallation.Progress);
          v39 = a1;
          v37[v38[7]] = [v39 hasPostProcessing];
          *&v37[v38[8]] = [v39 essentialBackgroundAssetDownloadEstimate];
          v37[v38[9]] = v34 & 1;
          v40 = [v39 storeExternalVersionID];

          sub_2225DF6F8(v32, type metadata accessor for AppInstallation.Progress);
          sub_2225DF6F8(v10, type metadata accessor for AppInstallation.Phase);
          v41 = v12;
LABEL_24:
          sub_2225DF6F8(v41, type metadata accessor for AppInstallation.Phase);
          sub_2225DF6F8(v19, type metadata accessor for AppInstallation.Progress);
          *&v37[v38[10]] = v40;
          v46 = type metadata accessor for State();
LABEL_30:
          swift_storeEnumTagMultiPayload();
          return (*(*(v46 - 8) + 56))(v37, 0, 1, v46);
        }
      }

      else
      {
        v26 = v21;
        if ((v25 - 3) < 2)
        {
          v27 = [a1 installProgress];
          v28 = v17;
          if (!v27)
          {
            v27 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
          }

LABEL_23:
          v42 = v27;
          sub_22261ADD0();
          [v42 fractionCompleted];
          *&v12[*(v13 + 20)] = v43;
          *&v12[*(v13 + 24)] = v42;
          swift_storeEnumTagMultiPayload();
          sub_2225DA744(v19, v28, type metadata accessor for AppInstallation.Progress);
          type metadata accessor for AppInstallation.ASDAppStore();
          v44 = swift_allocObject();
          *(v44 + 16) = a1;
          v37 = v50;
          *v50 = v44;
          v38 = type metadata accessor for AppInstallation(0);
          sub_2225DA744(v12, &v37[v38[5]], type metadata accessor for AppInstallation.Phase);
          sub_2225DA744(v28, &v37[v38[6]], type metadata accessor for AppInstallation.Progress);
          v45 = a1;
          v37[v38[7]] = [v45 hasPostProcessing];
          *&v37[v38[8]] = [v45 essentialBackgroundAssetDownloadEstimate];
          v37[v38[9]] = v26 & 1;
          v40 = [v45 storeExternalVersionID];

          sub_2225DF6F8(v28, type metadata accessor for AppInstallation.Progress);
          v41 = v12;
          goto LABEL_24;
        }

        if (v25 == 5)
        {
          v28 = v17;
          v27 = [a1 postProcessProgress];
          if (!v27)
          {
            v27 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
          }

          goto LABEL_23;
        }
      }

      goto LABEL_31;
    }

    if (v25)
    {
      if (v25 != 1)
      {
        v26 = v21;
        if (v25 != 2)
        {
LABEL_31:
          v49 = v26 & 1;
LABEL_33:
          sub_2225DF200(a1, v49, v50);

          return sub_2225DF6F8(v19, type metadata accessor for AppInstallation.Progress);
        }

        v28 = v17;
        v27 = [a1 downloadProgress];
        if (v27)
        {
          goto LABEL_23;
        }

        v27 = [a1 progress];
        if (v27)
        {
          goto LABEL_23;
        }
      }

      sub_2225DF6F8(v19, type metadata accessor for AppInstallation.Progress);
    }

    else
    {
      v48 = [a1 installError];
      if (!v48)
      {
        v49 = v21 & 1;
        goto LABEL_33;
      }

      sub_2225DF6F8(v19, type metadata accessor for AppInstallation.Progress);
    }

    v37 = v50;
    *v50 = 0;
    v46 = type metadata accessor for State();
    goto LABEL_30;
  }

  v29 = type metadata accessor for State();
  v30 = *(*(v29 - 8) + 56);

  return v30(a3, 1, 1, v29);
}

uint64_t sub_2225DF200@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for AppInstallation.Progress(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppInstallation.Phase(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = [a1 progress];
  if (v17)
  {
    v18 = v17;
    sub_22261ADD0();
    [v18 fractionCompleted];
    *&v16[*(v6 + 20)] = v19;
    *&v16[*(v6 + 24)] = v18;
    swift_storeEnumTagMultiPayload();
    if ([v18 isIndeterminate])
    {
      sub_2225DF6F8(v16, type metadata accessor for AppInstallation.Phase);

      *a3 = 0;
    }

    else
    {
      sub_2225DA744(v16, v14, type metadata accessor for AppInstallation.Phase);
      sub_22261ADD0();
      [v18 fractionCompleted];
      *&v9[*(v6 + 20)] = v23;
      *&v9[*(v6 + 24)] = v18;
      type metadata accessor for AppInstallation.ASDAppStore();
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *a3 = v24;
      v25 = type metadata accessor for AppInstallation(0);
      sub_2225DA744(v14, &a3[v25[5]], type metadata accessor for AppInstallation.Phase);
      sub_2225DA744(v9, &a3[v25[6]], type metadata accessor for AppInstallation.Progress);
      v26 = a1;
      a3[v25[7]] = [v26 hasPostProcessing];
      *&a3[v25[8]] = [v26 essentialBackgroundAssetDownloadEstimate];
      a3[v25[9]] = a2 & 1;
      v27 = [v26 storeExternalVersionID];
      sub_2225DF6F8(v9, type metadata accessor for AppInstallation.Progress);
      sub_2225DF6F8(v14, type metadata accessor for AppInstallation.Phase);
      sub_2225DF6F8(v16, type metadata accessor for AppInstallation.Phase);
      *&a3[v25[10]] = v27;
    }

    v28 = type metadata accessor for State();
    swift_storeEnumTagMultiPayload();
    return (*(*(v28 - 8) + 56))(a3, 0, 1, v28);
  }

  else
  {
    v20 = type metadata accessor for State();
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

uint64_t sub_2225DF5AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 postProcessProgress];
  if (v6)
  {
    v7 = v6;
    [v6 fractionCompleted];
    if (v8 > 0.0)
    {
      sub_22261ADD0();
      [v7 fractionCompleted];
      v10 = v9;
      v11 = type metadata accessor for AppInstallation.Progress(0);
      *(a3 + *(v11 + 20)) = v10;
      *(a3 + *(v11 + 24)) = v7;
      goto LABEL_8;
    }
  }

  v12 = [a1 downloadProgress];
  if (v12)
  {
    v13 = v12;
    sub_22261ADD0();
    [v13 fractionCompleted];
    v15 = v14;
    v16 = type metadata accessor for AppInstallation.Progress(0);
    *(a3 + *(v16 + 20)) = v15;
    *(a3 + *(v16 + 24)) = v13;
  }

  else
  {
    sub_2225DA744(a2, a3, type metadata accessor for AppInstallation.Progress);
  }

LABEL_8:
  type metadata accessor for AppInstallation.Phase(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2225DF6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2225DF758(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6F6C6E776F646572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (a2 != 2)
  {
    v8 = 0x6F6C6E776F646572;
    v7 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22261B620();
  }

  return v11 & 1;
}

uint64_t sub_2225DF89C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C6261797562;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6E4965746F6D6572;
    v12 = 0xEF64656C6C617473;
    v13 = 0xE800000000000000;
    v14 = 0x656C62616E65706FLL;
    if (a1 != 8)
    {
      v14 = 0x6E776F6E6B6E75;
      v13 = 0xE700000000000000;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x696C6C6174736E69;
    v16 = 0xEA0000000000676ELL;
    if (a1 != 5)
    {
      v15 = 0x656C6C6174736E69;
      v16 = 0xE900000000000064;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x6573616863727570;
    v5 = 0xE900000000000064;
    v6 = 0x6C62617461647075;
    v7 = 0xE900000000000065;
    if (a1 != 3)
    {
      v6 = 0x64616F6C6E776F64;
      v7 = 0xEC000000656C6261;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x676E6974696177;
    if (!a1)
    {
      v8 = 0x656C6261797562;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xEA0000000000676ELL;
        if (v9 != 0x696C6C6174736E69)
        {
          goto LABEL_54;
        }

        goto LABEL_50;
      }

      v18 = 0x656C6C6174736E69;
LABEL_53:
      v17 = 0xE900000000000064;
      if (v9 != v18)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (a2 == 7)
    {
      v17 = 0xEF64656C6C617473;
      if (v9 != 0x6E4965746F6D6572)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (a2 == 8)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x656C62616E65706FLL)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    v17 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v17 = 0xE900000000000065;
          if (v9 != 0x6C62617461647075)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v17 = 0xEC000000656C6261;
          if (v9 != 0x64616F6C6E776F64)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_50;
      }

      v18 = 0x6573616863727570;
      goto LABEL_53;
    }

    v17 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x676E6974696177)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }
  }

  if (v9 != v2)
  {
LABEL_54:
    v19 = sub_22261B620();
    goto LABEL_55;
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_2225DFBC8()
{
  sub_22261B210();
}

uint64_t State.isLocalApplication.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225E2130(v0, v4, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1;
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 7)
  {
    v6 = 0;
LABEL_7:
    sub_2225E20D0(v4, type metadata accessor for State);
  }

  return v6;
}

uint64_t type metadata accessor for State()
{
  result = qword_280D9F530;
  if (!qword_280D9F530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t State.isBuyable.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225E2130(v0, v4, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 9)
  {
    return 1;
  }

  sub_2225E20D0(v4, type metadata accessor for State);
  return 0;
}

BOOL State.isUpdatable.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225E2130(v0, v4, type metadata accessor for State);
  v5 = swift_getEnumCaseMultiPayload() == 2;
  sub_2225E20D0(v4, type metadata accessor for State);
  return v5;
}

uint64_t State.isPendingUpdate.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for State;
  sub_2225E2130(v0, v4, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v8 = type metadata accessor for AppInstallation;
      }

      else
      {
        v7 = 0;
        v8 = type metadata accessor for State;
      }

      v5 = v8;
    }

    sub_2225E20D0(v4, v5);
  }

  return v7;
}

BOOL State.hasBeenPurchased.getter()
{
  v1 = v0;
  v2 = type metadata accessor for State();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_2225E2130(v1, &v13 - v7, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 6;
  v11 = 0;
  if (!v10)
  {
    if (EnumCaseMultiPayload || (sub_2225E2130(v8, v6, type metadata accessor for State), *v6 != 1))
    {
      v11 = 1;
    }
  }

  sub_2225E20D0(v8, type metadata accessor for State);
  return v11;
}

BOOL State.hasKnownWaitingType.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225E2130(v0, v4, type metadata accessor for State);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v4 != 0;
  }

  sub_2225E20D0(v4, type metadata accessor for State);
  return 0;
}

AppState::State::Key_optional __swiftcall State.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22261B5F0();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t State.Key.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E4965746F6D6572;
    v7 = 0x656C62616E65706FLL;
    if (v1 != 8)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x696C6C6174736E69;
    if (v1 != 5)
    {
      v8 = 0x656C6C6174736E69;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x656C6261797562;
    v3 = 0x6573616863727570;
    v4 = 0x6C62617461647075;
    if (v1 != 3)
    {
      v4 = 0x64616F6C6E776F64;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x676E6974696177;
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
}

uint64_t sub_2225E04CC()
{
  v1 = *v0;
  sub_22261B700();
  sub_2225DFBC8();
  return sub_22261B740();
}

uint64_t sub_2225E051C()
{
  v1 = *v0;
  sub_22261B700();
  sub_2225DFBC8();
  return sub_22261B740();
}

uint64_t sub_2225E056C@<X0>(uint64_t *a1@<X8>)
{
  result = State.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t State.key.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2225E2130(v2, v7, type metadata accessor for State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        *a1 = 0;
        return result;
      }

      v9 = 8;
    }

    else if (result == 7)
    {
      v9 = 6;
    }

    else if (result == 8)
    {
      v9 = 7;
    }

    else
    {
      v9 = 9;
    }
  }

  else if (result <= 1)
  {
    if (result)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (result == 2)
  {
    result = sub_2225E20D0(v7, type metadata accessor for State);
    v9 = 3;
  }

  else
  {
    if (result != 3)
    {
      *a1 = 5;
      return sub_2225E20D0(v7, type metadata accessor for AppInstallation);
    }

    result = sub_2225E20D0(v7, type metadata accessor for State);
    v9 = 4;
  }

  *a1 = v9;
  return result;
}

uint64_t State.overrideBuyParams.getter()
{
  v1 = type metadata accessor for State();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2225E2130(v0, v4, type metadata accessor for State);
  if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 2)
  {
    result = *v4;
    v6 = v4[1];
  }

  else
  {
    sub_2225E20D0(v4, type metadata accessor for State);
    return 0;
  }

  return result;
}

uint64_t sub_2225E0800@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v54 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A68, &qword_22261D510);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v6 = &v51 - v5;
  v7 = type metadata accessor for State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v56 = v8;
  v23 = *(v8 + 56);
  v64 = v7;
  v60 = v23;
  v61 = v8 + 56;
  v23(&v51 - v21, 1, 1, v7);
  v52 = a1;
  v55 = *(a1 + 16);
  if (v55)
  {
    v24 = v55;
    v25 = v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = (v56 + 48);
    v26 = &qword_27D010A38;
    v27 = qword_22261E810;
    v62 = *(v56 + 72);
    while (1)
    {
      v28 = v27;
      v29 = v26;
      sub_2225E2130(v25, v13, type metadata accessor for State);
      v30 = *(v63 + 48);
      sub_2225E21FC(v22, v6);
      sub_2225E2130(v13, &v6[v30], type metadata accessor for State);
      v31 = v64;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v26 = v29;
        if (EnumCaseMultiPayload == 3)
        {
          v27 = v28;
          if (v57)
          {
            sub_2225E22D4(v22, v26, v28);
            sub_2225E226C(v13, v22, type metadata accessor for State);
            v60(v22, 0, 1, v64);
          }

          else
          {
            sub_2225E20D0(v13, type metadata accessor for State);
          }

          sub_2225E20D0(&v6[v30], type metadata accessor for State);
          v34 = v6;
          v35 = v26;
          v36 = v28;
          goto LABEL_20;
        }

LABEL_13:
        sub_2225E20D0(v13, type metadata accessor for State);
LABEL_17:
        v27 = v28;
        v34 = v6;
        v35 = &qword_27D010A68;
        v36 = &qword_22261D510;
        goto LABEL_20;
      }

      v37 = (*v58)(v6, 1, v31);
      v38 = v31;
      v26 = v29;
      if (v37 != 1)
      {
        goto LABEL_13;
      }

      v39 = v29;
      v27 = v28;
      v40 = v28;
      v41 = v38;
      sub_2225E22D4(v22, v39, v40);
      sub_2225E226C(v13, v22, type metadata accessor for State);
      v60(v22, 0, 1, v41);
      sub_2225E20D0(&v6[v30], type metadata accessor for State);
LABEL_21:
      v25 += v62;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2225E2130(&v6[v30], v59, type metadata accessor for State);
      if ((*v58)(v6, 1, v31) == 1 || (sub_2225E21FC(v6, v20), !swift_getEnumCaseMultiPayload()))
      {
        sub_2225E22D4(v22, &qword_27D010A38, qword_22261E810);
        sub_2225E20D0(v59, type metadata accessor for AppInstallation);
        sub_2225E20D0(&v6[v30], type metadata accessor for State);
        sub_2225E22D4(v6, &qword_27D010A38, qword_22261E810);
        sub_2225E226C(v13, v22, type metadata accessor for State);
        v60(v22, 0, 1, v31);
        goto LABEL_24;
      }

      sub_2225E20D0(v13, type metadata accessor for State);
      sub_2225E20D0(v20, type metadata accessor for State);
      sub_2225E22D4(v59, &qword_27D010A70, &qword_22261D518);
      v26 = v29;
      goto LABEL_17;
    }

    v26 = v29;
    if (EnumCaseMultiPayload != 8)
    {
      goto LABEL_13;
    }

    v33 = v29;
    v27 = v28;
    sub_2225E22D4(v22, v33, v28);
    sub_2225E226C(v13, v22, type metadata accessor for State);
    v60(v22, 0, 1, v64);
    sub_2225E20D0(&v6[v30], type metadata accessor for State);
    v34 = v6;
    v35 = v26;
    v36 = v28;
LABEL_20:
    sub_2225E22D4(v34, v35, v36);
    goto LABEL_21;
  }

LABEL_24:
  v42 = v53;
  sub_2225E21FC(v22, v53);
  v43 = *(v56 + 48);
  v44 = v64;
  if (v43(v42, 1, v64) == 1)
  {
    v45 = v54;
    if (v55)
    {
      sub_2225E2130(v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v54, type metadata accessor for State);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    sub_2225E22D4(v22, &qword_27D010A38, qword_22261E810);
    v49 = v46;
    v50 = v64;
    v60(v45, v49, 1, v64);
    result = v43(v42, 1, v50);
    if (result != 1)
    {
      return sub_2225E22D4(v42, &qword_27D010A38, qword_22261E810);
    }
  }

  else
  {
    sub_2225E22D4(v22, &qword_27D010A38, qword_22261E810);
    v47 = v54;
    sub_2225E226C(v42, v54, type metadata accessor for State);
    return (v60)(v47, 0, 1, v44);
  }

  return result;
}

uint64_t sub_2225E0FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppInstallation.Phase(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for State();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for AppInstallation(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  sub_2225E2130(a1, v15, type metadata accessor for State);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_2225E226C(v15, v22, type metadata accessor for AppInstallation);
    sub_2225E2130(v2, v13, type metadata accessor for State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2225E226C(v13, v20, type metadata accessor for AppInstallation);
      sub_2225E2130(v20, a2, type metadata accessor for AppInstallation);
      v23 = *(v16 + 24);
      sub_2225E20D0(a2 + v23, type metadata accessor for AppInstallation.Progress);
      sub_2225E2130(&v20[v23], a2 + v23, type metadata accessor for AppInstallation.Progress);
      v24 = sub_22261ADE0();
      (*(*(v24 - 8) + 24))(a2 + v23, &v22[v23], v24);
      sub_2225D92AC(&v22[*(v16 + 20)], v8);
      sub_2225E20D0(v20, type metadata accessor for AppInstallation);
      sub_2225E20D0(v22, type metadata accessor for AppInstallation);
      sub_2225E2198(v8, a2 + *(v16 + 20));
      return swift_storeEnumTagMultiPayload();
    }

    sub_2225E20D0(v22, type metadata accessor for AppInstallation);
  }

  else
  {
    v13 = v15;
  }

  sub_2225E20D0(v13, type metadata accessor for State);
  return sub_2225E2130(v2, a2, type metadata accessor for State);
}

uint64_t State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInstallation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2225E2130(v2, v11, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v18 = *v11;
        v19 = v11[1];
        MEMORY[0x223DBBB40](7);
        sub_22261B210();

        return MEMORY[0x223DBBB60](v19);
      }

      v16 = 0;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v16 = 6;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = 9;
    }

    return MEMORY[0x223DBBB40](v16);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *v11;
      MEMORY[0x223DBBB40](1);
      sub_22261B210();
    }

    v22 = *v11;
    MEMORY[0x223DBBB40](2);
    v16 = v22;
    return MEMORY[0x223DBBB40](v16);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *v11;
    v21 = v11[1];
    v15 = 3;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v13 = *v11;
    v14 = v11[1];
    v15 = 4;
LABEL_15:
    MEMORY[0x223DBBB40](v15);
    sub_22261B210();
  }

  sub_2225E226C(v11, v7, type metadata accessor for AppInstallation);
  MEMORY[0x223DBBB40](5);
  AppInstallation.hash(into:)(a1);
  return sub_2225E20D0(v7, type metadata accessor for AppInstallation);
}

uint64_t State.hashValue.getter()
{
  sub_22261B700();
  State.hash(into:)(v1);
  return sub_22261B740();
}

uint64_t sub_2225E1610()
{
  sub_22261B700();
  State.hash(into:)(v1);
  return sub_22261B740();
}

uint64_t sub_2225E1654()
{
  sub_22261B700();
  State.hash(into:)(v1);
  return sub_22261B740();
}

uint64_t _s8AppState0B0O2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for AppInstallation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for State();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v53 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v53 - v27;
  v29 = &v53 + *(v26 + 56) - v27;
  sub_2225E2130(a1, &v53 - v27, type metadata accessor for State);
  sub_2225E2130(v56, v29, type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_2225E2130(v28, v10, type metadata accessor for State);
        v35 = *(v10 + 1);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v36 = *v29;
          v37 = *(v29 + 1);
          if (*v10)
          {
            v38 = 0x736567617373656DLL;
          }

          else
          {
            v38 = 7368801;
          }

          if (*v10)
          {
            v39 = 0xE800000000000000;
          }

          else
          {
            v39 = 0xE300000000000000;
          }

          if (*v29)
          {
            v40 = 0x736567617373656DLL;
          }

          else
          {
            v40 = 7368801;
          }

          if (*v29)
          {
            v41 = 0xE800000000000000;
          }

          else
          {
            v41 = 0xE300000000000000;
          }

          if (v38 == v40 && v39 == v41)
          {
          }

          else
          {
            v43 = sub_22261B620();

            if ((v43 & 1) == 0)
            {
LABEL_45:
              sub_2225E20D0(v28, type metadata accessor for State);
LABEL_61:
              v34 = 0;
              return v34 & 1;
            }
          }

          v34 = v35 == v37;
          goto LABEL_65;
        }

LABEL_60:
        sub_2225E22D4(v28, &qword_27D010A78, qword_22261D520);
        goto LABEL_61;
      }

      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_60;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_60;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_60;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 9)
    {
      goto LABEL_60;
    }

LABEL_58:
    sub_2225E20D0(v28, type metadata accessor for State);
    v34 = 1;
    return v34 & 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2225E2130(v28, v18, type metadata accessor for State);
      v45 = *v18;
      v44 = v18[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v45 != *v29 || v44 != *(v29 + 1))
        {
LABEL_44:
          v47 = sub_22261B620();

          if ((v47 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_58;
        }

        goto LABEL_57;
      }

      goto LABEL_48;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2225E2130(v28, v15, type metadata accessor for State);
      v32 = *v15;
      v31 = v15[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v32 != *v29 || v31 != *(v29 + 1))
        {
          goto LABEL_44;
        }

LABEL_57:

        goto LABEL_58;
      }

LABEL_48:

      goto LABEL_60;
    }

    v48 = v55;
    sub_2225E2130(v28, v55, type metadata accessor for State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_2225E20D0(v48, type metadata accessor for AppInstallation);
      goto LABEL_60;
    }

    v49 = v29;
    v50 = v54;
    sub_2225E226C(v49, v54, type metadata accessor for AppInstallation);
    v34 = _s8AppState0A12InstallationV2eeoiySbAC_ACtFZ_0(v48, v50);
    sub_2225E20D0(v50, type metadata accessor for AppInstallation);
    sub_2225E20D0(v48, type metadata accessor for AppInstallation);
LABEL_65:
    sub_2225E20D0(v28, type metadata accessor for State);
    return v34 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2225E2130(v28, v23, type metadata accessor for State);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = sub_2225DF758(*v23, *v29);
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  sub_2225E2130(v28, v21, type metadata accessor for State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_60;
  }

  v51 = *v21 ^ *v29;
  sub_2225E20D0(v28, type metadata accessor for State);
  v34 = v51 ^ 1;
  return v34 & 1;
}

unint64_t sub_2225E1CE4()
{
  result = qword_280D9F540;
  if (!qword_280D9F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F540);
  }

  return result;
}

unint64_t sub_2225E1D3C()
{
  result = qword_27D010A60;
  if (!qword_27D010A60)
  {
    type metadata accessor for State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010A60);
  }

  return result;
}

void sub_2225E1D94()
{
  sub_2225E1E44();
  if (v0 <= 0x3F)
  {
    sub_2225E1E74();
    if (v1 <= 0x3F)
    {
      sub_2225E1EA4();
      if (v2 <= 0x3F)
      {
        sub_2225E1ED4();
        if (v3 <= 0x3F)
        {
          sub_2225E1F1C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_2225E1E44()
{
  result = qword_280D9F548;
  if (!qword_280D9F548)
  {
    result = &type metadata for AppInstallationType;
    atomic_store(&type metadata for AppInstallationType, &qword_280D9F548);
  }

  return result;
}

ValueMetadata *sub_2225E1E74()
{
  result = qword_280D9F0E0;
  if (!qword_280D9F0E0)
  {
    result = &type metadata for AppPurchaseType;
    atomic_store(&type metadata for AppPurchaseType, &qword_280D9F0E0);
  }

  return result;
}

uint64_t sub_2225E1EA4()
{
  result = qword_280D9F028;
  if (!qword_280D9F028)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280D9F028);
  }

  return result;
}

void sub_2225E1ED4()
{
  if (!qword_280D9F160)
  {
    v0 = type metadata accessor for AppInstallation(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280D9F160);
    }
  }
}

void sub_2225E1F1C()
{
  if (!qword_280D9F0D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280D9F0D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for State.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for State.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2225E20D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2225E2130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225E2198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallation.Phase(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225E21FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225E226C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225E22D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppStateController.state(forApp:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for State();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v19 = *a1;
  v20 = v10;
  swift_storeEnumTagMultiPayload();
  if (qword_280D9F098 != -1)
  {
    swift_once();
  }

  v13 = xmmword_280D9F0A0;
  v14 = byte_280D9F0B0;
  v15 = qword_280D9F0B8;
  v16 = unk_280D9F0C0;
  v17 = qword_280D9F0C8;
  v18 = qword_280D9F0D0;
  v11 = *(a3 + 56);

  v11(&v19, v9, &v13, a2, a3);

  return sub_2225DB76C(v9);
}

uint64_t AppStateController.state(forApp:applying:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v20 = *(a2 + 3);
  v18 = a2[5];
  v17 = a2[6];
  v26 = v12;
  v27 = v13;
  swift_storeEnumTagMultiPayload();
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  v23 = v20;
  v24 = v18;
  v25 = v17;
  (*(a4 + 56))(&v26, v11, v21, a3, a4);
  return sub_2225DB76C(v11);
}

uint64_t AppStateController.prospectiveState(forApp:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v14 = *a1;
  v15 = v5;
  if (qword_280D9F098 != -1)
  {
    swift_once();
  }

  v8 = xmmword_280D9F0A0;
  v9 = byte_280D9F0B0;
  v10 = qword_280D9F0B8;
  v11 = unk_280D9F0C0;
  v12 = qword_280D9F0C8;
  v13 = qword_280D9F0D0;
  v6 = *(a3 + 64);

  v6(&v14, &v8, a2, a3);
}

uint64_t AppStateController.clearWaiting(forApp:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return (*(a3 + 120))(&v5, 0, a2) & 1;
}

uint64_t dispatch thunk of AppStateController.loadDataSources()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AppStateController.reloadAllStates(synchronizing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225E2E18;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AppStateController.reloadState(forApps:synchronizing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2AA0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2225E2AA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of AppStateController.setRemoteInstalled(forApp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 128))();
}

{
  return (*(a3 + 136))();
}

uint64_t dispatch thunk of AppStateController.refreshUpdateRegistry(forApp:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 152);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2AA0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppStateDataSource.load()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AppStateDataSource.reloadState(forAppsWith:synchronizing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2AA0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppStateDataSource.reloadAllStates(synchronizing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225E2E18;

  return v11(a1, a2, a3);
}

uint64_t sub_2225E3264()
{
  v1 = *v0;
  v5 = sub_22261B750();
  MEMORY[0x223DBB650](0x203A646928, 0xE500000000000000);
  v4 = v0[2];
  v2 = sub_22261B610();
  MEMORY[0x223DBB650](v2);

  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_2225E3320@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = *a1;
  if (*(v13 + 16) && (v14 = sub_2225F173C(a2 & 1), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for State();
    v19 = *(v18 - 8);
    sub_2225D8D00(v17 + *(v19 + 72) * v16, v12);
    (*(v19 + 56))(v12, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for State();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  sub_2225E4618(v12, v10);
  type metadata accessor for State();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) != 1)
  {
    return sub_2225DDDD0(v10, a3);
  }

  swift_storeEnumTagMultiPayload();
  return sub_2225E22D4(v10, &qword_27D010A38, qword_22261E810);
}

uint64_t sub_2225E354C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v67 = a5;
  *&v64 = *a4;
  v9 = sub_22261AF10();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v62 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v57 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v57 - v21;
  v23 = type metadata accessor for State();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v68 = MEMORY[0x28223BE20](v23);
  v69 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v27 = *a1;
  if (*(v27 + 16))
  {
    v28 = a2;
    v29 = sub_2225F173C(a2 & 1);
    if (v30)
    {
      sub_2225D8D00(*(v27 + 56) + *(v24 + 72) * v29, v22);
      v31 = *(v24 + 56);
      v32 = v22;
      v33 = 0;
    }

    else
    {
      v31 = *(v24 + 56);
      v32 = v22;
      v33 = 1;
    }

    v23 = v68;
    v31(v32, v33, 1, v68);
  }

  else
  {
    v28 = a2;
    v31 = *(v24 + 56);
    v31(v22, 1, 1, v23);
  }

  sub_2225E4618(v22, v20);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v34 = v69;
    swift_storeEnumTagMultiPayload();
    sub_2225E22D4(v20, &qword_27D010A38, qword_22261E810);
  }

  else
  {
    v34 = v69;
    sub_2225DDDD0(v20, v69);
  }

  if (_s8AppState0B0O2eeoiySbAC_ACtFZ_0(v34, a3))
  {
    result = sub_2225DB76C(v34);
    *v67 = 1;
  }

  else
  {
    v36 = a4[8];
    v37 = a4[9];
    __swift_project_boxed_opaque_existential_1(a4 + 5, v36);
    v75 = v28 & 1;
    (*(v37 + 8))(&v70, &v75, a3, v36, v37);
    if (MetatypeMetadata)
    {
      LODWORD(v61) = v28 & 1;
      sub_2225DE674(&v70, v72);
      v38 = v73;
      v39 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v40 = v69;
      if ((*(v39 + 8))(v69, a3, v38, v39))
      {
        v41 = v62;
        sub_2225E0FA4(v40, v62);
        v31(v41, 0, 1, v68);
        sub_222619128(v41, v61);
        sub_2225DB76C(v40);
        *v67 = 1;
      }

      else
      {
        v59 = a4[13];
        v62 = a4[14];
        v60 = __swift_project_boxed_opaque_existential_1(a4 + 10, v59);
        v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
        v48 = *(sub_22261AF30() - 8);
        v63 = *(v48 + 72);
        v58 = *(v48 + 80);
        v57[0] = (v58 + 32) & ~v58;
        *(swift_allocObject() + 16) = xmmword_22261D5B0;
        sub_22261AF00();
        sub_22261AEF0();
        MetatypeMetadata = v64;
        *&v70 = a4;

        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261AF00();
        sub_22261AEF0();
        v49 = a4[2];
        MetatypeMetadata = &type metadata for AdamID;
        *&v70 = v49;
        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        MetatypeMetadata = &type metadata for App.Kind;
        LOBYTE(v70) = v61;
        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        __swift_project_boxed_opaque_existential_1(v72, v73);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v70 = DynamicType;
        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261B070();

        v51 = a4[13];
        v62 = a4[14];
        v61 = __swift_project_boxed_opaque_existential_1(a4 + 10, v51);
        v52 = swift_allocObject();
        v64 = xmmword_22261C770;
        *(v52 + 16) = xmmword_22261C770;
        sub_22261AF00();
        sub_22261AEF0();
        v65 = a3;
        v53 = v68;
        MetatypeMetadata = v68;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
        sub_2225D8D00(v69, boxed_opaque_existential_0);
        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261B070();

        v55 = a4[13];
        v62 = a4[14];
        v61 = __swift_project_boxed_opaque_existential_1(a4 + 10, v55);
        *(swift_allocObject() + 16) = v64;
        sub_22261AF00();
        sub_22261AEF0();
        MetatypeMetadata = v53;
        v56 = __swift_allocate_boxed_opaque_existential_0(&v70);
        sub_2225D8D00(v65, v56);
        sub_22261AEC0();
        sub_2225E22D4(&v70, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261B070();

        sub_2225DB76C(v69);
        *v67 = 0;
      }

      return __swift_destroy_boxed_opaque_existential_1(v72);
    }

    else
    {
      sub_2225E22D4(&v70, &qword_27D010A80, qword_22261D630);
      v42 = a4[14];
      v62 = a4[13];
      v63 = v42;
      v61 = __swift_project_boxed_opaque_existential_1(a4 + 10, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
      v43 = *(sub_22261AF30() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_22261D5B0;
      sub_22261AF00();
      sub_22261AEF0();
      v73 = v64;
      v72[0] = a4;

      sub_22261AEC0();
      sub_2225E22D4(v72, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261AF00();
      sub_22261AEF0();
      v46 = a4[2];
      v73 = &type metadata for AdamID;
      v72[0] = v46;
      sub_22261AEC0();
      sub_2225E22D4(v72, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v73 = &type metadata for App.Kind;
      LOBYTE(v72[0]) = v28 & 1;
      sub_22261AEC0();
      sub_2225E22D4(v72, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v73 = v68;
      v47 = __swift_allocate_boxed_opaque_existential_0(v72);
      sub_2225D8D00(a3, v47);
      sub_22261AEC0();
      sub_2225E22D4(v72, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B070();

      result = sub_2225DB76C(v69);
      *v67 = 0;
    }
  }

  return result;
}

uint64_t sub_2225E4050@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v40 = a5;
  v37 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v38 = type metadata accessor for State();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  v22 = a2[8];
  v21 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v22);
  v23 = a3 & 1;
  v46 = a3 & 1;
  v24 = *(v21 + 8);
  v39 = a4;
  v24(&v41, &v46, a4, v22, v21);
  if (v42)
  {
    v25 = v40;
    sub_2225DE674(&v41, v43);
    v26 = *v37;
    if (*(*v37 + 16))
    {
      v27 = sub_2225F173C(v23);
      v28 = v38;
      if (v29)
      {
        sub_2225D8D00(*(v26 + 56) + *(v15 + 72) * v27, v14);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 1;
      v28 = v38;
    }

    (*(v15 + 56))(v14, v30, 1, v28);
    sub_2225E4618(v14, v12);
    if ((*(v15 + 48))(v12, 1, v28) == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_2225E22D4(v12, &qword_27D010A38, qword_22261E810);
    }

    else
    {
      sub_2225DDDD0(v12, v20);
    }

    v32 = v44;
    v33 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    if ((*(v33 + 8))(v20, v39, v32, v33))
    {
      v34 = 1;
    }

    else
    {
      v35 = v36;
      swift_storeEnumTagMultiPayload();
      v34 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v20, v35);
      sub_2225DB76C(v35);
    }

    sub_2225DB76C(v20);
    *v25 = v34 & 1;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    result = sub_2225E22D4(&v41, &qword_27D010A80, qword_22261D630);
    *v40 = 0;
  }

  return result;
}

uint64_t sub_2225E439C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v11 - v7;
  sub_2225D8D00(a3, v11 - v7);
  v9 = type metadata accessor for State();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_222619128(v8, a2 & 1);
}

uint64_t sub_2225E4488()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t type metadata accessor for AppStateMachine.StateChange()
{
  result = qword_280D9F4A8;
  if (!qword_280D9F4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2225E4570()
{
  result = type metadata accessor for State();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2225E4618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppStoreType.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

unint64_t sub_2225E4750()
{
  result = qword_27D010A88;
  if (!qword_27D010A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010A88);
  }

  return result;
}

unint64_t ArcadeEntitlementRefreshCondition.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 192)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    v8 = 0;
    sub_22261B500();
    v3 = "always refresh cache";
    v4 = 0xD00000000000003DLL;
    goto LABEL_7;
  }

  if (v2)
  {
    v8 = 0;
    sub_22261B500();
    v3 = "s unsubscribed, (may prompt: ";
    v4 = 0xD00000000000003BLL;
LABEL_7:
    MEMORY[0x223DBB650](v4, v3 | 0x8000000000000000);
    goto LABEL_8;
  }

  sub_22261B500();

  v8 = 0xD00000000000002ALL;
LABEL_8:
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DBB650](v5, v6);

  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return v8;
}

uint64_t ArcadeEntitlementRefreshCondition.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 3;
LABEL_7:
    MEMORY[0x223DBBB40](v3);
    return sub_22261B720();
  }

  if (v1 == 192)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  return MEMORY[0x223DBBB40](v5);
}

uint64_t ArcadeEntitlementRefreshCondition.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 3;
LABEL_7:
    MEMORY[0x223DBBB40](v3);
    sub_22261B720();
    return sub_22261B740();
  }

  if (v1 == 192)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  MEMORY[0x223DBBB40](v4);
  return sub_22261B740();
}

uint64_t sub_2225E4A5C()
{
  v1 = *v0;
  sub_22261B700();
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 3;
LABEL_7:
    MEMORY[0x223DBBB40](v3);
    sub_22261B720();
    return sub_22261B740();
  }

  if (v1 == 192)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  MEMORY[0x223DBBB40](v4);
  return sub_22261B740();
}

uint64_t _s8AppState33ArcadeEntitlementRefreshConditionO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 2)
    {
      if ((v3 & 0xC0) != 0x80)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v2 == 192)
    {
      if (v3 != 192)
      {
        return 0;
      }
    }

    else if (v3 != 193)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    if (v3 >= 0x40)
    {
      return 0;
    }

    return (v3 ^ v2 ^ 1) & 1;
  }

  if ((v3 & 0xC0) == 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

unint64_t sub_2225E4B7C()
{
  result = qword_27D010A90;
  if (!qword_27D010A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArcadeEntitlementRefreshCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ArcadeEntitlementRefreshCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2225E4D2C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_2225E4D58(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

uint64_t ArcadeIntroOfferState.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB40](v1);
  return sub_22261B740();
}

unint64_t sub_2225E4E20()
{
  result = qword_27D010A98;
  if (!qword_27D010A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArcadeIntroOfferState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArcadeIntroOfferState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ArcadeState.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 0xD000000000000010;
    }

    sub_22261B500();

    v5 = 0xD00000000000001ELL;
    if (v1)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x223DBB650](v3, v4);
  }

  else
  {
    if (*(v0 + 8))
    {
      return 0x6973616863727550;
    }

    v5 = 0;
    sub_22261B500();
    MEMORY[0x223DBB650](0xD00000000000001FLL, 0x800000022261F2D0);
    sub_22261B5A0();
  }

  return v5;
}

uint64_t static ArcadeState.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        if (v2)
        {
          if (v4)
          {
            sub_2225E53D4();
            sub_2225E5394(v4, 2);
            sub_2225E5394(v4, 2);
            sub_2225E5394(v2, 2);
            v7 = sub_22261B410();
            sub_2225E53B4(v4, 2);
            sub_2225E53B4(v2, 2);
            sub_2225E53B4(v4, 2);
            if (v7)
            {
              LOBYTE(v6) = 1;
              return v6 & 1;
            }

LABEL_19:
            LOBYTE(v6) = 0;
            return v6 & 1;
          }

          sub_2225E5394(0, 2);
        }

        else
        {
          if (!v4)
          {
            sub_2225E5394(0, 2);
            sub_2225E5394(0, 2);
            sub_2225E5394(0, 2);
            sub_2225E53B4(0, 2);
            sub_2225E53B4(0, 2);
            LOBYTE(v6) = 1;
            return v6 & 1;
          }

          v2 = 0;
        }

        sub_2225E5394(v4, 2);
        sub_2225E5394(v2, 2);
        sub_2225E53B4(v2, 2);
        v13 = v4;
        v14 = 2;
LABEL_18:
        sub_2225E53B4(v13, v14);
        goto LABEL_19;
      }

      v11 = v2;
    }

    else if (v5 == 3)
    {
      sub_2225E53B4(*a1, 3);
      sub_2225E53B4(v4, 3);
      LOBYTE(v6) = v4 ^ v2 ^ 1;
      return v6 & 1;
    }

    goto LABEL_17;
  }

  if (*(a1 + 8))
  {
    if (v5 == 1)
    {
      v8 = *(v2 + 24);
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      v18 = *(v2 + 2);
      v19 = v8;
      v16 = v9;
      v17 = v10;
      sub_2225E5394(v4, 1);
      sub_2225E5394(v2, 1);
      LOBYTE(v6) = static ArcadeState.== infix(_:_:)(&v18, &v16);
      sub_2225E53B4(v2, 1);
      sub_2225E53B4(v4, 1);
      return v6 & 1;
    }

    v12 = *a1;

    goto LABEL_17;
  }

  if (*(a2 + 8))
  {
LABEL_17:
    sub_2225E5394(v4, v5);
    sub_2225E53B4(v2, v3);
    v13 = v4;
    v14 = v5;
    goto LABEL_18;
  }

  sub_2225E53B4(*a1, 0);
  sub_2225E53B4(v4, 0);
  v6 = v4 == v2;
  return v6 & 1;
}

id sub_2225E5394(id result, char a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (a2 == 1)
  {
  }

  return result;
}

void sub_2225E53B4(void *a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 == 1)
  {
  }
}

unint64_t sub_2225E53D4()
{
  result = qword_280D9F270;
  if (!qword_280D9F270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F270);
  }

  return result;
}

uint64_t sub_2225E5434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2225E547C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2AA0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2225E5634()
{
  if (qword_280D9EC10 != -1)
  {
    swift_once();
  }

  return sub_2225D6718(&qword_280DA09E0, &unk_280DA0A20);
}

uint64_t ASDArcadeSubscriptionManager.__allocating_init(objectGraph:requestingBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AA0, &qword_22261D9B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = sub_22261B010();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AA8, &qword_22261D9B8);
  sub_22261AFA0();
  v30 = a1;
  sub_22261B080();
  sub_22261B080();
  v14 = sub_22261B1D0();
  sub_22261B000();

  sub_22261AFF0();
  (*(v5 + 8))(v8, v4);
  v15 = v32[0];
  v16 = v32[1];
  v17 = [objc_opt_self() sharedInstance];
  sub_2225D6718(v33, v32);
  v18 = [objc_opt_self() defaultCenter];
  v31[3] = sub_2225E5A14();
  v31[4] = &off_2835C2008;
  v31[0] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v16;
  sub_2225D6718(v31, v19 + 32);
  sub_2225D6718(v32, v19 + 72);
  v20 = v29;
  *(v19 + 112) = v28;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  *(v19 + 144) = 0;
  *(v19 + 152) = 3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB0, &unk_22261D9C0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v17;
  v25 = v18;
  *(v19 + 160) = sub_22261AEA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v19 + 136) = v26;
  [v25 addObserver:v19 selector:sel_entitlementsDidChange_ name:*MEMORY[0x277CEC318] object:0];

  __swift_destroy_boxed_opaque_existential_1(v32);
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v19;
}