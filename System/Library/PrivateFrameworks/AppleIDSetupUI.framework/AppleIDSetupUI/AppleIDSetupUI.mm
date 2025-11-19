uint64_t type metadata accessor for AppleIDSignInView()
{
  result = qword_281210238;
  if (!qword_281210238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240900B7C()
{
  sub_240900C00();
  if (v0 <= 0x3F)
  {
    sub_240900D00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240900C00()
{
  if (!qword_2812100F8[0])
  {
    type metadata accessor for AISSignInSettings();
    sub_240900CB8(qword_2812101B0, type metadata accessor for AISSignInSettings);
    v0 = sub_240A2B1FC();
    if (!v1)
    {
      atomic_store(v0, qword_2812100F8);
    }
  }
}

uint64_t sub_240900CB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_240900D00()
{
  if (!qword_2812100F0)
  {
    sub_240A2B33C();
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812100F0);
    }
  }
}

void *sub_240900D64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_240900DB4(void *a1, uint64_t *a2)
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

uint64_t sub_240900E10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_240A2BF4C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_240900E90(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_240900F0C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240900F5C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240900FC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_240901150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2409012E4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090131C()
{
  v1 = type metadata accessor for LoginCard();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = (v0 + v3 + v1[5]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928) + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v10[v13], 1, v14))
  {
    (*(v15 + 8))(&v10[v13], v14);
  }

  v16 = (v6 + v1[6]);
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930) + 32);
  v20 = sub_240A2A4DC();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v16[v19], 1, v20))
  {
    (*(v21 + 8))(&v16[v19], v20);
  }

  v22 = (v6 + v1[7]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_240A29DBC();
    (*(*(v26 - 8) + 8))(v6 + v25, v26);
  }

  else
  {
    v27 = *(v6 + v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409015D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240A2A46C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24090167C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_240A2A46C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240901720()
{
  v1 = (type metadata accessor for FamilyRepairView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v5 + 16), *(v5 + 24));
  v6 = *(v5 + 40);

  v7 = v1[9];
  v8 = sub_240A2A46C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_240901854()
{
  v1 = (type metadata accessor for FamilyRepairView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = *(v0 + v3 + 40);

  v6 = v1[9];
  v7 = sub_240A2A46C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10] + 8);

  v9 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240901984()
{
  v1 = (type metadata accessor for FamilyRepairView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v6 = *(v0 + v3 + 40);

  v7 = v1[9];
  v8 = sub_240A2A46C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[10] + 8);

  v10 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240901AC8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240901B10()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901B48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901BA4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901C40()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901C78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240901CB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240901CF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901D28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240901D88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_240901E44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240901EF8()
{
  v1 = sub_240A2C53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_240A2C55C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_240902064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090209C()
{
  v1 = sub_240A2C53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_240A2C55C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2409021F4()
{
  v1 = sub_240A2995C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240902314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2409023C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240902478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_240902668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_240902858(uint64_t a1, void (*a2)(id, uint64_t))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  a2(Strong, a1);
}

uint64_t sub_240902A10()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240902A4C()
{
  v1 = type metadata accessor for DiscoveryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940) + 32);
  v10 = sub_240A2A10C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v0 + v3 + v1[5];
  v12 = *(v11 + 8);

  v13 = *(v11 + 16);

  v14 = (v0 + v3 + v1[8]);
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v18 = sub_240A2976C();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v14[v17], 6, v18))
  {
    (*(v19 + 8))(&v14[v17], v18);
  }

  v20 = v6 + v1[9];
  v21 = sub_240A2975C();
  (*(*(v21 - 8) + 8))(v20, v21);
  v22 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v23 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_240A29DBC();
    (*(*(v24 - 8) + 8))(v6 + v23, v24);
  }

  else
  {
    v25 = *(v6 + v23);
  }

  v26 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_240A29DBC();
    (*(*(v27 - 8) + 8))(v6 + v26, v27);
  }

  else
  {
    v28 = *(v6 + v26);
  }

  sub_24090C1E4(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_24090C1E4(*(v6 + v1[13]), *(v6 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240902D88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240902DC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_240902DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240902F28()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240902F60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_240902FA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_240903010()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_240A29B9C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240903130()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_240A29B9C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240903240(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2409033DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_240903590@<X0>(void *a1@<X8>)
{
  result = sub_240A2B45C();
  *a1 = v3;
  return result;
}

uint64_t sub_2409035F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240903638()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903670()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2409036B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409036E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_2409037C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRunning];
  *a2 = result;
  return result;
}

uint64_t sub_240903818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24094787C();
  *a2 = result;
  return result;
}

id sub_240903848@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoRotationAngleForHorizonLevelPreview];
  *a2 = v4;
  return result;
}

uint64_t sub_24090387C()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2409038E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_24090394C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2409039B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_240903A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903A58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903A90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240903AC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903B00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903B78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903BB0()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903BE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240903C64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240903CB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_240903D80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_240903DDC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240903E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_240903F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2409040B8()
{
  v1 = type metadata accessor for AgeMigrationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B2AC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_240904248()
{
  v1 = (type metadata accessor for AgeMigrationViewModel.ServerUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_240A2946C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v0 + v3 + v1[8] + 8);

  v8 = *(v0 + v3 + v1[9] + 8);

  v9 = v1[10];
  v10 = sub_240A2986C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[11];
  v12 = sub_240A298BC();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240904408()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240904440()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240904480()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2409044E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240904524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24090459C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24090461C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090465C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2409046AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24090470C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2409047B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2409047F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_240904850()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240904888()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409048C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240904968()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409049A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240904B5C@<X0>(_BYTE *a1@<X8>)
{
  sub_2409988A4();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_240904BAC(char *a1)
{
  v2 = *a1;
  sub_2409988A4();
  return sub_240A2B54C();
}

uint64_t sub_240904BFC@<X0>(void *a1@<X8>)
{
  sub_2409987A8();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_240904DB4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_240904F98(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2409051C4()
{
  v1 = type metadata accessor for SetupView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v6 = *(v5 + 80);
  v42 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 56);

  v12 = v0 + v3 + v1[9];
  v13 = sub_240A2981C();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080) + 28));

  v15 = v0 + v3 + v1[10];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930) + 28));

  v19 = (v7 + v1[11]);
  if (*v19)
  {
    v20 = v19[1];
  }

  v21 = v19[2];

  v22 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_240A2B2AC();
    (*(*(v23 - 8) + 8))(v7 + v22, v23);
  }

  else
  {
    v24 = *(v7 + v22);
  }

  v25 = v3 + v4 + v6;
  v26 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_240A29DBC();
    (*(*(v27 - 8) + 8))(v7 + v26, v27);
  }

  else
  {
    v28 = *(v7 + v26);
  }

  v29 = v25 & ~v6;
  v30 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_240A29DBC();
    (*(*(v31 - 8) + 8))(v7 + v30, v31);
  }

  else
  {
    v32 = *(v7 + v30);
  }

  sub_24090C1E4(*(v7 + v1[15]), *(v7 + v1[15] + 8));
  sub_24090C1E4(*(v7 + v1[16]), *(v7 + v1[16] + 8));
  sub_24090C1E4(*(v7 + v1[17]), *(v7 + v1[17] + 8));

  v33 = (v7 + v1[20]);
  v34 = *v33;

  v35 = v33[1];

  v36 = (v7 + v1[21]);
  v37 = *v36;

  v38 = v36[1];

  v39 = *(v7 + v1[22] + 8);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v40 = sub_240A29ACC();
    (*(*(v40 - 8) + 8))(v0 + v29, v40);
  }

  return MEMORY[0x2821FE8E8](v0, v29 + v42, v2 | v6 | 7);
}

uint64_t sub_240905670()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409056B0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409056E8()
{
  v1 = type metadata accessor for SetupView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v39 = *(*(v1 - 1) + 64);
  v41 = sub_240A2A21C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 80);
  v40 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 56);

  v11 = v0 + v3 + v1[9];
  v12 = sub_240A2981C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080) + 28));

  v14 = v0 + v3 + v1[10];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930) + 28));

  v18 = (v6 + v1[11]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = v18[2];

  v21 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_240A2B2AC();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_240A29DBC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_240A29DBC();
    (*(*(v28 - 8) + 8))(v6 + v27, v28);
  }

  else
  {
    v29 = *(v6 + v27);
  }

  v30 = (v3 + v39 + v5) & ~v5;
  sub_24090C1E4(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  sub_24090C1E4(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  sub_24090C1E4(*(v6 + v1[17]), *(v6 + v1[17] + 8));

  v31 = (v6 + v1[20]);
  v32 = *v31;

  v33 = v31[1];

  v34 = (v6 + v1[21]);
  v35 = *v34;

  v36 = v34[1];

  v37 = *(v6 + v1[22] + 8);

  (*(v4 + 8))(v0 + v30, v41);

  return MEMORY[0x2821FE8E8](v0, v30 + v40, v2 | v5 | 7);
}

uint64_t sub_240905BCC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_240905C88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240905D38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240905D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240905E04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[11];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[14]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_240905F24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[14]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_240906040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D708, &unk_240A34FC0);
  sub_240A2A8FC();
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2409060F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090612C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2409061E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2A65C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2409062A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2A54C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2409062D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_240A2A55C();
}

