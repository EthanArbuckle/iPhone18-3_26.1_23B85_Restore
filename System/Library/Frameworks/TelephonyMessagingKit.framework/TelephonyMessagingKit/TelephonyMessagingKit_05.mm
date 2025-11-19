uint64_t sub_1E4B49A1C(uint64_t a1)
{
  v2 = sub_1E4B49FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C10, &qword_1E4C07478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B49FE0();
  sub_1E4BF0ACC();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v14[15] = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v14[14] = 1;
    sub_1E4BEFA6C();
    sub_1E4B4A454(&qword_1ECF92FF0);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4B49C10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E4B49CB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E4B49C60()
{
  result = qword_1ECF94C00;
  if (!qword_1ECF94C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C00);
  }

  return result;
}

uint64_t sub_1E4B49CB4(uint64_t *a1)
{
  v3 = sub_1E4BEFA6C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C50, &qword_1E4C077A8);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v25 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B49FE0();
  sub_1E4BF0ABC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = a1;
    v13 = v7;
    v30 = 0;
    v14 = v28;
    v15 = sub_1E4BF083C();
    v17 = v16;
    v25 = v15;
    v29 = 1;
    sub_1E4B4A454(&qword_1ECF93050);
    sub_1E4BF087C();
    (*(v13 + 8))(v10, v14);
    type metadata accessor for SandboxExtension.Context();
    v19 = v17;
    v20 = swift_allocObject();
    v20[2] = j__sandbox_extension_consume;
    v20[3] = 0;
    v20[4] = j__sandbox_extension_release;
    v20[5] = 0;
    v20[6] = j__sandbox_extension_issue_file;
    v20[7] = 0;
    v21 = type metadata accessor for SandboxExtension();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v12 = swift_allocObject();
    *(v12 + 48) = 1;
    v24 = v25;
    *(v12 + 16) = v20;
    *(v12 + 24) = v24;
    *(v12 + 32) = v19;
    *(v12 + 40) = 0;
    (*(v27 + 32))(v12 + OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL, v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v12;
}

unint64_t sub_1E4B49FE0()
{
  result = qword_1ECF94C18;
  if (!qword_1ECF94C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C18);
  }

  return result;
}

unint64_t sub_1E4B4A038()
{
  result = qword_1ECF94C20;
  if (!qword_1ECF94C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C20);
  }

  return result;
}

