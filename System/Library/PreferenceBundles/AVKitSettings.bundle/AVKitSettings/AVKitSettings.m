uint64_t sub_23C0B3830()
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0E9890();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v1 = [objc_opt_self() mainBundle];
  }

  sub_23C0E98E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7F0, &qword_23C0EA818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D0, &qword_23C0EA808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D8, &qword_23C0EA810);
  sub_23C0E9880();
  sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_23C0E99A0();
}

uint64_t sub_23C0B3B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  sub_23C0E9B90();
  v5 = sub_23C0E9B80();
  v6 = MEMORY[0x277D85700];
  v38 = v5;
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7D0, &qword_23C0EA808);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7D8, &qword_23C0EA810);
  v34 = v32;
  v33 = *(v12 - 8);
  v13 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = v32 - v14;
  v32[3] = sub_23C0E9890();
  v32[2] = v16;
  v32[1] = v17;

  v18 = sub_23C0E9B80();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v6;
  v19[4] = a1;
  v19[5] = a2;

  v20 = sub_23C0E9B80();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v6;
  v21[4] = a1;
  v21[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  v22 = sub_23C0E9980();
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7F8, &qword_23C0EA820);
  sub_23C0B52AC();
  sub_23C0B5384();
  sub_23C0E9970();
  v23 = sub_23C0E9880();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C0E9870();
  v28 = sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810);
  v29 = MEMORY[0x277CDDD98];
  sub_23C0E9920();
  (*(v24 + 8))(v27, v23);
  (*(v33 + 8))(v15, v12);
  *&v43 = v12;
  *(&v43 + 1) = v23;
  *&v44 = v28;
  *(&v44 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_23C0E9930();
  (*(v36 + 8))(v11, v30);
}

uint64_t sub_23C0B4000@<X0>(uint64_t *a1@<X8>)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  swift_getKeyPath();
  sub_23C0B5514(&qword_27E1EE820, type metadata accessor for MicrophoneSelectionViewModel);
  sub_23C0E97B0();

  v2 = v9[3];
  v3 = v9[4];
  v4 = v9[5];
  v5 = v9[6];
  v6 = v9[7];
  v7 = v9[8];
  sub_23C0B4DE4(v2, v3);

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return result;
}

uint64_t sub_23C0B4184(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  sub_23C0B7C14(v3);
}

uint64_t sub_23C0B426C()
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  swift_getKeyPath();
  sub_23C0B5514(&qword_27E1EE820, type metadata accessor for MicrophoneSelectionViewModel);
  sub_23C0E97B0();

  v0 = *(v2 + 16);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE830, &qword_23C0EA880);
  sub_23C0B5454();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
  sub_23C0B52AC();
  swift_getOpaqueTypeConformance2();
  sub_23C0E9990();
}

uint64_t sub_23C0B44A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0B54B8();

  *a2 = sub_23C0E98F0();
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = 1;

  sub_23C0B4DE4(v3, v4);
  sub_23C0B4E34(v3, v4);
}

uint64_t sub_23C0B45F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23C0E98C0();
  }

  else
  {
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    sub_23C0E9CE0();
    swift_getWitnessTable();
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
  }

  return sub_23C0E9850();
}

uint64_t sub_23C0B4718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23C0E98C0();
    sub_23C0E9850();
  }

  else
  {
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    sub_23C0E9CE0();
    swift_getWitnessTable();
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23C0B4928()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7C0, &qword_23C0EA800);
  sub_23C0B5070();
  return sub_23C0E98D0();
}

uint64_t sub_23C0B499C()
{
  v1 = *v0;
  v2 = sub_23C0E9A10();
  v3 = MEMORY[0x23EEC6FB0](v2);

  return v3;
}

uint64_t sub_23C0B49D8()
{
  v1 = *v0;
  sub_23C0E9A10();
  sub_23C0E9A60();
}

uint64_t sub_23C0B4A2C()
{
  v1 = *v0;
  sub_23C0E9A10();
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v2 = sub_23C0E9DE0();

  return v2;
}

uint64_t sub_23C0B4AA8(uint64_t a1, id *a2)
{
  result = sub_23C0E99F0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C0B4B20(uint64_t a1, id *a2)
{
  v3 = sub_23C0E9A00();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23C0B4BA0@<X0>(uint64_t *a1@<X8>)
{
  sub_23C0E9A10();
  v2 = sub_23C0E99E0();

  *a1 = v2;
  return result;
}

uint64_t sub_23C0B4BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23C0E9A10();
  v6 = v5;
  if (v4 == sub_23C0E9A10() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23C0E9D90();
  }

  return v9 & 1;
}

uint64_t sub_23C0B4C6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23C0E99E0();

  *a2 = v5;
  return result;
}

uint64_t sub_23C0B4CB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23C0E9A10();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23C0B4CE0(uint64_t a1)
{
  v2 = sub_23C0B5514(&qword_27E1EE848, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);
  v3 = sub_23C0B5514(&qword_27E1EE850, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t sub_23C0B4DE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23C0B4E34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C0B4E90(uint64_t *a1, int a2)
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

uint64_t sub_23C0B4ED8(uint64_t result, int a2, int a3)
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

void type metadata accessor for AVInputContextSetInputDeviceOptionsKey()
{
  if (!qword_27E1EE7A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E1EE7A0);
    }
  }
}

uint64_t sub_23C0B5068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23C0B3830();
}

unint64_t sub_23C0B5070()
{
  result = qword_27E1EE7C8;
  if (!qword_27E1EE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7C0, &qword_23C0EA800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D0, &qword_23C0EA808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D8, &qword_23C0EA810);
    sub_23C0E9880();
    sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE7C8);
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

unint64_t sub_23C0B51F4()
{
  result = qword_27E1EE7E8;
  if (!qword_27E1EE7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE7E8);
  }

  return result;
}

uint64_t sub_23C0B5244@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_23C0B4000(a1);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C0B5298(_OWORD *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_23C0B4184(a1);
}

uint64_t sub_23C0B52A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23C0B426C();
}

unint64_t sub_23C0B52AC()
{
  result = qword_27E1EE800;
  if (!qword_27E1EE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
    sub_23C0B5330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE800);
  }

  return result;
}

unint64_t sub_23C0B5330()
{
  result = qword_27E1EE808;
  if (!qword_27E1EE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE808);
  }

  return result;
}

unint64_t sub_23C0B5384()
{
  result = qword_27E1EE810;
  if (!qword_27E1EE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7F8, &qword_23C0EA820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
    sub_23C0B52AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE810);
  }

  return result;
}

unint64_t sub_23C0B5454()
{
  result = qword_27E1EE838;
  if (!qword_27E1EE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE828, &qword_23C0EA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE838);
  }

  return result;
}

unint64_t sub_23C0B54B8()
{
  result = qword_27E1EE840;
  if (!qword_27E1EE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE840);
  }

  return result;
}

uint64_t sub_23C0B5514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C0B5594(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23C0B55E0()
{
  v2 = [*v0 inputDevice];
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_23C0B5650(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a2)
  {
    v5 = sub_23C0E99E0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 userPreferredInputDevice_];

  v7 = *(v3 + 8);

  return v7(v6);
}

uint64_t sub_23C0B56E8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C0B57A4;

  return sub_23C0B5A78(a1, a2);
}

uint64_t sub_23C0B57A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23C0B58A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE868, qword_23C0EA920);
  return sub_23C0E9B60();
}

uint64_t sub_23C0B5900(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_23C0B597C(a1, a2);
  v5 = *(v3 + 8);

  return v5();
}

id sub_23C0B597C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_23C0E99E0();
  }

  else
  {
    v3 = 0;
  }

  v8[0] = 0;
  v4 = [v2 clearUserPreferredInputDevice:v3 error:v8];

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_23C0E9770();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C0B5A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE868, qword_23C0EA920);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[19] = v7;
  if (a2)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey();
    sub_23C0B5F6C();
    v8 = sub_23C0E99B0();
  }

  else
  {
    v8 = 0;
  }

  v2[20] = v8;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_23C0B5CCC;
  swift_continuation_init();
  v2[17] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 14);
  sub_23C0B5E60();
  sub_23C0E9B50();
  (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_23C0B58A0;
  v2[13] = &block_descriptor;
  [v11 setInputDevice:a1 options:v8 completionHandler:v2 + 10];
  (*(v5 + 8))(boxed_opaque_existential_0, v4);

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_23C0B5CCC()
{
  v1 = *(*v0 + 152);
  v5 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v5 + 8);

  return v3(v2);
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

unint64_t sub_23C0B5E60()
{
  result = qword_27E1EE870;
  if (!qword_27E1EE870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE870);
  }

  return result;
}

uint64_t sub_23C0B5EBC(uint64_t a1, uint64_t a2)
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

unint64_t sub_23C0B5F6C()
{
  result = qword_27E1EE848;
  if (!qword_27E1EE848)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE848);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_23C0B6008()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23C0E9790();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23C0E99D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  sub_23C0E99C0();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  sub_23C0E9780();
  sub_23C0E9A20();
  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v1 selector:sel_sceneDidEnterBackground name:*MEMORY[0x277D76E58] object:0];
  [v8 addObserver:v1 selector:sel_sceneWillEnterForeground name:*MEMORY[0x277D76E80] object:0];
  v25 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
  type metadata accessor for MicrophoneSelectionViewModel();

  sub_23C0E9950();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE898, &qword_23C0EA9A8));
  v10 = sub_23C0E98A0();
  v11 = [v10 view];
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [v12 setFrame_];
    [v12 setAutoresizingMask_];
    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;

      [v24 addSubview_];

      [v1 addChildViewController_];
      [v10 didMoveToParentViewController_];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23C0B63A0(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewIsAppearing_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        if (![v6 activationState])
        {
          v7 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
          if (*(v7 + 112) != 1)
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_23C0B7060();
            sub_23C0E97A0();

            return;
          }

          *(v7 + 112) = 1;
          sub_23C0BC138();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0B6554(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
  if (*(v3 + 112))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }

  else
  {
    *(v3 + 112) = 0;
    return sub_23C0BC138();
  }
}

void sub_23C0B667C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id sub_23C0B675C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel;
  v9 = type metadata accessor for MicrophoneManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v27[3] = v9;
  v27[4] = &off_284EE1610;
  v27[0] = sub_23C0E317C(0, 0, 2);
  v12 = type metadata accessor for MicrophoneSelectionViewModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v27, v9);
  v17 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_23C0B7108(*v19, v15);
  __swift_destroy_boxed_opaque_existential_0(v27);
  *&v4[v8] = v21;
  if (a2)
  {
    v22 = sub_23C0E99E0();
  }

  else
  {
    v22 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v22, a3);

  return v23;
}

id sub_23C0B69F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel;
  v6 = type metadata accessor for MicrophoneManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v23[3] = v6;
  v23[4] = &off_284EE1610;
  v23[0] = sub_23C0E317C(0, 0, 2);
  v9 = type metadata accessor for MicrophoneSelectionViewModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v6);
  v14 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_23C0B7108(*v16, v12);
  __swift_destroy_boxed_opaque_existential_0(v23);
  *&v2[v5] = v18;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithCoder_, a1);

  if (v19)
  {
  }

  return v19;
}

id sub_23C0B6C2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C0B6C98()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel);
  if (*(v1 + 112))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }

  else
  {
    *(v1 + 112) = 0;
    return sub_23C0BC138();
  }
}

uint64_t sub_23C0B6D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel);
  if (*(v1 + 112) == 1)
  {
    *(v1 + 112) = 1;
    return sub_23C0BC138();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

void sub_23C0B6EA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_23C0B6F74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  *a2 = *(v3 + 112);
  return result;
}

unint64_t sub_23C0B7060()
{
  result = qword_27E1EE820;
  if (!qword_27E1EE820)
  {
    type metadata accessor for MicrophoneSelectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE820);
  }

  return result;
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

uint64_t sub_23C0B7108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  v45 = *(v4 - 8);
  v46 = v4;
  v48 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v41 - v17;
  v49 = &v41 - v17;
  v51 = type metadata accessor for MicrophoneManager();
  v52 = &off_284EE1610;
  v50[0] = a1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 112) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  sub_23C0E97C0();
  sub_23C0B7660(v50, a2 + 72);
  v42 = sub_23C0E9BD0();
  v19 = *(v42 - 8);
  v41 = *(v19 + 56);
  v43 = v19 + 56;
  v41(v18, 1, 1, v42);
  v20 = __swift_project_boxed_opaque_existential_0(v50, v51);
  v21 = *(v9 + 16);
  v21(v14, *v20 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream, v8);
  v22 = swift_allocObject();
  swift_weakInit();
  v21(v12, v14, v8);
  sub_23C0E9B90();

  v23 = sub_23C0E9B80();
  (*(v9 + 8))(v14, v8);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  (*(v9 + 32))(v25 + v24, v12, v8);
  *(v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v27 = v49;
  sub_23C0DE678(0, 0, v49, &unk_23C0EA998, v25);

  v41(v27, 1, 1, v42);
  v28 = __swift_project_boxed_opaque_existential_0(v50, v51);
  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 16);
  v32 = v46;
  v31(v44, *v28 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream, v46);
  v33 = swift_allocObject();
  swift_weakInit();

  v34 = v47;
  v35 = v32;
  v31(v47, v30, v32);

  v36 = sub_23C0E9B80();
  (*(v29 + 8))(v30, v32);
  v37 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v38 = (v48 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = MEMORY[0x277D85700];
  (*(v29 + 32))(v39 + v37, v34, v35);
  *(v39 + v38) = v33;

  sub_23C0DE678(0, 0, v49, &unk_23C0EA9A0, v39);

  __swift_destroy_boxed_opaque_existential_0(v50);
  return a2;
}

uint64_t sub_23C0B7660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C0B76C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0B7710(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C0B7B5C;

  return sub_23C0B83A8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_3Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_23C0B7924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C0B7A50;

  return sub_23C0BA204(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23C0B7A50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C0B7B60@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_23C0B7060();
  sub_23C0E97B0();

  v3 = v1[3];
  v4 = v10[4];
  v5 = v10[5];
  v6 = v10[6];
  v8 = v10[7];
  v7 = v10[8];
  result = sub_23C0B4DE4(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t sub_23C0B7C14(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v5 = &v15[-v4];
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a1;
    v8 = *(a1 + 32);
    v16 = *(a1 + 16);
    v17 = v8;
    v18[0] = v7;
    v18[1] = v6;
    v19 = v16;
    v20 = v8;
    sub_23C0BDA20(a1, v15);
    sub_23C0BD974(v18, v15);
    sub_23C0BD974(&v19, v15);
    sub_23C0BD974(&v20, v15);
    sub_23C0B81E4(a1);
    v9 = sub_23C0E9BD0();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_23C0E9B90();

    v11 = sub_23C0E9B80();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = v7;
    *(v12 + 48) = v6;
    v14 = v17;
    *(v12 + 56) = v16;
    *(v12 + 72) = v14;

    sub_23C0DE678(0, 0, v5, &unk_23C0EABB0, v12);
  }

  return result;
}

uint64_t sub_23C0B7DD8()
{
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  v1 = *(v0 + 16);
}

uint64_t sub_23C0B7E4C(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    *(v1 + 112) = a1 & 1;

    return sub_23C0BC138();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

uint64_t sub_23C0B7F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  *a2 = *(v3 + 16);
}

uint64_t sub_23C0B7FCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23C0B7FF8(v4);
}

uint64_t sub_23C0B7FF8(uint64_t a1)
{
  if (sub_23C0D8C90(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

uint64_t sub_23C0B810C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return sub_23C0B4DE4(v4, v5);
}

uint64_t sub_23C0B8198(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = *a2;
  sub_23C0BDA20(v6, &v5);
  return sub_23C0B81E4(v6);
}

uint64_t sub_23C0B81E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v14[0] = *(v1 + 24);
  v14[1] = v3;
  v14[2] = *(v1 + 56);
  sub_23C0BDA20(v14, v13);
  v4 = sub_23C0BDD8C(v14, a1);
  sub_23C0BD90C(v14);
  if (v4)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v13[0] = v1;
    sub_23C0B7060();
    sub_23C0E97A0();
    sub_23C0BD90C(a1);
  }

  else
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);
    v11 = *(v1 + 64);
    v12 = *(a1 + 16);
    *(v1 + 24) = *a1;
    *(v1 + 40) = v12;
    *(v1 + 56) = *(a1 + 32);
    return sub_23C0B4E34(v6, v7);
  }
}

uint64_t sub_23C0B8318(void *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[1];
  *(a1 + 3) = *a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  *(a1 + 5) = v4;
  *(a1 + 7) = a2[2];
  sub_23C0BDA20(a2, &v10);
  return sub_23C0B4E34(v2, v3);
}