uint64_t sub_2409063D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2A51C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24090642C()
{
  v1 = (type metadata accessor for AuthenticationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = (v5 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v10 = sub_240A2A9AC();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = *(v5 + v1[8] + 8);

  v12 = v5 + v1[9];

  v13 = *(v12 + 8);

  v14 = v5 + v1[10];

  v15 = *(v14 + 8);

  v16 = v5 + v1[11];

  v17 = *(v16 + 8);

  v18 = *(v5 + v1[12] + 8);

  v19 = v5 + v1[13];
  v20 = sub_240A2975C();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  sub_24091C37C(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  v22 = *(v5 + v1[16]);

  v23 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24090665C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906694()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409066D0()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240906708()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906840(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_240A2946C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_240A2986C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_240A298BC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2409069B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_240A2946C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_240A2986C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_240A298BC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_240906B70()
{
  v1 = sub_240A2946C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_240906C6C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2409AEC1C(v2);
}

uint64_t sub_240906CE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906D28()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_240906D64(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2409AE678(v2);
}

uint64_t sub_240906DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_240906F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_240907098()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409070D0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240907108()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240907148()
{
  v1 = type metadata accessor for DiscoveredView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910) + 32);
  v10 = sub_240A29E6C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[5] + 8);

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_240A29DBC();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
    v14 = *(v6 + v12);
  }

  v15 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_240A29DBC();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
    v17 = *(v6 + v15);
  }

  sub_24090C1E4(*(v6 + v1[9]), *(v6 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907394()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409073F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240907430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_240907500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24090756C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2409075BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409075F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_240A29ACC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C4A10(qword_27E50DED0, MEMORY[0x277CED648]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2409077E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C4A10(&qword_27E50DEC8, type metadata accessor for AKUserAgeRange);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24090787C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  sub_240A2B38C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_240A2B6DC();
  sub_240A2B38C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24090797C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_240907B20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_240907CBC()
{
  v1 = type metadata accessor for SignInView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v8 = sub_240A29B5C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v0 + v3 + v1[5];

  v10 = *(v9 + 8);

  v11 = v0 + v3 + v1[7];
  v12 = sub_240A2975C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v14 = *(v0 + v3 + v1[8] + 8);

  v15 = (v0 + v3 + v1[9]);
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v19 = sub_240A2976C();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v15[v18], 6, v19))
  {
    (*(v20 + 8))(&v15[v18], v19);
  }

  sub_24090C1E4(*(v0 + v3 + v1[10]), *(v0 + v3 + v1[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907F20()
{
  v1 = sub_240A2A18C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SignInView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v26 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v8);

  v10 = *(v0 + v8 + 8);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v12 = sub_240A29B5C();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = v0 + v8 + v6[5];

  v14 = *(v13 + 8);

  v15 = v0 + v8 + v6[7];
  v16 = sub_240A2975C();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v18 = *(v0 + v8 + v6[8] + 8);

  v19 = (v0 + v8 + v6[9]);
  v20 = *v19;

  v21 = *(v19 + 1);

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v23 = sub_240A2976C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v19[v22], 6, v23))
  {
    (*(v24 + 8))(&v19[v22], v23);
  }

  sub_24090C1E4(*(v0 + v8 + v6[10]), *(v0 + v8 + v6[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + v26, v3 | v7 | 7);
}

uint64_t sub_240908208()
{
  v1 = type metadata accessor for SignInView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v9 = sub_240A29B5C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v0 + v3 + v1[5];

  v11 = *(v10 + 8);

  v12 = v0 + v3 + v1[7];
  v13 = sub_240A2975C();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v15 = *(v0 + v3 + v1[8] + 8);

  v16 = (v0 + v3 + v1[9]);
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v20 = sub_240A2976C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v16[v19], 6, v20))
  {
    (*(v21 + 8))(&v16[v19], v20);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_24090C1E4(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v24 = *(v0 + v22 + 8);

  v25 = *(v0 + v23 + 8);

  return MEMORY[0x2821FE8E8](v0, v23 + 16, v2 | 7);
}

uint64_t sub_24090848C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2409085C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240908714()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090874C()
{
  v1 = type metadata accessor for SignInOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = (v0 + v3 + v1[6]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v11 = sub_240A2B33C();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_240A2B2AC();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v16 = *(v0 + v15);

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v2 | 7);
}

uint64_t sub_240908908()
{
  v1 = type metadata accessor for SignInOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = (v0 + v3 + v1[6]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v12 = sub_240A2B33C();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_240A2B2AC();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240908AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E320, &qword_240A366C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240908B90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_240908CCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240908E08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E3A0, &qword_240A36830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E398, &qword_240A36828);
  sub_240A29A9C();
  sub_2409DA9E0();
  sub_2409DB744(&qword_27E50E3D0, MEMORY[0x277CED4A0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_240908EF8()
{
  v1 = type metadata accessor for RepairView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 40);

  v12 = *(v0 + v3 + 48);

  v13 = v0 + v3 + v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840) + 28));

  v17 = (v7 + v1[9]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = (v4 + v6) & ~v6;
  v20 = v17[2];

  v21 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_240A2B2AC();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
  }

  else
  {
    v23 = *(v7 + v21);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v24 = sub_240A29B9C();
    (*(*(v24 - 8) + 8))(v0 + v19, v24);
  }

  return MEMORY[0x2821FE8E8](v0, v19 + v26, v2 | v6 | 7);
}

uint64_t sub_2409091E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090924C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409092E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240909328()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240909378()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409093B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_2409095F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_240909894()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409098CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_240909938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2409099A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_240A29ACC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240909AC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_240A29ACC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240909BF4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_240909CAC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7F0, qword_240A375F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_240909DE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7F0, qword_240A375F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240909F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E830, &qword_240A37680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24090A004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B4DC();
  *a1 = result;
  return result;
}

uint64_t sub_24090A030(uint64_t *a1)
{
  v1 = *a1;

  return sub_240A2B4EC();
}

uint64_t sub_24090A05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B47C();
  *a1 = result;
  return result;
}

uint64_t sub_24090A088(uint64_t *a1)
{
  v1 = *a1;

  return sub_240A2B48C();
}

uint64_t sub_24090A0BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E830, &qword_240A37680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
  sub_2409EB570();
  sub_2409EB7DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24090A1B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090A1F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090A244@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24090A2A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

id sub_24090A2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2409EC9B0();
  *a2 = result;
  return result;
}

void sub_24090A328(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController);
  *(*a2 + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = *a1;
  v3 = v2;
}

uint64_t sub_24090A378()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A3B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24090A520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24090A658()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A6B8()
{
  v1 = (type metadata accessor for PairingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v9 = sub_240A29EFC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24090A840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090A878()
{
  v1 = (type metadata accessor for PairingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v9 = sub_240A29EFC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24090AA1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2B4BC();
  *a1 = result;
  return result;
}

uint64_t sub_24090AABC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AAFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AB3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AB74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24090ABC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24090AC20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24090AC90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24090ACE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24090AD3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24090AD98()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090ADE8()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AE20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AE64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AE9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090AED4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24090AF2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_24090AF80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24090AFEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24090B03C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B074()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_240A29B9C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24090B194()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B1E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B230()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090B274()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B348()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090B380()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B3D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B434()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B46C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B4AC()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B50C()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B544()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_24090B7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24090BA44()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BA7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24090BB10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090BB50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_240A295AC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_24090BCA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BCE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BD20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BD58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24090BDAC()
{
  MEMORY[0x245CCDEB0](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090BDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2A18C();
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

uint64_t sub_24090BEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_240A2A18C();
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

uint64_t sub_24090BF6C()
{
  v1 = sub_240A2A18C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TermsView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = v0 + v8;
  v10(v0 + v8, v1);
  v12 = (v0 + v8 + v6[5]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v13 = v11 + v6[7];
  v14 = *(v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24090C0EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24090C1A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24090C1E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24090C218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24090C23C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_24090DB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyMi.isa);

    objc_end_catch();
    JUMPOUT(0x24090DB34);
  }

  _Unwind_Resume(exception_object);
}

void sub_24090E770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24090F9F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24090FA14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_24090FAD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24090FAFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24090FBC0(uint64_t a1, id *a2)
{
  result = sub_240A2BF2C();
  *a2 = 0;
  return result;
}

uint64_t sub_24090FC38(uint64_t a1, id *a2)
{
  v3 = sub_240A2BF3C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24090FCB8@<X0>(uint64_t *a1@<X8>)
{
  sub_240A2BF4C();
  v2 = sub_240A2BF1C();

  *a1 = v2;
  return result;
}

uint64_t sub_24090FD0C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24090FD78(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24090FDE4(void *a1, uint64_t a2)
{
  v4 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24090FE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24090FF14()
{
  v2 = *v0;
  sub_240A2C72C();
  sub_240A2BEFC();
  return sub_240A2C74C();
}

uint64_t sub_24090FF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240911120(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24090FFB4(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B248, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v3 = sub_240910334(&qword_27E50B250, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910070(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B258, type metadata accessor for TextStyle);
  v3 = sub_240910334(&qword_27E50B260, type metadata accessor for TextStyle);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24091012C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B2E0, type metadata accessor for UITextContentType);
  v3 = sub_240910334(&qword_27E50B2E8, type metadata accessor for UITextContentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2409101E8(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50BAF0, type metadata accessor for AIDAServiceType);
  v3 = sub_240910334(&qword_27E50B110, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409103C4(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B340, type metadata accessor for ObjectType);
  v3 = sub_240910334(&qword_27E50B348, type metadata accessor for ObjectType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910480(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B208, type metadata accessor for FAError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2409104EC(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B208, type metadata accessor for FAError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24091055C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2409105C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24091064C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B310, type metadata accessor for CIContextOption);
  v3 = sub_240910334(&qword_27E50B318, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910708(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B2D0, type metadata accessor for AATermsEntry);
  v3 = sub_240910334(&qword_27E50B2D8, type metadata accessor for AATermsEntry);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2409107C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_240A2BF1C();

  *a2 = v5;
  return result;
}

uint64_t sub_24091080C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50CEB0, type metadata accessor for Key);
  v3 = sub_240910334(&unk_27E50B100, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910BC8()
{
  v1 = *v0;
  v2 = sub_240A2BF4C();
  v3 = MEMORY[0x245CCCDD0](v2);

  return v3;
}

uint64_t sub_240910C04()
{
  v1 = *v0;
  sub_240A2BF4C();
  sub_240A2C09C();
}

uint64_t sub_240910C58()
{
  v1 = *v0;
  sub_240A2BF4C();
  sub_240A2C72C();
  sub_240A2C09C();
  v2 = sub_240A2C74C();

  return v2;
}

unint64_t sub_240910FFC()
{
  result = qword_27E50B230;
  if (!qword_27E50B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B230);
  }

  return result;
}

uint64_t sub_240911098(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_240A2BF4C();
  v6 = v5;
  if (v4 == sub_240A2BF4C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_240A2C66C();
  }

  return v9 & 1;
}

uint64_t sub_240911120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_240911480(uint64_t a1, unint64_t *a2)
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

uint64_t AISFlowStepChildSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_240911688()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_2409116F4()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepChildSignIn.privacyLinkIdentifiers.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
  v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t AISFlowStepChildSignIn.hideCreationAndForgotPasswordButton.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISFlowStepChildSignIn.hideCreationAndForgotPasswordButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_240911894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15[-v11];
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember) = a1;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_guardianAuthResponse) = a2;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v15[15] = 0;
  sub_240A2B0DC();
  (*(v8 + 32))(v3 + v13, v12, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

void AISFlowStepChildSignIn.configure(context:)(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2974C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setServiceType_];
  [a1 setAuthenticationType_];
  [a1 setAppProvidedContext_];
  v16 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);
  if (v16)
  {
    v17 = v16;
    v18 = [v17 appleID];
    [a1 setUsername_];

    v19 = [v17 contact];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 givenName];

      sub_240A2BF4C();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v30 = [v17 lastName];
    if (v30)
    {
      v31 = v30;
      sub_240A2BF4C();
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
    v35 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    v36 = *(v34 + v35);
    if (v23)
    {
      v37 = sub_240A2BF1C();

      if (v33)
      {
LABEL_15:
        v38 = sub_240A2BF1C();

        goto LABEL_18;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_15;
      }
    }

    v38 = 0;
LABEL_18:
    v39 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:v37 lastName:v38 ageRange:v36];

    [a1 setProtoAccountContext_];
    v40 = [v17 firstName];
    if (v40)
    {
      v41 = v40;
      v42 = sub_240A2BF4C();
      v44 = v43;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v45 = swift_allocObject();
      v52 = xmmword_240A305D0;
      *(v45 + 16) = xmmword_240A305D0;
      *(v45 + 56) = MEMORY[0x277D837D0];
      v46 = sub_240913AEC();
      *(v45 + 64) = v46;
      *(v45 + 32) = v42;
      *(v45 + 40) = v44;

      sub_240A2BF6C();

      v47 = sub_240A2BF1C();

      [a1 setTitle_];

      sub_240A2C06C();
      v48 = swift_allocObject();
      *(v48 + 16) = v52;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = v46;
      *(v48 + 32) = v42;
      *(v48 + 40) = v44;
      sub_240A2BF6C();

      v49 = sub_240A2BF1C();

      [a1 setReason_];
    }

    else if ([v17 memberType] == 2 || objc_msgSend(v17, sel_memberType) == 1)
    {
      sub_240A2C06C();
      v50 = sub_240A2BF1C();

      [a1 setTitle_];

      sub_240A2C06C();
      v51 = sub_240A2BF1C();

      [a1 setReason_];
    }

LABEL_23:

    return;
  }

  (*(v11 + 104))(v15, *MEMORY[0x277CED208], v10);
  v24 = sub_240A2973C();
  (*(v11 + 8))(v15, v10);
  if (v24)
  {
    v25 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
    v26 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v25 + v26) == 2)
    {
      sub_240A2AE9C();
      v27 = sub_240A2AFFC();
      v28 = sub_240A2C29C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2408FE000, v27, v28, "Adding proto account context to ensure shield is bypassed for teen account sign in", v29, 2u);
        MEMORY[0x245CCDDB0](v29, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      v17 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
      [a1 setProtoAccountContext_];
      goto LABEL_23;
    }
  }
}

uint64_t AISFlowStepChildSignIn.continue(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_2409121DC, v4, v3);
}

uint64_t sub_2409121DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409122A4;
  v6 = v0[3];

  return sub_240912428();
}

uint64_t sub_2409122A4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2409123C4, v4, v3);
}

uint64_t sub_2409123C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240912428()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_2409124C0, v3, v2);
}

uint64_t sub_2409124C0()
{
  v1 = v0[21];
  sub_2409F4D54();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v4 = (*(v2 + 8))(ObjectType, v2), v0[25] = v4, swift_unknownObjectRelease(), v4))
  {
    v0[2] = v0;
    v0[3] = sub_240912670;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_17;
    v0[14] = v5;
    [v4 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[22];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_240912670()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240912778, v2, v1);
}

uint64_t sub_240912778()
{
  v1 = v0[25];
  v2 = v0[22];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2409127E4()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_24091287C, v3, v2);
}

