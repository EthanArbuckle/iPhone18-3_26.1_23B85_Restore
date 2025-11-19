void sub_238D8A100(char *a1@<X8>)
{
  v2 = sub_238D9DFDC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238D9DEBC();
  v8 = [v7 domain];
  v9 = sub_238D9E03C();
  v11 = v10;

  sub_238D8CF88();
  if (v9 == sub_238D9DE3C() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_238D9E2FC();

    if ((v14 & 1) == 0)
    {

      v15 = 2;
      goto LABEL_13;
    }
  }

  v16 = [v7 code];
  v17 = v3[13];
  v17(v6, *MEMORY[0x277D25AB0], v2);
  v18 = sub_238D9DFCC();
  v19 = v3[1];
  v19(v6, v2);
  if (v18 == v16)
  {

    v15 = 0;
  }

  else
  {
    v17(v6, *MEMORY[0x277D25A98], v2);
    v20 = sub_238D9DFCC();

    v19(v6, v2);
    if (v20 == v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

LABEL_13:
  *a1 = v15;
}

uint64_t ManagedAppError.hashValue.getter()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A3C8()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A43C()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8A4CC, 0, 0);
}

uint64_t sub_238D8A4CC()
{
  if (qword_27DF6CD38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_238D8A5A0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_238D9198C(v4, v2, v2, v3);
}

uint64_t sub_238D8A5A0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

ManagedApp::ManagedAppConfigurationDecodingErrorCode_optional __swiftcall ManagedAppConfigurationDecodingErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 1879048191)
  {
    v2 = rawValue;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  *(v1 + 8) = rawValue > 1879048191;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t *sub_238D8A70C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1879048191;
  if (*result > 1879048191)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_238D8A738()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A7AC()
{
  v1 = *v0;
  sub_238D9E36C();
  MEMORY[0x23EE76BB0](v1);
  return sub_238D9E38C();
}

uint64_t sub_238D8A8CC()
{
  if (*v0)
  {
    result = 0x6567617373656DLL;
  }

  else
  {
    result = 1701080931;
  }

  *v0;
  return result;
}

uint64_t sub_238D8A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_238D9E2FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238D9E2FC();

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

uint64_t sub_238D8A9F4(uint64_t a1)
{
  v2 = sub_238D8D24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238D8AA30(uint64_t a1)
{
  v2 = sub_238D8D24C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238D8AA6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CDD8, &qword_238D9ECC8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[1] = v1[2];
  v13[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238D8D24C();
  sub_238D9E3AC();
  v16 = v10;
  v15 = 0;
  sub_238D8D340();
  sub_238D9E2CC();
  if (!v2)
  {
    v14 = 1;
    sub_238D9E2BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_238D8AC10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CDC0, &qword_238D9ECC0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238D8D24C();
  sub_238D9E39C();
  if (!v2)
  {
    v16[15] = 0;
    sub_238D8D2EC();
    sub_238D9E2AC();
    v11 = v17;
    v16[14] = 1;
    v13 = sub_238D9E29C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238D8AE04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_238D8AE34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_238D8AEF4()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8AFC0;
  v2 = *(v0 + 16);

  return sub_238D9B728(v2);
}

uint64_t sub_238D8AFC0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238D8B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8B0D8, 0, 0);
}

uint64_t sub_238D8B0D8()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DC28;
  *(v0 + 40) = qword_27DF6DC28;

  return MEMORY[0x2822009F8](sub_238D8B170, v1, 0);
}

uint64_t sub_238D8B170()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D259F8] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_238D8B230;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282184858](v7, v6);
}

uint64_t sub_238D8B230(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  v6[8] = v2;

  v9 = v6[5];
  if (v2)
  {
    v10 = sub_238D8B3D8;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v10 = sub_238D8B370;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D8B370()
{
  v1 = v0[6];

  v2 = v0[1];
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_238D8B3D8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_238D8B440, 0, 0);
}

uint64_t sub_238D8B440()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_238D8A100(&v6);
  v3 = v6;
  *v2 = v6;
  *(v0 + 88) = v3;
  sub_238D8BE48();
  swift_willThrowTypedImpl();
  MEMORY[0x23EE76E80](v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238D8B528()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8D610;
  v2 = *(v0 + 16);

  return sub_238D8D678(v2);
}

uint64_t sub_238D8B5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8B618, 0, 0);
}

uint64_t sub_238D8B618()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DBB0;
  *(v0 + 40) = qword_27DF6DBB0;

  return MEMORY[0x2822009F8](sub_238D8B6B0, v1, 0);
}

uint64_t sub_238D8B6B0()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A00] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_238D8B770;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282184860](v7, v6);
}

uint64_t sub_238D8B770(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_238D8B8AC;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_238D8D620;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8B8AC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_238D8D61C, 0, 0);
}

uint64_t sub_238D8B944()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_238D8D610;
  v2 = *(v0 + 16);

  return sub_238D95AC8(v2);
}

uint64_t sub_238D8BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_238D8BA34, 0, 0);
}

uint64_t sub_238D8BA34()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF6DBC0;
  *(v0 + 40) = qword_27DF6DBC0;

  return MEMORY[0x2822009F8](sub_238D8BACC, v1, 0);
}

uint64_t sub_238D8BACC()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D259F0] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_238D8BB8C;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282184850](v7, v6);
}

uint64_t sub_238D8BB8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_238D8BD30;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_238D8BCC8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8BCC8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_238D8BD30()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_238D8BD98, 0, 0);
}

uint64_t sub_238D8BD98()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_238D8A100(&v6);
  v3 = v6;
  *v2 = v6;
  *(v0 + 80) = v3;
  sub_238D8BE48();
  swift_willThrowTypedImpl();
  MEMORY[0x23EE76E80](v1);
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_238D8BE48()
{
  result = qword_27DF6CD70;
  if (!qword_27DF6CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD70);
  }

  return result;
}

unint64_t sub_238D8BEA0()
{
  result = qword_27DF6CD78;
  if (!qword_27DF6CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD78);
  }

  return result;
}

unint64_t sub_238D8BEFC()
{
  result = qword_27DF6CD80;
  if (!qword_27DF6CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ManagedAppConfigurationProvider.configurations<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_238D8D614;

  return v14(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for ManagedAppConfigurationDecodingErrorCode(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppConfigurationDecodingErrorCode(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ManagedAppPasswordsProvider.identifiers.getter(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238D8C4A4;

  return v8(a1);
}

uint64_t sub_238D8C4A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s10ManagedApp0aB17PasswordsProviderC8password14withIdentifierS2S_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238D8C6D0;

  return v12(a1, a2, a3);
}

uint64_t sub_238D8C6D0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ManagedAppCertificatesProvider.identifiers.getter(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238D8D614;

  return v8(a1);
}

uint64_t _s10ManagedApp0aB20CertificatesProviderC11certificate14withIdentifierSo17SecCertificateRefaSS_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238D8D618;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppIdentitiesProvider.identifiers.getter(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238D8D614;

  return v8(a1);
}

uint64_t _s10ManagedApp0aB18IdentitiesProviderC8identity14withIdentifierSo14SecIdentityRefaSS_tYaAA0aB5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238D8CD34;

  return v12(a1, a2, a3);
}

uint64_t sub_238D8CD34(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_238D8CE30(uint64_t *a1)
{
  v1 = *a1;
  sub_238D9E20C();
  sub_238D9E16C();

  return swift_getWitnessTable();
}

unint64_t sub_238D8CE88()
{
  result = qword_27DF6CD88;
  if (!qword_27DF6CD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CD90, &qword_238D9EBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD88);
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

unint64_t sub_238D8CF34()
{
  result = qword_27DF6CD98;
  if (!qword_27DF6CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CD98);
  }

  return result;
}

unint64_t sub_238D8CF88()
{
  result = qword_27DF6CDA0;
  if (!qword_27DF6CDA0)
  {
    sub_238D9DFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDA0);
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

uint64_t sub_238D8CFF4(uint64_t a1, int a2)
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

uint64_t sub_238D8D03C(uint64_t result, int a2, int a3)
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

unint64_t sub_238D8D08C(void *a1)
{
  a1[1] = sub_238D8D0C4();
  a1[2] = sub_238D8D118();
  result = sub_238D8D16C();
  a1[3] = result;
  return result;
}

unint64_t sub_238D8D0C4()
{
  result = qword_27DF6CDA8;
  if (!qword_27DF6CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDA8);
  }

  return result;
}

unint64_t sub_238D8D118()
{
  result = qword_27DF6CDB0;
  if (!qword_27DF6CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDB0);
  }

  return result;
}

unint64_t sub_238D8D16C()
{
  result = qword_27DF6CDB8;
  if (!qword_27DF6CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDB8);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_238D8D24C()
{
  result = qword_27DF6CDC8;
  if (!qword_27DF6CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDC8);
  }

  return result;
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

unint64_t sub_238D8D2EC()
{
  result = qword_27DF6CDD0;
  if (!qword_27DF6CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDD0);
  }

  return result;
}

unint64_t sub_238D8D340()
{
  result = qword_27DF6CDE0;
  if (!qword_27DF6CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReservedAppConfigurationError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReservedAppConfigurationError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238D8D4F4()
{
  result = qword_27DF6CDE8;
  if (!qword_27DF6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDE8);
  }

  return result;
}

unint64_t sub_238D8D54C()
{
  result = qword_27DF6CDF0;
  if (!qword_27DF6CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDF0);
  }

  return result;
}

unint64_t sub_238D8D5A4()
{
  result = qword_27DF6CDF8;
  if (!qword_27DF6CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CDF8);
  }

  return result;
}

double sub_238D8D624()
{
  type metadata accessor for ManagedAppCertificateCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DBB0 = v0;
  return result;
}

uint64_t sub_238D8D678(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D8D820, v1, 0);
}

uint64_t sub_238D8D820()
{
  v1 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v23, v1, v2);
  v9 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_238D9D984(0, v9[2] + 1, 1, v9);
    *(v7 + 112) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_238D9D984(v11 > 1, v12 + 1, 1, v9);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v9[2] = v12 + 1;
  (*(v14 + 32))(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
  *(v7 + 112) = v9;
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v16 = sub_238D9E00C();
  __swift_project_value_buffer(v16, qword_27DF6DBE0);
  v17 = sub_238D9DFEC();
  v18 = sub_238D9E1CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_238D89000, v17, v18, "Notifying new managed app certificates AsyncSequence of initial state.", v19, 2u);
    MEMORY[0x23EE76F90](v19, -1, -1);
  }

  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_238D8DACC;
  v21 = v0[4];

  return sub_238D8DE6C();
}