uint64_t sub_23C0B83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1EE8C8, &qword_23C0EAB98);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = sub_23C0E9B90();
  v5[13] = sub_23C0E9B80();
  v10 = sub_23C0E9B40();
  v5[14] = v10;
  v5[15] = v9;

  return MEMORY[0x2822009F8](sub_23C0B84AC, v10, v9);
}

uint64_t sub_23C0B84AC()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  sub_23C0E9C00();
  swift_beginAccess();
  v4 = v0[12];
  v5 = sub_23C0E9B80();
  v0[16] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_23C0B85A8;
  v8 = v0[11];
  v9 = v0[9];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v5, v10, v9);
}

uint64_t sub_23C0B85A8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23C0B86EC, v5, v4);
}

uint64_t sub_23C0B86EC()
{
  if (v0[5] && (v1 = v0[8], , Strong = swift_weakLoadStrong(), (v0[18] = Strong) != 0))
  {
    v3 = Strong;
    swift_getKeyPath();
    v0[6] = v3;
    sub_23C0B7060();
    sub_23C0E97B0();

    if (*(v3 + 112) == 1)
    {
      v4 = swift_task_alloc();
      v0[19] = v4;
      *v4 = v0;
      v4[1] = sub_23C0B88F8;

      return sub_23C0B8C8C();
    }

    else
    {

      v8 = v0[12];
      v9 = sub_23C0E9B80();
      v0[16] = v9;
      v10 = *(MEMORY[0x277D85798] + 4);
      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_23C0B85A8;
      v12 = v0[11];
      v13 = v0[9];
      v14 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 5, v9, v14, v13);
    }
  }

  else
  {
    v6 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0B88F8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_23C0B8A38;
  v5 = *(v1 + 144);

  return sub_23C0B9460();
}

uint64_t sub_23C0B8A38()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23C0B8B58, v4, v3);
}

uint64_t sub_23C0B8B58()
{
  v1 = v0[18];

  v2 = v0[12];
  v3 = sub_23C0E9B80();
  v0[16] = v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_23C0B85A8;
  v6 = v0[11];
  v7 = v0[9];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v3, v8, v7);
}

uint64_t sub_23C0B8C1C()
{
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  return *(v0 + 112);
}

uint64_t sub_23C0B8C8C()
{
  v1[3] = v0;
  v1[4] = sub_23C0E9B90();
  v1[5] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23C0B8D28, v3, v2);
}

uint64_t sub_23C0B8D28()
{
  v1 = v0[4];
  v0[8] = *__swift_project_boxed_opaque_existential_0((v0[3] + 72), *(v0[3] + 96));
  v0[9] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_23C0B8DC8, v3, v2);
}

uint64_t sub_23C0B8DC8()
{
  v1 = *(*(v0 + 64) + 16);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23C0B8E5C;

  return sub_23C0CB0EC();
}

uint64_t sub_23C0B8E5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_23C0B8F84, v5, v4);
}

uint64_t sub_23C0B8F84()
{
  v1 = v0[9];

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_23C0B9024;
  v3 = v0[13];
  v4 = v0[3];

  return sub_23C0BA8CC(v3);
}

uint64_t sub_23C0B9024(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_23C0B914C, v5, v4);
}

uint64_t sub_23C0B914C()
{
  v1 = v0[15];
  v2 = v0[3];
  swift_getKeyPath();
  v0[2] = v2;
  sub_23C0B7060();
  sub_23C0E97B0();

  v3 = sub_23C0D8C90(v1, *(v2 + 16));

  if (v3)
  {
    v4 = v0[13];
    v5 = v0[5];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_23C0B92A4;
    v9 = v0[13];
    v10 = v0[3];

    return sub_23C0BA8CC(v9);
  }
}

uint64_t sub_23C0B92A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_23C0B93F0, v6, v5);
}

uint64_t sub_23C0B93F0()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[3];

  sub_23C0B7FF8(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0B9460()
{
  v1[45] = v0;
  v1[46] = sub_23C0E9B90();
  v1[47] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v1[48] = v3;
  v1[49] = v2;

  return MEMORY[0x2822009F8](sub_23C0B94FC, v3, v2);
}

uint64_t sub_23C0B94FC()
{
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  v0[50] = __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[Settings] updateSelectedInput()", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v6 = v0[45];
  v5 = v0[46];

  v0[51] = *__swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));
  v0[52] = sub_23C0E9B80();
  v8 = sub_23C0E9B40();
  v0[53] = v8;
  v0[54] = v7;

  return MEMORY[0x2822009F8](sub_23C0B965C, v8, v7);
}

uint64_t sub_23C0B965C()
{
  v1 = *(*(v0 + 408) + 16);
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  v2[1] = sub_23C0B96F8;

  return sub_23C0CBDF4(v0 + 160);
}

uint64_t sub_23C0B96F8()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v6 = *v0;

  v3 = *(v1 + 432);
  v4 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_23C0B9818, v4, v3);
}

uint64_t sub_23C0B9818()
{
  v1 = *(v0 + 416);

  v2 = swift_task_alloc();
  *(v0 + 448) = v2;
  *v2 = v0;
  v2[1] = sub_23C0B98BC;
  v3 = *(v0 + 360);

  return sub_23C0BCEA8(v0 + 112, (v0 + 160));
}

uint64_t sub_23C0B98BC()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v7 = *v0;

  v3 = *(v1 + 128);
  *(v1 + 456) = *(v1 + 112);
  *(v1 + 472) = v3;
  *(v1 + 488) = *(v1 + 144);
  sub_23C0BD90C(v1 + 160);
  v4 = *(v1 + 392);
  v5 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_23C0B9A08, v5, v4);
}

uint64_t sub_23C0B9A08()
{
  v44 = v0;
  v1 = v0[50];
  v2 = v0[15];
  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C90();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23C0B2000, v3, v4, "[ui][settings] Mark >", v6, 2u);
      MEMORY[0x23EEC78E0](v6, -1, -1);
    }

    v7 = v0[50];

    sub_23C0BDA20((v0 + 14), (v0 + 26));
    v8 = sub_23C0E9820();
    v9 = sub_23C0E9C90();
    sub_23C0BD90C((v0 + 14));
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[60];
    if (v10)
    {
      v12 = v0[58];
      v13 = v0[59];
      v14 = v0[57];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      v42 = v14;
      *v15 = 136315138;
      v43 = v12;

      MEMORY[0x23EEC6F40](45, 0xE100000000000000);
      MEMORY[0x23EEC6F40](v13, v11);
      v17 = sub_23C0D8D20(v42, v12, &v41);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_23C0B2000, v8, v9, "[ui:mark][settings] preferredMicrophone: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23EEC78E0](v16, -1, -1);
      MEMORY[0x23EEC78E0](v15, -1, -1);
    }

    else
    {
      v22 = v0[58];
    }

    v23 = v0[62];
    v24 = v0[47];

    v26 = v0[61];
    v25 = v0[62];
    v28 = v0[59];
    v27 = v0[60];
    v30 = v0[57];
    v29 = v0[58];
    v31 = v0[45];
    v0[2] = v30;
    v0[3] = v29;
    v0[4] = v28;
    v0[5] = v27;
    v0[6] = v26;
    v0[7] = v25;

    swift_getKeyPath();
    v0[44] = v31;
    sub_23C0B7060();
    sub_23C0E97B0();

    v33 = v31[3];
    v32 = v31[4];
    v35 = v31[5];
    v34 = v31[6];
    v36 = v31[7];
    v37 = v31[8];
    if (v29)
    {
      if (v32)
      {
        if (v30 == v33 && v29 == v32)
        {
          sub_23C0B4E34(v30, v29);
LABEL_21:
          sub_23C0B4E34(v30, v29);
          goto LABEL_22;
        }

        v39 = sub_23C0E9D90();
        sub_23C0B4E34(v30, v29);
        if (v39)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else if (!v32)
    {
LABEL_22:
      v40 = v0[1];

      return v40();
    }

    sub_23C0B4DE4(v33, v32);
    sub_23C0B4E34(v30, v29);
    sub_23C0B4E34(v33, v32);
LABEL_19:
    v38 = v0[45];
    sub_23C0B81E4((v0 + 2));
    goto LABEL_22;
  }

  if (v5)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23C0B2000, v3, v4, "[ui][settings] Mark on Automatic", v18, 2u);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[63] = v19;
  *v19 = v0;
  v19[1] = sub_23C0B9E74;
  v20 = v0[45];

  return sub_23C0BB728((v0 + 8));
}

uint64_t sub_23C0B9E74()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v6 = *v0;

  *(v1 + 512) = *(v1 + 64);
  *(v1 + 528) = *(v1 + 80);
  *(v1 + 536) = *(v1 + 88);
  *(v1 + 552) = *(v1 + 104);
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_23C0B9FDC, v4, v3);
}

uint64_t sub_23C0B9FDC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 520);
  v4 = *(v0 + 376);

  v5 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v5;
  *(v0 + 288) = *(v0 + 96);
  sub_23C0BD974(v0 + 256, v0 + 304);
  sub_23C0BD974(v0 + 272, v0 + 320);
  sub_23C0BD974(v0 + 288, v0 + 336);
  v6 = *(v0 + 512);
  *(v0 + 16) = v6;
  v7 = *(v0 + 544);
  v8 = *(v0 + 528);
  v9 = *(v0 + 360);
  *(v0 + 24) = v3;
  *(v0 + 32) = v8;
  *(v0 + 40) = v2;
  *(v0 + 48) = v7;
  *(v0 + 56) = v1;
  swift_getKeyPath();
  *(v0 + 352) = v9;
  sub_23C0B7060();
  sub_23C0E97B0();

  v10 = v9[3];
  v11 = v9[4];
  v12 = v9[5];
  v13 = v9[6];
  v14 = v9[7];
  v15 = v9[8];
  if (!v3)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
LABEL_10:
    sub_23C0B4DE4(v10, v11);
    sub_23C0B4E34(v6, v3);
    sub_23C0B4E34(v10, v11);
    goto LABEL_11;
  }

  if (v6 != v10 || v11 != v3)
  {
    v17 = sub_23C0E9D90();
    sub_23C0B4E34(v6, v3);
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_11:
    v18 = *(v0 + 360);
    sub_23C0B81E4(v0 + 16);
    goto LABEL_14;
  }

  sub_23C0B4E34(v6, v3);
LABEL_13:
  sub_23C0B4E34(v6, v3);
LABEL_14:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23C0BA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8C0, &unk_23C0EAB80);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = sub_23C0E9B90();
  v5[18] = sub_23C0E9B80();
  v10 = sub_23C0E9B40();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x2822009F8](sub_23C0BA308, v10, v9);
}

uint64_t sub_23C0BA308()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  sub_23C0E9C00();
  swift_beginAccess();
  v4 = v0[17];
  v5 = sub_23C0E9B80();
  v0[21] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_23C0BA404;
  v8 = v0[16];
  v9 = v0[14];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v5, v10, v9);
}

uint64_t sub_23C0BA404()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23C0BA548, v5, v4);
}

uint64_t sub_23C0BA548()
{
  if (!v0[3])
  {
    goto LABEL_7;
  }

  v1 = v0[5];
  v2 = v0[7];
  v3 = v0[13];

  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    v0[11] = v5;
    sub_23C0B7060();
    sub_23C0E97B0();

    if (*(v5 + 112))
    {
      v6 = swift_task_alloc();
      v0[24] = v6;
      *v6 = v0;
      v6[1] = sub_23C0BA6E8;

      return sub_23C0B9460();
    }

    v9 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
LABEL_7:
    v8 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23C0BA6E8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23C0BA808, v4, v3);
}

uint64_t sub_23C0BA808()
{
  v1 = v0[23];

  v2 = v0[17];
  v3 = sub_23C0E9B80();
  v0[21] = v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_23C0BA404;
  v6 = v0[16];
  v7 = v0[14];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v3, v8, v7);
}

uint64_t sub_23C0BA8CC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_23C0E9B90();
  v2[10] = sub_23C0E9B80();
  v4 = sub_23C0E9B40();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](sub_23C0BA964, v4, v3);
}

uint64_t sub_23C0BA964()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_23C0BAA48;
    v2 = v0[9];

    return sub_23C0BB728((v0 + 2));
  }

  else
  {
    v4 = v0[10];

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }
}

uint64_t sub_23C0BAA48()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_23C0BAB68, v4, v3);
}

uint64_t sub_23C0BAB68()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
  v3 = swift_allocObject();
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v3[1] = xmmword_23C0EA9C0;
  v3[2] = v4;
  v6 = *(v0 + 48);
  v3[3] = v5;
  v3[4] = v6;
  v10 = v3;

  sub_23C0BDBB0(v7);
  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_23C0BAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[23] = sub_23C0E9B90();
  v5[24] = sub_23C0E9B80();
  v7 = sub_23C0E9B40();
  v5[25] = v7;
  v5[26] = v6;

  return MEMORY[0x2822009F8](sub_23C0BACBC, v7, v6);
}

uint64_t sub_23C0BACBC()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_23C0BADB4;

    return sub_23C0BB728((v0 + 2));
  }

  else
  {
    v5 = v0[24];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23C0BADB4()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23C0BAED4, v4, v3);
}

uint64_t sub_23C0BAED4()
{
  v1 = *(v0 + 176);
  v2 = *v1;
  *(v0 + 232) = *v1;
  v3 = v1[1];
  *(v0 + 240) = v3;
  *(v0 + 88) = *(v0 + 16);
  if (v2 == *(v0 + 88) && v3 == *(v0 + 96))
  {
    sub_23C0BE29C(v0 + 88);
    *(v0 + 136) = *(v0 + 32);
    sub_23C0BE29C(v0 + 136);
    *(v0 + 152) = *(v0 + 48);
    sub_23C0BE29C(v0 + 152);
  }

  else
  {
    v5 = sub_23C0E9D90();
    sub_23C0BE29C(v0 + 88);
    *(v0 + 104) = *(v0 + 32);
    sub_23C0BE29C(v0 + 104);
    *(v0 + 120) = *(v0 + 48);
    sub_23C0BE29C(v0 + 120);
    if ((v5 & 1) == 0)
    {
      v6 = *(v0 + 184);
      *(v0 + 288) = *__swift_project_boxed_opaque_existential_0((*(v0 + 216) + 72), *(*(v0 + 216) + 96));
      *(v0 + 296) = sub_23C0E9B80();
      v7 = sub_23C0E9B40();
      v9 = v8;
      *(v0 + 304) = v7;
      *(v0 + 312) = v8;
      v10 = sub_23C0BB278;
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 184);
  *(v0 + 248) = *__swift_project_boxed_opaque_existential_0((*(v0 + 216) + 72), *(*(v0 + 216) + 96));
  *(v0 + 256) = sub_23C0E9B80();
  v7 = sub_23C0E9B40();
  v9 = v12;
  *(v0 + 264) = v7;
  *(v0 + 272) = v12;
  v10 = sub_23C0BB05C;
LABEL_9:

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_23C0BB05C()
{
  v1 = *(*(v0 + 248) + 16);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_23C0BB0F4;

  return sub_23C0CC8A4(0);
}

uint64_t sub_23C0BB0F4()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 272);
  v4 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_23C0BB214, v4, v3);
}

uint64_t sub_23C0BB214()
{
  v1 = v0[32];

  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x2822009F8](sub_23C0BE2FC, v2, v3);
}

uint64_t sub_23C0BB278()
{
  v1 = *(v0[36] + 16);
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_23C0BB328;
  v4 = v0[29];
  v3 = v0[30];

  return sub_23C0D96F0(v4, v3);
}

uint64_t sub_23C0BB328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = a1;

  v4 = *(v2 + 312);
  v5 = *(v2 + 304);

  return MEMORY[0x2822009F8](sub_23C0BB450, v5, v4);
}

uint64_t sub_23C0BB450()
{
  v1 = v0[41];
  if (v1)
  {
    v2 = *(v0[36] + 16);
    v3 = swift_task_alloc();
    v0[42] = v3;
    *v3 = v0;
    v3[1] = sub_23C0BB530;

    return sub_23C0C7564(v1, 0);
  }

  else
  {
    v5 = v0[37];

    v6 = v0[25];
    v7 = v0[26];

    return MEMORY[0x2822009F8](sub_23C0BB6BC, v6, v7);
  }
}

uint64_t sub_23C0BB530()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v6 = *v0;

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_23C0BB650, v4, v3);
}

uint64_t sub_23C0BB650()
{
  v1 = v0[41];
  v2 = v0[37];

  v3 = v0[25];
  v4 = v0[26];

  return MEMORY[0x2822009F8](sub_23C0BB6BC, v3, v4);
}

