unint64_t sub_222696260()
{
  result = qword_27D013708;
  if (!qword_27D013708)
  {
    type metadata accessor for AppDistributionDeviceAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013708);
  }

  return result;
}

uint64_t sub_2226962BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_222696310(a1, a2, a3);
}

uint64_t sub_222696310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2227387CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v10 = v3 + qword_281313EB8;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v3 + qword_281313EB0;
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = v3 + qword_281313EA8;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v3 + qword_281313EC0;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  (*(v6 + 16))(v9, a3, v5);
  v14 = sub_22273852C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

  sub_22273857C();
  v15 = qword_281313EB8;
  swift_beginAccess();
  sub_222696770(v21, v14 + v15, &unk_27D013120, &unk_222741980);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
  sub_22273857C();
  v16 = qword_281313EB0;
  swift_beginAccess();
  sub_222696770(v21, v14 + v16, &qword_27D013070, &qword_222742730);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22273857C();
  v17 = qword_281313EA8;
  swift_beginAccess();
  sub_222696770(v21, v14 + v17, &qword_27D013740, &qword_222742738);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137C0, &qword_222742750);
  sub_22273857C();
  (*(v6 + 8))(a3, v5);
  v18 = qword_281313EC0;
  swift_beginAccess();
  sub_222696770(v21, v14 + v18, &unk_27D014820, &unk_222742740);
  swift_endAccess();

  return v14;
}

uint64_t sub_222696608()
{
  sub_222660468(v0 + qword_281313EB8, &unk_27D013120, &unk_222741980);
  sub_222660468(v0 + qword_281313EB0, &qword_27D013070, &qword_222742730);
  sub_222660468(v0 + qword_281313EA8, &qword_27D013740, &qword_222742738);
  return sub_222660468(v0 + qword_281313EC0, &unk_27D014820, &unk_222742740);
}

uint64_t sub_22269669C()
{
  v0 = sub_22273859C();
  v1 = qword_281313EB8;

  sub_222660468(v2 + v1, &unk_27D013120, &unk_222741980);
  sub_222660468(v0 + qword_281313EB0, &qword_27D013070, &qword_222742730);
  sub_222660468(v0 + qword_281313EA8, &qword_27D013740, &qword_222742738);
  sub_222660468(v0 + qword_281313EC0, &unk_27D014820, &unk_222742740);

  return swift_deallocClassInstance();
}

