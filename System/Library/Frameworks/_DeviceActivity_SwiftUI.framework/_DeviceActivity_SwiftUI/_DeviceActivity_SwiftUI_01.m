unint64_t sub_23B6D4168()
{
  result = qword_27E179AD0;
  if (!qword_27E179AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AD0);
  }

  return result;
}

unint64_t sub_23B6D41C0()
{
  result = qword_27E179AD8;
  if (!qword_27E179AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AD8);
  }

  return result;
}

unint64_t sub_23B6D4218()
{
  result = qword_27E179AE0;
  if (!qword_27E179AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AE0);
  }

  return result;
}

uint64_t sub_23B6D426C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B6D73C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7372657375 && a2 == 0xE500000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEC000000736E6F69 || (sub_23B6D73C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_23B6D73C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69616D6F44626577 && a2 == 0xEA0000000000736ELL || (sub_23B6D73C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44746C4172657375 && a2 == 0xEB00000000444953 || (sub_23B6D73C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B6D8FB0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B6D8FD0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B6D8FF0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B6D9010 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_23B6D73C0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

void sub_23B6D46D4(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_27E179958);
  v4 = *(v2 + qword_27E179958);
  v5 = *(v2 + qword_27E179958 + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_23B6BDA1C(a1, a2);
  sub_23B6CDAA8(v4, v5);

  sub_23B6D1E10();
}

void sub_23B6D472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  _s15ServiceHostViewVMa();
  swift_getWitnessTable();
  sub_23B6D6F60();
  sub_23B6D6F50();
  if (a5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_23B6BDA08(a4, a5);
    sub_23B6D46D4(a4, a5);
    sub_23B6CDA94(a4, a5);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B6D4808()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B6D4850()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
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

uint64_t sub_23B6D4908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6D4940()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + qword_27E179960) invalidate];
  }

  v2 = *(v1 + qword_27E179960);
  *(v1 + qword_27E179960) = 0;
}

uint64_t sub_23B6D49B8()
{
  MEMORY[0x23EEA3F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6D49F0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6D4A74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6D4AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + qword_27E179960);
  *(v1 + qword_27E179960) = v2;
  v3 = v2;
}

uint64_t sub_23B6D4B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeviceActivityData.activitySegments.getter@<X0>(char **a1@<X8>)
{
  v40 = a1;
  v1 = sub_23B6D6C10();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23B6D6D60();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B6D6B00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23B6D6B70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6D6B80();
  v18 = sub_23B6D6B60();
  v34 = v19;
  v35 = v18;
  (*(v14 + 8))(v17, v13);
  sub_23B6D6B90();
  v20 = sub_23B6D6AC0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  sub_23B6D6B40();
  v23 = v36;
  sub_23B6D6D40();
  (*(v37 + 8))(v4, v38);
  v24 = sub_23B6D6B50();
  sub_23B6D6B30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179BA0, &qword_23B6D87C0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v34;
  *(v28 + 4) = v35;
  *(v28 + 5) = v29;
  *(v28 + 6) = v20;
  *(v28 + 7) = v22;
  v30 = qword_27E179BA8;
  v31 = v23;
  v32 = v39;
  (*(v5 + 32))(&v28[qword_27E179BA8], v31, v39);
  (*(v5 + 56))(&v28[v30], 0, 1, v32);
  *&v28[qword_27E179BB0] = v24;
  result = sub_23B6D4F58(&v41, &v28[qword_27E179BB8]);
  *v40 = v28;
  return result;
}

uint64_t sub_23B6D4F58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_23B6D4FE8@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v7;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  v12 = qword_27E179BA8;
  v13 = sub_23B6D6D60();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + qword_27E179BB0) = 0;
  v14 = v11 + qword_27E179BB8;
  *(v14 + 32) = 0;
  result = 0.0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *a4 = v11;
  return result;
}

uint64_t DeviceActivityResults.makeAsyncIterator()()
{
  sub_23B6D5BD8();
}

uint64_t sub_23B6D50F4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179BD8, &qword_23B6D87F0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = sub_23B6D6D60();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B6D5250, 0, 0);
}

uint64_t sub_23B6D5250()
{
  v1 = *(v0 + 104);
  if (v1[3])
  {
    v3 = v1[2];
    v2 = v1 + 2;
    v4 = *(*(v0 + 112) + 88);
    if (v3 < sub_23B6D70C0())
    {
      v5 = *(v0 + 96);
      v6 = *v2;
      sub_23B6D70E0();
      (*(*(v4 - 8) + 56))(v5, 0, 1, v4);
      v7 = *v2 + 1;
      if (!__OFADD__(*v2, 1))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v1 = *(v0 + 104);
  }

  v8 = v1[7];
  if (v8)
  {
    v9 = v1[6];
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);
    sub_23B6CDAFC(v1 + qword_27E179BA8, v12, &qword_27E179BD8, &qword_23B6D87F0);
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_23B6BCE90(*(v0 + 136), &qword_27E179BD8, &qword_23B6D87F0);
    }

    else
    {
      v13 = *(v0 + 104);
      (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
      v14 = *(v13 + qword_27E179BB0);
      if (v14)
      {
        sub_23B6CDAFC(*(v0 + 104) + qword_27E179BB8, v0 + 56, qword_27E179BE0, qword_23B6D87F8);
        if (*(v0 + 80))
        {
          v15 = *(v0 + 104);
          v16 = sub_23B6D4F58((v0 + 56), v0 + 16);
          v24 = *(v15 + 16);
          v25 = *(v14 + 16);
          if (v24 < v25)
          {
            if (v24 < v25)
            {
              v26 = *(v0 + 104);
              v27 = v14 + 16 * v24;
              v28 = *(v27 + 40);
              v41 = *(v27 + 32);
              *(v0 + 168) = v28;
              v29 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
              v30 = *(v26 + 32);
              v31 = *(v26 + 40);
              v32 = *(MEMORY[0x277CC5850] + 4);

              v33 = swift_task_alloc();
              *(v0 + 176) = v33;
              *v33 = v0;
              v33[1] = sub_23B6D5610;
              v21 = *(v0 + 160);
              v16 = *(v0 + 128);
              v17 = v30;
              v18 = v31;
              v19 = v9;
              v20 = v8;
              v22 = v41;
              v23 = v28;

              return MEMORY[0x2821164A0](v16, v17, v18, v19, v20, v21, v22, v23);
            }

LABEL_25:
            __break(1u);
            return MEMORY[0x2821164A0](v16, v17, v18, v19, v20, v21, v22, v23);
          }

          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          sub_23B6BCE90(v0 + 56, qword_27E179BE0, qword_23B6D87F8);
        }
      }

      else
      {
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      }
    }
  }

  v34 = *(v0 + 104);
  v16 = (*(*(*(*(v0 + 112) + 88) - 8) + 56))(*(v0 + 96), 1, 1);
  v35 = *(v34 + 16);
  v2 = (v34 + 16);
  v7 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  v36 = *(v0 + 160);
  v37 = *(v0 + 128);
  v38 = *(v0 + 136);
  *v2 = v7;

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_23B6D5610()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23B6D5728, 0, 0);
}