uint64_t sub_24091287C()
{
  v1 = v0[21];
  sub_2409F4D78();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v4 = (*(v2 + 8))(ObjectType, v2), v0[25] = v4, swift_unknownObjectRelease(), v4))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_10;
    v0[14] = v5;
    [v4 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[22];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_240912A2C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240913F20, v2, v1);
}

uint64_t sub_240912B34()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_240912BCC, v3, v2);
}

uint64_t sub_240912BCC()
{
  v1 = v0[21];
  sub_2409F4D90();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v4 = (*(v2 + 8))(ObjectType, v2), v0[25] = v4, swift_unknownObjectRelease(), v4))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_14;
    v0[14] = v5;
    [v4 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[22];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_240912D7C()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_240912E14, v3, v2);
}

uint64_t sub_240912E14()
{
  v1 = v0[21];
  sub_2409F4D9C();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v4 = (*(v2 + 8))(ObjectType, v2), v0[25] = v4, swift_unknownObjectRelease(), v4))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor;
    v0[14] = v5;
    [v4 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[22];

    v7 = v0[1];

    return v7();
  }
}

uint64_t AISFlowStepChildSignIn.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAF0];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDA90];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t AISFlowStepChildSignIn.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v28 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  if (v12)
  {
    v13 = v12;
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "AISFlowStepChildSignIn: Silent auth is successful. Starting AIDA sign-in step.", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    v17 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_guardianAuthResponse);
    v18 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings);
    v19 = type metadata accessor for AISFlowStepAIDASignIn();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v17;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v13;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v18;
    *(v22 + 24) = 0;
    swift_unknownObjectWeakInit();
    v29 = 0;
    v23 = v17;

    sub_240A2B0DC();
    result = v22;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  }

  else
  {
    sub_240A2AE9C();
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C2AC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "AISFlowStepChildSignIn: Interactive auth failed.", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_240913B40();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_240913414()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings);
}

uint64_t AISFlowStepChildSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings);

  return v0;
}

uint64_t AISFlowStepChildSignIn.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_24091366C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240913704, v4, v3);
}

uint64_t sub_240913704()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409137CC;
  v6 = v0[3];

  return sub_240912428();
}

uint64_t sub_2409137CC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240913F24, v4, v3);
}

uint64_t sub_2409138EC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
  v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_240913948()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2409139A4(void *a1)
{
  v3 = *v1;

  v4 = a1;
  sub_240978C58(v3, v4);

  sub_240913EB4();
  return sub_240A2BCDC();
}

uint64_t sub_240913A24(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_240913A58(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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

unint64_t sub_240913AEC()
{
  result = qword_27E50B3B8;
  if (!qword_27E50B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3B8);
  }

  return result;
}

unint64_t sub_240913B40()
{
  result = qword_27E50B3C8;
  if (!qword_27E50B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3C8);
  }

  return result;
}

unint64_t sub_240913B98()
{
  result = qword_27E50B3D8;
  if (!qword_27E50B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AISFlowStepChildSignInError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AISFlowStepChildSignInError(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for AISFlowStepChildSignIn()
{
  result = qword_27E50B3E0;
  if (!qword_27E50B3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240913DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_240913EB4()
{
  result = qword_27E50B3F8;
  if (!qword_27E50B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3F8);
  }

  return result;
}

void sub_240913F28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v30 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_240915A6C(Strong);
    v10 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_signInSettings);
    v11 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (v11)
    {
      v12 = v11;
      v30 = v10;
      v31 = v1;
      v32 = v9;
      v13 = [objc_opt_self() defaultStore];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

        v16 = type metadata accessor for SignInOptionAuthenticationController();
        v17 = objc_allocWithZone(v16);
        *&v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
        *&v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
        v18 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
        *&v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
        v19 = &v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
        *v19 = 0;
        v19[1] = 0;
        v20 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
        v34 = 0;
        sub_240A2B0DC();
        (*(v2 + 32))(&v17[v20], v6, v31);
        v21 = *&v17[v18];
        *&v17[v18] = v12;
        v22 = v12;

        *&v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v30;
        *&v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v15;
        v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
        v23 = *v19;
        v24 = v19[1];
        *v19 = 0;
        v19[1] = 0;

        v25 = v15;
        sub_24090C1A0(v23);
        v17[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 1;
        v33.receiver = v17;
        v33.super_class = v16;
        v26 = objc_msgSendSuper2(&v33, sel_init);

        v27 = *&v26[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController];
        *&v26[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = v8;
        v28 = v8;

        v29 = v32;
        sub_240976A18(v32);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_240914230()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24091447C(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2409147E0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_240A2B00C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409148A0, 0, 0);
}

uint64_t sub_2409148A0()
{
  super_class = v0[2].super_class;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4].super_class = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[2].super_class;
    v5 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaOwnersManager);
    v6 = type metadata accessor for AIDASignInViewController();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR___AISAIDASignInViewController_cdpUIController] = 0;
    *&v7[OBJC_IVAR___AISAIDASignInViewController_navController] = v3;
    *&v7[OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager] = v5;
    v7[OBJC_IVAR___AISAIDASignInViewController_isTeenFlow] = 0;
    v0[1].receiver = v7;
    v0[1].super_class = v6;
    v8 = v3;
    v9 = v5;
    v10 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[5].receiver = v10;
    v11 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController);
    *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController) = v10;
    v10;

    v12 = swift_task_alloc();
    v0[5].super_class = v12;
    *v12 = v0;
    *(v12 + 1) = sub_240914AE8;
    receiver = v0[2].receiver;

    return sub_240A1F058(receiver);
  }

  else
  {
    v15 = v0[4].receiver;
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[3].super_class;
    v19 = v0[4].receiver;
    v21 = v0[3].receiver;
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Missing navController.", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    (*(v20 + 1))(v19, v21);
    v23 = v0[4].receiver;

    v24 = v0->super_class;

    return v24(0);
  }
}

uint64_t sub_240914AE8(char a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_240914BE8, 0, 0);
}

uint64_t sub_240914BE8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_240914DE4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v5 = sub_240A2BEBC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_240914ED8;

  return sub_2409147E0(v5);
}

uint64_t sub_240914ED8(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v5[2](v5, a1 & 1);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24091503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_240A2B00C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240915118, 0, 0);
}

uint64_t sub_240915118()
{
  v1 = v0[5];
  if (!v1 || (v0[4] = v1, v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820), !swift_dynamicCast()))
  {
    v19 = v0[10];
    v20 = v0[7];
    sub_240A2AE9C();
    v21 = v20;
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C28C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[7];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = v24;
      v27 = v21;
      _os_log_impl(&dword_2408FE000, v22, v23, "Shield setup did finish with result: %@.", v25, 0xCu);
      sub_240915C68(v26);
      MEMORY[0x245CCDDB0](v26, -1, -1);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[8];

    (*(v29 + 8))(v28, v30);
    sub_240A2C21C();
    v0[16] = sub_240A2C20C();
    v15 = sub_240A2C1BC();
    v17 = v31;
    v18 = sub_24091568C;
    goto LABEL_10;
  }

  v3 = v0[2];
  v4 = v0[3];
  v0[13] = v3;
  v0[14] = v4;
  if (v4)
  {
    v5 = v0[11];
    sub_240A2AE9C();
    sub_240915CD0(v3, v4);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    sub_240915CE4(v3, v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_240915CF8();
      swift_allocError();
      *v10 = v3;
      v10[1] = v4;
      sub_240915CD0(v3, v4);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2408FE000, v6, v7, "Shield setup did finish with error: %@.", v8, 0xCu);
      sub_240915C68(v9);
      MEMORY[0x245CCDDB0](v9, -1, -1);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];

    (*(v14 + 8))(v12, v13);
    sub_240A2C21C();
    v0[15] = sub_240A2C20C();
    v15 = sub_240A2C1BC();
    v17 = v16;
    v18 = sub_240915564;
LABEL_10:

    return MEMORY[0x2822009F8](v18, v15, v17);
  }

  v32 = v0[12];
  sub_240A2AE9C();
  v33 = sub_240A2AFFC();
  v34 = sub_240A2C28C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2408FE000, v33, v34, "Starting adult/teen creation flow.", v35, 2u);
    MEMORY[0x245CCDDB0](v35, -1, -1);
  }

  v36 = v0[12];
  v37 = v0[8];
  v38 = v0[9];
  v39 = v0[6];

  (*(v38 + 8))(v36, v37);
  sub_240913F28();
  sub_240915CE4(v3, 0);
  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[10];

  v43 = v0[1];

  return v43();
}

uint64_t sub_240915564()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];

    v5 = sub_240915610;
  }

  else
  {
    v5 = sub_24091635C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240915610()
{
  sub_240915CE4(v0[13], v0[14]);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24091568C()
{
  v1 = v0[16];
  v2 = v0[6];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

id sub_240915984(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController] = 0;
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_signInSettings] = a1;
  v4 = objc_opt_self();

  result = [v4 defaultStore];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaOwnersManager] = v7;
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_240915A6C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v2 setAuthenticationType_];
  [v2 setNeedsNewAppleID_];
  [v2 setFirstTimeLogin_];
  [v2 setServiceType_];
  [v2 setShouldUpdatePersistentServiceTokens_];
  [v2 setSupportsPiggybacking_];
  [v2 setNeedsCredentialRecovery_];
  [v2 setPresentingViewController_];
  [v2 setForceInlinePresentation_];
  v3 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithAgeRange_];
  [v2 setProtoAccountContext_];

  return v2;
}