uint64_t sub_222696770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2226967D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL;
  if (v6 || (sub_222739B4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002227490C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222739B4C();

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

uint64_t sub_2226968D8(uint64_t a1)
{
  v2 = sub_22262C284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222696914(uint64_t a1)
{
  v2 = sub_22262C284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222696950(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013758, &qword_2227428E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22262C284();
  sub_222739CFC();
  v16 = 0;
  sub_222739ACC();
  if (!v4)
  {
    v15 = 1;
    sub_222739ADC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_222696AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_222739B4C() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_222696B70()
{
  v1 = *v0;
  sub_222739C5C();
  MEMORY[0x223DBEFB0](v1);
  return sub_222739C8C();
}

uint64_t sub_222696BB8()
{
  v1 = *v0;
  sub_222739C5C();
  MEMORY[0x223DBEFB0](v1);
  return sub_222739C8C();
}

uint64_t sub_222696BFC()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v1 = *(sub_2227381FC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return sub_222737F8C();
}

uint64_t sub_222696D5C()
{
  [*(v0 + 24) removeObserver_];
  ASCUnregisterForRebootstrapQANotification(*(v0 + 76));

  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return v0;
}

uint64_t sub_222696DC0()
{
  sub_222696D5C();

  return swift_deallocClassInstance();
}

uint64_t sub_222696DF4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  if (v6)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    if (v5 != a1 || v6 != a2)
    {
      v9 = a3;
      v10 = sub_222739B4C();
      a3 = v9;
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (a2)
  {
LABEL_14:
    v13 = *(v3 + 32);
    v12 = *(v3 + 40);
    swift_getObjectType();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013760, &unk_2227428F0);
    sub_22262BED4(qword_281313478, &qword_27D013760, &unk_2227428F0);
    sub_2227382EC();
  }

  if ((v7 ^ a3))
  {
    goto LABEL_14;
  }
}

uint64_t sub_222696F6C()
{
  sub_222737F8C();
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v1 = *(sub_2227381FC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();
}

id sub_2226970C0()
{
  v1 = v0;
  v2 = *(v0 + 48);
  [v2 lock];
  v3 = sub_222697664(*(v0 + 16));
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  if (v6)
  {
    if (v4)
    {
      if (*(v0 + 56) == v3 && v6 == v4)
      {
        goto LABEL_8;
      }

      v9 = v3;
      v10 = *(v1 + 56);
      v11 = v4;
      v12 = v5;
      v13 = sub_222739B4C();
      v5 = v12;
      v4 = v11;
      v14 = v13;
      v3 = v9;
      if (v14)
      {
LABEL_8:
        v15 = v5 ^ v7;
        sub_222696DF4(v3, v4, v5 & 1);
        result = [v2 unlock];
        if ((v15 & 1) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  sub_222696DF4(v3, v4, v5 & 1);
  [v2 unlock];
LABEL_12:
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v17 = sub_222738F6C();
  __swift_project_value_buffer(v17, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v18 = *(sub_2227381FC() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v21 = *(v1 + 80);
  return sub_222737F8C();
}

unint64_t sub_222697610()
{
  result = qword_27D013748;
  if (!qword_27D013748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013748);
  }

  return result;
}

uint64_t sub_222697664(void *a1)
{
  v2 = [a1 ams_localiTunesAccount];
  if (v2 && (v3 = v2, v4 = [v2 ams_storefront], v3, v4))
  {
    v5 = sub_22273919C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 ams_activeiTunesAccount];
  if (v6)
  {
    v7 = v6;
    [v6 ams_isManagedAppleID];
  }

  return v5;
}

unint64_t sub_222697744()
{
  result = qword_281312FF0;
  if (!qword_281312FF0)
  {
    sub_222737C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312FF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_222697830()
{
  result = qword_27D013768;
  if (!qword_27D013768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013768);
  }

  return result;
}

id sub_2226978A0()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v2 = *(sub_2227381FC() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v5 = *(v0 + 48);
  [v5 lock];
  if (*(v0 + 56))
  {
    v6 = *(v0 + 56);

    sub_222737CFC();

    v7 = *(v0 + 56);
  }

  *(v0 + 56) = 0;

  return [v5 unlock];
}

uint64_t sub_222697A48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_222697A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22266110C(a3, v27 - v11, &unk_27D013050, &qword_222741370);
  v13 = sub_22273946C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_222660468(v12, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2227393FC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22273921C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_222697DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22266110C(a3, v27 - v11, &unk_27D013050, &qword_222741370);
  v13 = sub_22273946C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_222660468(v12, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2227393FC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22273921C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_2226980AC(void *a1@<X8>)
{
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v2 = [objc_opt_self() ams:v3 sharedAccountStoreForClient:?];

  *a1 = v2;
}

uint64_t sub_222698158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  v3 = MEMORY[0x277D225B8];
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  sub_22273858C();
  return sub_222738C9C();
}

uint64_t sub_2226981D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B8, &qword_222742B70);

  v6 = sub_222738F2C();
  v7 = sub_22273946C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_222742B68;
  v8[5] = a1;
  v8[6] = v6;

  sub_2226D4E54(0, 0, v5, &unk_222742B78, v8);

  return v6;
}

uint64_t sub_222698338(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_222738BAC();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222698424, 0, 0);
}

uint64_t sub_222698424()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v4 = v0[7];
  sub_222738B7C();
  sub_222738B8C();
  sub_222738B9C();
  v5 = v4;
  v6 = sub_22273916C();

  v7 = sub_22273916C();

  v8 = [objc_opt_self() bagForProfile:v6 profileVersion:v7 processInfo:v5];

  v9 = v5;
  v10 = v8;
  sub_2226CBE6C(v2);
  v11 = type metadata accessor for JSJetPackFetcher(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2226CD4E4(v10, v9, v2);
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];
  v23 = v0[10];
  v18 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384FC();
  v19 = sub_22273872C();
  v20 = MEMORY[0x277D21FB0];
  v0[5] = v19;
  v0[6] = v20;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22273871C();
  sub_222737DAC();
  sub_222738E6C();

  (*(v15 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v18 = v14;

  v21 = v0[1];

  return v21();
}

uint64_t sub_222698704()
{
  v0 = sub_222738BAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v5 = v9[1];
  sub_222738B7C();
  v6 = v5;
  v7 = sub_222738AEC();

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_22269885C@<X0>(uint64_t a1@<X8>)
{
  v14[0] = a1;
  v1 = sub_222737F7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &unk_281312D90, 0x277CEE6F0);
  sub_22273858C();
  sub_222738C9C();
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_222738C9C();
  v11 = v14[3];
  (*(v2 + 104))(v5, *MEMORY[0x277D21A90], v1);
  v12 = sub_22273950C();

  (*(v2 + 8))(v5, v1);
  result = (*(v7 + 8))(v10, v6);
  *v14[0] = v12;
  return result;
}

uint64_t sub_222698A84@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  sub_22273850C();
  v11 = v18[1];
  sub_22273850C();
  v12 = v11;
  v13 = sub_222738ADC();
  sub_22273944C();
  v14 = sub_22273946C();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;
  v15[5] = v13;
  v16 = v12;
  swift_unknownObjectRetain();
  sub_222699674(0, 0, v5, &unk_222742B58, v15);

  result = (*(v7 + 8))(v10, v6);
  *a1 = v16;
  a1[1] = v13;
  return result;
}

uint64_t sub_222698CB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_222737BCC();

  result = sub_222737BBC();
  v4 = MEMORY[0x277CEC150];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void *sub_222698D28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ASDContingentPricingSubscriptionManager();
  swift_allocObject();
  result = sub_2226F8074();
  a1[3] = v2;
  a1[4] = &off_2835CAB00;
  *a1 = result;
  return result;
}

uint64_t sub_222698D88@<X0>(uint64_t *a1@<X8>)
{
  v5[3] = sub_222737ACC();
  v5[4] = MEMORY[0x277CEC108];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_222737ABC();
  v2 = sub_22273777C();
  v3 = MEMORY[0x277CEBFD8];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22273776C();
}

uint64_t sub_222698E74@<X0>(uint64_t *a1@<X1>, SEL *a2@<X2>, unint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = [objc_opt_self() *a2];
  result = sub_22262E364(0, a3, a1);
  a5[3] = result;
  a5[4] = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_222698EF0@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for MetricsTopicProvider();
  v29 = *(v1 - 8);
  v26[1] = *(v29 + 64);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - v4;
  v6 = sub_222738BBC();
  v28 = *(v6 - 8);
  v7 = v28;
  v8 = *(v28 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  sub_22273850C();
  (*(v7 + 16))(v5, v13, v6);
  v14 = sub_22273895C();
  sub_22273858C();
  sub_222738C9C();
  v15 = MetricsTopicProvider.currentMetricsTopic.getter();
  v17 = v16;
  v18 = sub_2226DD5A8(&unk_2835C7210);
  sub_22269E384(&unk_2835C7230);
  MEMORY[0x223DBDC90](v11, v15, v17, v18);
  v19 = v27;
  sub_22269E3D8(v5, v27, type metadata accessor for MetricsTopicProvider);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_22269E440(v19, v21 + v20, type metadata accessor for MetricsTopicProvider);
  v22 = sub_22273893C();

  v23 = MEMORY[0x277D221A8];
  v24 = v30;
  v30[3] = v14;
  v24[4] = v23;
  *v24 = v22;
  sub_22269E520(v5, type metadata accessor for MetricsTopicProvider);
  return (*(v28 + 8))(v13, v6);
}

uint64_t sub_2226991E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_222738C1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_22273858C();
  sub_222738C9C();
  sub_222738C0C();
  v6 = sub_222737B3C();
  v7 = MEMORY[0x277CEC130];
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_222737B2C();
}

id sub_22269930C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() daemonDefaults];
  *a1 = result;
  return result;
}

uint64_t sub_222699358@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_222737B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273858C();
  sub_222738C9C();
  result = sub_222737B4C();
  v4 = MEMORY[0x277CEC138];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void *sub_2226993FC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_22273858C();
  sub_222738C9C();
  v2 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
  swift_allocObject();
  result = sub_2226F77B8(v4);
  a1[3] = v2;
  a1[4] = &off_2835CAA40;
  *a1 = result;
  return result;
}

uint64_t sub_2226994A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_222695A54(a1);
  v9 = sub_22273946C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_22269994C(0, 0, v7, &unk_222742B40, v10);

  result = sub_22273766C();
  v12 = MEMORY[0x277CEBF58];
  a2[3] = result;
  a2[4] = v12;
  *a2 = v8;
  return result;
}

uint64_t sub_2226995E0()
{
  v1 = *(MEMORY[0x277CEBF40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_222660228;

  return MEMORY[0x28213E1C0]();
}

uint64_t sub_222699674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22266110C(a3, v24 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2227393FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_22273921C() + 32;
      sub_22262E364(0, &qword_281312C18, 0x277CEE5B8);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v22;
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

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  sub_22262E364(0, &qword_281312C18, 0x277CEE5B8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22269994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22266110C(a3, v24 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2227393FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22273921C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v22;
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

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_222699BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22266110C(a3, v24 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2227393FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22273921C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v22;
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

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_222699EB4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = type metadata accessor for JSStackManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  result = sub_2226D65D8(v6, v2);
  *a1 = result;
  return result;
}

uint64_t sub_222699F3C()
{
  type metadata accessor for JSStackManager();
  sub_22273858C();
  sub_222738C9C();
  v0 = *(*(v3[6] + 24) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
  v3[3] = sub_22273872C();
  v3[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  v1 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_22269A060@<X0>(char *a1@<X8>)
{
  v111 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013880, &qword_222742B18);
  v2 = *(v1 - 8);
  v109 = v1;
  v110 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v108 = v88 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013888, &qword_222742B20);
  v107 = *(v105 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013890, &qword_222742B28);
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v97 = v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v88 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v88 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v89 = v88 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v90 = v88 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v91 = v88 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v92 = v88 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v93 = v88 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v94 = v88 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v88 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v115 = v88 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v95 = v88 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v96 = v88 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v98 = v88 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v99 = v88 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v102 = v88 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v104 = v88 - v51;
  MEMORY[0x28223BE20](v50);
  v106 = v88 - v52;
  v113 = type metadata accessor for ObjectGraph();
  sub_22273863C();
  v53 = v12[2];
  v53(v19, v16, v11);
  v54 = v53;
  sub_22269DE08();
  sub_22273860C();
  v55 = v12 + 1;
  v56 = v12[1];
  v56(v16, v11);
  v57 = v55;
  v54(v22, v19, v11);
  sub_22269DE5C();
  sub_22273860C();
  v56(v19, v11);
  v58 = v89;
  v54(v89, v22, v11);
  sub_22269DEB0();
  sub_22273860C();
  v56(v22, v11);
  v59 = v90;
  v54(v90, v58, v11);
  sub_22269DF04();
  sub_22273860C();
  v56(v58, v11);
  v60 = v91;
  v54(v91, v59, v11);
  sub_22269DF58();
  sub_22273860C();
  v56(v59, v11);
  v61 = v57;
  v62 = v92;
  v54(v92, v60, v11);
  sub_22266BE40();
  sub_22273860C();
  v56(v60, v11);
  v63 = v93;
  v54(v93, v62, v11);
  sub_22269DFAC();
  sub_22273860C();
  v56(v62, v11);
  v64 = v94;
  v54(v94, v63, v11);
  sub_22269E000();
  sub_22273860C();
  v112 = v56;
  v56(v63, v11);
  v88[1] = v61;
  v54(v37, v64, v11);
  v88[0] = v54;
  sub_22269E054();
  sub_22273860C();
  v56(v64, v11);
  v114[3] = sub_22273872C();
  v114[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v114);
  sub_22273871C();
  v65 = v97;
  sub_222738A4C();
  v66 = v115;
  v54(v115, v37, v11);
  sub_22262BED4(&unk_281312EE0, &unk_27D013890, &qword_222742B28);
  v67 = v65;
  v68 = v100;
  sub_22273860C();
  (*(v101 + 8))(v67, v68);
  v69 = v112;
  v112(v37, v11);
  v70 = v103;
  sub_222738A5C();
  v71 = v95;
  v72 = v66;
  v73 = v88[0];
  (v88[0])(v95, v72, v11);
  sub_22262BED4(&qword_281312ED8, &qword_27D013888, &qword_222742B20);
  v74 = v105;
  sub_22273860C();
  (*(v107 + 8))(v70, v74);
  v69(v115, v11);
  v75 = v108;
  sub_222738A3C();
  v76 = v96;
  v73(v96, v71, v11);
  sub_22262BED4(&unk_281312EF0, &qword_27D013880, &qword_222742B18);
  v77 = v109;
  sub_22273860C();
  (*(v110 + 8))(v75, v77);
  v78 = v112;
  v112(v71, v11);
  v79 = v98;
  v73(v98, v76, v11);
  v80 = v73;
  sub_22269E0A8();
  sub_22273860C();
  v78(v76, v11);
  v81 = v78;
  v82 = v99;
  v73(v99, v79, v11);
  sub_22269E0FC();
  sub_22273860C();
  v81(v79, v11);
  v83 = v102;
  v73(v102, v82, v11);
  sub_22269E150();
  sub_22273860C();
  v81(v82, v11);
  v114[0] = sub_22262E364(0, &unk_281312DA0, 0x277CCB038);
  v84 = v104;
  v80(v104, v83, v11);
  sub_22269E1A4();
  sub_22273860C();
  v81(v83, v11);
  v85 = [objc_opt_self() sharedWorkspace];
  v114[0] = v85;
  v86 = v106;
  v80(v106, v84, v11);
  sub_22269E1F8();
  sub_22273860C();
  v81(v84, v11);

  v114[0] = sub_22267FB70;
  v114[1] = 0;
  v80(v111, v86, v11);
  sub_22269E24C();
  sub_22273860C();
  return (v81)(v86, v11);
}

uint64_t sub_22269AD24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for JSStackManager();
  sub_22273858C();
  result = sub_222738C9C();
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;
  return result;
}

uint64_t sub_22269ADA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSStackManager();
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  a1[3] = &type metadata for JSMetricsService;
  a1[4] = &off_2835CAE18;
  v2 = swift_allocObject();
  *a1 = v2;
  sub_222738C9C();
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  result = sub_222738C9C();
  *(v2 + 16) = v5;
  *(v2 + 64) = v4;
  return result;
}

uint64_t sub_22269AEC0()
{
  v0 = sub_2227389FC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for JSStackManager();
  sub_22273858C();
  sub_222738C9C();
  sub_22269DD60();
  sub_2226D9C20();
  sub_22269DDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);

  sub_222738C9C();
  sub_2227385CC();
}

uint64_t sub_22269B010@<X0>(void *a1@<X8>)
{
  v53 = a1;
  v1 = sub_222738BBC();
  v52 = *(v1 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AMSMediaFetcher();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v8 = v67[0];
  v9 = v7 + v4[5];
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  v10 = v7 + v4[6];
  sub_222738C9C();
  *v7 = v8;
  v11 = (v7 + v4[7]);
  *v11 = 0;
  v11[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137E0, &unk_222742AE0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  sub_222738C9C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_222738C9C();
  v12 = v70;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v65 = v4;
  v66 = &off_2835C9178;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  v49 = type metadata accessor for AMSMediaFetcher;
  sub_22269E3D8(v7, boxed_opaque_existential_1, type metadata accessor for AMSMediaFetcher);
  v62 = &type metadata for JSLockupService;
  v63 = &off_2835CACE0;
  v61[0] = v18;
  v59 = &type metadata for DeviceAppDistribution;
  v60 = &off_2835C9118;
  v58[0] = swift_allocObject();
  sub_22269DCB0(v67, v58[0] + 16);
  v50 = type metadata accessor for LockupFetcherClient();
  v20 = objc_allocWithZone(v50);
  v21 = v65;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = v62;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v29 = *(v27[-1].Description + 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = v59;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  v35 = *(v33[-1].Description + 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v31;
  v57[3] = v4;
  v57[4] = &off_2835C9178;
  v40 = __swift_allocate_boxed_opaque_existential_1(v57);
  v41 = v49;
  sub_22269E440(v25, v40, v49);
  v56[4] = &off_2835CACE0;
  v56[3] = &type metadata for JSLockupService;
  v56[0] = v39;
  v55[3] = &type metadata for DeviceAppDistribution;
  v55[4] = &off_2835C9118;
  v42 = swift_allocObject();
  v55[0] = v42;
  v43 = v37[3];
  v42[3] = v37[2];
  v42[4] = v43;
  v42[5] = v37[4];
  v44 = v37[1];
  v42[1] = *v37;
  v42[2] = v44;
  sub_22266BCCC(v57, v20 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher);
  sub_22266BCCC(v56, v20 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service);
  sub_22266BCCC(v68, v20 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController);
  v46 = v51;
  v45 = v52;
  (*(v52 + 16))(v20 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_bag, v51, v1);
  sub_22266BCCC(v55, v20 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution);
  v54.receiver = v20;
  v54.super_class = v50;
  v47 = objc_msgSendSuper2(&v54, sel_init);
  sub_22269DD0C(v67);
  (*(v45 + 8))(v46, v1);
  __swift_destroy_boxed_opaque_existential_1(v68);
  sub_22269E520(v7, v41);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  result = __swift_destroy_boxed_opaque_existential_1(v69);
  *v53 = v47;
  return result;
}

uint64_t sub_22269B724@<X0>(void *a1@<X8>)
{
  v51 = a1;
  v50 = sub_22273952C();
  v1 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222737C9C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22273954C();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22273842C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_2227385FC();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222738BBC();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273858C();
  v54 = v14;
  sub_222738C9C();
  v17 = v11;
  v43 = v11;
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_222738C9C();
  sub_22269DC68(&qword_281312F80, MEMORY[0x277D21CE0]);
  sub_222738C8C();
  v18 = sub_22273844C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_22273840C();
  v22 = v68;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v65 = &type metadata for JSMetricsService;
  v66 = &off_2835CAE18;
  v28 = swift_allocObject();
  v64[0] = v28;
  v29 = *(v26 + 1);
  *(v28 + 16) = *v26;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(v26 + 2);
  *(v28 + 64) = *(v26 + 6);
  v63[3] = v18;
  v63[4] = MEMORY[0x277D21CE8];
  v63[0] = v21;
  v61 = &type metadata for OSSignpostExtractor;
  v62 = &off_2835C93F8;
  v44 = type metadata accessor for MetricsClient();
  v30 = objc_allocWithZone(v44);
  v31 = v65;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v33 = *(v31[-1].Description + 8);
  MEMORY[0x28223BE20](v32);
  v35 = v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v59[3] = &type metadata for JSMetricsService;
  v59[4] = &off_2835CAE18;
  v37 = swift_allocObject();
  v58[4] = &off_2835C93F8;
  v59[0] = v37;
  v38 = *(v35 + 1);
  *(v37 + 16) = *v35;
  *(v37 + 32) = v38;
  *(v37 + 48) = *(v35 + 2);
  *(v37 + 64) = *(v35 + 6);
  v58[3] = &type metadata for OSSignpostExtractor;
  (*(v55 + 16))(&v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_bag], v52, v54);
  (*(v56 + 16))(&v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsPipeline], v53, v17);
  sub_22266BCCC(v59, &v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService]);
  sub_22266BCCC(v63, &v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger]);
  sub_22266BCCC(v58, &v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_signpostExtractor]);
  v39 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v42[0] = "appstorecomponentsd";
  v42[1] = v39;
  (*(v46 + 104))(v45, *MEMORY[0x277D85268], v47);

  sub_222737C7C();
  v69 = MEMORY[0x277D84F90];
  sub_22269DC68(&qword_281312CD0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70);
  sub_2227397BC();
  *&v30[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_collectionQueue] = sub_22273958C();
  v57.receiver = v30;
  v57.super_class = v44;
  v40 = objc_msgSendSuper2(&v57, sel_init);

  (*(v56 + 8))(v53, v43);
  (*(v55 + 8))(v52, v54);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v64);
  result = __swift_destroy_boxed_opaque_existential_1(v67);
  *v51 = v40;
  return result;
}

id sub_22269BF28@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UtilityClient()) init];
  *a1 = result;
  return result;
}

uint64_t sub_22269BF6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ObjectGraph();

  v4 = sub_2227385AC();

  sub_22273853C();

  *a2 = v4;
  return result;
}

uint64_t sub_22269BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v44 = sub_222738BBC();
  v41 = *(v44 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22273743C();
  v37 = *(v38 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = qword_281313EB0;
  swift_beginAccess();
  sub_22266110C(a1 + v17, &v49, &qword_27D013070, &qword_222742730);
  if (v50)
  {
    sub_222634290(&v49, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
    type metadata accessor for ObjectGraph();
    sub_222738C9C();
    v18 = sub_22273946C();
    v19 = *(*(v18 - 8) + 56);
    v19(v16, 1, 1, v18);
    sub_22266BCCC(v51, &v47);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_222634290(&v47, v20 + 32);
    sub_222697DAC(0, 0, v16, &unk_222742A90, v20);

    v19(v16, 1, 1, v18);
    sub_22266BCCC(&v49, &v47);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    sub_222634290(&v47, v21 + 32);
    sub_222697DAC(0, 0, v16, &unk_222742AA0, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
    sub_222738C9C();
    sub_22262E364(0, &qword_281312DB0, off_2784B0638);
    sub_222738C9C();
    v22 = v45;
    __swift_project_boxed_opaque_existential_1(&v47, v48);
    sub_22273906C();
    sub_22273740C();
    (*(v37 + 8))(v12, v38);
    v23 = sub_22273916C();

    [*&v22 setStorefrontLocaleID_];

    v24 = v39;
    sub_222738C9C();
    v25 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v26 = *(v40 + 8);
    v26(v7, v4);
    v27 = 0;
    if ((v46 & 1) == 0)
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v22 setOverlaysRateLimitRequestsPerSecond_];

    v28 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v26(v7, v4);
    if (v46)
    {
      v29 = 0;
    }

    else
    {
      v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v22 setOverlaysRateLimitTimeWindow_];

    v30 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v26(v7, v4);
    if (v46)
    {
      v31 = 0;
    }

    else
    {
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v22 setOverlaysLoadTimeout_];

    v32 = objc_opt_self();
    if (qword_281313008 != -1)
    {
      swift_once();
    }

    v33 = qword_281315B68;
    v34 = sub_22273916C();
    [v32 launchCorrelationKeyWithTag:v33 withString:v34];

    [v32 bootstrapDidEndWithTag_];
    (*(v41 + 8))(v24, v44);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    sub_222660468(&v49, &qword_27D013070, &qword_222742730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
    result = sub_22273851C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22269C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_222737BDC();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_2227376CC();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22269C928, 0, 0);
}

uint64_t sub_22269C928()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *v1 = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277CEC158], v3);
  v7 = *(MEMORY[0x277CEC148] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_22269CA24;
  v9 = v0[17];
  v10 = v0[14];

  return MEMORY[0x28213E540](v9, v10, v5, v6);
}

uint64_t sub_22269CA24()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_22269CC2C;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v7 = sub_22269CBB4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22269CBB4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22269CC2C()
{
  if (qword_27D0129B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[11];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v7 = v0[6];
  v8 = v0[7];
  v0[5] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22269CE78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22269C7E0(a1, v4, v5, v1 + 32);
}

uint64_t sub_22269CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a4;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22269CFB8, 0, 0);
}

uint64_t sub_22269CFB8()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22269D054;

  return sub_2226F88B8();
}

uint64_t sub_22269D054()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22269D1B0, 0, 0);
  }

  else
  {

    v5 = *(v2 + 88);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_22269D1B0()
{
  if (qword_27D0129B8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v7 = v0[6];
  v8 = v0[7];
  v0[5] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22269D424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22269CF28(a1, v4, v5, v1 + 32);
}

uint64_t sub_22269D4D4(uint64_t a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_beginAccess();
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 56);
  }

  else
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v6 = sub_222738F6C();
    __swift_project_value_buffer(v6, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v7 = *(sub_2227381FC() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    sub_22273817C();
    sub_22273819C();
    sub_2227381CC();
    sub_222738C5C();

    v11 = *(a1 + 32);
    (*(a1 + 24))(&v16, v10);
    v4 = v16;
    v12 = *(a1 + 56);
    *(a1 + 56) = v16;

    v13 = os_transaction_create();
    v14 = *(a1 + 72);
    *(a1 + 72) = v13;
    swift_unknownObjectRelease();
  }

  sub_2226D8754();
  return v4;
}

uint64_t sub_22269D720(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22269D818;

  return v7(a1);
}

uint64_t sub_22269D818()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22269D910(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22269D720(a1, v5);
}

uint64_t sub_22269D9C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22269D4D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22269D9F4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22269DAE8;

  return v6(v2 + 16);
}

