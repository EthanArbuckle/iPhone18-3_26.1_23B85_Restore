char *sub_23B5C166C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB8, &qword_23B5DD6E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_23B5C1768(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23B5C185C;

  return v6(v2 + 32);
}

uint64_t sub_23B5C185C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

BOOL _s9WiFiAware14WAPairedDeviceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  v16 = a2[8];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v51 = a2[8];
    v52 = a2[6];
    if (a1[1] != a2[1] || v3 != v10)
    {
      v17 = a1[5];
      v18 = a1[7];
      v19 = a2[5];
      v20 = a1[3];
      v21 = a1[6];
      v22 = a1[8];
      v23 = a2[3];
      v24 = sub_23B5D8C88();
      v11 = v23;
      v9 = v22;
      v8 = v21;
      v4 = v20;
      v12 = v19;
      v7 = v18;
      v6 = v17;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v51 = a2[8];
    v52 = a2[6];
    if (v10)
    {
      return 0;
    }
  }

  if (!v5)
  {
    v40 = v11;
    v41 = v4;
    sub_23B5BD168(v4, 0);
    if (!v13)
    {
      sub_23B5BD168(v40, 0);
      v38 = v41;
      v39 = 0;
      goto LABEL_30;
    }

    v49 = v41;
    sub_23B5BD168(v40, v13);
    goto LABEL_24;
  }

  if (!v13)
  {
    v42 = v4;
    v40 = v11;
    sub_23B5BD168(v4, v5);
    sub_23B5BD168(v40, 0);
    v49 = v42;
    sub_23B5BD168(v42, v5);

LABEL_24:
    sub_23B5C25F8(v49, v5);
    v43 = v40;
    v44 = v13;
LABEL_26:
    sub_23B5C25F8(v43, v44);
    return 0;
  }

  v48 = v11;
  if (v4 != v11 || v5 != v13)
  {
    v26 = v6;
    v27 = v7;
    v28 = v12;
    v29 = v4;
    v30 = v8;
    v31 = v9;
    v32 = sub_23B5D8C88();
    v9 = v31;
    v8 = v30;
    v4 = v29;
    v12 = v28;
    v7 = v27;
    v6 = v26;
    if ((v32 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v6 != v12 || v8 != v52)
  {
    v33 = v7;
    v34 = v4;
    v35 = v9;
    v36 = sub_23B5D8C88();
    v9 = v35;
    v4 = v34;
    v7 = v33;
    if ((v36 & 1) == 0)
    {
LABEL_25:
      v45 = v4;
      v50 = v4;
      sub_23B5BD168(v4, v5);
      sub_23B5BD168(v48, v13);
      sub_23B5BD168(v45, v5);
      sub_23B5C25F8(v48, v13);

      v43 = v50;
      v44 = v5;
      goto LABEL_26;
    }
  }

  if (v7 == v14 && v9 == v51)
  {
    v37 = v4;
    sub_23B5BD168(v4, v5);
    sub_23B5BD168(v48, v13);
    sub_23B5BD168(v37, v5);
    sub_23B5C25F8(v48, v13);

    v38 = v37;
    v39 = v5;
LABEL_30:
    sub_23B5C25F8(v38, v39);
    return 1;
  }

  v46 = v4;
  v47 = sub_23B5D8C88();
  sub_23B5BD168(v46, v5);
  sub_23B5BD168(v48, v13);
  sub_23B5BD168(v46, v5);
  sub_23B5C25F8(v48, v13);

  sub_23B5C25F8(v46, v5);
  return (v47 & 1) != 0;
}

uint64_t sub_23B5C1F34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E676E6972696170 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

uint64_t sub_23B5C2060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  v36 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 72 * v14;
    v32[0] = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v33 = *(v16 + 64);
    v32[2] = v18;
    v32[3] = v17;
    v32[1] = v19;
    v20 = *(v16 + 48);
    v29 = *(v16 + 32);
    v30 = v20;
    v31 = *(v16 + 64);
    v21 = *(v16 + 16);
    v27 = *v16;
    v28 = v21;
    sub_23B5AF43C(v32, v26);
    LOBYTE(v15) = v36(v15, &v27);
    v34[2] = v29;
    v34[3] = v30;
    v35 = v31;
    v34[0] = v27;
    v34[1] = v28;
    result = sub_23B5AFD30(v34);
    if (v15)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_23B5C1298(v24, a2, v25, a3);
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
      return sub_23B5C1298(v24, a2, v25, a3);
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

uint64_t sub_23B5C221C(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_23B5C2060(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_23B5C1208(v11, v6, v4, a2);
  result = MEMORY[0x23EEA0310](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5C239C(uint64_t a1)
{
  v4 = *(sub_23B5D8468() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B5C37E4;

  return sub_23B5BFC48(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_23B5C2550()
{
  result = qword_27E15CE10;
  if (!qword_27E15CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE10);
  }

  return result;
}

unint64_t sub_23B5C25A4()
{
  result = qword_27E15CE18;
  if (!qword_27E15CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE18);
  }

  return result;
}

uint64_t sub_23B5C25F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23B5C2648()
{
  result = qword_27E15CE28;
  if (!qword_27E15CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE28);
  }

  return result;
}

unint64_t sub_23B5C26A0()
{
  result = qword_27E15CE30;
  if (!qword_27E15CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE30);
  }

  return result;
}

unint64_t sub_23B5C2704()
{
  result = qword_27E15CE38;
  if (!qword_27E15CE38)
  {
    type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE38);
  }

  return result;
}

unint64_t sub_23B5C276C()
{
  result = qword_27E15CE40;
  if (!qword_27E15CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE40);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B5C27E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23B5C2840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

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

uint64_t sub_23B5C28C8(uint64_t a1, int a2)
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

uint64_t sub_23B5C2910(uint64_t result, int a2, int a3)
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

void sub_23B5C2994()
{
  sub_23B5C2A00();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B5C2A00()
{
  if (!qword_27E15CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15C428, &qword_23B5DDF80);
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15CE58);
    }
  }
}

void sub_23B5C2A6C()
{
  sub_23B5C2D94();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23B5C2A00();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_23B5D8468();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of WAPairedDevice.DevicesSequence.AsyncIterator.next()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B5C2C98;

  return v6();
}

uint64_t sub_23B5C2C98(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_23B5C2D94()
{
  if (!qword_27E15CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CE78, &qword_23B5DD490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E15CF00, &qword_23B5DD498);
    v0 = sub_23B5D88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15CE70);
    }
  }
}

uint64_t sub_23B5C2E2C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B5C2EBC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B5C2F80()
{
  result = qword_27E15CE80;
  if (!qword_27E15CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE80);
  }

  return result;
}

unint64_t sub_23B5C2FD8()
{
  result = qword_27E15CE88;
  if (!qword_27E15CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE88);
  }

  return result;
}

unint64_t sub_23B5C3030()
{
  result = qword_27E15CE90;
  if (!qword_27E15CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE90);
  }

  return result;
}

unint64_t sub_23B5C3088()
{
  result = qword_27E15CE98;
  if (!qword_27E15CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE98);
  }

  return result;
}

unint64_t sub_23B5C30E0()
{
  result = qword_27E15CEA0;
  if (!qword_27E15CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CEA0);
  }

  return result;
}

unint64_t sub_23B5C3138()
{
  result = qword_27E15CEA8;
  if (!qword_27E15CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CEA8);
  }

  return result;
}

uint64_t sub_23B5C318C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E6972696170 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

uint64_t sub_23B5C32A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B5C3308(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B5C3368(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B5C37E4;

  return sub_23B5C1768(a1, v5);
}

uint64_t sub_23B5C3420(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B5C34D8;

  return sub_23B5C1768(a1, v5);
}

uint64_t sub_23B5C34D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B5C35CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B5C37E4;

  return sub_23B5C1018(a1, v5);
}

uint64_t sub_23B5C3684(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23B5D8468() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23B5C34D8;

  return sub_23B5BF010(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_23B5C37F0()
{
  type metadata accessor for WiFiAwarePairedDevicePrivate();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277D7BAA0]) init];
  v0[15] = 0;
  result = sub_23B5C8D84(MEMORY[0x277D84F90]);
  v0[16] = result;
  qword_27E15D4A8 = v0;
  return result;
}

uint64_t sub_23B5C3858(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_23B5D8468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v2[16] + 16))
  {
    v14 = type metadata accessor for PairedDevicesDelegate();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate_privateSelf] = v2;
    swift_unownedRetain();
    v23.receiver = v15;
    v23.super_class = v14;
    v16 = objc_msgSendSuper2(&v23, sel_init);
    v17 = v2[15];
    v2[15] = v16;
    v18 = v16;
    swift_unknownObjectRelease();
    v19 = v2[14];
    [v19 setDelegate_];

    [v19 activate];
  }

  (*(v10 + 16))(v13, a2, v9);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, a1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  swift_beginAccess();
  sub_23B5C3AD0(v8, v13);
  return swift_endAccess();
}