uint64_t sub_240915BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_24091503C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240915C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B730, &qword_240A30CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240915CD0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_240915CE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_240915CF8()
{
  result = qword_27E50EEF0;
  if (!qword_27E50EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EEF0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240915D9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240914DE4(v2, v3, v4);
}

uint64_t sub_240915E50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240915F44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240916360;

  return sub_240A0AED4(v2, v3, v5);
}

uint64_t sub_240916004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_240A0AFBC(a1, v4, v5, v7);
}

uint64_t sub_2409160D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_240916368(v2);
}

uint64_t objectdestroy_23Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409161BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_240916364(v2);
}

uint64_t sub_240916268()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_24091447C(v2, v3);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24091636C(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v63 - v18);
  v20 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField;
  p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
  v22 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  v23 = (&OBJC_PROTOCOL___FAURLProvider + 24);
  if (a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] == 1)
  {
    v24 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
    if (v24)
    {
      v25 = [v24 text];
      if (v25)
      {
        v26 = v25;
        v64 = sub_240A2BF4C();
        v28 = v27;

        v23 = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
        v29 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
        if (v29 && (v63 = v28, (v30 = [v29 text]) != 0))
        {
          v31 = v30;
          v32 = sub_240A2BF4C();
          v34 = v33;

          v66 = v32;
          v67 = v34;
          sub_240A29CEC();
          v35 = v65;
          v36 = *(v65 + 32);
          v36(v10, v7, v2);
          v37 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v37 = v64 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {
            v38 = v36;
            sub_240A29CFC();
            v40 = v66;
            v39 = v67;

            v41 = HIBYTE(v39) & 0xF;
            if ((v39 & 0x2000000000000000) == 0)
            {
              v41 = v40 & 0xFFFFFFFFFFFFLL;
            }

            if (v41)
            {
              v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A8, &unk_240A30A60) + 48);
              v43 = v63;
              *v19 = v64;
              v19[1] = v43;
              v38(v19 + v42, v10, v2);
              v44 = *MEMORY[0x277CEDB30];
              v45 = sub_240A2A4DC();
              v46 = *(v45 - 8);
              (*(v46 + 104))(v19, v44, v45);
              (*(v46 + 56))(v19, 0, 1, v45);
              v23 = (&OBJC_PROTOCOL___FAURLProvider + 24);
              p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
              goto LABEL_28;
            }

            (*(v65 + 8))(v10, v2);
          }

          else
          {
            (*(v35 + 8))(v10, v2);
          }

          v23 = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
        }

        else
        {
        }
      }
    }

    p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
    if (a1[v20])
    {
      goto LABEL_27;
    }

    v22 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  }

  v47 = *&a1[v22];
  if (v47)
  {
    v48 = [v47 text];
    if (v48)
    {
      v49 = v48;
      v50 = sub_240A2BF4C();
      v52 = v51;

      v53 = HIBYTE(v52) & 0xF;
      if ((v52 & 0x2000000000000000) == 0)
      {
        v53 = v50 & 0xFFFFFFFFFFFFLL;
      }

      if (v53)
      {
        *v19 = v50;
        v19[1] = v52;
        v54 = *MEMORY[0x277CEDB28];
        v55 = sub_240A2A4DC();
        v56 = *(v55 - 8);
        (*(v56 + 104))(v19, v54, v55);
        (*(v56 + 56))(v19, 0, 1, v55);
        goto LABEL_28;
      }
    }
  }

LABEL_27:
  v57 = sub_240A2A4DC();
  (*(*(v57 - 8) + 56))(v19, 1, 1, v57);
LABEL_28:
  v58 = *(type metadata accessor for LoginCard() + 24);
  sub_240919298(v19, v16, &unk_27E50DA90, &qword_240A30970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  sub_240A2BCFC();
  sub_240919300(v19, &unk_27E50DA90, &qword_240A30970);
  v59 = *(p_inst_meths[164] + a1);
  if (!v59)
  {
    __break(1u);
    goto LABEL_33;
  }

  [v59 setEnabled_];
  v60 = *(v23[165] + a1);
  if (!v60)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v60 setEnabled_];
  v61 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction];
  if (v61)
  {
    [v61 setEnabled_];
    v62 = sub_240A2BF1C();
    [a1 showActivityIndicatorWithStatus_];

    return;
  }

LABEL_34:
  __break(1u);
}

void sub_24091691C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v59 - v11;
  v13 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction);
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField;
  p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
  v16 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField);
  if (*(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField) != 1)
  {
    if (v16)
    {
      v31 = v13;
      v32 = [v16 text];
      if (v32)
      {
        v33 = v32;
        v34 = sub_240A2BF4C();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        v38 = v34 & 0xFFFFFFFFFFFFLL;
        v39 = (v36 & 0x2000000000000000) == 0;
        goto LABEL_14;
      }

LABEL_18:
      v40 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v41 = v13;
    goto LABEL_18;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v13;
  v18 = [v16 text];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  v20 = sub_240A2BF4C();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v40 = 0;
    p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
    goto LABEL_19;
  }

  v24 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField);
  p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
  if (v24 && (v25 = [v24 text]) != 0)
  {
    v26 = v25;
    v27 = sub_240A2BF4C();
    v29 = v28;

    v61 = v27;
    v62 = v29;
    p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
    sub_240A29CEC();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  if ((*(*(v56 - 8) + 48))(v12, 1, v56))
  {
    sub_240919300(v12, &qword_27E50DAA0, &qword_240A35430);
    v40 = 0;
    goto LABEL_19;
  }

  sub_240A29CFC();
  v58 = v61;
  v57 = v62;
  sub_240919300(v12, &qword_27E50DAA0, &qword_240A35430);

  v37 = HIBYTE(v57) & 0xF;
  v38 = v58 & 0xFFFFFFFFFFFFLL;
  v39 = (v57 & 0x2000000000000000) == 0;
LABEL_14:
  if (v39)
  {
    v37 = v38;
  }

  v40 = v37 != 0;
LABEL_19:
  [v13 setEnabled_];

  if (*(a1 + v14) != 1)
  {
    return;
  }

  v42 = *(p_inst_meths[164] + a1);
  if (v42 && (v43 = [v42 text]) != 0)
  {
    v44 = v43;
    sub_240A2BF4C();

    v45 = sub_240A2C08C();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = *(v2 + 8);
  v61 = *v2;
  v62 = v48;
  v63 = *(v2 + 16);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](&v59, v49);
  if (!v47)
  {
    if (!v60)
    {
      return;
    }

    goto LABEL_30;
  }

  if (!v60)
  {
LABEL_30:

LABEL_31:
    v50 = v2 + *(type metadata accessor for LoginCard() + 28);
    v51 = *v50;
    v52 = *(v50 + 8);
    LOBYTE(v50) = *(v50 + 16);
    v61 = v51;
    v62 = v52;
    LOBYTE(v63) = v50;
    LOBYTE(v59) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
    sub_240A2BCFC();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v53 - 8) + 56))(v9, 1, 1, v53);
    sub_2409178E4(v9);
    return;
  }

  if (v45 == v59 && v47 == v60)
  {

    return;
  }

  v54 = sub_240A2C66C();

  if ((v54 & 1) == 0)
  {
    goto LABEL_31;
  }
}

void sub_240916E28()
{
  v1 = v0;
  v64 = sub_240A29DBC();
  v62 = *(v64 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v64, v3);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LoginCard();
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v5, v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v11;
  MEMORY[0x28223BE20](v10, v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v57 - v20;
  v22 = *(v0 + 8);
  aBlock = *v0;
  v68 = v22;
  v69 = *(v0 + 16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](v72, v23);
  v58 = v72[1];
  v59 = v72[0];
  v24 = v6[7];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  MEMORY[0x245CCC9B0](v25);
  v26 = v1 + v6[9];
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  aBlock = v27;
  v68 = v28;
  LOBYTE(v69) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](v72, v29);
  LODWORD(v24) = LOBYTE(v72[0]);
  v66 = v16;
  sub_240918C30(v1, v16);
  v30 = *(v7 + 80);
  v31 = (v30 + 16) & ~v30;
  v65 = v13;
  v63 = v30;
  v32 = swift_allocObject();
  sub_240918C94(v16, v32 + v31);
  sub_240918C30(v1, v12);
  v33 = swift_allocObject();
  sub_240918C94(v12, v33 + v31);
  v34 = objc_allocWithZone(type metadata accessor for LoginCard.ContentViewController());
  v35 = sub_240917AAC(v59, v58, v21, v24, sub_240918CF8, v32, sub_240919000, v33);
  sub_240A2C06C();
  v36 = sub_240A2BF1C();

  [v35 setTitle_];

  v37 = v35;
  sub_240A2C06C();
  v38 = sub_240A2BF1C();

  [v37 setSubtitle_];

  [v37 setDismissalType_];
  v39 = v6[10];
  v60 = v1;
  v40 = v61;
  sub_240945D78(v61);
  sub_240A2C00C();
  v41 = *(v62 + 8);
  v42 = v64;
  v41(v40, v64);
  v43 = sub_240A2BF1C();

  sub_240945D78(v40);
  sub_240A2C00C();
  v41(v40, v42);
  v44 = sub_240A2BF1C();

  sub_240A2C01C();
  v45 = sub_240A2BF1C();

  sub_240A2C01C();
  v46 = sub_240A2BF1C();

  v47 = [v37 dismissalConfirmationActionWithTitle:v43 message:v44 confirmButtonTitle:v45 cancelButtonTitle:v46];

  [v37 setDismissButtonAction_];
  sub_240A2C06C();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v66;
  sub_240918C30(v60, v66);
  v50 = (v63 + 24) & ~v63;
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  sub_240918C94(v49, v51 + v50);

  v52 = sub_240A2BF1C();

  v70 = sub_240919064;
  v71 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  *&v69 = sub_2409DFF20;
  *(&v69 + 1) = &block_descriptor_0;
  v53 = _Block_copy(&aBlock);
  v54 = [objc_opt_self() actionWithTitle:v52 style:0 handler:v53];

  _Block_release(v53);

  v55 = *&v37[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction];
  *&v37[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction] = v54;
  v56 = v54;

  if (v56)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_24091752C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24091636C(Strong);
  }
}