uint64_t sub_22269DAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
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

uint64_t sub_22269DC68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22269DD60()
{
  result = qword_2813131F8;
  if (!qword_2813131F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131F8);
  }

  return result;
}

unint64_t sub_22269DDB4()
{
  result = qword_281313470;
  if (!qword_281313470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313470);
  }

  return result;
}

unint64_t sub_22269DE08()
{
  result = qword_2813132A8;
  if (!qword_2813132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813132A8);
  }

  return result;
}

unint64_t sub_22269DE5C()
{
  result = qword_2813131C0;
  if (!qword_2813131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131C0);
  }

  return result;
}

unint64_t sub_22269DEB0()
{
  result = qword_2813140E8;
  if (!qword_2813140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140E8);
  }

  return result;
}

unint64_t sub_22269DF04()
{
  result = qword_2813140F0;
  if (!qword_2813140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140F0);
  }

  return result;
}

unint64_t sub_22269DF58()
{
  result = qword_281314108[0];
  if (!qword_281314108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281314108);
  }

  return result;
}

unint64_t sub_22269DFAC()
{
  result = qword_281313118[0];
  if (!qword_281313118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281313118);
  }

  return result;
}

unint64_t sub_22269E000()
{
  result = qword_281313010;
  if (!qword_281313010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313010);
  }

  return result;
}

unint64_t sub_22269E054()
{
  result = qword_2813130E8;
  if (!qword_2813130E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813130E8);
  }

  return result;
}

unint64_t sub_22269E0A8()
{
  result = qword_281314488;
  if (!qword_281314488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281314488);
  }

  return result;
}

unint64_t sub_22269E0FC()
{
  result = qword_281313110;
  if (!qword_281313110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313110);
  }

  return result;
}

unint64_t sub_22269E150()
{
  result = qword_281313108;
  if (!qword_281313108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313108);
  }

  return result;
}

unint64_t sub_22269E1A4()
{
  result = qword_281314498;
  if (!qword_281314498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281314498);
  }

  return result;
}

unint64_t sub_22269E1F8()
{
  result = qword_2813131D0;
  if (!qword_2813131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131D0);
  }

  return result;
}

unint64_t sub_22269E24C()
{
  result = qword_2813130F8;
  if (!qword_2813130F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813130F8);
  }

  return result;
}

uint64_t sub_22269E2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22269D4D4(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22269E2D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22266BE24;

  return sub_2226995E0();
}

uint64_t sub_22269E3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22269E440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_22269E4A8(void *a1)
{
  v2 = *(*(type metadata accessor for MetricsTopicProvider() - 8) + 80);
  v3 = sub_22269E580(a1);

  return v3;
}

uint64_t sub_22269E520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22269E580(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  v7 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v3 + 8))(v6, v2);
  if (v14[15] == 1)
  {
    [a1 setAnonymous_];
    [a1 setAccount_];
  }

  v8 = [a1 topic];
  v9 = sub_22273919C();
  v11 = v10;

  if (qword_27D0129E8 != -1)
  {
    swift_once();
  }

  if (sub_2226DC93C(v9, v11, qword_27D013F88))
  {

    MetricsTopicProvider.currentMetricsTopic.getter();
  }

  v12 = sub_22273916C();

  [a1 setTopic_];

  return a1;
}

uint64_t sub_22269E7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2226E39B0(a1, v4, v5, v7, v6);
}

uint64_t sub_22269E868(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22266BE24;

  return sub_222698338(a1, v1);
}

uint64_t sub_22269E904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D31BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22269E9E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22269D9F4(a1, v5);
}

id sub_22269EA98(char a1, uint64_t a2)
{
  if (a1)
  {

    return ASCPostRebootstrapNotification();
  }

  else
  {
    v3 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
    [v3 lock];
    sub_22269F3A4(a2);

    return [v3 unlock];
  }
}

uint64_t (*sub_22269EB58(void *a1))(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22269F7BC;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22269F7C8;
}

id sub_22269EC0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v13[3] = type metadata accessor for ObjectGraph();
  v13[0] = a1;

  sub_22273818C();
  sub_222672BA0(v13);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v10 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock) lock];
  v11 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = a1 | 0x4000000000000000;
  sub_22269F78C(v11);

  return [v10 unlock];
}

id sub_22269EE44(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v16[3] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v16);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v11 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock) lock];
  v12 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = a1 | 0x8000000000000000;
  sub_22269F78C(v12);
  v13 = a1;
  return [v11 unlock];
}

void sub_22269F0BC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22269EC0C(v1);
  }
}

void sub_22269F118(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22269EE44(a1);
  }
}

uint64_t sub_22269F174(uint64_t a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState;
  v5 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if (v5 >> 62 == 2 || (v5 >> 62 == 3 ? (v6 = v5 == 0xC000000000000000) : (v6 = 0), v6))
  {
    sub_22262D930();
  }

  else
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v8 = *(sub_2227381FC() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v11 = *(a1 + v4);
    v13[3] = &type metadata for BootstrapSession.BootstrapState;
    v13[0] = v11;
    sub_22269F7F4(v11);
    sub_22273816C();
    sub_222672BA0(v13);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }
}

uint64_t sub_22269F3A4(uint64_t a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState;
  v5 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if (v5 >> 62 == 2 || (v5 >> 62 == 3 ? (v6 = v5 == 0xC000000000000000) : (v6 = 0), v6))
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v8 = sub_222738F6C();
    __swift_project_value_buffer(v8, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v9 = *(sub_2227381FC() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v12 = *(a1 + v4);
    v13[3] = &type metadata for BootstrapSession.BootstrapState;
    v13[0] = v12;
    sub_22269F7F4(v12);
    sub_22273816C();
    sub_222672BA0(v13);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }

  else
  {
    sub_22262D930();

    return ASCPostRebootstrapNotification();
  }
}

uint64_t get_enum_tag_for_layout_string_27AppStoreComponentsDaemonKit16BootstrapSessionC0F5State33_94851151D45C843AB9BA9A7FA3CA1DAFLLO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22269F674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22269F6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_22269F730(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

void sub_22269F78C(unint64_t a1)
{
  if ((a1 >> 62) > 1)
  {
    if (a1 >> 62 == 2)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_22269F7C8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_22269F7F4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_22269F82C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_22269F870()
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_2813140D0 = result;
  return result;
}

id static Daemon.shared.getter()
{
  if (qword_2813140C0 != -1)
  {
    swift_once();
  }

  v1 = qword_2813140D0;

  return v1;
}

uint64_t sub_22269F8FC()
{
  result = sub_22273916C();
  qword_281315B98 = result;
  return result;
}

Swift::Void __swiftcall Daemon.run()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_2227395DC();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222737C4C();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312C98, 0x277D85CA0);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v14 = sub_22273955C();
  v15 = sub_2227395BC();

  swift_getObjectType();
  v46 = sub_22269FEEC;
  v47 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_22269F82C;
  v45 = &block_descriptor_7;
  v16 = _Block_copy(&aBlock);
  sub_222737C7C();
  sub_2226A001C();
  sub_2227395FC();
  _Block_release(v16);
  v17 = *(v41 + 8);
  v41 += 8;
  v34 = v17;
  v17(v8, v40);
  v18 = v10 + 8;
  v19 = *(v10 + 8);
  v33 = v18;
  v19(v13, v9);
  v39 = v15;
  sub_22273960C();
  sub_2227395CC();
  sub_2227395EC();
  (*(v35 + 8))(v3, v36);
  swift_getObjectType();
  v20 = swift_allocObject();
  v21 = v37;
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v23 = ObjectType;
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  v46 = sub_2226A0760;
  v47 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v24 = v21;
  v44 = sub_22269F82C;
  v45 = &block_descriptor_6;
  v25 = _Block_copy(&aBlock);

  sub_222737C7C();
  sub_2226A001C();
  sub_2227395FC();
  _Block_release(v25);
  v34(v8, v40);
  v19(v13, v9);

  sub_22273960C();
  JSRemoteInspectorSetInspectionEnabledByDefault();
  [objc_opt_self() setFlushDelayEnabled_];
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  v26 = objc_autoreleasePoolPush();
  v27 = *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session);
  v28 = *(v27 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v28 lock];
  sub_22269F174(v27);
  [v28 unlock];
  objc_autoreleasePoolPop(v26);
  [*(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener) resume];
  v29 = *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_widgetEventListener);
  sub_222730D94();
  _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  v30 = *MEMORY[0x277CBF058];
  do
  {
    v31 = objc_autoreleasePoolPush();
    v32 = CFRunLoopRunInMode(v30, 15.0, 1u);
    objc_autoreleasePoolPop(v31);
  }

  while ((v32 - 1) > 1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_22269FEEC()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v1 = *(sub_2227381FC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  exit(0);
}

uint64_t sub_2226A001C()
{
  sub_222737C4C();
  sub_222697744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_2226A0E84();
  return sub_2227397BC();
}

uint64_t sub_2226A00A4(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_222737C4C();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222737C9C();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22273760C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v15 = sub_222738F6C();
  __swift_project_value_buffer(v15, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v16 = *(sub_2227381FC() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  sub_22273963C();
  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  v19 = sub_22273970C();
  sub_2227375FC();
  sub_2227375DC();

  (*(v11 + 8))(v14, v10);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v20 = sub_22273955C();
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 24) = v22;
  aBlock[4] = sub_2226A0E7C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22269F82C;
  aBlock[3] = &block_descriptor_16;
  v23 = _Block_copy(aBlock);

  sub_222737C7C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_222697744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_2226A0E84();
  sub_2227397BC();
  MEMORY[0x223DBE8C0](0, v9, v5, v23);
  _Block_release(v23);

  (*(v30 + 8))(v5, v2);
  return (*(v28 + 8))(v9, v29);
}

void sub_2226A0548()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_2813140D8 != -1)
  {
    swift_once();
  }

  v1 = qword_281315B98;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v0 postNotificationName:v1 object:Strong];
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2226A0768()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v1 = *(sub_2227381FC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v4 = CFRunLoopGetMain();
  CFRunLoopStop(v4);

  exit(0);
}