uint64_t sub_23C0BB6BC()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0BB728(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_23C0E9790() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = *(*(sub_23C0E99D0() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_23C0E9BD0();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_23C0E9B90();
  v2[16] = sub_23C0E9B80();
  v9 = sub_23C0E9B40();
  v2[17] = v9;
  v2[18] = v8;

  return MEMORY[0x2822009F8](sub_23C0BB878, v9, v8);
}

uint64_t sub_23C0BB878()
{
  v1 = v0[15];
  v0[19] = *__swift_project_boxed_opaque_existential_0((v0[9] + 72), *(v0[9] + 96));
  v0[20] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v0[21] = v3;
  v0[22] = v2;

  return MEMORY[0x2822009F8](sub_23C0BB91C, v3, v2);
}

uint64_t sub_23C0BB944()
{
  v1 = *(*(v0 + 184) + 104);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_23C0BB968, v1, 0);
}

uint64_t sub_23C0BB968()
{
  v1 = v0[24];
  v2 = v1[14];
  v0[25] = v2;
  v3 = v1[15];
  v0[26] = v3;
  v0[27] = v1[16];
  v0[28] = v1[17];
  v0[29] = v1[18];
  v0[30] = v1[19];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0BBA00, 0, 0);
}

uint64_t sub_23C0BBA00()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    *(v0 + 296) = *(v0 + 232);
    *(v0 + 304) = v2;
    *(v0 + 280) = v3;
    *(v0 + 264) = v4;
    *(v0 + 272) = v1;
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);

    return MEMORY[0x2822009F8](sub_23C0BBD70, v5, v6);
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = *(*(v0 + 184) + 16);
    v9 = swift_allocObject();
    *(v0 + 248) = v9;
    swift_weakInit();
    sub_23C0E9BB0();
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_23C0BBB8C;
    v11 = *(v0 + 112);

    return (sub_23C0E0914)(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v11, &unk_23C0EAB30, v9);
  }
}

uint64_t sub_23C0BBB8C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 96);
  v13 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 56);
  v9 = *(v1 + 16);
  v8 = *(v1 + 32);
  *(v1 + 296) = *(v1 + 48);
  *(v1 + 304) = v7;
  *(v1 + 280) = v8;
  *(v1 + 264) = v9;
  v10 = *(v1 + 176);
  v11 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_23C0BBD70, v11, v10);
}

uint64_t sub_23C0BBD70()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](sub_23C0BBDD4, v2, v3);
}

uint64_t sub_23C0BBDD4()
{
  v35 = v0;
  v1 = v0[16];

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[34];
  v5 = sub_23C0E9830();
  __swift_project_value_buffer(v5, qword_27E1EF4F8);

  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[38];
    v10 = v0[35];
    v9 = v0[36];
    v12 = v0[33];
    v11 = v0[34];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    v33 = v12;
    *v13 = 136315138;
    v34 = v11;

    MEMORY[0x23EEC6F40](45, 0xE100000000000000);
    MEMORY[0x23EEC6F40](v10, v9);

    v15 = sub_23C0D8D20(v33, v11, &v32);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_23C0B2000, v6, v7, "[ui:mark] fallbackMicrophone: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEC78E0](v14, -1, -1);
    MEMORY[0x23EEC78E0](v13, -1, -1);
  }

  v16 = v0[11];
  sub_23C0E99C0();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v18 = v0[37];
  v31 = v0[38];
  v20 = v0[35];
  v19 = v0[36];
  v21 = v0[34];
  v22 = v0[14];
  v23 = v0[10];
  v24 = v0[11];
  v25 = v0[8];
  sub_23C0E9780();
  v33 = sub_23C0E9A20();
  v34 = v26;
  MEMORY[0x23EEC6F40](8250, 0xE200000000000000);

  MEMORY[0x23EEC6F40](v20, v19);

  v27 = v33;
  v28 = v34;

  *v25 = 0x6974616D6F747561;
  v25[1] = 0xE900000000000063;
  v25[2] = v27;
  v25[3] = v28;
  v25[4] = v18;
  v25[5] = v31;
  v29 = v0[1];

  return v29();
}

uint64_t sub_23C0BC138()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  swift_getKeyPath();
  v26 = v0;
  sub_23C0B7060();
  sub_23C0E97B0();

  if (*(v0 + 112) == 1)
  {
    v6 = __swift_project_boxed_opaque_existential_0((v0 + 72), *(v0 + 96));
    v7 = *v6;
    v8 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
    if ((*(*v6 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering) & 1) == 0)
    {
      v9 = sub_23C0E9BD0();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      sub_23C0E9B90();

      v10 = sub_23C0E9B80();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v7;
      sub_23C0DE678(0, 0, v5, &unk_23C0EAAC8, v11);

      *(v7 + v8) = 1;
    }

    v13 = sub_23C0E9BD0();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    sub_23C0E9B90();

    v15 = sub_23C0E9B80();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;

    v18 = &unk_23C0EAAD8;
    v19 = v5;
    v20 = v16;
  }

  else
  {
    v21 = sub_23C0E9BD0();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_23C0E9B90();

    v22 = sub_23C0E9B80();
    v20 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v20[2] = v22;
    v20[3] = v23;
    v20[4] = v1;
    v18 = &unk_23C0EAAC0;
    v19 = v5;
  }

  sub_23C0DE678(0, 0, v19, v18, v20);
}

uint64_t sub_23C0BC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_23C0E9B90();
  v4[6] = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_23C0BC4F4, v6, v5);
}

uint64_t sub_23C0BC4F4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_23C0BC5E4;

    return sub_23C0B8C8C();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23C0BC5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_23C0BC724;
  v5 = *(v1 + 72);

  return sub_23C0B9460();
}

uint64_t sub_23C0BC724()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23C0BC844, v4, v3);
}

uint64_t sub_23C0BC844()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0BC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23C0E9BD0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = sub_23C0E9B90();
  v4[7] = sub_23C0E9B80();
  v9 = sub_23C0E9B40();
  v4[8] = v9;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_23C0BC9A8, v9, v8);
}

uint64_t sub_23C0BC9A8()
{
  v1 = v0[6];
  v0[10] = *__swift_project_boxed_opaque_existential_0((v0[2] + 72), *(v0[2] + 96));
  v0[11] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v0[12] = v3;
  v0[13] = v2;

  return MEMORY[0x2822009F8](sub_23C0BCA4C, v3, v2);
}

uint64_t sub_23C0BCA4C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
  v0[14] = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
  if (*(v1 + v2) == 1)
  {
    v0[15] = *(v1 + 16);
    v3 = sub_23C0BCAF0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v0[11];

    v4 = v0[8];
    v5 = v0[9];
    v3 = sub_23C0BCE0C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23C0BCAF0()
{
  v1 = v0[5];
  v2 = *(v0[15] + 16);
  v0[16] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_23C0BCC14;
  v4 = v0[5];

  return sub_23C0E199C();
}

uint64_t sub_23C0BCC14()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0BCD88, 0, 0);
}

uint64_t sub_23C0BCDA0()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  *(v3 + v1) = 0;
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2822009F8](sub_23C0BCE0C, v4, v5);
}

uint64_t sub_23C0BCE0C()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0BCEA8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 88) = *a2;
  *(v3 + 104) = v4;
  *(v3 + 120) = a2[2];
  *(v3 + 136) = sub_23C0E9B90();
  *(v3 + 144) = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  *(v3 + 152) = v6;
  *(v3 + 160) = v5;

  return MEMORY[0x2822009F8](sub_23C0BCF5C, v6, v5);
}

uint64_t sub_23C0BCF5C()
{
  v1 = *(v0 + 72);
  *(v0 + 168) = *v1;
  v2 = v1[1];
  *(v0 + 176) = v2;
  *(v0 + 184) = v1[2];
  *(v0 + 192) = v1[3];
  *(v0 + 200) = v1[4];
  *(v0 + 208) = v1[5];
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    *(v0 + 216) = *__swift_project_boxed_opaque_existential_0((*(v0 + 80) + 72), *(*(v0 + 80) + 96));

    *(v0 + 224) = sub_23C0E9B80();
    v8 = sub_23C0E9B40();
    *(v0 + 232) = v8;
    *(v0 + 240) = v7;

    return MEMORY[0x2822009F8](sub_23C0BD0B4, v8, v7);
  }

  else
  {
    v9 = *(v0 + 144);

    v10 = *(v0 + 64);
    v11 = *(v0 + 104);
    v12 = *(v0 + 120);
    *v10 = *(v0 + 88);
    v10[1] = v11;
    v10[2] = v12;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_23C0BD0B4()
{
  v1 = *(*(v0 + 216) + 16);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_23C0BD148;

  return sub_23C0CB0EC();
}

uint64_t sub_23C0BD148(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_23C0BD270, v5, v4);
}

uint64_t sub_23C0BD270()
{
  v1 = v0[28];

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_23C0BD2D4, v2, v3);
}

uint64_t sub_23C0BD2D4()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v15 = *(v0 + 168);
  v16 = *(v0 + 184);
  v4 = *(v0 + 144);

  *(v0 + 16) = v15;
  *(v0 + 32) = v16;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  LOBYTE(v3) = sub_23C0BDCA8(sub_23C0BDFE8, v5, v1);

  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  if (v3)
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
  }

  else
  {
    v11 = *(v0 + 176);

    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0uLL;
  }

  v12 = *(v0 + 64);
  *v12 = v10;
  *(v12 + 16) = v9;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v6;
  v13 = *(v0 + 8);

  return v13();
}

void *MicrophoneSelectionViewModel.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  sub_23C0B4E34(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v6 = OBJC_IVAR____TtC13AVKitSettings28MicrophoneSelectionViewModel___observationRegistrar;
  v7 = sub_23C0E97D0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t MicrophoneSelectionViewModel.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  sub_23C0B4E34(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v6 = OBJC_IVAR____TtC13AVKitSettings28MicrophoneSelectionViewModel___observationRegistrar;
  v7 = sub_23C0E97D0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for MicrophoneSelectionViewModel()
{
  result = qword_27E1EE8A8;
  if (!qword_27E1EE8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C0BD598()
{
  result = sub_23C0E97D0();
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

uint64_t sub_23C0BD678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BC8B0(a1, v4, v5, v6);
}

uint64_t sub_23C0BD72C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7A50;

  return sub_23C0E4734(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C0BD820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BC45C(a1, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23C0BD90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C0BD9D4(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = *a2;
  sub_23C0BDA20(v6, &v5);
  return sub_23C0B81E4(v6);
}

uint64_t sub_23C0BDA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_23C0BDA90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23C0BDBB0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23C0BDA90(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23C0BDCA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 72);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 4);
      v16[0] = *(v7 - 5);
      v16[1] = v12;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v8;
      v16[5] = v9;

      v13 = a1(v16);

      if (v3)
      {
        break;
      }

      v7 += 6;
      v14 = v6-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_23C0BDD8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[2];
  v19 = a2[3];
  v11 = a2[4];
  v17 = a1[3];
  v18 = a2[5];
  if (!v5)
  {
    if (!v3)
    {
      v12 = 0;
      return v12 & 1;
    }

LABEL_9:
    sub_23C0BDA20(a2, v20);
    sub_23C0B4E34(v6, v5);
    sub_23C0B4E34(v4, v3);
    v12 = 1;
    return v12 & 1;
  }

  if (!v3)
  {
    sub_23C0BDA20(a1, v20);
    goto LABEL_9;
  }

  if (v6 == v4 && v3 == v5)
  {
    v12 = 0;
  }

  else
  {
    v13 = a1;
    v14 = sub_23C0E9D90();
    a1 = v13;
    v12 = v14 ^ 1;
  }

  v15 = a1;
  sub_23C0BDA20(a1, v20);
  sub_23C0BDA20(v15, v20);
  sub_23C0BDA20(a2, v20);

  sub_23C0BD90C(v15);
  return v12 & 1;
}

uint64_t sub_23C0BDF14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0BDF4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CA504(a1, v1);
}

uint64_t sub_23C0BDFE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23C0E9D90() & 1;
  }
}

uint64_t sub_23C0BE044(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23C0B7FF8(v4);
}

uint64_t sub_23C0BE070()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_23C0BE0B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C4FE8(a1, v1);
}

uint64_t sub_23C0BE184()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23C0BE1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BAC20(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_23C0BE34C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23C0BE3DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_23C0BE400, 0, 0);
}

uint64_t sub_23C0BE400()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23C0BE5E0();
  *(v2 + 24) = v3;
  *(v2 + 32) = &off_284EE0B08;
  v4 = *(v1 + 16);
  v5 = *(MEMORY[0x277D857E0] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23C0BE4C8;

  return MEMORY[0x282200460](v0 + 2, v4, v3);
}

uint64_t sub_23C0BE4C8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0BE5C4, 0, 0);
}

unint64_t sub_23C0BE5E0()
{
  result = qword_27E1EE950;
  if (!qword_27E1EE950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE950);
  }

  return result;
}

uint64_t sub_23C0BE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23C0BE64C, 0, 0);
}

uint64_t sub_23C0BE64C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_23C0BE740;

    return sub_23C0BE880();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23C0BE740()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0BE858, 0, 0);
}

uint64_t sub_23C0BE8A0()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 144), *(*(v0 + 56) + 168));
  v4 = off_284EE0DC0 + *off_284EE0DC0;
  v1 = *(off_284EE0DC0 + 1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23C0BE9D8;

  return (v4)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0BE9D8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0BEAD4, 0, 0);
}

uint64_t sub_23C0BEAD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
  *(v0 + 104) = (*(v1 + 48))(v3, v1) & 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 80) = off_284EE1608;
    *(v0 + 88) = &off_284EE1608 & 0xFFFFFFFFFFFFLL | 0xAFDC000000000000;
    sub_23C0E9B90();
    *(v0 + 96) = sub_23C0E9B80();
    v6 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0BEC0C, v6, v5);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23C0BEC0C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 104);
  v6 = *(v0 + 56);

  v7 = type metadata accessor for MicrophoneManager();
  v4(v6, v5, v7, &off_284EE15E8);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23C0BECB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  sub_23C0B4E34(v1, v2);
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[25];
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  sub_23C0B4E34(v7, v8);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[30];
  v18 = v0[31];
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 15) = 0u;
  sub_23C0B4E34(v13, v14);
  v19 = v0[32];
  v0[32] = 0;

  v20 = v0[33];
  v21 = v0[34];
  v22 = v0[35];
  v23 = v0[36];
  v24 = v0[37];
  v25 = v0[38];
  *(v0 + 33) = 0u;
  *(v0 + 35) = 0u;
  *(v0 + 37) = 0u;

  return sub_23C0B4E34(v20, v21);
}

uint64_t sub_23C0BED50()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  sub_23C0B4E34(v0[14], v0[15]);
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[25];
  sub_23C0B4E34(v0[20], v0[21]);
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[31];
  sub_23C0B4E34(v0[26], v0[27]);
  v13 = v0[32];

  v14 = v0[35];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[38];
  sub_23C0B4E34(v0[33], v0[34]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23C0BEDD4()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0BEE94, 0, 0);
}

uint64_t sub_23C0BEE94()
{
  v1 = v0[5];
  v2 = *(v0[2] + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_weakInit();
  sub_23C0E9BB0();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23C0BEFB4;
  v5 = v0[5];

  return sub_23C0E199C(sub_23C0E199C, 0xD000000000000010, 0x800000023C0ED580, v5, &unk_23C0EAE80, v3);
}

uint64_t sub_23C0BEFB4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0BF128, 0, 0);
}

uint64_t sub_23C0BF128()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0BF1A8()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_23C0BF320;

    return sub_23C0BF630();
  }

  else
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[11] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v7[1] = sub_23C0BF520;

      return sub_23C0C0358();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_23C0BF320()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0BF438, 0, 0);
}

uint64_t sub_23C0BF438()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_23C0BF520;

    return sub_23C0C0358();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23C0BF520()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23C0BF630()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 64) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0BF6F8, 0, 0);
}

uint64_t sub_23C0BF6F8()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = v0[9];
  sub_23C0E9BB0();
  v3 = sub_23C0E9BD0();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_23C0DFB8C(0, 0, v2, &unk_23C0EB078, v5);

  sub_23C0DAAD8(v2, &qword_27E1EE890, &qword_23C0EA990);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23C0BF88C;
  v7 = v0[8];
  v8 = *MEMORY[0x277D85DE8];

  return sub_23C0C1D80();
}

uint64_t sub_23C0BF88C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 80);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0BF9B4, 0, 0);
}

