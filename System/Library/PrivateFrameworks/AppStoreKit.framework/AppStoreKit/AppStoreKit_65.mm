double sub_1E1958954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1300B24(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E19589D8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  return PersonalizableModel.needsClientPersonalization.getter(v1, v2) & 1;
}

uint64_t sub_1E1958A18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1E1958A70(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v15 = *(v4 + 8);
  v15(v11, v3);
  v16 = sub_1E1AF5A6C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB1F90);
    v18 = 0;
  }

  else
  {
    v18 = sub_1E1AF59FC();
    (*(v17 + 8))(v14, v16);
  }

  sub_1E1AF381C();
  v19 = sub_1E1AF370C();
  v15(v8, v3);
  if (v19 == 2 || (v19 & 1) == 0)
  {

    v26 = sub_1E1AF39DC();
    (*(*(v26 - 8) + 8))(v29, v26);
    v15(a1, v3);
    return 0;
  }

  else
  {
    v20 = v28;
    sub_1E1AF381C();
    v21 = sub_1E1AF36EC();
    v23 = v22;
    v24 = sub_1E1AF39DC();
    (*(*(v24 - 8) + 8))(v29, v24);
    v15(a1, v3);
    v15(v20, v3);
    if (v23)
    {
      return v18;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t sub_1E1958E48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1E1958E68()
{
  result = qword_1EE1F63C8[0];
  if (!qword_1EE1F63C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F63C8);
  }

  return result;
}

unint64_t sub_1E1958EBC()
{
  result = qword_1EE1E9938[0];
  if (!qword_1EE1E9938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E9938);
  }

  return result;
}

unint64_t sub_1E1958F10()
{
  result = qword_1EE1DEE00;
  if (!qword_1EE1DEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DEE00);
  }

  return result;
}

unint64_t sub_1E1958F64()
{
  result = qword_1EE1E6D20[0];
  if (!qword_1EE1E6D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E6D20);
  }

  return result;
}

unint64_t sub_1E1958FB8()
{
  result = qword_1EE1DB1B0[0];
  if (!qword_1EE1DB1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DB1B0);
  }

  return result;
}

unint64_t sub_1E195900C()
{
  result = qword_1ECEBB600;
  if (!qword_1ECEBB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB600);
  }

  return result;
}

unint64_t sub_1E1959064()
{
  result = qword_1ECEBB610;
  if (!qword_1ECEBB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB610);
  }

  return result;
}

unint64_t sub_1E19590BC()
{
  result = qword_1ECEBB618;
  if (!qword_1ECEBB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB618);
  }

  return result;
}

uint64_t type metadata accessor for Shelf()
{
  result = qword_1EE1E5468;
  if (!qword_1EE1E5468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1959214()
{
  sub_1E19594EC(319, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1E19594EC(319, &qword_1EE1FADB8, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1E19594EC(319, &qword_1EE1E39F0, MEMORY[0x1E69AB1E8]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E19594EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E1959590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E19595E8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E19599D0;
  }

  else
  {

    v2 = sub_1E1959704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1959704()
{
  v1 = v0[5];
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E19597B4;
  v4 = v0[8];

  return sub_1E1959AE8(v4, v2);
}

uint64_t sub_1E19597B4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E1959A48;
  }

  else
  {
    v2 = sub_1E19598C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E19598C8()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648);
  (*(v6 + 16))(v7, v4, v5);
  sub_1E1AF343C();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E19599D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1959A48()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E1959AE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6D0);
  v3[5] = swift_task_alloc();
  v5 = sub_1E1AF340C();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6D8);
  v3[9] = swift_task_alloc();
  v3[10] = *(a2 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_1E1AF33CC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1959CD8, 0, 0);
}

uint64_t sub_1E1959CD8()
{
  v1 = v0[14];
  v2 = *(v0[10] + 16);
  v2(v0[12], v0[4], v0[3]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    sub_1E1AF33BC();
    (*(v6 + 8))(v0[15], v0[13]);

    v9 = v0[1];
LABEL_8:

    return v9();
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[3];
  v4(v11, 1, 1, v0[13]);
  sub_1E1308058(v11, &qword_1ECEBB6D8);
  v2(v10, v13, v14);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v23 = v0[5];
    v16(v23, 1, 1, v0[6]);
    sub_1E1308058(v23, &qword_1ECEBB6D0);
    sub_1E195B384();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];
    goto LABEL_8;
  }

  v18 = v0[7];
  v17 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  v16(v20, 0, 1, v19);
  (*(v18 + 32))(v17, v20, v19);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_1E195A034;
  v22 = v0[2];

  return MEMORY[0x1EEE15D50](v22);
}

uint64_t sub_1E195A034()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1E195A20C;
  }

  else
  {
    v2 = sub_1E195A148;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E195A148()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E195A20C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E195A2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB678);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v9, v8, &qword_1ECEBB678);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DD8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1E1308058(v8, &qword_1ECEBB678);
  v13[1] = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_bundlePipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB680);
  sub_1E1302CD4(&qword_1EE1E3AF8, &qword_1ECEBB650);
  v13[2] = sub_1E1AF3D7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB688);
  sub_1E1302CD4(&qword_1EE1E3AD0, &qword_1ECEBB688);
  sub_1E1AF3D5C();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1E13619D8(v5, v1 + v9, &qword_1ECEBB678);
  return swift_endAccess();
}

uint64_t sub_1E195A5E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v48 = a2;
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF356C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF357C();
  v14 = sub_1E1AF339C();
  if (v2)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v46 = v11;
  v47 = v10;
  v17 = v52;
  if (v15 >> 60 == 15)
  {
    v18 = sub_1E1AF355C();
    v20 = v19;
    sub_1E195B330();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    return (*(v46 + 8))(v13, v47);
  }

  else
  {
    v22 = v14;
    v23 = v15;
    sub_1E14708A0(v14, v15);
    v44 = v22;
    v45 = v23;
    sub_1E1AF36CC();
    v24 = type metadata accessor for JSJetpackIndex(0);
    (*(v4 + 16))(v6, v17, v3);
    v25 = sub_1E18E38E0(v9, v6);
    v52 = v24;
    v26 = ASKBuildTypeGetCurrent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E1B03760;
    *(v27 + 32) = @"debug";
    *(v27 + 40) = @"convergence";
    *(v27 + 48) = @"internal";
    type metadata accessor for BuildType(0);
    v43 = v25;
    v28 = @"debug";
    v29 = @"convergence";
    v30 = @"internal";
    v31 = sub_1E1AF620C();

    LODWORD(v23) = ASKBuildTypeIsAnyOf(v26, v31);

    v32 = v43;
    v34 = v46;
    v33 = v47;
    if (v23)
    {
      v35 = *(v43 + OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_properties);
      if (*(v35 + 16) && (v36 = sub_1E13018F8(0x6E6F6973726576, 0xE700000000000000), (v37 & 1) != 0))
      {
        sub_1E137A5C4(*(v35 + 56) + 32 * v36, v51);
        v38 = swift_dynamicCast();
        v39 = v38 == 0;
        if (v38)
        {
          v40 = v49;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = v50;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      sub_1E1661FE4(v40, v41);
    }

    v42 = v48;
    v48[3] = v52;
    v42[4] = &off_1F5C555C8;
    sub_1E1337F64(v44, v45);
    *v42 = v32;
    return (*(v34 + 8))(v13, v33);
  }
}

uint64_t sub_1E195AA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v9, v8, &qword_1ECEBB660);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DD0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1E1308058(v8, &qword_1ECEBB660);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB650);
  sub_1E1302CD4(&qword_1EE1E3AF8, &qword_1ECEBB650);
  v16 = sub_1E1AF3D7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB668);
  sub_1E1302CD4(&qword_1EE1E3AC8, &qword_1ECEBB668);
  v12 = v15;
  sub_1E1AF3D5C();

  (*(v11 + 16))(v5, v12, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1E13619D8(v5, v1 + v9, &qword_1ECEBB660);
  return swift_endAccess();
}

uint64_t sub_1E195AD9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E1AF356C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648);
  sub_1E1AF354C();
  v7 = sub_1E1AF339C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v8 >> 60 == 15)
  {
    v9 = sub_1E1AF355C();
    v11 = v10;
    sub_1E195B330();
    swift_allocError();
    *v12 = v9;
    v12[1] = v11;
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v7;
  v15 = v6;
  v16 = v8;
  result = (*(v4 + 8))(v15, v3);
  *a1 = v14;
  a1[1] = v16;
  return result;
}

uint64_t sub_1E195AF1C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648);
  sub_1E1AF33AC();
  result = sub_1E1AF34FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E195AF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648) + 48);
  v5 = sub_1E1AF33AC();
  v6 = MEMORY[0x1E69AAE48];
  a2[3] = v5;
  a2[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, a1 + v4, v5);
}

uint64_t sub_1E195B028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1E134FD1C(a1, v9, &qword_1ECEBB690);
  v5 = v10;
  v6 = v11;
  sub_1E1308EC0(v9, v12);
  v7 = *(a2 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_virtualMachine);
  sub_1E16D1430(v5, v6, v12, v7, a3);
  __swift_destroy_boxed_opaque_existential_1(v12);

  return sub_1E14283DC(v5, v6);
}

uint64_t sub_1E195B0E0()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_jetpackLoader;
  v2 = sub_1E1AF338C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_bundlePipeline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB650);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline, &qword_1ECEBB678);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline, &qword_1ECEBB660);

  return swift_deallocClassInstance();
}

uint64_t sub_1E195B250()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DD8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1E195A2CC(&v6 - v2);
  v4 = sub_1E1AF412C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_1E195B330()
{
  result = qword_1ECEBB670;
  if (!qword_1ECEBB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB670);
  }

  return result;
}

unint64_t sub_1E195B384()
{
  result = qword_1ECEBB6E0;
  if (!qword_1ECEBB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB6E0);
  }

  return result;
}

unint64_t sub_1E195B400()
{
  result = qword_1ECEBB6E8;
  if (!qword_1ECEBB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB6E8);
  }

  return result;
}

uint64_t sub_1E195B468(uint64_t a1)
{
  sub_1E1AF0C9C();
  v2 = sub_1E1AF2C9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_1E1AF421C();
  sub_1E1AF0D7C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t type metadata accessor for FlowBackActionImplementation()
{
  result = qword_1ECEBB6F8;
  if (!qword_1ECEBB6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E195B604()
{
  sub_1E195B670();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E195B670()
{
  if (!qword_1ECEBB708)
  {
    sub_1E1AF421C();
    v0 = sub_1E1AF0D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEBB708);
    }
  }
}

unint64_t sub_1E195B6CC()
{
  result = qword_1ECEBA370;
  if (!qword_1ECEBA370)
  {
    type metadata accessor for FlowBackAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA370);
  }

  return result;
}

uint64_t sub_1E195B724(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6F0);

  return MEMORY[0x1EEE5F798](v3 + v4, a2, v5);
}

id ArtworkLoaderURLSession.__allocating_init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id ArtworkLoaderURLSession.init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, sel_initWithConfiguration_delegate_delegateQueue_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

id ArtworkLoaderURLSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E195B928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB320);
  __swift_allocate_value_buffer(v0, qword_1EE216218);
  __swift_project_value_buffer(v0, qword_1EE216218);
  return sub_1E1AF39AC();
}

uint64_t sub_1E195B9A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5E8);
  __swift_allocate_value_buffer(v0, qword_1EE2161B8);
  __swift_project_value_buffer(v0, qword_1EE2161B8);
  return sub_1E1AF39AC();
}

uint64_t sub_1E195BA18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F0);
  __swift_allocate_value_buffer(v0, qword_1EE216200);
  __swift_project_value_buffer(v0, qword_1EE216200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F8);
  return sub_1E1AF39AC();
}

uint64_t sub_1E195BAA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB630);
  __swift_allocate_value_buffer(v0, qword_1EE2154C8);
  __swift_project_value_buffer(v0, qword_1EE2154C8);
  type metadata accessor for DeviceType(0);
  return sub_1E1AF39AC();
}

uint64_t sub_1E195BB24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5690);
  __swift_allocate_value_buffer(v0, qword_1EE2161E8);
  __swift_project_value_buffer(v0, qword_1EE2161E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
  return sub_1E1AF39AC();
}

AppStoreKit::GameCenter::GameCategoryFilter_optional __swiftcall GameCenter.GameCategoryFilter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static GameCenter.withLocalPlayer(on:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(a1, v6);

  return sub_1E19690CC(v8, a2, a3, v3, v6, v7);
}

uint64_t static GameCenter.fetchGameInfo(for:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(a3, v6);

  return sub_1E19694AC(a1, a2, v8, v3, v6, v7);
}

uint64_t sub_1E195BCDC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E1AF07CC();
    return a2;
  }

  return result;
}

uint64_t sub_1E195BD70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return sub_1E1AF5DFC();
  }
}