id sub_240917584(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LoginCard();
  v9 = (v1 + *(v8 + 28));
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v21 = v10;
  v22 = v11;
  v23 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]((&v20 + 7), v12);
  v13 = HIBYTE(v20);
  a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] = HIBYTE(v20);
  v14 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField;
  v15 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
  if (v15)
  {
    [v15 setHidden_];
  }

  v16 = *(v8 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  MEMORY[0x245CCC9B0](v17);
  v18 = sub_240A2A4DC();
  LODWORD(v16) = (*(*(v18 - 8) + 48))(v7, 1, v18);
  result = sub_240919300(v7, &unk_27E50DA90, &qword_240A30970);
  if (v16 == 1)
  {
    result = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
    if (result)
    {
      [result setEnabled_];
      result = *&a1[v14];
      if (result)
      {
        [result setEnabled_];
        return [a1 hideActivityIndicator];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2409177A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240918BEC(&qword_27E50B588);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240917820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240918BEC(&qword_27E50B588);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409178A0()
{
  sub_240918BEC(&qword_27E50B588);
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409178E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField);
  if (v8)
  {
    sub_240919298(a1, v7, &qword_27E50DAA0, &qword_240A35430);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      v11 = v8;
      sub_240919300(v7, &qword_27E50DAA0, &qword_240A35430);
      v12 = 0;
    }

    else
    {
      v11 = v8;
      sub_240A29CFC();
      (*(v10 + 8))(v7, v9);
      v12 = sub_240A2BF1C();
    }

    [v11 setText_];
  }

  return sub_240919300(a1, &qword_27E50DAA0, &qword_240A35430);
}

uint64_t sub_240917AAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v48 - v19;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction] = 0;
  v21 = &v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_onChange];
  *v21 = a5;
  v21[1] = a6;
  v22 = &v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_onSubmit];
  *v22 = a7;
  v22[1] = a8;
  v49 = a4;
  v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] = a4;
  v23 = type metadata accessor for LoginCard.ContentViewController();
  v58.receiver = v8;
  v58.super_class = v23;
  v48[0] = a6;

  v48[1] = a8;

  v24 = objc_msgSendSuper2(&v58, sel_initWithContentView_, 0);
  sub_2409190F0(&v59);
  v74 = v63;

  sub_240919300(&v74, &unk_27E50C3E0, &unk_240A30960);
  v81[0] = v59;
  v81[1] = v60;
  v81[2] = v61;
  v82 = v62;
  v83 = a1;
  v85 = v64;
  v84 = a2;
  v86 = v65;
  v87[0] = v59;
  v87[1] = v60;
  v87[2] = v61;
  v88 = v62;
  v89 = a1;
  v90 = a2;
  v92 = v65;
  v91 = v64;
  sub_240919230(v81, v75);
  sub_240919268(v87);
  v25 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240918680(v25);
  sub_240919268(v81);
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_240A2C39C();
  [v25 addAction:v26 forControlEvents:983040];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_240A2C39C();
  [v25 addAction:v27 forControlEvents:0x2000];

  v28 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  v29 = *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
  *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField] = v25;

  sub_240919298(v50, v20, &qword_27E50DAA0, &qword_240A35430);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v20, 1, v30) == 1)
  {
    sub_240919300(v20, &qword_27E50DAA0, &qword_240A35430);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    sub_240A29CFC();
    v33 = *(&v75[0] + 1);
    v32 = *&v75[0];
    (*(v31 + 8))(v20, v30);
  }

  sub_240919360(&v66);
  v73 = v70;
  sub_240919300(&v73, &unk_27E50C3E0, &unk_240A30960);
  v52[0] = v66;
  v52[1] = v67;
  v52[2] = v68;
  v56 = v71;
  v75[1] = v67;
  v75[2] = v68;
  v75[0] = v66;
  v76 = v69;
  v77 = v32;
  v79 = v71;
  v78 = v33;
  v80 = v72;
  v53 = v69;
  v54 = v32;
  v57 = v72;
  v55 = v33;
  sub_240919230(v75, &v51);
  sub_240919268(v52);
  v34 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240918680(v34);
  sub_240919268(v75);
  [v34 setHidden_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_240A2C39C();
  [v34 addAction:v35 forControlEvents:983040];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = sub_240A2C39C();
  [v34 addAction:v36 forControlEvents:0x2000];

  v37 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField;
  v38 = *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
  *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField] = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  result = swift_allocObject();
  *(result + 16) = xmmword_240A308E0;
  v40 = *&v24[v28];
  if (v40)
  {
    v41 = result;
    *(result + 32) = v40;
    v42 = *&v24[v37];
    if (v42)
    {
      v43 = v40;
      v44 = v42;

      *(v41 + 40) = v44;
      sub_240918234();
      v46 = v45;

      sub_240919300(v50, &qword_27E50DAA0, &qword_240A35430);
      v47 = *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView];
      *&v24[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = v46;

      return v24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2409181B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result + *a3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = result;

    v7(v8);
  }

  return result;
}

void sub_240918234()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2409194E8(0, &qword_27E50B5B0, 0x277D75D18);
  v2 = sub_240A2C15C();
  v3 = [v1 initWithArrangedSubviews_];

  v4 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView;
  v5 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView];
  *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v6 setAxis_];

  v7 = *&v0[v4];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v7 setAlignment_];
  v8 = *&v0[v4];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v8 setSpacing_];
  v9 = *&v0[v4];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v9 setDistribution_];
  v10 = *&v0[v4];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v0 contentView];
  if (!*&v0[v4])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v0 contentView];
  v14 = [v13 mainContentGuide];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_240A308F0;
  v16 = *&v0[v4];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = [v16 topAnchor];
  v18 = [v14 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v15 + 32) = v19;
  v20 = *&v0[v4];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = [v20 bottomAnchor];
  v22 = [v14 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v15 + 40) = v23;
  v24 = *&v0[v4];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = [v24 centerXAnchor];
  v26 = [v14 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v15 + 48) = v27;
  v28 = *&v0[v4];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = [v28 centerYAnchor];
  v30 = [v14 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v15 + 56) = v31;
  v32 = *&v0[v4];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = objc_opt_self();
  v34 = [v32 widthAnchor];
  v35 = [v14 widthAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v15 + 64) = v36;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v37 = sub_240A2C15C();

  [v33 activateConstraints_];

  v38 = *&v0[v4];
  if (v38)
  {
    v38;

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_240918680(void *a1)
{
  [a1 setTextContentType_];
  [a1 setAutocorrectionType_];
  [a1 setAutocapitalizationType_];
  [a1 setSecureTextEntry_];
  [a1 setEnablesReturnKeyAutomatically_];
  [a1 setReturnKeyType_];
  [a1 setFont_];
  [a1 setBackgroundColor_];
  if (*(v1 + 80))
  {
    v3 = *(v1 + 72);
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  [a1 setPlaceholder_];

  if (*(v1 + 64))
  {
    v5 = *(v1 + 56);
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a1 setText_];
}

id sub_2409187F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoginCard.ContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LoginCard()
{
  result = qword_27E50B558;
  if (!qword_27E50B558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240918954()
{
  sub_240918AB0(319, &qword_27E50B568, &unk_27E50C3E0, &unk_240A30960);
  if (v0 <= 0x3F)
  {
    sub_240918AB0(319, &qword_27E50B570, &qword_27E50DAA0, &qword_240A35430);
    if (v1 <= 0x3F)
    {
      sub_240918AB0(319, &qword_27E50B578, &unk_27E50DA90, &qword_240A30970);
      if (v2 <= 0x3F)
      {
        sub_240918B04();
        if (v3 <= 0x3F)
        {
          sub_240918B54();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
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

void sub_240918AB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2BD4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240918B04()
{
  if (!qword_27E50B580)
  {
    v0 = sub_240A2BD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50B580);
    }
  }
}

void sub_240918B54()
{
  if (!qword_27E50BD80)
  {
    sub_240A29DBC();
    v0 = sub_240A2B1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50BD80);
    }
  }
}

uint64_t sub_240918BEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoginCard();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240918C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoginCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240918C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoginCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_240918CF8(uint64_t a1)
{
  v3 = *(type metadata accessor for LoginCard() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_24091691C(a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for LoginCard();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = (v0 + v3 + v1[5]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928) + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  v15 = (v5 + v1[6]);
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930) + 32);
  v19 = sub_240A2A4DC();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v15[v18], 1, v19))
  {
    (*(v20 + 8))(&v15[v18], v19);
  }

  v21 = (v5 + v1[7]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_240A29DBC();
    (*(*(v25 - 8) + 8))(v5 + v24, v25);
  }

  else
  {
    v26 = *(v5 + v24);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_240919000(_BYTE *a1)
{
  v3 = *(type metadata accessor for LoginCard() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_24091636C(a1);
}

void sub_240919064()
{
  v1 = *(*(type metadata accessor for LoginCard() - 8) + 80);
  v2 = *(v0 + 16);

  sub_24091752C();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2409190F0@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D77090];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76918];
  v5 = objc_allocWithZone(MEMORY[0x277D75520]);
  v6 = v2;
  v7 = [v5 initForTextStyle_];
  [v7 scaledValueForValue_];
  v9 = v8;

  v10 = [v3 systemFontOfSize:v9 weight:*MEMORY[0x277D74410]];
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_240A2C06C();
  *a1 = v6;
  *&result = 1;
  *(a1 + 8) = xmmword_240A30900;
  *(a1 + 24) = 256;
  *(a1 + 32) = 4;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_240919298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240919300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_240919360@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D77030];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76918];
  v5 = objc_allocWithZone(MEMORY[0x277D75520]);
  v6 = v2;
  v7 = [v5 initForTextStyle_];
  [v7 scaledValueForValue_];
  v9 = v8;

  v10 = [v3 systemFontOfSize:v9 weight:*MEMORY[0x277D74410]];
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_240A2C06C();
  *a1 = v6;
  *&result = 1;
  *(a1 + 8) = xmmword_240A30900;
  *(a1 + 24) = 257;
  *(a1 + 32) = 4;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_2409194E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24091954C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_240919594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240919608(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_240919658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2409196AC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2409196C4(void *result, int a2)
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

uint64_t sub_2409196FC@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5B8, &qword_240A30BB8);
  result = sub_240A2BC5C();
  *a1 = v4;
  return result;
}

id sub_240919760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AISAppleIDAuthContextProvider();
  v23[3] = v8;
  v23[4] = &off_285291700;
  v23[0] = a1;
  v9 = type metadata accessor for AISSignInViewModel();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v22[3] = v8;
  v22[4] = &off_285291700;
  v22[0] = v16;
  v17 = OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember;
  *&v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember] = 0;
  sub_240919A14(v22, &v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider]);
  v18 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step];
  *v18 = a2;
  *(v18 + 1) = a4;
  *&v10[v17] = a3;
  v21.receiver = v10;
  v21.super_class = v9;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v19;
}

uint64_t sub_2409198E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AISAppleIDAuthContextProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_presentingViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  sub_240919760(v7, a1, 0, &protocol witness table for AISFlowStepParentSignIn);
  type metadata accessor for AISSignInViewModel();
  sub_240A2BC4C();

  return v9;
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

uint64_t sub_240919A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240919A78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_240919AC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_240919B28()
{
  result = qword_27E50B5C0;
  if (!qword_27E50B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B5C0);
  }

  return result;
}

uint64_t type metadata accessor for FamilyRepairView()
{
  result = qword_27E50B5E0;
  if (!qword_27E50B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240919BF0()
{
  sub_240919D0C();
  if (v0 <= 0x3F)
  {
    sub_240919D70(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_240A2A46C();
      if (v2 <= 0x3F)
      {
        sub_240919D70(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_240919DC0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240919D0C()
{
  if (!qword_27E50B5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D910, qword_240A35F80);
    v0 = sub_240A2B1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50B5F0);
    }
  }
}

void sub_240919D70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_240919DC0()
{
  result = qword_27E50B608;
  if (!qword_27E50B608)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E50B608);
  }

  return result;
}

uint64_t sub_240919E2C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B5C8);
  __swift_project_value_buffer(v0, qword_27E50B5C8);
  return sub_240A2AE7C();
}