uint64_t sub_23C0BF9B4()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  v0[11] = __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "... prefetch ", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = [objc_opt_self() auxiliarySession];
  v0[12] = v6;
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = *MEMORY[0x277CB8038];
    v0[5] = 0;
    v10 = [v8 setCategory:v9 withOptions:5 error:v0 + 5];
    v11 = v0[5];
    if (v10)
    {
      v12 = *(v0[8] + 136);
      v0[13] = v12;
      v13 = v11;
      v14 = *(v12 + 16);
      v15 = *(MEMORY[0x277D857E0] + 4);

      v16 = swift_task_alloc();
      v0[14] = v16;
      v17 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
      *v16 = v0;
      v16[1] = sub_23C0BFDEC;
      v18 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282200460](v0 + 7, v14, v17);
    }

    v19 = v11;
    v20 = sub_23C0E9770();

    swift_willThrow();
    v21 = v20;
    v22 = sub_23C0E9820();
    v23 = sub_23C0E9C90();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_23C0D8D20(0xD00000000000002CLL, 0x800000023C0ED530, v36);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_23C0D8D20(0x6863746566657270, 0xEA00000000002928, v36);
      *(v24 + 22) = 2080;
      swift_getErrorValue();
      v27 = v0[2];
      v26 = v0[3];
      v28 = v0[4];
      v29 = sub_23C0E9DB0();
      v31 = sub_23C0D8D20(v29, v30, v36);

      *(v24 + 24) = v31;
      _os_log_impl(&dword_23C0B2000, v22, v23, "%s->%s  error=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v25, -1, -1);
      MEMORY[0x23EEC78E0](v24, -1, -1);
    }

    else
    {
    }
  }

  v32 = v0[9];

  v33 = v0[1];
  v34 = *MEMORY[0x277D85DE8];

  return v33();
}

uint64_t sub_23C0BFDEC()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 112);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0BFF14, 0, 0);
}

uint64_t sub_23C0BFF14()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[7];
  v0[15] = v4;
  [v2 opaqueSessionID];
  v5 = sub_23C0E9E00();
  [v4 setAudioSessionID_];

  v6 = sub_23C0E9B10();
  [v4 setDiscoveryMode:2 forClientIdentifiers:v6];

  v7 = v4;
  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315138;
    v12 = [v7 availableInputDevices];
    v13 = sub_23C0D9D08(0, &qword_27E1EE980, 0x277CB8688);
    v14 = sub_23C0E9B20();

    v15 = MEMORY[0x23EEC7000](v14, v13);
    v17 = v16;

    v18 = sub_23C0D8D20(v15, v17, v23);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_23C0B2000, v8, v9, "... early devices %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_23C0C0194;
  v20 = v0[8];
  v21 = *MEMORY[0x277D85DE8];

  return sub_23C0CBC14();
}

uint64_t sub_23C0C0194()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 128);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0C02BC, 0, 0);
}

uint64_t sub_23C0C02BC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);

  v2 = *(v0 + 72);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_23C0C0358()
{
  v1[27] = v0;
  v2 = sub_23C0E9BD0();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C0418, 0, 0);
}

uint64_t sub_23C0C0418()
{
  v1 = *(*(v0 + 216) + 104);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_23C0C043C, v1, 0);
}

uint64_t sub_23C0C043C()
{
  v1 = v0[31];
  v2 = v1[20];
  v0[32] = v2;
  v3 = v1[21];
  v0[33] = v3;
  v4 = v1[22];
  v0[34] = v1[23];
  v5 = v1[24];
  v0[35] = v1[25];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0C04C4, 0, 0);
}

uint64_t sub_23C0C04C4()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 256);
    *(v0 + 312) = *(v0 + 272);
    *(v0 + 304) = v1;
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_23C0C08D4;
    v4 = *(v0 + 216);

    return sub_23C0D96F0(v2, v1);
  }

  else
  {
    v6 = *(v0 + 240);
    v7 = *(*(v0 + 216) + 16);
    v8 = swift_allocObject();
    *(v0 + 288) = v8;
    swift_weakInit();
    sub_23C0E9BB0();
    v9 = swift_task_alloc();
    *(v0 + 296) = v9;
    *v9 = v0;
    v9[1] = sub_23C0C0694;
    v10 = *(v0 + 240);

    return sub_23C0E1148(v0 + 128, 0xD000000000000019, 0x800000023C0ED600, v10, &unk_23C0EB048, v8);
  }
}

uint64_t sub_23C0C0694()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v7 = *(*v0 + 224);
  v8 = *v0;

  (*(v6 + 8))(v5, v7);
  v9 = v1[17];
  if (v9)
  {
    v10 = v2[21];
    v11 = v2[16];
    v2[39] = v2[19];
    v2[40] = v10;
    v2[38] = v9;
    v12 = swift_task_alloc();
    v2[41] = v12;
    *v12 = v8;
    v12[1] = sub_23C0C08D4;
    v13 = v2[27];

    return sub_23C0D96F0(v11, v9);
  }

  else
  {
    v15 = v2[30];

    v16 = *(v8 + 8);

    return v16();
  }
}

uint64_t sub_23C0C08D4(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_23C0C0A34, 0, 0);
}

uint64_t sub_23C0C0A34()
{
  v32 = v0;
  v1 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_23C0EAC90;
  v4 = *MEMORY[0x277CB8618];
  *(inited + 32) = *MEMORY[0x277CB8618];
  v5 = *(v1 + 24);
  *(v0 + 384) = v5;
  v6 = 0xD000000000000015;
  if (v5)
  {
    v6 = 0xD000000000000023;
    v7 = "userPreferredInputRoute()";
  }

  else
  {
    v7 = "AVKitRoutingService";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v10 = *MEMORY[0x277CB8610];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 104) = v9;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  v11 = v4;
  v12 = v10;
  *(v0 + 344) = sub_23C0E8E3C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
  swift_arrayDestroy();
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 336);
  v14 = *(v0 + 216);
  v15 = sub_23C0E9830();
  *(v0 + 352) = __swift_project_value_buffer(v15, qword_27E1EF4F8);
  v16 = v13;

  v17 = sub_23C0E9820();
  v18 = sub_23C0E9C90();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v19 = 136315394;
    if (v5)
    {
      if (v5 == 1)
      {
        v22 = 0xE600000000000000;
        v23 = 0x7070412D6E49;
      }

      else
      {
        v22 = 0xE800000000000000;
        v23 = 0x73676E6974746553;
      }
    }

    else
    {
      v22 = 0xE200000000000000;
      v23 = 17219;
    }

    v24 = *(v0 + 336);
    v25 = sub_23C0D8D20(v23, v22, &v31);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v24;
    v26 = v16;
    _os_log_impl(&dword_23C0B2000, v17, v18, "[%s] Initializing preferred input device for metering placeholder with id %@", v19, 0x16u);
    sub_23C0DAAD8(v20, &qword_27E1EE9E8, &qword_23C0EB068);
    MEMORY[0x23EEC78E0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23EEC78E0](v21, -1, -1);
    MEMORY[0x23EEC78E0](v19, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 216) + 144), *(*(v0 + 216) + 168));
  v30 = off_284EE0DC0 + *off_284EE0DC0;
  v27 = *(off_284EE0DC0 + 1);
  v28 = swift_task_alloc();
  *(v0 + 360) = v28;
  *v28 = v0;
  v28[1] = sub_23C0C0E24;

  return (v30)(v0 + 176, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0C0E24()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C0F20, 0, 0);
}

uint64_t sub_23C0C0F20()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[26];
  __swift_project_boxed_opaque_existential_0(v0 + 22, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C1060;
  v7 = v0[42];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_23C0C1060(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_23C0C1180, 0, 0);
}

uint64_t sub_23C0C1180()
{
  v25 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v4 = v1;

  v5 = v4;
  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    v11 = 0xE600000000000000;
    v12 = 0x7070412D6E49;
    if (v8 != 1)
    {
      v12 = 0x73676E6974746553;
      v11 = 0xE800000000000000;
    }

    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 17219;
    }

    if (v8)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 336);
    v17 = sub_23C0D8D20(v13, v14, &v24);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2048;
    v18 = [v15 status];

    *(v9 + 14) = v18;
    _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] set new input on metering placeholder session completed with status %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEC78E0](v10, -1, -1);
    MEMORY[0x23EEC78E0](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 376);
    v20 = *(v0 + 336);
  }

  v21 = *(v0 + 240);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23C0C13AC()
{
  v19 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v4 = sub_23C0E9830();
    __swift_project_value_buffer(v4, qword_27E1EF4F8);

    v5 = sub_23C0E9820();
    v6 = sub_23C0E9C90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      if (v3[15])
      {
        v9 = v3[14];
        v10 = v3[15];
      }

      else
      {
        v10 = 0xE300000000000000;
        v9 = 7104878;
      }

      v13 = sub_23C0D8D20(v9, v10, &v18);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_23C0B2000, v5, v6, "start discovery for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EEC78E0](v8, -1, -1);
      MEMORY[0x23EEC78E0](v7, -1, -1);
    }

    v14 = v3[15];
    if (v14)
    {
      v15 = v3[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE960, &qword_23C0EADE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23C0EA9C0;
      *(v16 + 32) = v15;
      *(v16 + 40) = v14;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v0[9] = v16;
    v17 = v3[13];
    v0[10] = v17;

    return MEMORY[0x2822009F8](sub_23C0C1628, v17, 0);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23C0C1628()
{
  v1 = v0[10];
  sub_23C0BECB0();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23C0C16C0;
  v3 = v0[8];

  return sub_23C0C1D80();
}

uint64_t sub_23C0C16C0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_23C0C1800;
  v5 = *(v1 + 64);

  return sub_23C0C44D0();
}

uint64_t sub_23C0C1800()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C18FC, 0, 0);
}

uint64_t sub_23C0C18FC()
{
  v1 = *(v0[8] + 128);
  v0[13] = v1;
  v2 = *(v1 + 16);
  v3 = *(MEMORY[0x277D857E0] + 4);

  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[15] = v5;
  *v4 = v0;
  v4[1] = sub_23C0C19D0;

  return MEMORY[0x282200460](v0 + 5, v2, v5);
}

uint64_t sub_23C0C19D0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C1ACC, 0, 0);
}

uint64_t sub_23C0C1ACC()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[5];
  v5 = sub_23C0E9B10();

  [v4 setDiscoveryMode:2 forClientIdentifiers:v5];

  v6 = *(v3 + 136);
  v0[16] = v6;
  v7 = *(v6 + 16);
  v8 = *(MEMORY[0x277D857E0] + 4);

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_23C0C1BD4;
  v10 = v0[15];

  return MEMORY[0x282200460](v0 + 6, v7, v10);
}

uint64_t sub_23C0C1BD4()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C1CD0, 0, 0);
}

uint64_t sub_23C0C1CD0()
{
  v1 = v0[16];
  v2 = v0[8];

  v3 = v0[6];
  v4 = sub_23C0E9B10();
  [v3 setDiscoveryMode:2 forClientIdentifiers:v4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23C0C1D80()
{
  *(v1 + 32) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C1E1C, 0, 0);
}

uint64_t sub_23C0C1E1C()
{
  v1 = v0[4];
  if (*(v1 + 56))
  {
    v2 = *(v1 + 56);

    v3 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v4 = *(v1 + 56);
    v0[6] = v4;
    if (v4)
    {
      v5 = *(MEMORY[0x277D857D0] + 4);

      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_23C0C1FD8;
      v7 = MEMORY[0x277D84A98];
      v8 = MEMORY[0x277D84AC0];

      return MEMORY[0x282200440](v0 + 28, v4, v3 + 8, v7, v8);
    }

    v1 = v0[4];
  }

  v9 = *(v1 + 128);
  v0[8] = v9;
  v10 = *(v9 + 16);
  v11 = *(MEMORY[0x277D857E0] + 4);

  v12 = swift_task_alloc();
  v0[9] = v12;
  v13 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[10] = v13;
  *v12 = v0;
  v12[1] = sub_23C0C21C4;

  return MEMORY[0x282200460](v0 + 2, v10, v13);
}

uint64_t sub_23C0C1FD8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C20F0, 0, 0);
}

uint64_t sub_23C0C20F0()
{
  v1 = *(v0[4] + 128);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v3 = *(MEMORY[0x277D857E0] + 4);

  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[10] = v5;
  *v4 = v0;
  v4[1] = sub_23C0C21C4;

  return MEMORY[0x282200460](v0 + 2, v2, v5);
}

uint64_t sub_23C0C21C4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C22C0, 0, 0);
}

uint64_t sub_23C0C22C0()
{
  v1 = v0[8];
  v2 = v0[4];

  v0[11] = v0[2];
  v3 = *(v2 + 136);
  v0[12] = v3;
  v4 = *(v3 + 16);
  v5 = *(MEMORY[0x277D857E0] + 4);

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C2388;
  v7 = v0[10];

  return MEMORY[0x282200460](v0 + 3, v4, v7);
}

uint64_t sub_23C0C2388()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C2484, 0, 0);
}

uint64_t sub_23C0C2484()
{
  v2 = *(v0 + 11);
  v1 = *(v0 + 12);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);

  *(v0 + 14) = *(v0 + 3);
  v5 = sub_23C0E9BD0();
  *(v0 + 15) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 16) = v7;
  *(v0 + 17) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v5);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v8;
  v10 = v2;
  v11 = sub_23C0DE678(0, 0, v3, &unk_23C0EAEA8, v9);
  v12 = *(v4 + 56);
  *(v4 + 56) = v11;

  v13 = MEMORY[0x277D84F78];
  if (*(v4 + 64))
  {
    v14 = *(v4 + 64);

    sub_23C0E9C30();

    v15 = *(v4 + 64);
    *(v0 + 18) = v15;
    if (v15)
    {
      v16 = *(MEMORY[0x277D857D0] + 4);

      v17 = swift_task_alloc();
      *(v0 + 19) = v17;
      *v17 = v0;
      v17[1] = sub_23C0C2C68;
      v18 = MEMORY[0x277D84A98];
      v19 = MEMORY[0x277D84AC0];
      v20 = v0 + 225;
LABEL_20:

      return MEMORY[0x282200440](v20, v15, v13 + 8, v18, v19);
    }
  }

  v21 = *(v0 + 17);
  v22 = *(v0 + 14);
  v24 = *(v0 + 4);
  v23 = *(v0 + 5);
  (*(v0 + 16))(v23, 1, 1, *(v0 + 15));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v25;
  v27 = v22;
  v28 = sub_23C0DE678(0, 0, v23, &unk_23C0EAEB8, v26);
  v29 = *(v24 + 64);
  *(v24 + 64) = v28;

  if (*(v24 + 72))
  {
    v30 = *(v24 + 72);

    sub_23C0E9C30();

    v15 = *(v24 + 72);
    *(v0 + 20) = v15;
    if (v15)
    {
      v31 = *(MEMORY[0x277D857D0] + 4);

      v32 = swift_task_alloc();
      *(v0 + 21) = v32;
      *v32 = v0;
      v32[1] = sub_23C0C33F0;
      v18 = MEMORY[0x277D84A98];
      v19 = MEMORY[0x277D84AC0];
      v20 = v0 + 226;
      goto LABEL_20;
    }
  }

  v33 = *(v0 + 17);
  v34 = *(v0 + 4);
  v35 = *(v0 + 5);
  (*(v0 + 16))(v35, 1, 1, *(v0 + 15));
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v36;
  v38 = sub_23C0DE678(0, 0, v35, &unk_23C0EAEC8, v37);
  v39 = *(v34 + 72);
  *(v34 + 72) = v38;

  if (*(v34 + 48))
  {
    v40 = *(v0 + 4);
    if (*(v40 + 80))
    {
      v41 = *(v40 + 80);

      sub_23C0E9C30();

      v15 = *(v40 + 80);
      *(v0 + 22) = v15;
      if (v15)
      {
        v42 = *(MEMORY[0x277D857D0] + 4);

        v43 = swift_task_alloc();
        *(v0 + 23) = v43;
        *v43 = v0;
        v43[1] = sub_23C0C3A2C;
        v18 = MEMORY[0x277D84A98];
        v19 = MEMORY[0x277D84AC0];
        v20 = v0 + 229;
        goto LABEL_20;
      }

      v40 = *(v0 + 4);
    }

    v44 = *(v0 + 17);
    v45 = *(v0 + 5);
    (*(v0 + 16))(v45, 1, 1, *(v0 + 15));
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v46;
    v48 = sub_23C0DE678(0, 0, v45, &unk_23C0EAEF8, v47);
    v49 = *(v40 + 80);
    *(v40 + 80) = v48;
  }

  v50 = *(v0 + 4);
  if (*(v50 + 88))
  {
    v51 = *(v50 + 88);

    sub_23C0E9C30();

    v15 = *(v50 + 88);
    *(v0 + 24) = v15;
    if (v15)
    {
      v52 = *(MEMORY[0x277D857D0] + 4);

      v53 = swift_task_alloc();
      *(v0 + 25) = v53;
      *v53 = v0;
      v53[1] = sub_23C0C3F0C;
      v18 = MEMORY[0x277D84A98];
      v19 = MEMORY[0x277D84AC0];
      v20 = v0 + 227;
      goto LABEL_20;
    }

    v50 = *(v0 + 4);
  }

  v54 = *(v0 + 17);
  v55 = *(v0 + 5);
  (*(v0 + 16))(v55, 1, 1, *(v0 + 15));
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = v56;
  v58 = sub_23C0DE678(0, 0, v55, &unk_23C0EAED8, v57);
  v59 = *(v50 + 88);
  *(v50 + 88) = v58;

  if (*(v50 + 96))
  {
    v60 = *(v50 + 96);

    sub_23C0E9C30();

    v15 = *(v50 + 96);
    *(v0 + 26) = v15;
    if (v15)
    {
      v61 = *(MEMORY[0x277D857D0] + 4);

      v62 = swift_task_alloc();
      *(v0 + 27) = v62;
      *v62 = v0;
      v62[1] = sub_23C0C42A8;
      v18 = MEMORY[0x277D84A98];
      v19 = MEMORY[0x277D84AC0];
      v20 = v0 + 228;
      goto LABEL_20;
    }
  }

  v63 = *(v0 + 17);
  v64 = *(v0 + 14);
  v65 = *(v0 + 11);
  v66 = *(v0 + 4);
  v67 = *(v0 + 5);
  (*(v0 + 16))(v67, 1, 1, *(v0 + 15));
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v68;
  v70 = sub_23C0DE678(0, 0, v67, &unk_23C0EAEE8, v69);

  v71 = *(v66 + 96);
  *(v66 + 96) = v70;

  v72 = *(v0 + 1);

  return v72();
}