uint64_t sub_238D8DACC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D8DBE4, v3, 0);
}

uint64_t sub_238D8DBE4()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v4 + 8))(v3, v5);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_238D8DCB8;
  v7 = v0[4];

  return sub_238D8E28C();
}

uint64_t sub_238D8DCB8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238D8DDC8, v2, 0);
}

uint64_t sub_238D8DDC8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238D8DE8C()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A28] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238D8DF44;

  return MEMORY[0x282184888]();
}

uint64_t sub_238D8DF44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = v1;

  v7 = v4[2];
  if (v1)
  {
    v8 = sub_238D8E0E4;
  }

  else
  {
    v4[6] = a1;
    v8 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D8E080()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_238D8E0E4()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app certificate identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[3];

  MEMORY[0x23EE76E80](v9);
  v11 = v0[1];
  v12 = MEMORY[0x277D84F90];

  return v11(v12);
}

uint64_t sub_238D8E2AC()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, (v0 + 8));
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD50 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBE0);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app certificate changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_238D9DFBC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v12 = *(MEMORY[0x277D25A40] + 4);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_238D8E498;

    return MEMORY[0x2821848C0]();
  }
}

uint64_t sub_238D8E498(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 192);
  v8 = *v3;
  v6[25] = v2;

  v9 = v6[22];
  if (v2)
  {
    v10 = sub_238D8E768;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v10 = sub_238D8E5D8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D8E5D8()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_238D9E02C();

  v0[6] = sub_238D8E920;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor;
  v7 = _Block_copy(v0 + 2);
  v8 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v0[15] = swift_getObjectType();

  v0[12] = v8;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v4 + 120);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_238D8E768()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[23];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app certificate changed notification name. Unable to register for notifications. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[23];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_238D8E920()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6 - v1;
  v3 = sub_238D9E10C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_238D9B2E0(0, 0, v2, &unk_238D9EEB8, v4);
}

uint64_t sub_238D8EA2C()
{
  if (qword_27DF6CD30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D8F144();
}

uint64_t sub_238D8EB10()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, v0 + 48);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    v2 = sub_238D9DFBC();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v5 = *(MEMORY[0x277D25A40] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_238D8ED08;

    return MEMORY[0x2821848C0]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD50 != -1)
    {
      swift_once();
    }

    v7 = sub_238D9E00C();
    __swift_project_value_buffer(v7, qword_27DF6DBE0);
    v8 = sub_238D9DFEC();
    v9 = sub_238D9E1DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238D89000, v8, v9, "Asked to deregister for managed app certificate changed notifications but not currently registered.", v10, 2u);
      MEMORY[0x23EE76F90](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_238D8ED08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  v6[23] = v2;

  v9 = v6[20];
  if (v2)
  {
    v10 = sub_238D8EF84;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v10 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D8EE48()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v6 = sub_238D9E2EC();
  v7 = sub_238D9E02C();

  [v5 removeObserver:v6 name:v7 object:0];

  swift_unknownObjectRelease();
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  swift_beginAccess();
  sub_238D8FB94(v0 + 80, v4 + 120);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238D8EF84()
{
  if (qword_27DF6CD50 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBE0);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine certificate change notification name. Unable to deregister from notifications that certificates have changed Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[21];

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_238D8F144()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_238D8F2B0;

  return sub_238D8DE6C();
}

uint64_t sub_238D8F2B0(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D8F3C8, v3, 0);
}

uint64_t sub_238D8F3C8()
{
  if (qword_27DF6CD50 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = v0[3];
    v2 = sub_238D9E00C();
    __swift_project_value_buffer(v2, qword_27DF6DBE0);

    v3 = sub_238D9DFEC();
    v4 = sub_238D9E1CC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[3];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(*(v6 + 112) + 16);

      _os_log_impl(&dword_238D89000, v3, v4, "Attempting to notify %ld managed app certificates AsyncSequences of new state.", v7, 0xCu);
      MEMORY[0x23EE76F90](v7, -1, -1);
    }

    else
    {
      v8 = v0[3];
    }

    v9 = v0[3];
    v10 = *(v9 + 112);
    v54 = *(v10 + 16);
    if (!v54)
    {
      break;
    }

    v44 = v0[3];
    v11 = v0[8];
    v12 = v0[5];
    v47 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v51 = v10 + v47;
    v50 = (v12 + 88);
    v49 = *MEMORY[0x277D85748];
    v48 = (v11 + 8);
    v52 = v11;
    v45 = (v12 + 8);
    v46 = (v11 + 32);

    v14 = 0;
    v55 = MEMORY[0x277D84F90];
    v53 = v13;
    while (v14 < *(v13 + 16))
    {
      v15 = v0[12];
      v16 = v0[6];
      v17 = v0[4];
      v18 = *(v52 + 72);
      v19 = *(v52 + 16);
      v19(v0[10], v51 + v18 * v14, v0[7]);
      v0[2] = v15;

      sub_238D9E14C();
      if ((*v50)(v16, v17) == v49)
      {
        v20 = sub_238D9DFEC();
        v21 = sub_238D9E1DC();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v0[10];
        v24 = v0[7];
        if (v22)
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_238D89000, v20, v21, "Dropping terminated managed app certificates AsyncSequence from coordinator.", v25, 2u);
          MEMORY[0x23EE76F90](v25, -1, -1);
        }

        (*v48)(v23, v24);
      }

      else
      {
        v19(v0[9], v0[10], v0[7]);
        v26 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_238D9D984(0, v55[2] + 1, 1, v55);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_238D9D984(v27 > 1, v28 + 1, 1, v26);
        }

        v29 = v0[9];
        v31 = v0[6];
        v30 = v0[7];
        v32 = v0[4];
        (*v48)(v0[10], v30);
        v26[2] = v28 + 1;
        v55 = v26;
        (*v46)(v26 + v47 + v28 * v18, v29, v30);
        (*v45)(v31, v32);
      }

      v13 = v53;
      if (v54 == ++v14)
      {
        v33 = v0[12];

        v9 = v44;
        v34 = v55;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v35 = v0[12];
  v34 = MEMORY[0x277D84F90];
LABEL_20:

  v36 = *(v9 + 112);
  *(v9 + 112) = v34;

  if (*(*(v9 + 112) + 16))
  {
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[6];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v42 = swift_task_alloc();
    v0[13] = v42;
    *v42 = v0;
    v42[1] = sub_238D8F8AC;
    v43 = v0[3];

    return sub_238D8EAF0();
  }
}

uint64_t sub_238D8F8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v8 = *v0;

  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[6];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_238D8F9FC()
{
  v1 = *(v0 + 112);

  sub_238D8FB34(v0 + 120, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238D8FAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE10, &unk_238D9EFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_238D8FB24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238D8FB34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238D8FB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE10, &unk_238D9EFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D8FC1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D8FC54()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238D8C4A4;

  return sub_238D8EA10();
}

uint64_t sub_238D8FD00(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11[-v4];
  sub_238D94F30(a1, v12, &qword_27DF6CE38, &qword_238D9EFB8);
  swift_beginAccess();
  sub_238D95094(v12, v1 + 112, &qword_27DF6CE38, &qword_238D9EFB8);
  swift_endAccess();
  sub_238D94F30(v1 + 112, v12, &qword_27DF6CE38, &qword_238D9EFB8);
  sub_238D950FC(v12);
  sub_238D8FB34(v12, &qword_27DF6CE38, &qword_238D9EFB8);
  v6 = sub_238D9E10C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_238D94F30(a1, v12, &qword_27DF6CE38, &qword_238D9EFB8);
  v7 = sub_238D95454();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *(v8 + 32) = v1;
  v9 = v12[1];
  *(v8 + 40) = v12[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v13;
  swift_retain_n();
  sub_238D9B2E0(0, 0, v5, &unk_238D9EFE8, v8);

  return sub_238D8FB34(a1, &qword_27DF6CE38, &qword_238D9EFB8);
}

uint64_t sub_238D8FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_238D8FF08, a4, 0);
}

uint64_t sub_238D8FF08()
{
  v11 = v0;
  sub_238D94F30(v0[13], (v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v2 + 32))(&v10, v1, v2);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  }

  sub_238D94F30(v0[13], (v0 + 7), &qword_27DF6CE38, &qword_238D9EFB8);
  v3 = v0[10];
  if (v3)
  {
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v5 = (*(v4 + 56))(v3, v4);
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    sub_238D8FB34((v0 + 7), &qword_27DF6CE38, &qword_238D9EFB8);
    v5 = 0;
  }

  v0[14] = v3;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_238D900BC;
  v8 = v0[12];

  return sub_238D94304(v1, v5, v3);
}