uint64_t sub_23B5C3AD0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23B5C9270(a1);
    sub_23B5C7BC0(a2, v8);
    v14 = sub_23B5D8468();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_23B5C9270(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23B5C80B4(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23B5D8468();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23B5C3CE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  swift_beginAccess();
  sub_23B5C7BC0(a1, v7);
  sub_23B5C9270(v7);
  result = swift_endAccess();
  if (!*(*(v1 + 128) + 16))
  {
    v9 = *(v1 + 112);
    [*(v2 + 112) deactivate];
    [v9 setDelegate_];
    v10 = *(v2 + 120);
    *(v2 + 120) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23B5C3DD8()
{
  v1[46] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF20, &unk_23B5DD830);
  v1[50] = v5;
  v6 = *(v5 - 8);
  v1[51] = v6;
  v7 = *(v6 + 64) + 15;
  v1[52] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v1[53] = v8;
  v9 = *(v8 - 8);
  v1[54] = v9;
  v10 = *(v9 + 64) + 15;
  v1[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5C3F74, v0, 0);
}

uint64_t sub_23B5C3F74()
{
  v1 = *(v0 + 368);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 448) = v2;
  v3 = *(v2 + 32);
  *(v0 + 480) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v7 = *(v0 + 448);
LABEL_10:
      *(v0 + 456) = v6;
      *(v0 + 464) = v8;
      (*(*(v0 + 432) + 16))(*(v0 + 440), *(v7 + 56) + *(*(v0 + 432) + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), *(v0 + 424));
      v10 = [objc_opt_self() mainBundle];
      v11 = [v10 bundleIdentifier];

      if (v11)
      {
        break;
      }

      v13 = *(v0 + 432);
      v12 = *(v0 + 440);
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);
      v16 = *(v0 + 400);
      v17 = *(v0 + 408);
      *(v0 + 328) = MEMORY[0x277D84F98];
      sub_23B5D8888();
      (*(v13 + 8))(v12, v14);
      v7 = (*(v17 + 8))(v15, v16);
      v8 = *(v0 + 464);
      v6 = (*(v0 + 456) - 1) & *(v0 + 456);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v0 + 384);
    v23 = *(v0 + 392);
    v26 = *(v0 + 368);
    v25 = *(v0 + 376);

    v27 = *(v26 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_23B5C432C;
    swift_continuation_init();
    *(v0 + 208) = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
    sub_23B5D8828();
    (*(v24 + 32))(boxed_opaque_existential_0, v23, v25);
    *(v0 + 152) = MEMORY[0x277D85DD0];
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_23B5C57CC;
    *(v0 + 176) = &block_descriptor_30;
    [v27 queryPairedDevicesInfo_];
    (*(v24 + 8))(boxed_opaque_existential_0, v25);
    v7 = v0 + 16;

    return MEMORY[0x282200938](v7);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return MEMORY[0x282200938](v7);
      }

      v7 = *(v0 + 448);
      if (v9 >= (((1 << *(v0 + 480)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v9 + 64);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 440);
    v19 = *(v0 + 416);
    v20 = *(v0 + 392);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_23B5C432C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 472) = v3;
  v4 = *(v1 + 368);
  if (v3)
  {
    v5 = sub_23B5C4B30;
  }

  else
  {
    v5 = sub_23B5C444C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23B5C444C()
{
  v1 = v0[42];
  if (v1 >> 62)
  {
LABEL_32:
    v37 = v1;
    v2 = sub_23B5D8AF8();
    v1 = v37;
    v73 = v0;
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
      v62 = v1 & 0xFFFFFFFFFFFFFF8;
      v63 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x277D84F98];
      v60 = v2;
      v61 = v1;
      while (1)
      {
        if (v63)
        {
          v1 = MEMORY[0x23EE9FA30](v3, v1);
        }

        else
        {
          if (v3 >= *(v62 + 16))
          {
            goto LABEL_29;
          }

          v1 = *(v1 + 8 * v3 + 32);
        }

        v9 = v1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v64 = v3 + 1;
        v10 = [v1 deviceID];
        v68 = [v9 deviceID];
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_23B5D86B8();
          v69 = v14;
          v71 = v13;
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        v15 = [v9 pairingName];
        v66 = sub_23B5D86B8();
        v67 = v16;

        v17 = [v9 vendorName];
        v18 = sub_23B5D86B8();
        v65 = v19;

        v20 = [v9 modelName];
        v21 = sub_23B5D86B8();
        v23 = v22;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[45] = v4;
        v25 = v10;
        v27 = sub_23B5C7A98(v10);
        v28 = v4[2];
        v29 = (v26 & 1) == 0;
        v1 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_30;
        }

        v0 = v26;
        if (v4[3] >= v1)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v1 = sub_23B5C8A64();
            if (v0)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23B5C6E90(v1, isUniquelyReferenced_nonNull_native);
          v30 = v73[45];
          v1 = sub_23B5C7A98(v25);
          if ((v0 & 1) != (v31 & 1))
          {

            return sub_23B5D8CA8();
          }

          v27 = v1;
          if (v0)
          {
LABEL_4:
            v0 = v73;
            v4 = v73[45];
            v5 = v4[7] + 72 * v27;
            *(v73 + 5) = *v5;
            v7 = *(v5 + 32);
            v6 = *(v5 + 48);
            v8 = *(v5 + 16);
            v73[18] = *(v5 + 64);
            *(v73 + 7) = v7;
            *(v73 + 8) = v6;
            *(v73 + 6) = v8;
            *v5 = v68;
            *(v5 + 8) = v71;
            *(v5 + 16) = v69;
            *(v5 + 24) = v66;
            *(v5 + 32) = v67;
            *(v5 + 40) = v18;
            *(v5 + 48) = v65;
            *(v5 + 56) = v21;
            *(v5 + 64) = v23;
            sub_23B5AFD30((v73 + 10));

            goto LABEL_5;
          }
        }

        v4 = v73[45];
        v4[(v27 >> 6) + 8] |= 1 << v27;
        *(v4[6] + 8 * v27) = v25;
        v32 = (v4[7] + 72 * v27);
        *v32 = v68;
        v32[1] = v71;
        v32[2] = v69;
        v32[3] = v66;
        v32[4] = v67;
        v32[5] = v18;
        v32[6] = v65;
        v32[7] = v21;
        v32[8] = v23;
        v33 = v4[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_31;
        }

        v4[2] = v35;

        v0 = v73;
LABEL_5:
        ++v3;
        v1 = v61;
        if (v64 == v60)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F98];
LABEL_34:
  v72 = v0 + 42;

  v38 = MEMORY[0x277D84F98];
  while (1)
  {
    v39 = v0[54];
    v40 = v0[55];
    v41 = v0[53];
    v42 = v73[52];
    v43 = v73[51];
    v44 = v73[50];
    v73[41] = v4;
    sub_23B5D8888();
    (*(v39 + 8))(v40, v41);
    v0 = v73;
    v45 = (*(v43 + 8))(v42, v44);
    v46 = v73[58];
    v47 = (v0[57] - 1) & v0[57];
    if (!v47)
    {
      break;
    }

    v45 = v73[56];
LABEL_41:
    v73[57] = v47;
    v73[58] = v46;
    (*(v73[54] + 16))(v73[55], *(v45 + 56) + *(v73[54] + 72) * (__clz(__rbit64(v47)) | (v46 << 6)), v73[53]);
    v49 = [objc_opt_self() mainBundle];
    v50 = [v49 bundleIdentifier];

    v4 = v38;
    if (v50)
    {
      v52 = v73[48];
      v51 = v73[49];
      v54 = v73[46];
      v53 = v73[47];

      v70 = *(v54 + 112);
      v73[2] = v73;
      v73[7] = v72;
      v73[3] = sub_23B5C432C;
      swift_continuation_init();
      v73[26] = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73 + 23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
      sub_23B5D8828();
      (*(v52 + 32))(boxed_opaque_existential_0, v51, v53);
      v73[19] = MEMORY[0x277D85DD0];
      v73[20] = 1107296256;
      v73[21] = sub_23B5C57CC;
      v73[22] = &block_descriptor_30;
      [v70 queryPairedDevicesInfo_];
      (*(v52 + 8))(boxed_opaque_existential_0, v53);
      v45 = (v73 + 2);

      return MEMORY[0x282200938](v45);
    }
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      return MEMORY[0x282200938](v45);
    }

    v45 = v73[56];
    if (v48 >= (((1 << *(v73 + 480)) + 63) >> 6))
    {
      break;
    }

    v47 = *(v45 + 8 * v48 + 64);
    ++v46;
    if (v47)
    {
      v46 = v48;
      goto LABEL_41;
    }
  }

  v56 = v73[55];
  v57 = v73[52];
  v58 = v73[49];

  v59 = v73[1];

  return v59();
}

uint64_t sub_23B5C4B30()
{
  v1 = *(v0 + 472);
  swift_willThrow();
  if (qword_27E15C2E8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = *(v0 + 472);
  v3 = sub_23B5D84B8();
  __swift_project_value_buffer(v3, qword_27E15D420);
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  sub_23B5D8A08();
  v4 = *(v0 + 288);
  *(v0 + 264) = *(v0 + 280);
  *(v0 + 272) = v4;
  MEMORY[0x23EE9F750](0xD00000000000001ELL, 0x800000023B5DF400);
  swift_getErrorValue();
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  sub_23B5D8C68();
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);

  v9 = sub_23B5D8498();
  v10 = sub_23B5D88F8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v0 + 352) = v12;
    *v11 = 136315138;
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    sub_23B5D8A08();
    v13 = *(v0 + 320);

    *(v0 + 296) = 0x7261774169466957;
    *(v0 + 304) = 0xEB00000000203A65;
    MEMORY[0x23EE9F750](v8, v7);
    MEMORY[0x23EE9F750](32, 0xE100000000000000);
    if (qword_27E15C310 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 472);
    MEMORY[0x23EE9F750](qword_27E15D498, unk_27E15D4A0);
    v15 = sub_23B5AC96C(*(v0 + 296), *(v0 + 304), (v0 + 352));

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23B5AA000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EEA0310](v12, -1, -1);
    MEMORY[0x23EEA0310](v11, -1, -1);

    v16 = v14;
  }

  else
  {
    v17 = *(v0 + 472);

    v16 = v17;
  }

  v18 = MEMORY[0x277D84F98];
  while (1)
  {
    v20 = *(v0 + 432);
    v19 = *(v0 + 440);
    v22 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    *(v0 + 328) = v18;
    sub_23B5D8888();
    (*(v20 + 8))(v19, v21);
    (*(v24 + 8))(v22, v23);
    v25 = *(v0 + 464);
    v26 = (*(v0 + 456) - 1) & *(v0 + 456);
    if (!v26)
    {
      break;
    }

    v27 = *(v0 + 448);
LABEL_14:
    *(v0 + 456) = v26;
    *(v0 + 464) = v25;
    (*(*(v0 + 432) + 16))(*(v0 + 440), *(v27 + 56) + *(*(v0 + 432) + 72) * (__clz(__rbit64(v26)) | (v25 << 6)), *(v0 + 424));
    v29 = [objc_opt_self() mainBundle];
    v30 = [v29 bundleIdentifier];

    if (v30)
    {
      v32 = *(v0 + 384);
      v31 = *(v0 + 392);
      v34 = *(v0 + 368);
      v33 = *(v0 + 376);

      v41 = *(v34 + 112);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = sub_23B5C432C;
      swift_continuation_init();
      *(v0 + 208) = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 184));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
      sub_23B5D8828();
      (*(v32 + 32))(boxed_opaque_existential_0, v31, v33);
      *(v0 + 152) = MEMORY[0x277D85DD0];
      *(v0 + 160) = 1107296256;
      *(v0 + 168) = sub_23B5C57CC;
      *(v0 + 176) = &block_descriptor_30;
      [v41 queryPairedDevicesInfo_];
      (*(v32 + 8))(boxed_opaque_existential_0, v33);

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v27 = *(v0 + 448);
    if (v28 >= (((1 << *(v0 + 480)) + 63) >> 6))
    {
      break;
    }

    v26 = *(v27 + 8 * v28 + 64);
    ++v25;
    if (v26)
    {
      v25 = v28;
      goto LABEL_14;
    }
  }

  v36 = *(v0 + 440);
  v37 = *(v0 + 416);
  v38 = *(v0 + 392);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_23B5C50E4()
{
  [*(v0 + 112) deactivate];
  [*(v0 + 112) setDelegate_];
  v1 = *(v0 + 120);
  *(v0 + 120) = 0;
  swift_unknownObjectRelease();

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23B5C514C()
{
  sub_23B5C50E4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5C519C()
{
  v1[24] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5C5268, v0, 0);
}

uint64_t sub_23B5C5268()
{
  v0[21] = sub_23B5C8FB0(MEMORY[0x277D84F90]);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[26];
    v3 = v0[27];
    v6 = v0[24];
    v5 = v0[25];

    v12 = *(v6 + 112);
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_23B5C54DC;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
    sub_23B5D8828();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23B5C57CC;
    v0[13] = &block_descriptor;
    [v12 queryPairedDevicesInfo_];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[27];
    v9 = v0[21];

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_23B5C54DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 192);
  if (v3)
  {
    v5 = sub_23B5C5688;
  }

  else
  {
    v5 = sub_23B5C55FC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23B5C55FC()
{
  sub_23B5C5884(v0[22], v0 + 21);

  v1 = v0[27];
  v2 = v0[21];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23B5C5688()
{
  v1 = v0[28];
  swift_willThrow();
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = sub_23B5D84B8();
  __swift_project_value_buffer(v3, qword_27E15D420);
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD00000000000001ELL, 0x800000023B5DF400);
  swift_getErrorValue();
  v4 = v0[18];
  v5 = v0[19];
  sub_23B5D8C68();
  sub_23B5AC778(0, 0xE000000000000000);

  v6 = v0[27];
  v7 = v0[21];

  v8 = v0[1];

  return v8(v7);
}

void sub_23B5C57CC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
    sub_23B5D8838();
  }

  else
  {
    sub_23B5C9224();
    sub_23B5D8808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
    sub_23B5D8848();
  }
}

unint64_t sub_23B5C5884(unint64_t result, uint64_t *a2)
{
  if (result >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v23)
  {
    v3 = 0;
    v26 = result & 0xFFFFFFFFFFFFFF8;
    v27 = result & 0xC000000000000001;
    v24 = i;
    v25 = result;
    while (1)
    {
      if (v27)
      {
        result = MEMORY[0x23EE9FA30](v3, result);
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_14;
        }

        result = *(result + 8 * v3 + 32);
      }

      v18 = result;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v33 = v3 + 1;
      v32 = [result deviceID];
      v31 = [v18 deviceID];
      v19 = [v18 name];
      if (v19)
      {
        v20 = v19;
        v21 = sub_23B5D86B8();
        v29 = v22;
        v30 = v21;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v4 = [v18 pairingName];
      v5 = sub_23B5D86B8();
      v7 = v6;

      v8 = [v18 vendorName];
      v9 = sub_23B5D86B8();
      v11 = v10;

      v12 = [v18 modelName];
      v13 = sub_23B5D86B8();
      v15 = v14;

      v34[0] = v31;
      v34[1] = v30;
      v34[2] = v29;
      v34[3] = v5;
      v34[4] = v7;
      v34[5] = v9;
      v34[6] = v11;
      v34[7] = v13;
      v34[8] = v15;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *a2;
      *a2 = 0x8000000000000000;
      sub_23B5C82C4(v34, v32, isUniquelyReferenced_nonNull_native);
      *a2 = v35;

      ++v3;
      result = v25;
      if (v33 == v24)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v23 = result;
    i = sub_23B5D8AF8();
  }

  return result;
}

uint64_t sub_23B5C5AC0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v8 = sub_23B5D84B8();
  __swift_project_value_buffer(v8, qword_27E15D420);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_23B5D8A08();

  v18 = 0xD000000000000015;
  v19 = 0x800000023B5DF360;
  v9 = [a1 description];
  v10 = sub_23B5D86B8();
  v12 = v11;

  MEMORY[0x23EE9F750](v10, v12);

  sub_23B5AC760(v18, v19);

  v13 = sub_23B5D8868();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v15 = *(v2 + OBJC_IVAR____TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate_privateSelf);
  swift_unownedRetainStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  sub_23B5BF6D4(0, 0, v7, &unk_23B5DD800, v16);
}