BOOL sub_2226A08B0(void *a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = a1;
  v7 = sub_222735024(v6);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_shutdownTimer);
    sub_2226978A0();
    v9 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive;
    if (!*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive))
    {
      v10 = os_transaction_create();
      v11 = *(v2 + v9);
      *(v2 + v9) = v10;
      swift_unknownObjectRelease();
    }

    v12 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session);
    v13 = type metadata accessor for BootstrapSession();
    v36 = v13;
    v37 = &off_2835C8D08;
    v35[0] = v12;
    v14 = type metadata accessor for ServiceBrokerClient();
    v15 = objc_allocWithZone(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
    v17 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v34[3] = v13;
    v34[4] = &off_2835C8D08;
    v34[0] = v21;
    sub_22266BCCC(v34, v15 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session);
    v33.receiver = v15;
    v33.super_class = v14;
    v22 = v12;
    v23 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v24 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_connections);
    v25 = v23;
    v26 = ASCServiceBrokerGetInterface();
    sub_22273458C(v25, v26, v7);

    [v7 resume];
  }

  else
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v27 = sub_222738F6C();
    __swift_project_value_buffer(v27, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v28 = *(sub_2227381FC() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v36 = sub_22262E364(0, &qword_281312D20, 0x277CCAE80);
    v35[0] = v6;
    v31 = v6;
    sub_22273818C();
    sub_222672BA0(v35);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  return v7 != 0;
}

uint64_t sub_2226A0CC8()
{
  v1 = [objc_opt_self() daemonDefaults];
  v2 = [v1 disableShutdownTimer];

  if ((v2 & 1) == 0)
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v5 = sub_222738F6C();
    __swift_project_value_buffer(v5, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v6 = *(sub_2227381FC() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    v9 = CFRunLoopGetMain();
    CFRunLoopStop(v9);

    exit(0);
  }

  v3 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive);
  *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive) = 0;

  return swift_unknownObjectRelease();
}

void sub_2226A0E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2226A0548();
}

unint64_t sub_2226A0E84()
{
  result = qword_281312DE0;
  if (!qword_281312DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013A10, &qword_222742900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DE0);
  }

  return result;
}