uint64_t sub_238D900BC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_238D901CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v7 = sub_238D9E24C();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_238D9E25C();
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = *(a4 + 16);
  sub_238D9E20C();
  v13 = sub_238D9E12C();
  v5[23] = v13;
  v14 = *(v13 - 8);
  v5[24] = v14;
  v15 = *(v14 + 64) + 15;
  v5[25] = swift_task_alloc();
  v16 = swift_checkMetadataState();
  v5[26] = v16;
  v17 = *(v16 - 8);
  v5[27] = v17;
  v18 = *(v17 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D903E0, 0, 0);
}

uint64_t sub_238D903E0()
{
  v2 = v0 + 30;
  v1 = v0[30];
  v3 = v0[22];
  v4 = v0[13];
  v5 = v0[11];
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  (*(*(v3 - 8) + 56))(v1, 1, 1);
  if (v4 >> 60 == 15)
  {
    v6 = v0 + 27;
    v7 = v0 + 26;
    v8 = v0[25];
    v9 = v0[24];
    v36 = v0[23];
    v10 = v0[15];
    (*(v0[27] + 16))(v0[28], v0[30], v0[26]);
    sub_238D9E15C();
    sub_238D9E14C();
    v11 = (*(v9 + 88))(v8, v36);
    v12 = *MEMORY[0x277D85748];
    if (v11 == *MEMORY[0x277D85748])
    {
      if (qword_27DF6CD48 != -1)
      {
        swift_once();
      }

      v22 = sub_238D9E00C();
      __swift_project_value_buffer(v22, qword_27DF6DBC8);
      v23 = sub_238D9DFEC();
      v24 = sub_238D9E1DC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_238D89000, v23, v24, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v25, 2u);
        MEMORY[0x23EE76F90](v25, -1, -1);
      }
    }

    else
    {
      (*(*v6 + 8))(*v2, *v7);
      v6 = v0 + 24;
      v2 = v0 + 25;
      v7 = v0 + 23;
    }

    v26 = v11 != v12;
    v27 = *v2;
    v28 = *v6;
    v30 = v0[29];
    v29 = v0[30];
    v31 = v0[28];
    v32 = v0[25];
    v33 = v0[21];
    v34 = v0[18];
    (*(v28 + 8))(v27, *v7);

    v35 = v0[1];

    return v35(v26);
  }

  else
  {
    v13 = v0[22];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    type metadata accessor for ConcurrencyUtils();
    v17 = swift_allocObject();
    v0[31] = v17;
    v17[2] = v13;
    v17[3] = *(v15 + 24);
    v17[4] = v16;
    v17[5] = v14;
    sub_238D957E0(v16, v14);
    sub_238D957F4(v16, v14);
    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v18[1] = sub_238D907A0;
    v19 = v0[29];
    v20 = v0[22];

    return sub_238D97AC8(v19, 5000000000, &unk_238D9F008, v17, v20);
  }
}

uint64_t sub_238D907A0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_238D90B74;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_238D908BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238D908BC()
{
  v2 = v0 + 30;
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[29];
  v5 = v0[26];
  sub_238D947BC(v0[12], v0[13]);
  (*(v3 + 8))(v1, v5);
  (*(v3 + 32))(v1, v4, v5);
  v6 = v0 + 23;
  v7 = v0[25];
  v28 = v0[23];
  v8 = v0[24];
  v9 = v0[15];
  (*(v0[27] + 16))(v0[28], v0[30], v0[26]);
  sub_238D9E15C();
  sub_238D9E14C();
  v10 = (*(v8 + 88))(v7, v28);
  v11 = *MEMORY[0x277D85748];
  if (v10 == *MEMORY[0x277D85748])
  {
    v6 = v0 + 26;
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v13 = sub_238D9E00C();
    __swift_project_value_buffer(v13, qword_27DF6DBC8);
    v14 = sub_238D9DFEC();
    v15 = sub_238D9E1DC();
    v12 = v0 + 27;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238D89000, v14, v15, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v16, 2u);
      MEMORY[0x23EE76F90](v16, -1, -1);
    }
  }

  else
  {
    (*(v0[27] + 8))(*v2, v0[26]);
    v12 = v0 + 24;
    v2 = v0 + 25;
  }

  v17 = v10 != v11;
  v18 = *v2;
  v19 = *v12;
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[18];
  (*(v19 + 8))(v18, *v6);

  v26 = v0[1];

  return v26(v17);
}

uint64_t sub_238D90B74()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);

  *(v0 + 56) = v1;
  MEMORY[0x23EE76E90](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE58, &qword_238D9F010);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 160) + 88))(*(v0 + 168), *(v0 + 152));
    if (v5 == *MEMORY[0x277D84160])
    {
      v7 = *(v0 + 160);
      v6 = *(v0 + 168);
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v10 = *(v0 + 128);
      v11 = *(v0 + 136);
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v7 + 96))(v6, v8);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE70, &qword_238D9F020);
      (*(v11 + 32))(v9, v6 + *(v15 + 48), v10);
      v16 = sub_238D9E23C();
      v18 = v17;
      sub_238D947BC(v13, v12);
      (*(v11 + 8))(v9, v10);
      sub_238D8FB34(v14, &qword_27DF6CE38, &qword_238D9EFB8);
      v19 = sub_238D95848();
      v20 = 1879048195;
LABEL_6:
      *v14 = v20;
      v14[1] = v16;
      v14[2] = v18;
      v14[3] = &type metadata for ReservedAppConfigurationError;
      v14[4] = v19;
LABEL_7:
      MEMORY[0x23EE76E80](*(v0 + 56));
      goto LABEL_18;
    }

    if (v5 == *MEMORY[0x277D84170])
    {
      v22 = *(v0 + 160);
      v21 = *(v0 + 168);
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v25 = *(v0 + 128);
      v26 = *(v0 + 136);
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v14 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v22 + 96))(v21, v23);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE70, &qword_238D9F020);
      (*(v26 + 32))(v24, v21 + *(v29 + 48), v25);
      v16 = sub_238D9E23C();
      v18 = v30;
      sub_238D947BC(v28, v27);
      (*(v26 + 8))(v24, v25);
      sub_238D8FB34(v14, &qword_27DF6CE38, &qword_238D9EFB8);
      v19 = sub_238D95848();
      v20 = 1879048196;
      goto LABEL_6;
    }

    if (v5 == *MEMORY[0x277D84158])
    {
      v32 = *(v0 + 160);
      v31 = *(v0 + 168);
      v34 = *(v0 + 144);
      v33 = *(v0 + 152);
      v35 = *(v0 + 128);
      v36 = *(v0 + 136);
      v38 = *(v0 + 96);
      v37 = *(v0 + 104);
      v39 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v32 + 96))(v31, v33);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF6CE78, &qword_238D9F028);
      (*(v36 + 32))(v34, v31 + *(v40 + 48), v35);
      v41 = sub_238D9E23C();
      v43 = v42;
      sub_238D947BC(v38, v37);
      (*(v36 + 8))(v34, v35);
      sub_238D8FB34(v39, &qword_27DF6CE38, &qword_238D9EFB8);
      v44 = sub_238D95848();
      *v39 = 1879048194;
      v39[1] = v41;
      v39[2] = v43;
      v39[3] = &type metadata for ReservedAppConfigurationError;
      v39[4] = v44;
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_7;
    }

    if (v5 == *MEMORY[0x277D84168])
    {
      v46 = *(v0 + 160);
      v45 = *(v0 + 168);
      v48 = *(v0 + 144);
      v47 = *(v0 + 152);
      v49 = *(v0 + 128);
      v50 = *(v0 + 136);
      v52 = *(v0 + 96);
      v51 = *(v0 + 104);
      v53 = *(v0 + 88);
      MEMORY[0x23EE76E80](*(v0 + 264));
      (*(v46 + 96))(v45, v47);
      (*(v50 + 32))(v48, v45, v49);
      v54 = sub_238D9E23C();
      v56 = v55;
      sub_238D947BC(v52, v51);
      (*(v50 + 8))(v48, v49);
      sub_238D8FB34(v53, &qword_27DF6CE38, &qword_238D9EFB8);
      v57 = sub_238D95848();
      *v53 = 1879048193;
      v53[1] = v54;
      v53[2] = v56;
      v53[3] = &type metadata for ReservedAppConfigurationError;
      v53[4] = v57;
      goto LABEL_7;
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

  v58 = *(v0 + 264);
  MEMORY[0x23EE76E80](*(v0 + 56));
  *(v0 + 64) = v58;
  MEMORY[0x23EE76E90](v58);
  v59 = swift_dynamicCast();
  v60 = *(v0 + 264);
  if (v59)
  {
    v62 = *(v0 + 96);
    v61 = *(v0 + 104);
    v63 = *(v0 + 88);
    MEMORY[0x23EE76E80](*(v0 + 264));
    sub_238D9E22C();
    MEMORY[0x23EE76890](0xD000000000000034, 0x8000000238DA0360);
    *(v0 + 80) = 5;
    v64 = sub_238D9E2DC();
    MEMORY[0x23EE76890](v64);

    MEMORY[0x23EE76890](0x73646E6F63657320, 0xE90000000000002ELL);
    sub_238D947BC(v62, v61);
    sub_238D8FB34(v63, &qword_27DF6CE38, &qword_238D9EFB8);
    v65 = sub_238D95848();
    *v63 = 1879048197;
    v63[1] = 0;
    v63[2] = 0xE000000000000000;
    v63[3] = &type metadata for ReservedAppConfigurationError;
    v63[4] = v65;
    MEMORY[0x23EE76E80](*(v0 + 64));
  }

  else
  {
    MEMORY[0x23EE76E80](*(v0 + 64));
    *(v0 + 72) = v60;
    MEMORY[0x23EE76E90](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE60, &qword_238D9F018);
    v66 = swift_dynamicCast();
    v67 = *(v0 + 264);
    v69 = *(v0 + 96);
    v68 = *(v0 + 104);
    v70 = *(v0 + 88);
    if (v66)
    {
      sub_238D8FB34(*(v0 + 88), &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v69, v68);
      MEMORY[0x23EE76E80](v67);
      sub_238D94F18((v0 + 16), v70);
      MEMORY[0x23EE76E80](*(v0 + 72));
    }

    else
    {
      MEMORY[0x23EE76E80](*(v0 + 72));
      MEMORY[0x23EE76E80](v67);
      sub_238D947BC(v69, v68);
      sub_238D8FB34(v70, &qword_27DF6CE38, &qword_238D9EFB8);
      v71 = sub_238D95848();
      *v70 = xmmword_238D9EEE0;
      *(v70 + 16) = 0x8000000238DA0340;
      *(v70 + 24) = &type metadata for ReservedAppConfigurationError;
      *(v70 + 32) = v71;
    }
  }

LABEL_18:
  v101 = v0;
  v72 = *(v0 + 240);
  v74 = *(v0 + 224);
  v73 = (v0 + 240);
  v76 = *(v0 + 216);
  v75 = (v0 + 216);
  v77 = v73 - 4;
  v78 = *(v73 - 5);
  v80 = v73 - 6;
  v79 = *(v73 - 6);
  v100 = *(v73 - 7);
  v81 = *(v73 - 15);
  (*(v76 + 16))(v74, v72, *(v73 - 4));
  sub_238D9E15C();
  sub_238D9E14C();
  v82 = (*(v79 + 88))(v78, v100);
  v83 = *MEMORY[0x277D85748];
  if (v82 == *MEMORY[0x277D85748])
  {
    v80 = v75;
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v85 = sub_238D9E00C();
    __swift_project_value_buffer(v85, qword_27DF6DBC8);
    v86 = sub_238D9DFEC();
    v87 = sub_238D9E1DC();
    v84 = v101;
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_238D89000, v86, v87, "Dropping terminated managed app configurations AsyncSequence from coordinator.", v88, 2u);
      MEMORY[0x23EE76F90](v88, -1, -1);
    }
  }

  else
  {
    (*(*v75 + 8))(*v73, *v77);
    v77 = v73 - 7;
    v73 -= 5;
    v84 = v101;
  }

  v89 = v82 != v83;
  v90 = *v73;
  v91 = *v80;
  v93 = v84[29];
  v92 = v84[30];
  v94 = v84[28];
  v95 = v84[25];
  v96 = v84[21];
  v97 = v84[18];
  (*(v91 + 8))(v90, *v77);

  v98 = v84[1];

  return v98(v89);
}