uint64_t sub_23C0C2C68()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C2D80, 0, 0);
}

uint64_t sub_23C0C2D80()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v2;
  v8 = sub_23C0DE678(0, 0, v3, &unk_23C0EAEB8, v6);
  v9 = *(v4 + 64);
  *(v4 + 64) = v8;

  if (*(v4 + 72))
  {
    v10 = *(v4 + 72);

    v11 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v12 = *(v4 + 72);
    *(v0 + 160) = v12;
    if (v12)
    {
      v13 = *(MEMORY[0x277D857D0] + 4);

      v14 = swift_task_alloc();
      *(v0 + 168) = v14;
      *v14 = v0;
      v14[1] = sub_23C0C33F0;
      v15 = MEMORY[0x277D84A98];
      v16 = MEMORY[0x277D84AC0];
      v17 = v0 + 226;
LABEL_17:

      return MEMORY[0x282200440](v17, v12, v11 + 8, v15, v16);
    }
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  (*(v0 + 128))(v20, 1, 1, *(v0 + 120));
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  v23 = sub_23C0DE678(0, 0, v20, &unk_23C0EAEC8, v22);
  v24 = *(v19 + 72);
  *(v19 + 72) = v23;

  if (*(v19 + 48))
  {
    v25 = *(v0 + 32);
    if (*(v25 + 80))
    {
      v26 = *(v25 + 80);

      v11 = MEMORY[0x277D84F78];
      sub_23C0E9C30();

      v12 = *(v25 + 80);
      *(v0 + 176) = v12;
      if (v12)
      {
        v27 = *(MEMORY[0x277D857D0] + 4);

        v28 = swift_task_alloc();
        *(v0 + 184) = v28;
        *v28 = v0;
        v28[1] = sub_23C0C3A2C;
        v15 = MEMORY[0x277D84A98];
        v16 = MEMORY[0x277D84AC0];
        v17 = v0 + 229;
        goto LABEL_17;
      }

      v25 = *(v0 + 32);
    }

    v29 = *(v0 + 136);
    v30 = *(v0 + 40);
    (*(v0 + 128))(v30, 1, 1, *(v0 + 120));
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v31;
    v33 = sub_23C0DE678(0, 0, v30, &unk_23C0EAEF8, v32);
    v34 = *(v25 + 80);
    *(v25 + 80) = v33;
  }

  v35 = *(v0 + 32);
  if (*(v35 + 88))
  {
    v36 = *(v35 + 88);

    v11 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v12 = *(v35 + 88);
    *(v0 + 192) = v12;
    if (v12)
    {
      v37 = *(MEMORY[0x277D857D0] + 4);

      v38 = swift_task_alloc();
      *(v0 + 200) = v38;
      *v38 = v0;
      v38[1] = sub_23C0C3F0C;
      v15 = MEMORY[0x277D84A98];
      v16 = MEMORY[0x277D84AC0];
      v17 = v0 + 227;
      goto LABEL_17;
    }

    v35 = *(v0 + 32);
  }

  v39 = *(v0 + 136);
  v40 = *(v0 + 40);
  (*(v0 + 128))(v40, 1, 1, *(v0 + 120));
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v41;
  v43 = sub_23C0DE678(0, 0, v40, &unk_23C0EAED8, v42);
  v44 = *(v35 + 88);
  *(v35 + 88) = v43;

  if (*(v35 + 96))
  {
    v45 = *(v35 + 96);

    v11 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v12 = *(v35 + 96);
    *(v0 + 208) = v12;
    if (v12)
    {
      v46 = *(MEMORY[0x277D857D0] + 4);

      v47 = swift_task_alloc();
      *(v0 + 216) = v47;
      *v47 = v0;
      v47[1] = sub_23C0C42A8;
      v15 = MEMORY[0x277D84A98];
      v16 = MEMORY[0x277D84AC0];
      v17 = v0 + 228;
      goto LABEL_17;
    }
  }

  v48 = *(v0 + 136);
  v49 = *(v0 + 112);
  v50 = *(v0 + 88);
  v51 = *(v0 + 32);
  v52 = *(v0 + 40);
  (*(v0 + 128))(v52, 1, 1, *(v0 + 120));
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  v55 = sub_23C0DE678(0, 0, v52, &unk_23C0EAEE8, v54);

  v56 = *(v51 + 96);
  *(v51 + 96) = v55;

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_23C0C33F0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C3508, 0, 0);
}

uint64_t sub_23C0C3508()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_23C0DE678(0, 0, v3, &unk_23C0EAEC8, v5);
  v7 = *(v2 + 72);
  *(v2 + 72) = v6;

  if (*(v2 + 48))
  {
    v8 = *(v0 + 32);
    if (*(v8 + 80))
    {
      v9 = *(v8 + 80);

      v10 = MEMORY[0x277D84F78];
      sub_23C0E9C30();

      v11 = *(v8 + 80);
      *(v0 + 176) = v11;
      if (v11)
      {
        v12 = *(MEMORY[0x277D857D0] + 4);

        v13 = swift_task_alloc();
        *(v0 + 184) = v13;
        *v13 = v0;
        v13[1] = sub_23C0C3A2C;
        v14 = MEMORY[0x277D84A98];
        v15 = MEMORY[0x277D84AC0];
        v16 = v0 + 229;
LABEL_14:

        return MEMORY[0x282200440](v16, v11, v10 + 8, v14, v15);
      }

      v8 = *(v0 + 32);
    }

    v17 = *(v0 + 136);
    v18 = *(v0 + 40);
    (*(v0 + 128))(v18, 1, 1, *(v0 + 120));
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    v21 = sub_23C0DE678(0, 0, v18, &unk_23C0EAEF8, v20);
    v22 = *(v8 + 80);
    *(v8 + 80) = v21;
  }

  v23 = *(v0 + 32);
  if (*(v23 + 88))
  {
    v24 = *(v23 + 88);

    v10 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v11 = *(v23 + 88);
    *(v0 + 192) = v11;
    if (v11)
    {
      v25 = *(MEMORY[0x277D857D0] + 4);

      v26 = swift_task_alloc();
      *(v0 + 200) = v26;
      *v26 = v0;
      v26[1] = sub_23C0C3F0C;
      v14 = MEMORY[0x277D84A98];
      v15 = MEMORY[0x277D84AC0];
      v16 = v0 + 227;
      goto LABEL_14;
    }

    v23 = *(v0 + 32);
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 40);
  (*(v0 + 128))(v28, 1, 1, *(v0 + 120));
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v29;
  v31 = sub_23C0DE678(0, 0, v28, &unk_23C0EAED8, v30);
  v32 = *(v23 + 88);
  *(v23 + 88) = v31;

  if (*(v23 + 96))
  {
    v33 = *(v23 + 96);

    v10 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v11 = *(v23 + 96);
    *(v0 + 208) = v11;
    if (v11)
    {
      v34 = *(MEMORY[0x277D857D0] + 4);

      v35 = swift_task_alloc();
      *(v0 + 216) = v35;
      *v35 = v0;
      v35[1] = sub_23C0C42A8;
      v14 = MEMORY[0x277D84A98];
      v15 = MEMORY[0x277D84AC0];
      v16 = v0 + 228;
      goto LABEL_14;
    }
  }

  v36 = *(v0 + 136);
  v37 = *(v0 + 112);
  v38 = *(v0 + 88);
  v39 = *(v0 + 32);
  v40 = *(v0 + 40);
  (*(v0 + 128))(v40, 1, 1, *(v0 + 120));
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v41;
  v43 = sub_23C0DE678(0, 0, v40, &unk_23C0EAEE8, v42);

  v44 = *(v39 + 96);
  *(v39 + 96) = v43;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_23C0C3A2C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C3B44, 0, 0);
}

uint64_t sub_23C0C3B44()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_23C0DE678(0, 0, v3, &unk_23C0EAEF8, v5);
  v7 = *(v2 + 80);
  *(v2 + 80) = v6;

  v8 = *(v0 + 32);
  v9 = MEMORY[0x277D84F78];
  if (*(v8 + 88))
  {
    v10 = *(v8 + 88);

    sub_23C0E9C30();

    v11 = *(v8 + 88);
    *(v0 + 192) = v11;
    if (v11)
    {
      v12 = *(MEMORY[0x277D857D0] + 4);

      v13 = swift_task_alloc();
      *(v0 + 200) = v13;
      *v13 = v0;
      v13[1] = sub_23C0C3F0C;
      v14 = MEMORY[0x277D84A98];
      v15 = MEMORY[0x277D84AC0];
      v16 = v0 + 227;
LABEL_8:

      return MEMORY[0x282200440](v16, v11, v9 + 8, v14, v15);
    }

    v8 = *(v0 + 32);
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 40);
  (*(v0 + 128))(v18, 1, 1, *(v0 + 120));
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v21 = sub_23C0DE678(0, 0, v18, &unk_23C0EAED8, v20);
  v22 = *(v8 + 88);
  *(v8 + 88) = v21;

  if (*(v8 + 96))
  {
    v23 = *(v8 + 96);

    sub_23C0E9C30();

    v11 = *(v8 + 96);
    *(v0 + 208) = v11;
    if (v11)
    {
      v24 = *(MEMORY[0x277D857D0] + 4);

      v25 = swift_task_alloc();
      *(v0 + 216) = v25;
      *v25 = v0;
      v25[1] = sub_23C0C42A8;
      v14 = MEMORY[0x277D84A98];
      v15 = MEMORY[0x277D84AC0];
      v16 = v0 + 228;
      goto LABEL_8;
    }
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  v28 = *(v0 + 88);
  v29 = *(v0 + 32);
  v30 = *(v0 + 40);
  (*(v0 + 128))(v30, 1, 1, *(v0 + 120));
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v31;
  v33 = sub_23C0DE678(0, 0, v30, &unk_23C0EAEE8, v32);

  v34 = *(v29 + 96);
  *(v29 + 96) = v33;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_23C0C3F0C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C4024, 0, 0);
}

uint64_t sub_23C0C4024()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_23C0DE678(0, 0, v2, &unk_23C0EAED8, v5);
  v7 = *(v3 + 88);
  *(v3 + 88) = v6;

  if (*(v3 + 96) && (v8 = *(v3 + 96), , v9 = MEMORY[0x277D84F78], sub_23C0E9C30(), , v10 = *(v3 + 96), (*(v0 + 208) = v10) != 0))
  {
    v11 = *(MEMORY[0x277D857D0] + 4);

    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_23C0C42A8;
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 228, v10, v9 + 8, v13, v14);
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    (*(v0 + 128))(v19, 1, 1, *(v0 + 120));
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    v22 = sub_23C0DE678(0, 0, v19, &unk_23C0EAEE8, v21);

    v23 = *(v18 + 96);
    *(v18 + 96) = v22;

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_23C0C42A8()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C43C0, 0, 0);
}

uint64_t sub_23C0C43C0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*(v0 + 128))(v5, 1, 1, *(v0 + 120));
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_23C0DE678(0, 0, v5, &unk_23C0EAEE8, v7);

  v9 = *(v4 + 96);
  *(v4 + 96) = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23C0C44D0()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 64) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0C4560, 0, 0);
}

uint64_t sub_23C0C4560()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  if (!*(v1 + 48))
  {
    v2 = [objc_opt_self() auxiliarySession];
    v3 = *(v1 + 48);
    *(v1 + 48) = v2;

    v4 = *(v1 + 48);
    if (v4)
    {
      v5 = *MEMORY[0x277CB8038];
      *(v0 + 40) = 0;
      v6 = [v4 setCategory:v5 withOptions:5 error:v0 + 40];
      v7 = *(v0 + 40);
      if (!v6)
      {
        v29 = v7;
        v30 = sub_23C0E9770();

        swift_willThrow();
        if (qword_27E1EE790 != -1)
        {
          swift_once();
        }

        v31 = sub_23C0E9830();
        __swift_project_value_buffer(v31, qword_27E1EF4F8);
        v32 = v30;
        v33 = sub_23C0E9820();
        v34 = sub_23C0E9C80();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v54[0] = v36;
          *v35 = 136315650;
          *(v35 + 4) = sub_23C0D8D20(0xD00000000000002CLL, 0x800000023C0ED530, v54);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_23C0D8D20(0xD000000000000022, 0x800000023C0ED5A0, v54);
          *(v35 + 22) = 2080;
          swift_getErrorValue();
          v38 = *(v0 + 16);
          v37 = *(v0 + 24);
          v39 = *(v0 + 32);
          v40 = sub_23C0E9DB0();
          v42 = sub_23C0D8D20(v40, v41, v54);

          *(v35 + 24) = v42;
          _os_log_impl(&dword_23C0B2000, v33, v34, "%s->%s error=%s", v35, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23EEC78E0](v36, -1, -1);
          MEMORY[0x23EEC78E0](v35, -1, -1);
        }

        else
        {
        }

        goto LABEL_26;
      }

      v8 = *(v1 + 48);
      v9 = v7;
      if (v8)
      {
        v10 = [v8 opaqueSessionID];
        *(v0 + 104) = v10;
        if (qword_27E1EE790 != -1)
        {
          swift_once();
        }

        v11 = *(v0 + 64);
        v12 = sub_23C0E9830();
        __swift_project_value_buffer(v12, qword_27E1EF4F8);

        v13 = sub_23C0E9820();
        v14 = sub_23C0E9C90();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v0 + 64);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v54[0] = v17;
          *v16 = 136315394;
          if (*(v15 + 24))
          {
            if (*(v15 + 24) == 1)
            {
              v18 = 0xE600000000000000;
              v19 = 0x7070412D6E49;
            }

            else
            {
              v18 = 0xE800000000000000;
              v19 = 0x73676E6974746553;
            }
          }

          else
          {
            v18 = 0xE200000000000000;
            v19 = 17219;
          }

          v47 = sub_23C0D8D20(v19, v18, v54);

          *(v16 + 4) = v47;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v10;
          _os_log_impl(&dword_23C0B2000, v13, v14, "[%s] set fakeDiscoverySession: %u", v16, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x23EEC78E0](v17, -1, -1);
          MEMORY[0x23EEC78E0](v16, -1, -1);
        }

        v48 = *(*(v0 + 64) + 136);
        *(v0 + 72) = v48;
        v49 = *(v48 + 16);
        v50 = *(MEMORY[0x277D857E0] + 4);

        v51 = swift_task_alloc();
        *(v0 + 80) = v51;
        v52 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
        *v51 = v0;
        v51[1] = sub_23C0C4BF8;
        v53 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282200460](v0 + 56, v49, v52);
      }
    }

    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 64);
    v21 = sub_23C0E9830();
    __swift_project_value_buffer(v21, qword_27E1EF4F8);

    v22 = sub_23C0E9820();
    v23 = sub_23C0E9C90();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 64);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54[0] = v26;
      *v25 = 136315138;
      if (*(v24 + 24))
      {
        if (*(v24 + 24) == 1)
        {
          v27 = 0xE600000000000000;
          v28 = 0x7070412D6E49;
        }

        else
        {
          v27 = 0xE800000000000000;
          v28 = 0x73676E6974746553;
        }
      }

      else
      {
        v27 = 0xE200000000000000;
        v28 = 17219;
      }

      v43 = sub_23C0D8D20(v28, v27, v54);

      *(v25 + 4) = v43;
      _os_log_impl(&dword_23C0B2000, v22, v23, "[%s] Unable to set fakeDiscoverySession!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EEC78E0](v26, -1, -1);
      MEMORY[0x23EEC78E0](v25, -1, -1);
    }
  }