void sub_240919E78(void *a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v59 - v8;
  v10 = sub_240A2B52C();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FamilyRepairView();
  v69 = *(v67 - 8);
  v14 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](v67, v15);
  v17 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v59 - v19;
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v21 = sub_240A2B00C();
  v22 = __swift_project_value_buffer(v21, qword_27E50B5C8);
  v23 = sub_240A2AFFC();
  v24 = sub_240A2C29C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2408FE000, v23, v24, "Creating context for family repair", v25, 2u);
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  sub_24091C54C(a2, v20, type metadata accessor for FamilyRepairView);
  v26 = a1;
  v27 = sub_240A2AFFC();
  v28 = sub_240A2C29C();

  v29 = os_log_type_enabled(v27, v28);
  v68 = v22;
  v66 = v26;
  if (v29)
  {
    v59 = v14;
    v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = a2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    swift_getObjectType();
    v32 = sub_240A2C7BC();
    v34 = sub_240925464(v32, v33, aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 1024;
    v35 = *(v20 + 2);
    if (v20[24] != 1)
    {
      v36 = *(v20 + 2);

      sub_240A2C2BC();
      v37 = v9;
      v38 = sub_240A2B84C();
      sub_240A2AFEC();

      v9 = v37;
      v39 = v62;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v35, 0);
      (*(v63 + 8))(v39, v64);
      LOBYTE(v35) = v70;
    }

    sub_24091C5EC(v20, type metadata accessor for FamilyRepairView);
    *(v30 + 14) = v35 & 1;
    _os_log_impl(&dword_2408FE000, v27, v28, "FamilyRepairView viewController type: %s (teenSetup: %{BOOL}d)", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245CCDDB0](v31, -1, -1);
    MEMORY[0x245CCDDB0](v30, -1, -1);

    v17 = v60;
    a2 = v61;
  }

  else
  {
    sub_24091C5EC(v20, type metadata accessor for FamilyRepairView);
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v41 = *(v67 + 28);
  v42 = sub_240A2A40C();
  if (v42)
  {
    aBlock[0] = v42;
    v43 = v42;
    sub_24091BF68(aBlock, v65, &v70);

    v44 = v70;
  }

  else
  {
    v44 = 0;
  }

  [v40 setAuthContext_];

  sub_24091A5CC();
  v45 = sub_240A2BE9C();

  [v40 setAdditionalParameters_];

  v46 = objc_allocWithZone(MEMORY[0x277D083B8]);
  v47 = [v46 initWithPresenter_];
  [v47 setPresentationType_];
  aBlock[4] = sub_24091A7D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_1;
  v48 = _Block_copy(aBlock);
  [v47 setPresentationHandler_];
  _Block_release(v48);
  v49 = sub_240A2AFFC();
  v50 = sub_240A2C29C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2408FE000, v49, v50, "Launching performWithContext on FACircleStateController", v51, 2u);
    MEMORY[0x245CCDDB0](v51, -1, -1);
  }

  v52 = sub_240A2C24C();
  (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
  sub_24091C54C(a2, v17, type metadata accessor for FamilyRepairView);
  sub_240A2C21C();
  v53 = v47;
  v54 = v40;
  v55 = sub_240A2C20C();
  v56 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v57 = swift_allocObject();
  v58 = MEMORY[0x277D85700];
  v57[2] = v55;
  v57[3] = v58;
  v57[4] = v53;
  v57[5] = v54;
  sub_24091C388(v17, v57 + v56);
  sub_2409230D4(0, 0, v9, &unk_240A30CD8, v57);
}

unint64_t sub_24091A5CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A30BE0;
  *(inited + 32) = 0x64497265626D656DLL;
  *(inited + 40) = 0xE800000000000000;
  v1 = sub_240A2A3BC();
  v2 = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x44495344746C61;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_240A2A3EC();
  *(inited + 104) = v4;
  *(inited + 120) = v2;
  *(inited + 128) = 0x6574736575716572;
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = sub_240A2A3DC();
  *(inited + 152) = v5;
  *(inited + 168) = v2;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000240A3A9F0;
  *(inited + 192) = sub_240A2AEBC();
  *(inited + 200) = v6;
  *(inited + 216) = v2;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x8000000240A3AA10;
  v7 = sub_240A2A41C();
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v7 & 1;
  v8 = sub_240926374(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
  swift_arrayDestroy();
  v9 = sub_240A2A3CC();
  if (v10)
  {
    if (qword_27E50AFE0 != -1)
    {
      v15 = v9;
      v16 = v10;
      swift_once();
      v10 = v16;
      v9 = v15;
    }

    v11 = qword_27E516380;
    v12 = *algn_27E516388;
    v19 = v2;
    *&v18 = v9;
    *(&v18 + 1) = v10;
    sub_24091C780(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2409F6038(v17, v11, v12, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

void sub_24091A7D4()
{
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50B5C8);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C29C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "FACircleStateController presentationHandler called", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_24091A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v8 = sub_240A2A45C();
  v6[23] = v8;
  v9 = *(v8 - 8);
  v6[24] = v9;
  v10 = *(v9 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v11 = sub_240A2A46C();
  v6[28] = v11;
  v12 = *(v11 - 8);
  v6[29] = v12;
  v13 = *(v12 + 64) + 15;
  v6[30] = swift_task_alloc();
  sub_240A2C21C();
  v6[31] = sub_240A2C20C();
  v15 = sub_240A2C1BC();
  v6[32] = v15;
  v6[33] = v14;

  return MEMORY[0x2822009F8](sub_24091AA60, v15, v14);
}

uint64_t sub_24091AA60()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24091AB88;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v2 performWithContext:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24091AB88()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24091AC90, v2, v1);
}

uint64_t sub_24091AC90()
{
  v66 = v0;
  v1 = v0[31];

  v2 = v0[18];
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50B5C8);
  v4 = v2;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65 = v63;
    *v7 = 136315138;
    v8 = v4;
    v9 = [v8 description];
    v10 = v4;
    v11 = sub_240A2BF4C();
    v13 = v12;

    v14 = v11;
    v4 = v10;
    v15 = sub_240925464(v14, v13, &v65);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v5, v6, "Received response %s from FACircleStateController", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245CCDDB0](v63, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[28];
  v19 = v0[21];
  v64 = type metadata accessor for FamilyRepairView();
  (*(v17 + 16))(v16, v19 + *(v64 + 28), v18);
  sub_240A2A3AC();
  if ([v4 loadSuccess])
  {
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Family repair succeeded", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }
  }

  else
  {
    v23 = [v4 error];
    v24 = v0[27];
    v62 = v4;
    if (v23)
    {
      v25 = v0[26];
      v27 = v0[23];
      v26 = v0[24];
      sub_240A2A44C();
      (*(v26 + 32))(v24, v25, v27);
    }

    else
    {
      v28 = v0[23];
      v29 = v0[24];
      *v24 = 0xD000000000000031;
      v24[1] = 0x8000000240A3A9B0;
      (*(v29 + 104))(v24, *MEMORY[0x277CED980], v28);
    }

    v30 = v0[30];
    v31 = v0[27];
    v33 = v0[24];
    v32 = v0[25];
    v35 = v0[22];
    v34 = v0[23];
    v36 = *(v33 + 16);
    v36(v35, v31, v34);
    (*(v33 + 56))(v35, 0, 1, v34);
    sub_240A2A43C();
    v36(v32, v31, v34);
    v37 = sub_240A2AFFC();
    v38 = sub_240A2C2AC();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[27];
    v41 = v0[24];
    v42 = v0[25];
    v43 = v0[23];
    if (v39)
    {
      v44 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v44 = 138412290;
      sub_24091CDE0(&qword_27E50DD20, MEMORY[0x277CED988]);
      swift_allocError();
      v61 = v40;
      v36(v45, v42, v43);
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v47 = *(v41 + 8);
      v47(v42, v43);
      *(v44 + 4) = v46;
      *v60 = v46;
      _os_log_impl(&dword_2408FE000, v37, v38, "Failed to perform family repair with error: %@", v44, 0xCu);
      sub_240915C68(v60);
      MEMORY[0x245CCDDB0](v60, -1, -1);
      MEMORY[0x245CCDDB0](v44, -1, -1);

      v47(v61, v43);
    }

    else
    {

      v48 = *(v41 + 8);
      v48(v42, v43);
      v48(v40, v43);
    }

    v4 = v62;
  }

  v50 = v0[29];
  v49 = v0[30];
  v52 = v0[27];
  v51 = v0[28];
  v54 = v0[25];
  v53 = v0[26];
  v55 = v0[22];
  v56 = v0[21] + *(v64 + 36);
  v57 = *(v56 + 8);
  (*v56)(v49);

  (*(v50 + 8))(v49, v51);

  v58 = v0[1];

  return v58();
}

double sub_24091B23C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v5 = type metadata accessor for FamilyRepairView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2B52C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  if (*(v3 + 24) != 1)
  {
    v17 = *(v3 + 16);

    sub_240A2C2BC();
    v18 = sub_240A2B84C();
    v27 = v3;
    v19 = a2;
    v20 = v18;
    sub_240A2AFEC();

    a2 = v19;
    v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v27;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v16, 0);
    (*(v11 + 8))(v15, v10);
    if ((v35 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24091C54C(v3, v9, type metadata accessor for FamilyRepairView);
    v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v22 = swift_allocObject();
    sub_24091C388(v9, v22 + v21);
    v30 = v28;
    v31 = a2;
    v32 = sub_24091C488;
    v33 = v22;
    v34 = 1;
    goto LABEL_6;
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = v28;
  v31 = a2;
  v32 = sub_24091B58C;
  v33 = 0;
  v34 = 0;
LABEL_6:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B610, &qword_240A30C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B618, &qword_240A30C78);
  sub_24091CE28(&qword_27E50B620, &qword_27E50B610, &qword_240A30C70);
  sub_24091CE28(&qword_27E50B628, &qword_27E50B618, &qword_240A30C78);
  sub_240A2B6EC();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v29;
  *v29 = v35;
  v26[1] = v24;
  *(v26 + 32) = v25;
  return result;
}

uint64_t sub_24091B590(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FamilyRepairView() + 32));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
  sub_240A2BC5C();
  return sub_24091B610(v3);
}