uint64_t sub_238D9144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_238D91474, 0, 0);
}

uint64_t sub_238D91474()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_238D9DEAC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_238D9DE9C();
  sub_238D9DE8C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_238D91548(uint64_t a1)
{
  sub_238D9E20C();
  v2 = sub_238D9E13C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = (*(*(sub_238D9E15C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  swift_checkMetadataState();
  v10 = *MEMORY[0x277D85778];
  v11 = sub_238D9E13C();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  sub_238D9E11C();
  (*(v3 + 8))(v6, v2);
  return sub_238D91704(v9, a1);
}

uint64_t sub_238D91704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238D9E20C();
  v4 = sub_238D9E15C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_238D9177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238D9183C;

  return sub_238D901CC(a1, a2, a3, a4);
}

uint64_t sub_238D9183C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

double sub_238D91938()
{
  type metadata accessor for ManagedAppConfigurationCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 144) = 0;
  *(v0 + 152) = v2;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  qword_27DF6DBB8 = v0;
  return result;
}

uint64_t sub_238D9198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a3;
  v6 = type metadata accessor for ManagedAppConfigurationCoordinator.TypedDataReceiver();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D91A70, v4, 0);
}

uint64_t sub_238D91A70()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_238D91548(v0[23]);
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v4 = sub_238D9E00C();
  __swift_project_value_buffer(v4, qword_27DF6DBC8);
  v5 = sub_238D9DFEC();
  v6 = sub_238D9E1CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238D89000, v5, v6, "Notifying new managed app configuration AsyncSequence of initial state.", v7, 2u);
    MEMORY[0x23EE76F90](v7, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_238D91BCC;
  v9 = v0[18];

  return sub_238D922D8();
}

uint64_t sub_238D91BCC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 192);
  v7 = *v2;
  v5[25] = a1;
  v5[26] = a2;

  v8 = swift_task_alloc();
  v5[27] = v8;
  *v8 = v7;
  v8[1] = sub_238D91D44;
  v9 = v5[23];
  v10 = v5[19];

  return sub_238D901CC((v5 + 2), a1, a2, v10);
}

uint64_t sub_238D91D44(char a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 232) = a1;

  sub_238D947BC(v4, v3);

  return MEMORY[0x2822009F8](sub_238D91E98, v5, 0);
}

uint64_t sub_238D91E98()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  sub_238D94F30(v0 + 16, v0 + 56, &qword_27DF6CE38, &qword_238D9EFB8);
  sub_238D8FD00(v0 + 56);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  if (v1 == 1)
  {
    v5 = *(v0 + 144);
    v6 = *(*(v0 + 160) + 16);
    v6(*(v0 + 176), *(v0 + 184), *(v0 + 152));
    swift_beginAccess();
    v7 = *(v5 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_238D9D83C(0, v7[2] + 1, 1, v7);
      *(v5 + 152) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_238D9D83C((v9 > 1), v10 + 1, 1, v7);
      *(v5 + 152) = v7;
    }

    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 152);
    v14 = *(v0 + 160);
    v6(v12, v11, v13);
    sub_238D94DCC(v10, v12, (v5 + 152), v13, &off_284BA6D28);
    (*(v14 + 8))(v11, v13);
    *(v5 + 152) = v7;
    swift_endAccess();
    v15 = swift_task_alloc();
    *(v0 + 224) = v15;
    *v15 = v0;
    v15[1] = sub_238D9210C;
    v16 = *(v0 + 144);

    return sub_238D92714();
  }

  else
  {
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);
    sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
    (*(v19 + 8))(v3, v20);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_238D9210C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238D9221C, v2, 0);
}

uint64_t sub_238D9221C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  (*(v4 + 8))(v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_238D922F8()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A08] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238D923B0;

  return MEMORY[0x282184868]();
}