LABEL_26:
  v44 = *(v0 + 8);
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

uint64_t sub_23C0C4BF8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 80);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0C4D20, 0, 0);
}

uint64_t sub_23C0C4D20()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 56);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  [v4 setAudioSessionID_];

  v6 = *(v3 + 104);
  *(v0 + 88) = v6;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C0C4E04, v6, 0);
}

uint64_t sub_23C0C4E04()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  sub_23C0BECB0();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_23C0C4EC8;
  v3 = v0[8];
  v4 = *MEMORY[0x277D85DE8];

  return sub_23C0CBC14();
}

uint64_t sub_23C0C4EC8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 96);
  v6 = *v0;

  v2 = *(v6 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_23C0C5008()
{
  v24 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 120);
    if (v4)
    {
      v5 = v3[14];
      v6 = v4;
    }

    else
    {
      v6 = 0xE300000000000000;
      v5 = 7104878;
    }

    v9 = qword_27E1EE790;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_23C0E9830();
    __swift_project_value_buffer(v10, qword_27E1EF4F8);

    v11 = sub_23C0E9820();
    v12 = sub_23C0E9C90();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_23C0D8D20(v5, v6, &v23);

      _os_log_impl(&dword_23C0B2000, v11, v12, "stop discovery for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23EEC78E0](v14, -1, -1);
      MEMORY[0x23EEC78E0](v13, -1, -1);

      v15 = v3[15];
      if (v15)
      {
LABEL_12:
        v16 = v3[14];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE960, &qword_23C0EADE0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_23C0EA9C0;
        *(v17 + 32) = v16;
        *(v17 + 40) = v15;
LABEL_15:
        v0[9] = v17;
        v18 = v3[16];
        v0[10] = v18;

        v19 = *(v18 + 16);
        v20 = *(MEMORY[0x277D857E0] + 4);

        v21 = swift_task_alloc();
        v0[11] = v21;
        v22 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
        v0[12] = v22;
        *v21 = v0;
        v21[1] = sub_23C0C52FC;

        return MEMORY[0x282200460](v0 + 5, v19, v22);
      }
    }

    else
    {

      v15 = v3[15];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23C0C52FC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C53F8, 0, 0);
}

uint64_t sub_23C0C53F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[5];
  v5 = sub_23C0E9B10();

  [v4 setDiscoveryMode:0 forClientIdentifiers:v5];

  v6 = *(v3 + 136);
  v0[13] = v6;
  v7 = *(v6 + 16);
  v8 = *(MEMORY[0x277D857E0] + 4);

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_23C0C5500;
  v10 = v0[12];

  return MEMORY[0x282200460](v0 + 6, v7, v10);
}

uint64_t sub_23C0C5500()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C55FC, 0, 0);
}

uint64_t sub_23C0C55FC()
{
  v1 = v0[13];

  v2 = v0[6];
  v3 = sub_23C0E9B10();
  [v2 setDiscoveryMode:0 forClientIdentifiers:v3];

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C56D0;
  v5 = v0[8];

  return sub_23C0C582C();
}

uint64_t sub_23C0C56D0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C57CC, 0, 0);
}

uint64_t sub_23C0C57CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0C584C()
{
  v36 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_23C0E9830();
  __swift_project_value_buffer(v2, qword_27E1EF4F8);

  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v10 = sub_23C0D8D20(v9, v8, &v35);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_23C0D8D20(0xD00000000000001CLL, 0x800000023C0ED4D0, &v35);
    _os_log_impl(&dword_23C0B2000, v3, v4, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v7, -1, -1);
    MEMORY[0x23EEC78E0](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = *(v11 + 56);
  v0[3] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v16 = *(MEMORY[0x277D857D0] + 4);
    v17 = swift_task_alloc();
    v0[4] = v17;
    *v17 = v0;
    v17[1] = sub_23C0C5E0C;
    v18 = v0 + 125;
LABEL_22:

    return MEMORY[0x282200440](v18, v12, v13 + 8, v14, v15);
  }

  *(v11 + 56) = 0;
  v12 = *(v11 + 64);
  v0[5] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v19 = *(MEMORY[0x277D857D0] + 4);
    v20 = swift_task_alloc();
    v0[6] = v20;
    *v20 = v0;
    v20[1] = sub_23C0C6298;
    v18 = v0 + 124;
    goto LABEL_22;
  }

  v21 = v0[2];
  *(v21 + 64) = 0;
  v12 = *(v21 + 72);
  v0[7] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v22 = *(MEMORY[0x277D857D0] + 4);
    v23 = swift_task_alloc();
    v0[8] = v23;
    *v23 = v0;
    v23[1] = sub_23C0C6694;
    v18 = v0 + 123;
    goto LABEL_22;
  }

  v24 = v0[2];
  *(v24 + 72) = 0;
  v12 = *(v24 + 80);
  v0[9] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v25 = *(MEMORY[0x277D857D0] + 4);
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = sub_23C0C69FC;
    v18 = v0 + 122;
    goto LABEL_22;
  }

  v27 = v0[2];
  *(v27 + 80) = 0;
  v12 = *(v27 + 88);
  v0[11] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v28 = *(MEMORY[0x277D857D0] + 4);
    v29 = swift_task_alloc();
    v0[12] = v29;
    *v29 = v0;
    v29[1] = sub_23C0C6CD0;
    v18 = v0 + 121;
    goto LABEL_22;
  }

  v30 = v0[2];
  *(v30 + 88) = 0;
  v12 = *(v30 + 96);
  v0[13] = v12;
  if (v12)
  {

    v13 = MEMORY[0x277D84F78];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v31 = *(MEMORY[0x277D857D0] + 4);
    v32 = swift_task_alloc();
    v0[14] = v32;
    *v32 = v0;
    v32[1] = sub_23C0C6F10;
    v18 = (v0 + 15);
    goto LABEL_22;
  }

  *(v0[2] + 96) = 0;
  v33 = v0[1];

  return v33();
}

uint64_t sub_23C0C5E0C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C5F08, 0, 0);
}

uint64_t sub_23C0C5F08()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);

  v3 = *(v2 + 56);
  v4 = *(v0 + 2);
  *(v4 + 56) = 0;

  v5 = *(v4 + 64);
  *(v0 + 5) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 6) = v10;
    *v10 = v0;
    v10[1] = sub_23C0C6298;
    v11 = v0 + 124;
LABEL_11:

    return MEMORY[0x282200440](v11, v5, v6 + 8, v7, v8);
  }

  v12 = *(v0 + 2);
  *(v12 + 64) = 0;
  v5 = *(v12 + 72);
  *(v0 + 7) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = *(MEMORY[0x277D857D0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 8) = v14;
    *v14 = v0;
    v14[1] = sub_23C0C6694;
    v11 = v0 + 123;
    goto LABEL_11;
  }

  v15 = *(v0 + 2);
  *(v15 + 72) = 0;
  v5 = *(v15 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v16 = *(MEMORY[0x277D857D0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 10) = v17;
    *v17 = v0;
    v17[1] = sub_23C0C69FC;
    v11 = v0 + 122;
    goto LABEL_11;
  }

  v18 = *(v0 + 2);
  *(v18 + 80) = 0;
  v5 = *(v18 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v19 = *(MEMORY[0x277D857D0] + 4);
    v20 = swift_task_alloc();
    *(v0 + 12) = v20;
    *v20 = v0;
    v20[1] = sub_23C0C6CD0;
    v11 = v0 + 121;
    goto LABEL_11;
  }

  v21 = *(v0 + 2);
  *(v21 + 88) = 0;
  v5 = *(v21 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v22 = *(MEMORY[0x277D857D0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 14) = v23;
    *v23 = v0;
    v23[1] = sub_23C0C6F10;
    v11 = v0 + 120;
    goto LABEL_11;
  }

  *(*(v0 + 2) + 96) = 0;
  v24 = *(v0 + 1);

  return v24();
}

uint64_t sub_23C0C6298()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C6394, 0, 0);
}

uint64_t sub_23C0C6394()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 2);

  v3 = *(v2 + 64);
  v4 = *(v0 + 2);
  *(v4 + 64) = 0;

  v5 = *(v4 + 72);
  *(v0 + 7) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 8) = v10;
    *v10 = v0;
    v10[1] = sub_23C0C6694;
    v11 = v0 + 123;
LABEL_9:

    return MEMORY[0x282200440](v11, v5, v6 + 8, v7, v8);
  }

  v12 = *(v0 + 2);
  *(v12 + 72) = 0;
  v5 = *(v12 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = *(MEMORY[0x277D857D0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 10) = v14;
    *v14 = v0;
    v14[1] = sub_23C0C69FC;
    v11 = v0 + 122;
    goto LABEL_9;
  }

  v15 = *(v0 + 2);
  *(v15 + 80) = 0;
  v5 = *(v15 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v16 = *(MEMORY[0x277D857D0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 12) = v17;
    *v17 = v0;
    v17[1] = sub_23C0C6CD0;
    v11 = v0 + 121;
    goto LABEL_9;
  }

  v18 = *(v0 + 2);
  *(v18 + 88) = 0;
  v5 = *(v18 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v19 = *(MEMORY[0x277D857D0] + 4);
    v20 = swift_task_alloc();
    *(v0 + 14) = v20;
    *v20 = v0;
    v20[1] = sub_23C0C6F10;
    v11 = v0 + 120;
    goto LABEL_9;
  }

  *(*(v0 + 2) + 96) = 0;
  v21 = *(v0 + 1);

  return v21();
}

uint64_t sub_23C0C6694()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C6790, 0, 0);
}

uint64_t sub_23C0C6790()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 2);

  v3 = *(v2 + 72);
  v4 = *(v0 + 2);
  *(v4 + 72) = 0;

  v5 = *(v4 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 10) = v10;
    *v10 = v0;
    v10[1] = sub_23C0C69FC;
    v11 = v0 + 122;
LABEL_7:

    return MEMORY[0x282200440](v11, v5, v6 + 8, v7, v8);
  }

  v12 = *(v0 + 2);
  *(v12 + 80) = 0;
  v5 = *(v12 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = *(MEMORY[0x277D857D0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 12) = v14;
    *v14 = v0;
    v14[1] = sub_23C0C6CD0;
    v11 = v0 + 121;
    goto LABEL_7;
  }

  v15 = *(v0 + 2);
  *(v15 + 88) = 0;
  v5 = *(v15 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v16 = *(MEMORY[0x277D857D0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 14) = v17;
    *v17 = v0;
    v17[1] = sub_23C0C6F10;
    v11 = v0 + 120;
    goto LABEL_7;
  }

  *(*(v0 + 2) + 96) = 0;
  v18 = *(v0 + 1);

  return v18();
}

uint64_t sub_23C0C69FC()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C6AF8, 0, 0);
}

uint64_t sub_23C0C6AF8()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = *(v2 + 80);
  v4 = v0[2];
  *(v4 + 80) = 0;

  v5 = *(v4 + 88);
  v0[11] = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_23C0C6CD0;
    v11 = (v0 + 121);
LABEL_5:

    return MEMORY[0x282200440](v11, v5, v6 + 8, v7, v8);
  }

  v12 = v0[2];
  *(v12 + 88) = 0;
  v5 = *(v12 + 96);
  v0[13] = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = *(MEMORY[0x277D857D0] + 4);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_23C0C6F10;
    v11 = v0 + 15;
    goto LABEL_5;
  }

  *(v0[2] + 96) = 0;
  v15 = v0[1];

  return v15();
}

uint64_t sub_23C0C6CD0()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C6DCC, 0, 0);
}

uint64_t sub_23C0C6DCC()
{
  v1 = v0[11];
  v2 = v0[2];

  v3 = *(v2 + 88);
  v4 = v0[2];
  *(v4 + 88) = 0;

  v5 = *(v4 + 96);
  v0[13] = v5;
  if (v5)
  {

    v6 = MEMORY[0x277D84F78];
    v7 = MEMORY[0x277D84A98];
    v8 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_23C0C6F10;

    return MEMORY[0x282200440](v0 + 15, v5, v6 + 8, v7, v8);
  }

  else
  {
    *(v0[2] + 96) = 0;
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23C0C6F10()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C700C, 0, 0);
}

uint64_t sub_23C0C700C()
{
  v1 = v0[13];
  v2 = v0[2];

  v3 = *(v2 + 96);
  *(v0[2] + 96) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0C7080(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_23C0E9BD0();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C7140, 0, 0);
}

uint64_t sub_23C0C7140()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x2822009F8](sub_23C0C7164, v1, 0);
}

uint64_t sub_23C0C7164()
{
  v1 = v0[13];
  v2 = v1[20];
  v0[14] = v2;
  v3 = v1[21];
  v0[15] = v3;
  v0[16] = v1[22];
  v0[17] = v1[23];
  v0[18] = v1[24];
  v0[19] = v1[25];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0C71FC, 0, 0);
}

uint64_t sub_23C0C71FC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    *v4 = v2;
    *(v4 + 8) = v1;
    *(v4 + 16) = v13;
    *(v4 + 32) = v12;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(*(v0 + 72) + 16);
    v9 = swift_allocObject();
    *(v0 + 160) = v9;
    swift_weakInit();
    sub_23C0E9BB0();
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_23C0C7388;
    v11 = *(v0 + 96);

    return sub_23C0E1148(v0 + 16, 0xD000000000000019, 0x800000023C0ED600, v11, &unk_23C0EAFB8, v9);
  }
}

uint64_t sub_23C0C7388()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *v0;

  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 32);
  v15 = *(v1 + 16);

  (*(v5 + 8))(v4, v6);
  v10 = *(v1 + 96);
  v11 = *(v1 + 64);

  *v11 = v15;
  *(v11 + 16) = v14;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_23C0C7564(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_23C0E9BD0();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C7628, 0, 0);
}

uint64_t sub_23C0C7628()
{
  v45 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v41 = v3;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v43 = v0;
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9F0, &qword_23C0EB0B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23C0EAC90;
  if (v1)
  {
    v9 = &unk_23C0EB110;
  }

  else
  {
    v9 = &unk_23C0EB100;
  }

  if (v1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (v1)
  {
    v11 = &unk_23C0EB138;
  }

  else
  {
    v11 = &unk_23C0EB118;
  }

  if (v1)
  {
    v12 = &unk_23C0EB100;
  }

  else
  {
    v12 = &unk_23C0EB110;
  }

  if (v1)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  if (v1)
  {
    v14 = &unk_23C0EB140;
  }

  else
  {
    v14 = &unk_23C0EB120;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  *(v8 + 32) = v11;
  *(v8 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v8 + 48) = v14;
  *(v8 + 56) = v16;
  v17 = qword_27E1EE790;
  v18 = v41;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = *(v43 + 24);
  v20 = sub_23C0E9830();
  __swift_project_value_buffer(v20, qword_27E1EF4F8);

  v21 = sub_23C0E9820();
  v22 = sub_23C0E9C90();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v43 + 24);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315650;
    v40 = v8;
    v42 = v25;
    if (*(v23 + 24))
    {
      if (*(v23 + 24) == 1)
      {
        v26 = 0xE600000000000000;
        v27 = 0x7070412D6E49;
      }

      else
      {
        v26 = 0xE800000000000000;
        v27 = 0x73676E6974746553;
      }
    }

    else
    {
      v26 = 0xE200000000000000;
      v27 = 17219;
    }

    v28 = *(v43 + 88);
    v29 = sub_23C0D8D20(v27, v26, &v44);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    if (v28)
    {
      v30 = 0x6C6F686563616C70;
    }

    else
    {
      v30 = 0x746E65696C63;
    }

    if (v28)
    {
      v31 = 0xEB00000000726564;
    }

    else
    {
      v31 = 0xE600000000000000;
    }

    if (v28)
    {
      v32 = 0x746E65696C63;
    }

    else
    {
      v32 = 0x6C6F686563616C70;
    }

    if (v28)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xEB00000000726564;
    }

    v34 = sub_23C0D8D20(v30, v31, &v44);

    *(v24 + 14) = v34;
    *(v24 + 22) = 2080;
    v35 = sub_23C0D8D20(v32, v33, &v44);

    *(v24 + 24) = v35;
    _os_log_impl(&dword_23C0B2000, v21, v22, "[%s] Sending set preferred input notification to %s first, then %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v42, -1, -1);
    MEMORY[0x23EEC78E0](v24, -1, -1);

    v8 = v40;
  }

  else
  {
  }

  v36 = *(v43 + 48);
  v37 = *(*(v43 + 24) + 16);
  *(v43 + 72) = v37;
  sub_23C0E9BB0();
  v38 = swift_allocObject();
  *(v43 + 80) = v38;
  *(v38 + 16) = v8;

  return MEMORY[0x2822009F8](sub_23C0C7AAC, v37, 0);
}