uint64_t type metadata accessor for SandboxExtension()
{
  result = qword_1ECF94C28;
  if (!qword_1ECF94C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B4A0F0()
{
  result = sub_1E4BEFA6C();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtension.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SandboxExtension.State(uint64_t result, int a2, int a3)
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

uint64_t sub_1E4B4A244(uint64_t a1)
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

uint64_t sub_1E4B4A260(uint64_t result, int a2)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1E4B4A300(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4B4A31C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1E4B4A350()
{
  result = qword_1ECF94C38;
  if (!qword_1ECF94C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C38);
  }

  return result;
}

unint64_t sub_1E4B4A3A8()
{
  result = qword_1ECF94C40;
  if (!qword_1ECF94C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C40);
  }

  return result;
}

unint64_t sub_1E4B4A400()
{
  result = qword_1ECF94C48;
  if (!qword_1ECF94C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C48);
  }

  return result;
}

uint64_t sub_1E4B4A454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFA6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B4A49C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t RCSService.Business.PostbackData.body.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.PostbackData.init(body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RCSService.Business.PostbackData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4B4A55C(uint64_t a1)
{
  v2 = sub_1E4B4A710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4A598(uint64_t a1)
{
  v2 = sub_1E4B4A710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.PostbackData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C58, &qword_1E4C077B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4B4A710()
{
  result = qword_1ECF94C60;
  if (!qword_1ECF94C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C60);
  }

  return result;
}

uint64_t RCSService.Business.PostbackData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C68, &qword_1E4C077B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v11 = sub_1E4BF083C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4A8F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C58, &qword_1E4C077B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSService.Business.SuggestedReply.displayText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.SuggestedReply.postbackData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 RCSService.Business.SuggestedReply.init(displayText:postbackData:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_1E4B4AA7C()
{
  if (*v0)
  {
    result = 0x6B63616274736F70;
  }

  else
  {
    result = 0x5479616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4ABAC(uint64_t a1)
{
  v2 = sub_1E4B5AED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4ABE8(uint64_t a1)
{
  v2 = sub_1E4B5AED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedReply.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C70, &qword_1E4C077C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AED8();
  sub_1E4BF0ACC();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_1E4BF08FC();
  if (!v12)
  {
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_1E4B5AF2C();

    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSService.Business.SuggestedReply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C88, &qword_1E4C077C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AED8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_1E4B5AF80();
  sub_1E4BF082C();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4B020()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x614C6D756964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E4B4B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B640EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B4B0A4(uint64_t a1)
{
  v2 = sub_1E4B5AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B0E0(uint64_t a1)
{
  v2 = sub_1E4B5AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B11C(uint64_t a1)
{
  v2 = sub_1E4B5B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B158(uint64_t a1)
{
  v2 = sub_1E4B5B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B194(uint64_t a1)
{
  v2 = sub_1E4B5B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B1D0(uint64_t a1)
{
  v2 = sub_1E4B5B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B20C(uint64_t a1)
{
  v2 = sub_1E4B5B028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B248(uint64_t a1)
{
  v2 = sub_1E4B5B028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.Detent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C98, &qword_1E4C077D0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CA0, &qword_1E4C077D8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CA8, &qword_1E4C077E0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CB0, &qword_1E4C077E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AFD4();
  sub_1E4BF0ACC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E4B5B07C();
      v12 = v26;
      sub_1E4BF08BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E4B5B028();
      v12 = v29;
      sub_1E4BF08BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E4B5B0D0();
    sub_1E4BF08BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t RCSService.Business.OpenURLAction.Detent.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CD8, &qword_1E4C077F0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CE0, &qword_1E4C077F8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CE8, &qword_1E4C07800);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CF0, &unk_1E4C07808);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4B5AFD4();
  v20 = v43;
  sub_1E4BF0ABC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E4AE0F1C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E4BF06EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v30 = &type metadata for RCSService.Business.OpenURLAction.Detent;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E4B5B07C();
          sub_1E4BF07EC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E4B5B028();
          v33 = v22;
          sub_1E4BF07EC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E4B5B0D0();
        sub_1E4BF07EC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

BOOL static RCSService.Business.OpenURLAction.Target.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1E4B4BBFC()
{
  if (*v0)
  {
    result = 0x7070416E69;
  }

  else
  {
    result = 0x42746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x42746C7561666564 && a2 == 0xEE00726573776F72;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7070416E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4BD20(uint64_t a1)
{
  v2 = sub_1E4B5B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BD5C(uint64_t a1)
{
  v2 = sub_1E4B5B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4BD98(uint64_t a1)
{
  v2 = sub_1E4B5B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BDD4(uint64_t a1)
{
  v2 = sub_1E4B5B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746564 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B4BEA8(uint64_t a1)
{
  v2 = sub_1E4B5B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BEE4(uint64_t a1)
{
  v2 = sub_1E4B5B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CF8, &qword_1E4C07818);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D00, &qword_1E4C07820);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D08, &qword_1E4C07828);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B124();
  sub_1E4BF0ACC();
  if (v15 == 3)
  {
    v25 = 0;
    sub_1E4B5B220();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_1E4B5B178();
    v18 = v22;
    sub_1E4BF08BC();
    v26 = v15;
    sub_1E4B5B1CC();
    v19 = v24;
    sub_1E4BF093C();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t RCSService.Business.OpenURLAction.Target.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D30, &qword_1E4C07830);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D38, &qword_1E4C07838);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D40, &qword_1E4C07840);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E4B5B124();
  v19 = v41;
  sub_1E4BF0ABC();
  if (!v19)
  {
    v41 = v13;
    v21 = v39;
    v20 = v40;
    v22 = sub_1E4BF088C();
    v23 = (2 * *(v22 + 16)) | 1;
    v43 = v22;
    v44 = v22 + 32;
    v45 = 0;
    v46 = v23;
    v24 = sub_1E4AE0F10();
    if (v24 == 2 || v45 != v46 >> 1)
    {
      v28 = sub_1E4BF06EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v30 = &type metadata for RCSService.Business.OpenURLAction.Target;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v47 = 1;
        sub_1E4B5B178();
        v25 = v16;
        v26 = v7;
        sub_1E4BF07EC();
        v27 = v41;
        sub_1E4B5B274();
        v34 = v26;
        v35 = v37;
        sub_1E4BF087C();
        (*(v38 + 8))(v34, v35);
        (*(v27 + 8))(v25, v12);
        swift_unknownObjectRelease();
        v36 = v47;
      }

      else
      {
        v47 = 0;
        sub_1E4B5B220();
        sub_1E4BF07EC();
        v33 = v41;
        (*(v21 + 8))(v11, v8);
        (*(v33 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v36 = 3;
      }

      *v20 = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

BOOL sub_1E4B4C728(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t RCSService.Business.OpenURLAction.target.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.OpenURLAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t RCSService.Business.OpenURLAction.init(url:target:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1E4BEFA6C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RCSService.Business.OpenURLAction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static RCSService.Business.OpenURLAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1E4BEFA4C())
  {
    v4 = *(type metadata accessor for RCSService.Business.OpenURLAction(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5 == 3)
    {
      if (v6 == 3)
      {
        return 1;
      }
    }

    else if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E4B4C890()
{
  if (*v0)
  {
    result = 0x746567726174;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4C998(uint64_t a1)
{
  v2 = sub_1E4B5B2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4C9D4(uint64_t a1)
{
  v2 = sub_1E4B5B2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D50, &qword_1E4C07848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B2E8();
  sub_1E4BF0ACC();
  v12[15] = 0;
  sub_1E4BEFA6C();
  sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
  sub_1E4BF093C();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for RCSService.Business.OpenURLAction(0) + 20));
    v12[13] = 1;
    sub_1E4B5B33C();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.OpenURLAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_1E4BEFA6C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D68, &unk_1E4C07850);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B2E8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  v19 = v31;
  v20 = v29;
  sub_1E4BF087C();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1E4B5B3D8();
  sub_1E4BF087C();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_1E4B5D6D4(v22, v27, type metadata accessor for RCSService.Business.OpenURLAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v22, type metadata accessor for RCSService.Business.OpenURLAction);
}

uint64_t sub_1E4B4CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  return 1;
}

uint64_t RCSService.Business.DialPhoneNumberAction.init(phoneNumber:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  return sub_1E4AFD6D0(a3, a4 + *(v6 + 20), &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t sub_1E4B4D07C()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4D1AC(uint64_t a1)
{
  v2 = sub_1E4B5D680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4D1E8(uint64_t a1)
{
  v2 = sub_1E4B5D680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.DialPhoneNumberAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D78, &qword_1E4C07860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D680();
  sub_1E4BF0ACC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v13 = *(type metadata accessor for RCSService.Business.DialPhoneNumberAction(0) + 20);
    v15[14] = 1;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.DialPhoneNumberAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D88, &qword_1E4C07868);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D680();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v22;
  v25 = 0;
  *v15 = sub_1E4BF083C();
  v15[1] = v18;
  sub_1E4BEFA6C();
  v24 = 1;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF082C();
  (*(v17 + 8))(v11, v23);
  sub_1E4AFD6D0(v7, v15 + *(v12 + 20), &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v15, v21, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v15, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
}

uint64_t RCSService.Business.ShowLocationAction.method.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1E4B5D79C(v2, v3, v4);
}

uint64_t RCSService.Business.ShowLocationAction.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RCSService.Business.ShowLocationAction.init(method:label:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  v8 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  return sub_1E4AFD6D0(a4, a5 + *(v8 + 24), &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t static RCSService.Business.ShowLocationAction.Method.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v8 & 1) == 0 && v4 == v6)
    {
      v11 = *(a1 + 8);
      return v5 == v7;
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (*&v4 == *&v6 && *&v5 == *&v7)
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4B4D884()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646F6874656DLL;
  }
}

uint64_t sub_1E4B4D8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B64200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B4D908(uint64_t a1)
{
  v2 = sub_1E4B5D7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4D944(uint64_t a1)
{
  v2 = sub_1E4B5D7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ShowLocationAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D90, &qword_1E4C07870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D7CC();
  sub_1E4BF0ACC();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  v17[7] = 0;
  sub_1E4B5D79C(v18, v11, v12);
  sub_1E4B5D820();
  sub_1E4BF093C();
  sub_1E4B5D874(v18, v19, v20);
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v18) = 1;
    sub_1E4BF08CC();
    v15 = *(type metadata accessor for RCSService.Business.ShowLocationAction(0) + 24);
    LOBYTE(v18) = 2;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.ShowLocationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DA8, &qword_1E4C07878);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D7CC();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v17 = v15;
  v18 = v25;
  v29 = 0;
  sub_1E4B5D884();
  v19 = v26;
  sub_1E4BF087C();
  v20 = v28;
  *v17 = v27;
  *(v17 + 16) = v20;
  LOBYTE(v27) = 1;
  *(v17 + 24) = sub_1E4BF080C();
  *(v17 + 32) = v21;
  sub_1E4BEFA6C();
  LOBYTE(v27) = 2;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF082C();
  (*(v18 + 8))(v11, v19);
  sub_1E4AFD6D0(v7, v17 + *(v23 + 24), &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v17, v24, type metadata accessor for RCSService.Business.ShowLocationAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v17, type metadata accessor for RCSService.Business.ShowLocationAction);
}

uint64_t RCSService.Business.CreateCalendarEventAction.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 20);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.Business.CreateCalendarEventAction.title.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.CreateCalendarEventAction.description.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.CreateCalendarEventAction.init(startTime:endTime:title:description:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_1E4BEFABC();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v16(a8 + CalendarEventAction[5], a2, v15);
  v18 = (a8 + CalendarEventAction[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a8 + CalendarEventAction[7]);
  *v19 = a5;
  v19[1] = a6;
  return sub_1E4AFD6D0(a7, a8 + CalendarEventAction[8], &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t sub_1E4B4E190()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

uint64_t sub_1E4B4E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B64314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B4E264(uint64_t a1)
{
  v2 = sub_1E4B5D8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4E2A0(uint64_t a1)
{
  v2 = sub_1E4B5D8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.CreateCalendarEventAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DB8, &qword_1E4C07880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D8F8();
  sub_1E4BF0ACC();
  v26 = 0;
  sub_1E4BEFABC();
  sub_1E4B5B390(&qword_1ECF925B0, MEMORY[0x1E6969530]);
  sub_1E4BF093C();
  if (!v2)
  {
    CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
    v12 = CalendarEventAction[5];
    v25 = 1;
    sub_1E4BF093C();
    v13 = (v3 + CalendarEventAction[6]);
    v14 = *v13;
    v15 = v13[1];
    v24 = 2;
    sub_1E4BF08FC();
    v16 = (v3 + CalendarEventAction[7]);
    v17 = *v16;
    v18 = v16[1];
    v23 = 3;
    sub_1E4BF08CC();
    v19 = CalendarEventAction[8];
    v22 = 4;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.CreateCalendarEventAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  v46 = sub_1E4BEFABC();
  v42 = *(v46 - 8);
  v7 = *(v42 + 64);
  v8 = MEMORY[0x1EEE9AC00](v46);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DC8, &qword_1E4C07888);
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v17 = *(*(CalendarEventAction - 8) + 64);
  MEMORY[0x1EEE9AC00](CalendarEventAction);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D8F8();
  v47 = v15;
  v21 = v48;
  sub_1E4BF0ABC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v6;
  v39 = CalendarEventAction;
  v40 = v19;
  v48 = a1;
  v53 = 0;
  sub_1E4B5B390(&qword_1ECF925D8, MEMORY[0x1E6969530]);
  v22 = v43;
  v23 = v45;
  sub_1E4BF087C();
  v24 = v40;
  v25 = v22;
  v26 = v46;
  v43 = *(v42 + 32);
  (v43)(v40, v25, v46);
  v52 = 1;
  sub_1E4BF087C();
  v27 = v39;
  (v43)(v24 + v39[5], v10, v26);
  v51 = 2;
  v28 = sub_1E4BF083C();
  v29 = v48;
  v30 = v44;
  v31 = (v24 + v27[6]);
  *v31 = v28;
  v31[1] = v32;
  v50 = 3;
  v33 = sub_1E4BF080C();
  v34 = (v24 + v27[7]);
  *v34 = v33;
  v34[1] = v35;
  sub_1E4BEFA6C();
  v49 = 4;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF082C();
  (*(v30 + 8))(v47, v23);
  sub_1E4AFD6D0(v38, v24 + v27[8], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v24, v41, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1E4B5D73C(v24, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
}

uint64_t RCSService.Business.ComposeTextAction.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RCSService.Business.ComposeTextAction.init(phoneNumber:text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static RCSService.Business.ComposeTextAction.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t sub_1E4B4EC88()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4EDA4(uint64_t a1)
{
  v2 = sub_1E4B5D94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4EDE0(uint64_t a1)
{
  v2 = sub_1E4B5D94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeTextAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DD0, &qword_1E4C07890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D94C();
  sub_1E4BF0ACC();
  v16 = 0;
  v12 = v14[3];
  sub_1E4BF08FC();
  if (!v12)
  {
    v15 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSService.Business.ComposeTextAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DE0, &qword_1E4C07898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D94C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E4BF083C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4F1F8(uint64_t a1)
{
  v2 = sub_1E4B5DA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F234(uint64_t a1)
{
  v2 = sub_1E4B5DA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4F270()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_1E4B4F29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4F370(uint64_t a1)
{
  v2 = sub_1E4B5D9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F3AC(uint64_t a1)
{
  v2 = sub_1E4B5D9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4F3E8(uint64_t a1)
{
  v2 = sub_1E4B5D9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F424(uint64_t a1)
{
  v2 = sub_1E4B5D9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeRecordingAction.MediaType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DE8, &qword_1E4C078A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DF0, &qword_1E4C078A8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DF8, &qword_1E4C078B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D9A0();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B5D9F4();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B5DA48();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.ComposeRecordingAction.MediaType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E18, &qword_1E4C078B8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E20, &qword_1E4C078C0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E28, &qword_1E4C078C8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D9A0();
  v16 = v36;
  sub_1E4BF0ABC();
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
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.ComposeRecordingAction.MediaType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
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
        sub_1E4B5D9F4();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B5DA48();
        sub_1E4BF07EC();
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

uint64_t RCSService.Business.ComposeRecordingAction.phoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.ComposeRecordingAction.init(phoneNumber:mediaType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static RCSService.Business.ComposeRecordingAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E4BF099C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1E4B4FCD8()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4FD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B4FE08(uint64_t a1)
{
  v2 = sub_1E4B5DA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4FE44(uint64_t a1)
{
  v2 = sub_1E4B5DA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeRecordingAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E30, &qword_1E4C078D0);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5DA9C();
  sub_1E4BF0ACC();
  v17 = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1E4B5DAF0();
    sub_1E4BF093C();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t RCSService.Business.ComposeRecordingAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E48, &qword_1E4C078D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5DA9C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1E4B5DB44();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B50238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E4BF099C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1E4B5029C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C52556E65706FLL;
    v6 = 0x61636F4C776F6873;
    if (a1 != 2)
    {
      v6 = 0x61636F4C646E6573;
    }

    if (a1)
    {
      v5 = 0x6E6F68506C616964;
    }

    if (a1 <= 1u)
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
    v1 = 0x5465736F706D6F63;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E4B503EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B644D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B50420(uint64_t a1)
{
  v2 = sub_1E4B5E500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5045C(uint64_t a1)
{
  v2 = sub_1E4B5E500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50498(uint64_t a1)
{
  v2 = sub_1E4B5E6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B504D4(uint64_t a1)
{
  v2 = sub_1E4B5E6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50510(uint64_t a1)
{
  v2 = sub_1E4B5E5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5054C(uint64_t a1)
{
  v2 = sub_1E4B5E5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50588(uint64_t a1)
{
  v2 = sub_1E4B5E74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B505C4(uint64_t a1)
{
  v2 = sub_1E4B5E74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50600(uint64_t a1)
{
  v2 = sub_1E4B5E8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5063C(uint64_t a1)
{
  v2 = sub_1E4B5E8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50678(uint64_t a1)
{
  v2 = sub_1E4B5E554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B506B4(uint64_t a1)
{
  v2 = sub_1E4B5E554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B506F0(uint64_t a1)
{
  v2 = sub_1E4B5E904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5072C(uint64_t a1)
{
  v2 = sub_1E4B5E904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50768(uint64_t a1)
{
  v2 = sub_1E4B5E5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B507A4(uint64_t a1)
{
  v2 = sub_1E4B5E5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B507E0(uint64_t a1)
{
  v2 = sub_1E4B5E7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5081C(uint64_t a1)
{
  v2 = sub_1E4B5E7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50858(uint64_t a1)
{
  v2 = sub_1E4B5E85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B50894(uint64_t a1)
{
  v2 = sub_1E4B5E85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedAction.Action.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E58, &qword_1E4C078E0);
  v108 = *(v2 - 8);
  v109 = v2;
  v3 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v107 = &v86 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E60, &qword_1E4C078E8);
  v104 = *(v105 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v86 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E68, &qword_1E4C078F0);
  v89 = *(v106 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v86 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E70, &qword_1E4C078F8);
  v88 = *(v101 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v86 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E78, &qword_1E4C07900);
  v87 = *(v118 - 8);
  v11 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v86 - v12;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v13 = *(*(CalendarEventAction - 8) + 64);
  MEMORY[0x1EEE9AC00](CalendarEventAction);
  v116 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E80, &qword_1E4C07908);
  v98 = *(v99 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v95 = &v86 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E88, &qword_1E4C07910);
  v97 = *(v115 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v86 - v18;
  v94 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  v19 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v113 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E90, &qword_1E4C07918);
  v93 = *(v112 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v86 - v22;
  v92 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  v23 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v110 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E98, &qword_1E4C07920);
  v90 = *(v91 - 8);
  v25 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v27 = &v86 - v26;
  v28 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94EA0, &qword_1E4C07928);
  v37 = *(v36 - 8);
  v121 = v36;
  v122 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v86 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5E500();
  v120 = v40;
  sub_1E4BF0ACC();
  sub_1E4B5D6D4(v119, v35, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v119 = v28;
    v49 = v31;
    v50 = v27;
    v51 = v111;
    v53 = v112;
    v52 = v113;
    v55 = v114;
    v54 = v115;
    v56 = v117;
    v57 = v118;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1E4B5E7F4(v35, v113, type metadata accessor for RCSService.Business.ShowLocationAction);
        LOBYTE(v123) = 2;
        sub_1E4B5E85C();
        v66 = v120;
        v65 = v121;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F00, type metadata accessor for RCSService.Business.ShowLocationAction);
        sub_1E4BF093C();
        (*(v97 + 8))(v55, v54);
        sub_1E4B5D73C(v52, type metadata accessor for RCSService.Business.ShowLocationAction);
        return (*(v122 + 8))(v66, v65);
      }

      else
      {
        v78 = v116;
        sub_1E4B5E7F4(v35, v116, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
        LOBYTE(v123) = 4;
        sub_1E4B5E74C();
        v80 = v120;
        v79 = v121;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94EE8, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
        sub_1E4BF093C();
        (*(v87 + 8))(v56, v57);
        sub_1E4B5D73C(v78, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
        return (*(v122 + 8))(v80, v79);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v77 = v110;
        sub_1E4B5E7F4(v35, v110, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
        LOBYTE(v123) = 1;
        sub_1E4B5E8B0();
        v61 = v120;
        v60 = v121;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F10, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
        sub_1E4BF093C();
        (*(v93 + 8))(v51, v53);
        v63 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
        v64 = v77;
      }

      else
      {
        v58 = v49;
        sub_1E4B5E7F4(v35, v49, type metadata accessor for RCSService.Business.OpenURLAction);
        LOBYTE(v123) = 0;
        sub_1E4B5E904();
        v59 = v50;
        v61 = v120;
        v60 = v121;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F20, type metadata accessor for RCSService.Business.OpenURLAction);
        v62 = v91;
        sub_1E4BF093C();
        (*(v90 + 8))(v59, v62);
        v63 = type metadata accessor for RCSService.Business.OpenURLAction;
        v64 = v58;
      }

      sub_1E4B5D73C(v64, v63);
      return (*(v122 + 8))(v61, v60);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      v44 = v120;
      v43 = v121;
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(v123) = 3;
        sub_1E4B5E7A0();
        v75 = v95;
        sub_1E4BF08BC();
        v46 = *(v98 + 8);
        v47 = v75;
        v48 = &v127;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          LOBYTE(v123) = 8;
          sub_1E4B5E554();
          v81 = v107;
          sub_1E4BF08BC();
          v76 = v109;
          v46 = *(v108 + 8);
          v47 = v81;
          goto LABEL_20;
        }

        LOBYTE(v123) = 7;
        sub_1E4B5E5A8();
        v45 = v102;
        sub_1E4BF08BC();
        v46 = *(v104 + 8);
        v47 = v45;
        v48 = &v128;
      }

      v76 = *(v48 - 32);
LABEL_20:
      v46(v47, v76);
      return (*(v122 + 8))(v44, v43);
    }

    v69 = v120;
    v68 = v121;
    v71 = *v35;
    v70 = *(v35 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      v72 = v35[16];
      LOBYTE(v123) = 5;
      sub_1E4B5E6A4();
      v73 = v100;
      sub_1E4BF08BC();
      v123 = v71;
      v124 = v70;
      LOBYTE(v125) = v72;
      sub_1E4B5E6F8();
      v74 = v101;
      sub_1E4BF093C();
      (*(v88 + 8))(v73, v74);
      (*(v122 + 8))(v69, v68);
    }

    else
    {
      v83 = *(v35 + 2);
      v82 = *(v35 + 3);
      LOBYTE(v123) = 6;
      sub_1E4B5E5FC();
      v84 = v103;
      sub_1E4BF08BC();
      v123 = v71;
      v124 = v70;
      v125 = v83;
      v126 = v82;
      sub_1E4B5E650();
      v85 = v106;
      sub_1E4BF093C();
      (*(v89 + 8))(v84, v85);
      (*(v122 + 8))(v69, v68);
    }
  }
}

uint64_t RCSService.Business.SuggestedAction.Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F28, &qword_1E4C07930);
  v141 = *(v128 - 8);
  v3 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v134 = &v104 - v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F30, &qword_1E4C07938);
  v124 = *(v127 - 8);
  v5 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v133 = &v104 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F38, &qword_1E4C07940);
  v125 = *(v126 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v132 = &v104 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F40, &qword_1E4C07948);
  v122 = *(v123 - 8);
  v9 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v140 = &v104 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F48, &qword_1E4C07950);
  v120 = *(v121 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v131 = &v104 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F50, &qword_1E4C07958);
  v117 = *(v118 - 8);
  v13 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v130 = &v104 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F58, &qword_1E4C07960);
  v119 = *(v114 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v139 = &v104 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F60, &qword_1E4C07968);
  v115 = *(v116 - 8);
  v17 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v138 = &v104 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F68, &qword_1E4C07970);
  v112 = *(v113 - 8);
  v19 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v129 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F70, &qword_1E4C07978);
  v136 = *(v21 - 8);
  v137 = v21;
  v22 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v104 - v23;
  v135 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v25 = *(*(v135 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v135);
  v111 = (&v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v110 = (&v104 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v104 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v104 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v104 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v104 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v104 - v42;
  v44 = a1[3];
  v45 = a1[4];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1E4B5E500();
  v143 = v24;
  v46 = v152;
  sub_1E4BF0ABC();
  if (v46)
  {
    goto LABEL_12;
  }

  v105 = v41;
  v106 = v38;
  v107 = v35;
  v108 = v32;
  v47 = v138;
  v48 = v139;
  v152 = 0;
  v49 = v140;
  v50 = v141;
  v109 = v43;
  v52 = v142;
  v51 = v143;
  v53 = v137;
  v54 = sub_1E4BF088C();
  v55 = (2 * *(v54 + 16)) | 1;
  v148 = v54;
  v149 = v54 + 32;
  v150 = 0;
  v151 = v55;
  v56 = sub_1E4ADD488();
  if (v56 == 9 || v150 != v151 >> 1)
  {
    v61 = v51;
    v62 = sub_1E4BF06EC();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v64 = v135;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    (*(v136 + 8))(v61, v53);
    goto LABEL_11;
  }

  if (v56 <= 3u)
  {
    if (v56 > 1u)
    {
      v68 = v136;
      v74 = v152;
      if (v56 != 2)
      {
        LOBYTE(v145) = 3;
        sub_1E4B5E7A0();
        v84 = v130;
        sub_1E4BF07EC();
        if (!v74)
        {
          (*(v117 + 8))(v84, v118);
          (*(v68 + 8))(v51, v53);
          swift_unknownObjectRelease();
          v100 = v109;
LABEL_39:
          swift_storeEnumTagMultiPayload();
LABEL_45:
          v101 = v144;
          goto LABEL_46;
        }

        goto LABEL_31;
      }

      LOBYTE(v145) = 2;
      sub_1E4B5E85C();
      v71 = v51;
      sub_1E4BF07EC();
      if (!v74)
      {
        type metadata accessor for RCSService.Business.ShowLocationAction(0);
        sub_1E4B5B390(&qword_1ECF94F90, type metadata accessor for RCSService.Business.ShowLocationAction);
        v72 = v107;
        v75 = v114;
        sub_1E4BF087C();
        (*(v119 + 8))(v48, v75);
        (*(v68 + 8))(v143, v53);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }
    }

    else
    {
      v68 = v136;
      v69 = v152;
      if (v56)
      {
        LOBYTE(v145) = 1;
        sub_1E4B5E8B0();
        v83 = v47;
        v71 = v51;
        sub_1E4BF07EC();
        if (!v69)
        {
          type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
          sub_1E4B5B390(&qword_1ECF94F98, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
          v72 = v106;
          v93 = v116;
          sub_1E4BF087C();
          (*(v115 + 8))(v83, v93);
          (*(v68 + 8))(v143, v53);
          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(v145) = 0;
        sub_1E4B5E904();
        v70 = v129;
        v71 = v51;
        sub_1E4BF07EC();
        if (!v69)
        {
          type metadata accessor for RCSService.Business.OpenURLAction(0);
          sub_1E4B5B390(&qword_1ECF94FA0, type metadata accessor for RCSService.Business.OpenURLAction);
          v72 = v105;
          v73 = v113;
          sub_1E4BF087C();
          (*(v112 + 8))(v70, v73);
          (*(v68 + 8))(v143, v53);
          swift_unknownObjectRelease();
LABEL_42:
          swift_storeEnumTagMultiPayload();
          v99 = v72;
LABEL_44:
          v100 = v109;
          sub_1E4B5E7F4(v99, v109, type metadata accessor for RCSService.Business.SuggestedAction.Action);
          goto LABEL_45;
        }
      }
    }

    (*(v68 + 8))(v71, v53);
    goto LABEL_11;
  }

  if (v56 <= 5u)
  {
    if (v56 != 4)
    {
      LOBYTE(v145) = 5;
      sub_1E4B5E6A4();
      v89 = v49;
      v90 = v152;
      sub_1E4BF07EC();
      v91 = v51;
      v92 = v136;
      if (v90)
      {
        (*(v136 + 8))(v91, v53);
        goto LABEL_11;
      }

      v94 = v91;
      sub_1E4B5E9AC();
      v95 = v123;
      sub_1E4BF087C();
      (*(v122 + 8))(v89, v95);
      (*(v92 + 8))(v94, v53);
      swift_unknownObjectRelease();
      v102 = *(&v145 + 1);
      v103 = v146;
      v98 = v110;
      *v110 = v145;
      v98[1] = v102;
      *(v98 + 16) = v103;
LABEL_43:
      swift_storeEnumTagMultiPayload();
      v99 = v98;
      goto LABEL_44;
    }

    LOBYTE(v145) = 4;
    sub_1E4B5E74C();
    v76 = v131;
    v77 = v152;
    sub_1E4BF07EC();
    v68 = v136;
    if (!v77)
    {
      type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
      sub_1E4B5B390(&qword_1ECF94F88, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
      v78 = v108;
      v79 = v121;
      sub_1E4BF087C();
      (*(v120 + 8))(v76, v79);
      (*(v68 + 8))(v51, v53);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v100 = v109;
      sub_1E4B5E7F4(v78, v109, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      v101 = v144;
      v52 = v142;
      goto LABEL_46;
    }

LABEL_31:
    (*(v68 + 8))(v51, v53);
    goto LABEL_11;
  }

  if (v56 == 6)
  {
    LOBYTE(v145) = 6;
    sub_1E4B5E5FC();
    v80 = v132;
    v81 = v152;
    sub_1E4BF07EC();
    if (v81)
    {
      (*(v136 + 8))(v51, v53);
      goto LABEL_11;
    }

    sub_1E4B5E958();
    v82 = v126;
    sub_1E4BF087C();
    (*(v125 + 8))(v80, v82);
    (*(v136 + 8))(v51, v53);
    swift_unknownObjectRelease();
    v96 = v146;
    v97 = v147;
    v98 = v111;
    *v111 = v145;
    v98[2] = v96;
    v98[3] = v97;
    goto LABEL_43;
  }

  if (v56 != 7)
  {
    LOBYTE(v145) = 8;
    sub_1E4B5E554();
    v85 = v134;
    v86 = v51;
    v87 = v152;
    sub_1E4BF07EC();
    v88 = v136;
    if (v87)
    {
      (*(v136 + 8))(v86, v53);
      swift_unknownObjectRelease();
      v66 = v144;
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    (*(v50 + 8))(v85, v128);
    (*(v88 + 8))(v86, v53);
    swift_unknownObjectRelease();
    v100 = v109;
    swift_storeEnumTagMultiPayload();
    v101 = v144;
LABEL_46:
    sub_1E4B5E7F4(v100, v52, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    v66 = v101;
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  LOBYTE(v145) = 7;
  sub_1E4B5E5A8();
  v57 = v133;
  v58 = v51;
  v59 = v152;
  sub_1E4BF07EC();
  v60 = v136;
  if (!v59)
  {
    (*(v124 + 8))(v57, v127);
    (*(v60 + 8))(v58, v53);
    swift_unknownObjectRelease();
    v100 = v109;
    goto LABEL_39;
  }

  (*(v136 + 8))(v58, v53);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v66 = v144;
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t RCSService.Business.SuggestedAction.displayText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.SuggestedAction.postbackData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t RCSService.Business.SuggestedAction.init(displayText:postbackData:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  v7 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  return sub_1E4B5E7F4(a4, a5 + *(v7 + 24), type metadata accessor for RCSService.Business.SuggestedAction.Action);
}

uint64_t sub_1E4B52B20()
{
  v1 = 0x6B63616274736F70;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_1E4B52B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B647C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B52BB0(uint64_t a1)
{
  v2 = sub_1E4B5EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B52BEC(uint64_t a1)
{
  v2 = sub_1E4B5EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FA8, &qword_1E4C07980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EB14();
  sub_1E4BF0ACC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v13 = v3[3];
    v17 = v3[2];
    v18 = v13;
    v16[15] = 1;
    sub_1E4B5AF2C();

    sub_1E4BF08EC();

    v14 = *(type metadata accessor for RCSService.Business.SuggestedAction(0) + 24);
    LOBYTE(v17) = 2;
    type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    sub_1E4B5B390(&qword_1ECF94FB8, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.SuggestedAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FC0, &qword_1E4C07988);
  v21 = *(v23 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  v10 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EB14();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v15 = v21;
  LOBYTE(v24) = 0;
  *v13 = sub_1E4BF083C();
  *(v13 + 1) = v16;
  v18 = v16;
  v25 = 1;
  sub_1E4B5AF80();
  sub_1E4BF082C();
  *(v13 + 1) = v24;
  LOBYTE(v24) = 2;
  sub_1E4B5B390(&qword_1ECF94FC8, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  sub_1E4BF087C();
  (*(v15 + 8))(v9, v23);
  sub_1E4B5E7F4(v6, &v13[*(v19 + 24)], type metadata accessor for RCSService.Business.SuggestedAction.Action);
  sub_1E4B5D6D4(v13, v20, type metadata accessor for RCSService.Business.SuggestedAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v13, type metadata accessor for RCSService.Business.SuggestedAction);
}

uint64_t RCSService.Business.Card.imageAlignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.Card(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RCSService.Business.Card.init(orientation:titleFontStyle:descriptionFontStyle:styleSheetURL:imageAlignment:content:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a5;
  *a7 = *a1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  v13 = type metadata accessor for RCSService.Business.Card(0);
  sub_1E4AFD6D0(a4, a7 + v13[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  *(a7 + v13[8]) = v12;
  return sub_1E4B5E7F4(a6, a7 + v13[9], type metadata accessor for RCSService.Business.Card.Content);
}

uint64_t sub_1E4B5334C()
{
  v1 = *v0;
  v2 = 0x7461746E6569726FLL;
  v3 = 0x656853656C797473;
  v4 = 0x696C416567616D69;
  if (v1 != 4)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F46656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_1E4B53438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B648E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B53460(uint64_t a1)
{
  v2 = sub_1E4B5EF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5349C(uint64_t a1)
{
  v2 = sub_1E4B5EF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FD0, &qword_1E4C07990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EF68();
  sub_1E4BF0ACC();
  LOBYTE(v15) = *v3;
  v16 = 0;
  sub_1E4B5EFBC();
  sub_1E4BF093C();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v16 = 1;
    sub_1E4B5F010();
    sub_1E4BF093C();
    v15 = *(v3 + 16);
    v16 = 2;
    sub_1E4BF093C();
    v11 = type metadata accessor for RCSService.Business.Card(0);
    v12 = v11[7];
    LOBYTE(v15) = 3;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
    LOBYTE(v15) = *(v3 + v11[8]);
    v16 = 4;
    sub_1E4B5F064();
    sub_1E4BF08EC();
    v13 = v11[9];
    LOBYTE(v15) = 5;
    type metadata accessor for RCSService.Business.Card.Content(0);
    sub_1E4B5B390(&qword_1ECF94FF8, type metadata accessor for RCSService.Business.Card.Content);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.Card.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for RCSService.Business.Card.Content(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95000, &qword_1E4C07998);
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = type metadata accessor for RCSService.Business.Card(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E4B5EF68();
  v29 = v14;
  v21 = v30;
  sub_1E4BF0ABC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v30 = v3;
  v22 = v27;
  v25 = v6;
  v33 = 0;
  sub_1E4B5F0B8();
  sub_1E4BF087C();
  *v18 = v32;
  v33 = 1;
  sub_1E4B5F10C();
  sub_1E4BF087C();
  *(v18 + 1) = v32;
  v33 = 2;
  sub_1E4BF087C();
  *(v18 + 2) = v32;
  sub_1E4BEFA6C();
  LOBYTE(v32) = 3;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF082C();
  sub_1E4AFD6D0(v10, &v18[v15[7]], &qword_1ECF92F88, &qword_1E4BFDD20);
  v33 = 4;
  sub_1E4B5F160();
  sub_1E4BF082C();
  v18[v15[8]] = v32;
  LOBYTE(v32) = 5;
  sub_1E4B5B390(&qword_1ECF95020, type metadata accessor for RCSService.Business.Card.Content);
  v23 = v25;
  sub_1E4BF087C();
  (*(v22 + 8))(v29, v28);
  sub_1E4B5E7F4(v23, &v18[v15[9]], type metadata accessor for RCSService.Business.Card.Content);
  sub_1E4B5D6D4(v18, v26, type metadata accessor for RCSService.Business.Card);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1E4B5D73C(v18, type metadata accessor for RCSService.Business.Card);
}

uint64_t RCSService.Business.CardCarousel.contents.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.CardCarousel(0) + 32));
}

uint64_t RCSService.Business.CardCarousel.init(width:titleFontStyle:descriptionFontStyle:styleSheetURL:contents:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  v11 = type metadata accessor for RCSService.Business.CardCarousel(0);
  result = sub_1E4AFD6D0(a4, a6 + *(v11 + 28), &qword_1ECF92F88, &qword_1E4BFDD20);
  *(a6 + *(v11 + 32)) = a5;
  return result;
}

unint64_t sub_1E4B53E80()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0xD000000000000014;
  v4 = 0x656853656C797473;
  if (v1 != 3)
  {
    v4 = 0x73746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F46656C746974;
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

uint64_t sub_1E4B53F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B64B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B53F5C(uint64_t a1)
{
  v2 = sub_1E4B5F1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B53F98(uint64_t a1)
{
  v2 = sub_1E4B5F1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.CardCarousel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95028, &qword_1E4C079A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F1D4();
  sub_1E4BF0ACC();
  LOBYTE(v14) = *v3;
  v15 = 0;
  sub_1E4B5F228();
  sub_1E4BF093C();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = 1;
    sub_1E4B5F010();
    sub_1E4BF093C();
    v14 = *(v3 + 16);
    v15 = 2;
    sub_1E4BF093C();
    v11 = type metadata accessor for RCSService.Business.CardCarousel(0);
    v12 = *(v11 + 28);
    LOBYTE(v14) = 3;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
    v14 = *(v3 + *(v11 + 32));
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95040, &qword_1E4C079A8);
    sub_1E4B5F2D0(&qword_1ECF95048, &qword_1ECF94FF8);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.CardCarousel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95050, &qword_1E4C079B0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v25 - v10;
  v12 = type metadata accessor for RCSService.Business.CardCarousel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E4B5F1D4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v25 = v12;
  v26 = v7;
  v18 = v15;
  v31 = 0;
  sub_1E4B5F27C();
  v19 = v28;
  sub_1E4BF087C();
  *v18 = v30;
  v31 = 1;
  sub_1E4B5F10C();
  sub_1E4BF087C();
  v20 = v8;
  *(v18 + 1) = v30;
  v31 = 2;
  sub_1E4BF087C();
  v21 = v18;
  *(v18 + 2) = v30;
  sub_1E4BEFA6C();
  LOBYTE(v30) = 3;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  v22 = v26;
  sub_1E4BF082C();
  v23 = v25;
  sub_1E4AFD6D0(v22, v21 + *(v25 + 28), &qword_1ECF92F88, &qword_1E4BFDD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95040, &qword_1E4C079A8);
  v31 = 4;
  sub_1E4B5F2D0(&qword_1ECF95060, &qword_1ECF95020);
  sub_1E4BF087C();
  (*(v20 + 8))(v11, v19);
  *(v21 + *(v23 + 32)) = v30;
  sub_1E4B5D6D4(v21, v27, type metadata accessor for RCSService.Business.CardCarousel);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1E4B5D73C(v21, type metadata accessor for RCSService.Business.CardCarousel);
}

uint64_t sub_1E4B54770(uint64_t a1)
{
  v2 = sub_1E4B5F3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B547AC(uint64_t a1)
{
  v2 = sub_1E4B5F3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B547E8()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x796C706572;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B5481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C706572 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B548F0(uint64_t a1)
{
  v2 = sub_1E4B5F38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5492C(uint64_t a1)
{
  v2 = sub_1E4B5F38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B54968(uint64_t a1)
{
  v2 = sub_1E4B5F434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B549A4(uint64_t a1)
{
  v2 = sub_1E4B5F434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Suggestion.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95068, &qword_1E4C079B8);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v31 - v4;
  v33 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v5 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95070, &qword_1E4C079C0);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for RCSService.Business.Suggestion(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95078, &qword_1E4C079C8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F38C();
  sub_1E4BF0ACC();
  sub_1E4B5D6D4(v38, v14, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v14;
    v22 = v34;
    sub_1E4B5E7F4(v21, v34, type metadata accessor for RCSService.Business.SuggestedAction);
    LOBYTE(v39) = 1;
    sub_1E4B5F3E0();
    v23 = v35;
    sub_1E4BF08BC();
    sub_1E4B5B390(&qword_1ECF95090, type metadata accessor for RCSService.Business.SuggestedAction);
    v24 = v37;
    sub_1E4BF093C();
    (*(v36 + 8))(v23, v24);
    sub_1E4B5D73C(v22, type metadata accessor for RCSService.Business.SuggestedAction);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v27 = *v14;
    v26 = v14[1];
    v28 = v14[2];
    v29 = v14[3];
    LOBYTE(v39) = 0;
    sub_1E4B5F434();
    sub_1E4BF08BC();
    v39 = v27;
    v40 = v26;
    v41 = v28;
    v42 = v29;
    sub_1E4B5F488();
    v30 = v32;
    sub_1E4BF093C();
    (*(v31 + 8))(v10, v30);
    (*(v16 + 8))(v19, v15);
  }
}

uint64_t RCSService.Business.Suggestion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950A8, &qword_1E4C079D0);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950B0, &qword_1E4C079D8);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950B8, &qword_1E4C079E0);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for RCSService.Business.Suggestion(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E4B5F38C();
  v26 = v58;
  sub_1E4BF0ABC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v48 = v21;
  v49 = v23;
  v58 = v18;
  v28 = v56;
  v27 = v57;
  v29 = v55;
  v30 = sub_1E4BF088C();
  v31 = (2 * *(v30 + 16)) | 1;
  v62 = v30;
  v63 = v30 + 32;
  v64 = 0;
  v65 = v31;
  v32 = sub_1E4AE0F10();
  v33 = v13;
  if (v32 == 2 || v64 != v65 >> 1)
  {
    v35 = sub_1E4BF06EC();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v37 = v14;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  if (v32)
  {
    LOBYTE(v59) = 1;
    sub_1E4B5F3E0();
    v34 = v27;
    sub_1E4BF07EC();
    type metadata accessor for RCSService.Business.SuggestedAction(0);
    sub_1E4B5B390(&qword_1ECF950C0, type metadata accessor for RCSService.Business.SuggestedAction);
    v41 = v58;
    v42 = v53;
    sub_1E4BF087C();
    (*(v54 + 8))(v34, v42);
    (*(v29 + 8))(v33, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v45 = v41;
  }

  else
  {
    LOBYTE(v59) = 0;
    sub_1E4B5F434();
    sub_1E4BF07EC();
    sub_1E4B5F4DC();
    v40 = v52;
    sub_1E4BF087C();
    (*(v51 + 8))(v28, v40);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v43 = v60;
    v44 = v48;
    *v48 = v59;
    v44[1] = v43;
    *(v44 + 1) = v61;
    swift_storeEnumTagMultiPayload();
    v45 = v44;
  }

  v46 = v49;
  sub_1E4B5E7F4(v45, v49, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4B5E7F4(v46, v50, type metadata accessor for RCSService.Business.Suggestion);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1E4B55520()
{
  if (*v0)
  {
    result = 0x746E6F7A69726F68;
  }

  else
  {
    result = 0x6C61636974726576;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B55560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636974726576 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B55644(uint64_t a1)
{
  v2 = sub_1E4B5F530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B55680(uint64_t a1)
{
  v2 = sub_1E4B5F530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B556BC(uint64_t a1)
{
  v2 = sub_1E4B5F584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B556F8(uint64_t a1)
{
  v2 = sub_1E4B5F584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B55734(uint64_t a1)
{
  v2 = sub_1E4B5F5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B55770(uint64_t a1)
{
  v2 = sub_1E4B5F5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Orientation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950D0, &qword_1E4C079E8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950D8, &qword_1E4C079F0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950E0, &qword_1E4C079F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F530();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B5F584();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B5F5D8();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.Card.Orientation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95100, &qword_1E4C07A00);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95108, &qword_1E4C07A08);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95110, &qword_1E4C07A10);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F530();
  v16 = v36;
  sub_1E4BF0ABC();
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
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.Card.Orientation;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
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
        sub_1E4B5F584();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B5F5D8();
        sub_1E4BF07EC();
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

uint64_t sub_1E4B56044()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 1819042164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_1E4B56090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B64CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B560B8(uint64_t a1)
{
  v2 = sub_1E4B5F62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B560F4(uint64_t a1)
{
  v2 = sub_1E4B5F62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B56130(uint64_t a1)
{
  v2 = sub_1E4B5F6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5616C(uint64_t a1)
{
  v2 = sub_1E4B5F6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B561A8(uint64_t a1)
{
  v2 = sub_1E4B5F728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B561E4(uint64_t a1)
{
  v2 = sub_1E4B5F728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B56220(uint64_t a1)
{
  v2 = sub_1E4B5F680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5625C(uint64_t a1)
{
  v2 = sub_1E4B5F680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Media.Height.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95118, &qword_1E4C07A18);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95120, &qword_1E4C07A20);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95128, &qword_1E4C07A28);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95130, &qword_1E4C07A30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F62C();
  sub_1E4BF0ACC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E4B5F6D4();
      v12 = v26;
      sub_1E4BF08BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E4B5F680();
      v12 = v29;
      sub_1E4BF08BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E4B5F728();
    sub_1E4BF08BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t RCSService.Business.Card.Media.Height.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95158, &qword_1E4C07A38);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95160, &qword_1E4C07A40);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95168, &qword_1E4C07A48);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95170, &unk_1E4C07A50);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4B5F62C();
  v20 = v43;
  sub_1E4BF0ABC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E4AE0F1C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E4BF06EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v30 = &type metadata for RCSService.Business.Card.Media.Height;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E4B5F6D4();
          sub_1E4BF07EC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E4B5F680();
          v33 = v22;
          sub_1E4BF07EC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E4B5F728();
        sub_1E4BF07EC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1E4B56BA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t RCSService.Business.Card.Media.fileSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.Business.Card.Media(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.Business.Card.Media.displayHeight.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.Card.Media(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RCSService.Business.Card.Media.description.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.Card.Media(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.Card.Media.init(url:contentType:fileSize:thumbnailURL:thumbnailContentType:thumbnailFileSize:displayHeight:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a7;
  v18 = sub_1E4BEFA6C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for RCSService.Business.Card.Media(0);
  sub_1E4AFD6D0(a2, a9 + v19[5], &qword_1ECF92700, &qword_1E4BFB090);
  v20 = v19[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  (*(*(v21 - 8) + 32))(a9 + v20, a3, v21);
  sub_1E4AFD6D0(a4, a9 + v19[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AFD6D0(a5, a9 + v19[8], &qword_1ECF92700, &qword_1E4BFB090);
  result = sub_1E4AFD6D0(a6, a9 + v19[9], &qword_1ECF92D68, &unk_1E4BFCDA0);
  *(a9 + v19[10]) = v17;
  v23 = (a9 + v19[11]);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_1E4B57010()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x4879616C70736964;
  if (v1 != 6)
  {
    v3 = 0x7470697263736564;
  }

  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953656C6966;
  if (v1 != 2)
  {
    v5 = 0x69616E626D756874;
  }

  if (*v0)
  {
    v2 = 0x54746E65746E6F63;
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

uint64_t sub_1E4B57134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B64DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B5715C(uint64_t a1)
{
  v2 = sub_1E4B5F79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B57198(uint64_t a1)
{
  v2 = sub_1E4B5F79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Media.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95178, &qword_1E4C07A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F79C();
  sub_1E4BF0ACC();
  v38 = 0;
  sub_1E4BEFA6C();
  sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
  sub_1E4BF093C();
  if (!v2)
  {
    v29 = type metadata accessor for RCSService.Business.Card.Media(0);
    v11 = v29[5];
    v37 = 1;
    v12 = sub_1E4BEFB4C();
    v13 = sub_1E4AF109C(&qword_1ECF92C08);
    v14 = v3;
    v15 = v13;
    v28 = v14;
    sub_1E4BF08EC();
    v27[3] = v15;
    v27[4] = v12;
    v16 = v29[6];
    v36 = 2;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
    v18 = sub_1E4AF19DC(&qword_1ECF92D88);
    sub_1E4BF093C();
    v27[1] = v17;
    v27[2] = v18;
    v19 = v28;
    v20 = v29[7];
    v35 = 3;
    sub_1E4BF08EC();
    v21 = v29[8];
    v34 = 4;
    sub_1E4BF08EC();
    v22 = v29[9];
    v33 = 5;
    sub_1E4BF08EC();
    v32 = *(v19 + v29[10]);
    v31 = 6;
    sub_1E4B5F7F0();
    sub_1E4BF093C();
    v23 = (v19 + v29[11]);
    v24 = *v23;
    v25 = v23[1];
    v30 = 7;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.Card.Media.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v53 - v12;
  v14 = sub_1E4BEFA6C();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95190, &qword_1E4C07A78);
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v53 - v19;
  v21 = type metadata accessor for RCSService.Business.Card.Media(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F79C();
  v65 = v20;
  v26 = v66;
  sub_1E4BF0ABC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v13;
  v66 = v21;
  v75 = 0;
  v27 = sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  v28 = v62;
  sub_1E4BF087C();
  v29 = v14;
  v53[4] = v27;
  v30 = *(v61 + 32);
  v54 = v24;
  v30(v24, v28, v14);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v62 = v53;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v53 - v33;
  v35 = sub_1E4BEFB4C();
  v74 = 1;
  v36 = sub_1E4AF109C(&qword_1ECF92C38);
  sub_1E4BF082C();
  v53[5] = v29;
  v53[1] = v36;
  v53[2] = v35;
  v53[3] = v32;
  v37 = v66;
  v38 = v54;
  sub_1E4AFD6D0(v34, &v54[v66[5]], &qword_1ECF92700, &qword_1E4BFB090);
  v73 = 2;
  sub_1E4AF19DC(&qword_1ECF92D98);
  v39 = v55;
  v40 = v59;
  v62 = 0;
  sub_1E4BF087C();
  (*(v60 + 32))(v38 + v37[6], v39, v40);
  v72 = 3;
  v41 = v58;
  sub_1E4BF082C();
  v42 = sub_1E4AFD6D0(v41, v38 + v37[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 4;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v44, v38 + v37[8], &qword_1ECF92700, &qword_1E4BFB090);
  v70 = 5;
  v45 = v57;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v45, v38 + v37[9], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v68 = 6;
  sub_1E4B5F844();
  sub_1E4BF087C();
  v46 = v63;
  *(v38 + v37[10]) = v69;
  v67 = 7;
  v47 = v64;
  v48 = sub_1E4BF080C();
  v50 = v49;
  (*(v46 + 8))(v65, v47);
  v51 = (v38 + v66[11]);
  *v51 = v48;
  v51[1] = v50;
  sub_1E4B5D6D4(v38, v56, type metadata accessor for RCSService.Business.Card.Media);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v38, type metadata accessor for RCSService.Business.Card.Media);
}

uint64_t sub_1E4B57F24()
{
  if (*v0)
  {
    result = 0x7468676972;
  }

  else
  {
    result = 1952867692;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B57F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B5802C(uint64_t a1)
{
  v2 = sub_1E4B5F898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58068(uint64_t a1)
{
  v2 = sub_1E4B5F898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B580A4(uint64_t a1)
{
  v2 = sub_1E4B5F940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B580E0(uint64_t a1)
{
  v2 = sub_1E4B5F940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B5811C(uint64_t a1)
{
  v2 = sub_1E4B5F8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58158(uint64_t a1)
{
  v2 = sub_1E4B5F8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.ImageAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951A0, &qword_1E4C07A80);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951A8, &qword_1E4C07A88);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951B0, &qword_1E4C07A90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F898();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B5F8EC();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B5F940();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.Card.ImageAlignment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951D0, &qword_1E4C07A98);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951D8, &qword_1E4C07AA0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E0, &qword_1E4C07AA8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F898();
  v16 = v36;
  sub_1E4BF0ABC();
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
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.Card.ImageAlignment;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
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
        sub_1E4B5F8EC();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B5F940();
        sub_1E4BF07EC();
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

uint64_t RCSService.Business.Card.Content.title.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.Card.Content(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.Card.Content.description.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.Card.Content(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.Card.Content.suggestions.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.Card.Content(0) + 28));
}

int *RCSService.Business.Card.Content.init(media:title:description:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E4AFD6D0(a1, a7, &qword_1ECF951E8, &qword_1E4C07AB0);
  result = type metadata accessor for RCSService.Business.Card.Content(0);
  v14 = (a7 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + result[6]);
  *v15 = a4;
  v15[1] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

uint64_t sub_1E4B58A9C()
{
  v1 = 0x616964656DLL;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x6974736567677573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1E4B58B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B6508C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B58B48(uint64_t a1)
{
  v2 = sub_1E4B5F994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58B84(uint64_t a1)
{
  v2 = sub_1E4B5F994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Content.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951F0, &qword_1E4C07AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F994();
  sub_1E4BF0ACC();
  v23 = 0;
  type metadata accessor for RCSService.Business.Card.Media(0);
  sub_1E4B5B390(&qword_1ECF95200, type metadata accessor for RCSService.Business.Card.Media);
  sub_1E4BF08EC();
  if (!v2)
  {
    v11 = type metadata accessor for RCSService.Business.Card.Content(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22 = 1;
    sub_1E4BF08CC();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v21 = 2;
    sub_1E4BF08CC();
    v20 = *(v3 + v11[7]);
    v19[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B5F9E8(&qword_1ECF95210, &qword_1ECF92AF0);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.Card.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95218, &qword_1E4C07AC8);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for RCSService.Business.Card.Content(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F994();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v18 = v15;
  type metadata accessor for RCSService.Business.Card.Media(0);
  v34 = 0;
  sub_1E4B5B390(&qword_1ECF95220, type metadata accessor for RCSService.Business.Card.Media);
  v19 = v29;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v7, v18, &qword_1ECF951E8, &qword_1E4C07AB0);
  v33 = 1;
  v20 = sub_1E4BF080C();
  v21 = (v18 + v12[5]);
  *v21 = v20;
  v21[1] = v22;
  v32 = 2;
  v23 = sub_1E4BF080C();
  v24 = (v18 + v12[6]);
  *v24 = v23;
  v24[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
  v31 = 3;
  sub_1E4B5F9E8(&qword_1ECF95228, &qword_1ECF92B18);
  sub_1E4BF087C();
  (*(v17 + 8))(v11, v19);
  *(v18 + v12[7]) = v30;
  sub_1E4B5D6D4(v18, v27, type metadata accessor for RCSService.Business.Card.Content);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v18, type metadata accessor for RCSService.Business.Card.Content);
}

uint64_t sub_1E4B592D8()
{
  if (*v0)
  {
    result = 0x6D756964656DLL;
  }

  else
  {
    result = 0x6C6C616D73;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B5930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B593E0(uint64_t a1)
{
  v2 = sub_1E4B5FA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5941C(uint64_t a1)
{
  v2 = sub_1E4B5FA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B59458(uint64_t a1)
{
  v2 = sub_1E4B5FAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B59494(uint64_t a1)
{
  v2 = sub_1E4B5FAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B594D0(uint64_t a1)
{
  v2 = sub_1E4B5FB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5950C(uint64_t a1)
{
  v2 = sub_1E4B5FB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Width.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95230, &qword_1E4C07AD0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95238, &qword_1E4C07AD8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95240, &qword_1E4C07AE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FA84();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B5FAD8();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B5FB2C();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.Card.Width.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95260, &qword_1E4C07AE8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95268, &qword_1E4C07AF0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95270, &qword_1E4C07AF8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FA84();
  v16 = v36;
  sub_1E4BF0ABC();
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
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.Card.Width;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
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
        sub_1E4B5FAD8();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B5FB2C();
        sub_1E4BF07EC();
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

uint64_t sub_1E4B59CE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972657571;
  }

  else
  {
    v4 = 0x616E6964726F6F63;
  }

  if (v3)
  {
    v5 = 0xEB00000000736574;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972657571;
  }

  else
  {
    v6 = 0x616E6964726F6F63;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB00000000736574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();
  }

  return v9 & 1;
}

uint64_t sub_1E4B59D90()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B59E18()
{
  *v0;
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B59E8C()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B59F10@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4BF07DC();

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

void sub_1E4B59F70(uint64_t *a1@<X8>)
{
  v2 = 0x616E6964726F6F63;
  if (*v1)
  {
    v2 = 0x7972657571;
  }

  v3 = 0xEB00000000736574;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E4B59FB4()
{
  if (*v0)
  {
    result = 0x7972657571;
  }

  else
  {
    result = 0x616E6964726F6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B59FF4@<X0>(char *a1@<X8>)
{
  v2 = sub_1E4BF07DC();

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

uint64_t sub_1E4B5A058(uint64_t a1)
{
  v2 = sub_1E4B5FB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5A094(uint64_t a1)
{
  v2 = sub_1E4B5FB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B5A0D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64757469676E6F6CLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x7274537972657571;
    v4 = 0xEB00000000676E69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x64757469676E6F6CLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x7274537972657571;
    v8 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656475746974616CLL;
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
    v11 = sub_1E4BF099C();
  }

  return v11 & 1;
}

uint64_t sub_1E4B5A1EC()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B5A29C()
{
  *v0;
  *v0;
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B5A338()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B5A3E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E4B651F0();
  *a2 = result;
  return result;
}

void sub_1E4B5A414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x7274537972657571;
    v4 = 0xEB00000000676E69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656475746974616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E4B5A480()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7274537972657571;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1E4B5A4E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4B651F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E4B5A510(uint64_t a1)
{
  v2 = sub_1E4B5FBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5A54C(uint64_t a1)
{
  v2 = sub_1E4B5FBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ShowLocationAction.Method.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95278, &qword_1E4C07B00);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95280, &qword_1E4C07B08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E4B5FB80();
  v17 = v43;
  sub_1E4BF0ABC();
  if (!v17)
  {
    v43 = v11;
    v51 = 0;
    v19 = v14;
    v20 = sub_1E4BF089C();
    if (v20)
    {
      v47 = 0;
      sub_1E4B5FBD4();
      v21 = v9;
      sub_1E4BF07EC();
      v22 = v43;
      v18 = v44;
      v46 = 0;
      sub_1E4BF085C();
      v34 = v33;
      v45 = 1;
      sub_1E4BF085C();
      v36 = v35;
      (*(v42 + 8))(v21, v3);
      (*(v22 + 8))(v19, v10);
      v37 = v34;
      v38 = v36;
    }

    else
    {
      v50 = 1;
      v23 = sub_1E4BF089C();
      v18 = v44;
      if ((v23 & 1) == 0)
      {
        v26 = sub_1E4BF06EC();
        swift_allocError();
        v28 = v27;
        v29 = v18[4];
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        sub_1E4BF0AAC();
        sub_1E4BF06DC();
        (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6B00], v26);
        swift_willThrow();
        (*(v43 + 8))(v19, v10);
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      v49 = 1;
      sub_1E4B5FBD4();
      v24 = v7;
      sub_1E4BF07EC();
      v25 = v43;
      v30 = v19;
      v48 = 2;
      v37 = sub_1E4BF083C();
      v31 = v24;
      v38 = v39;
      (*(v42 + 8))(v31, v3);
      (*(v25 + 8))(v30, v10);
    }

    v40 = v41;
    *v41 = v37;
    v40[1] = v38;
    *(v40 + 16) = (v20 & 1) == 0;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v18 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t RCSService.Business.ShowLocationAction.Method.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95298, &qword_1E4C07B10);
  v25 = *(v28 - 8);
  v3 = *(v25 + 64);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF952A0, &qword_1E4C07B18);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = v24 - v11;
  v13 = *v1;
  v24[1] = v1[1];
  v24[2] = v13;
  v14 = *(v1 + 16);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FB80();
  sub_1E4BF0ACC();
  if (v14)
  {
    v33 = 1;
    sub_1E4B5FBD4();
    v16 = v27;
    sub_1E4BF08BC();
    v32 = 2;
    v17 = v28;
    sub_1E4BF08FC();
    (*(v25 + 8))(v6, v17);
    return (*(v9 + 8))(v12, v16);
  }

  else
  {
    v19 = v9;
    v20 = v25;
    v31 = 0;
    sub_1E4B5FBD4();
    v21 = v27;
    sub_1E4BF08BC();
    v30 = 0;
    v22 = v28;
    v23 = v26;
    sub_1E4BF091C();
    if (!v23)
    {
      v29 = 1;
      sub_1E4BF091C();
    }

    (*(v20 + 8))(v8, v22);
    return (*(v19 + 8))(v12, v21);
  }
}

uint64_t sub_1E4B5AD64(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v8 & 1) == 0 && v4 == v6)
    {
      v11 = *(a1 + 8);
      return v5 == v7;
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (*&v4 == *&v6 && *&v5 == *&v7)
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1E4BF099C() & 1) != 0;
      }
    }

    else if (!v4)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1E4B5AED8()
{
  result = qword_1ECF94C78;
  if (!qword_1ECF94C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C78);
  }

  return result;
}

unint64_t sub_1E4B5AF2C()
{
  result = qword_1ECF94C80;
  if (!qword_1ECF94C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C80);
  }

  return result;
}

unint64_t sub_1E4B5AF80()
{
  result = qword_1ECF94C90;
  if (!qword_1ECF94C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C90);
  }

  return result;
}

unint64_t sub_1E4B5AFD4()
{
  result = qword_1ECF94CB8;
  if (!qword_1ECF94CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CB8);
  }

  return result;
}

unint64_t sub_1E4B5B028()
{
  result = qword_1ECF94CC0;
  if (!qword_1ECF94CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CC0);
  }

  return result;
}

unint64_t sub_1E4B5B07C()
{
  result = qword_1ECF94CC8;
  if (!qword_1ECF94CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CC8);
  }

  return result;
}

unint64_t sub_1E4B5B0D0()
{
  result = qword_1ECF94CD0;
  if (!qword_1ECF94CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CD0);
  }

  return result;
}

unint64_t sub_1E4B5B124()
{
  result = qword_1ECF94D10;
  if (!qword_1ECF94D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D10);
  }

  return result;
}

unint64_t sub_1E4B5B178()
{
  result = qword_1ECF94D18;
  if (!qword_1ECF94D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D18);
  }

  return result;
}

unint64_t sub_1E4B5B1CC()
{
  result = qword_1ECF94D20;
  if (!qword_1ECF94D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D20);
  }

  return result;
}

unint64_t sub_1E4B5B220()
{
  result = qword_1ECF94D28;
  if (!qword_1ECF94D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D28);
  }

  return result;
}

unint64_t sub_1E4B5B274()
{
  result = qword_1ECF94D48;
  if (!qword_1ECF94D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D48);
  }

  return result;
}

unint64_t sub_1E4B5B2E8()
{
  result = qword_1ECF94D58;
  if (!qword_1ECF94D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D58);
  }

  return result;
}

unint64_t sub_1E4B5B33C()
{
  result = qword_1ECF94D60;
  if (!qword_1ECF94D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D60);
  }

  return result;
}

uint64_t sub_1E4B5B390(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4B5B3D8()
{
  result = qword_1ECF94D70;
  if (!qword_1ECF94D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D70);
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV7ContentV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Card.Media(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95730, &qword_1E4C0BDC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v38 - v16;
  v18 = *(v15 + 56);
  sub_1E4AF1898(a1, &v38 - v16, &qword_1ECF951E8, &qword_1E4C07AB0);
  sub_1E4AF1898(a2, &v17[v18], &qword_1ECF951E8, &qword_1E4C07AB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1E4AF1898(v17, v12, &qword_1ECF951E8, &qword_1E4C07AB0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1E4B5E7F4(&v17[v18], v8, type metadata accessor for RCSService.Business.Card.Media);
      v22 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV5MediaV2eeoiySbAI_AItFZ_0(v12, v8);
      sub_1E4B5D73C(v8, type metadata accessor for RCSService.Business.Card.Media);
      sub_1E4B5D73C(v12, type metadata accessor for RCSService.Business.Card.Media);
      sub_1E4AE0AE4(v17, &qword_1ECF951E8, &qword_1E4C07AB0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1E4B5D73C(v12, type metadata accessor for RCSService.Business.Card.Media);
LABEL_6:
    sub_1E4AE0AE4(v17, &qword_1ECF95730, &qword_1E4C0BDC0);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1E4AE0AE4(v17, &qword_1ECF951E8, &qword_1E4C07AB0);
LABEL_10:
  v23 = type metadata accessor for RCSService.Business.Card.Content(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v23;
      v30 = sub_1E4BF099C();
      v23 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_7;
  }

  v31 = v23[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35)
    {
      if (*v32 == *v34 && v33 == v35)
      {
        goto LABEL_24;
      }

      v36 = v23;
      v37 = sub_1E4BF099C();
      v23 = v36;
      if (v37)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v35)
  {
LABEL_24:
    v20 = sub_1E4BC68F4(*(a1 + v23[7]), *(a2 + v23[7]));
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV5MediaV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v94[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v94[-v11];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95738, &qword_1E4C0BDC8);
  v13 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v15 = &v94[-v14];
  v16 = sub_1E4BEFA6C();
  v115 = *(v16 - 8);
  v17 = *(v115 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v114 = &v94[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v94[-v24];
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    return 0;
  }

  v101 = v12;
  v102 = v15;
  v100 = v8;
  v103 = v5;
  v107 = v4;
  v109 = type metadata accessor for RCSService.Business.Card.Media(0);
  v26 = v109[5];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939C8, &qword_1E4C01950);
  v111 = v94;
  v104 = *(*(v27 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v94[-v29];
  v105 = v28;
  v31 = *(v28 + 48);
  v108 = a1;
  sub_1E4AF1898(a1 + v26, &v94[-v29], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1898(a2 + v26, &v30[v31], &qword_1ECF92700, &qword_1E4BFB090);
  v32 = sub_1E4BEFB4C();
  v110 = *(v32 - 8);
  v33 = *(v110 + 48);
  if (v33(v30, 1, v32) == 1)
  {
    if (v33(&v30[v31], 1, v32) == 1)
    {
      v106 = v33;
      sub_1E4AE0AE4(v30, &qword_1ECF92700, &qword_1E4BFB090);
      goto LABEL_9;
    }

LABEL_7:
    sub_1E4AE0AE4(v30, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  v98 = a2;
  v106 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v99 = v94;
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v94[-v36];
  sub_1E4AF1898(v30, &v94[-v36], &qword_1ECF92700, &qword_1E4BFB090);
  v38 = (v106)(&v30[v31], 1, v32);
  if (v38 == 1)
  {
    (*(v110 + 8))(v37, v32);
    goto LABEL_7;
  }

  v96 = v94;
  v97 = v16;
  v39 = v110;
  v40 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v94[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v39 + 32))(v42, &v30[v31], v32);
  sub_1E4AF109C(&qword_1ECF939D0);
  v95 = sub_1E4BEFE6C();
  v43 = v39;
  v16 = v97;
  v44 = *(v43 + 8);
  v44(v42, v32);
  v44(v37, v32);
  sub_1E4AE0AE4(v30, &qword_1ECF92700, &qword_1E4BFB090);
  a2 = v98;
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v109;
  v46 = v109[6];
  v47 = sub_1E4AF19DC(&qword_1ECF95748);
  v48 = v108;
  if ((sub_1E4BEFE6C() & 1) == 0)
  {
    return 0;
  }

  v111 = v47;
  v49 = v45[7];
  v50 = *(v22 + 48);
  sub_1E4AF1898(v48 + v49, v25, &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AF1898(a2 + v49, &v25[v50], &qword_1ECF92F88, &qword_1E4BFDD20);
  v51 = v115;
  v52 = *(v115 + 6);
  if (v52(v25, 1, v16) == 1)
  {
    if (v52(&v25[v50], 1, v16) == 1)
    {
      v53 = sub_1E4AE0AE4(v25, &qword_1ECF92F88, &qword_1E4BFDD20);
      goto LABEL_18;
    }

LABEL_15:
    v55 = &qword_1ECF95740;
    v56 = &unk_1E4C0BDD0;
LABEL_16:
    sub_1E4AE0AE4(v25, v55, v56);
    return 0;
  }

  v54 = v114;
  sub_1E4AF1898(v25, v114, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v52(&v25[v50], 1, v16) == 1)
  {
    (*(v51 + 1))(v54, v16);
    goto LABEL_15;
  }

  v57 = &v25[v50];
  v58 = v113;
  (*(v51 + 4))(v113, v57, v16);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
  v59 = sub_1E4BEFE6C();
  v60 = *(v51 + 1);
  v60(v58, v16);
  v60(v54, v16);
  v53 = sub_1E4AE0AE4(v25, &qword_1ECF92F88, &qword_1E4BFDD20);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v61 = v109[8];
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v94[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = *(v105 + 48);
  sub_1E4AF1898(v108 + v61, v63, &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1898(a2 + v61, &v63[v64], &qword_1ECF92700, &qword_1E4BFB090);
  v65 = v106;
  if (v106(v63, 1, v32) == 1)
  {
    if (v65(&v63[v64], 1, v32) == 1)
    {
      sub_1E4AE0AE4(v63, &qword_1ECF92700, &qword_1E4BFB090);
      goto LABEL_27;
    }

LABEL_23:
    sub_1E4AE0AE4(v63, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v115 = v94;
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66 - 8);
  v69 = &v94[-v68];
  sub_1E4AF1898(v63, &v94[-v68], &qword_1ECF92700, &qword_1E4BFB090);
  v70 = (v65)(&v63[v64], 1, v32);
  if (v70 == 1)
  {
    (*(v110 + 8))(v69, v32);
    goto LABEL_23;
  }

  v72 = v110;
  v73 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v94[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v72 + 32))(v75, &v63[v64], v32);
  sub_1E4AF109C(&qword_1ECF939D0);
  v76 = sub_1E4BEFE6C();
  v77 = *(v72 + 8);
  v77(v75, v32);
  v77(v69, v32);
  sub_1E4AE0AE4(v63, &qword_1ECF92700, &qword_1E4BFB090);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v78 = v108;
  v79 = v109[9];
  v80 = *(v112 + 48);
  v25 = v102;
  sub_1E4AF1898(v108 + v79, v102, &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4AF1898(a2 + v79, &v25[v80], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v81 = v103;
  v82 = *(v103 + 48);
  v83 = v107;
  if (v82(v25, 1, v107) != 1)
  {
    v84 = v101;
    sub_1E4AF1898(v25, v101, &qword_1ECF92D68, &unk_1E4BFCDA0);
    if (v82(&v25[v80], 1, v83) != 1)
    {
      v85 = &v25[v80];
      v86 = v100;
      (*(v81 + 32))(v100, v85, v83);
      v87 = sub_1E4BEFE6C();
      v88 = *(v81 + 8);
      v88(v86, v83);
      v88(v84, v83);
      sub_1E4AE0AE4(v25, &qword_1ECF92D68, &unk_1E4BFCDA0);
      if ((v87 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    (*(v81 + 8))(v84, v83);
    goto LABEL_32;
  }

  if (v82(&v25[v80], 1, v83) != 1)
  {
LABEL_32:
    v55 = &qword_1ECF95738;
    v56 = &qword_1E4C0BDC8;
    goto LABEL_16;
  }

  sub_1E4AE0AE4(v25, &qword_1ECF92D68, &unk_1E4BFCDA0);
LABEL_34:
  if (*(v78 + v109[10]) == *(a2 + v109[10]))
  {
    v89 = v109[11];
    v90 = (v78 + v89);
    v91 = *(v78 + v89 + 8);
    v92 = (a2 + v89);
    v93 = v92[1];
    if (v91)
    {
      if (v93 && (*v90 == *v92 && v91 == v93 || (sub_1E4BF099C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v93)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV25CreateCalendarEventActionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((sub_1E4BEFA9C() & 1) == 0)
  {
    return 0;
  }

  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v18 = CalendarEventAction[5];
  if ((sub_1E4BEFA9C() & 1) == 0)
  {
    return 0;
  }

  v19 = CalendarEventAction[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  v24 = CalendarEventAction[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1E4BF099C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = CalendarEventAction[8];
  v30 = *(v13 + 48);
  sub_1E4AF1898(a1 + v29, v16, &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AF1898(a2 + v29, &v16[v30], &qword_1ECF92F88, &qword_1E4BFDD20);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v30], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v16, &qword_1ECF92F88, &qword_1E4BFDD20);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1E4AF1898(v16, v12, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v31(&v16[v30], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_20:
    sub_1E4AE0AE4(v16, &qword_1ECF95740, &unk_1E4C0BDD0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v30], v4);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
  v33 = sub_1E4BEFE6C();
  v34 = *(v5 + 8);
  v34(v8, v4);
  v34(v12, v4);
  sub_1E4AE0AE4(v16, &qword_1ECF92F88, &qword_1E4BFDD20);
  return (v33 & 1) != 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV18ShowLocationActionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *a2;
  v21 = *(a2 + 8);
  LOBYTE(v16) = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

    if (*&v19 != *&v20 || *&v18 != *&v21)
    {
      v22 = v15;
      v23 = *a1;
      v24 = sub_1E4BF099C();
      v15 = v22;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v25 = 0;
  v26 = *a1;
  v27 = *a2;
  if (v19 == v20)
  {
    v28 = *(a1 + 8);
    v29 = *(a2 + 8);
    if (v18 == v21)
    {
LABEL_10:
      v30 = *(a1 + 32);
      v31 = *(a2 + 32);
      if (v30)
      {
        if (!v31)
        {
          return 0;
        }

        v32 = v15;
        if ((*(a1 + 24) != *(a2 + 24) || v30 != v31) && (sub_1E4BF099C() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v32 = v15;
        if (v31)
        {
          return 0;
        }
      }

      v33 = *(type metadata accessor for RCSService.Business.ShowLocationAction(0) + 24);
      v34 = *(v32 + 48);
      sub_1E4AF1898(a1 + v33, v17, &qword_1ECF92F88, &qword_1E4BFDD20);
      sub_1E4AF1898(a2 + v33, &v17[v34], &qword_1ECF92F88, &qword_1E4BFDD20);
      v35 = *(v5 + 48);
      if (v35(v17, 1, v4) == 1)
      {
        if (v35(&v17[v34], 1, v4) == 1)
        {
          sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
          return 1;
        }

        goto LABEL_22;
      }

      sub_1E4AF1898(v17, v12, &qword_1ECF92F88, &qword_1E4BFDD20);
      if (v35(&v17[v34], 1, v4) == 1)
      {
        (*(v5 + 8))(v12, v4);
LABEL_22:
        sub_1E4AE0AE4(v17, &qword_1ECF95740, &unk_1E4C0BDD0);
        return 0;
      }

      (*(v5 + 32))(v8, &v17[v34], v4);
      sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
      v37 = sub_1E4BEFE6C();
      v38 = *(v5 + 8);
      v38(v8, v4);
      v38(v12, v4);
      sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
      return (v37 & 1) != 0;
    }
  }

  return v25;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV12CardCarouselV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_10;
  }

  v18 = v15;
  v27 = type metadata accessor for RCSService.Business.CardCarousel(0);
  v19 = *(v27 + 28);
  v20 = *(v18 + 48);
  sub_1E4AF1898(&a1[v19], v17, &qword_1ECF92F88, &qword_1E4BFDD20);
  v28 = v20;
  sub_1E4AF1898(&a2[v19], &v17[v20], &qword_1ECF92F88, &qword_1E4BFDD20);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v28], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
LABEL_13:
      v23 = sub_1E4BC7008(*&a1[*(v27 + 32)], *&a2[*(v27 + 32)]);
      return v23 & 1;
    }

    goto LABEL_9;
  }

  sub_1E4AF1898(v17, v12, &qword_1ECF92F88, &qword_1E4BFDD20);
  v22 = v28;
  if (v21(&v17[v28], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1E4AE0AE4(v17, &qword_1ECF95740, &unk_1E4C0BDD0);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v22], v4);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
  v25 = sub_1E4BEFE6C();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v25)
  {
    goto LABEL_13;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV10SuggestionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RCSService.Business.Suggestion(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v30 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v30 - v18;
  v20 = (v30 + *(v17 + 56) - v18);
  sub_1E4B5D6D4(a1, v30 - v18, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4B5D6D4(a2, v20, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4B5D6D4(v19, v12, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E4B5E7F4(v20, v7, type metadata accessor for RCSService.Business.SuggestedAction);
      v21 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(v12, v7);
      sub_1E4B5D73C(v7, type metadata accessor for RCSService.Business.SuggestedAction);
      sub_1E4B5D73C(v12, type metadata accessor for RCSService.Business.SuggestedAction);
LABEL_9:
      sub_1E4B5D73C(v19, type metadata accessor for RCSService.Business.Suggestion);
      return v21;
    }

    sub_1E4B5D73C(v12, type metadata accessor for RCSService.Business.SuggestedAction);
  }

  else
  {
    sub_1E4B5D6D4(v19, v14, type metadata accessor for RCSService.Business.Suggestion);
    v22 = v14[1];
    v23 = v14[3];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = v14[2];
      v25 = *v20;
      v26 = v20[1];
      v27 = v20[2];
      v28 = v20[3];
      v31[0] = *v14;
      v31[1] = v22;
      v31[2] = v24;
      v31[3] = v23;
      v30[0] = v25;
      v30[1] = v26;
      v30[2] = v27;
      v30[3] = v28;
      v21 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v31, v30);

      goto LABEL_9;
    }
  }

  sub_1E4AE0AE4(v19, &qword_1ECF95758, &qword_1E4C0BDE0);
  return 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV21DialPhoneNumberActionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1E4BF099C(), result = 0, (v17 & 1) != 0))
  {
    v26 = v8;
    v19 = *(type metadata accessor for RCSService.Business.DialPhoneNumberAction(0) + 20);
    v20 = *(v13 + 48);
    sub_1E4AF1898(a1 + v19, v16, &qword_1ECF92F88, &qword_1E4BFDD20);
    sub_1E4AF1898(a2 + v19, &v16[v20], &qword_1ECF92F88, &qword_1E4BFDD20);
    v21 = *(v5 + 48);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v20], 1, v4) == 1)
      {
        sub_1E4AE0AE4(v16, &qword_1ECF92F88, &qword_1E4BFDD20);
        return 1;
      }
    }

    else
    {
      sub_1E4AF1898(v16, v12, &qword_1ECF92F88, &qword_1E4BFDD20);
      if (v21(&v16[v20], 1, v4) != 1)
      {
        v22 = v26;
        (*(v5 + 32))(v26, &v16[v20], v4);
        sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
        v23 = sub_1E4BEFE6C();
        v24 = *(v5 + 8);
        v24(v22, v4);
        v24(v12, v4);
        sub_1E4AE0AE4(v16, &qword_1ECF92F88, &qword_1E4BFDD20);
        return (v23 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1E4AE0AE4(v16, &qword_1ECF95740, &unk_1E4C0BDD0);
    return 0;
  }

  return result;
}

unint64_t sub_1E4B5D680()
{
  result = qword_1ECF94D80;
  if (!qword_1ECF94D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D80);
  }

  return result;
}

uint64_t sub_1E4B5D6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B5D73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4B5D79C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4B5D7CC()
{
  result = qword_1ECF94D98;
  if (!qword_1ECF94D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D98);
  }

  return result;
}

unint64_t sub_1E4B5D820()
{
  result = qword_1ECF94DA0;
  if (!qword_1ECF94DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DA0);
  }

  return result;
}

uint64_t sub_1E4B5D874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4B5D884()
{
  result = qword_1ECF94DB0;
  if (!qword_1ECF94DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DB0);
  }

  return result;
}

unint64_t sub_1E4B5D8F8()
{
  result = qword_1ECF94DC0;
  if (!qword_1ECF94DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DC0);
  }

  return result;
}

unint64_t sub_1E4B5D94C()
{
  result = qword_1ECF94DD8;
  if (!qword_1ECF94DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DD8);
  }

  return result;
}

unint64_t sub_1E4B5D9A0()
{
  result = qword_1ECF94E00;
  if (!qword_1ECF94E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E00);
  }

  return result;
}

unint64_t sub_1E4B5D9F4()
{
  result = qword_1ECF94E08;
  if (!qword_1ECF94E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E08);
  }

  return result;
}

unint64_t sub_1E4B5DA48()
{
  result = qword_1ECF94E10;
  if (!qword_1ECF94E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E10);
  }

  return result;
}

unint64_t sub_1E4B5DA9C()
{
  result = qword_1ECF94E38;
  if (!qword_1ECF94E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E38);
  }

  return result;
}

unint64_t sub_1E4B5DAF0()
{
  result = qword_1ECF94E40;
  if (!qword_1ECF94E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E40);
  }

  return result;
}

unint64_t sub_1E4B5DB44()
{
  result = qword_1ECF94E50;
  if (!qword_1ECF94E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E50);
  }

  return result;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV0G0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v4 = *(*(CalendarEventAction - 8) + 64);
  MEMORY[0x1EEE9AC00](CalendarEventAction - 8);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v77 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v77 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v77 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95760, &qword_1E4C0BDE8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v77 - v35;
  v37 = &v77 + *(v34 + 56) - v35;
  sub_1E4B5D6D4(a1, &v77 - v35, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  v38 = v37;
  sub_1E4B5D6D4(v84, v37, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_30:
        v60 = v36;
LABEL_31:
        sub_1E4B5D73C(v60, type metadata accessor for RCSService.Business.SuggestedAction.Action);
        return 1;
      }

LABEL_44:
      sub_1E4AE0AE4(v36, qword_1ECF95760, &qword_1E4C0BDE8);
      return 0;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_1E4B5D6D4(v36, v20, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      v53 = *v20;
      v54 = *(v20 + 1);
      v55 = v20[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_44;
      }

      v56 = v38[16];
      if (v53 == *v38 && v54 == *(v38 + 1) || (v57 = *(v38 + 1), (sub_1E4BF099C() & 1) != 0))
      {

        if (v55 == v56)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

LABEL_58:
      sub_1E4B5D73C(v36, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      return 0;
    }

    v61 = v36;
    v62 = v78;
    sub_1E4B5D6D4(v36, v78, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    v64 = *v62;
    v63 = v62[1];
    v66 = v62[2];
    v65 = v62[3];
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v36 = v61;
      goto LABEL_44;
    }

    v68 = *(v38 + 2);
    v67 = *(v38 + 3);
    if (v64 == *v38 && v63 == *(v38 + 1) || (v69 = *(v38 + 1), (sub_1E4BF099C() & 1) != 0))
    {
      if (v66 == v68 && v65 == v67)
      {

LABEL_56:
        v60 = v61;
        goto LABEL_31;
      }

      v76 = sub_1E4BF099C();

      if (v76)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    sub_1E4B5D73C(v61, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    return 0;
  }

  v40 = v29;
  v41 = v26;
  v42 = v23;
  v44 = v79;
  v43 = v80;
  v46 = v81;
  v45 = v82;
  v47 = v83;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v48 = v31;
      sub_1E4B5D6D4(v36, v31, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      if (swift_getEnumCaseMultiPayload())
      {
        v49 = type metadata accessor for RCSService.Business.OpenURLAction;
LABEL_42:
        v70 = v49;
        v71 = v48;
        goto LABEL_43;
      }

      sub_1E4B5E7F4(v37, v44, type metadata accessor for RCSService.Business.OpenURLAction);
      if (sub_1E4BEFA4C())
      {
        v73 = *(v43 + 20);
        v74 = v31[v73];
        v75 = *(v44 + v73);
        sub_1E4B5D73C(v44, type metadata accessor for RCSService.Business.OpenURLAction);
        if (v74 == 3)
        {
          if (v75 == 3)
          {
LABEL_63:
            sub_1E4B5D73C(v48, type metadata accessor for RCSService.Business.OpenURLAction);
            goto LABEL_30;
          }
        }

        else if (v75 != 3 && v74 == v75)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_1E4B5D73C(v44, type metadata accessor for RCSService.Business.OpenURLAction);
      }

      sub_1E4B5D73C(v48, type metadata accessor for RCSService.Business.OpenURLAction);
      goto LABEL_58;
    }

    v58 = v40;
    sub_1E4B5D6D4(v36, v40, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v70 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
      v71 = v58;
LABEL_43:
      sub_1E4B5D73C(v71, v70);
      goto LABEL_44;
    }

    sub_1E4B5E7F4(v37, v46, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
    CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV21DialPhoneNumberActionV2eeoiySbAG_AGtFZ_0(v58, v46);
    v51 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
    sub_1E4B5D73C(v46, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
    v52 = v58;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = v41;
    sub_1E4B5D6D4(v36, v41, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v49 = type metadata accessor for RCSService.Business.ShowLocationAction;
      goto LABEL_42;
    }

    sub_1E4B5E7F4(v37, v45, type metadata accessor for RCSService.Business.ShowLocationAction);
    CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV18ShowLocationActionV2eeoiySbAG_AGtFZ_0(v48, v45);
    v51 = type metadata accessor for RCSService.Business.ShowLocationAction;
    sub_1E4B5D73C(v45, type metadata accessor for RCSService.Business.ShowLocationAction);
    v52 = v48;
LABEL_25:
    v59 = v51;
    goto LABEL_28;
  }

  v48 = v42;
  sub_1E4B5D6D4(v36, v42, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v49 = type metadata accessor for RCSService.Business.CreateCalendarEventAction;
    goto LABEL_42;
  }

  sub_1E4B5E7F4(v37, v47, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV25CreateCalendarEventActionV2eeoiySbAG_AGtFZ_0(v48, v47);
  sub_1E4B5D73C(v47, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  v52 = v48;
  v59 = type metadata accessor for RCSService.Business.CreateCalendarEventAction;
LABEL_28:
  sub_1E4B5D73C(v52, v59);
  sub_1E4B5D73C(v36, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  return CalendarEventActionV2eeoiySbAG_AGtFZ_0;
}

unint64_t sub_1E4B5E500()
{
  result = qword_1ECF94EA8;
  if (!qword_1ECF94EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EA8);
  }

  return result;
}

unint64_t sub_1E4B5E554()
{
  result = qword_1ECF94EB0;
  if (!qword_1ECF94EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EB0);
  }

  return result;
}

unint64_t sub_1E4B5E5A8()
{
  result = qword_1ECF94EB8;
  if (!qword_1ECF94EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EB8);
  }

  return result;
}

unint64_t sub_1E4B5E5FC()
{
  result = qword_1ECF94EC0;
  if (!qword_1ECF94EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EC0);
  }

  return result;
}

unint64_t sub_1E4B5E650()
{
  result = qword_1ECF94EC8;
  if (!qword_1ECF94EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EC8);
  }

  return result;
}

unint64_t sub_1E4B5E6A4()
{
  result = qword_1ECF94ED0;
  if (!qword_1ECF94ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94ED0);
  }

  return result;
}

unint64_t sub_1E4B5E6F8()
{
  result = qword_1ECF94ED8;
  if (!qword_1ECF94ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94ED8);
  }

  return result;
}

unint64_t sub_1E4B5E74C()
{
  result = qword_1ECF94EE0;
  if (!qword_1ECF94EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EE0);
  }

  return result;
}

unint64_t sub_1E4B5E7A0()
{
  result = qword_1ECF94EF0;
  if (!qword_1ECF94EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EF0);
  }

  return result;
}

uint64_t sub_1E4B5E7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4B5E85C()
{
  result = qword_1ECF94EF8;
  if (!qword_1ECF94EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EF8);
  }

  return result;
}

unint64_t sub_1E4B5E8B0()
{
  result = qword_1ECF94F08;
  if (!qword_1ECF94F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F08);
  }

  return result;
}

unint64_t sub_1E4B5E904()
{
  result = qword_1ECF94F18;
  if (!qword_1ECF94F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F18);
  }

  return result;
}

unint64_t sub_1E4B5E958()
{
  result = qword_1ECF94F78;
  if (!qword_1ECF94F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F78);
  }

  return result;
}

unint64_t sub_1E4B5E9AC()
{
  result = qword_1ECF94F80;
  if (!qword_1ECF94F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F80);
  }

  return result;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      if (a1[2] == a2[2] && v5 == v6)
      {
        goto LABEL_20;
      }

      v8 = a2[3];
      if (sub_1E4BF099C())
      {
        goto LABEL_20;
      }

      return 0;
    }

    v9 = a1[3];
LABEL_17:

    return 0;
  }

  if (v6)
  {
    goto LABEL_17;
  }

LABEL_20:
  v11 = *(type metadata accessor for RCSService.Business.SuggestedAction(0) + 24);

  return _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV0G0O2eeoiySbAI_AItFZ_0(a1 + v11, a2 + v11);
}

unint64_t sub_1E4B5EB14()
{
  result = qword_1ECF94FB0;
  if (!qword_1ECF94FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FB0);
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_10;
  }

  v18 = v15;
  v30 = type metadata accessor for RCSService.Business.Card(0);
  v19 = v30[7];
  v20 = *(v18 + 48);
  sub_1E4AF1898(&a1[v19], v17, &qword_1ECF92F88, &qword_1E4BFDD20);
  v31 = v20;
  sub_1E4AF1898(&a2[v19], &v17[v20], &qword_1ECF92F88, &qword_1E4BFDD20);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1E4AF1898(v17, v12, &qword_1ECF92F88, &qword_1E4BFDD20);
    v22 = v31;
    if (v21(&v17[v31], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v22], v4);
      sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0]);
      v25 = sub_1E4BEFE6C();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1E4AE0AE4(v17, &qword_1ECF95740, &unk_1E4C0BDD0);
    goto LABEL_10;
  }

  if (v21(&v17[v31], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1E4AE0AE4(v17, &qword_1ECF92F88, &qword_1E4BFDD20);
LABEL_13:
  v27 = v30[8];
  v28 = a1[v27];
  v29 = a2[v27];
  if (v28 == 2)
  {
    if (v29 == 2)
    {
LABEL_18:
      v23 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV7ContentV2eeoiySbAI_AItFZ_0(&a1[v30[9]], &a2[v30[9]]);
      return v23 & 1;
    }
  }

  else if (v29 != 2 && ((v29 ^ v28) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_1E4B5EF68()
{
  result = qword_1ECF94FD8;
  if (!qword_1ECF94FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FD8);
  }

  return result;
}

unint64_t sub_1E4B5EFBC()
{
  result = qword_1ECF94FE0;
  if (!qword_1ECF94FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FE0);
  }

  return result;
}

unint64_t sub_1E4B5F010()
{
  result = qword_1ECF94FE8;
  if (!qword_1ECF94FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FE8);
  }

  return result;
}

unint64_t sub_1E4B5F064()
{
  result = qword_1ECF94FF0;
  if (!qword_1ECF94FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FF0);
  }

  return result;
}

unint64_t sub_1E4B5F0B8()
{
  result = qword_1ECF95008;
  if (!qword_1ECF95008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95008);
  }

  return result;
}

unint64_t sub_1E4B5F10C()
{
  result = qword_1ECF95010;
  if (!qword_1ECF95010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95010);
  }

  return result;
}

unint64_t sub_1E4B5F160()
{
  result = qword_1ECF95018;
  if (!qword_1ECF95018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95018);
  }

  return result;
}

unint64_t sub_1E4B5F1D4()
{
  result = qword_1ECF95030;
  if (!qword_1ECF95030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95030);
  }

  return result;
}

unint64_t sub_1E4B5F228()
{
  result = qword_1ECF95038;
  if (!qword_1ECF95038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95038);
  }

  return result;
}

unint64_t sub_1E4B5F27C()
{
  result = qword_1ECF95058;
  if (!qword_1ECF95058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95058);
  }

  return result;
}

uint64_t sub_1E4B5F2D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95040, &qword_1E4C079A8);
    sub_1E4B5B390(a2, type metadata accessor for RCSService.Business.Card.Content);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B5F38C()
{
  result = qword_1ECF95080;
  if (!qword_1ECF95080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95080);
  }

  return result;
}

unint64_t sub_1E4B5F3E0()
{
  result = qword_1ECF95088;
  if (!qword_1ECF95088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95088);
  }

  return result;
}

unint64_t sub_1E4B5F434()
{
  result = qword_1ECF95098;
  if (!qword_1ECF95098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95098);
  }

  return result;
}

unint64_t sub_1E4B5F488()
{
  result = qword_1ECF950A0;
  if (!qword_1ECF950A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950A0);
  }

  return result;
}

unint64_t sub_1E4B5F4DC()
{
  result = qword_1ECF950C8;
  if (!qword_1ECF950C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950C8);
  }

  return result;
}

unint64_t sub_1E4B5F530()
{
  result = qword_1ECF950E8;
  if (!qword_1ECF950E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950E8);
  }

  return result;
}

unint64_t sub_1E4B5F584()
{
  result = qword_1ECF950F0;
  if (!qword_1ECF950F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950F0);
  }

  return result;
}

unint64_t sub_1E4B5F5D8()
{
  result = qword_1ECF950F8;
  if (!qword_1ECF950F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950F8);
  }

  return result;
}

unint64_t sub_1E4B5F62C()
{
  result = qword_1ECF95138;
  if (!qword_1ECF95138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95138);
  }

  return result;
}

unint64_t sub_1E4B5F680()
{
  result = qword_1ECF95140;
  if (!qword_1ECF95140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95140);
  }

  return result;
}

unint64_t sub_1E4B5F6D4()
{
  result = qword_1ECF95148;
  if (!qword_1ECF95148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95148);
  }

  return result;
}

unint64_t sub_1E4B5F728()
{
  result = qword_1ECF95150;
  if (!qword_1ECF95150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95150);
  }

  return result;
}

unint64_t sub_1E4B5F79C()
{
  result = qword_1ECF95180;
  if (!qword_1ECF95180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95180);
  }

  return result;
}

unint64_t sub_1E4B5F7F0()
{
  result = qword_1ECF95188;
  if (!qword_1ECF95188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95188);
  }

  return result;
}

unint64_t sub_1E4B5F844()
{
  result = qword_1ECF95198;
  if (!qword_1ECF95198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95198);
  }

  return result;
}

unint64_t sub_1E4B5F898()
{
  result = qword_1ECF951B8;
  if (!qword_1ECF951B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951B8);
  }

  return result;
}

unint64_t sub_1E4B5F8EC()
{
  result = qword_1ECF951C0;
  if (!qword_1ECF951C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951C0);
  }

  return result;
}

unint64_t sub_1E4B5F940()
{
  result = qword_1ECF951C8;
  if (!qword_1ECF951C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951C8);
  }

  return result;
}

unint64_t sub_1E4B5F994()
{
  result = qword_1ECF951F8;
  if (!qword_1ECF951F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951F8);
  }

  return result;
}

uint64_t sub_1E4B5F9E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B5B390(a2, type metadata accessor for RCSService.Business.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B5FA84()
{
  result = qword_1ECF95248;
  if (!qword_1ECF95248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95248);
  }

  return result;
}

unint64_t sub_1E4B5FAD8()
{
  result = qword_1ECF95250;
  if (!qword_1ECF95250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95250);
  }

  return result;
}

unint64_t sub_1E4B5FB2C()
{
  result = qword_1ECF95258;
  if (!qword_1ECF95258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95258);
  }

  return result;
}

unint64_t sub_1E4B5FB80()
{
  result = qword_1ECF95288;
  if (!qword_1ECF95288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95288);
  }

  return result;
}

unint64_t sub_1E4B5FBD4()
{
  result = qword_1ECF95290;
  if (!qword_1ECF95290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95290);
  }

  return result;
}

unint64_t sub_1E4B5FC2C()
{
  result = qword_1ECF952A8;
  if (!qword_1ECF952A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952A8);
  }

  return result;
}

unint64_t sub_1E4B5FC84()
{
  result = qword_1ECF952B0;
  if (!qword_1ECF952B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952B0);
  }

  return result;
}

unint64_t sub_1E4B5FCDC()
{
  result = qword_1ECF952B8;
  if (!qword_1ECF952B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952B8);
  }

  return result;
}

unint64_t sub_1E4B5FD34()
{
  result = qword_1ECF952C0;
  if (!qword_1ECF952C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952C0);
  }

  return result;
}

unint64_t sub_1E4B5FD8C()
{
  result = qword_1ECF952C8;
  if (!qword_1ECF952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952C8);
  }

  return result;
}

unint64_t sub_1E4B5FDE4()
{
  result = qword_1ECF952D0;
  if (!qword_1ECF952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952D0);
  }

  return result;
}

unint64_t sub_1E4B5FE3C()
{
  result = qword_1ECF952D8;
  if (!qword_1ECF952D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952D8);
  }

  return result;
}

unint64_t sub_1E4B5FE94()
{
  result = qword_1ECF952E0;
  if (!qword_1ECF952E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952E0);
  }

  return result;
}

unint64_t sub_1E4B5FEEC()
{
  result = qword_1ECF952E8;
  if (!qword_1ECF952E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952E8);
  }

  return result;
}

unint64_t sub_1E4B5FF44()
{
  result = qword_1ECF952F0;
  if (!qword_1ECF952F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952F0);
  }

  return result;
}

uint64_t sub_1E4B5FFE0()
{
  result = sub_1E4BEFA6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s13OpenURLActionV6TargetOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s13OpenURLActionV6TargetOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E4B601B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E4B601CC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1E4B60214()
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E4B602E8()
{
  sub_1E4AE5B08(319, &qword_1EE2BD740);
  if (v0 <= 0x3F)
  {
    sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4B603DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E4B60424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1E4B604AC()
{
  sub_1E4BEFABC();
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BD740);
    if (v1 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4B605A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E4B605E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4B60670()
{
  sub_1E4AE5B08(319, qword_1EE2BE610);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RCSService.Business.SuggestedAction.Action(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4B60714()
{
  result = type metadata accessor for RCSService.Business.OpenURLAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RCSService.Business.DialPhoneNumberAction(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RCSService.Business.ShowLocationAction(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RCSService.Business.CreateCalendarEventAction(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1E4B607EC()
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, qword_1EE2BE270);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RCSService.Business.Card.Content(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4B60910()
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4B60A14(319, &qword_1EE2BD730, type metadata accessor for RCSService.Business.Card.Content, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4B60A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E4B60A78()
{
  result = type metadata accessor for RCSService.Business.SuggestedAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E4B60B2C()
{
  sub_1E4BEFA6C();
  if (v0 <= 0x3F)
  {
    sub_1E4B60A14(319, qword_1EE2BD758, MEMORY[0x1EEE9A6F8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BECD8, sub_1E4AF15E0, MEMORY[0x1E6968070]);
      if (v2 <= 0x3F)
      {
        sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E4AF1EBC();
          if (v4 <= 0x3F)
          {
            sub_1E4AE5B08(319, &qword_1EE2BD740);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E4B60CF8()
{
  sub_1E4B60A14(319, qword_1EE2BE218, type metadata accessor for RCSService.Business.Card.Media, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BD740);
    if (v1 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BD738, type metadata accessor for RCSService.Business.Suggestion, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s15SuggestedActionV6ActionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15SuggestedActionV6ActionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4B61288()
{
  result = qword_1ECF952F8;
  if (!qword_1ECF952F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952F8);
  }

  return result;
}

unint64_t sub_1E4B612E0()
{
  result = qword_1ECF95300;
  if (!qword_1ECF95300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95300);
  }

  return result;
}

unint64_t sub_1E4B61338()
{
  result = qword_1ECF95308;
  if (!qword_1ECF95308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95308);
  }

  return result;
}

unint64_t sub_1E4B61390()
{
  result = qword_1ECF95310;
  if (!qword_1ECF95310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95310);
  }

  return result;
}

unint64_t sub_1E4B613E8()
{
  result = qword_1ECF95318;
  if (!qword_1ECF95318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95318);
  }

  return result;
}

unint64_t sub_1E4B61440()
{
  result = qword_1ECF95320;
  if (!qword_1ECF95320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95320);
  }

  return result;
}

unint64_t sub_1E4B61498()
{
  result = qword_1ECF95328;
  if (!qword_1ECF95328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95328);
  }

  return result;
}

unint64_t sub_1E4B614F0()
{
  result = qword_1ECF95330;
  if (!qword_1ECF95330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95330);
  }

  return result;
}

unint64_t sub_1E4B61548()
{
  result = qword_1ECF95338;
  if (!qword_1ECF95338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95338);
  }

  return result;
}

unint64_t sub_1E4B615A0()
{
  result = qword_1ECF95340;
  if (!qword_1ECF95340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95340);
  }

  return result;
}

unint64_t sub_1E4B615F8()
{
  result = qword_1ECF95348;
  if (!qword_1ECF95348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95348);
  }

  return result;
}

unint64_t sub_1E4B61650()
{
  result = qword_1ECF95350;
  if (!qword_1ECF95350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95350);
  }

  return result;
}

unint64_t sub_1E4B616A8()
{
  result = qword_1ECF95358;
  if (!qword_1ECF95358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95358);
  }

  return result;
}

unint64_t sub_1E4B61700()
{
  result = qword_1ECF95360;
  if (!qword_1ECF95360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95360);
  }

  return result;
}

unint64_t sub_1E4B61758()
{
  result = qword_1ECF95368;
  if (!qword_1ECF95368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95368);
  }

  return result;
}

unint64_t sub_1E4B617B0()
{
  result = qword_1ECF95370;
  if (!qword_1ECF95370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95370);
  }

  return result;
}

unint64_t sub_1E4B61808()
{
  result = qword_1ECF95378;
  if (!qword_1ECF95378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95378);
  }

  return result;
}

unint64_t sub_1E4B61860()
{
  result = qword_1ECF95380;
  if (!qword_1ECF95380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95380);
  }

  return result;
}

unint64_t sub_1E4B618B8()
{
  result = qword_1ECF95388;
  if (!qword_1ECF95388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95388);
  }

  return result;
}

unint64_t sub_1E4B61910()
{
  result = qword_1ECF95390;
  if (!qword_1ECF95390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95390);
  }

  return result;
}

unint64_t sub_1E4B61968()
{
  result = qword_1ECF95398;
  if (!qword_1ECF95398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95398);
  }

  return result;
}

unint64_t sub_1E4B619C0()
{
  result = qword_1ECF953A0;
  if (!qword_1ECF953A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953A0);
  }

  return result;
}

unint64_t sub_1E4B61A18()
{
  result = qword_1ECF953A8;
  if (!qword_1ECF953A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953A8);
  }

  return result;
}

unint64_t sub_1E4B61A70()
{
  result = qword_1ECF953B0;
  if (!qword_1ECF953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953B0);
  }

  return result;
}

unint64_t sub_1E4B61AC8()
{
  result = qword_1ECF953B8;
  if (!qword_1ECF953B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953B8);
  }

  return result;
}

unint64_t sub_1E4B61B20()
{
  result = qword_1ECF953C0;
  if (!qword_1ECF953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953C0);
  }

  return result;
}

unint64_t sub_1E4B61B78()
{
  result = qword_1ECF953C8;
  if (!qword_1ECF953C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953C8);
  }

  return result;
}

unint64_t sub_1E4B61BD0()
{
  result = qword_1ECF953D0;
  if (!qword_1ECF953D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953D0);
  }

  return result;
}

unint64_t sub_1E4B61C28()
{
  result = qword_1ECF953D8;
  if (!qword_1ECF953D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953D8);
  }

  return result;
}

unint64_t sub_1E4B61C80()
{
  result = qword_1ECF953E0;
  if (!qword_1ECF953E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953E0);
  }

  return result;
}

unint64_t sub_1E4B61CD8()
{
  result = qword_1ECF953E8;
  if (!qword_1ECF953E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953E8);
  }

  return result;
}

unint64_t sub_1E4B61D30()
{
  result = qword_1ECF953F0;
  if (!qword_1ECF953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953F0);
  }

  return result;
}

unint64_t sub_1E4B61D88()
{
  result = qword_1ECF953F8;
  if (!qword_1ECF953F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953F8);
  }

  return result;
}

unint64_t sub_1E4B61DE0()
{
  result = qword_1ECF95400;
  if (!qword_1ECF95400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95400);
  }

  return result;
}

unint64_t sub_1E4B61E38()
{
  result = qword_1ECF95408;
  if (!qword_1ECF95408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95408);
  }

  return result;
}

unint64_t sub_1E4B61E90()
{
  result = qword_1ECF95410;
  if (!qword_1ECF95410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95410);
  }

  return result;
}

unint64_t sub_1E4B61EE8()
{
  result = qword_1ECF95418;
  if (!qword_1ECF95418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95418);
  }

  return result;
}

unint64_t sub_1E4B61F40()
{
  result = qword_1ECF95420;
  if (!qword_1ECF95420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95420);
  }

  return result;
}

unint64_t sub_1E4B61F98()
{
  result = qword_1ECF95428;
  if (!qword_1ECF95428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95428);
  }

  return result;
}

unint64_t sub_1E4B61FF0()
{
  result = qword_1ECF95430;
  if (!qword_1ECF95430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95430);
  }

  return result;
}

unint64_t sub_1E4B62048()
{
  result = qword_1ECF95438;
  if (!qword_1ECF95438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95438);
  }

  return result;
}

unint64_t sub_1E4B620A0()
{
  result = qword_1ECF95440;
  if (!qword_1ECF95440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95440);
  }

  return result;
}

unint64_t sub_1E4B620F8()
{
  result = qword_1ECF95448;
  if (!qword_1ECF95448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95448);
  }

  return result;
}

unint64_t sub_1E4B62150()
{
  result = qword_1ECF95450;
  if (!qword_1ECF95450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95450);
  }

  return result;
}

unint64_t sub_1E4B621A8()
{
  result = qword_1ECF95458;
  if (!qword_1ECF95458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95458);
  }

  return result;
}

unint64_t sub_1E4B62200()
{
  result = qword_1ECF95460;
  if (!qword_1ECF95460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95460);
  }

  return result;
}

unint64_t sub_1E4B62258()
{
  result = qword_1ECF95468;
  if (!qword_1ECF95468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95468);
  }

  return result;
}

unint64_t sub_1E4B622B0()
{
  result = qword_1ECF95470;
  if (!qword_1ECF95470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95470);
  }

  return result;
}

unint64_t sub_1E4B62308()
{
  result = qword_1ECF95478;
  if (!qword_1ECF95478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95478);
  }

  return result;
}

unint64_t sub_1E4B62360()
{
  result = qword_1ECF95480;
  if (!qword_1ECF95480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95480);
  }

  return result;
}

unint64_t sub_1E4B623B8()
{
  result = qword_1ECF95488;
  if (!qword_1ECF95488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95488);
  }

  return result;
}

unint64_t sub_1E4B62410()
{
  result = qword_1ECF95490;
  if (!qword_1ECF95490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95490);
  }

  return result;
}

unint64_t sub_1E4B62468()
{
  result = qword_1ECF95498;
  if (!qword_1ECF95498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95498);
  }

  return result;
}

unint64_t sub_1E4B624C0()
{
  result = qword_1ECF954A0;
  if (!qword_1ECF954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954A0);
  }

  return result;
}

unint64_t sub_1E4B62518()
{
  result = qword_1ECF954A8;
  if (!qword_1ECF954A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954A8);
  }

  return result;
}

unint64_t sub_1E4B62570()
{
  result = qword_1ECF954B0;
  if (!qword_1ECF954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954B0);
  }

  return result;
}

unint64_t sub_1E4B625C8()
{
  result = qword_1ECF954B8;
  if (!qword_1ECF954B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954B8);
  }

  return result;
}

unint64_t sub_1E4B62620()
{
  result = qword_1ECF954C0;
  if (!qword_1ECF954C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954C0);
  }

  return result;
}

unint64_t sub_1E4B62678()
{
  result = qword_1ECF954C8;
  if (!qword_1ECF954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954C8);
  }

  return result;
}

unint64_t sub_1E4B626D0()
{
  result = qword_1ECF954D0;
  if (!qword_1ECF954D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954D0);
  }

  return result;
}

unint64_t sub_1E4B62728()
{
  result = qword_1ECF954D8;
  if (!qword_1ECF954D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954D8);
  }

  return result;
}

unint64_t sub_1E4B62780()
{
  result = qword_1ECF954E0;
  if (!qword_1ECF954E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954E0);
  }

  return result;
}

unint64_t sub_1E4B627D8()
{
  result = qword_1ECF954E8;
  if (!qword_1ECF954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954E8);
  }

  return result;
}

unint64_t sub_1E4B62830()
{
  result = qword_1ECF954F0;
  if (!qword_1ECF954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954F0);
  }

  return result;
}