uint64_t sub_238D923B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  v6[5] = v2;

  v9 = v6[2];
  if (v2)
  {
    v10 = sub_238D92554;
  }

  else
  {
    v6[6] = a2;
    v6[7] = a1;
    v10 = sub_238D924F0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D924F0()
{
  v1 = v0[3];

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_238D92554()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  v7 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app configuration. Returning nil. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[3];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12(0, 0xF000000000000000);
}

uint64_t sub_238D92734()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D94F30(v1 + 160, (v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBC8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app configuration changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_238D9DFBC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v12 = *(MEMORY[0x277D25A48] + 4);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_238D92930;

    return MEMORY[0x2821848C8]();
  }
}

uint64_t sub_238D92930(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 192);
  v8 = *v3;
  v6[25] = v2;

  v9 = v6[22];
  if (v2)
  {
    v10 = sub_238D92C10;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v10 = sub_238D92A70;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D92A70()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_238D9E02C();

  v0[6] = sub_238D92DC8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_0;
  v7 = _Block_copy(v0 + 2);
  v8 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v0[15] = swift_getObjectType();

  v0[12] = v8;
  swift_beginAccess();
  sub_238D95094((v0 + 12), v4 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_238D92C10()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[23];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app configuration changed notification name. Unable to register for notifications. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[23];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_238D92DC8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6 - v1;
  v3 = sub_238D9E10C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_238D9B2E0(0, 0, v2, &unk_238D9EFD8, v4);
}

uint64_t sub_238D92ED4()
{
  if (qword_27DF6CD38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D9360C();
}

uint64_t sub_238D92FB8()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D94F30(v1 + 160, v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    v2 = sub_238D9DFBC();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v5 = *(MEMORY[0x277D25A48] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_238D931C0;

    return MEMORY[0x2821848C8]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v7 = sub_238D9E00C();
    __swift_project_value_buffer(v7, qword_27DF6DBC8);
    v8 = sub_238D9DFEC();
    v9 = sub_238D9E1DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238D89000, v8, v9, "Asked to deregister for managed app configuration changed notifications but not currently registered.", v10, 2u);
      MEMORY[0x23EE76F90](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_238D931C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  v6[23] = v2;

  v9 = v6[20];
  if (v2)
  {
    v10 = sub_238D9344C;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v10 = sub_238D93300;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D93300()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v6 = sub_238D9E2EC();
  v7 = sub_238D9E02C();

  [v5 removeObserver:v6 name:v7 object:0];

  swift_unknownObjectRelease();
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  swift_beginAccess();
  sub_238D95094(v0 + 80, v4 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238D9344C()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine configuration change notification name. Unable to deregister from notifications that the configuration has changed Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[21];

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_238D9360C()
{
  *(v1 + 312) = v0;
  v2 = swift_task_alloc();
  *(v1 + 320) = v2;
  *v2 = v1;
  v2[1] = sub_238D9369C;

  return sub_238D922D8();
}

uint64_t sub_238D9369C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v5 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = a2;

  return MEMORY[0x2822009F8](sub_238D937B4, v5, 0);
}

uint64_t sub_238D937B4()
{
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_238D9E00C();
  *(v0 + 344) = __swift_project_value_buffer(v2, qword_27DF6DBC8);

  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1CC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*(v6 + 152) + 16);

    _os_log_impl(&dword_238D89000, v3, v4, "Attempting to notify %ld managed app configuration AsyncSequences of new state.", v7, 0xCu);
    MEMORY[0x23EE76F90](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 312);
  }

  v9 = *(v0 + 312);
  swift_beginAccess();
  v10 = *(v9 + 152);
  *(v0 + 352) = v10;
  v11 = *(v10 + 16);
  *(v0 + 360) = v11;
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    *(v0 + 376) = MEMORY[0x277D84F90];
    *(v0 + 384) = v12;
    *(v0 + 368) = 0;
    v13 = *(v10 + 16);

    if (v13)
    {
      sub_238D955B8(result + 32, v0 + 56);
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
      v17 = *(v16 + 8);
      v28 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 392) = v19;
      *v19 = v0;
      v19[1] = sub_238D93B74;
      v20 = *(v0 + 328);
      v21 = *(v0 + 336);

      return v28(v0 + 96, v20, v21, v15, v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = *(v0 + 312);
    *(v22 + 152) = MEMORY[0x277D84F90];

    sub_238D94F30(v0 + 16, v0 + 176, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D8FD00(v0 + 176);
    if (*(*(v22 + 152) + 16))
    {
      v24 = *(v0 + 328);
      v23 = *(v0 + 336);
      sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v24, v23);
      v25 = *(v0 + 8);

      return v25();
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 400) = v26;
      *v26 = v0;
      v26[1] = sub_238D9417C;
      v27 = *(v0 + 312);

      return sub_238D92F98();
    }
  }

  return result;
}

uint64_t sub_238D93B74(char a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_238D93C8C, v3, 0);
}

uint64_t sub_238D93C8C()
{
  sub_238D94F30(v0 + 96, v0 + 136, &qword_27DF6CE38, &qword_238D9EFB8);
  if (*(v0 + 160))
  {
    sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D94F18((v0 + 136), v0 + 16);
  }

  else
  {
    sub_238D8FB34(v0 + 136, &qword_27DF6CE38, &qword_238D9EFB8);
  }

  if (*(v0 + 408) == 1)
  {
    v1 = *(v0 + 384);
    sub_238D955B8(v0 + 56, v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 304) = v1;
    v3 = *(v0 + 384);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_238D9D83C(0, v3[2] + 1, 1, *(v0 + 384));
      *(v0 + 304) = v3;
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_238D9D83C((v4 > 1), v5 + 1, 1, v3);
      *(v0 + 304) = v3;
    }

    sub_238D8FB34(v0 + 96, &qword_27DF6CE38, &qword_238D9EFB8);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v6);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    (*(v9 + 16))(v11, v8, v6);
    sub_238D94DCC(v5, v11, (v0 + 304), v6, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));

    v12 = v3;
  }

  else
  {
    v13 = *(v0 + 344);
    v14 = sub_238D9DFEC();
    v15 = sub_238D9E1DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238D89000, v14, v15, "Dropping terminated managed app configuration AsyncSequence from coordinator.", v16, 2u);
      MEMORY[0x23EE76F90](v16, -1, -1);
    }

    sub_238D8FB34(v0 + 96, &qword_27DF6CE38, &qword_238D9EFB8);
    v3 = *(v0 + 376);
    v12 = *(v0 + 384);
  }

  v17 = *(v0 + 360);
  v18 = *(v0 + 368) + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (v18 == v17)
  {
    v20 = *(v0 + 352);
    v21 = *(v0 + 312);

    v22 = *(v21 + 152);
    v23 = *(v0 + 312);
    *(v23 + 152) = v3;

    sub_238D94F30(v0 + 16, v0 + 176, &qword_27DF6CE38, &qword_238D9EFB8);
    sub_238D8FD00(v0 + 176);
    if (*(*(v23 + 152) + 16))
    {
      v24 = *(v0 + 328);
      v25 = *(v0 + 336);
      sub_238D8FB34(v0 + 16, &qword_27DF6CE38, &qword_238D9EFB8);
      sub_238D947BC(v24, v25);
      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v36 = swift_task_alloc();
      *(v0 + 400) = v36;
      *v36 = v0;
      v36[1] = sub_238D9417C;
      v37 = *(v0 + 312);

      return sub_238D92F98();
    }
  }

  else
  {
    v27 = *(v0 + 368) + 1;
    *(v0 + 376) = v3;
    *(v0 + 384) = v12;
    *(v0 + 368) = v27;
    v28 = *(v0 + 352);
    if (v27 >= *(v28 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_238D955B8(v28 + 40 * v27 + 32, v0 + 56);
      v29 = *(v0 + 80);
      v30 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
      v31 = *(v30 + 8);
      v38 = (v31 + *v31);
      v32 = v31[1];
      v33 = swift_task_alloc();
      *(v0 + 392) = v33;
      *v33 = v0;
      v33[1] = sub_238D93B74;
      v34 = *(v0 + 328);
      v35 = *(v0 + 336);

      return v38(v0 + 96, v34, v35, v29, v30);
    }
  }

  return result;
}

uint64_t sub_238D9417C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238D9428C, v2, 0);
}

uint64_t sub_238D9428C()
{
  sub_238D947BC(v0[41], v0[42]);
  sub_238D8FB34((v0 + 2), &qword_27DF6CE38, &qword_238D9EFB8);
  v1 = v0[1];

  return v1();
}

uint64_t sub_238D94304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238D94328, v3, 0);
}

uint64_t sub_238D94328()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A20] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_238D943EC;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x282184880](v8, v6, v7);
}

uint64_t sub_238D943EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_238D94578;
  }

  else
  {
    v6 = sub_238D94518;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238D94518()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238D94578()
{
  if (qword_27DF6CD48 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBC8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to report configuration error state. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[6];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_238D94730()
{
  sub_238D8FB34(v0 + 112, &qword_27DF6CE38, &qword_238D9EFB8);
  v1 = *(v0 + 152);

  sub_238D8FB34(v0 + 160, &qword_27DF6CE10, &unk_238D9EFC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_238D947BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238D947D0(a1, a2);
  }

  return a1;
}

uint64_t sub_238D947D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_238D94824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238D948F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_238D95670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_238D948F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_238D949FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_238D9E26C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_238D949FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238D94A48(a1, a2);
  sub_238D94B78(&unk_284BA6948);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238D94A48(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_238D94C64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_238D9E26C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_238D9E06C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238D94C64(v10, 0);
        result = sub_238D9E21C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_238D94B78(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_238D94CD8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_238D94C64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE50, &qword_238D9EFF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238D94CD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE50, &qword_238D9EFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_238D94DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_238D94F18(&v12, v10 + 40 * a1 + 32);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238D94F18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238D94F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D94FB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D94FE8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238D8D614;

  return sub_238D92EB8();
}

uint64_t sub_238D95094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_238D950FC(uint64_t a1)
{
  sub_238D94F30(a1, &v28, &qword_27DF6CE38, &qword_238D9EFB8);
  if (v29)
  {
    sub_238D94F18(&v28, v31);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v1 = sub_238D9E00C();
    __swift_project_value_buffer(v1, qword_27DF6DBC8);
    sub_238D955B8(v31, &v28);
    sub_238D955B8(v31, v25);
    v2 = sub_238D9DFEC();
    v3 = sub_238D9E1EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315394;
      v6 = v29;
      v7 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      (*(v7 + 32))(&v23, v6, v7);
      sub_238D9561C();
      v8 = sub_238D9E07C();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      v11 = sub_238D94824(v8, v10, &v24);

      *(v4 + 4) = v11;
      *(v4 + 12) = 2080;
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v14 = (*(v13 + 56))(v12, v13);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = sub_238D94824(v14, v16, &v24);

      *(v4 + 14) = v17;
      _os_log_impl(&dword_238D89000, v2, v3, "Managed app configuration decoding failed with error code 0x%s, message %s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE76F90](v5, -1, -1);
      MEMORY[0x23EE76F90](v4, -1, -1);

      v18 = v31;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      v18 = v25;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_238D8FB34(&v28, &qword_27DF6CE38, &qword_238D9EFB8);
    if (qword_27DF6CD48 != -1)
    {
      swift_once();
    }

    v19 = sub_238D9E00C();
    __swift_project_value_buffer(v19, qword_27DF6DBC8);
    v20 = sub_238D9DFEC();
    v21 = sub_238D9E1DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_238D89000, v20, v21, "Managed app configuration decoded successfully.", v22, 2u);
      MEMORY[0x23EE76F90](v22, -1, -1);
    }
  }
}

unint64_t sub_238D95454()
{
  result = qword_27DF6CE40;
  if (!qword_27DF6CE40)
  {
    type metadata accessor for ManagedAppConfigurationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE40);
  }

  return result;
}

uint64_t sub_238D954A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_238D954F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238D8C4A4;

  return sub_238D8FEE8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_238D955B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_238D9561C()
{
  result = qword_27DF6CE48;
  if (!qword_27DF6CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE48);
  }

  return result;
}

uint64_t sub_238D95670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238D956E8()
{
  sub_238D947D0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238D95720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238D8C4A4;

  return sub_238D9144C(a1, v7, v6, v4, v5);
}

uint64_t sub_238D957E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238D957F4(a1, a2);
  }

  return a1;
}