void sub_2226A0EF8(void *a1)
{
  v3 = objc_opt_self();
  if (![v3 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 8);
  *&v14 = *v1;
  *(&v14 + 1) = v4;

  v5 = [v3 valueWithObject:sub_222739B6C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2227396AC();
  v14 = *(v1 + 16);
  if (*(&v14 + 1))
  {
    v13 = v14;
    sub_2226A1328(&v14, &v12);
    v6 = a1;
    v7 = sub_222739B2C();
    sub_22269E384(&v13);
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9 = [v3 valueWithObject:v7 inContext:a1];
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_11;
  }

  sub_2227396AC();
  v10 = *(v1 + 40);
  *&v13 = *(v1 + 32);
  *(&v13 + 1) = v10;

  v11 = [v3 valueWithObject:sub_222739B6C() inContext:a1];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_2227396AC();
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_2226A10E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;

  v9 = [v6 valueWithObject:sub_222739B6C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2227396AC();
  v10 = *(a4 + 16);
  if (v10)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22273997C();
    v11 = (a4 + 40);
    do
    {
      v15 = *(v11 - 1);
      v16 = *v11;
      v17 = v11[1];
      v18 = *(v11 + 1);
      v19 = v11[4];

      sub_2226A0EF8(a1);

      sub_22273995C();
      v12 = *(v14 + 16);
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      v11 += 6;
      --v10;
    }

    while (v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A18, &unk_222742D00);
  v13 = [v6 valueWithObject:sub_222739B6C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (v13)
  {
    sub_2227396AC();
    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2226A1328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_2226A13AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2226A13F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2226A1464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2226A14AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2226A14FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_2226AE7EC(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_2227397CC();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v9;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v31 = *v12;
    v14 = v3;
    v15 = *(*(v3 + 56) + 8 * v7);
    v16 = *(v32 + 16);
    v17 = *(v32 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_2226AE7EC((v17 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v18 = (v32 + 24 * v16);
    v18[4] = v31;
    v18[5] = v13;
    v18[6] = v15;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_2226A5ADC(v7, v28, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_2226A5ADC(v7, v28, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v27)
    {
      return v2;
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
  return result;
}

uint64_t sub_2226A175C()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_27D013A20);
  __swift_project_value_buffer(v5, qword_27D013A20);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

uint64_t sub_2226A18B0()
{
  *(v1 + 40) = v0;
  v2 = *(MEMORY[0x277CD5038] + 4);
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_2226A1944;

  return MEMORY[0x2821237B8]();
}

uint64_t sub_2226A1944(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2226A1A44, 0, 0);
}

uint64_t sub_2226A1A44()
{
  if ((*(*__swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64)) + 16) & 1) == 0)
  {
    v5 = v0[7];
    v11 = *(v5 + 2);
    if (v11)
    {
      v1 = 0;
      v2 = 0;
      while (1)
      {
        result = *(v5 + 4);
        if (result == 0xD000000000000012 && 0x8000000222747B00 == *(v5 + 5))
        {
          break;
        }

        result = sub_222739B4C();
        if (result)
        {
          break;
        }

        ++v2;
        v1 -= 16;
        v5 += 16;
        if (v11 == v2)
        {
          v5 = v0[7];
          goto LABEL_19;
        }
      }

      v14 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      v5 = v0[7];
      if (v14 != v11)
      {
        v18 = -v1;
        v19 = *(v5 + 2);
        v11 = v2;
        while (v14 < v19)
        {
          v2 = *&v5[v18 + 48];
          v1 = *&v5[v18 + 56];
          if (v2 != 0xD000000000000012 || 0x8000000222747B00 != v1)
          {
            v23 = *&v5[v18 + 48];
            v24 = *&v5[v18 + 56];
            if ((sub_222739B4C() & 1) == 0)
            {
              if (v14 != v11)
              {
                if (v11 >= v19)
                {
                  goto LABEL_52;
                }

                v25 = &v5[16 * v11 + 32];
                v26 = *(v25 + 1);
                v29 = *v25;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_2226A54EC(v5);
                }

                v27 = &v5[16 * v11];
                v28 = *(v27 + 5);
                *(v27 + 4) = v2;
                *(v27 + 5) = v1;

                if (v14 >= *(v5 + 2))
                {
                  goto LABEL_53;
                }

                v20 = &v5[v18];
                v21 = *&v5[v18 + 56];
                *(v20 + 6) = v29;
                *(v20 + 7) = v26;
              }

              ++v11;
            }
          }

          ++v14;
          v19 = *(v5 + 2);
          v18 += 16;
          if (v14 == v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v11 = v2;
    }

LABEL_19:
    v2 = *(v5 + 2);
    if (v11 <= v2)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v2, v11 - v2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0[4] = v5;
          if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
          {
            if (v2 <= v11)
            {
              v16 = v11;
            }

            else
            {
              v16 = v2;
            }

            v5 = sub_222694EC0(isUniquelyReferenced_nonNull_native, v16, 1, v5);
            v0[4] = v5;
          }

          sub_2226CB960(v11, v2, 0);
          goto LABEL_29;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = 0xD000000000000012;
  v0[2] = 0xD000000000000012;
  v3 = v0[7];
  v1 = 0x8000000222747B00;
  v0[3] = 0x8000000222747B00;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 2;
  LOBYTE(v3) = sub_222730F54(sub_2226A5750, v4, v3);

  v5 = v0[7];
  if ((v3 & 1) == 0)
  {
    v6 = v0[7];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[7];
    if (v7)
    {
LABEL_4:
      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_222694EC0((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 2) = v9 + 1;
      v10 = &v5[16 * v9];
      *(v10 + 4) = v2;
      *(v10 + 5) = v1;
      goto LABEL_29;
    }

LABEL_54:
    v5 = sub_222694EC0(0, *(v5 + 2) + 1, 1, v5);
    goto LABEL_4;
  }

LABEL_29:
  v17 = v0[1];

  return v17(v5);
}

uint64_t sub_2226A1DA8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2226A1E64, 0, 0);
}

uint64_t sub_2226A1E64()
{
  v78 = v1;
  v77[2] = *MEMORY[0x277D85DE8];
  v1[10] = 0;
  v2 = v1 + 10;
  os_eligibility_get_domain_answer();
  v75 = v1 + 10;
  v76 = v1;
  v3 = v1[13];
  if (v1[10] != 4)
  {
    v1 = (v3 + 64);
    v5 = -1;
    v6 = -1 << *(v3 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);
    v3 = (63 - v6) >> 6;
    v8 = v2[3];

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v7)
    {
LABEL_12:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(v8 + 56) + v12);
      v0 = *(v13 + 16);
      v14 = *(v10 + 2);
      v15 = v14 + v0;
      if (__OFADD__(v14, v0))
      {
        goto LABEL_54;
      }

      v16 = *(*(v8 + 56) + v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v15 > *(v10 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v18 = v14 + v0;
        }

        else
        {
          v18 = v14;
        }

        v10 = sub_222694EC0(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      }

      v7 &= v7 - 1;
      if (*(v13 + 16))
      {
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v0)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        if (v0)
        {
          v19 = *(v10 + 2);
          v20 = __OFADD__(v19, v0);
          v21 = v19 + v0;
          if (v20)
          {
            __break(1u);
          }

          *(v10 + 2) = v21;
        }
      }

      else
      {

        if (v0)
        {
          goto LABEL_55;
        }
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        v1 = v76;
        v22 = v76[13];
        v23 = v76[14];

        v24 = sub_2226AF640(v10);

        v25 = swift_task_alloc();
        *(v25 + 16) = v23;
        v26 = sub_2226A50BC(sub_2226A5844, v25, v24);

        v3 = sub_2226A5864(v22, v26);

        v69 = 0;
        goto LABEL_25;
      }

      v7 = v1[v11];
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_12;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v4 = v1[13];

  v69 = 0;
LABEL_25:
  v0 = (v75 - 8);
  v72 = (v75 - 4);
  v1[16] = v3;
  if (qword_27D012990 != -1)
  {
LABEL_57:
    swift_once();
  }

  v27 = v1[15];
  v28 = v1[13];
  v29 = sub_222738F6C();
  __swift_project_value_buffer(v29, qword_27D013A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v30 = *(sub_2227381FC() - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v71 = *(v30 + 72);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A38, &qword_222742DC8);
  v1[2] = v3;
  v68 = v3;

  sub_22273816C();
  sub_222660468(v0, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v32 = v28 + 64;
  v33 = -1;
  v34 = -1 << *(v28 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v3 = v33 & *(v28 + 64);
  v35 = (63 - v34) >> 6;
  v74 = v28;

  v36 = 0;
  v70 = MEMORY[0x277D84F90];
  v0 = v69;
  v73 = v32;
LABEL_29:
  v37 = v36;
  if (!v3)
  {
    goto LABEL_31;
  }

  do
  {
    v36 = v37;
LABEL_34:
    v38 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v39 = (*(v74 + 48) + ((v36 << 10) | (16 * v38)));
    v40 = *v39;
    v41 = v39[1];
    v42 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v43 = sub_22273916C();
    v75[1] = 0;
    v44 = [v42 initWithBundleIdentifier:v43 allowPlaceholder:1 error:v75 + 1];

    v45 = v75[1];
    if (v44)
    {
      v49 = v45;
      v50 = [v44 localizedName];
      v51 = sub_22273919C();
      v1 = v52;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_22269544C(0, v70[2] + 1, 1, v70);
      }

      v54 = v70[2];
      v53 = v70[3];
      if (v54 >= v53 >> 1)
      {
        v70 = sub_22269544C((v53 > 1), v54 + 1, 1, v70);
      }

      v70[2] = v54 + 1;
      v55 = &v70[4 * v54];
      v55[4] = v40;
      v55[5] = v41;
      v55[6] = v51;
      v55[7] = v1;
      v32 = v73;
      goto LABEL_29;
    }

    v46 = v76[15];
    v47 = v45;
    v48 = sub_22273727C();

    swift_willThrow();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v76[9] = MEMORY[0x277D837D0];
    v76[6] = v40;
    v76[7] = v41;

    v1 = v72;
    sub_22273816C();
    sub_222660468(v72, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v0 = 0;
    v37 = v36;
    v32 = v73;
  }

  while (v3);
  while (1)
  {
LABEL_31:
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v36 >= v35)
    {
      break;
    }

    v3 = *(v32 + 8 * v36);
    ++v37;
    if (v3)
    {
      goto LABEL_34;
    }
  }

  v56 = v76[13];

  if (v70[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
    v57 = sub_222739A6C();
  }

  else
  {
    v57 = MEMORY[0x277D84F98];
  }

  v77[0] = v57;

  sub_2226A4D0C(v58, 1, v77);
  v76[17] = v0;
  if (v0)
  {
    v59 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821FEBD8](v0, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {

    v60 = v77[0];
    v76[18] = v77[0];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
    v62 = swift_task_alloc();
    v76[19] = v62;
    *(v62 + 16) = v68;
    *(v62 + 24) = v60;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A48, &qword_222742DF0);
    v64 = *(MEMORY[0x277D858E8] + 4);
    v65 = swift_task_alloc();
    v76[20] = v65;
    *v65 = v76;
    v65[1] = sub_2226A2744;
    v66 = *MEMORY[0x277D85DE8];
    v80 = v63;

    return MEMORY[0x282200600](v76 + 12, v61, v63, 0, 0, &unk_222742DE8, v62, v61);
  }
}

uint64_t sub_2226A2744()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2226A28C8, 0, 0);
}

uint64_t sub_2226A28C8()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v2 = v0[15];
  v3 = sub_2226A14FC(v0[12]);

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t sub_2226A2988(uint64_t *a1, void *a2)
{
  v36 = a2;
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = sub_22273793C();
  v37 = *(v39 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227377AC();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222737C2C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2227377BC();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = objc_allocWithZone(ASCAdamID);
  v40 = v18;
  v20 = sub_22273916C();
  v21 = [v19 initWithStringValue_];

  [v21 int64value];
  v22 = v41[5];
  sub_222737C1C();
  if (v22)
  {

    if (qword_27D012990 != -1)
    {
      swift_once();
    }

    v23 = sub_222738F6C();
    __swift_project_value_buffer(v23, qword_27D013A20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v24 = *(sub_2227381FC() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v41[3] = MEMORY[0x277D837D0];
    v41[0] = v40;
    v41[1] = v17;

    sub_22273816C();
    sub_222660468(v41, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    return 0;
  }

  else
  {
    (*(v35 + 104))(v10, *MEMORY[0x277CEBFE8], v7);
    sub_22273778C();

    v28 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v29 = v38;
    sub_2227379FC();
    (*(v34 + 8))(v16, v13);
    v30 = v37;
    v31 = v39;
    if ((*(v37 + 88))(v29, v39) == *MEMORY[0x277CEC0C0])
    {
      (*(v30 + 96))(v29, v31);
      v32 = sub_22273786C();
      (*(*(v32 - 8) + 8))(v29, v32);
      return 1;
    }

    else
    {
      (*(v30 + 8))(v29, v31);
      return 0;
    }
  }
}

uint64_t sub_2226A2F00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v25 = *(*result + 16);
  if (v25)
  {
    v5 = 0;
    v24 = v3 + 32;
    v6 = a2 + 56;
    v7 = MEMORY[0x277D84F90];
    v23 = *result;
    while (1)
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v5 = v8 + 1;
        if (*(a2 + 16))
        {
          break;
        }

LABEL_5:
        v8 = v5;
        if (v5 == v25)
        {
          goto LABEL_24;
        }
      }

      v9 = (v24 + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      v12 = *(a2 + 40);
      sub_222739C5C();

      sub_22273924C();
      v13 = sub_222739C8C();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = (*(a2 + 48) + 16 * v15);
        v18 = *v17 == v11 && v17[1] == v10;
        if (v18 || (sub_222739B4C() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2226AE80C(0, *(v7 + 16) + 1, 1);
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_2226AE80C((v19 > 1), v20 + 1, 1);
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v11;
      *(v21 + 40) = v10;
      v3 = v23;
      if (v5 == v25)
      {
        goto LABEL_24;
      }
    }

LABEL_4:

    goto LABEL_5;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_24:
  *a3 = v7;
  return result;
}

uint64_t sub_2226A30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_2227374BC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A50, &qword_222742DF8);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A3218, 0, 0);
}

uint64_t sub_2226A3218()
{
  v1 = v0[10];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[10];

  v10 = 0;
  if (v4)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = v0[9];
      v13 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v1 + 56) + 8 * v14);

      sub_2226A3A20(v16, v17, v18, v12);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v7, v8, v9);
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v4)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v19 = v0[17];
  v21 = v0[9];
  v20 = v0[10];

  v22 = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
  sub_22273942C();
  v23 = MEMORY[0x277D84F98];
  v0[18] = MEMORY[0x277D84F98];
  v0[19] = v23;
  v24 = sub_2226A5AE8();
  v25 = *(MEMORY[0x277D856D0] + 4);
  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_2226A33FC;
  v27 = v0[17];
  v8 = v0[15];
  v7 = (v0 + 2);
  v9 = v24;

  return MEMORY[0x282200308](v7, v8, v9);
}

uint64_t sub_2226A33FC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[19];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[15];

    (*(v6 + 8))(v5, v7);

    v8 = _ASCSignpostTag_valueTooLarge;
  }

  else
  {
    v8 = sub_2226A3550;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2226A3550()
{
  v2 = v0[1].i64[1];
  v1 = v0 + 1;
  v53 = v0[1].i64[0];
  if (v2)
  {
    v3 = v0[2].i64[0];
    if (v3)
    {
      v52 = *(v3 + 16);
      if (v52)
      {
        v4 = *(v0[6].i64[1] + 80);
        v51 = v3 + ((v4 + 32) & ~v4);
        v5 = v0[9].i64[0];

        v9 = 0;
        v10 = 0;
        v49 = v3;
        v50 = v2;
        while (1)
        {
          if (v10 >= *(v3 + 16))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            return MEMORY[0x282200308](v6, v7, v8);
          }

          v11 = v0[5].i64[1];
          (*(v0[6].i64[1] + 16))(v0[7].i64[0], v51 + *(v0[6].i64[1] + 72) * v10, v0[6].i64[0]);
          v0[2].i64[1] = sub_2227374AC();
          v57 = sub_222739AFC();
          v13 = v12;
          v14 = *(v11 + 16);

          if (v14 && (v15 = v0[5].i64[1], v16 = sub_222688818(v53, v2), (v17 & 1) != 0))
          {
            v18 = (*(v0[5].i64[1] + 56) + 16 * v16);
            v55 = v18[1];
            v56 = *v18;
          }

          else
          {
            v55 = 0;
            v56 = 0;
          }

          v19 = v0[7].i64[0];
          v0[3].i64[0] = sub_22273749C();
          v20 = v1;
          v21 = sub_222739AFC();
          v54 = v22;
          sub_2226A5B4C(v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0[3].i64[1] = v5;
          v24 = sub_222688818(v57, v13);
          v25 = v5[2];
          v26 = (v7 & 1) == 0;
          v6 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_40;
          }

          v27 = v7;
          if (v5[3] >= v6)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v5 = v20[2].i64[1];
              if (v7)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v6 = sub_22268CDBC();
              v5 = v20[2].i64[1];
              if (v27)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            sub_22268A364(v6, isUniquelyReferenced_nonNull_native);
            v28 = v20[2].i64[1];
            v6 = sub_222688818(v57, v13);
            if ((v27 & 1) != (v7 & 1))
            {

              return sub_222739B8C();
            }

            v24 = v6;
            v5 = v20[2].i64[1];
            if (v27)
            {
LABEL_17:

              goto LABEL_21;
            }
          }

          v5[(v24 >> 6) + 8] |= 1 << v24;
          v29 = (v5[6] + 16 * v24);
          *v29 = v57;
          v29[1] = v13;
          *(v5[7] + 8 * v24) = MEMORY[0x277D84F90];
          v30 = v5[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_41;
          }

          v5[2] = v32;
LABEL_21:
          v33 = v5[7];
          v34 = *(v33 + 8 * v24);
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(v33 + 8 * v24) = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_222695580(0, *(v34 + 2) + 1, 1, v34);
            *(v33 + 8 * v24) = v34;
          }

          v37 = *(v34 + 2);
          v36 = *(v34 + 3);
          if (v37 >= v36 >> 1)
          {
            *(v33 + 8 * v24) = sub_222695580((v36 > 1), v37 + 1, 1, v34);
          }

          ++v10;
          v6 = (*(v0[6].i64[1] + 8))(v0[7].i64[0], v0[6].i64[0]);
          v38 = *(v33 + 8 * v24);
          *(v38 + 16) = v37 + 1;
          v39 = (v38 + 48 * v37);
          v3 = v49;
          v2 = v50;
          v39[4] = v53;
          v39[5] = v50;
          v39[6] = v56;
          v39[7] = v55;
          v39[8] = v21;
          v39[9] = v54;
          v9 = sub_2226A4310;
          v1 = v20;
          if (v52 == v10)
          {

            v58 = vdupq_n_s64(v5);
            goto LABEL_32;
          }
        }
      }

      v58 = v0[9];
LABEL_32:
    }

    else
    {
      v58 = v0[9];
    }

    v0[9] = v58;
    v45 = sub_2226A5AE8();
    v46 = *(MEMORY[0x277D856D0] + 4);
    v47 = swift_task_alloc();
    v0[10].i64[0] = v47;
    *v47 = v0;
    v47[1] = sub_2226A33FC;
    v48 = v0[8].i64[1];
    v7 = v0[7].i64[1];
    v6 = v1;
    v8 = v45;

    return MEMORY[0x282200308](v6, v7, v8);
  }

  else
  {
    v40 = v0[9].i64[1];
    v41 = v0[7].i64[0];
    v42 = v0[4].i64[0];
    (*(v0[8].i64[0] + 8))(v0[8].i64[1], v0[7].i64[1]);
    *v42 = v40;

    v43 = v0->i64[1];

    return v43();
  }
}

uint64_t sub_2226A3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v46 - v9;
  v10 = *(a3 + 16);
  if (!v10)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_81:
    v42 = v13;
    v43 = sub_22273946C();
    v44 = v49;
    (*(*(v43 - 8) + 56))(v49, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v48;
    v45[5] = v50;
    v45[6] = v42;

    sub_2226A40F8(v44, &unk_222742E08, v45);
    return sub_222660468(v44, &unk_27D013050, &qword_222741370);
  }

  v11 = 0;
  v12 = a3 + 32;
  v13 = MEMORY[0x277D84F90];
  while (v11 < v10)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_83;
    }

    v15 = (v12 + 16 * v11);
    v16 = *v15;
    v17 = v15[1];
    ++v11;
    v18 = HIBYTE(v17) & 0xF;
    v19 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        v35 = v13;

        v22 = sub_2226B4BD0(v16, v17, 10);
        v47 = v36;

        v13 = v35;
        if (v47)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if ((v17 & 0x2000000000000000) != 0)
      {
        v51[0] = v16;
        v51[1] = v17 & 0xFFFFFFFFFFFFFFLL;
        if (v16 == 43)
        {
          if (!v18)
          {
            goto LABEL_87;
          }

          if (--v18)
          {
            v22 = 0;
            v30 = v51 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                break;
              }

              v25 = __CFADD__(10 * v22, v31);
              v22 = 10 * v22 + v31;
              if (v25)
              {
                break;
              }

              ++v30;
              if (!--v18)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v16 == 45)
        {
          if (!v18)
          {
            goto LABEL_86;
          }

          if (--v18)
          {
            v22 = 0;
            v26 = v51 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                break;
              }

              v25 = 10 * v22 >= v27;
              v22 = 10 * v22 - v27;
              if (!v25)
              {
                break;
              }

              ++v26;
              if (!--v18)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v18)
        {
          v22 = 0;
          v33 = v51;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            if (!is_mul_ok(v22, 0xAuLL))
            {
              break;
            }

            v25 = __CFADD__(10 * v22, v34);
            v22 = 10 * v22 + v34;
            if (v25)
            {
              break;
            }

            ++v33;
            if (!--v18)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v41 = v13;
          result = sub_22273993C();
          v13 = v41;
        }

        v21 = *result;
        if (v21 == 43)
        {
          if (v19 < 1)
          {
            goto LABEL_84;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v22 = 0;
            if (!result)
            {
              goto LABEL_59;
            }

            v28 = (result + 1);
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                break;
              }

              v25 = __CFADD__(10 * v22, v29);
              v22 = 10 * v22 + v29;
              if (v25)
              {
                break;
              }

              ++v28;
              if (!--v18)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v21 == 45)
        {
          if (v19 < 1)
          {
            goto LABEL_85;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v22 = 0;
            if (!result)
            {
              goto LABEL_59;
            }

            v23 = (result + 1);
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                break;
              }

              v25 = 10 * v22 >= v24;
              v22 = 10 * v22 - v24;
              if (!v25)
              {
                break;
              }

              ++v23;
              if (!--v18)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v19)
        {
          v22 = 0;
          if (!result)
          {
LABEL_59:
            LOBYTE(v18) = 0;
            goto LABEL_68;
          }

          while (1)
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v22, 0xAuLL))
            {
              break;
            }

            v25 = __CFADD__(10 * v22, v32);
            v22 = 10 * v22 + v32;
            if (v25)
            {
              break;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_59;
            }
          }
        }
      }

      v22 = 0;
      LOBYTE(v18) = 1;
LABEL_68:
      v52 = v18;
      if (v18)
      {
        goto LABEL_69;
      }

LABEL_72:
      v37 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = a4;
      if (result)
      {
        v13 = v37;
      }

      else
      {
        result = sub_2226956A0(0, *(v37 + 16) + 1, 1, v37);
        v13 = result;
      }

      v40 = *(v13 + 16);
      v39 = *(v13 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_2226956A0((v39 > 1), v40 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v40 + 1;
      *(v13 + 8 * v40 + 32) = v22;
      a4 = v38;
      if (v14 == v10)
      {
        goto LABEL_81;
      }
    }

    else
    {
LABEL_69:
      if (v14 == v10)
      {
        goto LABEL_81;
      }
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_2226A3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_2226A3F28, 0, 0);
}

uint64_t sub_2226A3F28()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = *(MEMORY[0x277CD5020] + 4);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2226A3FD8;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x282123798](v6, v7, v5);
}

uint64_t sub_2226A3FD8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2226A40D8, 0, 0);
}

uint64_t sub_2226A40F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_2226A5C24(a1, v22 - v10);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2227393FC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
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