uint64_t sub_23B5C5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23B5C5D0C, 0, 0);
}

uint64_t sub_23B5C5D0C()
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
    v3[1] = sub_23B5C5E00;

    return sub_23B5C3DD8();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23B5C5E00()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23B5C5F18, 0, 0);
}

uint64_t sub_23B5C5FA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v8 = sub_23B5D84B8();
  __swift_project_value_buffer(v8, qword_27E15D420);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_23B5D8A08();

  v18 = 0xD000000000000017;
  v19 = 0x800000023B5DF340;
  v9 = [a1 description];
  v10 = sub_23B5D86B8();
  v12 = v11;

  MEMORY[0x23EE9F750](v10, v12);

  sub_23B5AC760(v18, v19);

  v13 = sub_23B5D8868();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v15 = *(v2 + OBJC_IVAR____TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate_privateSelf);
  swift_unownedRetainStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  sub_23B5BF6D4(0, 0, v7, &unk_23B5DD7F0, v16);
}

uint64_t sub_23B5C61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23B5C61F4, 0, 0);
}

uint64_t sub_23B5C61F4()
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
    v3[1] = sub_23B5C62E8;

    return sub_23B5C3DD8();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23B5C62E8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23B5C95B0, 0, 0);
}

uint64_t sub_23B5C6468(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v8 = sub_23B5D84B8();
  __swift_project_value_buffer(v8, qword_27E15D420);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_23B5D8A08();

  v18 = 0xD000000000000017;
  v19 = 0x800000023B5DF320;
  v9 = [a1 description];
  v10 = sub_23B5D86B8();
  v12 = v11;

  MEMORY[0x23EE9F750](v10, v12);

  sub_23B5AC760(v18, v19);

  v13 = sub_23B5D8868();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v15 = *(v2 + OBJC_IVAR____TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate_privateSelf);
  swift_unownedRetainStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  sub_23B5BF6D4(0, 0, v7, &unk_23B5DD7E0, v16);
}

id sub_23B5C672C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PairedDevicesDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B5C6798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C37E4;

  return sub_23B5C61D4(a1, v4, v5, v6);
}

uint64_t sub_23B5C684C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C37E4;

  return sub_23B5C61D4(a1, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B5C6940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C34D8;

  return sub_23B5C5CEC(a1, v4, v5, v6);
}

uint64_t sub_23B5C69F4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_23B5D8468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
  v52 = a2;
  result = sub_23B5D8B18();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_23B5C92D8(&qword_27E15CF38);
      result = sub_23B5D8658();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23B5C6E90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  result = sub_23B5D8B18();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (v13)
      {
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = v18 | (v9 << 6);
        if (a2)
        {
LABEL_12:
          v20 = *(*(v5 + 48) + 8 * v19);
          v21 = *(v5 + 56) + 72 * v19;
          v38 = *v21;
          v39 = *(v21 + 16);
          v40 = *(v21 + 48);
          v41 = *(v21 + 32);
          v22 = *(v21 + 64);
          goto LABEL_19;
        }
      }

      else
      {
        v23 = v9;
        do
        {
          v9 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v9 >= v14)
          {
            if (a2)
            {
              v36 = 1 << *(v5 + 32);
              if (v36 >= 64)
              {
                bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v10 = -1 << v36;
              }

              *(v5 + 16) = 0;
            }

            v3 = v37;
            goto LABEL_35;
          }

          v24 = v10[v9];
          ++v23;
        }

        while (!v24);
        v13 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v9 << 6);
        if (a2)
        {
          goto LABEL_12;
        }
      }

      v20 = *(*(v5 + 48) + 8 * v19);
      v25 = *(v5 + 56) + 72 * v19;
      v22 = *(v25 + 64);
      v26 = *(v25 + 48);
      v27 = *(v25 + 16);
      v44 = *(v25 + 32);
      v45 = v26;
      v43[1] = v27;
      v43[0] = *v25;
      v46 = v22;
      v40 = v26;
      v41 = v44;
      v38 = v43[0];
      v39 = v27;
      sub_23B5AF43C(v43, v42);
LABEL_19:
      v28 = *(v8 + 40);
      result = sub_23B5D8D08();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      v17 = *(v8 + 56) + 72 * v16;
      *v17 = v38;
      *(v17 + 16) = v39;
      *(v17 + 32) = v41;
      *(v17 + 48) = v40;
      *(v17 + 64) = v22;
      ++*(v8 + 16);
    }
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23B5C7174(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_23B5D8B18();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v5;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v25 = 16 * (v22 | (v11 << 6));
      v26 = (*(v7 + 48) + v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v7 + 56) + v25);
      v30 = v29[1];
      v43 = *v29;
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v10 + 40);
      sub_23B5D8D18();
      sub_23B5D8708();
      result = sub_23B5D8D58();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v27;
      v20[1] = v28;
      v21 = (*(v10 + 56) + v19);
      *v21 = v43;
      v21[1] = v30;
      ++*(v10 + 16);
      v7 = v41;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23B5C742C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
  result = sub_23B5D8B18();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 32 * v21;
      v39 = *(v23 + 24);
      v24 = *(v23 + 8);
      v38 = *(v23 + 16);
      v25 = *v23;
      v26 = *(v8 + 40);
      sub_23B5D8D18();
      MEMORY[0x23EE9FD40](v22);
      result = sub_23B5D8D58();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v25;
      v5 = v37;
      *(v17 + 8) = v24;
      *(v17 + 16) = v38;
      *(v17 + 24) = v39;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_23B5C76D4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23B5D8468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23B5C92D8(&qword_27E15CF48);
      v16 = sub_23B5D8698();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23B5C7880(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23B5C78EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23B5D8C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23B5C79A4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23B5C7A14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23B5D8468();
  sub_23B5C92D8(&qword_27E15CF38);
  v5 = sub_23B5D8658();

  return sub_23B5C76D4(a1, v5);
}

unint64_t sub_23B5C7A98(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23B5D8D08();

  return sub_23B5C7880(a1, v4);
}

unint64_t sub_23B5C7ADC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23B5D8D18();
  sub_23B5D8708();
  v6 = sub_23B5D8D58();

  return sub_23B5C78EC(a1, a2, v6);
}

unint64_t sub_23B5C7B54(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](a1);
  v4 = sub_23B5D8D58();

  return sub_23B5C79A4(a1, v4);
}

uint64_t sub_23B5C7BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23B5C7A14(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B5C8708();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23B5D8468();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_23B5C7D78(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_23B5C7D78(int64_t a1, uint64_t a2)
{
  v4 = sub_23B5D8468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_23B5D8978();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_23B5C92D8(&qword_27E15CF38);
      v24 = sub_23B5D8658();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23B5C80B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23B5D8468();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23B5C7A14(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23B5C8708();
      goto LABEL_7;
    }

    sub_23B5C69F4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_23B5C7A14(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23B5C8608(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23B5D8CA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_23B5C82C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23B5C7A98(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23B5C6E90(v14, a3 & 1);
      v18 = *v4;
      result = sub_23B5C7A98(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23B5C8A64();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v22 = v20[7] + 72 * result;
    *v22 = *a1;
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    *(v22 + 64) = *(a1 + 64);
    *(v22 + 32) = v24;
    *(v22 + 48) = v25;
    *(v22 + 16) = v23;
    v26 = v20[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v20[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 72 * result;

  return sub_23B5C91C8(a1, v21);
}

uint64_t sub_23B5C845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_23B5C7ADC(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_23B5C7174(v22, a5 & 1, a6, a7);
      v26 = *v10;
      v17 = sub_23B5C7ADC(a3, a4);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_23B5C8C1C(a6, a7);
      v17 = v25;
    }
  }

  v28 = *v10;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a3;
  v32[1] = a4;
  v33 = (v28[7] + 16 * v17);
  *v33 = a1;
  v33[1] = a2;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

uint64_t sub_23B5C8608(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23B5D8468();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_23B5C8708()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_23B5D8468();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
  v6 = *v0;
  v7 = sub_23B5D8B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_23B5C8A64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  v2 = *v0;
  v3 = sub_23B5D8B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 72;
        v20 = *(v2 + 56) + v17;
        v22 = *(v20 + 16);
        v21 = *(v20 + 32);
        v23 = *(v20 + 48);
        v33 = *(v20 + 64);
        v32 = v23;
        v29 = *v20;
        v30 = v22;
        v31 = v21;
        *(*(v4 + 48) + v18) = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v29;
        v25 = v30;
        v26 = v31;
        v27 = v32;
        *(v24 + 64) = v33;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
        result = sub_23B5AF43C(&v29, v28);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23B5C8C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23B5D8B08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = (*(v4 + 56) + v19);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v6 + 48) + v19);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v6 + 56) + v19);
        *v27 = v24;
        v27[1] = v25;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_23B5C8D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF68, &qword_23B5DD868);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
    v8 = sub_23B5D8B28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23B5C32A0(v10, v6, &qword_27E15CF68, &qword_23B5DD868);
      result = sub_23B5C7A14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23B5D8468();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_23B5C8FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  v3 = sub_23B5D8B28();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[64] = *(a1 + 96);
  v6 = *v21;
  result = sub_23B5C7A98(*v21);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_23B5C32A0(v21, v20, &qword_27E15CF18, &qword_23B5DD828);
    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = v3[7] + 72 * result;
    *v10 = *&v21[8];
    v11 = *&v21[24];
    v12 = *&v21[40];
    v13 = *&v21[56];
    *(v10 + 64) = *&v21[72];
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 16) = v11;
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

    sub_23B5C32A0(v21, v20, &qword_27E15CF18, &qword_23B5DD828);
    v17 = v9[1];
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = v9[3];
    *&v21[32] = v9[2];
    *&v21[48] = v18;
    *&v21[64] = v9[4];
    v6 = *v21;
    result = sub_23B5C7A98(*v21);
    v9 += 5;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
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

unint64_t sub_23B5C9224()
{
  result = qword_27E15CF10;
  if (!qword_27E15CF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15CF10);
  }

  return result;
}

uint64_t sub_23B5C9270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5C92D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B5D8468();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B5C9344(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23B5D8B28();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_23B5C7ADC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v10;
      v14[1] = v9;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23B5C9450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
    v3 = sub_23B5D8B28();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 32);
      v6 = *(i - 24);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_23B5C7B54(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t WAPublishableService.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t WAPublishableService.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_23B5C96B0(uint64_t a1)
{
  v2 = sub_23B5CA1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C96EC(uint64_t a1)
{
  v2 = sub_23B5CA1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPublishableService.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23B5D8708();
}

unint64_t sub_23B5C97E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_23B5C98EC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

unint64_t WASubscribableService.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t _s9WiFiAware20WAPublishableServiceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B5D8C88();
  }
}

uint64_t sub_23B5C9A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5C9A90(uint64_t a1)
{
  v2 = sub_23B5CA1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C9ACC(uint64_t a1)
{
  v2 = sub_23B5CA1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5C9B4C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_23B5D8D78();
  sub_23B5D8C18();
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s9WiFiAware20WAPublishableServiceV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8D18();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5C9D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23B5D8D68();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_23B5D8B88();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B5C9EC8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_23B5C9F2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8D18();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

unint64_t sub_23B5C9F74()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_23B5CA05C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_23B5D8D78();
  sub_23B5D8C18();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_23B5CA1A4()
{
  result = qword_27E15CF78;
  if (!qword_27E15CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CF78);
  }

  return result;
}

unint64_t sub_23B5CA1F8()
{
  result = qword_27E15CF90;
  if (!qword_27E15CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CF90);
  }

  return result;
}

unint64_t sub_23B5CA24C(void *a1)
{
  a1[1] = sub_23B5CA294();
  a1[2] = sub_23B5B0EF0();
  a1[3] = sub_23B5B0AB4();
  a1[4] = sub_23B5CA2E8();
  result = sub_23B5CA33C();
  a1[5] = result;
  return result;
}

unint64_t sub_23B5CA294()
{
  result = qword_27E15CFA0;
  if (!qword_27E15CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFA0);
  }

  return result;
}