uint64_t sub_238D957F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238D95848()
{
  result = qword_27DF6CE68;
  if (!qword_27DF6CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6CE68);
  }

  return result;
}

uint64_t sub_238D958A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_238D9E20C();
  result = sub_238D9E15C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238D95934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_238D9E20C();
  v6 = sub_238D9E15C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_238D959C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  sub_238D9E20C();
  v7 = sub_238D9E15C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

double sub_238D95A74()
{
  type metadata accessor for ManagedAppIdentityCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DBC0 = v0;
  return result;
}

uint64_t sub_238D95AC8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D95C70, v1, 0);
}

uint64_t sub_238D95C70()
{
  v1 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v23, v1, v2);
  v9 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_238D9D984(0, v9[2] + 1, 1, v9);
    *(v7 + 112) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_238D9D984(v11 > 1, v12 + 1, 1, v9);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v9[2] = v12 + 1;
  (*(v14 + 32))(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
  *(v7 + 112) = v9;
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v16 = sub_238D9E00C();
  __swift_project_value_buffer(v16, qword_27DF6DBF8);
  v17 = sub_238D9DFEC();
  v18 = sub_238D9E1CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_238D89000, v17, v18, "Notifying new managed app identities AsyncSequence of initial state.", v19, 2u);
    MEMORY[0x23EE76F90](v19, -1, -1);
  }

  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_238D95F1C;
  v21 = v0[4];

  return sub_238D96108();
}

uint64_t sub_238D95F1C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D96034, v3, 0);
}

uint64_t sub_238D96034()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v4 + 8))(v3, v5);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_238D8DCB8;
  v7 = v0[4];

  return sub_238D964C4();
}

uint64_t sub_238D96128()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A10] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238D961E0;

  return MEMORY[0x282184870]();
}

uint64_t sub_238D961E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = v1;

  v7 = v4[2];
  if (v1)
  {
    v8 = sub_238D9631C;
  }

  else
  {
    v4[6] = a1;
    v8 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D9631C()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app identity identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[3];

  MEMORY[0x23EE76E80](v9);
  v11 = v0[1];
  v12 = MEMORY[0x277D84F90];

  return v11(v12);
}

uint64_t sub_238D964E4()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, (v0 + 8));
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD58 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DBF8);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app identity changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_238D9DFBC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v12 = *(MEMORY[0x277D25A30] + 4);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_238D966D0;

    return MEMORY[0x2821848B0]();
  }
}

uint64_t sub_238D966D0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 192);
  v8 = *v3;
  v6[25] = v2;

  v9 = v6[22];
  if (v2)
  {
    v10 = sub_238D969A0;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v10 = sub_238D96810;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D96810()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_238D9E02C();

  v0[6] = sub_238D96B58;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_1;
  v7 = _Block_copy(v0 + 2);
  v8 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v0[15] = swift_getObjectType();

  v0[12] = v8;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v4 + 120);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_238D969A0()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[23];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app identity changed notification name. Unable to register for notifications. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[23];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_238D96B58()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6 - v1;
  v3 = sub_238D9E10C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_238D9B2E0(0, 0, v2, &unk_238D9F110, v4);
}

uint64_t sub_238D96C64()
{
  if (qword_27DF6CD40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D97240();
}

uint64_t sub_238D96D48()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D8FAB4(v1 + 120, v0 + 48);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    v2 = sub_238D9DFBC();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v5 = *(MEMORY[0x277D25A30] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_238D96F40;

    return MEMORY[0x2821848B0]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD58 != -1)
    {
      swift_once();
    }

    v7 = sub_238D9E00C();
    __swift_project_value_buffer(v7, qword_27DF6DBF8);
    v8 = sub_238D9DFEC();
    v9 = sub_238D9E1DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238D89000, v8, v9, "Asked to deregister for managed app identity changed notifications but not currently registered.", v10, 2u);
      MEMORY[0x23EE76F90](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_238D96F40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  v6[23] = v2;

  v9 = v6[20];
  if (v2)
  {
    v10 = sub_238D97080;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v10 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D97080()
{
  if (qword_27DF6CD58 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DBF8);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine identity change notification name. Unable to deregister from notifications that identities have changed Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[21];

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_238D97240()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_238D973AC;

  return sub_238D96108();
}

uint64_t sub_238D973AC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D974C4, v3, 0);
}

uint64_t sub_238D974C4()
{
  if (qword_27DF6CD58 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = v0[3];
    v2 = sub_238D9E00C();
    __swift_project_value_buffer(v2, qword_27DF6DBF8);

    v3 = sub_238D9DFEC();
    v4 = sub_238D9E1CC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[3];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(*(v6 + 112) + 16);

      _os_log_impl(&dword_238D89000, v3, v4, "Attempting to notify %ld managed app identities AsyncSequences of new state.", v7, 0xCu);
      MEMORY[0x23EE76F90](v7, -1, -1);
    }

    else
    {
      v8 = v0[3];
    }

    v9 = v0[3];
    v10 = *(v9 + 112);
    v54 = *(v10 + 16);
    if (!v54)
    {
      break;
    }

    v44 = v0[3];
    v11 = v0[8];
    v12 = v0[5];
    v47 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v51 = v10 + v47;
    v50 = (v12 + 88);
    v49 = *MEMORY[0x277D85748];
    v48 = (v11 + 8);
    v52 = v11;
    v45 = (v12 + 8);
    v46 = (v11 + 32);

    v14 = 0;
    v55 = MEMORY[0x277D84F90];
    v53 = v13;
    while (v14 < *(v13 + 16))
    {
      v15 = v0[12];
      v16 = v0[6];
      v17 = v0[4];
      v18 = *(v52 + 72);
      v19 = *(v52 + 16);
      v19(v0[10], v51 + v18 * v14, v0[7]);
      v0[2] = v15;

      sub_238D9E14C();
      if ((*v50)(v16, v17) == v49)
      {
        v20 = sub_238D9DFEC();
        v21 = sub_238D9E1DC();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v0[10];
        v24 = v0[7];
        if (v22)
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_238D89000, v20, v21, "Dropping terminated managed app identities AsyncSequence from coordinator.", v25, 2u);
          MEMORY[0x23EE76F90](v25, -1, -1);
        }

        (*v48)(v23, v24);
      }

      else
      {
        v19(v0[9], v0[10], v0[7]);
        v26 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_238D9D984(0, v55[2] + 1, 1, v55);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_238D9D984(v27 > 1, v28 + 1, 1, v26);
        }

        v29 = v0[9];
        v31 = v0[6];
        v30 = v0[7];
        v32 = v0[4];
        (*v48)(v0[10], v30);
        v26[2] = v28 + 1;
        v55 = v26;
        (*v46)(v26 + v47 + v28 * v18, v29, v30);
        (*v45)(v31, v32);
      }

      v13 = v53;
      if (v54 == ++v14)
      {
        v33 = v0[12];

        v9 = v44;
        v34 = v55;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v35 = v0[12];
  v34 = MEMORY[0x277D84F90];
LABEL_20:

  v36 = *(v9 + 112);
  *(v9 + 112) = v34;

  if (*(*(v9 + 112) + 16))
  {
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[6];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v42 = swift_task_alloc();
    v0[13] = v42;
    *v42 = v0;
    v42[1] = sub_238D8F8AC;
    v43 = v0[3];

    return sub_238D96D28();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D979E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D97A1C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238D8C4A4;

  return sub_238D96C48();
}

uint64_t sub_238D97AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_238D97AF0, 0, 0);
}

uint64_t sub_238D97AF0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_238D9E20C();
  v6 = *(MEMORY[0x277D859B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_238D97BFC;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x282200740](v9);
}

uint64_t sub_238D97BFC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238D97D38, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_238D97D38()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_238D97D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v6 = sub_238D9DECC();
  sub_238D97E44(v4 + *(v6 + 28), a1, &v8);
  os_unfair_lock_unlock(v4);
  return v8;
}

uint64_t sub_238D97E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v15 - v9;
  (*(v7 + 16))(v15 - v9, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v11 = sub_238D9E0DC();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 3, v11);
  if (result > 1)
  {
    if (result != 2)
    {
      goto LABEL_8;
    }

    v14 = 0;
LABEL_7:
    *a3 = v14;
    return result;
  }

  if (result == 1)
  {
    (*(v7 + 8))(a1, v6);
    (*(v12 + 16))(a1, a2, v11);
    result = (*(v12 + 56))(a1, 0, 3, v11);
    v14 = 1;
    goto LABEL_7;
  }

  (*(v7 + 8))(v10, v6);
LABEL_8:
  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D98084()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 88));
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v4 = sub_238D9DECC();
  sub_238D98128(v2 + *(v4 + 28));

  os_unfair_lock_unlock(v2);
}