uint64_t sub_24091B610(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B638, &qword_240A30C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v20 - v11;
  v13 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_24091C54C(v17, v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_24091CDE0(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return sub_24091C5EC(v17, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    v20[0] = sub_240A2C06C();
    v20[1] = v19;
    sub_24091C4F8();
    sub_240A2B24C();
    (*(v3 + 16))(v12, v7, v2);
    swift_storeEnumTagMultiPayload();
    sub_24091CDE0(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_24091B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_24091BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_24091BA9C()
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

double sub_24091BADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8, a2);
  v7 = sub_240945F78(*v3, *(v3 + 8));
  sub_24091C54C(v3, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyRepairView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24091C388(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = v7;
  sub_24091B23C(sub_24091C3EC, v9, v14);

  v11 = v15;
  result = *v14;
  v13 = v14[1];
  *a3 = v14[0];
  *(a3 + 16) = v13;
  *(a3 + 32) = v11;
  return result;
}

void sub_24091BC38(void *a1)
{
  v2 = v1;
  v4 = [v2 companionDevice];
  if (v4 && (v5 = v4, v6 = [v4 linkType], v5, v6 == 3) || (v7 = objc_msgSend(v2, sel_proxiedDevice)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_linkType), v8, v9 == 3))
  {
    if (qword_27E50AEB0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50B5C8);
    v11 = v2;
    v12 = a1;
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C28C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2080;
      sub_240A29DEC();
      v18 = v11;
      v19 = v12;
      v20 = sub_240A2BF9C();
      v22 = sub_240925464(v20, v21, &v27);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2408FE000, v13, v14, "%@: Applying anisette data provider: %s", v15, 0x16u);
      sub_240915C68(v16);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    [v11 setAnisetteDataProvider_];
  }

  else
  {
    if (qword_27E50AEB0 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50B5C8);
    oslog = sub_240A2AFFC();
    v24 = sub_240A2C29C();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v24, "Neither companionDevice nor proxiedDevice is client-managed, skipping applying anisette data provider", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }
}

void sub_24091BF68(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_2409194E8(0, &qword_27E50B648, 0x277CF0170);
  v6 = v5;
  v7 = sub_240A2C34C();
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50B5C8);
  v9 = v7;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();

  if (os_log_type_enabled(v10, v11))
  {
    v31 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
    *(v12 + 12) = 2080;
    [v9 proxiedDevice];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B650, &qword_240A30CE8);
    v14 = sub_240A2BF9C();
    v16 = sub_240925464(v14, v15, &v33);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_2408FE000, v10, v11, "%s ProxiedDevice: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v13, -1, -1);
    v17 = v12;
    a3 = v31;
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  if (a2)
  {
    v18 = v9;
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v18;
      *v23 = v18;
      v25 = v18;
      _os_log_impl(&dword_2408FE000, v20, v21, "%s Applying peerAnisetteClient (if needed) to %@", v22, 0x16u);
      sub_240915C68(v23);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      v26 = v22;
      a3 = v32;
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    sub_24091BC38(v19);
  }

  else
  {
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
      _os_log_impl(&dword_2408FE000, v27, v28, "%s Missing peerAnisetteClient - unexpected state", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x245CCDDB0](v30, -1, -1);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }
  }

  *a3 = v9;
}

void sub_24091C37C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_24091C388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyRepairView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24091C3EC(void *a1)
{
  v3 = *(type metadata accessor for FamilyRepairView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_240919E78(a1, v1 + v4, v5);
}

uint64_t sub_24091C488()
{
  v1 = *(type metadata accessor for FamilyRepairView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24091B590(v2);
}

unint64_t sub_24091C4F8()
{
  result = qword_27E50BF70;
  if (!qword_27E50BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF70);
  }

  return result;
}

uint64_t sub_24091C54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24091C5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24091C664(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyRepairView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_24091A8BC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

_OWORD *sub_24091C780(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_24091C7F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24091C848(uint64_t *a1, int a2)
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

uint64_t sub_24091C890(uint64_t result, int a2, int a3)
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

unint64_t sub_24091C8E8()
{
  result = qword_27E50B6E0;
  if (!qword_27E50B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B6E8, &qword_240A30D80);
    sub_24091CE28(&qword_27E50B620, &qword_27E50B610, &qword_240A30C70);
    sub_24091CE28(&qword_27E50B628, &qword_27E50B618, &qword_240A30C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B6E0);
  }

  return result;
}

id sub_24091C9E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v31 = a2;
  v10 = sub_240A2BE4C();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A2BE6C();
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  sub_240A2B60C();
  a3();
  v32 = sub_240A2B5DC();
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v24 = sub_240A2C32C();
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v26 = v31;
  v25[4] = v30;
  v25[5] = v26;
  v25[6] = a3;
  v25[7] = a4;
  v25[8] = v23;
  aBlock[4] = sub_24091CDB0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_23;
  v27 = _Block_copy(aBlock);

  v28 = v23;

  sub_240A2BE5C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24091CDE0(&qword_27E50CF10, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v20, v14, v27);
  _Block_release(v27);

  (*(v35 + 8))(v14, v10);
  (*(v33 + 8))(v20, v34);
  return v28;
}

uint64_t sub_24091CDE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24091CE28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t AISFlowStepChildCreate.stepLoadTask.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t AISFlowStepChildCreate.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id AISFlowStepChildCreate.authResponse.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepChildCreate.__allocating_init(authResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  swift_getObjectType();

  return sub_24091E02C(a1, a2, a3, v9);
}

uint64_t AISFlowStepChildCreate.init(authResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_24091E02C(a1, a2, a3, v3);
}

void sub_24091D0CC(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setAppProvidedContext_];
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v11 = *(v1 + v10);
  sub_240A2ABEC();
  v13 = v12;

  if (v13)
  {
    v14 = sub_240A2BF1C();
  }

  else
  {
    v14 = 0;
  }

  [a1 setAltDSID_];

  v15 = *(v2 + v10);
  sub_240A2AC5C();
  v17 = v16;

  if (v17)
  {
    v18 = sub_240A2BF1C();
  }

  else
  {
    v18 = 0;
  }

  [a1 setUsername_];

  [a1 setNeedsNewAppleID_];
  v19 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);
  v20 = *(v19 + 16);
  v21 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  [a1 setRequestedNewAccountAgeRange_];
  [a1 setServiceType_];
  v22 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
  v23 = *(v19 + 16);
  v24 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  [v22 setAgeRange_];
  sub_240A2AE9C();
  v25 = a1;
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C2CC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v2;
    v30 = v10;
    v31 = v9;
    v32 = v22;
    v33 = v5;
    v34 = v4;
    v35 = v29;
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v36 = v25;
    _os_log_impl(&dword_2408FE000, v26, v27, "Adding proto account context to bypass shielding for child/teen create: %@", v28, 0xCu);
    sub_240915C68(v35);
    v37 = v35;
    v4 = v34;
    v5 = v33;
    v22 = v32;
    v9 = v31;
    v10 = v30;
    v2 = v51;
    MEMORY[0x245CCDDB0](v37, -1, -1);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  [v25 setProtoAccountContext_];
  v38 = [objc_allocWithZone(MEMORY[0x277CCAB70]) init];
  v39 = *(v2 + v10);
  sub_240A2ABAC();
  v41 = v40;

  if (v41)
  {
    v42 = sub_240A2BF1C();
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v2 + v10);
  sub_240A2ABEC();
  v45 = v44;

  if (v45)
  {
    v46 = sub_240A2BF1C();
  }

  else
  {
    v46 = 0;
  }

  [v38 ak:v42 addAuthorizationHeaderWithIdentityToken:v46 forAltDSID:?];

  v47 = [v38 allHTTPHeaderFields];
  if (v47)
  {
    v48 = v47;
    v49 = sub_240A2BEBC();

    sub_240A1E5B4(v49);

    v50 = sub_240A2BE9C();
  }

  else
  {
    v50 = 0;
  }

  [v25 setHttpHeadersForRemoteUI_];
}

uint64_t sub_24091D5C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  [*(v3 + v12) complete];
  if (*(a1 + 16))
  {
    sub_240A1E87C(a1);
    v13 = objc_allocWithZone(sub_240A2AC6C());
    v14 = sub_240A2ABDC();
    v15 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = v14;

    if (a2)
    {
      sub_24091E194();
      v16 = swift_allocError();
      *v17 = a2;
    }

    else
    {
      v16 = 0;
    }

    v23 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = v16;
    v24 = a2;
  }

  else
  {
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "AISFlowStepChildCreate No Auth results!", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_24091E194();
    v21 = swift_allocError();
    *v22 = 1;
    v23 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = v21;
  }

  return sub_2409F4D60();
}

uint64_t AISFlowStepChildCreate.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAB8];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDAC0];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t AISFlowStepChildCreate.nextStep()()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30[-v9];
  v11 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
  if (v11)
  {
    v12 = v11;
LABEL_3:
    swift_willThrow();
    return v0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults);
  if (!v13)
  {
    sub_240A2AE9C();
    v27 = sub_240A2AFFC();
    v0 = sub_240A2C2AC();
    if (os_log_type_enabled(v27, v0))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v27, v0, "This should not happen. Already checking for auth results in process step", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    sub_24091E194();
    swift_allocError();
    *v29 = 1;
    goto LABEL_3;
  }

  v14 = v0;
  v15 = v13;
  sub_240A2AE9C();
  v16 = sub_240A2AFFC();
  v17 = sub_240A2C2CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2408FE000, v16, v17, "AISFlowStepChildCreate: Create child/teen is successful. Starting AIDA sign-in step.", v18, 2u);
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }

  (*(v2 + 8))(v10, v1);
  v19 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v20 = *(v14 + v19);
  v21 = *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);
  v22 = type metadata accessor for AISFlowStepAIDASignIn();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v20;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v15;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v21;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v30[47] = 0;
  v25 = v20;

  sub_240A2B0DC();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v0;
}

uint64_t sub_24091DCA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask);
  swift_unknownObjectRelease();

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);
}

uint64_t AISFlowStepChildCreate.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask);
  swift_unknownObjectRelease();

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);

  return v0;
}

uint64_t AISFlowStepChildCreate.__deallocating_deinit()
{
  AISFlowStepChildCreate.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24091DE58()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24091DEA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

unint64_t AISFlowStepChildCreateError.description.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000039, 0x8000000240A3AA50);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return v1;
}

uint64_t sub_24091E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16[-v12];
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v16[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v14, v13, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

unint64_t sub_24091E194()
{
  result = qword_27E50B6F8;
  if (!qword_27E50B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B6F8);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepChildCreate()
{
  result = qword_27E50B718;
  if (!qword_27E50B718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24091E2D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24091E31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI27AISFlowStepChildCreateErrorO(uint64_t *a1)
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

uint64_t sub_24091E38C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24091E3E8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_24091E444(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void sub_24091E5A4()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = objc_allocWithZone(MicaPlayer);
  v11 = sub_240A2BF1C();
  v12 = [v10 initWithFileName:v11 retinaScale:v9];

  if (v12)
  {
    v13 = [v0 layer];
    [v12 addToLayer:v13 onTop:1 gravity:*MEMORY[0x277CDA710]];

    [v12 play];
    v14 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer];
    *&v0[OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer] = v12;
    v23 = v12;

    v15 = [v23 rootLayer];
    if (v15)
    {
      v16 = [objc_opt_self() systemBlueColor];
      v17 = [v16 CGColor];

      [v15 mp:v17 setFillOfAllShapeLayersToColor:?];
      v18 = v23;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISAppleIDMicaView loadMicaFile failed", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }
}

id sub_24091E964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISAppleIDMicaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24091E9CC()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B748);
  __swift_project_value_buffer(v0, qword_27E50B748);
  return sub_240A2AE9C();
}

char *sub_24091EA18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D79758]) init];
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine] = v11;
  v12 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_scannedCodeHandler];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_manualPairingHandler];
  *v13 = a4;
  *(v13 + 1) = a5;
  v54.receiver = v5;
  v54.super_class = type metadata accessor for DustCloudScannerCardViewController();

  v14 = objc_msgSendSuper2(&v54, sel_initWithScannerEngine_, v11);
  v15 = *a1;
  v16 = a1[1];
  v17 = v14;
  v18 = sub_240A2BF1C();
  [v17 setTitle_];

  v19 = a1[2];
  v20 = a1[3];
  v21 = sub_240A2BF1C();
  [v17 setSubtitle_];

  [v17 setDismissalType_];
  v22 = a1[7];
  v23 = a1[8];
  v24 = v17;
  v25 = sub_240A2BF1C();
  v26 = a1[9];
  v27 = a1[10];
  v28 = sub_240A2BF1C();
  v29 = a1[11];
  v30 = a1[12];
  v31 = sub_240A2BF1C();
  v32 = a1[13];
  v33 = a1[14];
  v34 = sub_240A2BF1C();
  v35 = [v24 dismissalConfirmationActionWithTitle:v25 message:v28 confirmButtonTitle:v31 cancelButtonTitle:v34];

  [v24 setDismissButtonAction_];
  v36 = a1[4];
  v37 = a1[5];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = sub_240A2BF1C();
  v52 = sub_24091F118;
  v53 = v38;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_2409DFF20;
  v51 = &block_descriptor_2;
  v40 = _Block_copy(&v48);
  v41 = [objc_opt_self() actionWithTitle:v39 style:1 handler:v40];
  sub_24091F138(a1);

  _Block_release(v40);

  v42 = *&v24[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine];
  v43 = swift_allocObject();
  *(v43 + 16) = v24;
  v52 = sub_24091F168;
  v53 = v43;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_2409ED748;
  v51 = &block_descriptor_9;
  v44 = _Block_copy(&v48);
  v45 = v24;
  v46 = v42;

  [v46 setScannedCodeHandler_];
  _Block_release(v44);

  return v45;
}

