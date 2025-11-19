uint64_t sub_21FE664B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t APKDeviceLockState.description.getter()
{
  if (*v0)
  {
    result = 0x656B636F6C6E752ELL;
  }

  else
  {
    result = 0x64656B636F6C2ELL;
  }

  *v0;
  return result;
}

uint64_t sub_21FE66ED8()
{
  if (*v0)
  {
    result = 0x64656B636F6C6E75;
  }

  else
  {
    result = 0x64656B636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_21FE66F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_21FE68B70() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21FE68B70();

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

uint64_t sub_21FE67000(uint64_t a1)
{
  v2 = sub_21FE674EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21FE6703C(uint64_t a1)
{
  v2 = sub_21FE674EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21FE67084@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21FE670C0(uint64_t a1)
{
  v2 = sub_21FE67594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21FE670FC(uint64_t a1)
{
  v2 = sub_21FE67594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21FE67138(uint64_t a1)
{
  v2 = sub_21FE67540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21FE67174(uint64_t a1)
{
  v2 = sub_21FE67540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t APKDeviceLockState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBA8, &qword_21FE69180);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBB0, &qword_21FE69188);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBB8, &qword_21FE69190);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21FE674EC();
  sub_21FE68BC0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_21FE67540();
    v18 = v22;
    sub_21FE68B60();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_21FE67594();
    sub_21FE68B60();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
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

unint64_t sub_21FE674EC()
{
  result = qword_27CF1BC00;
  if (!qword_27CF1BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1BC00);
  }

  return result;
}

unint64_t sub_21FE67540()
{
  result = qword_27CF1BC08;
  if (!qword_27CF1BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1BC08);
  }

  return result;
}

unint64_t sub_21FE67594()
{
  result = qword_27CF1BC10[0];
  if (!qword_27CF1BC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF1BC10);
  }

  return result;
}

uint64_t APKDeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_21FE68B80();
  MEMORY[0x223D71B50](v1);
  return sub_21FE68BA0();
}

uint64_t APKDeviceLockState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBC0, &qword_21FE69198);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBC8, &qword_21FE691A0);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBD0, &qword_21FE691A8);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21FE674EC();
  v17 = v37;
  sub_21FE68BB0();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_21FE68B50();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_21FE68B10();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBD8, &qword_21FE691B0) + 48);
    *v25 = &type metadata for APKDeviceLockState;
    sub_21FE68B40();
    sub_21FE68B00();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_21FE67540();
    sub_21FE68B30();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_21FE67594();
    sub_21FE68B30();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_21FE67AE0()
{
  v1 = *v0;
  sub_21FE68B80();
  MEMORY[0x223D71B50](v1);
  return sub_21FE68BA0();
}

uint64_t sub_21FE67B28()
{
  v1 = *v0;
  sub_21FE68B80();
  MEMORY[0x223D71B50](v1);
  return sub_21FE68BA0();
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

uint64_t sub_21FE67BB8()
{
  if (*v0)
  {
    result = 0x656B636F6C6E752ELL;
  }

  else
  {
    result = 0x64656B636F6C2ELL;
  }

  *v0;
  return result;
}

uint64_t sub_21FE67BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21FE67C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21FE67CA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_21FE67CDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21FE67D3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21FE67DD0;
}

void sub_21FE67DD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21FE67E54(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_21FE68AD0();
  v5 = MKBGetDeviceLockState();

  v6 = 0x100000001000001uLL >> (8 * v5);
  if (v5 >= 8)
  {
    LOBYTE(v6) = 0;
  }

  *a1 = v6;
}

uint64_t APKLockStateMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  APKLockStateMonitor.init()();
  return v0;
}

uint64_t APKLockStateMonitor.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = (v0 + 32);
  v3 = sub_21FE68278(&unk_2833A4CF8);
  sub_21FE68374(&unk_2833A4D18);
  *(v0 + 40) = v3;
  sub_21FE683DC();
  v4 = sub_21FE68AF0();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_21FE68428;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21FE68050;
  v8[3] = &block_descriptor;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  return v1;
}

uint64_t sub_21FE68050(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t APKLockStateMonitor.deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_21FE6851C(v0 + 16);
  v1 = *(v0 + 40);

  return v0;
}

uint64_t APKLockStateMonitor.__deallocating_deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_21FE6851C(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_21FE68148(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21FE68B80();
  sub_21FE68AE0();
  v6 = sub_21FE68BA0();

  return sub_21FE681C0(a1, a2, v6);
}

unint64_t sub_21FE681C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21FE68B70())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21FE68278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF1BBF0, &qword_21FE695F0);
    v3 = sub_21FE68B20();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21FE68148(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_21FE68374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1BBE0, &qword_21FE691B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21FE683DC()
{
  result = qword_28136BC78[0];
  if (!qword_28136BC78[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_28136BC78);
  }

  return result;
}

uint64_t sub_21FE68428()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      sub_21FE67E54(&v5);
      v4 = v5;
      (*(v2 + 8))(&v4, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21FE68548()
{
  result = qword_27CF1BBE8;
  if (!qword_27CF1BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1BBE8);
  }

  return result;
}

uint64_t sub_21FE686B8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21FE6874C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21FE68844()
{
  result = qword_27CF1C1A0[0];
  if (!qword_27CF1C1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF1C1A0);
  }

  return result;
}

unint64_t sub_21FE6889C()
{
  result = qword_27CF1C2B0;
  if (!qword_27CF1C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1C2B0);
  }

  return result;
}

unint64_t sub_21FE688F4()
{
  result = qword_27CF1C2B8[0];
  if (!qword_27CF1C2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF1C2B8);
  }

  return result;
}

unint64_t sub_21FE6894C()
{
  result = qword_27CF1C340;
  if (!qword_27CF1C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1C340);
  }

  return result;
}

unint64_t sub_21FE689A4()
{
  result = qword_27CF1C348[0];
  if (!qword_27CF1C348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF1C348);
  }

  return result;
}

unint64_t sub_21FE689FC()
{
  result = qword_27CF1C3D0;
  if (!qword_27CF1C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1C3D0);
  }

  return result;
}

unint64_t sub_21FE68A54()
{
  result = qword_27CF1C3D8[0];
  if (!qword_27CF1C3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CF1C3D8);
  }

  return result;
}