uint64_t sub_238D98128(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v2 = sub_238D9E0DC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v15 - v5;
  v7 = type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7);
  v12 = (*(v3 + 48))(v11, 3, v2);
  if (v12 <= 1)
  {
    if (!v12)
    {
      (*(v8 + 8))(a1, v7);
      (*(v3 + 32))(v6, v11, v2);
      (*(v3 + 56))(a1, 2, 3, v2);
      sub_238D9E0EC();
      sub_238D9AEF8();
      v13 = swift_allocError();
      sub_238D9E01C();
      v15[1] = v13;
      sub_238D9E0BC();
      return (*(v3 + 8))(v6, v2);
    }

    goto LABEL_5;
  }

  if (v12 == 3)
  {
LABEL_5:
    (*(v8 + 8))(a1, v7);
    return (*(v3 + 56))(a1, 2, 3, v2);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D98410(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v6 = sub_238D9DECC();
  sub_238D984BC(v4 + *(v6 + 28), a1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_238D984BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v4 = sub_238D9E0DC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v15 - v7;
  v9 = type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, a1, v9);
  result = (*(v5 + 48))(v13, 3, v4);
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    (*(v10 + 8))(a1, v9);
    (*(v5 + 32))(v8, v13, v4);
    (*(v5 + 56))(a1, 3, 3, v4);
    v15[1] = a2;
    MEMORY[0x23EE76E90](a2);
    sub_238D9E0BC();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

void sub_238D9874C(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v6 = sub_238D9DECC();
  sub_238D987F8(v4 + *(v6 + 28), a1, v5);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_238D987F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *(a3 - 8);
  v20 = a2;
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v8 = sub_238D9E0DC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v19 - v11;
  v13 = type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v19 - v16;
  (*(v14 + 16))(&v19 - v16, a1, v13);
  result = (*(v9 + 48))(v17, 3, v8);
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    (*(v14 + 8))(a1, v13);
    (*(v9 + 32))(v12, v17, v8);
    (*(v9 + 56))(a1, 3, 3, v8);
    (*(v19 + 16))(v7, v20, a3);
    sub_238D9E0CC();
    return (*(v9 + 8))(v12, v8);
  }

  result = sub_238D9E27C();
  __break(1u);
  return result;
}

uint64_t sub_238D98B04()
{
  v1 = v0 + *(*v0 + 88);
  v2 = *(*v0 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v3 = *(sub_238D9DECC() + 28);
  v4 = *(sub_238D9DEDC() + 16);
  sub_238D9E1FC();
  return v0;
}

uint64_t sub_238D98B94()
{
  v0 = sub_238D98B04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_238D98BE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_238D98C1C();
}

uint64_t *sub_238D98C1C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for ConcurrencyUtils.TaskState.Value();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = v0 + *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v9 = sub_238D9E0DC();
  (*(*(v9 - 8) + 56))(v7, 1, 3, v9);
  *v8 = 0;
  v10 = *(sub_238D9DECC() + 28);
  v11 = sub_238D9DEDC();
  bzero(&v8[v10], *(*(v11 - 8) + 64));
  (*(v4 + 32))(&v8[v10], v7, v3);
  return v0;
}

uint64_t sub_238D98DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238D98DD8, 0, 0);
}

uint64_t sub_238D98DD8()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for ConcurrencyUtils.TaskState();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v12 = *(v0 + 24);
  v5 = sub_238D98C1C();
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v12;
  v7 = *(MEMORY[0x277D85A10] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_238D98F00;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x282200830](v10, &unk_238D9F1E8, v6, sub_238D9AEF4, v5, 0, 0, v9);
}

uint64_t sub_238D98F00()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_238D99080;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_238D9901C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238D9901C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238D99080()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_238D990EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x2822009F8](sub_238D99138, 0, 0);
}

uint64_t sub_238D99138()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = sub_238D99234;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001FLL, 0x8000000238DA0440, sub_238D9AF50, v3, v6);
}

uint64_t sub_238D99234()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238D99370, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_238D99370()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_238D993D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  result = sub_238D97D9C(a1);
  if (result)
  {
    v12 = sub_238D9E10C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a2;

    sub_238D9B2E0(0, 0, v10, &unk_238D9F1F8, v13);
  }

  return result;
}

uint64_t sub_238D9950C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_238D99678;

  return v15(v11);
}

uint64_t sub_238D99678()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_238D9981C;
  }

  else
  {
    v3 = sub_238D9978C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238D9978C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_238D9874C(v1);
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238D9981C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_238D98410(v1);
  MEMORY[0x23EE76E80](v1);
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_238D99894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_238D9E20C();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D999B4, 0, 0);
}

uint64_t sub_238D999B4()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];
  v16 = v0[3];
  v17 = v0[6];
  v6 = sub_238D9E10C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v2;

  v0[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v9 = sub_238D9E1BC();
  sub_238D9A2C0(v1, &unk_238D9F1C0, v8, v9);
  sub_238D9AC1C(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v17;
  sub_238D9A2C0(v1, &unk_238D9F1D0, v10, v9);
  sub_238D9AC1C(v1);
  v11 = *(MEMORY[0x277D85818] + 4);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_238D99BCC;
  v13 = v0[12];
  v14 = v0[3];

  return MEMORY[0x2822004D0](v13, 0, 0, v9);
}

uint64_t sub_238D99BCC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_238D99F9C;
  }

  else
  {
    v3 = sub_238D99CE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238D99CE0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 104);
  if (v5 == 1)
  {
    v7 = *(v3 + 56);
    v7(*(v0 + 104), 1, 1, v2);
    if (v4(v1, 1, v2) != 1)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 104), v1, v2);
    v7 = *(v3 + 56);
    v7(v6, 0, 1, v2);
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = **(v0 + 24);
  sub_238D9E1AC();
  (*(v11 + 32))(v10, v9, v12);
  v15 = v4(v10, 1, v13);
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = *(v0 + 16);
  if (v15 == 1)
  {
    v7(*(v0 + 16), 1, 1, *(v0 + 64));
    if (v4(v16, 1, v17) != 1)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 16), *(v0 + 88), *(v0 + 64));
    v7(v18, 0, 1, v17);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_238D99F9C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_238D9A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_238D9A0E0;

  return sub_238D98DB4(a1, a4, a5, a7);
}

uint64_t sub_238D9A0E0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_238D9A214, 0, 0);
  }
}

uint64_t sub_238D9A214()
{
  v1 = v0[5];
  sub_238D9E17C();
  if (v1)
  {
    (*(*(v0[3] - 8) + 8))(v0[2]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_238D9A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v22 - v10;
  sub_238D9ADD0(a1, v22 - v10);
  v12 = sub_238D9E10C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238D9AC1C(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_238D9E0AC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_238D9E0FC();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = *(a4 + 16);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_238D9A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(MEMORY[0x277D857E8] + 4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_238D9A52C;

  return MEMORY[0x282200480](a4);
}

uint64_t sub_238D9A52C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_238D9A65C, 0, 0);
  }
}

uint64_t sub_238D9A65C()
{
  sub_238D9AD7C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238D9A71C(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  result = sub_238D9DECC();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238D9A7EC(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  type metadata accessor for ConcurrencyUtils.TaskState.Value();
  return sub_238D9DECC();
}

uint64_t sub_238D9A840(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v2 = sub_238D9E0DC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_238D9A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v6 = sub_238D9E0DC();
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 4)
  {
    return v7 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238D9A984(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF6CE58, &qword_238D9F010);
  v8 = sub_238D9E0DC();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v6, a3, v8);
}

uint64_t sub_238D9AA30(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_238D8C4A4;

  return sub_238D99894(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_238D9AB08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238D9AB48(uint64_t a1)
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
  v10[1] = sub_238D8D614;

  return sub_238D9A024(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_238D9AC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238D9AC84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238D9ACBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238D8D614;

  return sub_238D9A494(a1, v4, v5, v6);
}

unint64_t sub_238D9AD7C()
{
  result = qword_27DF6D000;
  if (!qword_27DF6D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6D000);
  }

  return result;
}

uint64_t sub_238D9ADD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238D9AE40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238D8D614;

  return sub_238D990EC(a1, v4, v5, v6);
}

unint64_t sub_238D9AEF8()
{
  result = qword_27DF6D008;
  if (!qword_27DF6D008)
  {
    sub_238D9E0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6D008);
  }

  return result;
}

uint64_t sub_238D9AF5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238D9AFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238D8C4A4;

  return sub_238D9950C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238D9B07C()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBC8);
  __swift_project_value_buffer(v0, qword_27DF6DBC8);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B0FC()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBE0);
  __swift_project_value_buffer(v0, qword_27DF6DBE0);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B17C()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DBF8);
  __swift_project_value_buffer(v0, qword_27DF6DBF8);
  return sub_238D9DFFC();
}

uint64_t sub_238D9B1FC()
{
  v0 = sub_238D9E00C();
  __swift_allocate_value_buffer(v0, qword_27DF6DC10);
  __swift_project_value_buffer(v0, qword_27DF6DC10);
  return sub_238D9DFFC();
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

uint64_t sub_238D9B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_238D94F30(a3, v26 - v10, &qword_27DF6CE20, &qword_238D9F100);
  v12 = sub_238D9E10C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238D8FB34(v11, &qword_27DF6CE20, &qword_238D9F100);
  }

  else
  {
    sub_238D9E0FC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_238D9E0AC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_238D9E04C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_238D8FB34(a3, &qword_27DF6CE20, &qword_238D9F100);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238D8FB34(a3, &qword_27DF6CE20, &qword_238D9F100);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_238D9B5E0(uint64_t a1)
{
  v2 = sub_238D9DE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_238D9DE1C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

double sub_238D9B6D4()
{
  type metadata accessor for ManagedAppPasswordCoordinator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  qword_27DF6DC28 = v0;
  return result;
}

uint64_t sub_238D9B728(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE28, &unk_238D9EEC0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238D9B8D0, v1, 0);
}

uint64_t sub_238D9B8D0()
{
  v1 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE30, &unk_238D9F120);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_238D9E11C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v23, v1, v2);
  v9 = *(v7 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_238D9D984(0, v9[2] + 1, 1, v9);
    *(v7 + 112) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_238D9D984(v11 > 1, v12 + 1, 1, v9);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v9[2] = v12 + 1;
  (*(v14 + 32))(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
  *(v7 + 112) = v9;
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v16 = sub_238D9E00C();
  __swift_project_value_buffer(v16, qword_27DF6DC10);
  v17 = sub_238D9DFEC();
  v18 = sub_238D9E1CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_238D89000, v17, v18, "Notifying new managed app passwords AsyncSequence of initial state.", v19, 2u);
    MEMORY[0x23EE76F90](v19, -1, -1);
  }

  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_238D9BB7C;
  v21 = v0[4];

  return sub_238D9BD68();
}