void sub_24091EDF0()
{
  if (qword_27E50AEB8 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50B748);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C28C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "User has elected manual pairing", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine) stop];
    v7 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_manualPairingHandler + 8];
    (*&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_manualPairingHandler])(v6);
  }
}

id sub_24091F05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DustCloudScannerCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24091F168(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  [v5 showConfirmationRing];
  [*&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine] stop];
  v6 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_scannedCodeHandler];
  v7 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_scannedCodeHandler + 8];
  return v6(a1, a2);
}

uint64_t sub_24091F1E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v6 = sub_240A2BFCC();
    v40 = v7;
    v41 = v6;
    v8 = sub_240A2BFDC();
    v38 = v9;
    v39 = v8;
    v10 = sub_240A2BFDC();
    v36 = v11;
    v37 = v10;
    v12 = sub_240A2BFDC();
    v14 = v13;
    v15 = sub_240A2BFDC();
    v17 = v16;
    v18 = sub_240A2BFDC();
    v20 = v19;
    v21 = sub_240A2BFDC();
  }

  else
  {
    v23 = sub_240A2C00C();
    v40 = v24;
    v41 = v23;
    v25 = sub_240A2C01C();
    v38 = v26;
    v39 = v25;
    v27 = sub_240A2C01C();
    v36 = v28;
    v37 = v27;
    v12 = sub_240A2C01C();
    v14 = v29;
    v15 = sub_240A2C01C();
    v17 = v30;
    v18 = sub_240A2C01C();
    v20 = v31;
    v21 = sub_240A2C01C();
  }

  v32 = v21;
  v33 = v22;
  v34 = sub_240A29DBC();
  result = (*(*(v34 - 8) + 8))(a2, v34);
  *a4 = v41;
  a4[1] = v40;
  a4[2] = v39;
  a4[3] = v38;
  a4[4] = v37;
  a4[5] = v36;
  a4[6] = a3;
  a4[7] = v12;
  a4[8] = v14;
  a4[9] = v15;
  a4[10] = v17;
  a4[11] = v18;
  a4[12] = v20;
  a4[13] = v32;
  a4[14] = v33;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24091F430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24091F478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24091F4EC(uint64_t a1, unint64_t a2, double a3)
{
  v6 = type metadata accessor for QRCodeGenerator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  return sub_240978EF0(a1, a2, a3);
}

uint64_t sub_24091F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_240A2B58C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B778, &qword_240A311C8);
  sub_24091F750(a1, a2, a3 & 1, a4 + *(v8 + 44));
  v9 = sub_240A2B86C();
  sub_240A2B1AC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B780, &qword_240A311D0) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B788, &qword_240A311D8) + 36);
  sub_240A2BDBC();
  v20 = sub_240A2B86C();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)) = v20;
  type metadata accessor for QRCodeGenerator();
  sub_240920600();
  v21 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

  v22 = v21 / 10.0;
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A0, &qword_240A311E8) + 36));
  v24 = *(sub_240A2B3FC() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_240A2B57C();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  v23[1] = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0);
  *(v23 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24091F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v129 = a2;
  v119 = a1;
  v128 = a4;
  v116 = sub_240A2BBDC();
  v115 = *(v116 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v5);
  v114 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_240A2BBEC();
  v112 = *(v113 - 8);
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v8);
  v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7B0, &qword_240A311F8);
  v10 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126, v11);
  v117 = &v106 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7B8, &qword_240A31200);
  v13 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122, v14);
  v124 = &v106 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7C0, &qword_240A31208);
  v16 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123, v17);
  v110 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7C8, &qword_240A31210);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v127 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v125 = &v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v106 - v29;
  v31 = sub_240A2B97C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D8, &qword_240A31220);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v121 = &v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v106 - v43;
  *&v136[0] = sub_240A2C06C();
  *(&v136[0] + 1) = v45;
  sub_24091C4F8();
  v46 = sub_240A2B9CC();
  v48 = v47;
  v50 = v49;
  (*(v32 + 104))(v36, *MEMORY[0x277CE0A80], v31);
  v51 = sub_240A2B8CC();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v108 = v51;
  v107 = v53;
  v106 = v52 + 56;
  (v53)(v30, 1, 1);
  sub_240A2B8DC();
  sub_240A2B92C();
  v109 = v30;
  sub_240919300(v30, &qword_27E50B7D0, &qword_240A31218);
  (*(v32 + 8))(v36, v31);
  v54 = sub_240A2B9AC();
  v56 = v55;
  LOBYTE(v30) = v57;

  sub_240920658(v46, v48, v50 & 1);

  LODWORD(v136[0]) = sub_240A2B70C();
  v58 = sub_240A2B98C();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_240920658(v54, v56, v30 & 1);

  KeyPath = swift_getKeyPath();
  v66 = sub_240A2B85C();
  v135 = v62 & 1;
  v134 = 1;
  *&v130 = v58;
  *(&v130 + 1) = v60;
  LOBYTE(v131) = v62 & 1;
  *(&v131 + 1) = v64;
  *&v132 = KeyPath;
  BYTE8(v132) = 1;
  v133[0] = v66;
  memset(&v133[8], 0, 32);
  v133[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7E0, &unk_240A378B0);
  sub_240920668();
  v120 = v44;
  sub_240A2BA6C();
  v136[2] = v132;
  v136[3] = *v133;
  *v137 = *&v133[16];
  *&v137[9] = *&v133[25];
  v136[0] = v130;
  v136[1] = v131;
  sub_240919300(v136, &qword_27E50B7E0, &unk_240A378B0);
  type metadata accessor for QRCodeGenerator();
  sub_240920600();
  sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v130)
  {
    v67 = v130;
    sub_240A2BBBC();
    v68 = v112;
    v69 = v111;
    v70 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277CE0FF8], v113);
    sub_240A2BBFC();

    (*(v68 + 8))(v69, v70);
    v71 = v115;
    v72 = v114;
    v73 = v116;
    (*(v115 + 104))(v114, *MEMORY[0x277CE0FE0], v116);
    v74 = sub_240A2BC1C();

    (*(v71 + 8))(v72, v73);
    v75 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

    v76 = v117;
    v77 = &v117[*(v126 + 36)];
    v78 = v75 / 10.0;
    v79 = *(sub_240A2B3FC() + 20);
    v80 = *MEMORY[0x277CE0118];
    v81 = sub_240A2B57C();
    (*(*(v81 - 8) + 104))(v77 + v79, v80, v81);
    *v77 = v78;
    v77[1] = v78;
    *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)) = 256;
    *v76 = v74;
    *(v76 + 8) = 0;
    *(v76 + 16) = 1;
    *(v76 + 24) = 0x3FF0000000000000;
    *(v76 + 32) = 0;
    sub_240919298(v76, v124, &qword_27E50B7B0, &qword_240A311F8);
    swift_storeEnumTagMultiPayload();
    sub_2409207AC();
    sub_240920974();
    v82 = v125;
    sub_240A2B6EC();

    v83 = v76;
    v84 = &qword_27E50B7B0;
    v85 = &qword_240A311F8;
  }

  else
  {
    v117 = sub_240A2BBCC();
    v86 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

    v87 = v109;
    v107(v109, 1, 1, v108);
    v116 = sub_240A2B91C();
    sub_240919300(v87, &qword_27E50B7D0, &qword_240A31218);
    v115 = swift_getKeyPath();
    v114 = sub_240A2BB9C();
    v113 = swift_getKeyPath();
    v88 = sub_240A2B86C();
    LOBYTE(v130) = 1;
    v89 = sub_240A2B71C();
    v90 = sub_240A2B86C();
    v91 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

    v92 = v110;
    v93 = &v110[*(v123 + 36)];
    v94 = v91 / 10.0;
    v95 = *(sub_240A2B3FC() + 20);
    v96 = *MEMORY[0x277CE0118];
    v97 = sub_240A2B57C();
    (*(*(v97 - 8) + 104))(v93 + v95, v96, v97);
    *v93 = v94;
    v93[1] = v94;
    *(v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)) = 256;
    v98 = v115;
    *v92 = v117;
    *(v92 + 8) = v98;
    v99 = v113;
    *(v92 + 16) = v116;
    *(v92 + 24) = v99;
    *(v92 + 32) = v114;
    *(v92 + 40) = v88;
    *(v92 + 48) = 0u;
    *(v92 + 64) = 0u;
    *(v92 + 80) = 1;
    *(v92 + 84) = v89;
    *(v92 + 88) = v90;
    sub_240919298(v92, v124, &qword_27E50B7C0, &qword_240A31208);
    swift_storeEnumTagMultiPayload();
    sub_2409207AC();
    sub_240920974();
    v82 = v125;
    sub_240A2B6EC();
    v83 = v92;
    v84 = &qword_27E50B7C0;
    v85 = &qword_240A31208;
  }

  sub_240919300(v83, v84, v85);
  v100 = v120;
  v101 = v121;
  sub_240919298(v120, v121, &qword_27E50B7D8, &qword_240A31220);
  v102 = v127;
  sub_240919298(v82, v127, &qword_27E50B7C8, &qword_240A31210);
  v103 = v128;
  sub_240919298(v101, v128, &qword_27E50B7D8, &qword_240A31220);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B8B8, &qword_240A31360);
  sub_240919298(v102, v103 + *(v104 + 48), &qword_27E50B7C8, &qword_240A31210);
  sub_240919300(v82, &qword_27E50B7C8, &qword_240A31210);
  sub_240919300(v100, &qword_27E50B7D8, &qword_240A31220);
  sub_240919300(v102, &qword_27E50B7C8, &qword_240A31210);
  return sub_240919300(v101, &qword_27E50B7D8, &qword_240A31220);
}