unsigned __int8 *sub_2226A4320(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v41[-1] - v15;
  v17 = HIBYTE(a2) & 0xF;
  v18 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      v21 = sub_2226B4BD0(a1, a2, 10);
      v39 = v38;

      if (v39)
      {
        return result;
      }

      goto LABEL_65;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v41[0] = a1;
      v41[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v21 = 0;
            v29 = v41 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v17)
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

      if (a1 != 45)
      {
        if (v17)
        {
          v21 = 0;
          v32 = v41;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            ++v32;
            if (!--v17)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v17)
      {
        if (--v17)
        {
          v21 = 0;
          v25 = v41 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v26;
            v21 = 10 * v21 - v26;
            if (!v24)
            {
              break;
            }

            ++v25;
            if (!--v17)
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
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_22273993C();
      }

      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (result)
            {
              v27 = result + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v24 = __CFADD__(10 * v21, v28);
                v21 = 10 * v21 + v28;
                if (v24)
                {
                  goto LABEL_63;
                }

                ++v27;
                if (!--v17)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v31 = *result - 48;
              if (v31 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_63;
              }

              v24 = __CFADD__(10 * v21, v31);
              v21 = 10 * v21 + v31;
              if (v24)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v21 = 0;
        LOBYTE(v17) = 1;
LABEL_64:
        v42 = v17;
        if (v17)
        {
          return result;
        }

LABEL_65:

        result = sub_2226B41FC(a3, a4);
        if ((v34 & 1) == 0)
        {
          v35 = result;
          v36 = sub_22273946C();
          (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
          v37 = swift_allocObject();
          v37[2] = 0;
          v37[3] = 0;
          v37[4] = a5;
          v37[5] = a6;
          v37[6] = v21;
          v37[7] = v35;

          sub_222697DAC(0, 0, v16, &unk_222742DB8, v37);
        }

        return result;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_63;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                goto LABEL_63;
              }

              ++v22;
              if (!--v17)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v17) = 0;
          goto LABEL_64;
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

  return result;
}

uint64_t sub_2226A4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v12 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v13 = *(MEMORY[0x277CD5028] + 4);
  v14 = swift_task_alloc();
  v7[27] = v14;
  *v14 = v7;
  v14[1] = sub_2226A4824;

  return MEMORY[0x2821237A0](a4, a5, a6, a7, 0);
}

uint64_t sub_2226A4824()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2226A4960, 0, 0);
  }

  else
  {
    v4 = v3[26];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2226A4960()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v15 = v0[22];
  v16 = v0[28];
  v17 = sub_222738F6C();
  __swift_project_value_buffer(v17, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v8 = MEMORY[0x277D84D38];
  v0[5] = MEMORY[0x277D84D38];
  v0[2] = v4;
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[9] = v8;
  v0[6] = v1;
  sub_22273816C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[13] = MEMORY[0x277D837D0];
  v0[10] = v15;
  v0[11] = v3;

  sub_22273816C();
  sub_222660468((v0 + 10), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v9 = v0[18];
  v10 = v0[19];
  v0[17] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9, v10);
  sub_22273816C();
  sub_222660468((v0 + 14), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v12 = v0[26];

  v13 = v0[1];

  return v13();
}

void *sub_2226A4C7C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_2226A5378(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_2226A4D0C(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_222688818(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222689324(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_222688818(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222739B8C();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_22268C598();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22273991C();
    MEMORY[0x223DBE5D0](0xD00000000000001BLL, 0x8000000222749840);
    sub_2227399DC();
    MEMORY[0x223DBE5D0](39, 0xE100000000000000);
    sub_222739A1C();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_222688818(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_222689324(v33, 1);
        v34 = *a3;
        v29 = sub_222688818(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_2226A50BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v32 = a1;
  v34[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v6;
    v33 = v3;
    v30 = &v27;
    MEMORY[0x28223BE20](a1);
    v29 = &v27 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v7);
    v31 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v34[0] = *v18;
      v34[1] = v19;

      v3 = v33;
      v20 = v32(v34);
      v33 = v3;
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v29[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_2226942A4(v29, v28, v31, v4);
          goto LABEL_18;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

  v25 = swift_slowAlloc();
  v26 = sub_2226A4C7C(v25, v6, v4, v32);

  result = MEMORY[0x223DBFCA0](v25, -1, -1);
  if (!v3)
  {
    result = v26;
  }

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2226A5378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_2226942A4(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2226A5528(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_2226A561C;

  return v6(v2 + 16);
}

uint64_t sub_2226A561C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_2226A5770(uint64_t a1)
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
  v10[1] = sub_222660228;

  return sub_2226A4734(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2226A5864(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A60, &qword_222742E38);
  result = sub_222739A3C();
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 64;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v30 = *(*(v26 + 56) + 8 * v16);

      sub_2226A2F00(&v30, a2, &v29);

      if (v2)
      {
        break;
      }

      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v28;
      v20 = v29;
      v21 = (v28[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v28[7] + 8 * v16) = v20;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2226A5A28(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22266BE24;

  return sub_2226A30EC(a1, a2, v7, v6);
}

uint64_t sub_2226A5ADC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2226A5AE8()
{
  result = qword_27D013A58;
  if (!qword_27D013A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013A50, &qword_222742DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013A58);
  }

  return result;
}

uint64_t sub_2226A5B4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2226A5B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226A3F04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226A5C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226A5C94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_2226A5528(a1, v5);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2226A5D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2226A5DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226A5E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = sub_22273919C();
    v8 = v7;
    if (v6 == sub_22273919C() && v8 == v9)
    {
      break;
    }

    v11 = sub_222739B4C();

    if (v11)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2226A5EEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A5500(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2226A5F74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A5514(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

_BYTE *sub_2226A6000(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int64_t a5, uint64_t a6, int64_t a7)
{
  v8 = v7;
  v10 = sub_2227381BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = sub_2226A64EC();
  v12 = 1 << a3[32];
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 7);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = 0x2784B0000uLL;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      [objc_opt_self() requestDidBeginWithTag_];
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_21;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *&a3[8 * v18 + 56];
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v20 = type metadata accessor for AMSMediaFetcher();
  v21 = v7 + *(v20 + 28);
  v22 = *v21;
  if (*v21)
  {
    v23 = *(v21 + 1);
    v24 = *(v20 + 20);

    v25 = sub_222738ADC();
    v26 = v41;
    v15 = a5;
    v27 = v22(v41, a4, a5, a6, a7, v25);
    sub_2226A5B4C(v22);
  }

  else
  {
    v28 = v7 + *(v20 + 20);
    v29 = sub_222738ADC();
    v30 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v31 = sub_22273916C();
    v32 = sub_22273916C();
    v26 = v41;
    v27 = [v30 initWithType:v41 clientIdentifier:v31 clientVersion:v32 bag:v29];

    v15 = a5;
  }

  swift_unknownObjectRelease();
  v33 = *v8;
  a3 = v27;
  [a3 setClientInfo_];
  if (sub_2226A9470(v26))
  {
    type metadata accessor for AMSMediaTaskPlatform(0);
    v34 = sub_22273936C();
  }

  else
  {
    v34 = 0;
  }

  [a3 setAdditionalPlatforms_];

  if (sub_2226A6874())
  {
    v35 = sub_2227390FC();
  }

  else
  {
    v35 = 0;
  }

  v17 = MEMORY[0x277D837D0];
  [a3 setAdditionalQueryParams_];

  if (qword_281312E28 != -1)
  {
    goto LABEL_23;
  }

LABEL_21:
  v36 = sub_222738F6C();
  __swift_project_value_buffer(v36, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v37 = *(sub_2227381FC() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v48 = v17;
  v46 = a4;
  v47 = v15;

  sub_22273816C();
  sub_222660468(&v46, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v48 = v17;
  v46 = a6;
  v47 = a7;

  sub_22273816C();
  sub_222660468(&v46, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a3;
}

uint64_t sub_2226A64EC()
{
  v0 = sub_22273919C();
  v2 = v1;
  if (v0 == sub_22273919C() && v2 == v3)
  {
    v6 = 6;
LABEL_22:

    return v6;
  }

  v5 = sub_222739B4C();

  if (v5)
  {
    return 6;
  }

  v7 = sub_22273919C();
  v9 = v8;
  if (v7 == sub_22273919C() && v9 == v10)
  {
    goto LABEL_21;
  }

  v12 = sub_222739B4C();

  if (v12)
  {
    return 0;
  }

  v13 = sub_22273919C();
  v15 = v14;
  if (v13 == sub_22273919C() && v15 == v16)
  {
    goto LABEL_16;
  }

  v17 = sub_222739B4C();

  if (v17)
  {
    return 7;
  }

  v18 = sub_22273919C();
  v20 = v19;
  if (v18 == sub_22273919C() && v20 == v21)
  {
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  v23 = sub_222739B4C();

  if (v23)
  {
    return 0;
  }

  v24 = sub_22273919C();
  v26 = v25;
  if (v24 == sub_22273919C() && v26 == v27)
  {
LABEL_16:
    v6 = 7;
    goto LABEL_22;
  }

  v28 = sub_222739B4C();

  if (v28)
  {
    return 7;
  }

  v29 = sub_22273919C();
  v31 = v30;
  if (v29 == sub_22273919C() && v31 == v32)
  {
    v6 = 1;
    goto LABEL_22;
  }

  v33 = sub_222739B4C();

  if (v33)
  {
    return 1;
  }

  v34 = sub_22273919C();
  v36 = v35;
  if (v34 == sub_22273919C() && v36 == v37)
  {
    v6 = 2;
    goto LABEL_22;
  }

  v38 = sub_222739B4C();

  if (v38)
  {
    return 2;
  }

  result = sub_222739A1C();
  __break(1u);
  return result;
}

unint64_t sub_2226A6874()
{
  v0 = sub_2226F492C();
  if (!v0)
  {
    v0 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v1 = v0;
  v2 = sub_22273919C();
  v4 = v3;
  if (v2 == sub_22273919C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_222739B4C();

    if ((v7 & 1) == 0)
    {
      return v1;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22268BB0C(0xD000000000000015, 0x80000002227498F0, 0x646E65747865, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_22268BB0C(0xD000000000000012, 0x8000000222749910, 1752459639, 0xE400000000000000, v9);
  return v1;
}

uint64_t sub_2226A69BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x2822009F8](sub_2226A69DC, 0, 0);
}

uint64_t sub_2226A69DC()
{
  v2 = v0[13];
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A70, &qword_222742EA8);
  v3 = [v2 perform];
  v0[15] = sub_222738F0C();
  *(swift_allocObject() + 16) = v1;
  v4 = sub_22273872C();
  v5 = MEMORY[0x277D21FB0];
  v0[5] = v4;
  v0[6] = v5;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22273871C();
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[10] = v4;
  v0[11] = v5;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  v0[16] = sub_222738E6C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A80, &qword_222742EB8);
  v7 = sub_22262BED4(&qword_281312E58, &unk_27D013A80, &qword_222742EB8);
  v8 = *(MEMORY[0x277D22390] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_2226A6C10;

  return MEMORY[0x282180360](v0 + 12, v6, v7);
}

uint64_t sub_2226A6C10()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = sub_2226A6DB8;
  }

  else
  {
    *(v2 + 152) = *(v2 + 96);
    v5 = sub_2226A6D50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226A6D50()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[19];

  return v2(v3);
}

uint64_t sub_2226A6DB8()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

id sub_2226A6E1C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = [objc_opt_self() requestDidEndWithTag_];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void sub_2226A6F20(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = [*a1 responseDictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22273910C();
  }

  else
  {
    v5 = sub_222732F68(MEMORY[0x277D84F90]);
  }

  *a2 = v5;
}

uint64_t sub_2226A6FB0(uint64_t a1)
{
  *(v2 + 2584) = v1;
  *(v2 + 2576) = a1;
  return MEMORY[0x2822009F8](sub_2226A6FD4, 0, 0);
}

uint64_t sub_2226A6FD4()
{
  v1 = v0[322];
  if (v1 < 3)
  {
    v2 = v0[323];
    v3 = swift_task_alloc();
    v0[324] = v3;
    *(v3 + 16) = v2;
    swift_asyncLet_begin();
    v4 = swift_task_alloc();
    v0[325] = v4;
    *(v4 + 16) = v2;
    swift_asyncLet_begin();
    v5 = swift_task_alloc();
    v0[326] = v5;
    *(v5 + 16) = v2;
    swift_asyncLet_begin();
    v0[327] = sub_222732D1C(MEMORY[0x277D84F90]);
    v6 = sub_2226A71CC;
    v7 = v0 + 82;
    v8 = (v0 + 2681);
    v9 = v0 + 2;
LABEL_5:

    return MEMORY[0x282200928](v7, v8, v6, v9);
  }

  if (v1 == 7)
  {
    v10 = v0[323];
    v11 = swift_task_alloc();
    v0[332] = v11;
    *(v11 + 16) = v10;
    swift_asyncLet_begin();
    v0[333] = sub_222732D1C(MEMORY[0x277D84F90]);
    v6 = sub_2226A78A8;
    v7 = v0 + 2;
    v8 = v0 + 335;
    v9 = v0 + 82;
    goto LABEL_5;
  }

  v12 = sub_222732D1C(MEMORY[0x277D84F90]);
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_2226A71E8()
{
  if (*(v0 + 2681))
  {
    v1 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_222694EC0((v2 > 1), v3 + 1, 1, v1);
    }

    v4 = *(v0 + 2616);
    *(v1 + 2) = v3 + 1;
    v5 = &v1[16 * v3];
    strcpy(v5 + 32, "customArtwork");
    *(v5 + 23) = -4864;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BB0C(0x6B726F77747261, 0xE700000000000000, 0xD00000000000001ELL, 0x80000002227499D0, isUniquelyReferenced_nonNull_native);
    v7 = v4;
  }

  else
  {
    v7 = *(v0 + 2616);
    v1 = MEMORY[0x277D84F90];
  }

  *(v0 + 2632) = v7;
  *(v0 + 2624) = v1;

  return MEMORY[0x282200928](v0 + 1296, v0 + 2682, sub_2226A7340, v0 + 16);
}

uint64_t sub_2226A7340()
{
  if (*(v0 + 2682))
  {
    v1 = sub_2226A7390;
    v2 = v0 + 656;
    v3 = v0 + 2681;
  }

  else
  {
    *(v0 + 2640) = *(v0 + 2624);
    v1 = sub_2226A7510;
    v2 = v0 + 1936;
    v3 = v0 + 2683;
  }

  return MEMORY[0x282200928](v2, v3, v1, v0 + 16);
}

uint64_t sub_2226A73AC()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2681);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 2624);
  if (v2 == 1)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_222694EC0(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v4 = sub_222694EC0((v5 > 1), v6 + 1, 1, v4);
    }

    v8 = 0x80000002227499B0;
    v9 = 0xD000000000000011;
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_222694EC0(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = 0xEB000000006B726FLL;
    v6 = *(v4 + 2);
    v10 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v10 >> 1)
    {
      v4 = sub_222694EC0((v10 > 1), v6 + 1, 1, v4);
    }

    v9 = 0x777472416E6F6369;
  }

  *(v4 + 2) = v7;
  v11 = &v4[16 * v6];
  *(v11 + 4) = v9;
  *(v11 + 5) = v8;
  *(v0 + 2640) = v4;

  return MEMORY[0x282200928](v0 + 1936, v0 + 2683, sub_2226A7510, v0 + 16);
}

uint64_t sub_2226A752C()
{
  v11 = v0;
  v1 = *(v0 + 2632);
  if (*(v0 + 2683) == 1)
  {
    v2 = *(v0 + 2632);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v1;
    sub_22268BB0C(0x6E69746152656761, 0xE900000000000067, 0x646E65747865, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (*(*(v0 + 2640) + 16))
  {
    v10 = *(v0 + 2640);

    sub_2226A8938(&v10);
    v4 = *(v0 + 2640);

    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
    sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0);
    v5 = sub_22273913C();
    v7 = v6;

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v1;
    sub_22268BB0C(v5, v7, 0x615B646E65747865, 0xEC0000005D737070, v8);
    v1 = v10;
  }

  else
  {
  }

  *(v0 + 2648) = v1;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2683, sub_2226A7718, v0 + 16);
}

uint64_t sub_2226A7734()
{
  v1 = *(v0 + 2608);

  return MEMORY[0x282200920](v0 + 1296, v0 + 2682, sub_2226A77A0, v0 + 16);
}

uint64_t sub_2226A77BC()
{
  v1 = *(v0 + 2600);

  return MEMORY[0x282200920](v0 + 656, v0 + 2681, sub_2226A7828, v0 + 16);
}

uint64_t sub_2226A7844()
{
  v1 = v0[324];

  v2 = v0[331];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2226A78C4()
{
  v13 = v0;
  if (*(v0 + 2680) == 1)
  {
    v1 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_222694EC0((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x777472416E6F6369;
    *(v4 + 5) = 0xEB000000006B726FLL;
    goto LABEL_6;
  }

  v1 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_6:
    v12 = v1;

    sub_2226A8938(&v12);
    v5 = *(v0 + 2664);

    *(v0 + 656) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
    sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0);
    v6 = sub_22273913C();
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v5;
    sub_22268BB0C(v6, v8, 0x615B646E65747865, 0xEC0000005D737070, isUniquelyReferenced_nonNull_native);
    v10 = v12;
    goto LABEL_8;
  }

  v10 = *(v0 + 2664);
LABEL_8:
  *(v0 + 2672) = v10;

  return MEMORY[0x282200920](v0 + 16, v0 + 2680, sub_2226A7AF8, v0 + 656);
}

uint64_t sub_2226A7B14()
{
  v1 = v0[332];

  v2 = v0[334];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2226A7B78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A7C44, 0, 0);
}

uint64_t sub_2226A7C44()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(type metadata accessor for AMSMediaFetcher() + 20);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2226A7D48;
  v7 = v0[6];
  v8 = v0[4];

  return MEMORY[0x282180268](v0 + 8, sub_2226A9B54, 0, v8);
}

uint64_t sub_2226A7D48()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2226A9B58, 0, 0);
}

uint64_t sub_2226A7EA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A7F6C, 0, 0);
}

uint64_t sub_2226A7F6C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(type metadata accessor for AMSMediaFetcher() + 20);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2226A7D48;
  v7 = v0[6];
  v8 = v0[4];

  return MEMORY[0x282180268](v0 + 8, sub_2226A9B54, 0, v8);
}

uint64_t sub_2226A8070(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A813C, 0, 0);
}

uint64_t sub_2226A813C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(type metadata accessor for AMSMediaFetcher() + 20);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2226A8240;
  v7 = v0[6];
  v8 = v0[4];

  return MEMORY[0x282180268](v0 + 8, sub_2226A9B54, 0, v8);
}

uint64_t sub_2226A8240()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2226A8398, 0, 0);
}

uint64_t sub_2226A8398()
{
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226A8408(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A84D4, 0, 0);
}

uint64_t sub_2226A84D4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(type metadata accessor for AMSMediaFetcher() + 20);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2226A7D48;
  v7 = v0[6];
  v8 = v0[4];

  return MEMORY[0x282180268](v0 + 8, sub_2226A9B54, 0, v8);
}

uint64_t sub_2226A85D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = sub_22273919C();
  v12 = v11;
  if (v10 == sub_22273919C() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_222739B4C();

    if ((v15 & 1) == 0)
    {
      v16 = sub_22273919C();
      v18 = v17;
      if (v16 == sub_22273919C() && v18 == v19)
      {
      }

      else
      {
        v21 = sub_222739B4C();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      v28 = *(type metadata accessor for AMSMediaFetcher() + 20);
      v29 = sub_22273916C();
      sub_222738B0C();

      sub_222738B3C();
      (*(v6 + 8))(v9, v5);
      if (v30[15] != 1)
      {
        return 0;
      }
    }
  }

  v22 = (v0 + *(type metadata accessor for AMSMediaFetcher() + 24));
  v23 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_2227384EC();
  v24 = sub_222738CFC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_222660468(v4, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  v27 = MEMORY[0x223DBDFF0]();
  (*(v25 + 8))(v4, v24);
  return v27;
}

uint64_t sub_2226A8938(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2226A9410(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2226A89A4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2226A89A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222739AEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22273939C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2226A8B6C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2226A8A9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2226A8A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_222739B4C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2226A8B6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2226A93FC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2226A9148((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_222739B4C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_222739B4C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2226958CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2226958CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2226A9148((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2226A93FC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2226A9370(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_222739B4C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2226A9148(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_222739B4C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_222739B4C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2226A9370(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A93FC(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for AMSMediaFetcher()
{
  result = qword_281313AE8;
  if (!qword_281313AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226A9470(uint64_t a1)
{
  if (a1 == 7)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA0, &qword_222742EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222742E90;
  v3 = *MEMORY[0x277CEE290];
  v4 = *MEMORY[0x277CEE298];
  v5 = MEMORY[0x277CEE280];
  *(v2 + 32) = *MEMORY[0x277CEE290];
  *(v2 + 40) = v4;
  v6 = *v5;
  v7 = *MEMORY[0x277CEE270];
  *(v2 + 48) = *v5;
  *(v2 + 56) = v7;
  v8 = *MEMORY[0x277CEE278];
  v9 = *MEMORY[0x277CEE288];
  *(v2 + 64) = *MEMORY[0x277CEE278];
  *(v2 + 72) = v9;
  v27 = v2;
  v10 = objc_opt_self();
  v11 = v3;
  v12 = v4;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  if ([v10 isPad])
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;
  v19 = v2;
  v20 = sub_2226A5E14(v18, v2);
  v22 = v21;

  if (v22)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v23 = sub_222738F6C();
    __swift_project_value_buffer(v23, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v24 = *(sub_2227381FC() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();

    return v19;
  }

  else
  {

    return v27;
  }
}

uint64_t sub_2226A96E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A7B78(a1, v4);
}

uint64_t sub_2226A9784(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A7EA0(a1, v4);
}

uint64_t sub_2226A9824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222660228;

  return sub_2226A8070(a1, v4);
}

uint64_t sub_2226A98C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A8408(a1, v4);
}

void sub_2226A998C()
{
  sub_2226A9A40();
  if (v0 <= 0x3F)
  {
    sub_222738BBC();
    if (v1 <= 0x3F)
    {
      sub_2226A9A8C();
      if (v2 <= 0x3F)
      {
        sub_2226A9AF0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2226A9A40()
{
  result = qword_281312D58;
  if (!qword_281312D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312D58);
  }

  return result;
}

unint64_t sub_2226A9A8C()
{
  result = qword_281312F70;
  if (!qword_281312F70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281312F70);
  }

  return result;
}

void sub_2226A9AF0()
{
  if (!qword_281312B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013AB0, &unk_222742F30);
    v0 = sub_22273971C();
    if (!v1)
    {
      atomic_store(v0, &qword_281312B28);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2226A9B68(uint64_t a1, int a2)
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

uint64_t sub_2226A9BB0(uint64_t result, int a2, int a3)
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

uint64_t sub_2226A9C00()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_222739C5C();
  sub_22273924C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226A9C68()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22273924C();

  return sub_22273924C();
}

uint64_t sub_2226A9CB8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_222739C5C();
  sub_22273924C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226A9D1C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222739B4C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_222739B4C();
    }
  }

  return result;
}

unint64_t sub_2226A9DC4()
{
  result = qword_27D013AB8;
  if (!qword_27D013AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AB8);
  }

  return result;
}

unint64_t sub_2226A9E18(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 || (v8 = a1, v9 = sub_2226B270C(a2, a3), v11 = v10, v8, !v11))
  {
    v9 = 0xD00000000000001ELL;

    v13 = sub_22273919C();
    v15 = v14;
    if (v13 != sub_22273919C() || v15 != v16)
    {
      v18 = sub_222739B4C();

      if (v18)
      {
        goto LABEL_18;
      }

      v19 = sub_22273919C();
      v21 = v20;
      if (v19 != sub_22273919C() || v21 != v22)
      {
        v24 = sub_222739B4C();

        if ((v24 & 1) == 0)
        {
          v25 = sub_22273919C();
          v27 = v26;
          if (v25 != sub_22273919C() || v27 != v28)
          {
            v30 = sub_222739B4C();

            if (v30)
            {
              goto LABEL_21;
            }

            v31 = sub_22273919C();
            v33 = v32;
            if (v31 != sub_22273919C() || v33 != v34)
            {
              sub_222739B4C();

              goto LABEL_21;
            }
          }

LABEL_21:

          return v9;
        }

LABEL_18:

        return 0xD000000000000014;
      }
    }

    goto LABEL_18;
  }

  v12 = v8;
  sub_2226B29BC(a2, a3);

  return v9;
}

uint64_t sub_2226AA0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2227373FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return MEMORY[0x282200958](v10, v11);
  }

  else
  {
    sub_2227373DC();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2226AA250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2226AA274, 0, 0);
}

uint64_t sub_2226AA274()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_2226AA3B0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AC0, &unk_222743048);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226AA0E0;
  v0[13] = &block_descriptor_8;
  v0[14] = v5;
  [v4 installApp:v2 onPairedDevice:v1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226AA3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2226AA4EC, 0, 0);
  }

  else
  {
    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_2226AA4EC()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

id sub_2226AA558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v7 = sub_2227373BC();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v34 = (v11 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2226AAB50;
  *(v13 + 24) = v12;
  v43 = sub_2226AAB5C;
  v44 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_222685AC8;
  v42 = &block_descriptor_9;
  v14 = _Block_copy(&aBlock);

  [a3 setBeginEventProcessingBlock_];
  _Block_release(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2226AAB50;
  *(v15 + 24) = v12;
  v43 = sub_2226AAB74;
  v44 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_222685AC8;
  v42 = &block_descriptor_12;
  v16 = _Block_copy(&aBlock);

  [a3 setEndEventProcessingBlock_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2226AAB50;
  *(v17 + 24) = v12;
  v43 = sub_2226AAB8C;
  v44 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_222685AC8;
  v42 = &block_descriptor_18;
  v18 = _Block_copy(&aBlock);

  [a3 setEmitEventProcessingBlock_];
  _Block_release(v18);
  v43 = sub_2226AAC54;
  v44 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2226AAC5C;
  v42 = &block_descriptor_21;
  v19 = _Block_copy(&aBlock);
  v38 = v11;

  [a3 setDeviceRebootProcessingBlock_];
  _Block_release(v19);
  sub_22273704C();
  v20 = sub_22273734C();
  v21 = v36;
  v22 = *(v35 + 8);
  v22(v10, v36);
  sub_22273702C();
  v23 = sub_22273734C();
  v22(v10, v21);
  aBlock = 0;
  LODWORD(v14) = [a3 processLogArchiveWithPath:0 startDate:v20 endDate:v23 errorOut:&aBlock];

  v24 = aBlock;
  if (v14)
  {
    v25 = v34;
    swift_beginAccess();
    v26 = *v25;
    if (!v26)
    {
      v32 = v24;

      [a3 setBeginEventProcessingBlock_];
      [a3 setEndEventProcessingBlock_];
      result = [a3 setEmitEventProcessingBlock_];
      goto LABEL_6;
    }

    swift_willThrow();
    v27 = v24;
    v28 = v26;
  }

  else
  {
    v29 = aBlock;
    sub_22273727C();

    swift_willThrow();
  }

  [a3 setBeginEventProcessingBlock_];
  [a3 setEndEventProcessingBlock_];
  result = [a3 setEmitEventProcessingBlock_];
LABEL_6:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2226AAACC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, _BYTE *))
{
  v4[0] = 0;
  a3(a1, a2, v4);
  return (v4[0] ^ 1) & 1;
}

uint64_t sub_2226AAB50(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_2226AAACC(a1, a2, *(v2 + 16));
}

uint64_t sub_2226AABA4(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2();
  return v5(v6, a1) & 1;
}

uint64_t sub_2226AABE8(uint64_t a1)
{
  sub_2226AAC9C();
  v2 = swift_allocError();
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  return 0;
}

uint64_t sub_2226AAC5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

unint64_t sub_2226AAC9C()
{
  result = qword_27D013AC8;
  if (!qword_27D013AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AC8);
  }

  return result;
}

uint64_t sub_2226AAD28()
{
  v0 = sub_22273780C();
  v29 = *(v0 - 8);
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2227377CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  sub_2227377DC();
  v15 = *(v5 + 88);
  if (v15(v14, v4) == *MEMORY[0x277CEC030])
  {
    v26 = *(v5 + 96);
    v27 = v0;
    v26(v14, v4);
    v28 = *v14;
    v16 = swift_projectBox();
    v17 = *(v5 + 16);
    v17(v12, v16, v4);
    v17(v9, v12, v4);
    v18 = v15(v9, v4);
    if (v18 == *MEMORY[0x277CEC020] || v18 == *MEMORY[0x277CEC018] || v18 == *MEMORY[0x277CEC028])
    {
      v26(v9, v4);
      v21 = v29;
      v22 = v27;
      (*(v29 + 32))(v3, v9, v27);
      v23 = sub_2227377FC();
      (*(v21 + 8))(v3, v22);
      (*(v5 + 8))(v12, v4);

      return v23;
    }

    v25 = *(v5 + 8);
    v25(v12, v4);
    v25(v9, v4);
  }

  else
  {
    (*(v5 + 8))(v14, v4);
  }

  return 0;
}

id sub_2226AB060(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CEC0B8])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273784C();
LABEL_5:
    (*(*(v12 - 8) + 8))(v10, v12);
LABEL_6:
    v13 = [objc_opt_self() deeplinkMetadata];

    return v13;
  }

  if (v11 == *MEMORY[0x277CEC0D0])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273783C();
    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x277CEC0D8] || v11 == *MEMORY[0x277CEC098])
  {
LABEL_11:
    (*(v7 + 8))(v10, v6);
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277CEC090])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273782C();
    goto LABEL_5;
  }

  if (v11 != *MEMORY[0x277CEC0C0])
  {
    if (v11 == *MEMORY[0x277CEC0A8] || v11 == *MEMORY[0x277CEC0C8] || v11 == *MEMORY[0x277CEC0B0])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  (*(v7 + 96))(v10, v6);
  v15 = [a2 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v16 = sub_22273910C();

  if (*(v16 + 16) && (v17 = sub_222694708(@"open"), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
  }

  else
  {

    v24 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_2227390BC();
  }

  v25 = objc_opt_self();
  v26 = sub_22273916C();

  v27 = [v25 textMetadataWithTitle:v26 subtitle:0];

  v28 = sub_22273786C();
  (*(*(v28 - 8) + 8))(v10, v28);
  return v27;
}

unint64_t sub_2226AB470()
{
  result = qword_281312C60;
  if (!qword_281312C60)
  {
    type metadata accessor for ASCOfferTitleVariant(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312C60);
  }

  return result;
}

id sub_2226AB4C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51 = a4;
  v54 = a1;
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v53 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v50 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD0, &qword_222743118);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = sub_2227376CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v24 = [a2 flags] & 4;
  (*(v20 + 16))(v23, a3, v19);
  v25 = (*(v20 + 88))(v23, v19);
  if (v25 == *MEMORY[0x277CEBF80])
  {
    (*(v20 + 96))(v23, v19);
    v26 = sub_2227376AC();
    (*(*(v26 - 8) + 8))(v23, v26);
LABEL_3:
    v27 = 0;
    goto LABEL_10;
  }

  if (v25 != *MEMORY[0x277CEBF70] && v25 != *MEMORY[0x277CEBF78])
  {
    if (v25 != *MEMORY[0x277CEBF88])
    {
      (*(v20 + 8))(v23, v19);
    }

    goto LABEL_3;
  }

  (*(v20 + 8))(v23, v19);
  v27 = 1;
LABEL_10:
  v29 = *(v15 + 48);
  v30 = *(v15 + 64);
  v31 = *(v7 + 16);
  v31(v18, v54, v6);
  v18[v29] = v24 >> 2;
  v18[v30] = v27;
  v32 = (*(v7 + 88))(v18, v6);
  if (v32 != *MEMORY[0x277CEC0B8])
  {
    if (v32 == *MEMORY[0x277CEC0D0])
    {
      v11 = v53;
      v31(v53, v18, v6);
      (*(v7 + 96))(v11, v6);
      v34 = sub_22273783C();
      if (!v24)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

    if (v32 != *MEMORY[0x277CEC0D8])
    {
      if (v32 == *MEMORY[0x277CEC098])
      {
        goto LABEL_33;
      }

      if (v32 == *MEMORY[0x277CEC0C0])
      {
        v11 = v50;
        v31(v50, v18, v6);
        (*(v7 + 96))(v11, v6);
        v34 = sub_22273786C();
        if (!v24)
        {
          goto LABEL_18;
        }

LABEL_32:
        (*(*(v34 - 8) + 8))(v11);
        if (v27)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }

      if (v32 == *MEMORY[0x277CEC0A8])
      {
LABEL_33:
        (*(v7 + 8))(v18, v6);
        v39 = [v52 titles];
        type metadata accessor for ASCOfferTitleVariant(0);
        sub_2226AB470();
        v40 = sub_22273910C();

        if (*(v40 + 16) && (v41 = sub_222694708(@"appStoreRepair"), (v42 & 1) != 0))
        {
          v43 = (*(v40 + 56) + 16 * v41);
          v45 = *v43;
          v44 = v43[1];
        }

        else
        {

          v46 = v51[4];
          __swift_project_boxed_opaque_existential_1(v51, v51[3]);
          sub_2227390BC();
        }

        v47 = objc_opt_self();
        v48 = sub_22273916C();

        v36 = [v47 textMetadataWithTitle:v48 subtitle:0];

        return v36;
      }

      if (v32 != *MEMORY[0x277CEC0C8])
      {
        if (v32 != *MEMORY[0x277CEC0B0])
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    if (v24)
    {
      v38 = v27;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

  v31(v11, v18, v6);
  (*(v7 + 96))(v11, v6);
  if (v24)
  {
    v33 = v27;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v34 = sub_22273784C();
LABEL_18:
    (*(*(v34 - 8) + 8))(v11);
LABEL_19:
    sub_2226AD794(v18);
    return 0;
  }

  v36 = [objc_opt_self() indeterminateProgressMetadata];
  v37 = sub_22273784C();
  (*(*(v37 - 8) + 8))(v11, v37);
  (*(v7 + 8))(v18, v6);
  return v36;
}

id sub_2226ABBE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v89 = a2;
  v90 = a4;
  v86 = a3;
  v5 = sub_22273780C();
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227377CC();
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22273782C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22273793C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x277CEC0B8])
  {
    (*(v19 + 96))(v22, v18);
    v24 = [objc_opt_self() indeterminateProgressMetadata];
    v25 = sub_22273784C();
LABEL_5:
    (*(*(v25 - 8) + 8))(v22, v25);
    return v24;
  }

  if (v23 == *MEMORY[0x277CEC0D0])
  {
    (*(v19 + 96))(v22, v18);
    v26 = objc_opt_self();
    v27 = v90[4];
    __swift_project_boxed_opaque_existential_1(v90, v90[3]);
    sub_2227390BC();
    v28 = sub_22273916C();

    v24 = [v26 textMetadataWithTitle:v28 subtitle:0];

    v25 = sub_22273783C();
    goto LABEL_5;
  }

  if (v23 == *MEMORY[0x277CEC0D8])
  {
    (*(v19 + 8))(v22, v18);
    v30 = objc_opt_self();
    v31 = v90[4];
    __swift_project_boxed_opaque_existential_1(v90, v90[3]);
    sub_2227390BC();
    v32 = sub_22273916C();

    v33 = [v30 textMetadataWithTitle:v32 subtitle:0];
LABEL_8:
    v34 = v33;

    return v34;
  }

  if (v23 == *MEMORY[0x277CEC098])
  {
    (*(v19 + 8))(v22, v18);
    v35 = [objc_opt_self() redownloadMetadata];
LABEL_12:

    return v35;
  }

  if (v23 == *MEMORY[0x277CEC090])
  {
    (*(v19 + 96))(v22, v18);
    v36 = v13;
    (*(v14 + 32))(v17, v22, v13);
    v37 = sub_2226AAD28();
    if (v37)
    {

      v38 = [objc_opt_self() redownloadMetadata];
    }

    else
    {
      v91[3] = &type metadata for Feature;
      v91[4] = sub_222672C08();
      LOBYTE(v91[0]) = 1;
      v54 = sub_22273748C();
      __swift_destroy_boxed_opaque_existential_1(v91);
      if (v54)
      {
        sub_2227377DC();
        v55 = v85;
        if ((*(v85 + 88))(v12, v9) == *MEMORY[0x277CEC020])
        {
          (*(v55 + 96))(v12, v9);
          v56 = *(v87 + 8);
          v57 = v12;
          v58 = v88;
          v56(v57, v88);
          v59 = objc_opt_self();
          sub_22273781C();
          sub_2227377EC();
          v61 = v60;
          v56(v8, v58);
          v38 = [v59 progressMetadataWithValue:1 cancellable:v61];
        }

        else
        {
          (*(v55 + 8))(v12, v9);
          v80 = objc_opt_self();
          sub_22273781C();
          sub_2227377EC();
          v82 = v81;
          (*(v87 + 8))(v8, v88);
          v38 = [v80 progressMetadataWithValue:0 cancellable:v82];
        }
      }

      else
      {
        v67 = objc_opt_self();
        sub_22273781C();
        sub_2227377EC();
        v69 = v68;
        (*(v87 + 8))(v8, v88);
        v38 = [v67 progressMetadataWithValue:1 cancellable:v69];
      }
    }

    v34 = v38;
    (*(v14 + 8))(v17, v36);
    return v34;
  }

  if (v23 == *MEMORY[0x277CEC0C0])
  {
    (*(v19 + 96))(v22, v18);
    v39 = [v89 titles];
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226AB470();
    v40 = sub_22273910C();

    if (*(v40 + 16) && (v41 = sub_222694708(@"open"), (v42 & 1) != 0))
    {
      v43 = (*(v40 + 56) + 16 * v41);
      v45 = *v43;
      v44 = v43[1];
    }

    else
    {

      v62 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      sub_2227390BC();
    }

    v63 = objc_opt_self();
    v64 = sub_22273916C();

    v24 = [v63 textMetadataWithTitle:v64 subtitle:0];

    v25 = sub_22273786C();
    goto LABEL_5;
  }

  v46 = v89;
  if (v23 != *MEMORY[0x277CEC0A8])
  {
    if (v23 == *MEMORY[0x277CEC0C8])
    {
      v65 = objc_opt_self();
      v66 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      sub_2227390BC();
      v32 = sub_22273916C();

      v33 = [v65 textMetadataWithTitle:v32 subtitle:0];
      goto LABEL_8;
    }

    if (v23 != *MEMORY[0x277CEC0B0])
    {
      (*(v19 + 8))(v22, v18);
    }
  }

  if (([v46 flags] & 0x40) != 0)
  {
    v35 = [objc_opt_self() redownloadMetadata];
    goto LABEL_12;
  }

  v47 = [v46 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v48 = sub_22273910C();

  if (*(v48 + 16) && (v49 = sub_222694708(v86), (v50 & 1) != 0))
  {
    v51 = (*(v48 + 56) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
  }

  else
  {

    v70 = v90[4];
    __swift_project_boxed_opaque_existential_1(v90, v90[3]);
    sub_2227390BC();
  }

  v71 = [v46 subtitles];
  v72 = sub_22273910C();

  if (*(v72 + 16) && (v73 = sub_222694708(v86), (v74 & 1) != 0))
  {
    v75 = (*(v72 + 56) + 16 * v73);
    v77 = *v75;
    v76 = v75[1];
  }

  else
  {
    v76 = 0;
  }

  v78 = sub_22273916C();

  if (v76)
  {
    v79 = sub_22273916C();
  }

  else
  {
    v79 = 0;
  }

  v83 = [objc_opt_self() textMetadataWithTitle:v78 subtitle:v79];

  return v83;
}