unint64_t sub_23B5CA2E8()
{
  result = qword_27E15CFA8;
  if (!qword_27E15CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFA8);
  }

  return result;
}

unint64_t sub_23B5CA33C()
{
  result = qword_27E15CFB0;
  if (!qword_27E15CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFB0);
  }

  return result;
}

unint64_t sub_23B5CA3A0()
{
  result = qword_27E15CFB8;
  if (!qword_27E15CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFB8);
  }

  return result;
}

unint64_t sub_23B5CA3F4(void *a1)
{
  a1[1] = sub_23B5CA43C();
  a1[2] = sub_23B5AF244();
  a1[3] = sub_23B5AEDB4();
  a1[4] = sub_23B5CA490();
  result = sub_23B5CA4E4();
  a1[5] = result;
  return result;
}

unint64_t sub_23B5CA43C()
{
  result = qword_27E15CFC0;
  if (!qword_27E15CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFC0);
  }

  return result;
}

unint64_t sub_23B5CA490()
{
  result = qword_27E15CFC8;
  if (!qword_27E15CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFC8);
  }

  return result;
}

unint64_t sub_23B5CA4E4()
{
  result = qword_27E15CFD0;
  if (!qword_27E15CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFD0);
  }

  return result;
}

unint64_t sub_23B5CA53C()
{
  result = qword_27E15CFD8;
  if (!qword_27E15CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFD8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B5CA5D4(uint64_t a1, int a2)
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

uint64_t sub_23B5CA61C(uint64_t result, int a2, int a3)
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

unint64_t sub_23B5CA68C()
{
  result = qword_27E15CFE0;
  if (!qword_27E15CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFE0);
  }

  return result;
}

unint64_t sub_23B5CA6E4()
{
  result = qword_27E15CFE8;
  if (!qword_27E15CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFE8);
  }

  return result;
}

unint64_t sub_23B5CA73C()
{
  result = qword_27E15CFF0;
  if (!qword_27E15CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFF0);
  }

  return result;
}

unint64_t sub_23B5CA794()
{
  result = qword_27E15CFF8;
  if (!qword_27E15CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFF8);
  }

  return result;
}

unint64_t sub_23B5CA7EC()
{
  result = qword_27E15D000;
  if (!qword_27E15D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D000);
  }

  return result;
}

unint64_t sub_23B5CA844()
{
  result = qword_27E15D008;
  if (!qword_27E15D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D008);
  }

  return result;
}

uint64_t sub_23B5CA8D8()
{
  v0 = sub_23B5CCBB4();
  if (!v0 || (v1 = v0, , v2 = sub_23B5CA958(v1, &qword_27E15CF60, &qword_23B5DD860), result = , !v2))
  {
    v2 = sub_23B5C931C(MEMORY[0x277D84F90]);
  }

  qword_27E15D4B0 = v2;
  return result;
}

unint64_t sub_23B5CA958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v4 = sub_23B5D8B28();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v25 = v3;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v17);
    ++v11;
    if (v8)
    {
      while (1)
      {
        v18 = 40 * (__clz(__rbit64(v8)) | (v17 << 6));
        sub_23B5C954C(*(v3 + 48) + v18, v31);
        sub_23B5CCF10(*(v3 + 56) + v18, v32 + 8);
        v30[0] = v32[0];
        v30[1] = v32[1];
        v30[2] = v32[2];
        v29[0] = v31[0];
        v29[1] = v31[1];
        sub_23B5C954C(v29, v28);
        if (!swift_dynamicCast())
        {
          sub_23B5C3308(v29, &qword_27E15D010, &qword_23B5DDDF0);

          goto LABEL_23;
        }

        sub_23B5CCF10(v30 + 8, v28);
        sub_23B5C3308(v29, &qword_27E15D010, &qword_23B5DDDF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v8 &= v8 - 1;
        result = sub_23B5C7ADC(v26, v27);
        if (v19)
        {
          v12 = 16 * result;
          v13 = (v4[6] + 16 * result);
          v14 = v13[1];
          *v13 = v26;
          v13[1] = v27;

          v15 = (v4[7] + v12);
          v3 = v25;
          v16 = v15[1];
          *v15 = v26;
          v15[1] = v27;

          v11 = v17;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_26;
          }

          *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v4[6] + 16 * result);
          *v20 = v26;
          v20[1] = v27;
          v21 = (v4[7] + 16 * result);
          *v21 = v26;
          v21[1] = v27;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_27;
          }

          v4[2] = v24;
          v11 = v17;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v17 = v11;
      }

LABEL_23:
      sub_23B5CD0E0(0, 0);
      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23B5CAC68()
{
  if (!sub_23B5CCBB4() || (v1 = v0, , v2 = sub_23B5CA958(v1, &qword_27E15CF58, &qword_23B5DD858), result = , !v2))
  {
    v2 = sub_23B5C9330(MEMORY[0x277D84F90]);
  }

  qword_27E15D4B8 = v2;
  return result;
}