uint64_t sub_238D9BB7C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_238D9BC94, v3, 0);
}

uint64_t sub_238D9BC94()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[2] = v0[16];
  sub_238D9E14C();
  (*(v4 + 8))(v3, v5);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_238D8DCB8;
  v7 = v0[4];

  return sub_238D9C124();
}

uint64_t sub_238D9BD88()
{
  v1 = sub_238D9DFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_238D9DFAC();
  v4 = *(MEMORY[0x277D25A18] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238D9BE40;

  return MEMORY[0x282184878]();
}

uint64_t sub_238D9BE40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = v1;

  v7 = v4[2];
  if (v1)
  {
    v8 = sub_238D9BF7C;
  }

  else
  {
    v4[6] = a1;
    v8 = sub_238D8E080;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238D9BF7C()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x23EE76E90](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to fetch managed app password identifiers. Returning empty array. Error: %@", v6, 0xCu);
    sub_238D8FB34(v7, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v7, -1, -1);
    MEMORY[0x23EE76F90](v6, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[3];

  MEMORY[0x23EE76E80](v9);
  v11 = v0[1];
  v12 = MEMORY[0x277D84F90];

  return v11(v12);
}

uint64_t sub_238D9C144()
{
  v1 = v0[22];
  swift_beginAccess();
  sub_238D94F30(v1 + 120, (v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  v2 = v0[11];
  sub_238D8FB34((v0 + 8), &qword_27DF6CE10, &unk_238D9EFC0);
  if (v2)
  {
    if (qword_27DF6CD60 != -1)
    {
      swift_once();
    }

    v3 = sub_238D9E00C();
    __swift_project_value_buffer(v3, qword_27DF6DC10);
    v4 = sub_238D9DFEC();
    v5 = sub_238D9E1DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238D89000, v4, v5, "Asked to register for managed app password changed notifications but already registered, so ignoring.", v6, 2u);
      MEMORY[0x23EE76F90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_238D9DFBC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[23] = sub_238D9DFAC();
    v12 = *(MEMORY[0x277D25A38] + 4);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_238D9C340;

    return MEMORY[0x2821848B8]();
  }
}

uint64_t sub_238D9C340(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 192);
  v8 = *v3;
  v6[25] = v2;

  v9 = v6[22];
  if (v2)
  {
    v10 = sub_238D9C610;
  }

  else
  {
    v6[26] = a2;
    v6[27] = a1;
    v10 = sub_238D9C480;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D9C480()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_238D9E02C();

  v0[6] = sub_238D9C7C8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238D9B5E0;
  v0[5] = &block_descriptor_2;
  v7 = _Block_copy(v0 + 2);
  v8 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v0[15] = swift_getObjectType();

  v0[12] = v8;
  swift_beginAccess();
  sub_238D8FB94((v0 + 12), v4 + 120);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_238D9C610()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[23];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine managed app password changed notification name. Unable to register for notifications. Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[23];

    MEMORY[0x23EE76E80](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_238D9C7C8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE20, &qword_238D9F100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6 - v1;
  v3 = sub_238D9E10C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_238D9B2E0(0, 0, v2, &unk_238D9F2E8, v4);
}

uint64_t sub_238D9C8D4()
{
  if (qword_27DF6CD68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238D8C4A4;

  return sub_238D9CEC0();
}

uint64_t sub_238D9C9B8()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_238D94F30(v1 + 120, v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
  if (*(v0 + 72))
  {
    sub_238D8FB24((v0 + 48), (v0 + 16));
    v2 = sub_238D9DFBC();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    *(v0 + 168) = sub_238D9DFAC();
    v5 = *(MEMORY[0x277D25A38] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_238D9CBC0;

    return MEMORY[0x2821848B8]();
  }

  else
  {
    sub_238D8FB34(v0 + 48, &qword_27DF6CE10, &unk_238D9EFC0);
    if (qword_27DF6CD60 != -1)
    {
      swift_once();
    }

    v7 = sub_238D9E00C();
    __swift_project_value_buffer(v7, qword_27DF6DC10);
    v8 = sub_238D9DFEC();
    v9 = sub_238D9E1DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238D89000, v8, v9, "Asked to deregister for managed app password changed notifications but not currently registered.", v10, 2u);
      MEMORY[0x23EE76F90](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_238D9CBC0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  v6[23] = v2;

  v9 = v6[20];
  if (v2)
  {
    v10 = sub_238D9CD00;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;
    v10 = sub_238D8EE48;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_238D9CD00()
{
  if (qword_27DF6CD60 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_238D9E00C();
  __swift_project_value_buffer(v2, qword_27DF6DC10);
  MEMORY[0x23EE76E90](v1);
  v3 = sub_238D9DFEC();
  v4 = sub_238D9E1EC();
  MEMORY[0x23EE76E80](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x23EE76E90](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_238D89000, v3, v4, "Failed to determine password change notification name. Unable to deregister from notifications that passwords have changed Error: %@", v8, 0xCu);
    sub_238D8FB34(v9, &qword_27DF6CE18, &unk_238D9EEA0);
    MEMORY[0x23EE76F90](v9, -1, -1);
    MEMORY[0x23EE76F90](v8, -1, -1);

    MEMORY[0x23EE76E80](v6);
  }

  else
  {
    v11 = v0[21];

    MEMORY[0x23EE76E80](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_238D9CEC0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE00, &unk_238D9F0F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_238D9D02C;

  return sub_238D9BD68();
}

uint64_t sub_238D9D02C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_238D9D144, v3, 0);
}

uint64_t sub_238D9D144()
{
  if (qword_27DF6CD60 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = v0[3];
    v2 = sub_238D9E00C();
    __swift_project_value_buffer(v2, qword_27DF6DC10);

    v3 = sub_238D9DFEC();
    v4 = sub_238D9E1CC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[3];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(*(v6 + 112) + 16);

      _os_log_impl(&dword_238D89000, v3, v4, "Attempting to notify %ld managed app passwords AsyncSequences of new state.", v7, 0xCu);
      MEMORY[0x23EE76F90](v7, -1, -1);
    }

    else
    {
      v8 = v0[3];
    }

    v9 = v0[3];
    v10 = *(v9 + 112);
    v54 = *(v10 + 16);
    if (!v54)
    {
      break;
    }

    v44 = v0[3];
    v11 = v0[8];
    v12 = v0[5];
    v47 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v51 = v10 + v47;
    v50 = (v12 + 88);
    v49 = *MEMORY[0x277D85748];
    v48 = (v11 + 8);
    v52 = v11;
    v45 = (v12 + 8);
    v46 = (v11 + 32);

    v14 = 0;
    v55 = MEMORY[0x277D84F90];
    v53 = v13;
    while (v14 < *(v13 + 16))
    {
      v15 = v0[12];
      v16 = v0[6];
      v17 = v0[4];
      v18 = *(v52 + 72);
      v19 = *(v52 + 16);
      v19(v0[10], v51 + v18 * v14, v0[7]);
      v0[2] = v15;

      sub_238D9E14C();
      if ((*v50)(v16, v17) == v49)
      {
        v20 = sub_238D9DFEC();
        v21 = sub_238D9E1DC();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v0[10];
        v24 = v0[7];
        if (v22)
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_238D89000, v20, v21, "Dropping terminated managed app passwords AsyncSequence from coordinator.", v25, 2u);
          MEMORY[0x23EE76F90](v25, -1, -1);
        }

        (*v48)(v23, v24);
      }

      else
      {
        v19(v0[9], v0[10], v0[7]);
        v26 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_238D9D984(0, v55[2] + 1, 1, v55);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_238D9D984(v27 > 1, v28 + 1, 1, v26);
        }

        v29 = v0[9];
        v31 = v0[6];
        v30 = v0[7];
        v32 = v0[4];
        (*v48)(v0[10], v30);
        v26[2] = v28 + 1;
        v55 = v26;
        (*v46)(v26 + v47 + v28 * v18, v29, v30);
        (*v45)(v31, v32);
      }

      v13 = v53;
      if (v54 == ++v14)
      {
        v33 = v0[12];

        v9 = v44;
        v34 = v55;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v35 = v0[12];
  v34 = MEMORY[0x277D84F90];
LABEL_20:

  v36 = *(v9 + 112);
  *(v9 + 112) = v34;

  if (*(*(v9 + 112) + 16))
  {
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[6];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v42 = swift_task_alloc();
    v0[13] = v42;
    *v42 = v0;
    v42[1] = sub_238D8F8AC;
    v43 = v0[3];

    return sub_238D9C998();
  }
}

uint64_t sub_238D9D64C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238D9D744;

  return v7(a1);
}

uint64_t sub_238D9D744()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_238D9D83C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6D018, &qword_238D9F308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6D020, &qword_238D9F310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_238D9D984(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6D010, &unk_238D9F2D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6CE08, &unk_238D9EE90) - 8);
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238D9DB8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D9DBC4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238D8C4A4;

  return sub_238D9C8B8();
}

uint64_t sub_238D9DC70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238D9DCA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238D8D614;

  return sub_238D9D64C(a1, v5);
}

uint64_t sub_238D9DD60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238D8C4A4;

  return sub_238D9D64C(a1, v5);
}