uint64_t sub_23B6D5728()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v6 = *(v3 + 88);
  v7 = swift_dynamicCast();
  (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];
    *(v0[13] + 16) = v11;

    v15 = v0[1];

    return v15();
  }

  return result;
}

void *DeviceActivityResults.Iterator.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_23B6BCE90(v0 + qword_27E179BA8, &qword_27E179BD8, &qword_23B6D87F0);
  v4 = *(v0 + qword_27E179BB0);

  sub_23B6BCE90(v0 + qword_27E179BB8, qword_27E179BE0, qword_23B6D87F8);
  return v0;
}

uint64_t DeviceActivityResults.Iterator.__deallocating_deinit()
{
  DeviceActivityResults.Iterator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B6D591C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6CD61C;

  return sub_23B6D50F4(a1);
}

uint64_t sub_23B6D59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = *(a5 + 80);
  v15 = *(a5 + 88);
  v16 = type metadata accessor for DeviceActivityResults.Iterator();
  *v13 = v6;
  v13[1] = sub_23B6D5A98;

  return MEMORY[0x282200320](a1, a2, a3, v16, a6);
}

uint64_t sub_23B6D5A98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6D5B94@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23B6D5BD8();
  v4 = *v1;

  *a1 = v3;
  return result;
}

uint64_t sub_23B6D5BD8()
{
  result = *v0;
  *(*v0 + 16) = 0;
  return result;
}

uint64_t sub_23B6D5C0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_23B6D5CFC(uint64_t *a1, int a2)
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

uint64_t sub_23B6D5D44(uint64_t result, int a2, int a3)
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

void sub_23B6D5D98()
{
  sub_23B6D5FAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t dispatch thunk of DeviceActivityResults.Iterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6C85D8;

  return v8(a1);
}

void sub_23B6D5FAC()
{
  if (!qword_27E179CE8)
  {
    sub_23B6D6D60();
    v0 = sub_23B6D7240();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179CE8);
    }
  }
}

uint64_t sub_23B6D6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23B6D60E8;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  [ObjCClassFromMetadata executeQuery:a1 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_23B6D60E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_23B6D6174();
  v3 = sub_23B6D70B0();

  v2(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B6D6174()
{
  result = qword_27E179CF0;
  if (!qword_27E179CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179CF0);
  }

  return result;
}

uint64_t sub_23B6D61C0()
{
  v1 = [*v0 bundleIdentifier];
  v2 = sub_23B6D7050();

  return v2;
}

uint64_t sub_23B6D622C()
{
  v0 = sub_23B6D6E20();
  __swift_allocate_value_buffer(v0, qword_27E17A730);
  __swift_project_value_buffer(v0, qword_27E17A730);
  return sub_23B6D6E10();
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

uint64_t sub_23B6D6304(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    [v1 setConfiguration_];
    return sub_23B6D683C(a1);
  }

  sub_23B6D68A4(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179D00, &unk_23B6D8B60);
    sub_23B6D6914();
    if (swift_dynamicCast())
    {
      [v1 setConfiguration_];

      return sub_23B6D683C(a1);
    }
  }

  else
  {
    sub_23B6D683C(v15);
  }

  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v3 = sub_23B6D6E20();
  __swift_project_value_buffer(v3, qword_27E17A730);
  sub_23B6D68A4(a1, v15);
  v4 = sub_23B6D6E00();
  v5 = sub_23B6D71C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    sub_23B6D68A4(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
    v8 = sub_23B6D7060();
    v10 = v9;
    sub_23B6D683C(v15);
    v11 = sub_23B6BD12C(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B6BA000, v4, v5, "Unexpected hostConfiguration value: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA3EE0](v7, -1, -1);
    MEMORY[0x23EEA3EE0](v6, -1, -1);
  }

  else
  {

    sub_23B6D683C(v15);
  }

  return sub_23B6D683C(a1);
}

uint64_t sub_23B6D6544(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

id sub_23B6D65A8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_23B6D69F0();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_23B6D6660@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_23B6D669C(id *a1)
{
  v2 = *a1;
  [*v1 setExtensionIdentity_];
}

uint64_t sub_23B6D683C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6D68A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B6D6914()
{
  result = qword_27E179D08;
  if (!qword_27E179D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179D08);
  }

  return result;
}