uint64_t sub_23B5CACE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D028, &qword_23B5DDE08);
    v4 = sub_23B5D8B28();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v16 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
    v17 = (*(a1 + 48) + v16);
    v18 = v17[1];
    v19 = (*(a1 + 56) + v16);
    v21 = *v19;
    v20 = v19[1];
    *&v43[0] = *v17;
    *(&v43[0] + 1) = v18;

    v22 = swift_dynamicCast();
    v37 = a2;
    v38 = a3(v22);
    *&v36 = v21;
    *(&v36 + 1) = v20;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    sub_23B5CCFC8(&v36, v42);
    v33 = v39;
    v34 = v40;
    v35 = v41;
    sub_23B5CCFC8(v42, v43);
    v23 = *(v4 + 40);
    result = sub_23B5D8998();
    v24 = -1 << *(v4 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v9 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v9 + 8 * v26);
        if (v30 != -1)
        {
          v12 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v25) & ~*(v9 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v7 &= v7 - 1;
    v13 = 40 * v12;
    v14 = *(v4 + 48) + v13;
    *v14 = v33;
    *(v14 + 16) = v34;
    *(v14 + 32) = v35;
    result = sub_23B5CCFC8(v43, *(v4 + 56) + v13);
    ++*(v4 + 16);
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v15);
    ++v11;
    if (v7)
    {
      v11 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23B5CAFA0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5CAFF4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D048, &qword_23B5DDE18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  if (sub_23B5D8718() < 1)
  {
    goto LABEL_18;
  }

  v8 = sub_23B5D8718();
  if (v8 > 255)
  {
    goto LABEL_18;
  }

  v44 = 46;
  v45 = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  v39 = &v44;

  v10 = sub_23B5CB944(0x7FFFFFFFFFFFFFFFLL, 1, sub_23B5CD034, (&v41 - 4), a1, a2, v9);
  if (v10[2] != 2)
  {
LABEL_17:

LABEL_18:
    v29 = 0;
    return v29 & 1;
  }

  v11 = v10[4];
  v12 = v10[5];
  v13 = v10[6];
  v14 = v10[7];
  v15 = v10;

  v16 = MEMORY[0x23EE9F700](v11, v12, v13, v14);
  v18 = v17;

  if (sub_23B5D8718() < 1)
  {
    goto LABEL_16;
  }

  v19 = sub_23B5D8718();
  if ((sub_23B5CB4D0() & 1) == 0)
  {
    if (v19 < 16)
    {
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v19 > 16)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((sub_23B5CB62C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v44 = v16;
  v45 = v18;
  v42 = 0x5D5A2D417A2D615BLL;
  v43 = 0xE800000000000000;
  v20 = sub_23B5D8478();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v39 = sub_23B5CD08C();
  v40 = v39;
  sub_23B5D8968();
  v22 = v21;
  sub_23B5C3308(v7, &qword_27E15D048, &qword_23B5DDE18);
  if (v22 & 1) != 0 || (sub_23B5CB4D0() & 1) != 0 || (sub_23B5D8788())
  {
    goto LABEL_16;
  }

  v23 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v24 = sub_23B5CB868(0x7D2C327B5D2D5BLL, 0xE700000000000000, 0);
  v25 = sub_23B5D8718();
  v26 = sub_23B5D86A8();
  v27 = [v24 firstMatchInString:v26 options:0 range:{0, v25}];

  if (v27)
  {

    goto LABEL_16;
  }

  v44 = v16;
  v45 = v18;
  v42 = 95;
  v43 = 0xE100000000000000;
  v28 = *(sub_23B5D8958() + 16);

  if (v28 > 2)
  {
    goto LABEL_16;
  }

  if (v28 == 2)
  {
    v31 = sub_23B5CB4D0();

    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v15[2] >= 2uLL)
  {
    v32 = v15[8];
    v33 = v15[9];
    v34 = v15[10];
    v35 = v15[11];

    v36 = MEMORY[0x23EE9F700](v32, v33, v34, v35);
    v38 = v37;

    if (v36 == 1885566047 && v38 == 0xE400000000000000 || (sub_23B5D8C88() & 1) != 0 || v36 == 1885631839 && v38 == 0xE400000000000000)
    {

      v29 = 1;
    }

    else
    {
      v29 = sub_23B5D8C88();
    }

    return v29 & 1;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23B5CB4D0()
{

  v0 = sub_23B5D8748();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_23B5D8748();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_23B5D8C88();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_23B5D8748();
      v3 = v5;
    }

    while (v5);
  }

  sub_23B5D8748();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_23B5CB62C()
{

  v0 = sub_23B5D8748();
  if (!v1)
  {
LABEL_43:
    v16 = 1;
LABEL_46:

    return v16;
  }

  v2 = v0;
  v3 = v1;
  while (1)
  {
    if (v2 == 2573 && v3 == 0xE200000000000000)
    {
      goto LABEL_24;
    }

    result = sub_23B5D8C88();
    if (result)
    {
      goto LABEL_24;
    }

    v5 = (v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    if (!v5)
    {
      break;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v10 = sub_23B5D86F8();
    }

    else
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v7 = v2;
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v6 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = sub_23B5D8A48();
        }

        v7 = *v6;
      }

      v8 = v7;
      v9 = (__clz(~v7) - 24) << 16;
      if (v8 < 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 65541;
      }
    }

    if (v10 >> 14 != 4 * v5)
    {
      goto LABEL_44;
    }

    result = sub_23B5CBE10(v2, v3);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_44:

LABEL_45:
      v16 = 0;
      goto LABEL_46;
    }

    result = sub_23B5CBE10(v2, v3);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_48;
    }

LABEL_24:
    if ((sub_23B5D8678() & 1) != 0 || (sub_23B5D8688() & 1) != 0 || v2 == 45 && v3 == 0xE100000000000000 || ((v12 = sub_23B5D8C88(), v2 == 95) ? (v13 = v3 == 0xE100000000000000) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), (v12 & 1) != 0 || v14))
    {
    }

    else
    {
      v15 = sub_23B5D8C88();

      if ((v15 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v2 = sub_23B5D8748();
    v3 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

id sub_23B5CB868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23B5D86A8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_23B5D83E8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_23B5CB944@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_23B5D87A8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_23B5CBD04(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_23B5CBD04((a7 > 1), v10, 1, v14);
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
        v19 = sub_23B5D8798();
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

        v14 = sub_23B5D8728();
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
        v18 = sub_23B5D8728();
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
          v7 = sub_23B5D87A8();
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

        v14 = sub_23B5CBD04(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_23B5D87A8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_23B5CBD04(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_23B5CBD04((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_23B5D8728();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_23B5CBD04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D058, &qword_23B5DDE20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23B5CBE10(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23B5CBF60(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_23B5D89F8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_23B5D8A48() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23B5CBF60(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23B5CBFF8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23B5CC06C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23B5CBFF8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_23B5CC190(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23B5CC06C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_23B5D8A48();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_23B5CC190(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23B5D8778();
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
    v5 = MEMORY[0x23EE9F780](15, a1 >> 16);
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

unint64_t sub_23B5CC20C(uint64_t a1)
{
  v4 = MEMORY[0x277D84F90];
  v39 = sub_23B5C931C(MEMORY[0x277D84F90]);
  v35 = sub_23B5C9330(v4);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v36 = v9;
LABEL_4:
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v1 = *v13;
    v2 = v13[1];
    v14 = *(*(a1 + 56) + 8 * v12);

    if ((sub_23B5CAFF4(v1, v2) & 1) == 0)
    {
LABEL_34:

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();

      v40 = 39;
      v41 = 0xE100000000000000;
      MEMORY[0x23EE9F750](v1, v2);

      MEMORY[0x23EE9F750](0xD00000000000002DLL, 0x800000023B5DF590);
      v28 = v40;
      v29 = v41;
      if (qword_27E15C2E0 != -1)
      {
        swift_once();
      }

      v30 = sub_23B5D84B8();
      __swift_project_value_buffer(v30, qword_27E15D408);
      sub_23B5AC790(v28, v29);
      while (1)
      {
        sub_23B5D8AE8();
        __break(1u);
LABEL_43:

LABEL_44:
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_23B5D8A08();
        MEMORY[0x23EE9F750](39, 0xE100000000000000);
        v31 = 0x6269726373627553;
        v32 = 0xEC000000656C6261;
LABEL_39:
        MEMORY[0x23EE9F750](v31, v32);
        MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DF620);
        MEMORY[0x23EE9F750](v38, v2);

        MEMORY[0x23EE9F750](0xD000000000000022, 0x800000023B5DF640);
        v33 = v40;
        v34 = v41;
LABEL_41:
        sub_23B5AC790(v33, v34);
      }
    }

    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v37 = sub_23B5D84B8();
    __swift_project_value_buffer(v37, qword_27E15D408);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_23B5D8A08();

    v40 = 0xD000000000000010;
    v41 = 0x800000023B5DF5C0;
    v38 = v1;
    MEMORY[0x23EE9F750](v1, v2);
    MEMORY[0x23EE9F750](0x6320687469772027, 0xEF203A6769666E6FLL);
    v15 = sub_23B5D8638();
    MEMORY[0x23EE9F750](v15);

    sub_23B5AC760(v40, v41);

    if (!*(v14 + 16))
    {
      goto LABEL_40;
    }

    v16 = v5;

    sub_23B5C7ADC(0x616873696C627550, 0xEB00000000656C62);
    v18 = v17;

    if (!*(v14 + 16))
    {
      if (v18)
      {
LABEL_38:

        v40 = 0;
        v41 = 0xE000000000000000;
        sub_23B5D8A08();
        MEMORY[0x23EE9F750](39, 0xE100000000000000);
        v31 = 0x616873696C627550;
        v32 = 0xEB00000000656C62;
        goto LABEL_39;
      }

LABEL_40:

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();
      MEMORY[0x23EE9F750](0x3A65636976726553, 0xEA00000000002720);
      MEMORY[0x23EE9F750](v38, v2);

      MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DF5E0);
      MEMORY[0x23EE9F750](0x616873696C627550, 0xEB00000000656C62);
      MEMORY[0x23EE9F750](0x2720726F2027, 0xE600000000000000);
      MEMORY[0x23EE9F750](0x6269726373627553, 0xEC000000656C6261);
      MEMORY[0x23EE9F750](0xD00000000000001CLL, 0x800000023B5DF600);
      v33 = v40;
      v34 = v41;
      goto LABEL_41;
    }

    v8 &= v8 - 1;

    sub_23B5C7ADC(0x6269726373627553, 0xEC000000656C6261);
    v1 = v19;

    if ((v18 & 1) == 0)
    {
      v5 = v16;
      if ((v1 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_26:
      if (!*(v14 + 16))
      {
        goto LABEL_43;
      }

      v23 = sub_23B5C7ADC(0x6269726373627553, 0xEC000000656C6261);
      if ((v24 & 1) == 0)
      {
        goto LABEL_43;
      }

      sub_23B5ACF60(*(v14 + 56) + 32 * v23, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D040, &qword_23B5DDE10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_44;
      }

      v25 = v37;
      if (qword_27E15C2F8 != -1)
      {
        swift_once();
        v25 = v37;
      }

      v1 = __swift_project_value_buffer(v25, qword_27E15D450);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();

      v40 = 0xD00000000000001ELL;
      v41 = 0x800000023B5DF670;
      MEMORY[0x23EE9F750](v38, v2);
      MEMORY[0x23EE9F750](39, 0xE100000000000000);
      sub_23B5AC778(v40, v41);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v35;
      sub_23B5C8434(v38, v2, v38, v2, isUniquelyReferenced_nonNull_native);

      v35 = v40;
      v9 = v36;
      goto LABEL_4;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_38;
    }

    v20 = sub_23B5C7ADC(0x616873696C627550, 0xEB00000000656C62);
    if ((v21 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_23B5ACF60(*(v14 + 56) + 32 * v20, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D040, &qword_23B5DDE10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (qword_27E15C2F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v37, qword_27E15D438);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_23B5D8A08();

    v40 = 0xD00000000000001DLL;
    v41 = 0x800000023B5DF690;
    MEMORY[0x23EE9F750](v38, v2);
    MEMORY[0x23EE9F750](39, 0xE100000000000000);
    sub_23B5AC778(v40, v41);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v39;
    sub_23B5C8448(v38, v2, v38, v2, v22);
    v39 = v40;
    if (v1)
    {
      v5 = v16;
      goto LABEL_26;
    }

    v11 = v10;
    v5 = v16;
    v9 = v36;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return v39;
}

uint64_t sub_23B5CCBB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v11 = sub_23B5D84B8();
    __swift_project_value_buffer(v11, qword_27E15D408);
    sub_23B5AC790(0xD000000000000015, 0x800000023B5DF490);
    goto LABEL_15;
  }

  v2 = sub_23B5D8628();

  if (!*(v2 + 16) || (v3 = sub_23B5C7ADC(0xD000000000000011, 0x800000023B5DF4F0), (v4 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_23B5ACF60(*(v2 + 56) + 32 * v3, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D020, &qword_23B5DDE00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v10 = sub_23B5D84B8();
    __swift_project_value_buffer(v10, qword_27E15D408);
    sub_23B5AC760(0xD00000000000003DLL, 0x800000023B5DF510);
    return 0;
  }

  v5 = sub_23B5CC20C(v13);
  v7 = v6;

  if (!*(v5 + 16) && !*(v7 + 16))
  {
    while (1)
    {

      if (qword_27E15C2E0 != -1)
      {
        swift_once();
      }

      v12 = sub_23B5D84B8();
      __swift_project_value_buffer(v12, qword_27E15D408);
      sub_23B5AC790(0xD00000000000003DLL, 0x800000023B5DF550);
LABEL_15:
      sub_23B5D8AE8();
      __break(1u);
    }
  }

  v8 = sub_23B5CACE4(v5, &type metadata for WAPublishableService, sub_23B5CCFE0);

  sub_23B5CACE4(v7, &type metadata for WASubscribableService, sub_23B5CCF74);

  return v8;
}

uint64_t sub_23B5CCF10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23B5CCF74()
{
  result = qword_27E15D030;
  if (!qword_27E15D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D030);
  }

  return result;
}

uint64_t sub_23B5CCFC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23B5CCFE0()
{
  result = qword_27E15D038;
  if (!qword_27E15D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D038);
  }

  return result;
}

uint64_t sub_23B5CD034(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B5D8C88() & 1;
  }
}

unint64_t sub_23B5CD08C()
{
  result = qword_27E15D050;
  if (!qword_27E15D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D050);
  }

  return result;
}

uint64_t sub_23B5CD0E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void NWError.wifiAware.getter(char *a1@<X8>)
{
  v3 = sub_23B5D85C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 3];
  (*(v4 + 16))(v7, v1, v3);
  if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277CD8FB8])
  {
    (*(v4 + 8))(v7, v3);
LABEL_6:
    v9 = -1;
    goto LABEL_7;
  }

  (*(v4 + 96))(v7, v3);
  if ((*v7 + 11984) < 0xFFFFFFF1)
  {
    goto LABEL_6;
  }

  v8 = sub_23B5D85B8();
  WAError.ErrorCode.init(rawValue:)(v8);
  if (v12 == 15)
  {
    goto LABEL_6;
  }

  v11[1] = v12;
  WAError.ErrorCode.errorObject.getter(v11);
  v9 = v11[0];
LABEL_7:
  *a1 = v9;
}

void NWParameters.wifiAware.getter(_BYTE *a1@<X8>)
{
  v2 = sub_23B5D8538();
  if (v3 >> 60 == 15)
  {
    if (qword_27E15C300 != -1)
    {
      swift_once();
    }

    v4 = sub_23B5D84B8();
    __swift_project_value_buffer(v4, qword_27E15D468);
    sub_23B5AC760(0xD000000000000032, 0x800000023B5DF6B0);
    v7 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    static WAParametersAgentInterface.Parameters.decode(from:)();
    sub_23B5CD480(v5, v6);
    v7 = v8;
  }

  *a1 = v7;
}

uint64_t sub_23B5CD480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B5AE940(a1, a2);
  }

  return a1;
}

uint64_t NWParameters.wifiAware.setter(char *a1)
{
  v3 = *a1;
  v1 = WAParametersAgentInterface.Parameters.encode()();

  return MEMORY[0x282125AE8](v1);
}

uint64_t (*NWParameters.wifiAware.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  NWParameters.wifiAware.getter((a1 + 8));
  return sub_23B5CD620;
}

uint64_t sub_23B5CD620(uint64_t *a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return NWParameters.wifiAware.setter(v4);
}

uint64_t NWParameters.wifiAware(_:)(void (*a1)(char *))
{
  NWParameters.wifiAware.getter(&v4);
  a1(&v4);
  sub_23B5D8528();
  v3 = v4;
  NWParameters.wifiAware.setter(&v3);
}

uint64_t NWParametersBuilder.wifiAware(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_23B5D8588();
  NWParameters.wifiAware.getter(&v10);

  a1(&v10);
  sub_23B5D8588();
  v9 = v10;
  NWParameters.wifiAware.setter(&v9);

  v7 = *(*(a2 - 8) + 16);

  return v7(a3, v3, a2);
}

uint64_t NWPath.wifiAware.getter(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2[104] = v1;
  v2[103] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D060, &qword_23B5DDE68) - 8) + 64) + 15;
  v2[105] = swift_task_alloc();
  v4 = type metadata accessor for WAPerformanceReport();
  v2[106] = v4;
  v5 = *(v4 - 8);
  v2[107] = v5;
  v6 = *(v5 + 64) + 15;
  v2[108] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D068, &qword_23B5DDE70) - 8) + 64) + 15;
  v2[109] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D070, &qword_23B5DDE78) - 8) + 64) + 15;
  v2[110] = swift_task_alloc();
  v9 = sub_23B5D84D8();
  v2[111] = v9;
  v10 = *(v9 - 8);
  v2[112] = v10;
  v11 = *(v10 + 64) + 15;
  v2[113] = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23B5CDA1C, 0, 0);
}

uint64_t sub_23B5CDA1C()
{
  v80 = v0;
  v79 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 832);
  v2 = sub_23B5D85A8();
  *(v0 + 912) = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 832);
  sub_23B5D8598();
  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 880);
    swift_unknownObjectRelease();
    sub_23B5C3308(v8, &qword_27E15D070, &qword_23B5DDE78);