uint64_t sub_23C0C7AAC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_23C0DD498(0xD000000000000014, 0x800000023C0ED6A0, v2, &unk_23C0EB130, v0[10]);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_23C0C7B80, 0, 0);
}

uint64_t sub_23C0C7B80()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0C7BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x2822009F8](sub_23C0C7C14, 0, 0);
}

uint64_t sub_23C0C7C14()
{
  v32 = v0;
  v1 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 120);
    if (v4)
    {
      v5 = *(Strong + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23C0EAC90;
      v7 = *MEMORY[0x277CB8618];
      *(inited + 32) = *MEMORY[0x277CB8618];
      v8 = MEMORY[0x277D837D0];
      *(inited + 40) = v5;
      *(inited + 48) = v4;
      v9 = *MEMORY[0x277CB8610];
      *(inited + 64) = v8;
      *(inited + 72) = v9;
      *(inited + 104) = v8;
      *(inited + 80) = v5;
      *(inited + 88) = v4;
      swift_bridgeObjectRetain_n();
      v10 = v7;
      v11 = v9;
      v12 = sub_23C0E8E3C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
      swift_arrayDestroy();
    }

    else
    {
      v12 = sub_23C0E8E3C(MEMORY[0x277D84F90]);
    }

    v0[27] = v12;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v15 = v0[25];
    v16 = sub_23C0E9830();
    v0[28] = __swift_project_value_buffer(v16, qword_27E1EF4F8);

    v17 = v15;
    v18 = sub_23C0E9820();
    v19 = sub_23C0E9C90();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v20 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v23 = 0xE600000000000000;
          v24 = 0x7070412D6E49;
        }

        else
        {
          v23 = 0xE800000000000000;
          v24 = 0x73676E6974746553;
        }
      }

      else
      {
        v23 = 0xE200000000000000;
        v24 = 17219;
      }

      v25 = v0[25];
      v26 = sub_23C0D8D20(v24, v23, &v31);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v25;
      *v21 = v25;
      v27 = v25;
      _os_log_impl(&dword_23C0B2000, v18, v19, "[%s] Trying to set new input device for client with id: %@", v20, 0x16u);
      sub_23C0DAAD8(v21, &qword_27E1EE9E8, &qword_23C0EB068);
      MEMORY[0x23EEC78E0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23EEC78E0](v22, -1, -1);
      MEMORY[0x23EEC78E0](v20, -1, -1);
    }

    else
    {
      v25 = v0[25];
    }

    v0[29] = v25;
    __swift_project_boxed_opaque_existential_0((v3 + 144), *(v3 + 168));
    v30 = off_284EE0DC0 + *off_284EE0DC0;
    v28 = *(off_284EE0DC0 + 1);
    v29 = swift_task_alloc();
    v0[30] = v29;
    *v29 = v0;
    v29[1] = sub_23C0C8068;

    return (v30)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_23C0C8068()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C8164, 0, 0);
}

uint64_t sub_23C0C8164()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C82A4;
  v7 = v0[29];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_23C0C82A4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23C0C83C4, 0, 0);
}

uint64_t sub_23C0C83C4()
{
  v20 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v4 = v1;

  v5 = v4;
  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v14 = v0[32];
    v15 = sub_23C0D8D20(v12, v11, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    v16 = [v14 status];

    *(v9 + 14) = v16;
    _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] Set new input completes with status %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEC78E0](v10, -1, -1);
    MEMORY[0x23EEC78E0](v9, -1, -1);
  }

  else
  {
    v13 = v0[32];
  }

  v17 = *(v0[26] + 104);
  v0[33] = v17;

  return MEMORY[0x2822009F8](sub_23C0C85B4, v17, 0);
}

uint64_t sub_23C0C85B4()
{
  v1 = v0[33];
  sub_23C0BECB0();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_23C0C8650;
  v3 = v0[26];

  return sub_23C0C87B4(0);
}

uint64_t sub_23C0C8650()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C874C, 0, 0);
}

uint64_t sub_23C0C874C()
{
  v1 = v0[32];
  v2 = v0[26];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0C87B4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = sub_23C0E9BD0();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C8878, 0, 0);
}

uint64_t sub_23C0C8878()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v3 = *(*(v0 + 16) + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_23C0E9BB0();
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23C0C89C0;
  v7 = *(v0 + 40);

  return (sub_23C0E199C)();
}

uint64_t sub_23C0C89C0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0DB074, 0, 0);
}

uint64_t sub_23C0C8B34(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x2822009F8](sub_23C0C8B54, 0, 0);
}

uint64_t sub_23C0C8B54()
{
  v34 = v0;
  v1 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
    inited = swift_initStackObject();
    v5 = inited;
    v6 = MEMORY[0x277CB8618];
    *(inited + 16) = xmmword_23C0EAC90;
    v7 = *v6;
    *(inited + 32) = v7;
    if (*(v3 + 24))
    {
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (*(v3 + 24))
    {
      v9 = "userPreferredInputRoute()";
    }

    else
    {
      v9 = "AVKitRoutingService";
    }

    v10 = v9 | 0x8000000000000000;
    v11 = MEMORY[0x277D837D0];
    *(inited + 40) = v8;
    *(inited + 48) = v10;
    v12 = *MEMORY[0x277CB8610];
    *(inited + 64) = v11;
    *(inited + 72) = v12;
    *(inited + 104) = v11;
    *(inited + 80) = v8;
    *(inited + 88) = v10;
    v13 = v7;
    v14 = v12;
    v0[27] = sub_23C0E8E3C(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
    swift_arrayDestroy();
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v15 = v0[25];
    v16 = sub_23C0E9830();
    v0[28] = __swift_project_value_buffer(v16, qword_27E1EF4F8);

    v17 = v15;
    v18 = sub_23C0E9820();
    v19 = sub_23C0E9C90();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v20 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v23 = 0xE600000000000000;
          v24 = 0x7070412D6E49;
        }

        else
        {
          v23 = 0xE800000000000000;
          v24 = 0x73676E6974746553;
        }
      }

      else
      {
        v23 = 0xE200000000000000;
        v24 = 17219;
      }

      v27 = v0[25];
      v28 = sub_23C0D8D20(v24, v23, &v33);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v27;
      *v21 = v27;
      v29 = v27;
      _os_log_impl(&dword_23C0B2000, v18, v19, "[%s] Trying to set new input device for metering placeholder with id %@", v20, 0x16u);
      sub_23C0DAAD8(v21, &qword_27E1EE9E8, &qword_23C0EB068);
      MEMORY[0x23EEC78E0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23EEC78E0](v22, -1, -1);
      MEMORY[0x23EEC78E0](v20, -1, -1);
    }

    else
    {
      v27 = v0[25];
    }

    v0[29] = v27;
    __swift_project_boxed_opaque_existential_0((v3 + 144), *(v3 + 168));
    v32 = off_284EE0DC0 + *off_284EE0DC0;
    v30 = *(off_284EE0DC0 + 1);
    v31 = swift_task_alloc();
    v0[30] = v31;
    *v31 = v0;
    v31[1] = sub_23C0C8FB0;

    return (v32)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_23C0C8FB0()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C90AC, 0, 0);
}

uint64_t sub_23C0C90AC()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C91EC;
  v7 = v0[29];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_23C0C91EC(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23C0C930C, 0, 0);
}

uint64_t sub_23C0C930C()
{
  v22 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v4 = v1;

  v5 = v4;
  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v15 = v0[32];
    v16 = v0[26];
    v17 = sub_23C0D8D20(v12, v11, &v21);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2048;
    v18 = [v15 status];

    *(v9 + 14) = v18;
    _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] set new input on metering placeholder session completed with status %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEC78E0](v10, -1, -1);
    MEMORY[0x23EEC78E0](v9, -1, -1);
  }

  else
  {
    v13 = v0[32];
    v14 = v0[26];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_23C0C9514(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7A50;

  return v6();
}

void sub_23C0C961C()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_23C0C972C;

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0C972C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C9844, 0, 0);
}

void sub_23C0C9844()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_23C0DAFE4;

    v6();
  }
}

uint64_t sub_23C0C9954(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_23C0C9974, 0, 0);
}

uint64_t sub_23C0C9974()
{
  v1 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v8 = off_284EE0DC0 + *off_284EE0DC0;
    v3 = *(off_284EE0DC0 + 1);
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_23C0C9B14;

    return (v8)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v6 = v0[34];
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0C9B14()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0C9C10, 0, 0);
}

uint64_t sub_23C0C9C10()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[38] = v5;
  v6 = *(v3 + 16);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_23C0C9D64;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_23C0C9D64(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_23C0C9E84, 0, 0);
}

uint64_t sub_23C0C9E84()
{
  v25 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 328) = v3;

    v4 = v1;
    sub_23C0DCD84(v4, (v0 + 64));
    *(v0 + 336) = *(v0 + 64);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 360) = *(v0 + 88);
    *(v0 + 376) = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_23C0CA178, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 288);
    v6 = sub_23C0E9830();
    __swift_project_value_buffer(v6, qword_27E1EF4F8);

    v7 = sub_23C0E9820();
    v8 = sub_23C0E9C90();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 288);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315394;
      if (*(v10 + 24))
      {
        if (*(v10 + 24) == 1)
        {
          v13 = 0xE600000000000000;
          v14 = 0x7070412D6E49;
        }

        else
        {
          v13 = 0xE800000000000000;
          v14 = 0x73676E6974746553;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        v14 = 17219;
      }

      v15 = *(v0 + 288);
      v16 = sub_23C0D8D20(v14, v13, &v24);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = *(v15 + 120);
      if (v17)
      {
        v18 = *(*(v0 + 288) + 112);
        v19 = v17;
      }

      else
      {
        v19 = 0xE300000000000000;
        v18 = 7104878;
      }

      v20 = sub_23C0D8D20(v18, v19, &v24);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_23C0B2000, v7, v8, "[%s] requesting userPreferredInputDevice for %s is nil", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v12, -1, -1);
      MEMORY[0x23EEC78E0](v11, -1, -1);
    }

    v21 = *(v0 + 272);
    v21[1] = 0u;
    v21[2] = 0u;
    *v21 = 0u;
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_23C0CA178()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v6;
  *(v0 + 208) = *(v0 + 96);
  v7 = v5[20];
  v8 = v5[21];
  v9 = v5[22];
  v10 = v5[23];
  v11 = v5[24];
  v12 = v5[25];
  *(v5 + 10) = v4;
  v5[22] = v3;
  *(v5 + 23) = v2;
  v5[25] = v1;
  sub_23C0BD974(v0 + 176, v0 + 224);
  sub_23C0BD974(v0 + 192, v0 + 240);
  sub_23C0BD974(v0 + 208, v0 + 256);
  sub_23C0B4E34(v7, v8);
  sub_23C0BE29C(v0 + 176);
  sub_23C0BE29C(v0 + 192);
  sub_23C0BE29C(v0 + 208);

  return MEMORY[0x2822009F8](sub_23C0CA294, 0, 0);
}

uint64_t sub_23C0CA294()
{
  v25 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = sub_23C0E9830();
  __swift_project_value_buffer(v2, qword_27E1EF4F8);

  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v10 = *(v0 + 288);
    v11 = sub_23C0D8D20(v9, v8, &v24);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    if (*(v10 + 120))
    {
      v12 = *(*(v0 + 288) + 112);
      v13 = *(v10 + 120);
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_23C0D8D20(v12, v13, &v24);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_23C0B2000, v3, v4, "[%s] requesting userPreferredInputDevice for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v7, -1, -1);
    MEMORY[0x23EEC78E0](v6, -1, -1);
  }

  v15 = *(v0 + 320);
  v16 = *(v0 + 288);
  v17 = *(v0 + 272);
  sub_23C0DCD84(v15, (v0 + 16));
  v22 = *(v0 + 32);
  v23 = *(v0 + 16);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);

  *v17 = v23;
  *(v17 + 16) = v22;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23C0CA504(uint64_t a1, uint64_t a2)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return MEMORY[0x2822009F8](sub_23C0CA524, 0, 0);
}

uint64_t sub_23C0CA524()
{
  v1 = v0[32];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 128);
    v0[34] = v3;
    v4 = *(v3 + 16);
    v5 = *(MEMORY[0x277D857E0] + 4);

    v6 = swift_task_alloc();
    v0[35] = v6;
    v7 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
    v0[36] = v7;
    *v6 = v0;
    v6[1] = sub_23C0CA660;

    return MEMORY[0x282200460](v0 + 29, v4, v7);
  }

  else
  {
    v8 = v0[31];
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    v8[4] = 0;
    v8[5] = 0xE000000000000000;
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23C0CA660()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CA75C, 0, 0);
}

uint64_t sub_23C0CA75C()
{
  v37 = v0;
  v1 = *(v0 + 272);

  v2 = *(v0 + 232);
  v3 = [v2 fallbackInputDevice];
  *(v0 + 296) = v3;

  v4 = [v3 deviceName];
  if (v4)
  {

    v5 = [v3 deviceName];
    if (!v5)
    {
LABEL_8:
      *(v0 + 320) = v3;
      if (qword_27E1EE790 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 264);
      v13 = sub_23C0E9830();
      __swift_project_value_buffer(v13, qword_27E1EF4F8);

      v14 = sub_23C0E9820();
      v15 = sub_23C0E9C90();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 264);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136315394;
        if (*(v16 + 24))
        {
          if (*(v16 + 24) == 1)
          {
            v19 = 0xE600000000000000;
            v20 = 0x7070412D6E49;
          }

          else
          {
            v19 = 0xE800000000000000;
            v20 = 0x73676E6974746553;
          }
        }

        else
        {
          v19 = 0xE200000000000000;
          v20 = 17219;
        }

        v26 = sub_23C0D8D20(v20, v19, &v36);

        *(v17 + 4) = v26;
        *(v17 + 12) = 2080;
        v27 = [v3 deviceName];
        if (v27)
        {
          v28 = v27;
          v29 = sub_23C0E9A10();
          v31 = v30;
        }

        else
        {
          v31 = 0xE300000000000000;
          v29 = 7104878;
        }

        v32 = sub_23C0D8D20(v29, v31, &v36);

        *(v17 + 14) = v32;
        _os_log_impl(&dword_23C0B2000, v14, v15, "[%s] requesting fallbackInputDevice %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC78E0](v18, -1, -1);
        MEMORY[0x23EEC78E0](v17, -1, -1);
      }

      v33 = *(*(v0 + 264) + 104);
      *(v0 + 328) = v33;

      v34 = v3;
      sub_23C0DCD84(v34, (v0 + 64));
      *(v0 + 336) = *(v0 + 64);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 360) = *(v0 + 88);
      *(v0 + 376) = *(v0 + 104);

      return MEMORY[0x2822009F8](sub_23C0CAF30, v33, 0);
    }

    v6 = v5;
    v7 = sub_23C0E9A10();
    v9 = v8;

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 == 0xE000000000000000;
    }

    if (v10)
    {
    }

    else
    {
      v11 = sub_23C0E9D90();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v21 = *(*(v0 + 264) + 136);
  *(v0 + 304) = v21;
  v22 = *(v21 + 16);
  v23 = *(MEMORY[0x277D857E0] + 4);

  v24 = swift_task_alloc();
  *(v0 + 312) = v24;
  *v24 = v0;
  v24[1] = sub_23C0CAB5C;
  v25 = *(v0 + 288);

  return MEMORY[0x282200460](v0 + 240, v22, v25);
}

uint64_t sub_23C0CAB5C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CAC58, 0, 0);
}

uint64_t sub_23C0CAC58()
{
  v25 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  v3 = *(v0 + 240);
  v4 = [v3 fallbackInputDevice];

  *(v0 + 320) = v4;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 264);
  v6 = sub_23C0E9830();
  __swift_project_value_buffer(v6, qword_27E1EF4F8);

  v7 = sub_23C0E9820();
  v8 = sub_23C0E9C90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    if (*(v9 + 24))
    {
      if (*(v9 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_23C0D8D20(v13, v12, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v4 deviceName];
    if (v15)
    {
      v16 = v15;
      v17 = sub_23C0E9A10();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_23C0D8D20(v17, v19, &v24);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_23C0B2000, v7, v8, "[%s] requesting fallbackInputDevice %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v21 = *(*(v0 + 264) + 104);
  *(v0 + 328) = v21;

  v22 = v4;
  sub_23C0DCD84(v22, (v0 + 64));
  *(v0 + 336) = *(v0 + 64);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 360) = *(v0 + 88);
  *(v0 + 376) = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_23C0CAF30, v21, 0);
}

uint64_t sub_23C0CAF30()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 80);
  *(v0 + 136) = *(v0 + 64);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  *(v0 + 152) = v4;
  *(v0 + 168) = *(v0 + 96);
  v7 = v6[14];
  v8 = v6[15];
  v9 = v6[16];
  v10 = v6[17];
  v11 = v6[18];
  v12 = v6[19];
  *(v6 + 7) = v5;
  v6[16] = v3;
  *(v6 + 17) = v2;
  v6[19] = v1;
  sub_23C0BD974(v0 + 136, v0 + 184);
  sub_23C0BD974(v0 + 152, v0 + 200);
  sub_23C0BD974(v0 + 168, v0 + 216);
  sub_23C0B4E34(v7, v8);
  sub_23C0BE29C(v0 + 136);
  sub_23C0BE29C(v0 + 152);
  sub_23C0BE29C(v0 + 168);

  return MEMORY[0x2822009F8](sub_23C0CB050, 0, 0);
}