uint64_t GameCenter.GameCategoryFilter.rawValue.getter()
{
  v1 = 0x656461637261;
  if (*v0 != 1)
  {
    v1 = 0x64616372616E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1E195BE58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656461637261;
  if (v2 != 1)
  {
    v4 = 0x64616372616E6F6ELL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (*a2 != 1)
  {
    v8 = 0x64616372616E6F6ELL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E195BF54()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E195BFF0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E195C078()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E195C11C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (v2 != 1)
  {
    v5 = 0x64616372616E6F6ELL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E195C174()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF323C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1EE1E0C90 = result;
  return result;
}

uint64_t sub_1E195C3D4()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF323C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1ECEBB718 = result;
  return result;
}

void sub_1E195C634()
{
  sub_1E13006E4(0, qword_1EE1D2550);
  v0 = static GKLocalPlayer.currentAcknowledgedPlayer.getter();
  sub_1E1AF586C();
}

void sub_1E195C6F4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  if (a1)
  {
    v29[1] = a4;
    v30 = a5;
    v32 = a2;
    sub_1E1AF483C();
    v16 = a1;
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v17 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    v18 = [objc_opt_self() proxyForPlayer_];
    v29[0] = [v18 gameServicePrivate];

    v31 = v16;
    v19 = [v16 internal];
    v20 = [v19 playerID];

    if (!v20)
    {
      sub_1E1AF5DFC();
      v20 = sub_1E1AF5DBC();
    }

    sub_1E13006E4(0, &qword_1EE1E31F0);
    v21 = sub_1E1AF6CEC();
    v22 = sub_1E1AF6CEC();
    sub_1E1300B24(v30, v34);
    (*(v10 + 16))(v12, v15, v9);
    v23 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1E1308EC0(v34, v25 + 16);
    (*(v10 + 32))(v25 + v23, v12, v9);
    *(v25 + v24) = v32;
    aBlock[4] = sub_1E196AE08;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E195CC04;
    aBlock[3] = &block_descriptor_107_1;
    v26 = _Block_copy(aBlock);

    [v29[0] getGamesPlayedSummaries:v20 limit:v21 withinSecs:v22 handler:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_1E14BFDDC();
    v27 = swift_allocError();
    *v28 = 7;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 4;
    sub_1E1AF584C();
  }
}

void sub_1E195CAF4(uint64_t a1, void *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v3 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a2)
  {
    sub_1E14BFDDC();
    v4 = swift_allocError();
    *v5 = a2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 3;
    v6 = a2;
    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

id sub_1E195CC18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1E1AF71CC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    sub_1E14BFDDC();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E68FFD80](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v7 + 32);
LABEL_6:
    *a4 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1E195CD30(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (!a2)
  {
    if (a1 >> 62)
    {
      if (sub_1E1AF71CC() >= 1)
      {
        goto LABEL_8;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_8:
      sub_1E1AF586C();
      return;
    }

    sub_1E14BFDDC();
    v13 = swift_allocError();
    *v14 = a5;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;

    sub_1E1AF584C();
    v12 = v13;
    goto LABEL_3;
  }

  sub_1E14BFDDC();
  v9 = swift_allocError();
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 3;
  v11 = a2;
  sub_1E1AF584C();
  v12 = v9;
LABEL_3:
}

void sub_1E195CEDC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  sub_1E13006E4(0, a4);
  v6 = sub_1E1AF621C();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1E195CF84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 296) = a4;
  v7 = sub_1E1AEFEAC();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v8 = sub_1E1AF07CC();
  *(v6 + 208) = v8;
  *(v6 + 216) = *(v8 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v9 = sub_1E1AF057C();
  *(v6 + 240) = v9;
  *(v6 + 248) = *(v9 - 8);
  *(v6 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7C8);
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E195D1E4, 0, 0);
}

uint64_t sub_1E195D1E4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  (*(v2 + 104))(v4, **(&unk_1E870FC28 + *(v0 + 296)), v1);
  (*(v2 + 32))(v3, v4, v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_1E195D300;
  v6 = *(v0 + 264);

  return MEMORY[0x1EEE0A100](0, 0, v6);
}

uint64_t sub_1E195D300(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[33];
  if (v1)
  {
    sub_1E1308058(v5, &unk_1ECEBB7C8);
    v6 = sub_1E195DA00;
  }

  else
  {
    v4[36] = a1;
    sub_1E1308058(v5, &unk_1ECEBB7C8);
    v6 = sub_1E195D468;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E195D468()
{
  result = sub_1E195BCDC(*(v0 + 120), *(v0 + 288));
  v45 = v3;
  v46 = v4 >> 1;
  v5 = (v4 >> 1) - v2;
  if (__OFSUB__(v4 >> 1, v2))
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v2;
    v51 = MEMORY[0x1E69E7CC0];
    result = sub_1E1AF70EC();
    if (v5 < 0)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = *(v0 + 216);
    v42 = (v8 + 8);
    v40 = (*(v0 + 144) + 8);
    v41 = (v8 + 32);
    v9 = v46;
    if (v7 > v46)
    {
      v9 = v7;
    }

    v43 = *(v0 + 216);
    v44 = v9;
    v10 = &unk_1ECEB5670;
    while (v44 != v7)
    {
      v25 = *(v0 + 224);
      v24 = *(v0 + 232);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v28 = v10;
      v29 = *(v0 + 184);
      v30 = *(v0 + 192);
      v47 = *(v0 + 176);
      v48 = *(v0 + 168);
      v49 = *(v0 + 160);
      v50 = v7;
      v31 = *(v43 + 16);
      v31(v24, v45 + *(v43 + 72) * v7, v26);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      v31(v25, v24, v26);
      v32 = sub_1E1AF3E1C();
      v33 = *(*(v32 - 8) + 56);
      v33(v27, 1, 1, v32);
      v34 = v30;
      v10 = v28;
      v33(v34, 1, 1, v32);
      v33(v29, 1, 1, v32);
      v33(v47, 1, 1, v32);
      v33(v48, 1, 1, v32);
      v35 = sub_1E1AF46DC();
      (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
      type metadata accessor for GameCenterActivityFeedCard();
      v36 = swift_allocObject();
      sub_1E134FD1C(v0 + 16, v0 + 56, v28);
      v37 = *(v0 + 232);
      v38 = *(v0 + 208);
      if (*(v0 + 80))
      {
        sub_1E1308058(v0 + 16, v28);
        (*v42)(v37, v38);
        v52 = *(v0 + 56);
        v53 = *(v0 + 72);
        v54 = *(v0 + 88);
      }

      else
      {
        v11 = *(v0 + 152);
        v12 = *(v0 + 136);
        sub_1E1AEFE9C();
        v13 = sub_1E1AEFE7C();
        v15 = v14;
        (*v40)(v11, v12);
        *(v0 + 96) = v13;
        *(v0 + 104) = v15;
        sub_1E1AF6F6C();
        sub_1E1308058(v0 + 16, v10);
        (*v42)(v37, v38);
        sub_1E1308058(v0 + 56, v10);
      }

      v16 = *(v0 + 224);
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 160);
      *(v36 + 16) = v52;
      *(v36 + 32) = v53;
      *(v36 + 48) = v54;
      (*v41)(v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data, v16, v17);
      sub_1E137F600(v18, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
      sub_1E137F600(v19, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
      sub_1E137F600(v20, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
      sub_1E137F600(v21, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
      sub_1E137F600(v22, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
      sub_1E137F600(v23, v36 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);
      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      result = sub_1E1AF70CC();
      ++v7;
      if (v46 == v50 + 1)
      {
        v6 = v51;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  *(v0 + 112) = v6;
  sub_1E1AF586C();
  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1E195DA00()
{
  v1 = *(v0 + 280);
  sub_1E1AF584C();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1E195DB00(void *a1)
{
  sub_1E14BFDDC();
  v2 = swift_allocError();
  *v3 = a1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  v4 = a1;
  sub_1E1AF584C();
}

uint64_t static GameCenter.fetchGameRecord(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB728);
  v6 = sub_1E1AF588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  sub_1E1969A54(v7);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v15 = sub_1E1AF470C();
  v16 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v14);

  sub_1E1AF46FC();
  sub_1E13006E4(0, &qword_1ECEBB738);
  sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v6;
  v10 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v11 = a1;
  v12 = sub_1E1AF68EC();
  v15 = v10;
  v16 = MEMORY[0x1E69AB720];
  v14[0] = v12;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6;
}

void sub_1E195DD90(void *a1, uint64_t a2)
{
  v2 = [objc_opt_self() gameRecordForPlayer:a2 game:*a1];
  sub_1E1AF586C();
}

uint64_t sub_1E195DE04()
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = sub_1E1AF75AC();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  sub_1E1AF38BC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return sub_1E1AF584C();
}

void sub_1E195DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E1B02CC0;
    *(v7 + 32) = a4;
    *(v7 + 40) = a5;

    sub_1E1969A54(v7);

    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v14 = sub_1E1AF470C();
    v15 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_0(v13);

    sub_1E1AF46FC();
    sub_1E13006E4(0, &qword_1ECEBB738);
    sub_1E1AF57DC();

    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_retain_n();
    v10 = sub_1E1AF68EC();
    v14 = v9;
    v15 = MEMORY[0x1E69AB720];
    v13[0] = v10;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1E14BFDDC();
    v11 = swift_allocError();
    *v12 = 7;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 4;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E195E1F8()
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = sub_1E1AF75AC();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  sub_1E1AF38BC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return sub_1E1AF584C();
}

void sub_1E195E3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (a1)
  {
    sub_1E1AF483C();
    v43 = a2;
    v42 = a1;
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v41 = a6;
    v17 = v16;
    v18 = sub_1E1AF482C();
    v40 = v16;
    sub_1E1AF0F3C();

    v44 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E1B02CC0;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    v37 = a4;

    v39 = sub_1E1AF620C();

    v20 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v20, v17, v11);
    sub_1E1300B24(v45, v47);
    v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = v12;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = a3;
    v26 = v20;
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v21, v26, v11);
    v28 = (v27 + v22);
    v29 = v37;
    *v28 = v45;
    v28[1] = v29;
    v30 = v42;
    *(v27 + v23) = v43;
    *(v27 + v24) = v30;
    sub_1E1308EC0(v47, v27 + v25);
    *(v27 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_1E196B078;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E195CEC8;
    aBlock[3] = &block_descriptor_116_0;
    v31 = _Block_copy(aBlock);
    v32 = v30;

    v33 = v39;
    [v44 loadGamesWithBundleIDs:v39 withCompletionHandler:v31];
    _Block_release(v31);

    (*(v38 + 8))(v40, v11);
  }

  else
  {
    sub_1E14BFDDC();
    v34 = swift_allocError();
    *v35 = 7;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 4;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E195E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v31 = a6;
  v32 = a7;
  v29 = a1;
  v30 = a5;
  v28 = a4;
  v10 = sub_1E1AF0F7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB15E8 != -1)
  {
    swift_once();
  }

  v27[1] = qword_1ECEBB718;
  (*(v11 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  sub_1E1300B24(a8, v33);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v14, v13, v10);
  v20 = v28;
  *(v19 + v15) = v29;
  v21 = (v19 + v16);
  v23 = v30;
  v22 = v31;
  *v21 = v20;
  v21[1] = v23;
  *(v19 + v17) = v22;
  v24 = v32;
  *(v19 + v18) = v32;
  sub_1E1308EC0(v33, v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));

  v25 = v24;
  sub_1E1AF694C();
}

void sub_1E195E9B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v48 = a7;
  v50 = a3;
  v51 = a4;
  v49 = sub_1E1AF0F7C();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v13 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a2 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v47 = a5;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E68FFD80](0, a2);
      goto LABEL_6;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a2 + 32);
LABEL_6:
      v15 = v14;
      sub_1E1AF6A1C();
      v16 = sub_1E1AF482C();
      sub_1E1AF0F3C();

      v17 = objc_opt_self();
      v43 = a6;
      v18 = [v17 proxyForPlayer_];
      v46 = [v18 gameStatServicePrivate];

      v45 = [v15 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E1B02CC0;
      v20 = [a6 internal];
      *(v19 + 56) = sub_1E13006E4(0, &qword_1ECEBB7A8);
      *(v19 + 32) = v20;
      v44 = sub_1E1AF620C();

      sub_1E1300B24(v48, v58);
      v21 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v49;
      (*(v11 + 16))(v21, a1, v49);
      v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      sub_1E1308EC0(v58, v27 + 16);
      (*(v11 + 32))(v27 + v23, v21, v22);
      *(v27 + v24) = v47;
      v28 = v43;
      *(v27 + v25) = v43;
      v29 = (v27 + v26);
      v30 = v51;
      *v29 = v50;
      v29[1] = v30;
      *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
      v56 = sub_1E196B218;
      v57 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1E195FD04;
      v55 = &block_descriptor_125;
      v31 = _Block_copy(&aBlock);

      v32 = v28;
      v33 = v15;

      v34 = v45;
      v35 = v44;
      [v46 getAchievementsForGameDescriptor:v45 players:v44 handler:v31];
      _Block_release(v31);

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_1EE1D27D8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v36 = sub_1E1AF591C();
  __swift_project_value_buffer(v36, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v55 = MEMORY[0x1E69E6158];
  v38 = v50;
  v37 = v51;
  aBlock = v50;
  v53 = v51;

  sub_1E1AF38DC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1E1B02CC0;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;
  sub_1E14BFDDC();
  v40 = swift_allocError();
  *v41 = v39;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;

  sub_1E1AF584C();
}

uint64_t sub_1E195EFCC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v44 = a8;
  v41 = a6;
  v42 = a7;
  v35 = a2;
  v36 = a1;
  v38 = a5;
  v39 = a9;
  v11 = sub_1E1AF0F7C();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[4];
  v40 = a3[3];
  v43 = v15;
  v37 = __swift_project_boxed_opaque_existential_1Tm(a3, v40);
  (*(v12 + 16))(v14, a4, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v16, v14, v34);
  v23 = v35;
  *(v22 + v17) = v35;
  v24 = v39;
  *(v22 + v18) = v38;
  *(v22 + v19) = v36;
  v26 = v41;
  v25 = v42;
  *(v22 + v20) = v41;
  v27 = (v22 + v21);
  v28 = v44;
  *v27 = v25;
  v27[1] = v28;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v29 = v23;

  v30 = v26;

  v31 = v24;
  sub_1E1AF3FAC();
}

void sub_1E195F1D8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v92 = a8;
  v94 = a7;
  v93 = a6;
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v9 = sub_1E1AF05FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v17 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a2)
  {
    if (qword_1EE1D27D8 == -1)
    {
LABEL_3:
      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      swift_getErrorValue();
      v19 = sub_1E1AF75AC();
      *(&v107 + 1) = MEMORY[0x1E69E6158];
      *&v106 = v19;
      *(&v106 + 1) = v20;
      sub_1E1AF38DC();
      sub_1E1308058(&v106, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      sub_1E14BFDDC();
      v21 = swift_allocError();
      *v22 = a2;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 3;
      v23 = a2;
      sub_1E1AF584C();
      v24 = v21;
LABEL_23:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v89 = v10;
  v25 = v94;
  v90 = v12;
  v86 = v9;
  v91 = v16;
  v87 = v14;
  v88 = v13;
  v26 = [v97 internal];
  v27 = [v26 playerID];

  v28 = sub_1E1AF5DFC();
  v30 = v29;

  v31 = v96;
  if (!*(v96 + 16))
  {

    v35 = v25;
    goto LABEL_20;
  }

  v32 = sub_1E13018F8(v28, v30);
  v34 = v33;

  v35 = v25;
  if ((v34 & 1) == 0)
  {
LABEL_20:
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v48 = sub_1E1AF591C();
    v96 = __swift_project_value_buffer(v48, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v49 = [objc_opt_self() local];
    v50 = [v49 internal];

    v51 = [v50 &selRef_appCapabilities + 4];
    v52 = sub_1E1AF5DFC();
    v54 = v53;

    *(&v107 + 1) = MEMORY[0x1E69E6158];
    *&v106 = v52;
    *(&v106 + 1) = v54;
    sub_1E1AF38DC();
    sub_1E1308058(&v106, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v55 = [v97 internal];
    v56 = [v55 &selRef_appCapabilities + 4];

    v57 = sub_1E1AF5DFC();
    v59 = v58;

    sub_1E14BFDDC();
    v60 = swift_allocError();
    *v61 = v57;
    *(v61 + 8) = v59;
    *(v61 + 16) = v93;
    *(v61 + 24) = v35;
    *(v61 + 32) = 2;

    sub_1E1AF584C();
    v24 = v60;
    goto LABEL_23;
  }

  v36 = *(*(v31 + 56) + 8 * v32);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36 >> 62)
  {
    v38 = sub_1E1AF71CC();
    *&v106 = v37;
    a2 = sub_1E1AF71CC();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v106 = MEMORY[0x1E69E7CC0];
    a2 = v38;
  }

  v39 = v91;
  v40 = v90;
  v41 = v89;

  v42 = MEMORY[0x1E69E7CC0];
  v97 = v38;
  if (a2)
  {
    v43 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1E68FFD80](v43, v36);
      }

      else
      {
        if (v43 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v44 = *(v36 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v44 percentComplete];
      if (v47 == 100.0)
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++v43;
      if (v46 == a2)
      {
        v62 = v106;
        v39 = v91;
        v38 = v97;
        v40 = v90;
        v42 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v63 = v92;
  if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
  {
    v94 = sub_1E1AF71CC();

    if (v38)
    {
      goto LABEL_29;
    }

LABEL_43:

    goto LABEL_44;
  }

  v94 = *(v62 + 16);

  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_29:
  *&v106 = v42;
  sub_1E135CC00(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
    __break(1u);
    return;
  }

  v64 = 0;
  v42 = v106;
  v96 = v36 & 0xC000000000000001;
  v65 = v41;
  v66 = v86;
  v67 = v36;
  do
  {
    if (v96)
    {
      v68 = MEMORY[0x1E68FFD80](v64, v36);
    }

    else
    {
      v68 = *(v36 + 8 * v64 + 32);
    }

    v69 = v68;
    v70 = [objc_allocWithZone(MEMORY[0x1E69A0238]) initWithInternalRepresentation_];
    sub_1E1AF67EC();

    *&v106 = v42;
    v71 = v40;
    v73 = *(v42 + 16);
    v72 = *(v42 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_1E135CC00(v72 > 1, v73 + 1, 1);
      v42 = v106;
    }

    v64 = v64 + 1;
    *(v42 + 16) = v73 + 1;
    (*(v65 + 32))(v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v73, v71, v66);
    v40 = v71;
    v36 = v67;
  }

  while (v97 != v64);

  v39 = v91;
  v63 = v92;
  v38 = v97;
LABEL_44:
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v74 = [v63 bundleIdentifier];
  v75 = sub_1E1AF5DFC();
  v77 = v76;

  type metadata accessor for AchievementSummary();
  v78 = swift_allocObject();
  *(v78 + 80) = 0u;
  *(v78 + 96) = 0u;
  sub_1E134FD1C(&v106, &v100, &unk_1ECEB5670);
  v79 = v88;
  v80 = v87;
  if (*(&v101 + 1))
  {
    v103 = v100;
    v104 = v101;
    v105 = v102;
  }

  else
  {
    sub_1E1AEFE9C();
    v81 = sub_1E1AEFE7C();
    v83 = v82;
    (*(v80 + 8))(v39, v79);
    v98 = v81;
    v99 = v83;
    sub_1E1AF6F6C();
    sub_1E1308058(&v100, &unk_1ECEB5670);
  }

  sub_1E1308058(&v106, &unk_1ECEB5670);
  v84 = v104;
  *(v78 + 112) = v103;
  *(v78 + 128) = v84;
  *(v78 + 144) = v105;
  *(v78 + 16) = v75;
  *(v78 + 24) = v77;
  *(v78 + 32) = v94;
  *(v78 + 40) = v38;
  *(v78 + 48) = 0;
  *(v78 + 56) = 0xE000000000000000;
  *(v78 + 64) = v42;
  *(v78 + 72) = 0;
  *&v106 = v78;
  sub_1E1AF586C();
}

void sub_1E195FD04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7B0);
  v5 = sub_1E1AF5C7C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E195FDC0(unint64_t *a1, int a2, uint64_t a3)
{
  v54 = a3;
  LODWORD(v61) = a2;
  v53 = sub_1E1AF0F7C();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v50 = v7;
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v65 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {
    v51 = v5;
    if (i)
    {
      v5 = 0;
      v59 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = v6 & 0xC000000000000001;
      v57 = v6;
      v10 = v6 + 32;
      v58 = *MEMORY[0x1E69A0228];
      v6 = 40;
      while (1)
      {
        if (v60)
        {
          v11 = MEMORY[0x1E68FFD80](v5, v57);
        }

        else
        {
          if (v5 >= *(v59 + 16))
          {
            goto LABEL_48;
          }

          v11 = *(v10 + 8 * v5);
        }

        v12 = v11;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (!v61)
        {
          break;
        }

        if (v61 == 1)
        {
          if ([v11 isArcade])
          {
            break;
          }
        }

        else if (([v11 isArcade] & 1) == 0)
        {
          break;
        }

LABEL_6:
        if (v5 == i)
        {
          v6 = v65;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_52;
        }
      }

      v14 = [v12 compatiblePlatforms];
      v15 = sub_1E1AF659C();

      v62[0] = sub_1E1AF5DFC();
      v62[1] = v16;
      sub_1E1AF6F6C();
      if (*(v15 + 16) && (v17 = sub_1E1AF6F2C(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          sub_1E134E724(*(v15 + 48) + 40 * v19, v62);
          v21 = MEMORY[0x1E68FFC60](v62, v63);
          sub_1E134B88C(v62);
          if (v21)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_1E134B88C(v63);
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
LABEL_5:

        sub_1E134B88C(v63);
      }

      goto LABEL_6;
    }

    v6 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_27:

    v22 = *(v6 + 16);
    v23 = &unk_1E1B02000;
    if (!v22)
    {
      goto LABEL_53;
    }

LABEL_29:
    v24 = 0;
    v60 = v6 & 0xC000000000000001;
    v55 = MEMORY[0x1E69E7CC0];
    v56 = v23[205];
    v58 = v22;
    v59 = v6;
LABEL_30:
    v25 = v24;
    while (1)
    {
      if (v60)
      {
        v26 = MEMORY[0x1E68FFD80](v25, v6);
      }

      else
      {
        if (v25 >= *(v6 + 16))
        {
          goto LABEL_50;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [v26 adamID];
      if (v28)
      {
        v37 = v28;
        v38 = [v28 stringValue];
        v39 = sub_1E1AF5DFC();
        v41 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1E130C06C(0, *(v55 + 2) + 1, 1, v55);
        }

        v5 = *(v55 + 2);
        v42 = *(v55 + 3);
        if (v5 >= v42 >> 1)
        {
          v55 = sub_1E130C06C((v42 > 1), v5 + 1, 1, v55);
        }

        v43 = v55;
        *(v55 + 2) = v5 + 1;
        v44 = &v43[16 * v5];
        *(v44 + 4) = v39;
        *(v44 + 5) = v41;
        if (v24 != v22)
        {
          goto LABEL_30;
        }

        goto LABEL_54;
      }

      v61 = v25 + 1;
      if (qword_1EE1D27D8 != -1)
      {
        swift_once();
      }

      v29 = sub_1E1AF591C();
      __swift_project_value_buffer(v29, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      v30 = *(sub_1E1AF38EC() - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v56;
      v5 = v32 + v31;
      sub_1E1AF382C();
      v33 = [v27 bundleID];
      v34 = sub_1E1AF5DFC();
      v36 = v35;

      v64 = MEMORY[0x1E69E6158];
      v63[0] = v34;
      v63[1] = v36;
      sub_1E1AF38BC();
      sub_1E1308058(v63, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      ++v25;
      v22 = v58;
      v6 = v59;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
  v22 = sub_1E1AF71CC();
  v23 = &unk_1E1B02000;
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_53:
  v55 = MEMORY[0x1E69E7CC0];
LABEL_54:

  sub_1E1AF6A0C();
  v45 = sub_1E1AF482C();
  v46 = v51;
  sub_1E1AF0F3C();

  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v47 = sub_1E1AF591C();
  __swift_project_value_buffer(v47, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  v48 = v55;
  v63[0] = v55;

  sub_1E1AF38BC();
  sub_1E1308058(v63, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v63[0] = v48;
  sub_1E1AF586C();
  (*(v52 + 8))(v46, v53);
}

uint64_t sub_1E1960644()
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = sub_1E1AF75AC();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  sub_1E1AF38BC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return sub_1E1AF584C();
}

uint64_t sub_1E1960800()
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  return sub_1E1AF586C();
}

void sub_1E1960968(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &aBlock[-1] - v11;
  if (a1)
  {
    sub_1E1AF483C();
    v24 = a2;
    v13 = a1;
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v14 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    v15 = [objc_opt_self() proxyForPlayer_];
    v16 = [v15 gameStatServicePrivate];

    sub_1E1300B24(a3, v26);
    (*(v7 + 16))(v9, v12, v6);
    v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_1E1308EC0(v26, v19 + 16);
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = v24;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
    aBlock[4] = sub_1E196A9DC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1962890;
    aBlock[3] = &block_descriptor_76_1;
    v20 = _Block_copy(aBlock);
    v21 = v13;

    [v16 getReengagementAchievement_];
    _Block_release(v20);

    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_1E14BFDDC();
    v22 = swift_allocError();
    *v23 = 7;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 4;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E1960CC0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = a7;
  v34 = a2;
  v35 = a6;
  v31 = a3;
  v32 = a1;
  v9 = sub_1E1AF0F7C();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[4];
  v36 = a4[3];
  v38 = v13;
  v33 = __swift_project_boxed_opaque_existential_1Tm(a4, v36);
  (*(v10 + 16))(v12, a5, v9);
  sub_1E1300B24(a4, v39);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v14, v12, v30);
  v22 = v31;
  v21 = v32;
  *(v20 + v15) = v31;
  *(v20 + v16) = v35;
  *(v20 + v17) = v21;
  v23 = v34;
  *(v20 + v18) = v34;
  v24 = v37;
  *(v20 + v19) = v37;
  sub_1E1308EC0(v39, v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v22;
  v26 = v23;
  v27 = v24;

  v28 = v21;
  sub_1E1AF3FAC();
}

void sub_1E1960EC8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a6;
  v65 = a5;
  v66 = a4;
  v70 = a3;
  v69 = sub_1E1AF591C();
  v64 = *(v69 - 1);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v14 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a2)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = sub_1E1AF75AC();
    v74 = MEMORY[0x1E69E6158];
    aBlock = v15;
    v72 = v16;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    sub_1E14BFDDC();
    v17 = swift_allocError();
    *v18 = a2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    v19 = a2;
    sub_1E1AF584C();
    v20 = v17;
  }

  else
  {
    v61 = v13;
    v21 = v65;
    v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v67;
    v63 = v11;
    v23 = v64;
    v24 = v68;
    v25 = v66;
    if (v66 && v65)
    {
      v69 = v66;
      v26 = v21;
      v64 = v26;
      sub_1E1AF6A1C();
      v27 = sub_1E1AF482C();
      sub_1E1AF0F3C();

      v28 = [objc_opt_self() proxyForPlayer_];
      v66 = [v28 gameStatServicePrivate];

      v65 = [v26 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1E1B02CC0;
      v30 = [v24 internal];
      *(v29 + 56) = sub_1E13006E4(0, &qword_1ECEBB7A8);
      *(v29 + 32) = v30;
      v60 = sub_1E1AF620C();

      sub_1E1300B24(v22, v77);
      v31 = v12;
      v32 = v62;
      v33 = a1;
      v34 = v63;
      (*(v12 + 16))(v62, v33, v63);
      v35 = (*(v12 + 80) + 56) & ~*(v12 + 80);
      v36 = (v61 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      sub_1E1308EC0(v77, v39 + 16);
      (*(v31 + 32))(v39 + v35, v32, v34);
      *(v39 + v36) = v70;
      v40 = v24;
      *(v39 + v37) = v24;
      v41 = v64;
      *(v39 + v38) = v64;
      v42 = v69;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
      v75 = sub_1E196AB68;
      v76 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = sub_1E195FD04;
      v74 = &block_descriptor_85_0;
      v43 = _Block_copy(&aBlock);
      v44 = v42;
      v45 = v41;

      v46 = v40;

      v47 = v65;
      v48 = v60;
      [v66 getAchievementsForGameDescriptor:v65 players:v60 handler:v43];
      _Block_release(v43);

      swift_unknownObjectRelease();
      return;
    }

    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v49 = v69;
    v50 = __swift_project_value_buffer(v69, qword_1EE2154B0);
    v23[2](v10, v50, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    if (v21)
    {
      v51 = sub_1E13006E4(0, &unk_1ECEBB798);
      v52 = v21;
    }

    else
    {
      v52 = 0;
      v51 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v52;
    v74 = v51;
    v53 = v21;
    sub_1E1AF38DC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    if (v25)
    {
      v54 = sub_1E13006E4(0, &qword_1ECEBB790);
      v55 = v25;
    }

    else
    {
      v55 = 0;
      v54 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v55;
    v74 = v54;
    v56 = v25;
    sub_1E1AF38DC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (v23[1])(v10, v49);
    sub_1E14BFDDC();
    v57 = swift_allocError();
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 4;
    sub_1E1AF584C();
    v20 = v57;
  }
}

uint64_t sub_1E19617C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v36 = a5;
  v33 = a2;
  v34 = a1;
  v10 = sub_1E1AF0F7C();
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[4];
  v37 = a3[3];
  v40 = v14;
  v35 = __swift_project_boxed_opaque_existential_1Tm(a3, v37);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v15, v13, v32);
  v22 = v33;
  v23 = v34;
  *(v21 + v16) = v33;
  *(v21 + v17) = v36;
  *(v21 + v18) = v23;
  v25 = v38;
  v24 = v39;
  *(v21 + v19) = v38;
  *(v21 + v20) = v24;
  v26 = v41;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v27 = v22;

  v28 = v25;
  v29 = v24;
  v30 = v26;
  sub_1E1AF3FAC();
}

void sub_1E19619BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v111 = a7;
  v113 = a6;
  v116 = a5;
  v112 = a4;
  v115 = a3;
  v118 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v107 - v9);
  v11 = sub_1E1AEFEAC();
  v110 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF05FC();
  v119 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v107 - v18;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v20 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v118 = a2;
  if (a2)
  {
    if (qword_1EE1D27D8 != -1)
    {
LABEL_48:
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v22 = v118;
    swift_getErrorValue();
    v23 = sub_1E1AF75AC();
    *(&v129 + 1) = MEMORY[0x1E69E6158];
    *&v128 = v23;
    *(&v128 + 1) = v24;
    sub_1E1AF38DC();
    sub_1E1308058(&v128, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    sub_1E14BFDDC();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 3;
    v27 = v22;
    sub_1E1AF584C();
    v28 = v25;
    goto LABEL_23;
  }

  v108 = v10;
  v118 = v13;
  v114 = v11;
  v109 = v16;
  v117 = v14;
  v107 = v8;
  v29 = [v116 internal];
  v30 = [v29 playerID];

  v31 = sub_1E1AF5DFC();
  v33 = v32;

  v34 = v112;
  v35 = v113;
  if (!*(v112 + 16))
  {

    goto LABEL_20;
  }

  v36 = sub_1E13018F8(v31, v33);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_20:
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v54 = sub_1E1AF591C();
    __swift_project_value_buffer(v54, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v55 = [objc_opt_self() local];
    v56 = [v55 internal];

    v57 = [v56 playerID];
    v58 = sub_1E1AF5DFC();
    v60 = v59;

    *(&v129 + 1) = MEMORY[0x1E69E6158];
    *&v128 = v58;
    *(&v128 + 1) = v60;
    sub_1E1AF38DC();
    sub_1E1308058(&v128, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v61 = [v116 &selRef_setPreferredFramesPerSecond_];
    v62 = [v61 playerID];

    v63 = sub_1E1AF5DFC();
    v65 = v64;

    v66 = [v113 bundleIdentifier];
    v67 = sub_1E1AF5DFC();
    v69 = v68;

    sub_1E14BFDDC();
    v70 = swift_allocError();
    *v71 = v63;
    *(v71 + 8) = v65;
    *(v71 + 16) = v67;
    *(v71 + 24) = v69;
    *(v71 + 32) = 2;
    sub_1E1AF584C();
    v28 = v70;
LABEL_23:

    return;
  }

  v39 = *(*(v34 + 56) + 8 * v36);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39 >> 62)
  {
    v41 = sub_1E1AF71CC();
    *&v128 = v40;
    v42 = sub_1E1AF71CC();
  }

  else
  {
    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v128 = MEMORY[0x1E69E7CC0];
    v42 = v41;
  }

  v43 = v111;
  v44 = v114;
  v45 = v118;

  v46 = MEMORY[0x1E69E7CC0];
  v116 = v41;
  if (v42)
  {
    v47 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1E68FFD80](v47, v39);
      }

      else
      {
        if (v47 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v50 = *(v39 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      [v50 percentComplete];
      if (v53 == 100.0)
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        v44 = v114;
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++v47;
      v48 = v52 == v42;
      v49 = v117;
      v45 = v118;
    }

    while (!v48);
    v46 = v128;
    v72 = v113;
    v43 = v111;
    v41 = v116;
    if ((v128 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v49 = v117;
    v72 = v35;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
    {
LABEL_27:
      if ((v46 & 0x4000000000000000) == 0)
      {
        v117 = *(v46 + 16);
        goto LABEL_29;
      }
    }
  }

  v117 = sub_1E1AF71CC();
LABEL_29:
  v73 = MEMORY[0x1E69E7CC0];

  if (v41)
  {
    *&v128 = v73;
    sub_1E135CC00(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
      return;
    }

    v74 = 0;
    v75 = v128;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1E68FFD80](v74, v39);
      }

      else
      {
        v76 = *(v39 + 8 * v74 + 32);
      }

      v77 = v76;
      v78 = [objc_allocWithZone(MEMORY[0x1E69A0238]) initWithInternalRepresentation_];
      sub_1E1AF67EC();

      *&v128 = v75;
      v80 = *(v75 + 16);
      v79 = *(v75 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_1E135CC00(v79 > 1, v80 + 1, 1);
        v75 = v128;
      }

      v74 = v74 + 1;
      *(v75 + 16) = v80 + 1;
      (*(v119 + 32))(v75 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v80, v19, v49);
    }

    while (v116 != v74);

    v72 = v113;
    v43 = v111;
    v44 = v114;
    v45 = v118;
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v81 = [v72 bundleIdentifier];
  v82 = sub_1E1AF5DFC();
  v84 = v83;

  type metadata accessor for AchievementSummary();
  v85 = swift_allocObject();
  *(v85 + 80) = 0u;
  *(v85 + 96) = 0u;
  sub_1E134FD1C(&v128, &v122, &unk_1ECEB5670);
  if (*(&v123 + 1))
  {
    v125 = v122;
    v126 = v123;
    v127 = v124;
  }

  else
  {
    sub_1E1AEFE9C();
    v86 = v43;
    v87 = sub_1E1AEFE7C();
    v88 = v45;
    v90 = v89;
    (*(v110 + 8))(v88, v44);
    v120 = v87;
    v121 = v90;
    v43 = v86;
    sub_1E1AF6F6C();
    sub_1E1308058(&v122, &unk_1ECEB5670);
  }

  sub_1E1308058(&v128, &unk_1ECEB5670);
  v91 = v126;
  *(v85 + 112) = v125;
  *(v85 + 128) = v91;
  *(v85 + 144) = v127;
  *(v85 + 16) = v82;
  *(v85 + 24) = v84;
  v92 = v116;
  *(v85 + 32) = v117;
  *(v85 + 40) = v92;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0xE000000000000000;
  *(v85 + 64) = v75;
  *(v85 + 72) = 0;
  v93 = [objc_allocWithZone(MEMORY[0x1E69A0238]) initWithInternalRepresentation_];
  sub_1E1AF67EC();

  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v118 = sub_1E1AF591C();
  v117 = __swift_project_value_buffer(v118, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v94 = v113;
  v95 = [v113 adamID];
  *(&v129 + 1) = sub_1E13006E4(0, &qword_1EE1E31F0);
  *&v128 = v95;
  sub_1E1AF38DC();
  sub_1E1308058(&v128, &qword_1ECEB2DF0);
  *(&v129 + 1) = v49;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v128);
  v97 = v119;
  v116 = *(v119 + 16);
  v98 = v109;
  (v116)(boxed_opaque_existential_0, v109, v49);
  sub_1E1AF38DC();
  sub_1E1308058(&v128, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v99 = [v94 adamID];
  v100 = [v99 stringValue];

  v101 = sub_1E1AF5DFC();
  v103 = v102;

  v104 = *(v107 + 48);
  v105 = *(v107 + 64);
  v106 = v108;
  *v108 = v101;
  *(v106 + 8) = v103;
  (v116)(v106 + v104, v98, v49);
  *(v106 + v105) = v85;
  sub_1E1AF586C();
  sub_1E1308058(v106, &qword_1ECEB49B0);
  (*(v97 + 8))(v98, v49);
}

void sub_1E1962890(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t static GameCenter.sendFriendInvitationViaPush(_:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v5;
  *(v2 + 145) = *(a1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB740);
  *v6 = v2;
  v6[1] = sub_1E1962AA4;

  return MEMORY[0x1EEE6DDE0](v2 + 16, 0, 0, 0xD000000000000023, 0x80000001E1B7FE70, sub_1E196962C, 0, v7);
}

uint64_t sub_1E1962AA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1962BA0, 0, 0);
}

uint64_t sub_1E1962BA0()
{
  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 145);
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = v4;
    *(v0 + 104) = v4;
    *(v4 + 16) = v3;
    if (v2)
    {
      v6 = *(v0 + 72);
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = v6;
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_1E1962FB0;
      v8 = MEMORY[0x1E69E7CA8];
      v9 = sub_1E1969D3C;
    }

    else
    {
      *(v4 + 24) = *(v0 + 56);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      v7 = swift_task_alloc();
      *(v0 + 112) = v7;
      *v7 = v0;
      v7[1] = sub_1E1962E8C;
      v8 = MEMORY[0x1E69E7CA8];
      v9 = sub_1E196B86C;
    }

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000044, 0x80000001E1B7FEE0, v9, v5, v8 + 8);
  }

  else
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E1962E8C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E1963268;
  }

  else
  {

    v3 = sub_1E19630D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1962FB0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E1963488;
  }

  else
  {

    v3 = sub_1E19632E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E19630D4()
{
  if (qword_1ECEB1520 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_1E1969FE4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_1E13006E4(0, qword_1EE1D2550);
  sub_1E1AF67FC();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E1963268()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E19632E8()
{
  _s11AppStoreKit10GameCenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(*(v0 + 56), *(v0 + 64), *(v0 + 96));
  if (qword_1ECEB1520 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_1E1969FE4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_1E13006E4(0, qword_1EE1D2550);
  sub_1E1AF67FC();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E1963488()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1963508(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F8);
  return sub_1E1AF63EC();
}

void sub_1E196355C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a6;
  v22[1] = a3;
  v22[2] = a5;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A1C();
  sub_1E1AF483C();
  v15 = sub_1E1AF482C();
  sub_1E1AF0F6C();
  sub_1E1AF0F3C();

  (*(v12 + 8))(v14, v11);
  v16 = [objc_opt_self() proxyForPlayer_];
  v17 = [v16 friendServicePrivate];

  if (a4)
  {
    a4 = sub_1E1AF5DBC();
  }

  if (v24)
  {
    v18 = sub_1E1AF5DBC();
  }

  else
  {
    v18 = 0;
  }

  (*(v8 + 16))(v10, v25, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v7);
  aBlock[4] = sub_1E196B4DC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1306F24;
  aBlock[3] = &block_descriptor_146;
  v21 = _Block_copy(aBlock);

  [v17 sendFriendInvitationWithPlayerID:a4 contactAssociationID:v18 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1E1963888(void *a1)
{
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E1AF0F7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v7 = sub_1E1AF482C();
  sub_1E1AF0F6C();
  sub_1E1AF0F3C();

  (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v8 = a1;
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v10 = v14;
    v11 = v15;
    v16[3] = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10, v11);
    sub_1E1AF385C();
    sub_1E1308058(v16, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    v16[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0);
    return sub_1E1AF63DC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0);
    return sub_1E1AF63EC();
  }
}

void sub_1E1963C04(uint64_t a1)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v2 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1AF591C();
    __swift_project_value_buffer(v3, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v5[3] = &type metadata for GameCenter.GameCenterError;
    v4 = swift_allocObject();
    v5[0] = v4;
    *(v4 + 16) = 7;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 4;
    sub_1E1AF38BC();
    sub_1E1308058(v5, &qword_1ECEB2DF0);
    sub_1E1AF54AC();
  }
}

id GameCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameCenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GKPlayer.avatarArtwork()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = [v1 hasPhoto];
  result = 0;
  if (v10)
  {
    v12 = [objc_opt_self() sizeForPhotoSize_];
    v13 = [v1 photoURLForSize_];
    v14 = sub_1E1AF5DFC();
    v16 = v15;

    v17 = sub_1E1AF46DC();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    type metadata accessor for Artwork();
    v18 = swift_allocObject();
    *(v18 + 152) = 0u;
    *(v18 + 168) = 0u;
    *(v18 + 184) = 0;
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    v23 = v19;
    v24 = v21;
    sub_1E1AF6F6C();
    sub_1E134FD1C(v9, v18 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    *(v18 + 32) = v12;
    *(v18 + 40) = v12;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 72) = 25186;
    *(v18 + 80) = 0xE200000000000000;
    *(v18 + 64) = 0;
    *(v18 + 104) = MEMORY[0x1E69E7CC0];
    v23 = 25186;
    v24 = 0xE200000000000000;
    v22 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v9, &unk_1ECEB1770);
    result = v18;
    *(v18 + 88) = v22;
    *(v18 + 96) = 3;
  }

  return result;
}

uint64_t sub_1E19641A4()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF322C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1EE1DFA20 = result;
  return result;
}

uint64_t sub_1E1964404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E1AF320C();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF324C();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1DFA18 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EE1DFA20;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1E1300B24(a5, v25);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  sub_1E1308EC0(v25, (v16 + 6));
  aBlock[4] = sub_1E196AD04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_1E1AF322C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1E1964764(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + 24);
    if (v10)
    {
      if (v10 == 1)
      {
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      else if (a2)
      {
        sub_1E13006E4(0, qword_1EE1D2550);
        sub_1E196AD14(v10);
        v11 = a2;
        v12 = sub_1E1AF6D0C();
        sub_1E196A590(v10);

        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94E0);
    *(v9 + 16) = sub_1E1AF588C();

    result = sub_1E19649D0(a2, a5);
LABEL_9:
    a3(result);
  }

  return result;
}

uint64_t sub_1E196488C()
{
  v1 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  MEMORY[0x1E6900360](v1);
  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1964908()
{
  v1 = *(v0 + 16);
  sub_1E1AF5F0C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF764C();
}

uint64_t sub_1E1964954()
{
  v1 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  MEMORY[0x1E6900360](v1);
  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t sub_1E19649D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_1E1AF0F7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v11 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    v12 = *(v3 + 24);
    *(v3 + 24) = a1;
    v13 = a1;
    sub_1E196A590(v12);
    v14 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *(v3 + 16);

    v34 = sub_1E1966DA4(v35);
    v30 = *(v6 + 16);
    v30(v14, v10, v5);
    v16 = *(v6 + 80);
    v31 = v3;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v15;
    v32 = v17;
    v33 = v6;
    v18 = *(v6 + 32);
    v18(v17 + ((v16 + 32) & ~v16), v14, v5);
    v35 = v10;
    v30(v14, v10, v5);
    v19 = v5;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v18(v20 + ((v16 + 24) & ~v16), v14, v5);
    v21 = qword_1EE1DFA18;
    swift_retain_n();

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE1DFA20;
    v36[3] = sub_1E13006E4(0, &qword_1EE1E3430);
    v36[4] = MEMORY[0x1E69AB720];
    v36[0] = v22;
    v23 = v22;
    sub_1E1AF57FC();

    (*(v33 + 8))(v35, v19);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v25 = *(v3 + 24);
    *(v3 + 24) = 1;
    sub_1E196A590(v25);

    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1E15A2CE0(MEMORY[0x1E69E7CC0]);
    v36[0] = v26;
    v36[1] = v27;
    sub_1E1AF586C();

    sub_1E1AF6A0C();
    v28 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    return (*(v6 + 8))(v10, v5);
  }
}

void sub_1E1964DC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85[2] = a4;
  v85[1] = a3;
  v5 = sub_1E1AEFE6C();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v85 - v13;
  v15 = *a1;
  v111 = MEMORY[0x1E69E7CC8];
  v110 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    v59 = v15;
    v16 = sub_1E1AF71CC();
    v15 = v59;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_40:
    v57 = MEMORY[0x1E69E7CC8];
    v58 = MEMORY[0x1E69E7CC8];
LABEL_41:
    v60 = *(v57 + 16);
    v106 = v57;
    if (v60)
    {
      v61 = sub_1E1545D20(v60, 0);
      v62 = sub_1E1546DEC(v108, (v61 + 4), v60, v57);

      sub_1E1337ECC();
      if (v62 == v60)
      {
LABEL_45:
        v63 = v106;
        v107 = v61[2];
        v98 = v58;
        if (!v107)
        {
LABEL_62:

          sub_1E1965F90(&v110);
          v65 = v110;
          if (v110 >> 62)
          {
            goto LABEL_78;
          }

          v79 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v79)
          {
            goto LABEL_64;
          }

LABEL_79:
          v108[0] = v65;
          v108[1] = v98;

          sub_1E1AF586C();

          sub_1E1AF6A0C();
          sub_1E1AF483C();
          v84 = sub_1E1AF482C();
          sub_1E1AF0F3C();

          return;
        }

        v64 = 0;
        v5 = 0;
        v65 = (v61 + 7);
        while (1)
        {
          if (v64 >= v61[2])
          {
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            v79 = sub_1E1AF71CC();
            if (!v79)
            {
              goto LABEL_79;
            }

LABEL_64:
            v80 = 0;
            v104 = v65 & 0xFFFFFFFFFFFFFF8;
            v105 = v65 & 0xC000000000000001;
            *&v102 = "astPlayedDate was nil.";
            v101 = xmmword_1E1B05090;
            v99 = v79;
            v100 = 0xD00000000000001ELL;
            v103 = v65;
            while (1)
            {
              if (v105)
              {
                v81 = MEMORY[0x1E68FFD80](v80, v65);
                v82 = (v80 + 1);
                if (__OFADD__(v80, 1))
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (v80 >= *(v104 + 16))
                {
                  goto LABEL_77;
                }

                v81 = *(v65 + 8 * v80 + 32);

                v82 = (v80 + 1);
                if (__OFADD__(v80, 1))
                {
                  goto LABEL_76;
                }
              }

              if (qword_1EE1D27D8 != -1)
              {
                swift_once();
              }

              v83 = sub_1E1AF591C();
              v107 = __swift_project_value_buffer(v83, qword_1EE2154B0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
              sub_1E1AF38EC();
              *(swift_allocObject() + 16) = v101;
              sub_1E1AF382C();
              v109 = MEMORY[0x1E69E6530];
              v108[0] = v82;
              sub_1E1AF38BC();
              sub_1E1308058(v108, &qword_1ECEB2DF0);
              sub_1E1AF382C();
              v109 = type metadata accessor for GameCenterGameplayHistory();
              v108[0] = v81;

              sub_1E1AF38DC();
              sub_1E1308058(v108, &qword_1ECEB2DF0);
              sub_1E1AF548C();

              ++v80;
              v65 = v103;
              if (v82 == v99)
              {
                goto LABEL_79;
              }
            }
          }

          if (*(v63 + 16))
          {
            v67 = *(v65 - 24);
            v66 = *(v65 - 16);
            v68 = *(v65 - 8);
            v69 = *v65;

            v70 = sub_1E1595F58(v67, v66, v68, v69);
            if (v71)
            {
              v72 = *(*(v63 + 56) + 8 * v70);
              if (!(v72 >> 62))
              {
                v73 = (v72 & 0xFFFFFFFFFFFFFF8);

                goto LABEL_54;
              }

              v77 = sub_1E1AF71CC();
              if (v77)
              {
                v105 = v77;
                v73 = sub_1E154713C(v77, 0);
                swift_bridgeObjectRetain_n();
                sub_1E173167C((v73 + 4), v105, v72);
                v104 = v78;

                if (v104 != v105)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v73 = MEMORY[0x1E69E7CC0];
LABEL_54:
              }

              v108[0] = v73;
              sub_1E1966044(v108);

              v74 = v108[0];
              type metadata accessor for GameCenterGameplayHistory();
              v75 = swift_allocObject();
              *(v75 + 16) = v67;
              *(v75 + 24) = v66;
              *(v75 + 32) = v68;
              *(v75 + 40) = v69;
              *(v75 + 48) = v74;

              MEMORY[0x1E68FEF20](v76);
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E1AF625C();
              }

              sub_1E1AF62AC();

              v63 = v106;
              goto LABEL_48;
            }
          }

LABEL_48:
          ++v64;
          v65 += 32;
          if (v107 == v64)
          {
            goto LABEL_62;
          }
        }
      }

      __break(1u);
    }

    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_40;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v104 = v6 + 56;
    v105 = v15 & 0xC000000000000001;
    v103 = (v6 + 48);
    v100 = (v6 + 16);
    *&v101 = "GameCenterCache.cacheQueue";
    v99 = (v6 + 8);
    v88 = "astPlayedGame was nil.";
    v89 = "gamesRecentlyPlayedByFriends #";
    v98 = MEMORY[0x1E69E7CC8];
    v102 = xmmword_1E1B02CC0;
    v87 = xmmword_1E1B06D70;
    v93 = v11;
    v107 = v15;
    v90 = v8;
    v106 = v16;
    v86 = v5;
    while (1)
    {
      if (v105)
      {
        v19 = MEMORY[0x1E68FFD80](v17);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v20 lastPlayedDate];
      if (v21)
      {
        v22 = v21;
        sub_1E1AEFE3C();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      (*v104)(v11, v23, 1, v5);
      sub_1E137F600(v11, v14, &unk_1ECEBB780);
      if ((*v103)(v14, 1, v5))
      {

        sub_1E1308058(v14, &unk_1ECEBB780);
        if (qword_1EE1D27D8 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        (*v100)(v8, v14, v5);
        sub_1E1308058(v14, &unk_1ECEBB780);
        sub_1E1AEFE1C();
        v25 = v24;
        (*v99)(v8, v5);
        v26 = [v20 lastPlayedGame];

        if (v26)
        {
          v27 = [v26 adamID];
          sub_1E13006E4(0, &qword_1EE1E31F0);
          v28 = sub_1E1AF6CEC();
          v29 = sub_1E1AF6D0C();

          if (v29)
          {
            if (qword_1EE1D27D8 != -1)
            {
              swift_once();
            }

            v30 = sub_1E1AF591C();
            __swift_project_value_buffer(v30, qword_1EE2154B0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = v102;
            sub_1E1AF382C();
            sub_1E1AF54AC();

            v8 = v90;
            v11 = v93;
            goto LABEL_7;
          }

          v96 = sub_1E196A6A0(v26);
          v95 = [v26 isArcadeGame];
          v31 = v27;
          v32 = [v31 stringValue];
          v94 = sub_1E1AF5DFC();
          v97 = v33;
          v92 = v31;

          type metadata accessor for GameCenterPlayer(0);
          v34 = v20;
          v35 = sub_1E1454DDC(v34);
          v91 = v34;

          v36 = v98;
          if (!v98[2] || (sub_1E13018F8(*(v35 + 16), *(v35 + 24)), (v37 & 1) == 0))
          {
            v39 = *(v35 + 16);
            v38 = *(v35 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108[0] = v36;
            sub_1E159C56C(v35, v39, v38, isUniquelyReferenced_nonNull_native);

            v98 = v108[0];
          }

          v41 = *(v35 + 16);
          v42 = *(v35 + 24);
          type metadata accessor for GameCenterGameplayHistoryRecord();
          v43 = swift_allocObject();
          v43[2] = v41;
          v43[3] = v42;
          v43[4] = v25;
          v44 = v111;
          v45 = v111[2];

          if (v45)
          {
            v46 = v94;
            v47 = v97;
            v48 = v96;
            v49 = v95;
            sub_1E1595F58(v94, v97, v96, v95);
            if (v50)
            {
              v51 = sub_1E1A0C730(v108, v46, v47, v48, v49);
              if (!*v52)
              {
                (v51)(v108, 0);

                v11 = v93;
                v8 = v90;
                v5 = v86;
                goto LABEL_7;
              }

              v53 = v52;
              v96 = v51;

              MEMORY[0x1E68FEF20](v54);
              v8 = v90;
              v5 = v86;
              if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E1AF625C();
              }

              sub_1E1AF62AC();
              v96(v108, 0);

              goto LABEL_34;
            }

            v44 = v111;
            v8 = v90;
            v5 = v86;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
          v55 = swift_allocObject();
          *(v55 + 16) = v87;
          *(v55 + 32) = v43;

          v56 = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v44;
          sub_1E159C3F8(v55, v94, v97, v96, v95, v56);

          v111 = v108[0];
LABEL_34:
          v11 = v93;
          goto LABEL_7;
        }

        if (qword_1EE1D27D8 != -1)
        {
LABEL_36:
          swift_once();
        }
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v102;
      sub_1E1AF382C();
      sub_1E1AF54AC();

LABEL_7:
      ++v17;
      v15 = v107;
      if (v106 == v17)
      {
        v57 = v111;
        v58 = v98;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);

  __break(1u);
}

uint64_t sub_1E1965E34(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 48);
  if (v3 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E68FFD80](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v3 + 32);
  }

  v2 = *(v2 + 48);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_16:

    return 0;
  }

  result = sub_1E1AF71CC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v5 = MEMORY[0x1E68FFD80](0, v2);
    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);

LABEL_11:
    v6 = *(v3 + 32);

    v7 = *(v5 + 32);

    return v7 < v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1965F90(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1E14E7234(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1E1967630(v5, type metadata accessor for GameCenterGameplayHistory, sub_1E19679B4, sub_1E1967754);
  *a1 = v2;
  return result;
}

uint64_t sub_1E1966044(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E132FD48(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E1967630(v6, type metadata accessor for GameCenterGameplayHistoryRecord, sub_1E1968260, sub_1E1967948);
  return sub_1E1AF70CC();
}

void sub_1E19660FC()
{
  sub_1E1AF584C();
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v0 = sub_1E1AF482C();
  sub_1E1AF0F3C();
}

double sub_1E196618C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1E15BAC74(v4);
    v6 = sub_1E1AF6EFC();
    v7 = sub_1E196744C(v6, *(a1 + 36), 0, v5, a1);
    v9 = v8;
    v11 = v10;
    sub_1E19675D8(v7, v8, a1, a2);

    sub_1E142EA30(v7, v9, v11 & 1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E1966254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    v10[5] = a5;
    v11 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_retain_n();

    v12 = sub_1E1AF68EC();
    v13[3] = v11;
    v13[4] = MEMORY[0x1E69AB720];
    v13[0] = v12;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t *sub_1E1966398(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = *result;
  v20 = result[1];
  v21 = MEMORY[0x1E69E7CC0];
  if (*result >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v8 = 0;
      v19 = a2;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E68FFD80](v8, v5);
          v10 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v9 = *(v5 + 8 * v8 + 32);

          v10 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v11 = v9[2] == a2 && v9[3] == a3;
        if (!v11 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_5;
        }

        v12 = v9[4];
        if (qword_1ECEB15F0 != -1)
        {
          swift_once();
        }

        if (v12 == qword_1ECEF4CA8)
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          a2 = v19;
          sub_1E1AF710C();
          result = sub_1E1AF70CC();
        }

        else
        {
LABEL_5:
        }

        ++v8;
      }

      while (v10 != i);
      v13 = v21;
      v7 = MEMORY[0x1E69E7CC0];
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
      {
LABEL_25:
        if ((v13 & 0x4000000000000000) == 0)
        {
          if (!*(v13 + 16))
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E1AF71CC();
    if (!result)
    {
LABEL_53:

      return sub_1E1AF586C();
    }

LABEL_27:
    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

    a3 = MEMORY[0x1E68FFD80](0, v13);
LABEL_30:

    a2 = *(a3 + 48);
    v21 = v7;
    if (a2 >> 62)
    {
      v5 = sub_1E1AF71CC();
      if (!v5)
      {
LABEL_56:
        sub_1E1AF586C();
      }
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_56;
      }
    }

    v14 = 0;
LABEL_33:
    v15 = v14;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E68FFD80](v15, a2);
      }

      else
      {
        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v16 = *(a2 + 8 * v15 + 32);
      }

      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*(v20 + 16))
      {
        sub_1E13018F8(*(v16 + 16), *(v16 + 24));
        if (v17)
        {

          MEMORY[0x1E68FEF20](v18);
          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          if (v14 != v5)
          {
            goto LABEL_33;
          }

          goto LABEL_56;
        }
      }

      ++v15;
      if (v14 == v5)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_1E1AF71CC();
  }

  if (*(v13 + 16))
  {
    a3 = *(v13 + 32);

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E196675C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4;
    v9 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_retain_n();
    v10 = sub_1E1AF68EC();
    v11[3] = v9;
    v11[4] = MEMORY[0x1E69AB720];
    v11[0] = v10;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_1E1966890(unint64_t *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v30 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_50:
    v25 = a3;
    v26 = sub_1E1AF71CC();
    a3 = v25;
    v7 = v26;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_51:
    v10 = MEMORY[0x1E69E7CC0];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_51;
  }

LABEL_3:
  v29 = a3;
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E68FFD80](v8, v6);
    v4 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

LABEL_9:
    if (a2)
    {
      if (a2 == 1)
      {
        if ((*(v9 + 40) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(v9 + 40))
      {
LABEL_14:

        goto LABEL_5;
      }
    }

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    v3 = &v30;
    sub_1E1AF70CC();
LABEL_5:
    ++v8;
    if (v4 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v6 + 8 * v8 + 32);

  v4 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v10 = v30;
  a3 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_19:
  LODWORD(v7) = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if ((v7 & 1) == 0)
  {
    v11 = *(v10 + 16);
    if (v11 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = *(v10 + 16);
    }

    if (a3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11 >= v13)
    {
      goto LABEL_30;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_53:
  v27 = a3;
  v3 = sub_1E1AF71CC();
  result = sub_1E1AF71CC();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v3;
    }

    if (v3 < 0)
    {
      v28 = v27;
    }

    if (v27)
    {
      v13 = v28;
    }

    else
    {
      v13 = 0;
    }

    if (sub_1E1AF71CC() < v13)
    {
      goto LABEL_63;
    }

LABEL_30:
    if ((v10 & 0xC000000000000001) != 0 && v13)
    {
      type metadata accessor for GameCenterGameplayHistory();

      v14 = 0;
      do
      {
        v15 = v14 + 1;
        sub_1E1AF703C();
        v14 = v15;
      }

      while (v13 != v15);
    }

    else
    {
    }

    if (v7)
    {
      v16 = sub_1E1AF728C();
      v4 = v17;
      v3 = v18;
      v13 = v19;

      v10 = v16;
      if (v13)
      {
        goto LABEL_38;
      }

LABEL_45:
      swift_unknownObjectRetain();
LABEL_46:
      sub_1E14E6814(v10, v4, v3, v13);
      v22 = v23;
LABEL_47:
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
      v4 = v10 + 32;
      v13 = (2 * v13) | 1;
      if ((v13 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_38:
      sub_1E1AF74EC();
      swift_unknownObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x1E69E7CC0];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v13 >> 1, v3))
      {
        goto LABEL_64;
      }

      if (v21 != (v13 >> 1) - v3)
      {
LABEL_65:
        swift_unknownObjectRelease();
        goto LABEL_46;
      }

      v22 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v22)
      {
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_47;
      }
    }

    v30 = v22;
    sub_1E1AF586C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1966BE8()
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = sub_1E1AF75AC();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  sub_1E1AF38BC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return sub_1E1AF584C();
}

uint64_t sub_1E1966DA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB760);
  v11 = sub_1E1AF588C();
  v12 = v11;
  v13 = *(v1 + 24);
  if (v13 < 2)
  {
    sub_1E14BFDDC();
    v14 = swift_allocError();
    *v15 = 7;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_1E1AF584C();

    return v12;
  }

  v29 = a1;
  v30 = v11;
  sub_1E1AF483C();
  v16 = v13;
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v17 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v18 = [objc_opt_self() proxyForPlayer_];
  v19 = [v18 gameStatServicePrivate];

  result = sub_1E1AF5DBC();
  v21 = *(v2 + 32);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 < 9.22337204e18)
  {
    v22 = result;
    v28 = v21;
    sub_1E1300B24(v29, v32);
    (*(v5 + 16))(v7, v10, v4);
    v23 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1E1308EC0(v32, v25 + 16);
    (*(v5 + 32))(v25 + v23, v7, v4);
    v26 = v30;
    *(v25 + v24) = v30;
    aBlock[4] = sub_1E196A570;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E19673F8;
    aBlock[3] = &block_descriptor_87;
    v27 = _Block_copy(aBlock);

    v12 = v26;

    [v19 getGamesFriendsPlayed:0 type:v22 fetchOptions:1 withinSecs:v28 matchingBundleIDs:0 handler:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();

    sub_1E196A590(v13);
    (*(v5 + 8))(v10, v4);
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E1967170(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a7;
  v21[2] = a6;
  v22 = a1;
  v10 = sub_1E1AF0F7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v21[1] = a3[4];
  v21[0] = __swift_project_boxed_opaque_existential_1Tm(a3, v14);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v13, v10);
  *(v18 + v16) = a2;
  *(v18 + v17) = v23;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v19 = a2;

  sub_1E1AF3FAC();
}

void sub_1E1967318(uint64_t a1, void *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v3 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a2)
  {
    v4 = a2;
    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

uint64_t sub_1E196740C()
{

  sub_1E196A590(*(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1E196744C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_1E196A990(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1967584@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E19675D8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_1E134E724(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E1967630(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1E1AF741C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1E1AF628C();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1E1967754(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v5 = *a4;
  v6 = (*a4 + 8 * a3 - 8);
  v7 = result - a3;
LABEL_6:
  v8 = *(v5 + 8 * v4);
  v9 = v7;
  v20 = v6;
  while (1)
  {
    v10 = *v6;
    v11 = *(v8 + 48);
    if (v11 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_5;
      }
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x1E68FFD80](0, v11);
LABEL_12:
    v13 = *(v10 + 48);
    if (v13 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
LABEL_4:

LABEL_5:
        ++v4;
        v6 = v20 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E68FFD80](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = *(v12 + 32);

    v16 = *(v14 + 32);

    if (v16 < v15)
    {
      if (!v5)
      {
        goto LABEL_30;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (!__CFADD__(v9++, 1))
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E1967948(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 32) >= *(v7 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E19679B4(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v100 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_172;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 >= v7)
  {
    v25 = v8 + 1;
    goto LABEL_44;
  }

  v12 = *a3;
  v13 = *(*a3 + 8 * v11);
  v14 = v10;
  v105 = *(*a3 + 8 * v10);
  v106 = v13;

  v15 = v6;
  v16 = sub_1E1965E34(&v106, &v105);
  if (v6)
  {
  }

  v17 = v16;

  v18 = (v10 + 2);
  if (v10 + 2 >= v7)
  {
    v5 = v10 + 2;
    if ((v17 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  v19 = v12 + 8 * v10 + 16;
  do
  {
    v5 = v18;
    v20 = *(v19 - 8);
    v6 = *(*v19 + 48);
    if (v6 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
LABEL_8:
        if (v17)
        {
          goto LABEL_34;
        }

        goto LABEL_9;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & 0xC000000000000001) != 0)
    {

      v6 = MEMORY[0x1E68FFD80](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v6 = *(v6 + 32);
    }

    v21 = *(v20 + 48);
    if (v21 >> 62)
    {
      if (sub_1E1AF71CC())
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E68FFD80](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_160;
          }

          v22 = *(v21 + 32);
        }

        v23 = *(v6 + 32);

        v24 = *(v22 + 32);

        if ((v17 & 1) == v24 >= v23)
        {
          v11 = v5 - 1;
          goto LABEL_42;
        }

        goto LABEL_9;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    if (v17)
    {
LABEL_34:
      v11 = v5 - 1;
      v10 = v14;
      v6 = v15;
      if (v5 >= v14)
      {
        goto LABEL_35;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      result = sub_1E1968F00(v9);
      v9 = result;
LABEL_131:
      v107 = v9;
      v93 = *(v9 + 2);
      if (v93 >= 2)
      {
        while (*a3)
        {
          v94 = *&v9[16 * v93];
          v95 = *&v9[16 * v93 + 24];
          sub_1E19687D0((*a3 + 8 * v94), (*a3 + 8 * *&v9[16 * v93 + 16]), (*a3 + 8 * v95), v5);
          if (v6)
          {
          }

          if (v95 < v94)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1E1968F00(v9);
          }

          if (v93 - 2 >= *(v9 + 2))
          {
            goto LABEL_159;
          }

          v96 = &v9[16 * v93];
          *v96 = v94;
          *(v96 + 1) = v95;
          v107 = v9;
          result = sub_1E1968E74(v93 - 1);
          v9 = v107;
          v93 = *(v107 + 2);
          if (v93 <= 1)
          {
          }
        }

        goto LABEL_170;
      }
    }

LABEL_9:
    v18 = (v5 + 1);
    v19 += 8;
  }

  while (v7 != v5 + 1);
  v11 = v5;
  v5 = v7;
LABEL_42:
  v10 = v14;
  v6 = v15;
  if ((v17 & 1) == 0)
  {
LABEL_43:
    v25 = v5;
    goto LABEL_44;
  }

LABEL_31:
  if (v5 < v10)
  {
    goto LABEL_163;
  }

LABEL_35:
  v25 = v5;
  if (v10 <= v11)
  {
    v26 = 8 * v5 - 8;
    v27 = 8 * v10;
    v28 = v5;
    v29 = v10;
    do
    {
      if (v29 != --v28)
      {
        v31 = *a3;
        if (!*a3)
        {
          goto LABEL_169;
        }

        v30 = *(v31 + v27);
        *(v31 + v27) = *(v31 + v26);
        *(v31 + v26) = v30;
      }

      ++v29;
      v26 -= 8;
      v27 += 8;
    }

    while (v29 < v28);
  }

LABEL_44:
  v32 = a3[1];
  if (v25 >= v32)
  {
    goto LABEL_78;
  }

  if (__OFSUB__(v25, v10))
  {
    goto LABEL_162;
  }

  if (v25 - v10 >= a4)
  {
    goto LABEL_78;
  }

  v33 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_164;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v10)
  {
    goto LABEL_165;
  }

  if (v25 == v33)
  {
    goto LABEL_78;
  }

  v97 = v10;
  v98 = v6;
  v6 = *a3;
  v34 = *a3 + 8 * v25 - 8;
  v5 = v10 - v25;
  v101 = v33;
  while (2)
  {
    v102 = v34;
    v103 = v25;
    v35 = *(v6 + 8 * v25);
    v36 = v5;
    v37 = v34;
LABEL_56:
    v38 = *v37;
    v39 = *(v35 + 48);
    if (v39 >> 62)
    {
      if (!sub_1E1AF71CC())
      {
        goto LABEL_54;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    if ((v39 & 0xC000000000000001) == 0)
    {
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v39 + 32);

        goto LABEL_61;
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v40 = MEMORY[0x1E68FFD80](0, v39);
LABEL_61:
    v41 = *(v38 + 48);
    if (v41 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_63;
      }

LABEL_53:

LABEL_54:
      v25 = v103 + 1;
      v34 = v102 + 8;
      --v5;
      if (v103 + 1 != v101)
      {
        continue;
      }

      v25 = v101;
      v10 = v97;
      v6 = v98;
LABEL_78:
      if (v25 < v10)
      {
        goto LABEL_161;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172D878(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        result = sub_1E172D878((v47 > 1), v48 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v49;
      v50 = &v9[16 * v48];
      *(v50 + 4) = v10;
      *(v50 + 5) = v25;
      v51 = *v100;
      if (!*v100)
      {
        goto LABEL_171;
      }

      v8 = v25;
      if (v48)
      {
        while (2)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            v57 = &v9[16 * v49 + 32];
            v58 = *(v57 - 64);
            v59 = *(v57 - 56);
            v63 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            if (v63)
            {
              goto LABEL_146;
            }

            v62 = *(v57 - 48);
            v61 = *(v57 - 40);
            v63 = __OFSUB__(v61, v62);
            v55 = v61 - v62;
            v56 = v63;
            if (v63)
            {
              goto LABEL_147;
            }

            v64 = &v9[16 * v49];
            v66 = *v64;
            v65 = *(v64 + 1);
            v63 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v63)
            {
              goto LABEL_149;
            }

            v63 = __OFADD__(v55, v67);
            v68 = v55 + v67;
            if (v63)
            {
              goto LABEL_152;
            }

            if (v68 >= v60)
            {
              v86 = &v9[16 * v52 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v63 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v63)
              {
                goto LABEL_157;
              }

              if (v55 < v89)
              {
                v52 = v49 - 2;
              }
            }

            else
            {
LABEL_98:
              if (v56)
              {
                goto LABEL_148;
              }

              v69 = &v9[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_151;
              }

              v75 = &v9[16 * v52 + 32];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_155;
              }

              if (v73 + v78 < v55)
              {
                goto LABEL_112;
              }

              if (v55 < v78)
              {
                v52 = v49 - 2;
              }
            }
          }

          else
          {
            if (v49 == 3)
            {
              v53 = *(v9 + 4);
              v54 = *(v9 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
              goto LABEL_98;
            }

            v79 = &v9[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_112:
            if (v74)
            {
              goto LABEL_150;
            }

            v82 = &v9[16 * v52];
            v84 = *(v82 + 4);
            v83 = *(v82 + 5);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_153;
            }

            if (v85 < v73)
            {
              break;
            }
          }

          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_168;
          }

          v91 = *&v9[16 * v90 + 32];
          v5 = *&v9[16 * v52 + 40];
          sub_1E19687D0((*a3 + 8 * v91), (*a3 + 8 * *&v9[16 * v52 + 32]), (*a3 + 8 * v5), v51);
          if (v6)
          {
          }

          if (v5 < v91)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1E1968F00(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_145;
          }

          v92 = &v9[16 * v90];
          *(v92 + 4) = v91;
          *(v92 + 5) = v5;
          v107 = v9;
          result = sub_1E1968E74(v52);
          v9 = v107;
          v49 = *(v107 + 2);
          if (v49 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_63:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x1E68FFD80](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_142;
    }

    v42 = *(v41 + 32);
  }

  v43 = *(v40 + 32);

  v44 = *(v42 + 32);

  if (v44 >= v43)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v45 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v45;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_1E1968260(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1E1968F00(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_1E1968C70((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1E1968F00(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1E1968E74(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v15 >= v16;
        ++v14;
        v15 = v16;
        if ((((v13 < v12) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1E172D878((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_1E1968C70((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1E1968F00(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1E1968E74(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 32) >= *(v27 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1E19687D0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      do
      {
        v16 = *v4;
        v17 = *(*v15 + 48);
        if (v17 >> 62)
        {
          result = sub_1E1AF71CC();
          if (!result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_31;
          }
        }

        if ((v17 & 0xC000000000000001) != 0)
        {

          v19 = MEMORY[0x1E68FFD80](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v19 = *(v17 + 32);
        }

        v20 = *(v16 + 48);
        if (v20 >> 62)
        {
          result = sub_1E1AF71CC();
          if (!result)
          {
LABEL_30:

LABEL_31:
            v24 = v4;
            v25 = v6 == v4;
            v4 += 8;
            if (v25)
            {
              goto LABEL_33;
            }

LABEL_32:
            *v6 = *v24;
            goto LABEL_33;
          }
        }

        else
        {
          result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_30;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E68FFD80](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v21 = *(v20 + 32);
        }

        v22 = *(v19 + 32);

        v23 = *(v21 + 32);

        if (v23 >= v22)
        {
          goto LABEL_31;
        }

        v24 = v15;
        v25 = v6 == v15;
        v15 += 8;
        if (!v25)
        {
          goto LABEL_32;
        }

LABEL_33:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v26 = v6;
LABEL_71:
    if (v26 != v4 || v26 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v26, v4, 8 * ((v14 - v4) / 8));
    }

    return 1;
  }

  v26 = __dst;
  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v4[8 * v12];
  if (v10 < 8 || v26 <= v6)
  {
    goto LABEL_71;
  }

LABEL_42:
  v37 = v26;
  v27 = v26 - 8;
  v5 -= 8;
  v28 = v14;
  v38 = v27;
  while (1)
  {
    v29 = *(v28 - 1);
    v28 -= 8;
    v30 = *v27;
    v31 = *(v29 + 48);
    if (v31 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_61;
      }
    }

    if ((v31 & 0xC000000000000001) != 0)
    {

      v32 = MEMORY[0x1E68FFD80](0, v31);
      goto LABEL_49;
    }

    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v32 = *(v31 + 32);

LABEL_49:
    v33 = *(v30 + 48);
    if (v33 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
LABEL_60:

        v27 = v38;
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_60;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1E68FFD80](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v34 = *(v33 + 32);
    }

    v35 = *(v32 + 32);

    v36 = *(v34 + 32);

    v27 = v38;
    if (v36 < v35)
    {
      if (v5 + 8 != v37)
      {
        *v5 = *v38;
      }

      if (v14 <= v4 || (v26 = v38, v38 <= v6))
      {
        v26 = v38;
        goto LABEL_71;
      }

      goto LABEL_42;
    }

LABEL_61:
    if (v5 + 8 != v14)
    {
      *v5 = *v28;
    }

    v5 -= 8;
    v14 = v28;
    if (v28 <= v4)
    {
      v14 = v28;
      v26 = v37;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1E1968C70(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 32) < *(*v6 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 32) < *(v21 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1E1968E74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E1968F00(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1E1968F14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8660);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E19690CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v28 = a3;
  v9 = sub_1E1AF320C();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF324C();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a5;
  v31[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB810);
  v16 = sub_1E1AF588C();
  if (qword_1EE1E0C80 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1E196B6F0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_161;
  v17 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v26 + 8))(v11, v9);
  (*(v24 + 8))(v14, v25);

  v18 = swift_allocObject();
  v20 = v27;
  v19 = v28;
  *(v18 + 16) = v27;
  *(v18 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  swift_retain_n();
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_1E19694AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49A0);
  v17 = sub_1E1AF588C();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;

  sub_1E19690CC(v14, sub_1E14BE9F8, v18, a4, a5, a6);

  (*(v11 + 8))(v14, a5);
  return v17;
}

void sub_1E196962C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  sub_1E13006E4(0, &qword_1EE1E3430);
  v6 = sub_1E1AF68EC();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  sub_1E1AA2CA8(v6, sub_1E196B588, v8);
}

uint64_t sub_1E196979C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1E1AF74AC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_1E1969824(uint64_t a1, uint64_t a2)
{
  if (sub_1E1AF5DFC() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1E1AF74AC();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1E1AF5DFC() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_1E1AF74AC();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_1E1AF5DFC() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_1E1AF74AC();

  if (v13)
  {
    goto LABEL_24;
  }

  if (sub_1E1AF5DFC() == a1 && v14 == a2)
  {

LABEL_29:

    return 3;
  }

  v15 = sub_1E1AF74AC();

  if (v15)
  {
    goto LABEL_29;
  }

  if (sub_1E1AF5DFC() == a1 && v16 == a2)
  {

    return 4;
  }

  else
  {
    v17 = sub_1E1AF74AC();

    if (v17)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E1969A54(uint64_t a1)
{
  v2 = sub_1E1AF0F7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB800);
  v18 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v9 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v17 = objc_opt_self();
  v10 = sub_1E1AF620C();
  (*(v3 + 16))(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v11, v5, v2);
  v14 = v18;
  *(v13 + v12) = v18;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1E196B638;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E195CEC8;
  aBlock[3] = &block_descriptor_155_0;
  v15 = _Block_copy(aBlock);

  [v17 loadGamesWithBundleIDs:v10 withCompletionHandler:v15];
  _Block_release(v15);

  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t _s11AppStoreKit10GameCenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - v9;
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v11 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v12 = [objc_opt_self() proxyForPlayer_];
  v13 = [v12 utilityServicePrivate];

  v14 = sub_1E1AF5DBC();
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  aBlock[4] = sub_1E196B3E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1306F24;
  aBlock[3] = &block_descriptor_137;
  v17 = _Block_copy(aBlock);

  [v13 denyContact:v14 handler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E1969FE4(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1E1AF620C();

  v7 = [v4 predicateForContactsWithIdentifiers_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1E19C12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7E0);
  v9 = sub_1E1AF620C();

  v21[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v21];

  v11 = v21[0];
  if (!v10)
  {
    v19 = v21[0];
    v20 = sub_1E1AEFB2C();

    swift_willThrow();
    return 0;
  }

  sub_1E13006E4(0, &qword_1ECEB56B0);
  v12 = sub_1E1AF621C();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E68FFD80](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 givenName];
  v17 = sub_1E1AF5DFC();

  return v17;
}

unint64_t sub_1E196A2B4()
{
  result = qword_1ECEBB750;
  if (!qword_1ECEBB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB750);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit10GameCenterC0dE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1E196A33C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E196A384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E196A3CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1E196A414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E196A45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit15GameCenterCacheC17LocalPlayerStatus33_1F9FD7EC7CA9A8B263F01EA8DB2675D1LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E196A4FC(uint64_t *a1, unsigned int a2)
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

void sub_1E196A590(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1E196A5B8(unint64_t *a1)
{
  v3 = *(sub_1E1AF0F7C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1E1964DC0(a1, v4, v5, v6);
}

void sub_1E196A62C()
{
  sub_1E1AF0F7C();

  sub_1E19660FC();
}

uint64_t sub_1E196A6A0(void *a1)
{
  v2 = [a1 compatiblePlatforms];
  v3 = sub_1E1AF659C();

  v10 = sub_1E1AF5DFC();
  v11 = v4;
  sub_1E1AF6F6C();
  LOBYTE(v2) = sub_1E14AAA64(v12, v3);

  sub_1E134B88C(v12);
  if (v2)
  {
    return 1;
  }

  v6 = [a1 compatiblePlatforms];
  v7 = sub_1E1AF659C();

  sub_1E196618C(v7, v12);

  if (v13)
  {
    if (swift_dynamicCast())
    {
      return qword_1E1B46850[sub_1E1969824(v10, v11)];
    }
  }

  else
  {
    sub_1E1308058(v12, &unk_1ECEB5670);
  }

  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v9 = [a1 adamID];
  v13 = sub_1E13006E4(0, &qword_1EE1E31F0);
  v12[0] = v9;
  sub_1E1AF38DC();
  sub_1E1308058(v12, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return 0;
}

uint64_t sub_1E196A990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E196A9DC(void *a1, void *a2, void *a3)
{
  v7 = *(sub_1E1AF0F7C() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1960CC0(a1, a2, a3, (v3 + 16), v3 + v8, v10, v11);
}

void sub_1E196AAA0()
{
  v1 = *(sub_1E1AF0F7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);

  sub_1E1960EC8(v0 + v2, v8, v9, v10, v11, v12, v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E196AB68(uint64_t a1, void *a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E19617C0(a1, a2, (v2 + 16), v2 + v6, v10, v11, v12, v13);
}

void sub_1E196AC3C()
{
  v1 = *(sub_1E1AF0F7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1E19619BC(v0 + v2, v8, v9, v10, v11, v12, v13);
}

id sub_1E196AD14(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E196AE28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1E1AF0F7C() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  return sub_1E1967170(a1, a2, (v4 + 16), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t objectdestroy_59Tm()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E196AFC0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1E1AF0F7C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v6, v7, v8);
}

uint64_t sub_1E196B078(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E195E79C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
}

void sub_1E196B158()
{
  v1 = *(sub_1E1AF0F7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);

  sub_1E195E9B0(v0 + v2, v7, v8, v9, v10, v11, v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E196B218(uint64_t a1, void *a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E195EFCC(a1, a2, (v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1E196B2F0()
{
  v1 = *(sub_1E1AF0F7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);
  v14 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1E195F1D8(v0 + v2, v8, v9, v10, v11, v12, v13, v14);
}

void sub_1E196B3E4(uint64_t a1)
{
  sub_1E1AF0F7C();

  sub_1E1963C04(a1);
}

void sub_1E196B454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }

  if (a5 == 3)
  {
  }
}

uint64_t objectdestroy_142Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1E196B5B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

void sub_1E196B638(unint64_t a1, void *a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1E195CD30(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1E196B724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E196B76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E196B7C4()
{
  result = qword_1ECEBB818;
  if (!qword_1ECEBB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB818);
  }

  return result;
}

uint64_t static GlobalEventCanary.value.getter()
{
  if (qword_1EE1F1410 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1F1418;
  [qword_1EE1F1418 lock];
  v1 = qword_1EE1DEB58;

  [v0 unlock];
  return v1;
}

id sub_1E196B93C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  qword_1EE1F1418 = result;
  return result;
}

id sub_1E196B970@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE1F1410 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE1F1418;
  [qword_1EE1F1418 lock];
  v4 = qword_1EE1DEB58;
  v3 = qword_1EE1DEB60;

  result = [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

id sub_1E196BA08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EE1F1410;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F1418;
  [qword_1EE1F1418 lock];
  qword_1EE1DEB58 = v2;
  qword_1EE1DEB60 = v1;

  return [v4 unlock];
}

id static GlobalEventCanary.value.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1F1410 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F1418;
  [qword_1EE1F1418 lock];
  qword_1EE1DEB58 = a1;
  qword_1EE1DEB60 = a2;

  return [v4 unlock];
}

id (*static GlobalEventCanary.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (qword_1EE1F1410 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE1F1418;
  a1[2] = qword_1EE1F1418;
  [v2 lock];
  v4 = qword_1EE1DEB58;
  v3 = qword_1EE1DEB60;

  [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return sub_1E196BC0C;
}

id sub_1E196BC0C(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {

    [v4 lock];
    qword_1EE1DEB58 = v3;
    qword_1EE1DEB60 = v2;

    [v4 unlock];
  }

  else
  {
    [*(a1 + 16) lock];
    qword_1EE1DEB58 = v3;
    qword_1EE1DEB60 = v2;

    return [v4 unlock];
  }
}

uint64_t sub_1E196BCEC@<X0>(uint64_t *a1@<X8>)
{
  v188 = a1;
  v2 = sub_1E1AF310C();
  v175 = *(v2 - 8);
  v176 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v173 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v168 - v5;
  v6 = sub_1E1AF30AC();
  v180 = *(v6 - 8);
  v181 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v168 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v168 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v168 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v168 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v168 - v15;
  v16 = sub_1E1AF304C();
  v183 = *(v16 - 8);
  v184 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v168 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v168 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v185 = &v168 - v23;
  v24 = sub_1E1AF30DC();
  v186 = *(v24 - 8);
  v187 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v182 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF30EC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E1AF30FC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E1AF316C();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v38, v1, v34, v36);
  result = (*(v35 + 88))(v38, v34);
  if (result == *MEMORY[0x1E698B250])
  {
    (*(v35 + 96))(v38, v34);
    (*(v31 + 32))(v33, v38, v30);
    result = (*(v31 + 88))(v33, v30);
    if (result != *MEMORY[0x1E698B208])
    {
      if (result == *MEMORY[0x1E698B210])
      {
        v40 = 1;
        goto LABEL_21;
      }

      if (result == *MEMORY[0x1E698B200])
      {
        v40 = 2;
        goto LABEL_21;
      }

      if (result == *MEMORY[0x1E698B1F8])
      {
        v40 = 3;
        goto LABEL_21;
      }

      result = (*(v31 + 8))(v33, v30);
    }

    v40 = 0;
LABEL_21:
    v47 = v188;
    *v188 = v40;
    v47[6] = 0;
    return result;
  }

  if (result == *MEMORY[0x1E698B268])
  {
    (*(v35 + 96))(v38, v34);
    (*(v27 + 32))(v29, v38, v26);
    result = (*(v27 + 88))(v29, v26);
    if (result != *MEMORY[0x1E698B1F0])
    {
      if (result == *MEMORY[0x1E698B1E8])
      {
        v41 = 1;
LABEL_18:
        v46 = v188;
        *v188 = v41;
        v46[6] = 0x1000000000000000;
        return result;
      }

      result = (*(v27 + 8))(v29, v26);
    }

    v41 = 0;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x1E698B270])
  {
    result = (*(v35 + 96))(v38, v34);
    v42 = v38[1];
    v43 = v188;
    *v188 = *v38;
    v43[1] = v42;
    v43[6] = 0x2000000000000000;
    return result;
  }

  if (result == *MEMORY[0x1E698B230])
  {
    result = (*(v35 + 96))(v38, v34);
    v44 = v38[1];
    v45 = v188;
    *v188 = *v38;
    v45[1] = v44;
    v45[6] = 0x3000000000000000;
    return result;
  }

  if (result != *MEMORY[0x1E698B228])
  {
    if (result != *MEMORY[0x1E698B258])
    {
      if (result == *MEMORY[0x1E698B240])
      {
        v98 = v188;
        *v188 = 0u;
        *(v98 + 1) = 0u;
        *(v98 + 2) = 0u;
        *(v98 + 3) = xmmword_1E1B11BA0;
        return result;
      }

      if (result == *MEMORY[0x1E698B260])
      {
        v114 = 1;
      }

      else
      {
        if (result != *MEMORY[0x1E698B238])
        {
          v143 = *MEMORY[0x1E698B248];
          v144 = v188;
          *v188 = 4;
          *(v144 + 1) = 0u;
          *(v144 + 3) = 0u;
          v144[5] = 0;
          *(v144 + 3) = xmmword_1E1B11BA0;
          if (result != v143)
          {
            return (*(v35 + 8))(v38, v34);
          }

          return result;
        }

        v114 = 2;
      }

      v125 = v188;
      *v188 = v114;
      *(v125 + 1) = 0u;
      *(v125 + 3) = 0u;
      v125[5] = 0;
      *(v125 + 3) = xmmword_1E1B11BA0;
      return result;
    }

    (*(v35 + 96))(v38, v34);
    v75 = *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB820) + 48));
    v77 = v174;
    v76 = v175;
    v78 = v38;
    v79 = v176;
    (v175[4])(v174, v78, v176);
    v80 = v173;
    (v76[2])(v173, v77, v79);
    v81 = (v76[11])(v80, v79);
    if (v81 != *MEMORY[0x1E698B218])
    {
      if (v81 == *MEMORY[0x1E698B220])
      {
        v82 = 1;
LABEL_45:
        v115 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        result = (v76[1])(v77, v79);
        v116 = v188;
        *v188 = v82;
        v116[1] = v115;
        v116[6] = 0x7000000000000000;
        return result;
      }

      (v76[1])(v80, v79);
    }

    v82 = 0;
    goto LABEL_45;
  }

  (*(v35 + 96))(v38, v34);
  v48 = v186;
  v49 = v182;
  (*(v186 + 32))(v182, v38, v187);
  v50 = sub_1E1AF302C();
  v51 = v185;
  sub_1E1AF305C();
  v52 = v183;
  v53 = v184;
  v54 = v183[11];
  v55 = v54(v51, v184);
  v56 = *MEMORY[0x1E698B1D0];
  v176 = v50;
  if (v55 == v56)
  {
    (v52[12])(v51, v53);
    v58 = v179;
    v57 = v180;
    v59 = v181;
    (*(v180 + 32))(v179, v51, v181);
    v60 = v178;
    sub_1E1AF30CC();
    sub_1E1AF307C();
    v62 = v61;
    v63 = *(v57 + 8);
    v63(v60, v59);
    v64 = v177;
    sub_1E1AF30CC();
    v185 = sub_1E1AF308C();
    v63(v64, v59);
    v184 = sub_1E1AF308C();
    v65 = sub_1E1AF301C();
    v183 = [v65 installProgress];

    v66 = sub_1E1AF301C();
    v67 = [v66 postProcessProgress];

    v68 = sub_1E1AF2FFC();
    LOBYTE(v64) = sub_1E1AF300C();
    v69 = sub_1E1AF2FEC();
    v63(v58, v59);
    result = (*(v48 + 8))(v49, v187);
    v70 = v188;
    *v188 = v62;
    v71 = v184;
    v70[1] = v185;
    v70[2] = v71;
    v70[3] = v183;
    v70[4] = v67;
    v72 = (v64 & 1) == 0;
LABEL_26:
    v73 = 0x5000000000000000;
    v74 = 0x5000000000000100;
LABEL_34:
    if (!v72)
    {
      v73 = v74;
    }

    v70[5] = v176;
    v70[6] = v73 & 0xFFFFFFFFFFFFFFFELL | v68 & 1;
    v70[7] = v69;
    return result;
  }

  v83 = v181;
  if (v55 == *MEMORY[0x1E698B1C8])
  {
    v84 = v185;
    (v52[12])(v185, v53);
    v86 = v179;
    v85 = v180;
    (*(v180 + 32))(v179, v84, v83);
    v87 = v178;
    sub_1E1AF30CC();
    sub_1E1AF307C();
    v89 = v88;
    v90 = *(v85 + 8);
    v90(v87, v83);
    v91 = v177;
    sub_1E1AF30CC();
    v185 = sub_1E1AF308C();
    v90(v91, v83);
    v92 = sub_1E1AF301C();
    v184 = [v92 downloadProgress];

    v93 = sub_1E1AF308C();
    v94 = sub_1E1AF301C();
    v95 = [v94 postProcessProgress];

    v68 = sub_1E1AF2FFC();
    v96 = sub_1E1AF300C();
    v69 = sub_1E1AF2FEC();
    v90(v86, v83);
    result = (*(v186 + 8))(v49, v187);
    v70 = v188;
    *v188 = v89;
    v97 = v184;
    v70[1] = v185;
    v70[2] = v97;
    v70[3] = v93;
    v70[4] = v95;
    v72 = (v96 & 1) == 0;
    v73 = 0x6000000000000000;
    v74 = 0x6000000000000100;
    goto LABEL_34;
  }

  v99 = *MEMORY[0x1E698B1D8];
  if (v55 == *MEMORY[0x1E698B1D8])
  {
    v100 = v185;
    (v52[12])(v185, v53);
    v101 = v179;
    v102 = v180;
    (*(v180 + 32))(v179, v100, v83);
    v103 = v178;
    sub_1E1AF30CC();
    sub_1E1AF307C();
    v105 = v104;
    v106 = *(v102 + 8);
    v106(v103, v83);
    v107 = v177;
    sub_1E1AF30CC();
    v185 = sub_1E1AF308C();
    v106(v107, v83);
    v108 = sub_1E1AF301C();
    v184 = [v108 downloadProgress];

    v109 = sub_1E1AF301C();
    v110 = [v109 installProgress];

    v111 = sub_1E1AF308C();
    v68 = sub_1E1AF2FFC();
    v112 = sub_1E1AF300C();
    v69 = sub_1E1AF2FEC();
    v106(v101, v83);
    result = (*(v186 + 8))(v49, v187);
    v70 = v188;
    *v188 = v105;
    v113 = v184;
    v70[1] = v185;
    v70[2] = v113;
    v70[3] = v110;
    v70[4] = v111;
    v72 = (v112 & 1) == 0;
    goto LABEL_26;
  }

  if (v55 == *MEMORY[0x1E698B1E0])
  {
    v117 = v52[12];
    v118 = v185;
    v175 = v52 + 12;
    v177 = v117;
    (v117)(v185, v53);
    v185 = *v118;
    v119 = swift_projectBox();
    v120 = v52[2];
    (v120)(v172, v119, v53);
    v121 = v171;
    v174 = v120;
    v120();
    if (v54(v121, v53) == v99)
    {
      (v177)(v121, v184);
      v122 = v180;
      v123 = v170;
      (*(v180 + 32))(v170, v121, v83);
      v177 = sub_1E1AF308C();
      (*(v122 + 8))(v123, v83);
      v124 = 0;
    }

    else
    {
      v145 = v177;
      v146 = v184;
      v147 = v183[1];
      v147(v121, v184);
      v148 = v169;
      (v174)(v169, v172, v146);
      if (v54(v148, v146) != v56)
      {
        v147(v148, v146);
        v177 = 0;
        v124 = 0;
        v151 = v186;
        v150 = v187;
        v83 = v181;
        v152 = v182;
        v122 = v180;
        goto LABEL_61;
      }

      v145(v148, v146);
      v122 = v180;
      v83 = v181;
      v149 = v168;
      (*(v180 + 32))(v168, v148, v181);
      v124 = sub_1E1AF308C();
      (*(v122 + 8))(v149, v83);
      v177 = 0;
    }

    v151 = v186;
    v150 = v187;
    v152 = v182;
LABEL_61:
    v153 = v179;
    sub_1E1AF30CC();
    sub_1E1AF307C();
    v155 = v154;
    v156 = *(v122 + 8);
    v156(v153, v83);
    v157 = v178;
    sub_1E1AF30CC();
    v158 = sub_1E1AF308C();
    v156(v157, v83);
    v159 = sub_1E1AF301C();
    v160 = [v159 installProgress];

    v161 = v152;
    v162 = sub_1E1AF2FFC();
    v163 = sub_1E1AF300C();
    v164 = sub_1E1AF2FEC();
    (v183[1])(v172, v184);
    (*(v151 + 8))(v161, v150);

    v165 = v188;
    *v188 = v155;
    v165[1] = v158;
    v165[2] = v124;
    v166 = v177;
    v165[3] = v160;
    v165[4] = v166;
    v167 = 0x4000000000000000;
    if (v163)
    {
      v167 = 0x4000000000000100;
    }

    v165[5] = v176;
    v165[6] = v167 & 0xFFFFFFFFFFFFFFFELL | v162 & 1;
    v165[7] = v164;
    return result;
  }

  v126 = v179;
  sub_1E1AF30CC();
  sub_1E1AF307C();
  v128 = v127;
  v129 = v50;
  v130 = *(v180 + 8);
  v130(v126, v83);
  v131 = v178;
  sub_1E1AF30CC();
  v132 = sub_1E1AF308C();
  v130(v131, v83);
  v133 = sub_1E1AF301C();
  v134 = [v133 downloadProgress];

  v135 = sub_1E1AF301C();
  v136 = [v135 installProgress];

  v137 = sub_1E1AF301C();
  v138 = v52;
  v139 = [v137 postProcessProgress];

  LOBYTE(v131) = sub_1E1AF300C();
  v140 = sub_1E1AF2FEC();
  (*(v186 + 8))(v49, v187);
  v141 = v188;
  *v188 = v128;
  v141[1] = v132;
  v141[2] = v134;
  v141[3] = v136;
  v141[4] = v139;
  v142 = 0x6000000000000000;
  if (v131)
  {
    v142 = 0x6000000000000100;
  }

  v141[5] = v129;
  v141[6] = v142;
  v141[7] = v140;
  return (v138[1])(v185, v53);
}

uint64_t sub_1E196D020@<X0>(_BYTE *a1@<X8>)
{
  v146 = a1;
  v2 = sub_1E1AF310C();
  v128 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF30DC();
  v139 = *(v5 - 8);
  v140 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v138 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1E1AF304C();
  v144 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v132 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v131 = (&v124 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v141 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v124 - v15;
  v145 = sub_1E1AF30AC();
  v137 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v129 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v124 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v124 - v24;
  v25 = sub_1E1AF30EC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E1AF30FC();
  v30 = *(v29 - 8);
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v35 = v1[1];
  v36 = v1[6];
  v37 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v34)
        {
          v53 = MEMORY[0x1E698B1E8];
        }

        else
        {
          v53 = MEMORY[0x1E698B1F0];
        }

        (*(v26 + 104))(v28, *v53, v25, v31);
        v46 = v146;
        (*(v26 + 32))(v146, v28, v25);
        v47 = MEMORY[0x1E698B268];
      }

      else
      {
        (*(v30 + 104))(v33, **(&unk_1E870FC50 + v34), v29, v31.n128_f64[0]);
        v46 = v146;
        (*(v30 + 32))(v146, v33, v29);
        v47 = MEMORY[0x1E698B250];
      }

      goto LABEL_67;
    }

    v48 = v146;
    *v146 = v34;
    v48[7] = HIBYTE(v34);
    *(v48 + 5) = HIDWORD(v34) >> 8;
    *(v48 + 1) = v34 >> 8;
    *(v48 + 1) = v35;
    if (v37 == 2)
    {
      v49 = MEMORY[0x1E698B270];
    }

    else
    {
      v49 = MEMORY[0x1E698B230];
    }

    v54 = *v49;
    v55 = sub_1E1AF316C();
    (*(*(v55 - 8) + 104))(v48, v54, v55);
  }

  v38 = v1[2];
  v39 = v1[3];
  v40 = v1[4];
  v41 = v1[5];
  v42 = v1[7];
  if (v37 <= 5)
  {
    v50 = v142;
    v127 = v42;
    v126 = v36;
    v125 = v41;
    v124 = v39;
    if (v37 == 4)
    {
      v51 = (v36 >> 8);
      if (!v35)
      {
        [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      }

      v66 = v35;
      sub_1E1AF30BC();
      sub_1E1AF307C();
      v134 = v51;
      if (v40)
      {
        v67 = v40;
        v68 = v130;
        sub_1E1AF306C();
        v69 = v144;
        (*(v144 + 104))(v68, *MEMORY[0x1E698B1D8], v50);
        v70 = v38;
      }

      else
      {
        v69 = v144;
        if (!v38)
        {
          [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
        }

        v93 = v130;
        v70 = v38;
        sub_1E1AF306C();
        (*(v69 + 104))(v93, *MEMORY[0x1E698B1D0], v50);
        v67 = 0;
      }

      v94 = *(v69 + 16);
      v95 = v141;
      v94();
      v96 = v137;
      v132 = *(v137 + 16);
      v132(v143, v133, v145);
      v97 = objc_allocWithZone(MEMORY[0x1E698B488]);
      v98 = sub_1E1AF5DBC();
      v99 = [v97 initWithBundleID_];

      [v99 setInstallProgress_];
      [v99 setDownloadProgress_];
      [v99 setPostProcessProgress_];
      [v99 setHasPostProcessing_];
      [v99 setEssentialBackgroundAssetDownloadEstimate_];
      [v99 setStoreExternalVersionID_];
      v100 = v95;
      (v94)(v136, v95, v50);
      v101 = v143;
      v102 = v145;
      v132(v135, v143, v145);
      v103 = v138;
      sub_1E1AF303C();
      v104 = *(v96 + 8);
      v104(v101, v102);
      v105 = *(v144 + 8);
      v105(v100, v50);
      v105(v130, v50);
      v106 = v133;
    }

    else
    {
      v133 = (v36 >> 8);
      if (!v35)
      {
        [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      }

      v71 = v38;
      v72 = v35;
      sub_1E1AF306C();
      if (v40)
      {
        v73 = v40;
        v74 = v131;
        sub_1E1AF306C();
        v75 = v144;
        (*(v144 + 104))(v74, *MEMORY[0x1E698B1D8], v50);
        v76 = v71;
        v77 = v73;
      }

      else
      {
        v75 = v144;
        if (!v71)
        {
          [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
        }

        v76 = v71;
        v107 = v131;
        sub_1E1AF306C();
        (*(v75 + 104))(v107, *MEMORY[0x1E698B1D0], v50);
        v77 = 0;
      }

      v108 = *(v75 + 16);
      v109 = v141;
      v108();
      v110 = v137;
      v132 = *(v137 + 16);
      v132(v143, v134, v145);
      v111 = objc_allocWithZone(MEMORY[0x1E698B488]);
      v112 = sub_1E1AF5DBC();
      v113 = [v111 initWithBundleID_];

      [v113 setInstallProgress_];
      [v113 setDownloadProgress_];
      [v113 setPostProcessProgress_];
      [v113 setHasPostProcessing_];
      [v113 setEssentialBackgroundAssetDownloadEstimate_];
      [v113 setStoreExternalVersionID_];
      v114 = v109;
      (v108)(v136, v109, v50);
      v115 = v143;
      v102 = v145;
      v132(v135, v143, v145);
      v103 = v138;
      sub_1E1AF303C();
      v104 = *(v110 + 8);
      v104(v115, v102);
      v116 = *(v144 + 8);
      v116(v114, v50);
      v116(v131, v50);
      v106 = v134;
    }

    v104(v106, v102);
    v46 = v146;
    (*(v139 + 32))(v146, v103, v140);
    goto LABEL_66;
  }

  if (v37 == 6)
  {
    v52 = v142;
    v126 = v36;
    v134 = (v36 >> 8);
    if (!v35)
    {
      [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    }

    v61 = v35;
    sub_1E1AF306C();
    v127 = v42;
    v125 = v41;
    v124 = v39;
    if (v40)
    {
      v62 = v40;
      v63 = v132;
      v133 = v62;
      sub_1E1AF306C();
      v64 = v144;
      v65 = v52;
      (*(v144 + 104))(v63, *MEMORY[0x1E698B1D8], v52);
      v130 = v38;
    }

    else
    {
      v64 = v144;
      if (!v38)
      {
        [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      }

      v130 = v38;
      v63 = v132;
      sub_1E1AF306C();
      v65 = v52;
      (*(v64 + 104))(v63, *MEMORY[0x1E698B1D0], v52);
      v133 = 0;
    }

    v78 = *(v64 + 16);
    v78(v141, v63, v65);
    v79 = v137;
    v131 = *(v137 + 16);
    v80 = v143;
    v131();
    v81 = v65;
    v82 = objc_allocWithZone(MEMORY[0x1E698B488]);
    v83 = sub_1E1AF5DBC();
    v84 = [v82 initWithBundleID_];

    [v84 setInstallProgress_];
    [v84 setDownloadProgress_];
    [v84 setPostProcessProgress_];
    [v84 setHasPostProcessing_];
    [v84 setEssentialBackgroundAssetDownloadEstimate_];
    [v84 setStoreExternalVersionID_];
    v85 = v141;
    v78(v136, v141, v81);
    v86 = v80;
    v87 = v80;
    v88 = v145;
    (v131)(v135, v87, v145);
    v89 = v138;
    sub_1E1AF303C();
    v90 = *(v79 + 8);
    v91 = v88;
    v90(v86, v88);
    v92 = *(v144 + 8);
    v92(v85, v81);
    v92(v132, v81);
    v90(v129, v91);
    v46 = v146;
    (*(v139 + 32))(v146, v89, v140);
LABEL_66:
    v47 = MEMORY[0x1E698B228];
LABEL_67:
    v117 = *v47;
    v118 = sub_1E1AF316C();
    return (*(*(v118 - 8) + 104))(v46, v117, v118);
  }

  if (v37 == 7)
  {
    v43 = v128;
    if (v34)
    {
      v44 = MEMORY[0x1E698B220];
    }

    else
    {
      v44 = MEMORY[0x1E698B218];
    }

    (*(v128 + 104))(v4, *v44, v2, v31);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB820) + 48);
    v46 = v146;
    (*(v43 + 32))(v146, v4, v2);
    *&v46[v45] = [v35 longLongValue];
    v47 = MEMORY[0x1E698B258];
    goto LABEL_67;
  }

  v57 = v38 | v35;
  v58 = v40 | v41;
  if (v36 != 0x8000000000000000 || v57 | v34 | v39 | v58 | v42)
  {
    v60 = v57 | v39 | v58;
    if ((v42 || v36 != 0x8000000000000000 || v34 != 1 || v60) && (v42 || v36 != 0x8000000000000000 || v34 != 2 || v60))
    {
      v59 = MEMORY[0x1E698B248];
    }

    else
    {
      v59 = MEMORY[0x1E698B260];
    }
  }

  else
  {
    v59 = MEMORY[0x1E698B240];
  }

  v119 = *v59;
  v120 = sub_1E1AF316C();
  v121 = *(*(v120 - 8) + 104);
  v122 = v120;
  v123 = v146;

  return v121(v123, v119, v122);
}

AppStoreKit::ProductMedia::DescriptionPlacement_optional __swiftcall ProductMedia.DescriptionPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t ProductMedia.DescriptionPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_1E196E21C@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

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

uint64_t ProductMedia.platformDescription.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductMedia.allPlatformsDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ProductMedia.hasPortraitPhoneMedia.getter()
{
  if ((*(*(v0 + 24) + 16) & 0xFD) != 0)
  {
    return 0;
  }

  else
  {
    return ProductMedia.hasPortraitMedia.getter();
  }
}

uint64_t ProductMedia.hasPortraitMedia.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_1E1AF71CC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E68FFD80](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v6 = *(v1 + 8 * v3 + 32);

          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v8 = *(v6 + 16);
        if (v8)
        {

          v5 = *(v8 + 32);
          v4 = *(v8 + 40);
        }

        else
        {
          v9 = *(v6 + 24);

          if (!v9)
          {
            goto LABEL_6;
          }

          v10 = *(v9 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);

          v5 = *(v10 + 32);
          v4 = *(v10 + 40);
        }

        if (v5 <= v4)
        {
          return 1;
        }

LABEL_6:
        ++v3;
      }

      while (v7 != v2);
    }
  }

  return 0;
}

uint64_t ProductMedia.screenshotOnlyItems.getter()
{
  v1 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1E1AF71CC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E68FFD80](i, v1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_14:
            __break(1u);
            return v7;
          }
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * i + 32);

          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(v4 + 24) || !*(v4 + 16))
        {
        }

        else
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        if (v5 == v2)
        {
          return v7;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}