LABEL_4:
    if (qword_27E15C308 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 824);
    v10 = sub_23B5D84B8();
    __swift_project_value_buffer(v10, qword_27E15D480);
    sub_23B5AC790(0xD000000000000026, 0x800000023B5DF770);
    v11 = type metadata accessor for WAPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    goto LABEL_7;
  }

  v20 = *(v0 + 904);
  v21 = *(v0 + 896);
  v22 = *(v0 + 888);
  v23 = *(v0 + 880);
  v24 = *(v21 + 32);
  *(v0 + 920) = v24;
  *(v0 + 928) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v24(v20, v23, v22);
  v25 = swift_unknownObjectRetain();
  v26 = MEMORY[0x23EE9FEA0](v25);
  *(v0 + 1000) = v26;
  if (!v26)
  {
    swift_unknownObjectRelease();
    if (qword_27E15C308 == -1)
    {
LABEL_19:
      v43 = *(v0 + 904);
      v44 = *(v0 + 896);
      v45 = *(v0 + 888);
      v46 = *(v0 + 824);
      v47 = sub_23B5D84B8();
      __swift_project_value_buffer(v47, qword_27E15D480);
      sub_23B5AC790(0xD00000000000002BLL, 0x800000023B5DF7A0);
      swift_unknownObjectRelease();
      (*(v44 + 8))(v43, v45);
      v48 = type metadata accessor for WAPath();
      (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
      goto LABEL_7;
    }

LABEL_32:
    swift_once();
    goto LABEL_19;
  }

  v27 = v26;
  v28 = *(v0 + 872);
  v29 = type metadata accessor for WAPath();
  *(v0 + 936) = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  *(v0 + 944) = v31;
  *(v0 + 952) = (v30 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31(v28, 1, 1, v29);
  if (((v27 + 1) >> 8))
  {
    __break(1u);
    goto LABEL_32;
  }

  v32 = calloc(1uLL, (v27 + 1));
  *(v0 + 960) = v32;
  v33 = MEMORY[0x23EE9FE90](v3, v32, v0 + 1000);
  swift_unknownObjectRelease();
  if (!v33)
  {
LABEL_17:
    v37 = *(v0 + 912);
    v38 = *(v0 + 904);
    v39 = *(v0 + 896);
    v40 = *(v0 + 888);
    v41 = *(v0 + 872);
    v42 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v39 + 8))(v38, v40);
    sub_23B5CEF3C(v41, v42);
LABEL_7:
    v12 = *(v0 + 904);
    v13 = *(v0 + 880);
    v14 = *(v0 + 872);
    v15 = *(v0 + 864);
    v16 = *(v0 + 840);

    v17 = *(v0 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  if (qword_27E15C308 != -1)
  {
    swift_once();
  }

  v34 = sub_23B5D84B8();
  *(v0 + 968) = __swift_project_value_buffer(v34, qword_27E15D480);
  sub_23B5D8A08();

  *&v78[0] = 0xD000000000000025;
  *(&v78[0] + 1) = 0x800000023B5DF7D0;
  *(v0 + 1001) = *(v0 + 1000);
  v35 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v35);

  sub_23B5AC760(*&v78[0], *(&v78[0] + 1));

  if (!v32)
  {
    v49 = *(v0 + 896);
    v50 = *(v0 + 888);
    v51 = *(v0 + 872);
    v76 = *(v0 + 904);
    v77 = *(v0 + 824);
    sub_23B5AC790(0xD000000000000015, 0x800000023B5DF800);
    swift_unknownObjectRelease();
    sub_23B5C3308(v51, &qword_27E15D068, &qword_23B5DDE70);
    (*(v49 + 8))(v76, v50);
    v31(v77, 1, 1, v29);
    goto LABEL_7;
  }

  *(v0 + 976) = sub_23B5CF10C(v32, *(v0 + 1000));
  *(v0 + 984) = v36;
  static WAPathAgentInterface.AgentToPath.decode(from:)();
  v52 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v52;
  v53 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v53;
  v54 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v54;
  v55 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v55;
  v56 = *(v0 + 168);
  if (v56)
  {
    v57 = *(v0 + 160);
    *(v0 + 624) = &type metadata for WASubscribableService;
    *(v0 + 632) = sub_23B5CCF74();
    *(v0 + 600) = v57;
    *(v0 + 608) = v56;
  }

  else
  {
    v58 = *(v0 + 152);
    if (v58)
    {
      v59 = *(v0 + 144);
      *(v0 + 624) = &type metadata for WAPublishableService;
      *(v0 + 632) = sub_23B5CCFE0();
      *(v0 + 600) = v59;
      *(v0 + 608) = v58;
    }

    else
    {
      *(v0 + 632) = 0;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
    }
  }

  v60 = *(v0 + 96);
  v78[4] = *(v0 + 80);
  v78[5] = v60;
  v61 = *(v0 + 128);
  v78[6] = *(v0 + 112);
  v78[7] = v61;
  v62 = *(v0 + 32);
  v78[0] = *(v0 + 16);
  v78[1] = v62;
  v63 = *(v0 + 64);
  v78[2] = *(v0 + 48);
  v78[3] = v63;
  type metadata accessor for WiFiAwarePerformancePrivate();
  swift_allocObject();
  sub_23B5B25D4(v0 + 144, v0 + 272);

  v64 = sub_23B5D67E0(v78);
  *(v0 + 992) = v64;
  if (!v64)
  {
    (*(*(v0 + 856) + 56))(*(v0 + 840), 1, 1, *(v0 + 848));
    sub_23B5C3308(*(v0 + 840), &qword_27E15D060, &qword_23B5DDE68);
    v67 = *(v0 + 984);
    v68 = *(v0 + 976);
    v69 = *(v0 + 968);
    *&v78[0] = 0;
    *(&v78[0] + 1) = 0xE000000000000000;
    sub_23B5D8A08();
    v70 = *(&v78[0] + 1);
    *(v0 + 784) = *&v78[0];
    *(v0 + 792) = v70;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v71 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v71;
    v72 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v72;
    v73 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v73;
    v74 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v74;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v75 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v75);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v68, v67);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    goto LABEL_17;
  }

  v65 = v64;

  v66 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23B5CE358, v65, 0);
}

uint64_t sub_23B5CE358()
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(v0[124] + 112))
  {
    sub_23B5D6B70(v0[105]);
    v1 = 0;
    v2 = v0[124];
  }

  else
  {
    v1 = 1;
  }

  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];

  (*(v3 + 56))(v5, v1, 1, v4);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23B5CE448, 0, 0);
}

uint64_t sub_23B5CE448()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 840);
  if ((*(*(v0 + 856) + 48))(v1, 1, *(v0 + 848)) == 1)
  {
    v2 = *(v0 + 992);
    sub_23B5C3308(v1, &qword_27E15D060, &qword_23B5DDE68);
    v3 = *(v0 + 984);
    v4 = *(v0 + 976);
    v5 = *(v0 + 968);
    sub_23B5D8A08();
    *(v0 + 784) = 0;
    *(v0 + 792) = 0xE000000000000000;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v6 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v6;
    v7 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v7;
    v8 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v8;
    v9 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v9;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v10 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v10);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v4, v3);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    v11 = *(v0 + 912);
    v12 = *(v0 + 904);
    v13 = *(v0 + 896);
    v14 = *(v0 + 888);
    v15 = *(v0 + 872);
    v16 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v13 + 8))(v12, v14);
    sub_23B5CEF3C(v15, v16);
    v17 = *(v0 + 904);
    v18 = *(v0 + 880);
    v19 = *(v0 + 872);
    v20 = *(v0 + 864);
    v21 = *(v0 + 840);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }

  else
  {
    v25 = *(v0 + 992);
    sub_23B5CF22C(v1, *(v0 + 864));
    v26 = *(v0 + 992);

    v27 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_23B5CE790, v26, 0);
  }
}

uint64_t sub_23B5CE790()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0[124] + 112);
  if (v1)
  {
    v2 = v1;
    [v2 durationActive];
    v0[100] = sub_23B5D8DB8();
    v0[101] = v3;

    v4 = sub_23B5CE874;
  }

  else
  {
    v5 = v0[124];

    v4 = sub_23B5CEC64;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B5CE874()
{
  v44 = *MEMORY[0x277D85DE8];
  sub_23B5CF1BC(v0 + 600, v0 + 720);
  if (*(v0 + 744))
  {
    v40 = *(v0 + 808);
    v41 = *(v0 + 800);
    v1 = *(v0 + 992);
    v2 = *(v0 + 984);
    v3 = *(v0 + 976);
    v42 = *(v0 + 944);
    v43 = *(v0 + 952);
    v4 = *(v0 + 936);
    v5 = *(v0 + 920);
    v6 = *(v0 + 912);
    v7 = *(v0 + 904);
    v8 = *(v0 + 888);
    v38 = *(v0 + 928);
    v39 = *(v0 + 864);
    v9 = *(v0 + 824);
    sub_23B5C3308(*(v0 + 872), &qword_27E15D068, &qword_23B5DDE70);
    sub_23B5AE940(v3, v2);

    swift_unknownObjectRelease();
    sub_23B5CCFC8((v0 + 720), v0 + 680);
    sub_23B5CCFC8((v0 + 680), v9);
    sub_23B5AF43C(v0 + 176, v0 + 528);
    sub_23B5B260C(v0 + 144);
    v10 = type metadata accessor for WAEndpoint();
    v5(v9 + *(v10 + 24), v7, v8);
    *(v9 + 40) = *(v0 + 176);
    v12 = *(v0 + 208);
    v11 = *(v0 + 224);
    v13 = *(v0 + 240);
    *(v9 + 56) = *(v0 + 192);
    *(v9 + 104) = v13;
    *(v9 + 88) = v11;
    *(v9 + 72) = v12;
    sub_23B5CF22C(v39, v9 + *(v4 + 20));
    v14 = (v9 + *(v4 + 24));
    *v14 = v41;
    v14[1] = v40;
    v42(v9, 0, 1, v4);
    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
  }

  else
  {
    sub_23B5CF290(*(v0 + 864));
    sub_23B5C3308(v0 + 720, &qword_27E15D078, &qword_23B5DDE80);
    v15 = *(v0 + 992);
    v16 = *(v0 + 984);
    v17 = *(v0 + 976);
    v18 = *(v0 + 968);
    sub_23B5D8A08();
    *(v0 + 784) = 0;
    *(v0 + 792) = 0xE000000000000000;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v19 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v19;
    v20 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v20;
    v21 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v21;
    v22 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v22;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v23 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v23);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v17, v16);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    v24 = *(v0 + 912);
    v25 = *(v0 + 904);
    v26 = *(v0 + 896);
    v27 = *(v0 + 888);
    v28 = *(v0 + 872);
    v29 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v26 + 8))(v25, v27);
    sub_23B5CEF3C(v28, v29);
  }

  v30 = *(v0 + 904);
  v31 = *(v0 + 880);
  v32 = *(v0 + 872);
  v33 = *(v0 + 864);
  v34 = *(v0 + 840);

  v35 = *(v0 + 8);
  v36 = *MEMORY[0x277D85DE8];

  return v35();
}