uint64_t sub_23C0CB050()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 320);
  sub_23C0DCD84(v3, (v0 + 16));

  v4 = *(v0 + 16);
  v5 = *(v0 + 48);
  v2[1] = *(v0 + 32);
  v2[2] = v5;
  *v2 = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0CB0EC()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CB1AC, 0, 0);
}

uint64_t sub_23C0CB1AC()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_23C0CB1D0, v1, 0);
}

uint64_t sub_23C0CB1D0()
{
  *(v0 + 56) = *(*(v0 + 48) + 256);

  return MEMORY[0x2822009F8](sub_23C0CB244, 0, 0);
}

uint64_t sub_23C0CB244()
{
  v26 = v0;
  if (v0[7])
  {
    if (qword_27E1EE790 != -1)
    {
      swift_once();
      v24 = v0[7];
    }

    v1 = v0[2];
    v2 = sub_23C0E9830();
    __swift_project_value_buffer(v2, qword_27E1EF4F8);

    v3 = sub_23C0E9820();
    v4 = sub_23C0E9C90();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315394;
      if (*(v5 + 24))
      {
        if (*(v5 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v16 = v0[7];
      v17 = sub_23C0D8D20(v9, v8, &v25);

      *(v6 + 4) = v17;
      *(v6 + 12) = 2080;
      v18 = MEMORY[0x23EEC7000](v16, &type metadata for InputPickerMicrophone);
      v20 = sub_23C0D8D20(v18, v19, &v25);

      *(v6 + 14) = v20;
      _os_log_impl(&dword_23C0B2000, v3, v4, "[%s] hit cache for availableRoutes %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v7, -1, -1);
      MEMORY[0x23EEC78E0](v6, -1, -1);
    }

    v21 = v0[7];
    v22 = v0[5];

    v23 = v0[1];

    return v23(v21);
  }

  else
  {
    v10 = v0[5];
    v11 = *(v0[2] + 16);
    v12 = swift_allocObject();
    v0[8] = v12;
    swift_weakInit();
    sub_23C0E9BB0();
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_23C0CB57C;
    v14 = v0[5];

    return sub_23C0E00FC(0xD000000000000011, 0x800000023C0ED4F0, v14, &unk_23C0EAE18, v12);
  }
}

uint64_t sub_23C0CB57C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v12 = *v1;

  (*(v7 + 8))(v6, v8);
  v9 = *(v3 + 40);

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t sub_23C0CB700(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_23C0CB720, 0, 0);
}

uint64_t sub_23C0CB720()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_23C0CB818;

    return sub_23C0CBC14();
  }

  else
  {
    **(v0 + 40) = MEMORY[0x277D84F90];
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23C0CB818()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CB914, 0, 0);
}

uint64_t sub_23C0CB914()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23C0CB938, v1, 0);
}

uint64_t sub_23C0CB938()
{
  *(v0 + 80) = *(*(v0 + 72) + 256);

  return MEMORY[0x2822009F8](sub_23C0CB9AC, 0, 0);
}

uint64_t sub_23C0CB9AC()
{
  v23 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = sub_23C0E9830();
  __swift_project_value_buffer(v3, qword_27E1EF4F8);

  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v11 = *(v0 + 80);
    v12 = sub_23C0D8D20(v10, v9, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    if (v11)
    {
      v13 = MEMORY[0x23EEC7000](*(v0 + 80), &type metadata for InputPickerMicrophone);
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_23C0D8D20(v13, v15, &v22);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] requesting routes %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v19 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
  }

  **(v0 + 40) = v19;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23C0CBC14()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CBCD4, 0, 0);
}

uint64_t sub_23C0CBCD4()
{
  v1 = v0[5];
  v2 = *(v0[2] + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_weakInit();
  sub_23C0E9BB0();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C89C0;
  v5 = v0[5];

  return sub_23C0E199C(sub_23C0E199C, 0xD00000000000001FLL, 0x800000023C0ED510, v5, &unk_23C0EAE30, v3);
}

uint64_t sub_23C0CBDF4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_23C0E9BD0();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CBEB4, 0, 0);
}

uint64_t sub_23C0CBEB4()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x2822009F8](sub_23C0CBED8, v1, 0);
}

uint64_t sub_23C0CBED8()
{
  v1 = v0[13];
  v2 = v1[26];
  v0[14] = v2;
  v3 = v1[27];
  v0[15] = v3;
  v0[16] = v1[28];
  v0[17] = v1[29];
  v0[18] = v1[30];
  v0[19] = v1[31];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0CBF70, 0, 0);
}

uint64_t sub_23C0CBF70()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    *v4 = v2;
    *(v4 + 8) = v1;
    *(v4 + 16) = v13;
    *(v4 + 32) = v12;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(*(v0 + 72) + 16);
    v9 = swift_allocObject();
    *(v0 + 160) = v9;
    swift_weakInit();
    sub_23C0E9BB0();
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_23C0DB064;
    v11 = *(v0 + 96);

    return sub_23C0E1148(v0 + 16, 0xD00000000000001BLL, 0x800000023C0ED560, v11, &unk_23C0EAE68, v9);
  }
}

uint64_t sub_23C0CC0FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_23C0CC11C, 0, 0);
}

uint64_t sub_23C0CC11C()
{
  v1 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v8 = off_284EE0DC0 + *off_284EE0DC0;
    v3 = *(off_284EE0DC0 + 1);
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_23C0CC2BC;

    return (v8)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v6 = v0[34];
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0CC2BC()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CC3B8, 0, 0);
}

uint64_t sub_23C0CC3B8()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_23C0CC4E4;

  return (v7)(0, 0, v1, v2);
}

uint64_t sub_23C0CC4E4(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_23C0CC5E4, 0, 0);
}

uint64_t sub_23C0CC5E4()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 320) = v3;

    v4 = v1;
    sub_23C0DCD84(v4, (v0 + 64));
    *(v0 + 328) = *(v0 + 64);
    *(v0 + 344) = *(v0 + 80);
    *(v0 + 352) = *(v0 + 88);
    *(v0 + 368) = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_23C0CC6F0, v3, 0);
  }

  else
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 272);

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23C0CC6F0()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = v6[26];
  v8 = v6[27];
  v9 = v6[28];
  v10 = v6[29];
  v11 = v6[30];
  v12 = v6[31];
  v6[26] = *(v0 + 328);
  v6[27] = v5;
  v6[28] = v4;
  v6[29] = v3;
  v6[30] = v2;
  v6[31] = v1;
  v13 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v13;
  *(v0 + 208) = *(v0 + 96);
  sub_23C0BD974(v0 + 176, v0 + 224);
  sub_23C0BD974(v0 + 192, v0 + 240);
  sub_23C0BD974(v0 + 208, v0 + 256);
  sub_23C0B4E34(v7, v8);
  sub_23C0BE29C(v0 + 176);
  sub_23C0BE29C(v0 + 192);
  sub_23C0BE29C(v0 + 208);

  return MEMORY[0x2822009F8](sub_23C0CC800, 0, 0);
}

uint64_t sub_23C0CC800()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_23C0DCD84(v1, (v0 + 16));
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0CC8A4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = sub_23C0E9BD0();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CC968, 0, 0);
}

uint64_t sub_23C0CC968()
{
  v39 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v37 = v0;
  *(v0 + 56) = v4;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9F0, &qword_23C0EB0B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C0EAC90;
  if (v2)
  {
    v6 = &unk_23C0EB0A8;
  }

  else
  {
    v6 = &unk_23C0EB098;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = &unk_23C0EB0E0;
  }

  else
  {
    v8 = &unk_23C0EB0C0;
  }

  if (v2)
  {
    v9 = &unk_23C0EB098;
  }

  else
  {
    v9 = &unk_23C0EB0A8;
  }

  if (v2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (v2)
  {
    v11 = &unk_23C0EB0E8;
  }

  else
  {
    v11 = &unk_23C0EB0C8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v5 + 48) = v11;
  *(v5 + 56) = v13;
  v14 = qword_27E1EE790;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v37 + 16);
  v16 = sub_23C0E9830();
  __swift_project_value_buffer(v16, qword_27E1EF4F8);

  v17 = sub_23C0E9820();
  v18 = sub_23C0E9C90();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v37 + 16);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315650;
    v36 = v21;
    if (*(v19 + 24))
    {
      if (*(v19 + 24) == 1)
      {
        v22 = 0xE600000000000000;
        v23 = 0x7070412D6E49;
      }

      else
      {
        v22 = 0xE800000000000000;
        v23 = 0x73676E6974746553;
      }
    }

    else
    {
      v22 = 0xE200000000000000;
      v23 = 17219;
    }

    v24 = *(v37 + 80);
    v25 = sub_23C0D8D20(v23, v22, &v38);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    if (v24)
    {
      v26 = 0x6C6F686563616C70;
    }

    else
    {
      v26 = 0x746E65696C63;
    }

    if (v24)
    {
      v27 = 0xEB00000000726564;
    }

    else
    {
      v27 = 0xE600000000000000;
    }

    if (v24)
    {
      v28 = 0x746E65696C63;
    }

    else
    {
      v28 = 0x6C6F686563616C70;
    }

    if (v24)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = 0xEB00000000726564;
    }

    v30 = sub_23C0D8D20(v26, v27, &v38);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v31 = sub_23C0D8D20(v28, v29, &v38);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_23C0B2000, v17, v18, "[%s] Sending clear preferred input notification to %s first, then %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v36, -1, -1);
    MEMORY[0x23EEC78E0](v20, -1, -1);
  }

  else
  {
  }

  v32 = *(v37 + 40);
  v33 = *(*(v37 + 16) + 16);
  *(v37 + 64) = v33;
  v34 = swift_allocObject();
  *(v37 + 72) = v34;
  *(v34 + 16) = v5;
  sub_23C0E9BA0();

  return MEMORY[0x2822009F8](sub_23C0CCDA8, v33, 0);
}

uint64_t sub_23C0CCDA8()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_23C0DD498(0xD000000000000021, 0x800000023C0ED670, v2, &unk_23C0EB0D8, v0[9]);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_23C0CCE7C, 0, 0);
}

uint64_t sub_23C0CCE7C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0CCF10()
{
  v21 = v0;
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v4 = sub_23C0E9830();
    v0[16] = __swift_project_value_buffer(v4, qword_27E1EF4F8);

    v5 = sub_23C0E9820();
    v6 = sub_23C0E9C90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v9 = 0xE600000000000000;
          v10 = 0x7070412D6E49;
        }

        else
        {
          v9 = 0xE800000000000000;
          v10 = 0x73676E6974746553;
        }
      }

      else
      {
        v9 = 0xE200000000000000;
        v10 = 17219;
      }

      v13 = sub_23C0D8D20(v10, v9, &v20);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;
      if (*(v3 + 120))
      {
        v14 = *(v3 + 112);
        v15 = *(v3 + 120);
      }

      else
      {
        v15 = 0xE300000000000000;
        v14 = 7104878;
      }

      v16 = sub_23C0D8D20(v14, v15, &v20);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_23C0B2000, v5, v6, "[%s] clearing Preferred for %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v8, -1, -1);
      MEMORY[0x23EEC78E0](v7, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0((v3 + 144), *(v3 + 168));
    v19 = off_284EE0DC0 + *off_284EE0DC0;
    v17 = *(off_284EE0DC0 + 1);
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_23C0CD274;

    return (v19)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23C0CD274()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CD370, 0, 0);
}

uint64_t sub_23C0CD370()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[18] = v5;
  v6 = *(v3 + 32);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_23C0CD4C4;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_23C0CD4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_23C0CD848;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_23C0CD5E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23C0CD5E0()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = *(v1 + 104);
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_23C0CD650, v2, 0);
}

uint64_t sub_23C0CD650()
{
  v1 = v0[21];
  sub_23C0BECB0();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_23C0CD6EC;
  v3 = v0[15];

  return sub_23C0C87B4(0);
}

uint64_t sub_23C0CD6EC()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CD7E8, 0, 0);
}

uint64_t sub_23C0CD7E8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0CD848()
{
  v27 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v1;
  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v15 = v0[20];
    v16 = v0[15];
    v17 = sub_23C0D8D20(v12, v11, &v26);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[12];
    v21 = sub_23C0E9DB0();
    v23 = sub_23C0D8D20(v21, v22, &v26);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] clearing client preferred input error=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v10, -1, -1);
    MEMORY[0x23EEC78E0](v9, -1, -1);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[15];
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_23C0CDAA4()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v7 = off_284EE0DC0 + *off_284EE0DC0;
    v3 = *(off_284EE0DC0 + 1);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_23C0CDC34;

    return (v7)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23C0CDC34()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CDD30, 0, 0);
}

uint64_t sub_23C0CDD30()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  v4 = *(v1 + 24);
  *(v0 + 152) = v4;
  if (v4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4)
  {
    v6 = "userPreferredInputRoute()";
  }

  else
  {
    v6 = "AVKitRoutingService";
  }

  v7 = *(v3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_23C0CDEA0;

  return v11(v5, v6 | 0x8000000000000000, v2, v3);
}

uint64_t sub_23C0CDEA0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_23C0CE048;
  }

  else
  {
    *(v2 + 152);

    v4 = sub_23C0CDFE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23C0CDFE0()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_23C0CE048()
{
  v26 = v0;
  *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = sub_23C0E9830();
  __swift_project_value_buffer(v3, qword_27E1EF4F8);

  v4 = v1;
  v5 = sub_23C0E9820();
  v6 = sub_23C0E9C70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    if (*(v7 + 24))
    {
      if (*(v7 + 24) == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x7070412D6E49;
      }

      else
      {
        v10 = 0xE800000000000000;
        v11 = 0x73676E6974746553;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 17219;
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = sub_23C0D8D20(v11, v10, &v25);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = sub_23C0E9DB0();
    v22 = sub_23C0D8D20(v20, v21, &v25);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_23C0B2000, v5, v6, "[%s] clearing metering placeholder preferred input error=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v9, -1, -1);
    MEMORY[0x23EEC78E0](v8, -1, -1);
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
  }

  v23 = *(v0 + 8);

  return v23();
}

void sub_23C0CE310()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_23C0CE420;

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0CE420()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CE538, 0, 0);
}

void sub_23C0CE538()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_23C0CE648;

    v6();
  }
}

uint64_t sub_23C0CE648()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23C0CE778()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_23C0CE868;

    return sub_23C0CBDF4((v0 + 2));
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23C0CE868()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  sub_23C0DAAD8(v1 + 16, &qword_27E1EE798, &qword_23C0EB080);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23C0CE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v7 = sub_23C0E9BD0();
  v5[59] = v7;
  v8 = *(v7 - 8);
  v5[60] = v8;
  v9 = *(v8 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v11 = sub_23C0E9CB0();
  v5[64] = v11;
  v12 = *(v11 - 8);
  v5[65] = v12;
  v13 = *(v12 + 64) + 15;
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CEB28, 0, 0);
}

uint64_t sub_23C0CEB28()
{
  v1 = v0[66];
  v2 = v0[56];
  v3 = v0[57];
  v4 = [objc_opt_self() defaultCenter];
  v5 = *MEMORY[0x277CB8620];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v6 = sub_23C0DA34C();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[67] = v8;
  *v8 = v0;
  v8[1] = sub_23C0CEC40;
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[64];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_23C0CEC40()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_23C0DB068;
  }

  else
  {
    v3 = sub_23C0CED54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0CED70()
{
  v1 = v0[63];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:
    v6 = v0[66];
    v7 = v0[62];
    v8 = v0[63];
    v9 = v0[61];
    v10 = v0[58];

    v11 = v0[1];

    return v11();
  }

  v3 = v0[57];
  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_23C0DAAD8(v0[63], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v13 = sub_23C0E9830();
  __swift_project_value_buffer(v13, qword_27E1EF4F8);
  v14 = sub_23C0E9820();
  v15 = sub_23C0E9C90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23C0B2000, v14, v15, " .AvailableInputDevicesDidChange received", v16, 2u);
    MEMORY[0x23EEC78E0](v16, -1, -1);
  }

  v17 = v0[62];

  v18 = *(v5 + 16);
  v0[70] = v18;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0CF010, v18, 0);
}