uint64_t sub_23B5CEC64()
{
  v24 = *MEMORY[0x277D85DE8];
  sub_23B5CF290(*(v0 + 864));
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  sub_23B5D8A08();
  *(v0 + 784) = 0;
  *(v0 + 792) = 0xE000000000000000;
  MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
  v5 = *(v0 + 224);
  *(v0 + 464) = *(v0 + 208);
  *(v0 + 480) = v5;
  v6 = *(v0 + 256);
  *(v0 + 496) = *(v0 + 240);
  *(v0 + 512) = v6;
  v7 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 144);
  *(v0 + 416) = v7;
  v8 = *(v0 + 192);
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 448) = v8;
  sub_23B5D8AB8();
  MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
  sub_23B5CF1BC(v0 + 600, v0 + 640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
  v9 = sub_23B5D86C8();
  MEMORY[0x23EE9F750](v9);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  sub_23B5AC790(*(v0 + 784), *(v0 + 792));
  sub_23B5AE940(v3, v2);
  sub_23B5B260C(v0 + 144);

  sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
  v10 = *(v0 + 912);
  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v13 = *(v0 + 888);
  v14 = *(v0 + 872);
  v15 = *(v0 + 824);
  free(*(v0 + 960));
  swift_unknownObjectRelease();
  (*(v12 + 8))(v11, v13);
  sub_23B5CEF3C(v14, v15);
  v16 = *(v0 + 904);
  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  v20 = *(v0 + 840);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t type metadata accessor for WAPath()
{
  result = qword_27E15D080;
  if (!qword_27E15D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B5CEF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D068, &qword_23B5DDE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WAPath.durationActive.getter()
{
  v1 = (v0 + *(type metadata accessor for WAPath() + 24));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_23B5CF054(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23B5CF10C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23B5CF054(a1, &a1[a2]);
  }

  v3 = sub_23B5D8368();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23B5D8328();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23B5D8408();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23B5CF1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5CF22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPerformanceReport();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5CF290(uint64_t a1)
{
  v2 = type metadata accessor for WAPerformanceReport();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5CF2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF37C()
{
  result = type metadata accessor for WAEndpoint();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WAPerformanceReport();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static ListenerProvider<>.wifiAware(_:active:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WAPublisherListener.Action(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5CF830(a1, v13, type metadata accessor for WAPublisherListener.Action);
  if (a4)
  {
    a2 = sub_23B5D8DA8();
    a3 = v14;
  }

  sub_23B5CF898(v13, a5, type metadata accessor for WAPublisherListener.Action);
  result = type metadata accessor for WAPublisherListener(0);
  v16 = (a5 + *(result + 20));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t WAPublisherListener.service.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WAPublisherListener.Devices(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v1;
  v16 = v1[1];
  v17 = type metadata accessor for WAPublisherListener.Action(0);
  sub_23B5CF830(v1 + *(v17 + 24), v9, type metadata accessor for WAPublisherListener.Devices);
  sub_23B5CF898(v9, v5, type metadata accessor for WADevicesAgentInterface.Devices);
  v18 = (v1 + *(type metadata accessor for WAPublisherListener(0) + 20));
  v20 = *v18;
  v19 = v18[1];
  v21 = *(v1 + *(v17 + 28));
  *v14 = v15;
  v14[1] = v16;
  sub_23B5CF898(v5, v14 + v11[7], type metadata accessor for WADevicesAgentInterface.Devices);
  v22 = (v14 + v11[8]);
  *v22 = v20;
  v22[1] = v19;
  *(v14 + v11[9]) = v21 & 1;
  swift_bridgeObjectRetain_n();
  v23 = WAListenerAgentInterface.DescriptorToAgent.encode()();
  v25 = v24;
  sub_23B5B182C(v23, v24);
  sub_23B5D84E8();
  sub_23B5CD480(v23, v25);
  return sub_23B5CF900(v14);
}

uint64_t sub_23B5CF830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF900(uint64_t a1)
{
  v2 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WAPublisherListener.configureParameters(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v3 = *(v0 + *(type metadata accessor for WAPublisherListener.Action(0) + 28));
  if (v3 != 2)
  {
    v5 = v3 & 1;
    NWParameters.wifiAware.setter(&v5);
  }

  return sub_23B5D8508();
}

uint64_t static WAPublisherListener.Action.connecting(to:from:datapath:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a3;
  v9 = type metadata accessor for WAPublisherListener.Action(0);
  sub_23B5CF830(a2, a4 + *(v9 + 24), type metadata accessor for WAPublisherListener.Devices);
  *a4 = v7;
  a4[1] = v6;
  *(a4 + *(v9 + 28)) = v8;
}

uint64_t sub_23B5CFB0C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for WAPublisherListener.Devices(0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5CFBA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for WAPublisherListener.Devices(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_23B5CF830(v6, a3, type metadata accessor for WAPublisherListener.Devices);
}

uint64_t static WAPublisherListener.Devices.selected<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v5 = sub_23B5CFF68(sub_23B5CFCBC, 0, a1, MEMORY[0x277D84C58], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a3);
  v6 = sub_23B5D0FB8(v5);

  *a4 = v6;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_23B5CFCBC@<X0>(void *result@<X0>, _WORD *a2@<X8>)
{
  if (*result >> 16)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_23B5CFCD4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  sub_23B5C1548(0, v2, 0);
  v3 = v1 + 64;
  v4 = v36;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v24 = v2;
  v25 = v1;
  if (v2)
  {

    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = *(v1 + 56) + 72 * (__clz(__rbit64(v7)) | (v10 << 6));
      v14 = *(v13 + 64);
      v16 = *(v13 + 32);
      v15 = *(v13 + 48);
      v32 = *(v13 + 16);
      v17 = *v13;
      v33 = v16;
      v34 = v15;
      v31 = v17;
      v35 = v14;
      v28 = v17;
      v29 = v32;
      v26 = v16;
      v27 = v15;
      result = sub_23B5AF43C(&v31, v30);
      if (v29 == 1)
      {
        goto LABEL_32;
      }

      if (v28 >> 16)
      {
        goto LABEL_30;
      }

      v31 = v28;
      v32 = v29;
      v33 = v26;
      v34 = v27;
      v35 = v14;
      result = sub_23B5AFD30(&v31);
      v36 = v4;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_23B5C1548((v18 > 1), v19 + 1, 1);
        v4 = v36;
      }

      ++v11;
      v7 &= v7 - 1;
      *(v4 + 16) = v19 + 1;
      *(v4 + 2 * v19 + 32) = v28;
      v1 = v25;
      if (v11 == v24)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_32;
      }

      v7 = *(v3 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_17:
    if (v7)
    {
      goto LABEL_22;
    }

LABEL_18:
    while (1)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 8 * v20);
      ++v10;
      if (v7)
      {
        v10 = v20;
LABEL_22:
        while (1)
        {
          v21 = *(*(v1 + 56) + 72 * (__clz(__rbit64(v7)) | (v10 << 6)));
          if (v21 >> 16)
          {
            goto LABEL_31;
          }

          v36 = v4;
          v23 = *(v4 + 16);
          v22 = *(v4 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_23B5C1548((v22 > 1), v23 + 1, 1);
            v4 = v36;
          }

          v7 &= v7 - 1;
          *(v4 + 16) = v23 + 1;
          *(v4 + 2 * v23 + 32) = v21;
          v1 = v25;
          if (!v7)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23B5CFF68(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_23B5D8938();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_23B5D87D8();
  v70 = sub_23B5D8A78();
  v65 = sub_23B5D8A88();
  sub_23B5D8A58();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_23B5D87C8();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_23B5D8948();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_23B5D8A68();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_23B5D8948();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_23B5D8A68();
      sub_23B5D8948();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t static WAPublisherListener.Devices.selected(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B5CFCD4(a1);
  v4 = sub_23B5D0FB8(v3);

  *a2 = v4;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WAPublisherListener.Devices.matching(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5D0778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v3 = *(v0 + *(type metadata accessor for WAPublisherListener.Action(0) + 28));
  if (v3 != 2)
  {
    v5 = v3 & 1;
    NWParameters.wifiAware.setter(&v5);
  }

  return sub_23B5D8508();
}

uint64_t sub_23B5D0850(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x23EE9FD10](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_23B5D0B60(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23B5D0938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  result = sub_23B5D89B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      result = MEMORY[0x23EE9FD10](*(v6 + 40), v18, 2);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23B5D0B60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B5D0938(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23B5D0C84();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23B5D0DC4(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x23EE9FD10](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B5D8C98();
  __break(1u);
  return result;
}

void *sub_23B5D0C84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  v2 = *v0;
  v3 = sub_23B5D89A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23B5D0DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  result = sub_23B5D89B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      result = MEMORY[0x23EE9FD10](*(v6 + 40), v17, 2);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_23B5D0FB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EE9F8F0](v2, MEMORY[0x277D84C58], MEMORY[0x277D84C68]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23B5D0850(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23B5D1054()
{
  result = type metadata accessor for WAPublisherListener.Action(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B5D10F0()
{
  type metadata accessor for WAPublisherListener.Devices(319);
  if (v0 <= 0x3F)
  {
    sub_23B5D118C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B5D118C()
{
  if (!qword_27E15D0E8)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D0E8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_23B5D12E8()
{
  result = type metadata accessor for WADevicesAgentInterface.Devices(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static BrowserProvider<>.wifiAware(_:active:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WASubscriberBrowser.Action(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5D1850(a1, v13, type metadata accessor for WASubscriberBrowser.Action);
  if (a4)
  {
    a2 = sub_23B5D8DA8();
    a3 = v14;
  }

  sub_23B5D18B8(v13, a5, type metadata accessor for WASubscriberBrowser.Action);
  result = type metadata accessor for WASubscriberBrowser(0);
  v16 = (a5 + *(result + 20));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t WASubscriberBrowser.makeDescriptor()@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v2 = sub_23B5D85E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WASubscriberBrowser.Devices(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *v1;
  v19 = v1[1];
  v20 = type metadata accessor for WASubscriberBrowser.Action(0);
  sub_23B5D1850(v1 + *(v20 + 24), v12, type metadata accessor for WASubscriberBrowser.Devices);
  sub_23B5D18B8(v12, v8, type metadata accessor for WADevicesAgentInterface.Devices);
  v21 = (v1 + *(type metadata accessor for WASubscriberBrowser(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  v24 = *(v20 + 28);
  v25 = v18;
  v26 = *(v1 + v24);
  *v17 = v18;
  v17[1] = v19;
  sub_23B5D18B8(v8, v17 + v14[7], type metadata accessor for WADevicesAgentInterface.Devices);
  v27 = (v17 + v14[8]);
  *v27 = v23;
  v27[1] = v22;
  *(v17 + v14[9]) = v26 & 1;
  swift_bridgeObjectRetain_n();
  v28 = WABrowserAgentInterface.DescriptorToAgent.encode()();
  v30 = v29;
  v31 = v37;
  *v37 = v25;
  v31[1] = v19;
  v31[2] = v28;
  v31[3] = v29;
  sub_23B5B182C(v28, v29);
  sub_23B5D85D8();
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D138, &unk_23B5DDF70) + 64);
  sub_23B5D85F8();
  sub_23B5CD480(v28, v30);
  sub_23B5D1920(v17);
  v33 = *MEMORY[0x277CD90A0];
  v34 = sub_23B5D8608();
  return (*(*(v34 - 8) + 104))(v31, v33, v34);
}

uint64_t sub_23B5D1850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5D18B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5D1920(uint64_t a1)
{
  v2 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WASubscriberBrowser.makeEndpoint(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B5D84D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B5D8618();
  v8 = sub_23B5D84C8();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  if (v10 >> 60 == 15)
  {
    if (qword_27E15C2F8 != -1)
    {
      swift_once();
    }

    v11 = sub_23B5D84B8();
    __swift_project_value_buffer(v11, qword_27E15D450);
    sub_23B5AC790(0xD000000000000020, 0x800000023B5DF8D0);
    v12 = type metadata accessor for WAEndpoint();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    static WABrowserAgentInterface.AgentToEndpoint.decode(from:)();
    if (v1)
    {
      return sub_23B5CD480(v8, v10);
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v20 = v26;
      v21 = v27;
      v14 = v26;
      *(a1 + 24) = &type metadata for WASubscribableService;
      *(a1 + 32) = sub_23B5CCF74();
      *a1 = v14;
      v15 = type metadata accessor for WAEndpoint();
      v16 = *(v15 + 24);

      sub_23B5AF43C(&v21, v19);
      sub_23B5D8618();
      sub_23B5CD480(v8, v10);
      sub_23B5B0098(&v20);
      v17 = v21;
      *(a1 + 56) = v22;
      *(a1 + 72) = v23;
      *(a1 + 88) = v24;
      *(a1 + 104) = v25;
      *(a1 + 40) = v17;
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t WASubscriberBrowser.configureParameters(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v7 = sub_23B5D8578();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v6 = sub_23B5D8568();
  }

  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v10 = *(v2 + *(type metadata accessor for WASubscriberBrowser.Action(0) + 28));
  if (v10 != 2)
  {
    v12 = v10 & 1;
    NWParameters.wifiAware.setter(&v12);
  }

  sub_23B5D8508();
  return v6;
}

uint64_t static WASubscriberBrowser.Action.connecting(to:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = type metadata accessor for WASubscriberBrowser.Action(0);
  sub_23B5D1850(a1, a3 + *(v7 + 24), type metadata accessor for WASubscriberBrowser.Devices);
  *a3 = v6;
  a3[1] = v5;
  *(a3 + *(v7 + 28)) = 2;
}

uint64_t sub_23B5D1E3C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for WASubscriberBrowser.Devices(0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5D1ED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for WASubscriberBrowser.Devices(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_23B5D1850(v6, a3, type metadata accessor for WASubscriberBrowser.Devices);
}

uint64_t static WASubscriberBrowser.Devices.selected<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v5 = sub_23B5CFF68(sub_23B5CFCBC, 0, a1, MEMORY[0x277D84C58], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a3);
  v6 = sub_23B5D0FB8(v5);

  *a4 = v6;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WASubscriberBrowser.Devices.selected(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B5CFCD4(a1);
  v4 = sub_23B5D0FB8(v3);

  *a2 = v4;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WASubscriberBrowser.Devices.matching(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_23B5D2114()
{
  result = qword_27E15D140;
  if (!qword_27E15D140)
  {
    type metadata accessor for WAEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D140);
  }

  return result;
}

uint64_t sub_23B5D2194()
{
  result = type metadata accessor for WASubscriberBrowser.Action(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B5D2230()
{
  type metadata accessor for WASubscriberBrowser.Devices(319);
  if (v0 <= 0x3F)
  {
    sub_23B5D22CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B5D22CC()
{
  if (!qword_27E15D168)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D168);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_23B5D2450(uint64_t a1)
{
  v2 = sub_23B5D2A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D248C(uint64_t a1)
{
  v2 = sub_23B5D2A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D24C8()
{
  if (*v0)
  {
    result = 0x656D69746C616572;
  }

  else
  {
    result = 1802270050;
  }

  *v0;
  return result;
}

uint64_t sub_23B5D24FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802270050 && a2 == 0xE400000000000000;
  if (v5 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D69746C616572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

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

uint64_t sub_23B5D25D8(uint64_t a1)
{
  v2 = sub_23B5D2984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D2614(uint64_t a1)
{
  v2 = sub_23B5D2984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D2650(uint64_t a1)
{
  v2 = sub_23B5D29D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D268C(uint64_t a1)
{
  v2 = sub_23B5D29D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D180, "@*");
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D188, &qword_23B5DE048);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D190, &qword_23B5DE050);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D2984();
  sub_23B5D8D78();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23B5D29D8();
    v18 = v22;
    sub_23B5D8BD8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23B5D2A2C();
    sub_23B5D8BD8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_23B5D2984()
{
  result = qword_27E15D198;
  if (!qword_27E15D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D198);
  }

  return result;
}

unint64_t sub_23B5D29D8()
{
  result = qword_27E15D1A0;
  if (!qword_27E15D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1A0);
  }

  return result;
}

unint64_t sub_23B5D2A2C()
{
  result = qword_27E15D1A8;
  if (!qword_27E15D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1A8);
  }

  return result;
}

uint64_t WAPerformanceMode.hashValue.getter()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t WAPerformanceMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1B0, &qword_23B5DE058);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1B8, &qword_23B5DE060);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1C0, &unk_23B5DE068);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D2984();
  v16 = v36;
  sub_23B5D8D68();
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
    v20 = sub_23B5D8BC8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23B5AE6E0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_23B5D8A38();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630) + 48);
      *v26 = &type metadata for WAPerformanceMode;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
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
        sub_23B5D29D8();
        sub_23B5D8B38();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23B5D2A2C();
        sub_23B5D8B38();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_23B5D3004(uint64_t a1)
{
  v2 = sub_23B5D3850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D3040(uint64_t a1)
{
  v2 = sub_23B5D3850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D307C(uint64_t a1)
{
  v2 = sub_23B5D38A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D30B8(uint64_t a1)
{
  v2 = sub_23B5D38A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5D30F4()
{
  v1 = 0x6F66664574736562;
  *v0;
  if (*v0)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_23B5D3180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5D6428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5D31A8(uint64_t a1)
{
  v2 = sub_23B5D3754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D31E4(uint64_t a1)
{
  v2 = sub_23B5D3754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D3220(uint64_t a1)
{
  v2 = sub_23B5D37FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D325C(uint64_t a1)
{
  v2 = sub_23B5D37FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D3298(uint64_t a1)
{
  v2 = sub_23B5D37A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D32D4(uint64_t a1)
{
  v2 = sub_23B5D37A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAAccessCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1C8, &qword_23B5DE078);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1D0, &qword_23B5DE080);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1D8, &qword_23B5DE088);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1E0, &qword_23B5DE090);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1E8, &qword_23B5DE098);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D3754();
  sub_23B5D8D78();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_23B5D37FC();
      v24 = v33;
      sub_23B5D8BD8();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_23B5D37A8();
      v24 = v36;
      sub_23B5D8BD8();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_23B5D3850();
    v24 = v30;
    sub_23B5D8BD8();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_23B5D38A4();
  sub_23B5D8BD8();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_23B5D3754()
{
  result = qword_27E15D1F0;
  if (!qword_27E15D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1F0);
  }

  return result;
}

unint64_t sub_23B5D37A8()
{
  result = qword_27E15D1F8;
  if (!qword_27E15D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1F8);
  }

  return result;
}

unint64_t sub_23B5D37FC()
{
  result = qword_27E15D200;
  if (!qword_27E15D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D200);
  }

  return result;
}

unint64_t sub_23B5D3850()
{
  result = qword_27E15D208;
  if (!qword_27E15D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D208);
  }

  return result;
}

unint64_t sub_23B5D38A4()
{
  result = qword_27E15D210;
  if (!qword_27E15D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D210);
  }

  return result;
}

uint64_t WAAccessCategory.hashValue.getter()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t WAAccessCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D218, &qword_23B5DE0A0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D220, &qword_23B5DE0A8);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D228, &qword_23B5DE0B0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D230, &qword_23B5DE0B8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D238, &qword_23B5DE0C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23B5D3754();
  v21 = v53;
  sub_23B5D8D68();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_23B5D8BC8();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_23B5AE714();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_23B5D8A38();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630) + 48);
      *v34 = &type metadata for WAAccessCategory;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_23B5D3850();
        v39 = v42;
        sub_23B5D8B38();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_23B5D38A4();
        v31 = v42;
        sub_23B5D8B38();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_23B5D37FC();
      v38 = v42;
      sub_23B5D8B38();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_23B5D37A8();
      v40 = v42;
      sub_23B5D8B38();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t WAPerformanceReport.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B5D8448();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WAPerformanceReport.localTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WAPerformanceReport() + 20);
  v4 = sub_23B5D8AA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WAPerformanceReport()
{
  result = qword_27E15D2F8;
  if (!qword_27E15D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WAPerformanceReport.throughputCeiling.getter()
{
  v1 = (v0 + *(type metadata accessor for WAPerformanceReport() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WAPerformanceReport.throughputCapacity.getter()
{
  v1 = (v0 + *(type metadata accessor for WAPerformanceReport() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

double WAPerformanceReport.throughputCapacityRatio.getter()
{
  v1 = type metadata accessor for WAPerformanceReport();
  v3 = v0 + *(v1 + 28);
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = v0 + *(v1 + 24);
    if ((*(v4 + 8) & 1) == 0)
    {
      return *v3 / *v4;
    }
  }

  return result;
}

uint64_t WAPerformanceReport.transmitLatency.getter()
{
  v1 = *(v0 + *(type metadata accessor for WAPerformanceReport() + 32));
}

uint64_t WAPerformanceReport.signalStrength.getter()
{
  v1 = (v0 + *(type metadata accessor for WAPerformanceReport() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WAPerformanceReport.TransmitLatencyMetrics.average.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

uint64_t sub_23B5D4268()
{
  if (*v0)
  {
    result = 0x65676172657661;
  }

  else
  {
    result = 0x6143737365636361;
  }

  *v0;
  return result;
}

uint64_t sub_23B5D42B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6143737365636361 && a2 == 0xEE0079726F676574;
  if (v6 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676172657661 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

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

uint64_t sub_23B5D4394(uint64_t a1)
{
  v2 = sub_23B5D45D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D43D0(uint64_t a1)
{
  v2 = sub_23B5D45D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceReport.TransmitLatencyMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D240, &qword_23B5DE0C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v10;
  v19 = v1[24];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D45D8();
  sub_23B5D8D78();
  LOBYTE(v16) = v9;
  v20 = 0;
  sub_23B5D462C();
  sub_23B5D8C28();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = v19;
    v20 = 1;
    sub_23B5D8C08();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23B5D45D8()
{
  result = qword_27E15D248;
  if (!qword_27E15D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D248);
  }

  return result;
}

unint64_t sub_23B5D462C()
{
  result = qword_27E15D250;
  if (!qword_27E15D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D250);
  }

  return result;
}

uint64_t WAPerformanceReport.TransmitLatencyMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D258, &qword_23B5DE0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D45D8();
  sub_23B5D8D68();
  if (!v2)
  {
    v17 = 0;
    sub_23B5D4860();
    sub_23B5D8B98();
    v11 = v15;
    v17 = 1;
    sub_23B5D8B78();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    v13 = v15;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23B5D4860()
{
  result = qword_27E15D260;
  if (!qword_27E15D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D260);
  }

  return result;
}

unint64_t sub_23B5D48E4()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x74696D736E617274;
  if (v1 != 4)
  {
    v3 = 0x74536C616E676973;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0x6D69546C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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
    return v4;
  }
}

uint64_t sub_23B5D49D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5D65AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5D4A04(uint64_t a1)
{
  v2 = sub_23B5D4DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D4A40(uint64_t a1)
{
  v2 = sub_23B5D4DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceReport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D268, &qword_23B5DE0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D4DB8();
  sub_23B5D8D78();
  v28 = 0;
  sub_23B5D8448();
  sub_23B5D542C(&qword_27E15D278, MEMORY[0x277CC9578]);
  sub_23B5D8C28();
  if (!v2)
  {
    v11 = type metadata accessor for WAPerformanceReport();
    v12 = v11[5];
    v27 = 1;
    sub_23B5D8AA8();
    sub_23B5D542C(&qword_27E15D280, MEMORY[0x277D858F8]);
    sub_23B5D8C28();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = *(v13 + 8);
    v26 = 2;
    sub_23B5D8BF8();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = *(v16 + 8);
    v25 = 3;
    sub_23B5D8BF8();
    v24 = *(v3 + v11[8]);
    v23[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D288, &qword_23B5DE0E0);
    sub_23B5D5474(&qword_27E15D290, sub_23B5D462C, sub_23B5D4E0C);
    sub_23B5D8C28();
    v19 = (v3 + v11[9]);
    v20 = *v19;
    v21 = *(v19 + 8);
    v23[14] = 5;
    sub_23B5D8BF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23B5D4DB8()
{
  result = qword_27E15D270;
  if (!qword_27E15D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D270);
  }

  return result;
}

unint64_t sub_23B5D4E0C()
{
  result = qword_27E15D298;
  if (!qword_27E15D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D298);
  }

  return result;
}

uint64_t WAPerformanceReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_23B5D8AA8();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B5D8448();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D2A0, &qword_23B5DE0E8);
  v38 = *(v41 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v12 = &v34 - v11;
  v13 = type metadata accessor for WAPerformanceReport();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D4DB8();
  v40 = v12;
  v18 = v42;
  sub_23B5D8D68();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v6;
  v20 = v36;
  v21 = v37;
  v49 = 0;
  sub_23B5D542C(&qword_27E15D2A8, MEMORY[0x277CC9578]);
  sub_23B5D8B98();
  v22 = *(v35 + 32);
  v42 = v7;
  v22(v16, v39);
  v48 = 1;
  sub_23B5D542C(&qword_27E15D2B0, MEMORY[0x277D858F8]);
  sub_23B5D8B98();
  (*(v20 + 32))(&v16[v13[5]], v19, v21);
  v47 = 2;
  v23 = sub_23B5D8B68();
  v24 = &v16[v13[6]];
  *v24 = v23;
  v24[8] = v25 & 1;
  v46 = 3;
  v26 = sub_23B5D8B68();
  v27 = &v16[v13[7]];
  *v27 = v26;
  v27[8] = v28 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D288, &qword_23B5DE0E0);
  v45 = 4;
  sub_23B5D5474(&qword_27E15D2B8, sub_23B5D4860, sub_23B5D5504);
  sub_23B5D8B98();
  *&v16[v13[8]] = v43;
  v44 = 5;
  v29 = sub_23B5D8B68();
  v31 = v30;
  (*(v38 + 8))(v40, v41);
  v32 = &v16[v13[9]];
  *v32 = v29;
  v32[8] = v31 & 1;
  sub_23B5D5558(v16, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5CF290(v16);
}

uint64_t sub_23B5D542C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B5D5474(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15D288, &qword_23B5DE0E0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B5D5504()
{
  result = qword_27E15D2C0;
  if (!qword_27E15D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2C0);
  }

  return result;
}

uint64_t sub_23B5D5558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPerformanceReport();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B5D55C0()
{
  result = qword_27E15D2C8;
  if (!qword_27E15D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2C8);
  }

  return result;
}

unint64_t sub_23B5D5648()
{
  result = qword_27E15D2E0;
  if (!qword_27E15D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2E0);
  }

  return result;
}

uint64_t sub_23B5D56CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_23B5D5798()
{
  sub_23B5D8448();
  if (v0 <= 0x3F)
  {
    sub_23B5D8AA8();
    if (v1 <= 0x3F)
    {
      sub_23B5D5850();
      if (v2 <= 0x3F)
      {
        sub_23B5D58A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B5D5850()
{
  if (!qword_27E15D308)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D308);
    }
  }
}

void sub_23B5D58A0()
{
  if (!qword_27E15D310)
  {
    sub_23B5D5904();
    v0 = sub_23B5D8648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D310);
    }
  }
}

unint64_t sub_23B5D5904()
{
  result = qword_27E15D318;
  if (!qword_27E15D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D318);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23B5D596C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B5D59B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAPerformanceReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}