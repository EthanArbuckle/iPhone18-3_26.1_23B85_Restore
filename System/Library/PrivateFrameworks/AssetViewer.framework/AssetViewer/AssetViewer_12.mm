void sub_241339EBC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2413542AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_24133A048(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    sub_241352C5C();
    sub_24133AF00(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
    do
    {
      result = sub_241353B8C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8 || v3 < v9)
        {
          goto LABEL_5;
        }
      }

      else if (v9 < v8 && v3 < v9)
      {
        goto LABEL_5;
      }

      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for PhysicsState() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24133A254(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      sub_241354ADC();

      sub_241353CCC();
      v9 = sub_241354B1C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_24133A404(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_24133A9A0(v5);
  v5[9] = sub_24133A5B0(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_24133A4A8;
}

uint64_t (*sub_24133A4AC(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_24133A9D4(v5);
  v5[9] = sub_24133A7A8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_24133AFB8;
}

void sub_24133A550(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24133A5B0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2412FDBDC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2412A8458();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2412A4408(v16, a3 & 1);
    v11 = sub_2412FDBDC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for EntityController();
    result = sub_2413549DC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_24133A6F8;
}

void sub_24133A6F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_2412A7598(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_24133951C(v6, v7);
  }

  free(v1);
}

void (*sub_24133A7A8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_2412FDB74(a2);
  *(v9 + 40) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2412A8184();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2412A3E80(v16, a3 & 1);
    v11 = sub_2412FDB74(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2413549DC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = (*(*v4 + 56) + 16 * v11);
    v22 = *v21;
    v23 = *(v21 + 1);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  return sub_24133A8FC;
}

void sub_24133A8FC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 40);
  if (v3)
  {
    v5 = v1[4];
    v6 = *v1[3];
    if (v4)
    {
      v7 = v6[7] + 16 * v5;
      *v7 = v2 & 1;
      *(v7 + 8) = v3;
    }

    else
    {
      sub_2412A7548(v5, v1[2], v2 & 1, v3, v6);
    }
  }

  else if ((*a1)[5])
  {
    sub_241339388(v1[4], *v1[3]);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  free(v1);
}

uint64_t (*sub_24133A9A0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24133A9C8;
}

uint64_t (*sub_24133A9D4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24133AFB0;
}

unint64_t *sub_24133A9FC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24133AB5C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24133AC48(v8, v4, v2);
  result = MEMORY[0x245CE4870](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_24133AB5C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 16 * v11) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_24133ACC0(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_24133ACC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_24133AC48(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24133AB5C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_24133ACC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D8);
  result = sub_24135483C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 16 * v16;
    v31 = *v18;
    v19 = *(v18 + 8);
    sub_241354ADC();
    MEMORY[0x245CE2EA0](v17);
    result = sub_241354B1C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    v28 = *(v9 + 56) + 16 * v23;
    *v28 = v31;
    *(v28 + 8) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = swift_unknownObjectRetain();
    v4 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24133AF00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24133AF5C()
{
  result = qword_27E53A558;
  if (!qword_27E53A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A558);
  }

  return result;
}

uint64_t sub_24133AFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_241351B7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2412DDC2C(0xD000000000000014, 0x8000000241360080, &v15);
    _os_log_impl(&dword_241215000, v9, v10, "PhysicsStateManager: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CE4870](v12, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CDAC80], v4);
  sub_24133BB9C(v7, a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24133B1DC(int64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538970);
  MEMORY[0x28223BE20](v25);
  v5 = v24 - v4;
  if (qword_27E537CD0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E53A538);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2412DDC2C(0xD000000000000017, 0x8000000241363650, &v26);
    _os_log_impl(&dword_241215000, v7, v8, "PhysicsStateManager: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  sub_24133CDB4(a2);
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v24[1] = a1;
  swift_retain_n();
  a1 = 0;
  if (v13)
  {
    while (1)
    {
      v15 = a1;
LABEL_12:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(a2 + 56);
      v19 = *(*(a2 + 48) + 8 * v17);
      v20 = v18 + *(*(type metadata accessor for PhysicsState() - 8) + 72) * v17;
      v21 = *(v25 + 48);
      sub_24133D438(v20, &v5[v21]);
      *v5 = v19;

      sub_24133D49C(v22, &v5[v21]);
      sub_241246278(v5, &unk_27E538970);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(a2 + 64 + 8 * v15);
    ++a1;
    if (v13)
    {
      a1 = v15;
      goto LABEL_12;
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_24133B4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v51 = a2;
  v50 = a1;
  v3 = type metadata accessor for PhysicsState();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v4;
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_241352DDC();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538970);
  MEMORY[0x28223BE20](v45);
  v56 = (&v41 - v7);
  v8 = sub_241351B7C();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v12 = sub_241352FFC();
  __swift_project_value_buffer(v12, qword_27E53A538);
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v61 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2412DDC2C(0xD000000000000030, 0x8000000241363690, &v61);
    _os_log_impl(&dword_241215000, v13, v14, "PhysicsStateManager: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245CE4870](v16, -1, -1);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  v17 = v52;
  sub_24133CDB4(v52);
  (*(v9 + 104))(v11, *MEMORY[0x277CDAC80], v8);
  sub_24133BB9C(v11, v51, v17);
  (*(v9 + 8))(v11, v8);
  v18 = *(v17 + 64);
  v43 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v42 = (v19 + 63) >> 6;
  v44 = (v5 + 8);

  v9 = 0;
  v22 = v52;
  v5 = v47;
  if (v21)
  {
    while (1)
    {
      v23 = v9;
LABEL_12:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = v24 | (v23 << 6);
      v11 = *(*(v22 + 48) + 8 * v25);
      v26 = v56;
      v27 = v56 + *(v45 + 48);
      sub_24133D438(*(v22 + 56) + *(v57 + 72) * v25, v27);
      *v26 = v11;
      sub_241352C5C();

      sub_2413519BC();
      v28 = v46;
      sub_241352E2C();
      type metadata accessor for RESRT(0);
      sub_241352DCC();
      v29 = *v44;
      (*v44)(v28, v5);
      v54 = v62;
      v55 = v61;
      v53 = v63;
      sub_241352E2C();
      sub_241352DCC();
      v29(v28, v5);
      v59 = v62;
      v60 = v61;
      v58 = v63;
      v30 = v48;
      sub_24133D438(v27, v48);
      v31 = (*(v57 + 80) + 40) & ~*(v57 + 80);
      v8 = swift_allocObject();
      v8[2] = v51;
      v8[3] = v22;
      v8[4] = v11;
      sub_24133E154(v30, v8 + v31);
      v32 = swift_allocObject();
      v34 = v53;
      v33 = v54;
      *(v32 + 16) = v53;
      *(v32 + 32) = v33;
      v36 = v58;
      v35 = v59;
      *(v32 + 48) = v58;
      *(v32 + 64) = v35;
      *(v32 + 80) = v11;
      *(v32 + 96) = v55;
      *(v32 + 112) = v33;
      v37 = v60;
      *(v32 + 128) = v34;
      *(v32 + 144) = v37;
      *(v32 + 160) = v35;
      *(v32 + 176) = v36;
      *(v32 + 192) = 0;
      *(v32 + 200) = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = v11;
      v39 = v59;
      *(v38 + 32) = v60;
      *(v38 + 48) = v39;
      *(v38 + 64) = v58;
      *(v38 + 80) = sub_24133E1B8;
      *(v38 + 88) = v8;
      swift_retain_n();

      sub_2412FCD6C(sub_24124AE38, v32, sub_24124AD4C, v38, 0.35);

      sub_241246278(v56, &unk_27E538970);
      if (!v21)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v23 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v23 >= v42)
    {
    }

    v21 = *(v43 + 8 * v23);
    ++v9;
    if (v21)
    {
      v9 = v23;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24133BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241351B7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v10 = sub_241352FFC();
  __swift_project_value_buffer(v10, qword_27E53A538);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v14 = 136315138;
    sub_24133E518(&qword_27E538948, MEMORY[0x277CDAC88]);
    v15 = sub_24135491C();
    v16 = a3;
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_2412DDC2C(v15, v18, &v26);
    a3 = v16;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_241215000, v11, v12, "PhysicsStateManager: setPhysicsBodyModeAll(mode:%s)", v14, 0xCu);
    v20 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x245CE4870](v20, -1, -1);
    v21 = v14;
    a2 = v25;
    MEMORY[0x245CE4870](v21, -1, -1);
  }

  else
  {

    v22 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x28223BE20](v22);
  *(&v24 - 4) = a2;
  *(&v24 - 3) = a3;
  *(&v24 - 2) = a1;
  return sub_2412875B4(sub_24133E124, (&v24 - 6), a3);
}

uint64_t sub_24133BEA4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A568);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v54 - v4;
  v61 = type metadata accessor for PhysicsState();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A560);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  *&v58 = &v54 - v9;
  v10 = sub_241351B7C();
  v67 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  *&v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  *&v65 = &v54 - v13;
  v14 = sub_241352AAC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - v21;
  v23 = sub_241351F8C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  v63 = a1;
  sub_241352A8C();
  sub_241352ABC();
  v30 = *(v15 + 8);
  v56 = v14;
  v30(v19, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_241246278(v22, &qword_27E538330);
  }

  v54 = v30;
  v32 = *(v24 + 32);
  v32(v27, v22, v23);
  v32(v29, v27, v23);
  v33 = v65;
  sub_241351F5C();
  v34 = v67;
  v35 = v66;
  (*(v67 + 13))(v66, *MEMORY[0x277CDAC70], v10);
  sub_24133E518(&qword_27E53A570, MEMORY[0x277CDAC88]);
  v36 = sub_241353BCC();
  v37 = *(v34 + 1);
  v37(v35, v10);
  v37(v33, v10);
  if (v36)
  {
    return (*(v24 + 8))(v29, v23);
  }

  v67 = v29;
  v38 = v24;
  v39 = v55;
  v40 = v63;
  sub_241352A8C();
  v41 = sub_2413520FC();
  v42 = v57;
  sub_241352ABC();
  v54(v39, v56);
  v43 = *(v41 - 8);
  if ((*(v43 + 48))(v42, 1, v41) == 1)
  {
    sub_241246278(v42, &qword_27E53A560);
    v44 = 1;
    v45 = v58;
  }

  else
  {
    v45 = v58;
    (*(v43 + 32))(v58, v42, v41);
    v44 = 0;
  }

  (*(v43 + 56))(v45, v44, 1, v41);
  sub_241352C5C();
  sub_2413519BC();
  v65 = v47;
  v66 = v46;
  v58 = v48;
  v50 = v60;
  v49 = v61;
  v51 = v67;
  (*(v38 + 16))(&v60[*(v61 + 20)], v67, v23);
  sub_241246210(v45, v50 + *(v49 + 24), &qword_27E53A560);
  v52 = v65;
  *v50 = v66;
  v50[1] = v52;
  v50[2] = v58;
  v53 = v62;
  sub_24133D438(v50, v62);
  (*(v59 + 56))(v53, 0, 1, v49);

  sub_24134612C(v53, v40);
  sub_24133E0C8(v50);
  sub_241246278(v45, &qword_27E53A560);
  return (*(v38 + 8))(v51, v23);
}

uint64_t sub_24133C608()
{
  sub_241352C5C();
  swift_allocObject();
  v0 = sub_24135180C();

  v1 = sub_24133E21C();

  qword_27E5419B0 = v0;
  *algn_27E5419B8 = v1;
  return result;
}

uint64_t PhysicsBodyMode.description.getter()
{
  v1 = sub_241351B7C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277CDAC70])
  {
    return 0x636974617473;
  }

  if (v6 == *MEMORY[0x277CDAC80])
  {
    return 0x6974616D656E696BLL;
  }

  if (v6 == *MEMORY[0x277CDAC78])
  {
    return 0x63696D616E7964;
  }

  result = sub_24135496C();
  __break(1u);
  return result;
}

uint64_t sub_24133C7CC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x277CDAC70])
  {
    return 0x636974617473;
  }

  if (v6 == *MEMORY[0x277CDAC80])
  {
    return 0x6974616D656E696BLL;
  }

  if (v6 == *MEMORY[0x277CDAC78])
  {
    return 0x63696D616E7964;
  }

  result = sub_24135496C();
  __break(1u);
  return result;
}

uint64_t sub_24133C92C(uint64_t *a1, int a2)
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

uint64_t sub_24133C974(uint64_t result, int a2, int a3)
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

uint64_t sub_24133C9C0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_241351B7C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241352AAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v29 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v32 = a1;
  sub_241352A8C();
  v22 = sub_241351F8C();
  sub_241352ABC();
  (*(v7 + 8))(v9, v6);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v19, 1, v22) == 1)
  {
    sub_241246278(v19, &qword_27E538330);
    v25 = 1;
  }

  else
  {
    (*(v23 + 32))(v21, v19, v22);
    v25 = 0;
  }

  (*(v23 + 56))(v21, v25, 1, v22);
  sub_241246210(v21, v16, &qword_27E538330);
  v26 = v24(v16, 1, v22);
  sub_241246278(v16, &qword_27E538330);
  if (v26 != 1)
  {
    if (!v24(v21, 1, v22))
    {
      (*(v29 + 16))(v5, v31, v30);
      sub_241351F6C();
    }

    sub_241246210(v21, v13, &qword_27E538330);
    v27 = sub_241352A7C();
    sub_241352ACC();
    v27(v33, 0);
  }

  return sub_241246278(v21, &qword_27E538330);
}

uint64_t sub_24133CDB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A560);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v39 - v3;
  v57 = sub_241351B7C();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_241352AAC();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v39 - v10;
  v11 = sub_241351F8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v39 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538970);
  MEMORY[0x28223BE20](v53);
  v59 = (&v39 - v16);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v50 = (v12 + 48);
  v51 = (v6 + 8);
  v43 = (v12 + 32);
  v42 = *MEMORY[0x277CDAC80];
  v41 = (v4 + 104);
  v49 = (v4 + 8);
  v40 = (v12 + 8);
  v58 = a1;

  v23 = 0;
  v52 = a1 + 64;
  v45 = v8;
  while (v20)
  {
    v24 = v11;
LABEL_12:
    v26 = __clz(__rbit64(v20)) | (v23 << 6);
    v27 = *(v58 + 56);
    v28 = *(*(v58 + 48) + 8 * v26);
    v29 = v27 + *(*(type metadata accessor for PhysicsState() - 8) + 72) * v26;
    v30 = v59;
    sub_24133D438(v29, v59 + *(v53 + 48));
    *v30 = v28;

    sub_241352A8C();
    v31 = v55;
    sub_241352ABC();
    (*v51)(v8, v56);
    if ((*v50)(v31, 1, v24) == 1)
    {
      sub_241246278(v31, &qword_27E538330);
    }

    else
    {
      v32 = v44;
      v33 = *v43;
      (*v43)(v44, v31, v24);
      v33(v54, v32, v24);
      v34 = v46;
      v35 = v57;
      (*v41)(v46, v42, v57);
      sub_24133C9C0(v28, v34);
      v48 = *v49;
      v48(v34, v35);
      v36 = sub_2413520FC();
      (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
      v37 = sub_241352A7C();
      v8 = v45;
      sub_241352ACC();
      v37(v60, 0);
      v38 = v54;
      sub_241351F5C();
      sub_24133C9C0(v28, v34);
      v48(v34, v57);
      (*v40)(v38, v24);
    }

    v11 = v24;
    v20 &= v20 - 1;
    result = sub_241246278(v59, &unk_27E538970);
    v17 = v52;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v24 = v11;
      v23 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PhysicsState()
{
  result = qword_27E53A578;
  if (!qword_27E53A578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24133D438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhysicsState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24133D49C(uint64_t *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v10 = sub_241352FFC();
  __swift_project_value_buffer(v10, qword_27E53A538);

  v11 = sub_241352FDC();
  v12 = sub_2413540DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315138;
    v15 = sub_241352B8C();
    v17 = sub_2412DDC2C(v15, v16, v28);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_241215000, v11, v12, "PhysicsStateManager: _resetPhysics(entity:%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CE4870](v14, -1, -1);
    MEMORY[0x245CE4870](v13, -1, -1);
  }

  v18 = *a2;
  v27[1] = *(a2 + 1);
  v27[2] = v18;
  v27[0] = *(a2 + 2);
  sub_241352C5C();
  sub_2413519CC();
  v19 = type metadata accessor for PhysicsState();
  v20 = *(v19 + 20);
  v21 = sub_241351F8C();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v9, &a2[v20], v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  v23 = sub_241352A7C();
  sub_241352ACC();
  v23(v28, 0);
  sub_241246210(&a2[*(v19 + 24)], v6, &qword_27E53A560);
  sub_2413520FC();
  v24 = sub_241352A7C();
  sub_241352ACC();
  v24(v28, 0);
  v25 = *a1;
  result = swift_conformsToProtocol2();
  if (result)
  {
    return MEMORY[0x245CDFE40](1, v25, result);
  }

  return result;
}

uint64_t sub_24133D85C(uint64_t a1)
{
  v79 = a1;
  v77 = sub_241352AAC();
  v1 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v63 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v78 = sub_241351B7C();
  v12 = *(v78 - 8);
  v13 = MEMORY[0x28223BE20](v78);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v59 - v15;
  v16 = sub_241351F8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538970);
  v19 = MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = (&v59 - v21);
  if (qword_27E537CD0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v22 = sub_241352FFC();
  __swift_project_value_buffer(v22, qword_27E53A538);
  v23 = sub_241352FDC();
  v24 = sub_2413540DC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = v17;
    v27 = swift_slowAlloc();
    v84[0] = v27;
    *v25 = 136315138;
    *(v25 + 4) = sub_2412DDC2C(0xD000000000000015, 0x8000000241363670, v84);
    _os_log_impl(&dword_241215000, v23, v24, "PhysicsStateManager: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    v17 = v26;
    MEMORY[0x245CE4870](v28, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }

  v29 = v79 + 64;
  v30 = 1 << *(v79 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v79 + 64);
  v33 = (v30 + 63) >> 6;
  v69 = (v17 + 8);
  v70 = (v17 + 16);
  v68 = (v1 + 8);
  v62 = (v17 + 32);
  v66 = (v17 + 56);
  v59 = (v12 + 16);
  v65 = (v12 + 8);

  v1 = 0;
  v82 = v11;
  v64 = v33;
  v67 = (v17 + 48);
  v80 = v16;
  v61 = v29;
  while (v32)
  {
LABEL_14:
    v36 = __clz(__rbit64(v32)) | (v1 << 6);
    v37 = *(v79 + 56);
    v38 = *(*(v79 + 48) + 8 * v36);
    v39 = (type metadata accessor for PhysicsState() - 8);
    v40 = v37 + *(*v39 + 72) * v36;
    v41 = v72;
    v42 = v81;
    sub_24133D438(v40, v81 + *(v72 + 48));
    *v42 = v38;
    v43 = v42;
    v44 = v71;
    sub_241246210(v43, v71, &unk_27E538970);

    v45 = v44 + *(v41 + 48);
    v46 = v45 + v39[7];
    v47 = v73;
    (*v70)(v73, v46, v16);
    sub_24133E0C8(v45);
    sub_241351F5C();
    (*v69)(v47, v16);
    v48 = v76;
    sub_241352A8C();
    v49 = v74;
    sub_241352ABC();
    v50 = v49;
    (*v68)(v48, v77);
    v17 = *v67;
    if ((*v67)(v49, 1, v16) == 1)
    {
      v51 = v16;
      v12 = &unk_241366258;
      sub_241246278(v49, &qword_27E538330);
      v52 = 1;
      v53 = v82;
    }

    else
    {
      v53 = v82;
      (*v62)(v82, v50, v16);
      v52 = 0;
      v51 = v16;
      v12 = &unk_241366258;
    }

    (*v66)(v53, v52, 1, v51);
    v54 = v53;
    v55 = v75;
    sub_241246210(v54, v75, &qword_27E538330);
    v56 = v17(v55, 1, v51);
    v57 = v55;
    v11 = v82;
    sub_241246278(v57, &qword_27E538330);
    if (v56 != 1)
    {
      if (!v17(v11, 1, v80))
      {
        (*v59)(v60, v83, v78);
        sub_241351F6C();
      }

      v17 = v63;
      sub_241246210(v11, v63, &qword_27E538330);
      v34 = sub_241352A7C();
      sub_241352ACC();
      v34(v84, 0);
      v29 = v61;
    }

    v32 &= v32 - 1;
    sub_241246278(v11, &qword_27E538330);
    (*v65)(v83, v78);
    sub_241246278(v81, &unk_27E538970);
    v16 = v80;
    v33 = v64;
  }

  while (1)
  {
    v35 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v35 >= v33)
    {
    }

    v32 = *(v29 + 8 * v35);
    ++v1;
    if (v32)
    {
      v1 = v35;
      goto LABEL_14;
    }
  }
}

uint64_t sub_24133E0C8(uint64_t a1)
{
  v2 = type metadata accessor for PhysicsState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24133E154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhysicsState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24133E1B8()
{
  v1 = *(type metadata accessor for PhysicsState() - 8);
  v2 = *(v0 + 32);
  v3 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return sub_24133D49C(v2, v3);
}

uint64_t sub_24133E21C()
{
  v0 = sub_241352B6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v19 = MEMORY[0x277D84F98];
  sub_241352C5C();
  sub_2413518AC();
  sub_241310DA0(1, v3, &v19);
  (*(v1 + 8))(v3, v0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);

  v5 = sub_241352FDC();
  v6 = sub_2413540DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    v9 = sub_241352B8C();
    v11 = sub_2412DDC2C(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for PhysicsState();
    sub_24133E518(&qword_27E5389B0, MEMORY[0x277CDB1C8]);

    v12 = sub_241353B6C();
    v14 = v13;

    v15 = sub_2412DDC2C(v12, v14, v18);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_241215000, v5, v6, "PhysicsStateManager: savePhysicsState(on:%s) mapping:%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  swift_beginAccess();
  return v19;
}

uint64_t sub_24133E518(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24133E588()
{
  sub_241351F8C();
  if (v0 <= 0x3F)
  {
    sub_24133E61C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24133E61C()
{
  if (!qword_27E53A588)
  {
    sub_2413520FC();
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E53A588);
    }
  }
}

id sub_24133E674()
{
  v1 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer);
  }

  else
  {
    v4 = sub_24133E6D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24133E6D8(uint64_t a1)
{
  v2 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24134294C(a1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, v4, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2413429B4(v4, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 6);
  }

  v6 = *(a1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_traitManager);
  objc_allocWithZone(type metadata accessor for CheckoutContainerView());

  return sub_241340CE0(v5, v6, 0.0, 0.0, 0.0, 0.0);
}

void sub_24133E80C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CheckoutPlatter.CheckoutBackgroundView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v0 bounds];
  v2 = [v1 _bezierPathWithPillRect_cornerRadius_];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 layer];
    v5 = [v4 mask];

    if (v5)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        goto LABEL_7;
      }
    }

    v8 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    v9 = [v0 layer];
    v7 = v8;
    [v9 setMask_];

    if (!v8)
    {
LABEL_8:

      return;
    }

LABEL_7:
    v10 = [v3 CGPath];
    [v7 setPath_];

    goto LABEL_8;
  }
}

id sub_24133EA88()
{
  v1 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull);
  }

  else
  {
    type metadata accessor for WebViewButton();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 addTarget:v0 action:sel_applePayButtonPressed forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_24133EB20(void *a1)
{
  v2 = v1;
  v4 = sub_24135115C();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v123 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = &v119 - v7;
  v129 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v129);
  v130 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24135152C();
  v131 = *(v126 - 8);
  v9 = MEMORY[0x28223BE20](v126);
  v120 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v121 = &v119 - v12;
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v119 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v119 - v18;
  v20 = sub_24135302C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24135307C();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_24133E674();
  sub_24135306C();
  v135[3] = sub_24135308C();
  v135[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v135);
  sub_24135309C();
  sub_24135422C();

  v26 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer;
  v27 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer);
  sub_24135301C();
  (*(v21 + 16))(v16, v23, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  sub_24135303C();
  sub_241246278(v16, &qword_27E5386B0);
  v28 = sub_24135305C();
  (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
  sub_24135423C();

  (*(v21 + 8))(v23, v20);
  [*(v2 + v26) setClipsToBounds_];
  v29 = a1;
  [a1 addSubview_];
  v30 = *(v2 + v26);
  v31 = [v30 widthAnchor];
  v32 = [v31 constraintLessThanOrEqualToConstant_];

  [v32 setActive_];
  v33 = [v30 heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  v35 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint);
  v132 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint;
  *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint) = v34;

  v135[0] = MEMORY[0x277D84F90];
  sub_24135466C();
  v36 = objc_opt_self();
  v37 = [v36 constraintWithItem:v30 attribute:9 relatedBy:0 toItem:v29 attribute:9 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  v127 = sub_241246158(0, &qword_27E539D00);
  v38 = sub_241353E1C();

  v128 = v36;
  [v36 activateConstraints_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v30 widthAnchor];
  v40 = [v29 widthAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];

  v133 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_widthBackgroundViewConstraint;
  v42 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_widthBackgroundViewConstraint);
  *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_widthBackgroundViewConstraint) = v41;
  v43 = v41;

  LODWORD(v44) = 1132068864;
  [v43 setPriority_];

  v45 = [v30 bottomAnchor];
  v46 = [v29 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-8.0];

  v48 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomBackgroundViewConstraint;
  v49 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomBackgroundViewConstraint);
  *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomBackgroundViewConstraint) = v47;

  v50 = [v30 leadingAnchor];
  v51 = [v29 safeAreaLayoutGuide];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintGreaterThanOrEqualToAnchor:v52 constant:8.0];
  v54 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_leftBackgroundViewConstraint;
  v55 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_leftBackgroundViewConstraint);
  *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_leftBackgroundViewConstraint) = v53;

  v56 = [v30 trailingAnchor];
  v57 = v30;

  v58 = [v29 safeAreaLayoutGuide];
  v59 = [v58 trailingAnchor];

  v60 = [v56 constraintLessThanOrEqualToAnchor:v59 constant:-8.0];
  v61 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_rightBackgroundViewConstraint;
  v62 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_rightBackgroundViewConstraint);
  *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_rightBackgroundViewConstraint) = v60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_24136B030;
  v64 = *(v2 + v133);
  if (!v64)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(v63 + 32) = v64;
  v65 = v132;
  v66 = *&v132[v2];
  if (!v66)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v63 + 40) = v66;
  v67 = *(v2 + v54);
  if (!v67)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v63 + 48) = v67;
  v68 = *(v2 + v61);
  if (!v68)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v63 + 56) = v68;
  v69 = *(v2 + v48);
  if (!v69)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  *(v63 + 64) = v69;
  v70 = v64;
  v71 = v66;
  v72 = v67;
  v73 = v68;
  v74 = v69;
  v75 = sub_241353E1C();

  [v128 activateConstraints_];

  v76 = v130;
  sub_24134294C(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, v130, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v78 = v131;
  if (EnumCaseMultiPayload != 2)
  {
    sub_2413429B4(v76, type metadata accessor for ModelCustomizationOptions.BannerStyle);
LABEL_16:
    v104 = [objc_opt_self() defaultCenter];
    [v104 addObserver:v2 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    return;
  }

  v79 = *(v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539BF8) + 48));
  v80 = v126;
  (*(v78 + 32))(v134, v76, v126);
  sub_2413514FC();
  if (v81)
  {
    v82 = sub_241353C8C();
    v84 = v83;

    if (v82 == 0x7370747468 && v84 == 0xE500000000000000)
    {

      goto LABEL_14;
    }

    v85 = sub_24135497C();

    if (v85)
    {
      goto LABEL_14;
    }
  }

  if ([objc_opt_self() allowCheckoutNonSecureHTML])
  {
LABEL_14:
    v86 = sub_24133EA88();
    [v57 addSubview_];

    v87 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull;
    [*(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull) setTranslatesAutoresizingMaskIntoConstraints_];
    v88 = *(v2 + v87);
    UIView.pinToSuperviewEdges()();

    v89 = *&v65[v2];
    if (v89)
    {
      [v89 setConstant_];
      v90 = v122;
      sub_2413515DC();
      v91 = sub_2413515EC();
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      v92 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_analytics;
      swift_beginAccess();
      sub_2412F0B08(v90, v2 + v92);
      swift_endAccess();
      v93 = v134;
      (*(v78 + 16))(v121, v134, v80);
      v94 = v123;
      sub_24135114C();
      v95 = *(v2 + v87);
      v96 = swift_allocObject();
      swift_weakInit();
      v97 = &v95[OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler];
      v98 = *&v95[OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler];
      *v97 = sub_241342944;
      v97[1] = v96;
      v99 = v95;
      swift_retain_n();
      sub_2412186FC(v98);
      v100 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView;
      [*&v99[OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView] setNavigationDelegate_];
      v101 = *&v99[v100];
      v102 = sub_24135113C();
      v103 = [v101 loadRequest_];

      (*(v124 + 8))(v94, v125);
      (*(v78 + 8))(v93, v80);

      goto LABEL_16;
    }

    goto LABEL_36;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v105 = sub_241352FFC();
  __swift_project_value_buffer(v105, qword_27E53A538);
  v106 = v120;
  (*(v78 + 16))(v120, v134, v80);
  v107 = sub_241352FDC();
  v108 = sub_2413540BC();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = v106;
    v110 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v135[0] = v133;
    *v110 = 136315138;
    v111 = sub_2413514FC();
    if (v112)
    {
      v113 = v111;
    }

    else
    {
      v113 = 0;
    }

    if (v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = 0xE000000000000000;
    }

    v132 = *(v78 + 8);
    (v132)(v109, v126);
    v115 = sub_2412DDC2C(v113, v114, v135);

    *(v110 + 4) = v115;
    _os_log_impl(&dword_241215000, v107, v108, "Error: custom checkout style only supports https. Input scheme:%s", v110, 0xCu);
    v116 = v133;
    __swift_destroy_boxed_opaque_existential_0(v133);
    v80 = v126;
    MEMORY[0x245CE4870](v116, -1, -1);
    MEMORY[0x245CE4870](v110, -1, -1);

    v117 = v132;
  }

  else
  {

    v117 = *(v78 + 8);
    v117(v106, v80);
  }

  v118 = *(v2 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_customHTMLLoadedBlock);
  if (v118)
  {

    v118(0);
    sub_2412186FC(v118);
  }

  v117(v134, v80);
}

void sub_24133FA6C(char a1)
{
  v2 = _s15CheckoutPlatterVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_241215000, v9, v10, "Custom HTML content loaded", v11, 2u);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    *(Strong + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasCustomContentFinishedLoaded) = 1;
    sub_24134055C();
    sub_2413515DC();
    v14 = sub_2413515EC();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = v13 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_analytics;
    swift_beginAccess();
    sub_2412F0B08(v7, v15 + *(v2 + 20));
    swift_endAccess();
    v16 = *(v13 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_customHTMLLoadedBlock);
    if (v16)
    {

      v16(a1 & 1);
      sub_2412186FC(v16);
    }

    sub_24134294C(v15, v4, _s15CheckoutPlatterVMa);
    v17 = sub_24133FE3C();
    v19 = v18;
    sub_2413429B4(v4, _s15CheckoutPlatterVMa);
    if (v19)
    {
    }

    else
    {
      v20 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      v24[14] = sub_241353C0C();
      v24[15] = v22;
      sub_24135456C();
      *(inited + 96) = MEMORY[0x277D839F8];
      *(inited + 72) = v17;
      sub_241244BF0(inited);
      swift_setDeallocating();
      sub_241246278(inited + 32, &unk_27E538730);
      v23 = sub_241353B4C();

      [v20 sendAnalyticsWithEvent:19 payloadDict:v23];
    }
  }
}

uint64_t sub_24133FE3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = sub_2413515EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_241246210(v0, v6, &qword_27E538868);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_5:
    sub_241246278(v15, &qword_27E538868);
    return 0;
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = _s15CheckoutPlatterVMa(0);
  sub_241246210(v0 + *(v18 + 20), v4, &qword_27E538868);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v4;
    goto LABEL_5;
  }

  v17(v11, v4, v7);
  sub_24135157C();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v13, v7);
  return v21;
}

id sub_2413400EC()
{
  v1 = v0;
  v2 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24131598C();
  [v5 displayCornerRadius];
  v7 = v6;

  v8 = 6.0;
  if (v7 > 0.0)
  {
    v9 = sub_24131598C();
    v10 = [v9 userInterfaceIdiom];

    if (!v10)
    {
      v11 = objc_opt_self();
      v12 = [v11 mainScreen];
      v13 = [v12 currentOrientation];

      v8 = 16.0;
      if (v13 != 1)
      {
        v14 = [v11 mainScreen];
        v15 = [v14 currentOrientation];

        if (v15 != 2)
        {
          v16 = [v11 mainScreen];
          v17 = [v16 currentOrientation];

          if (v17 == 4 || (v18 = [v11 mainScreen], v19 = objc_msgSend(v18, sel_currentOrientation), v18, v8 = 6.0, v19 == 3))
          {
            v8 = 27.0;
          }
        }
      }
    }
  }

  sub_24134294C(v1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, v4, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = sub_24135152C();
    return (*(*(v20 - 8) + 8))(v4, v20);
  }

  else
  {
    sub_2413429B4(v4, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    v22 = sub_24131598C();
    v23 = [v22 preferredContentSizeCategory];

    v24 = sub_2413541EC();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v25 = sub_241352FFC();
    __swift_project_value_buffer(v25, qword_27E53A538);

    v26 = sub_241352FDC();
    v27 = sub_2413540DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 134218242;
      *(v28 + 4) = v8;
      *(v28 + 12) = 2080;
      v30 = sub_24131598C();
      v31 = [v30 preferredContentSizeCategory];

      v32 = sub_241353C0C();
      v34 = v33;

      v35 = sub_2412DDC2C(v32, v34, &v37);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_241215000, v26, v27, "Checkoutplatter using sidePadding = %f, contentSize: %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x245CE4870](v29, -1, -1);
      MEMORY[0x245CE4870](v28, -1, -1);
    }

    result = *(v1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint);
    if (result)
    {
      [result setActive_];
      [*(v1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_topCheckoutContainerConstraint) setActive_];
      [*(v1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomCheckoutContainerConstraint) setActive_];
      return [*(v1 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_centerYCheckoutContainerConstraint) setActive_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24134055C()
{
  v1 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24134294C(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, v3, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = sub_24135152C();
    (*(*(v4 - 8) + 8))(v3, v4);
    if ((*(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasPerformedSlideUpIntroAnimation) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasCustomContentFinishedLoaded) == 1 && *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_allowsContentVisibility) == 1)
    {
      *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasPerformedSlideUpIntroAnimation) = 1;
      v5 = *(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint);
      if (v5)
      {
        [v5 constant];
        v7 = v6 + 64.0;
        v8 = sub_24133E674();
        CGAffineTransformMakeTranslation(&aBlock, 0.0, v7);
        [v8 setTransform_];

        [*(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer) setAlpha_];
        v9 = objc_opt_self();
        v10 = swift_allocObject();
        swift_weakInit();
        *&aBlock.tx = sub_241342924;
        *&aBlock.ty = v10;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_2412D5698;
        *&aBlock.d = &block_descriptor_14;
        v11 = _Block_copy(&aBlock);

        [v9 animateWithDuration:0 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:0.55 options:0.5 animations:1.0 completion:0.0];
        _Block_release(v11);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_2413429B4(v3, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  }
}

void sub_24134080C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_24133E674();

    v1[0] = 0x3FF0000000000000;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 0x3FF0000000000000;
    v1[4] = 0;
    v1[5] = 0;
    [v0 setTransform_];
  }
}

uint64_t sub_2413409A4()
{
  sub_2413429B4(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  sub_24124B00C(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_delegate);

  sub_2413429B4(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_analytics, _s15CheckoutPlatterVMa);
  sub_2412186FC(*(v0 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_customHTMLLoadedBlock));
  return v0;
}

uint64_t sub_241340AE8()
{
  sub_2413409A4();

  return swift_deallocClassInstance();
}

uint64_t sub_241340B68()
{
  result = type metadata accessor for ModelCustomizationOptions.BannerStyle(319);
  if (v1 <= 0x3F)
  {
    result = _s15CheckoutPlatterVMa(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id sub_241340CE0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_parentStackView;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v15 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_verticalTextStackView;
  *&v6[v15] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v16 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_titleLabel;
  *&v6[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_subTitleLabel;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v18 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_tertiaryTitleLabel;
  *&v6[v18] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v19 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton;
  *&v7[v19] = [objc_opt_self() buttonWithType_];
  *&v7[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_rightParentStackViewConstraint] = 0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v20 = sub_241352FFC();
  __swift_project_value_buffer(v20, qword_27E53A538);
  v21 = sub_241352FDC();
  v22 = sub_2413540DC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = a1;
    _os_log_impl(&dword_241215000, v21, v22, "Checkout platter: Creating %ld button", v23, 0xCu);
    MEMORY[0x245CE4870](v23, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D38B70]) initWithPaymentButtonType:a1 paymentButtonStyle:2];
  *&v7[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton] = v24;
  *&v7[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_traitManager] = a2;
  v29.receiver = v7;
  v29.super_class = type metadata accessor for CheckoutContainerView();

  v25 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a3, a4, a5, a6);
  sub_241341BF8(v26);
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v25 selector:sel_contentSizeCategoryDidChangeWithNotification_ name:*MEMORY[0x277D76810] object:0];

  return v25;
}

void sub_241341030(uint64_t a1)
{
  v3 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24134294C(a1, v5, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v7 = *(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton);
      [v7 setHidden_];
      [*(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton) setHidden_];
      v8 = sub_241353BDC();

      [v7 setTitle:v8 forState:0];
    }

    else
    {
      [*(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton) setHidden_];
      [*(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton) setHidden_];
      v9 = sub_24135152C();
      (*(*(v9 - 8) + 8))(v5, v9);
    }
  }

  else
  {
    sub_2413429B4(v5, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    [*(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton) setHidden_];
    [*(v1 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton) setHidden_];
  }
}

void sub_24134123C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_titleLabel);
  v2 = [v1 text];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = sub_241353C0C();
  v6 = v5;

  v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_subTitleLabel);
  v8 = [v7 text];
  if (!v8)
  {
LABEL_19:

LABEL_20:
    if (qword_27E537CD0 != -1)
    {
LABEL_36:
      swift_once();
    }

    v66 = sub_241352FFC();
    __swift_project_value_buffer(v66, qword_27E53A538);
    osloga = sub_241352FDC();
    v67 = sub_2413540BC();
    if (os_log_type_enabled(osloga, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_241215000, osloga, v67, "DescriptionLabels should not be nil", v68, 2u);
      MEMORY[0x245CE4870](v68, -1, -1);
    }

    return;
  }

  v9 = v8;
  v10 = sub_241353C0C();
  v12 = v11;

  v13 = *(v0 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_tertiaryTitleLabel);
  v14 = [v13 text];
  if (!v14)
  {

    goto LABEL_19;
  }

  v98 = v10;
  v100 = v4;
  v102 = v13;
  v15 = v14;
  v16 = sub_241353C0C();
  v94 = v17;
  v96 = v16;

  v18 = sub_241342214();
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D76968];
  v21 = sub_24131598C();
  v22 = [v19 preferredFontForTextStyle:v20 compatibleWithTraitCollection:v21];

  v23 = [v22 fontDescriptor];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];

  if (!v24)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v91 = v0;
  v92 = [v19 fontWithDescriptor:v24 size:0.0];

  v25 = *MEMORY[0x277D76938];
  v26 = sub_24131598C();
  v27 = [v19 preferredFontForTextStyle:v25 compatibleWithTraitCollection:v26];

  v28 = [v27 fontDescriptor];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];

  if (!v29)
  {
    goto LABEL_38;
  }

  v30 = [v19 fontWithDescriptor:v29 size:0.0];

  v31 = *MEMORY[0x277D76940];
  v32 = sub_24131598C();
  v90 = v19;
  v33 = [v19 preferredFontForTextStyle:v31 compatibleWithTraitCollection:v32];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365E60;
  *(inited + 32) = v100;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  *(inited + 56) = v92;
  *(inited + 64) = v30;
  *(inited + 72) = v98;
  *(inited + 80) = v12;
  *(inited + 88) = v7;
  *(inited + 96) = v27;
  *(inited + 104) = v33;
  *(inited + 112) = v96;
  *(inited + 120) = v94;
  *(inited + 128) = v102;
  *(inited + 136) = v27;
  oslog = inited;
  *(inited + 144) = v33;
  v35 = *MEMORY[0x277D740A8];
  v36 = v27;
  v37 = v33;
  v89 = v36;
  v88 = v37;
  v101 = v1;
  v95 = v92;
  v97 = v30;
  v99 = v7;
  v93 = v102;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A670);
  v39 = 0;
  while (1)
  {
    isa = oslog[v39 + 4].isa;
    v40 = oslog[v39 + 5].isa;
    v42 = oslog[v39 + 7].isa;

    v43 = v42;
    v44 = sub_241353BDC();
    v107[0] = v35;
    v107[4] = sub_241246158(0, &qword_27E53A678);
    v107[1] = v43;
    v45 = sub_24135483C();
    v46 = v43;
    v47 = v35;
    sub_241246210(v107, &v105, &qword_27E53A680);
    v48 = v105;
    v49 = sub_2412FEC5C(v105);
    if (v50)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v45[(v49 >> 6) + 8] |= 1 << v49;
    *(v45[6] + 8 * v49) = v48;
    sub_241245AA4(&v106, (v45[7] + 32 * v49));
    v51 = v45[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_35;
    }

    v45[2] = v53;
    sub_241246278(v107, &qword_27E53A680);
    type metadata accessor for Key(0);
    sub_241342794();
    v54 = sub_241353B4C();

    [v44 sizeWithAttributes_];
    v56 = v55;

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v57 = sub_241352FFC();
    __swift_project_value_buffer(v57, qword_27E53A538);

    v58 = sub_241352FDC();
    v59 = sub_2413540DC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v35;
      v62 = v38;
      v63 = swift_slowAlloc();
      v105 = v63;
      *v60 = 136315394;
      v64 = sub_2412DDC2C(isa, v40, &v105);

      *(v60 + 4) = v64;
      *(v60 + 12) = 1024;
      *(v60 + 14) = v56 <= v18;
      _os_log_impl(&dword_241215000, v58, v59, "Enough space to display %s? %{BOOL}d", v60, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v65 = v63;
      v38 = v62;
      v35 = v61;
      MEMORY[0x245CE4870](v65, -1, -1);
      MEMORY[0x245CE4870](v60, -1, -1);
    }

    else
    {
    }

    if (v18 < v56)
    {
      break;
    }

    v39 += 5;
    if (v39 == 15)
    {
      v70 = v88;
      v69 = v89;
      v71 = v89;
      v72 = v95;
      goto LABEL_27;
    }
  }

  v70 = v88;
  v69 = v89;
  v71 = v88;
  v72 = v97;
LABEL_27:
  [v101 setFont_];
  [v99 setFont_];
  v73 = v69;
  v74 = v70;
  v75 = v93;

  [v75 setFont_];

  v76 = [*(v91 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton) titleLabel];
  if (v76)
  {
    v77 = v76;
    v78 = *MEMORY[0x277D76918];
    v79 = sub_24131598C();
    v80 = [v90 preferredFontForTextStyle:v78 compatibleWithTraitCollection:v79];

    v81 = [v80 fontDescriptor];
    v82 = [v81 fontDescriptorWithSymbolicTraits_];

    if (!v82)
    {
      goto LABEL_39;
    }

    v83 = [v90 fontWithDescriptor:v82 size:0.0];

    [v77 setFont_];
  }

  v84 = sub_24131598C();
  v85 = [v84 preferredContentSizeCategory];

  v86 = sub_2413541EC();
  v87 = *(v91 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_parentStackView);
  if (v86)
  {
    [v87 setAxis_];
    [v87 setAlignment_];
    [v101 setNumberOfLines_];
    [v99 setNumberOfLines_];
  }

  else
  {
    [v87 setAxis_];
    [v87 setAlignment_];
    [v101 setNumberOfLines_];
    [v99 setNumberOfLines_];
  }
}

id sub_241341BF8(double a1)
{
  v2 = v1;
  LODWORD(a1) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:a1];
  v3 = *&v1[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_titleLabel];
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v3 setTextColor_];

  v6 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_subTitleLabel];
  v7 = [v4 secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  v8 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_tertiaryTitleLabel];
  v9 = [v4 secondaryLabelColor];
  [v8 setTextColor_];

  v10 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_verticalTextStackView];
  [v10 setAxis_];
  [v10 setAlignment_];
  [v10 setSpacing_];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  [v10 addArrangedSubview_];
  [v10 addArrangedSubview_];
  [v10 addArrangedSubview_];
  v12 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 _setContinuousCornerRadius_];
  v13 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton];
  [v13 setHidden_];
  v14 = [v4 systemBlueColor];
  [v13 setTintColor_];

  LODWORD(v15) = 1144750080;
  [v13 setContentHuggingPriority:1 forAxis:v15];
  v16 = [v13 titleLabel];
  [v16 setLineBreakMode_];

  v17 = *&v2[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_parentStackView];
  [v17 setDistribution_];
  [v17 setSpacing_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v18];
  [v17 addArrangedSubview_];
  [v17 addArrangedSubview_];
  [v17 addArrangedSubview_];
  [v2 addSubview_];
  sub_24135466C();
  v19 = objc_opt_self();
  v20 = [v19 constraintWithItem:v17 attribute:1 relatedBy:0 toItem:v2 attribute:1 multiplier:1.0 constant:26.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  sub_241246158(0, &qword_27E539D00);
  v21 = sub_241353E1C();

  [v19 activateConstraints_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24135466C();
  v22 = [v19 constraintWithItem:v17 attribute:2 relatedBy:0 toItem:v2 attribute:2 multiplier:1.0 constant:-26.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  v23 = sub_241353E1C();

  [v19 activateConstraints_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24135466C();
  v24 = [v19 constraintWithItem:v17 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  v25 = [v19 constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v2 attribute:4 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  v26 = sub_241353E1C();

  [v19 activateConstraints_];

  return [v17 setTranslatesAutoresizingMaskIntoConstraints_];
}

double sub_241342214()
{
  v1 = v0;
  v2 = sub_24131598C();
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_2413541EC();
  if (v2)
  {
    [v1 bounds];

    return CGRectGetWidth(*&v4);
  }

  else
  {
    v9 = *&v1[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton];
    if ([v9 isHidden])
    {
      [*&v1[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton] sizeThatFits_];
    }

    else
    {
      [v9 intrinsicContentSize];
    }

    v11 = v10;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v12 = sub_241352FFC();
    __swift_project_value_buffer(v12, qword_27E53A538);
    v13 = sub_241352FDC();
    v14 = sub_2413540DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_241215000, v13, v14, "spaceUsedByViewOnTrailing: %f", v15, 0xCu);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    [v1 bounds];
    return CGRectGetWidth(v17) - v11 + -16.0;
  }
}

id sub_241342590(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2413426D0()
{
  sub_24134273C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24134273C()
{
  if (!qword_280DA2A48)
  {
    sub_2413515EC();
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DA2A48);
    }
  }
}

unint64_t sub_241342794()
{
  result = qword_27E538000;
  if (!qword_27E538000)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538000);
  }

  return result;
}

void sub_2413427EC()
{
  v1 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_parentStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v2 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_verticalTextStackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_subTitleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_tertiaryTitleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton;
  *(v0 + v6) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_rightParentStackViewConstraint) = 0;
  sub_2413547DC();
  __break(1u);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24134294C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2413429B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t VariantsLoader.__allocating_init(url:options:)(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241342AC8;

  return sub_241344E40(a1, a2);
}

uint64_t sub_241342AC8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

double static VariantsLoader.Options.defaultViewerOptions()@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  *&result = 0x100000001000;
  *(a1 + 8) = 0x100000001000;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_241342C14()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A688);
  __swift_project_value_buffer(v0, qword_27E53A688);
  return sub_241352FEC();
}

uint64_t sub_241342C98()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x56746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_241342CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241345FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241342D18(uint64_t a1)
{
  v2 = sub_2413458B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241342D54(uint64_t a1)
{
  v2 = sub_2413458B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MRQLConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A6A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2413458B8();
  sub_241354B3C();
  v16 = 0;
  v8 = v12;
  sub_2413548BC();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
    sub_24134590C(&qword_27E53A6B0);
    sub_2413548EC();
    v14 = 2;
    sub_2413548BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MRQLConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A6B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2413458B8();
  sub_241354B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_24135487C();
  v11 = v10;
  v12 = a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  v24 = 1;
  sub_24134590C(&qword_27E53A6C0);
  sub_2413548AC();
  v20 = v22;
  v23 = 2;
  v13 = sub_24135487C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v20;
  *v12 = v21;
  v12[1] = v11;
  v12[2] = v17;
  v12[3] = v16;
  v12[4] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24134328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 240) = a7;
  *(v8 + 96) = a6;
  *(v8 + 104) = v7;
  *(v8 + 80) = a3;
  *(v8 + 88) = a5;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v10 = sub_24135164C();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a4;
  *(v8 + 128) = v11;
  *(v8 + 136) = v12;
  *(v8 + 144) = a4[1];
  *(v8 + 241) = *(a4 + 16);

  return MEMORY[0x2822009F8](sub_241343370, 0, 0);
}

uint64_t sub_241343370()
{
  v1 = *(v0 + 241);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_currentRequest;
  *(v0 + 152) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_currentRequest;
  *(v7 + v9) = 0;
  v10 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest;
  *(v0 + 160) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest;
  *(v7 + v10) = 0;
  v11 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_url;
  *(v0 + 168) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_url;
  v12 = sub_24135152C();
  *(v0 + 176) = v12;
  v13 = *(v12 - 8);
  *(v0 + 184) = v13;
  (*(v13 + 16))(v7 + v11, v8, v12);
  v14 = v7 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_options;
  *v14 = v4;
  *(v14 + 8) = v2;
  *(v14 + 16) = v1;
  sub_24135163C();
  sub_2413515FC();
  (*(v6 + 8))(v3, v5);
  v15 = sub_2412AE478(10);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_241353CDC();
  v23 = sub_24135434C();
  v24 = __OFADD__(v22, v23);
  result = v22 + v23;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v39 = *(v0 + 240);
    v26 = *(v0 + 104);
    v38 = *(v0 + 96);
    v36 = *(v0 + 88);
    v37 = *(v0 + 72);
    MEMORY[0x245CE2070](result);
    *(v0 + 16) = v15;
    *(v0 + 24) = v17;
    *(v0 + 32) = v19;
    *(v0 + 40) = v21;
    sub_2413460C8();
    sub_241353D0C();
    *(v0 + 48) = 45;
    *(v0 + 56) = 0xE100000000000000;
    sub_241353D0C();

    v27 = sub_24135142C();
    v29 = v28;

    MEMORY[0x245CE20D0](v27, v29);

    v30 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_signpostUUID;
    *(v0 + 192) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_signpostUUID;
    v31 = (v26 + v30);
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    v32 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_variantsService;
    *(v0 + 200) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_variantsService;
    *(v26 + v32) = v37;
    v33 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
    *(v0 + 208) = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
    v34 = v26 + v33;
    *v34 = v36;
    *(v34 + 8) = v38;
    *(v34 + 16) = v39 & 1;
    swift_unknownObjectRetain();
    v35 = swift_task_alloc();
    *(v0 + 216) = v35;
    *v35 = v0;
    v35[1] = sub_2413436A0;

    return sub_241331EA4();
  }

  return result;
}

uint64_t sub_2413436A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_241343A10;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2413437C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2413437C8()
{
  v1 = *(v0 + 104);
  *(v1 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_configurations) = *(v0 + 232);
  return MEMORY[0x2822009F8](sub_2413437F4, v1, 0);
}

uint64_t sub_2413437F4()
{
  v20 = v0;
  if (qword_27E537CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A688);

  v2 = sub_241352FDC();
  v3 = sub_2413540DC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  v6 = v0[23];
  if (v4)
  {
    v18 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;

    v10 = MEMORY[0x245CE21F0](v9, &type metadata for MRQLConfiguration);
    v12 = v11;

    v13 = sub_2412DDC2C(v10, v12, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_241215000, v2, v3, "configurations: '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);

    swift_unknownObjectRelease();
    (*(v6 + 8))(v18, v5);
  }

  else
  {
    v14 = v0[8];
    swift_unknownObjectRelease();

    (*(v6 + 8))(v14, v5);
  }

  v15 = v0[1];
  v16 = v0[13];

  return v15(v16);
}

uint64_t sub_241343A10()
{
  v1 = v0[22];
  v5 = v0[8];
  v2 = *(v0[23] + 8);
  v2(v0[13] + v0[21], v1);

  swift_unknownObjectRelease();

  type metadata accessor for VariantsLoader();
  swift_defaultActor_destroy();
  swift_unknownObjectRelease();
  v2(v5, v1);
  swift_deallocPartialClassInstance();

  v3 = v0[1];

  return v3();
}

uint64_t sub_241343B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[131] = v3;
  v4[130] = a3;
  v4[129] = a2;
  v4[127] = a1;
  return MEMORY[0x2822009F8](sub_241343B9C, v3, 0);
}

uint64_t sub_241343B9C()
{
  v28 = v0;
  if (qword_27E537CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  v0[132] = __swift_project_value_buffer(v1, qword_27E53A688);

  v2 = sub_241352FDC();
  v3 = sub_2413540DC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315138;
    v6 = sub_241353B6C();
    v8 = sub_2412DDC2C(v6, v7, &v27);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_241215000, v2, v3, "requested: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x245CE4870](v5, -1, -1);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  v9 = v0[131];
  v10 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_currentRequest;
  v0[133] = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_currentRequest;
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = v0[130];

    LOBYTE(v12) = sub_241344C9C(v12, v11);

    if (v12)
    {
      *(v0[131] + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest) = 0;

      v13 = sub_241352FDC();
      v14 = sub_2413540DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_241215000, v13, v14, "Same variant is requested", v15, 2u);
        MEMORY[0x245CE4870](v15, -1, -1);
      }

      sub_241345A50();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
LABEL_14:
      v23 = v0[1];

      return v23();
    }

    if (*(v9 + v10))
    {
      v17 = sub_241352FDC();
      v18 = sub_2413540DC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_241215000, v17, v18, "A request is already in progress", v19, 2u);
        MEMORY[0x245CE4870](v19, -1, -1);
      }

      v20 = v0[131];
      v21 = v0[130];

      *(v20 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest) = v21;

      sub_241345A50();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  *(v9 + v10) = v0[130];

  v25 = swift_task_alloc();
  v0[134] = v25;
  *v25 = v0;
  v25[1] = sub_241343FA8;
  v26 = v0[130];

  return sub_2413328E0((v0 + 113), (v0 + 120), v26);
}

uint64_t sub_241343FA8()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  v3 = *(v2 + 1048);
  if (v0)
  {
    v4 = sub_24134453C;
  }

  else
  {
    v4 = sub_2413440C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2413440C0()
{
  v60 = v0;
  *(v0 + 704) = *(v0 + 952);
  v1 = *(v0 + 920);
  *(v0 + 656) = *(v0 + 904);
  *(v0 + 672) = v1;
  *(v0 + 688) = *(v0 + 936);
  v2 = *(v0 + 992);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 1008);
  *(v0 + 1024) = v2;
  v5 = *(v0 + 976);
  *(v0 + 720) = *(v0 + 960);
  *(v0 + 736) = v5;
  *(v0 + 752) = v2;
  *(v0 + 760) = v3;
  *(v0 + 768) = v4;
  sub_24127C094(v0 + 656);
  v6 = *(v0 + 736);
  *(v0 + 80) = *(v0 + 720);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 752);
  *(v0 + 121) = *(v0 + 761);
  v7 = *(v0 + 672);
  *(v0 + 16) = *(v0 + 656);
  *(v0 + 32) = v7;
  v8 = *(v0 + 704);
  *(v0 + 48) = *(v0 + 688);
  *(v0 + 64) = v8;
  v9 = *(v0 + 1048);
  *(v9 + *(v0 + 1064)) = 0;

  v10 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest;
  v11 = *(v9 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest);
  *(v0 + 1088) = v11;
  if (v11)
  {
    *(v9 + v10) = 0;

    v12 = sub_241352FDC();
    v13 = sub_2413540DC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v59[0] = v15;
      *v14 = 136315394;
      v16 = sub_241353B6C();
      v18 = sub_2412DDC2C(v16, v17, v59);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_241353B6C();
      v21 = sub_2412DDC2C(v19, v20, v59);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_241215000, v12, v13, "loading: %s, discarding: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v15, -1, -1);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    v22 = swift_task_alloc();
    *(v0 + 1096) = v22;
    *v22 = v0;
    v22[1] = sub_241344984;
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1016);

    return sub_241343B70(v24, v23, v11);
  }

  else
  {
    v26 = *(v0 + 96);
    *(v0 + 336) = *(v0 + 80);
    *(v0 + 352) = v26;
    *(v0 + 368) = *(v0 + 112);
    *(v0 + 377) = *(v0 + 121);
    v27 = *(v0 + 32);
    *(v0 + 272) = *(v0 + 16);
    *(v0 + 288) = v27;
    v28 = *(v0 + 64);
    *(v0 + 304) = *(v0 + 48);
    *(v0 + 320) = v28;
    if (sub_24124640C(v0 + 272) == 1)
    {
      v29 = *(v0 + 1048);
      v30 = *nullsub_6(v0 + 272);
      v31 = v29 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
      v32 = *(v29 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v0 + 64);
      *(v0 + 432) = *(v0 + 48);
      *(v0 + 448) = v35;
      v36 = *(v0 + 32);
      *(v0 + 400) = *(v0 + 16);
      *(v0 + 416) = v36;
      *(v0 + 505) = *(v0 + 121);
      v37 = *(v0 + 112);
      *(v0 + 480) = *(v0 + 96);
      *(v0 + 496) = v37;
      *(v0 + 464) = *(v0 + 80);
      v38 = *nullsub_6(v0 + 400);
      sub_241258998(v30, v32, v33, v34);
      sub_241345978(v0 + 16);
      swift_willThrow();
    }

    else
    {
      v40 = *(v0 + 1048);
      v41 = *(v0 + 1032);
      v42 = *(v0 + 1016);
      v43 = nullsub_6(v0 + 272);
      v44 = v40 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
      v45 = *(v40 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      v48 = *(v0 + 96);
      *(v0 + 592) = *(v0 + 80);
      *(v0 + 608) = v48;
      *(v0 + 624) = *(v0 + 112);
      *(v0 + 633) = *(v0 + 121);
      v49 = *(v0 + 32);
      *(v0 + 528) = *(v0 + 16);
      *(v0 + 544) = v49;
      v50 = *(v0 + 64);
      *(v0 + 560) = *(v0 + 48);
      *(v0 + 576) = v50;
      v51 = nullsub_6(v0 + 528);
      sub_2413459E0(v51, v0 + 784);
      sub_241258998(0, v45, v46, v47);
      sub_241345978(v0 + 16);
      v52 = *(v43 + 96);
      v54 = *(v43 + 64);
      v53 = *(v43 + 80);
      v55 = *(v43 + 104);
      v56 = *v43;
      v57 = *(v43 + 16);
      v58 = *(v43 + 32);
      *(v42 + 48) = *(v43 + 48);
      *(v42 + 16) = v57;
      *(v42 + 32) = v58;
      *v42 = v56;
      *v41 = v54;
      *(v41 + 16) = v53;
      *(v41 + 32) = v52;
      *(v41 + 40) = v55;
    }

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_24134453C()
{
  v56 = v0;
  *(v0 + 144) = *(v0 + 1080);
  sub_24127BE04(v0 + 144);
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 121) = *(v0 + 249);
  v2 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v2;
  v3 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v3;
  v4 = *(v0 + 1048);
  *(v4 + *(v0 + 1064)) = 0;

  v5 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest;
  v6 = *(v4 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_newRequest);
  *(v0 + 1088) = v6;
  if (v6)
  {
    *(v4 + v5) = 0;

    v7 = sub_241352FDC();
    v8 = sub_2413540DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v55[0] = v10;
      *v9 = 136315394;
      v11 = sub_241353B6C();
      v13 = sub_2412DDC2C(v11, v12, v55);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_241353B6C();
      v16 = sub_2412DDC2C(v14, v15, v55);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_241215000, v7, v8, "loading: %s, discarding: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v10, -1, -1);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v0 + 1096) = v17;
    *v17 = v0;
    v17[1] = sub_241344984;
    v18 = *(v0 + 1032);
    v19 = *(v0 + 1016);

    return sub_241343B70(v19, v18, v6);
  }

  else
  {
    v21 = (v0 + 16);
    v22 = *(v0 + 96);
    *(v0 + 336) = *(v0 + 80);
    *(v0 + 352) = v22;
    *(v0 + 368) = *(v0 + 112);
    *(v0 + 377) = *(v0 + 121);
    v23 = *(v0 + 32);
    *(v0 + 272) = *(v0 + 16);
    *(v0 + 288) = v23;
    v24 = *(v0 + 64);
    *(v0 + 304) = *(v0 + 48);
    *(v0 + 320) = v24;
    if (sub_24124640C(v0 + 272) == 1)
    {
      v25 = *(v0 + 1048);
      v26 = *nullsub_6(v0 + 272);
      v27 = v25 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
      v28 = *(v25 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
      v29 = *(v25 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics + 8);
      v30 = *(v27 + 16);
      v31 = *(v0 + 64);
      *(v0 + 432) = *(v0 + 48);
      *(v0 + 448) = v31;
      v32 = *(v0 + 32);
      *(v0 + 400) = *v21;
      *(v0 + 416) = v32;
      *(v0 + 505) = *(v0 + 121);
      v33 = *(v0 + 112);
      *(v0 + 480) = *(v0 + 96);
      *(v0 + 496) = v33;
      *(v0 + 464) = *(v0 + 80);
      v34 = *nullsub_6(v0 + 400);
      sub_241258998(v26, v28, v29, v30);
      sub_241345978(v21);
      swift_willThrow();
    }

    else
    {
      v36 = *(v0 + 1048);
      v37 = *(v0 + 1032);
      v38 = *(v0 + 1016);
      v39 = nullsub_6(v0 + 272);
      v40 = v36 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics;
      v41 = *(v36 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = *(v0 + 96);
      *(v0 + 592) = *(v0 + 80);
      *(v0 + 608) = v44;
      *(v0 + 624) = *(v0 + 112);
      *(v0 + 633) = *(v0 + 121);
      v45 = *(v0 + 32);
      *(v0 + 528) = *v21;
      *(v0 + 544) = v45;
      v46 = *(v0 + 64);
      *(v0 + 560) = *(v0 + 48);
      *(v0 + 576) = v46;
      v47 = nullsub_6(v0 + 528);
      sub_2413459E0(v47, v0 + 784);
      sub_241258998(0, v41, v42, v43);
      sub_241345978(v21);
      v48 = *(v39 + 96);
      v50 = *(v39 + 64);
      v49 = *(v39 + 80);
      v51 = *(v39 + 104);
      v52 = *v39;
      v53 = *(v39 + 16);
      v54 = *(v39 + 32);
      *(v38 + 48) = *(v39 + 48);
      *(v38 + 16) = v53;
      *(v38 + 32) = v54;
      *v38 = v52;
      *v37 = v50;
      *(v37 + 16) = v49;
      *(v37 + 32) = v48;
      *(v37 + 40) = v51;
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_241344984()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 1048);

  if (v0)
  {
    v4 = sub_241344B30;
  }

  else
  {
    v4 = sub_241344ACC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_241344ACC()
{
  sub_241345978(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241344B30()
{
  sub_241345978(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t VariantsLoader.deinit()
{
  v1 = OBJC_IVAR____TtC11AssetViewer14VariantsLoader_url;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VariantsLoader.__deallocating_deinit()
{
  VariantsLoader.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_241344C9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2412FDA14(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24135497C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241344E40(uint64_t a1, uint64_t *a2)
{
  *(v2 + 64) = a1;
  v4 = sub_24135152C();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_24135164C();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;
  *(v2 + 136) = a2[1];
  *(v2 + 33) = *(a2 + 16);
  sub_241353ECC();
  *(v2 + 144) = sub_241353EBC();
  v9 = sub_241353E8C();
  *(v2 + 152) = v9;
  *(v2 + 160) = v8;

  return MEMORY[0x2822009F8](sub_241344FB4, v9, v8);
}

uint64_t sub_241344FB4()
{
  sub_2413513FC();
  sub_241353C8C();

  v1 = sub_24135486C();

  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 1;
LABEL_5:
    *(v0 + 34) = v2;
    v3 = *(v0 + 33);
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    sub_24135163C();
    *(v0 + 168) = sub_2413515FC();
    *(v0 + 176) = v13;
    (*(v8 + 8))(v5, v7);
    v14 = *(v11 + 16);
    *(v0 + 184) = v14;
    *(v0 + 192) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v9, v12, v10);
    *(v0 + 16) = v6;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    type metadata accessor for VariantsServiceImpl();
    swift_allocObject();
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_241345230;
    v16 = *(v0 + 96);

    return sub_24133116C(v16, (v0 + 16));
  }

  sub_241255C30();
  swift_allocError();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *v18 = 1;
  *(v18 + 24) = 2;
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  swift_willThrow();
  (*(v20 + 8))(v21, v19);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_241345230(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  v4 = v3[19];
  v5 = v3[20];
  if (v1)
  {
    v6 = sub_241345594;
  }

  else
  {
    v6 = sub_241345344;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_241345344()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  (*(v0 + 184))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  type metadata accessor for VariantsLoader();
  swift_allocObject();

  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_24134546C;
  v5 = *(v0 + 208);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 88);

  return sub_24134328C(v8, v5, &off_285304538, (v0 + 40), v6, v7, v1);
}

uint64_t sub_24134546C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_2413457BC;
  }

  else
  {
    v4[30] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_241345684;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_241345594()
{
  v10 = v0;

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 33);
  v9[0] = *(v0 + 34);
  sub_241258D0C(v9, v1, v2, v3);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  swift_willThrow();
  (*(v5 + 8))(v6, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_241345684()
{
  v13 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 34);
  v4 = *(v0 + 33);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);

  v12 = v3;

  sub_2412584D4(v8, &v12, v2, v1, v4);

  (*(v5 + 8))(v7, v6);

  v9 = *(v0 + 8);
  v10 = *(v0 + 240);

  return v9(v10);
}

uint64_t sub_2413457BC()
{
  v10 = v0;

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 33);
  v9[0] = *(v0 + 34);
  sub_241258D0C(v9, v1, v2, v3);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  swift_willThrow();
  (*(v5 + 8))(v6, v4);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_2413458B8()
{
  result = qword_27E53A6A8;
  if (!qword_27E53A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A6A8);
  }

  return result;
}

uint64_t sub_24134590C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E538B08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241345978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2413459E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_241345A50()
{
  result = qword_27E53A6D0;
  if (!qword_27E53A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A6D0);
  }

  return result;
}

uint64_t type metadata accessor for VariantsLoader()
{
  result = qword_27E53A6E0;
  if (!qword_27E53A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241345B08()
{
  result = sub_24135152C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of VariantsLoader.loadEntity(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2412450EC;

  return v10(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for VariantsLoader.Options(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VariantsLoader.Options(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_241345DFC()
{
  result = qword_27E53A6F0;
  if (!qword_27E53A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A6F0);
  }

  return result;
}

unint64_t sub_241345E54()
{
  result = qword_27E53A6F8;
  if (!qword_27E53A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A6F8);
  }

  return result;
}

unint64_t sub_241345EAC()
{
  result = qword_27E53A700;
  if (!qword_27E53A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A700);
  }

  return result;
}

unint64_t sub_241345F04()
{
  result = qword_27E53A708;
  if (!qword_27E53A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A708);
  }

  return result;
}

unint64_t sub_241345F5C()
{
  result = qword_27E53A710;
  if (!qword_27E53A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A710);
  }

  return result;
}

uint64_t sub_241345FB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24135497C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_24135497C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24135497C();

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

unint64_t sub_2413460C8()
{
  result = qword_27E53A718;
  if (!qword_27E53A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A718);
  }

  return result;
}

uint64_t sub_24134612C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A568);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PhysicsState();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2413480FC(a1);
    sub_2412A2C20(a2, v7);

    return sub_2413480FC(v7);
  }

  else
  {
    sub_24133E154(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2412A7270(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  return result;
}

uint64_t sub_2413462B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2412A73CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2412FDA14(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2412A934C();
        v14 = v16;
      }

      result = sub_24133A254(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2413463B0()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A720);
  __swift_project_value_buffer(v0, qword_27E53A720);
  return sub_241352FEC();
}

uint64_t sub_24134642C()
{
  result = sub_241353BDC();
  qword_27E541A18 = result;
  return result;
}

const char *sub_241346464(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = "3D_AssetLoaded";
    v7 = "3D_VariantLoading";
    if (a1 != 10)
    {
      v7 = "Previews_Changed";
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = "3D_AddShadows";
    v9 = "3D_AddIBL";
    if (a1 != 7)
    {
      v9 = "3D_LoadMRQLMaterial";
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = "ContentLoading";
    v2 = "3D_AssetLoadRequest";
    v3 = "3D_ProcessLoadedEntities";
    if (a1 != 4)
    {
      v3 = "3D_CreateCollisionShapes";
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = "CreateVolumetricExtensionXPC";
    if (a1 != 1)
    {
      v4 = "3D_GetMeshEstimate";
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_241346588()
{
  type metadata accessor for Signposter.SignposterActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27E53A738 = v0;
  return result;
}

uint64_t sub_2413465C8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2413465F8()
{
  if (qword_27E537D00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_241346654(const char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v21 = a1;
  v6 = sub_241352F4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  v13 = *(v7 + 16);
  v13(&v19[-v11], v3 + OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_id, v6);
  v14 = sub_241352F5C();
  v20 = sub_2413541BC();
  result = sub_2413542EC();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (v21)
    {
LABEL_9:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_241352F3C();
      _os_signpost_emit_with_name_impl(&dword_241215000, v14, v20, v17, v21, "", v16, 2u);
      MEMORY[0x245CE4870](v16, -1, -1);
LABEL_10:

      v13(v10, v12, v6);
      sub_241352FBC();
      swift_allocObject();
      v18 = sub_241352FAC();
      (*(v7 + 8))(v12, v6);
      *(v4 + OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_intervalState) = v18;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v21 = &v22;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2413468A4(const char *a1, uint64_t a2, char a3)
{
  v6 = sub_241352F8C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_241352F4C();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v3 + OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_intervalState))
  {

    v14 = sub_241352F5C();
    sub_241352F9C();
    v20 = sub_2413541AC();
    result = sub_2413542EC();
    if ((result & 1) == 0)
    {
LABEL_14:

      return (*(v10 + 8))(v13, v9);
    }

    if (a3)
    {
      if (!(a1 >> 32))
      {
        v15 = v21;
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_19:
          __break(1u);
          return result;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = &v22;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (a1)
      {
        v15 = v21;
LABEL_10:

        sub_241352FCC();

        if ((*(v15 + 88))(v8, v6) == *MEMORY[0x277D85B00])
        {
          v16 = "[Error] Interval already ended";
        }

        else
        {
          (*(v15 + 8))(v8, v6);
          v16 = "";
        }

        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = sub_241352F3C();
        _os_signpost_emit_with_name_impl(&dword_241215000, v14, v20, v18, a1, v16, v17, 2u);
        MEMORY[0x245CE4870](v17, -1, -1);
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_241346B68()
{
  v1 = OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_id;
  v2 = sub_241352F4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_signposter;
  v4 = sub_241352F7C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_241346C54()
{
  type metadata accessor for Signposter(0);
  v0 = swift_allocObject();
  sub_241352F6C();
  v1 = OBJC_IVAR____TtC11AssetViewer10Signposter_intervals;
  result = sub_2412451E0(MEMORY[0x277D84F90]);
  *(v0 + v1) = result;
  qword_27E53A740 = v0;
  return result;
}

uint64_t static Signposter.shared.getter()
{
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_241346D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 88) = a5;
  *(v7 + 40) = a4;
  v8 = sub_241352F7C();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  if (qword_27E537D00 != -1)
  {
    swift_once();
  }

  v9 = qword_27E53A738;

  return MEMORY[0x2822009F8](sub_241346E3C, v9, 0);
}

uint64_t sub_241346E3C()
{
  v25 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v23 = sub_241346464(*(v0 + 88));
  v24[0] = v5;
  v8 = v7;
  v24[1] = v3;

  MEMORY[0x245CE20D0](46, 0xE100000000000000);
  v9 = sub_2413545FC();
  MEMORY[0x245CE20D0](v9);

  v11 = v5;
  v10 = v3;
  (*(v1 + 16))(v2, v6 + OBJC_IVAR____TtC11AssetViewer10Signposter_signposter, v4);
  type metadata accessor for Signposter.Interval(0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_intervalState) = 0;
  sub_241352F5C();
  sub_241352F2C();
  (*(v1 + 32))(v12 + OBJC_IVAR____TtCC11AssetViewer10SignposterP33_1E27ECFC8E9DCA67A50096841A24AD128Interval_signposter, v2, v4);
  v13 = OBJC_IVAR____TtC11AssetViewer10Signposter_intervals;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *(v6 + v13);
  *(v6 + v13) = 0x8000000000000000;
  sub_2412A73CC(v12, v11, v3, isUniquelyReferenced_nonNull_native);

  *(v6 + v13) = v24[0];
  swift_endAccess();
  sub_241346654(v23, v8, 2);
  if (qword_27E537CF0 != -1)
  {
    swift_once();
  }

  v15 = sub_241352FFC();
  __swift_project_value_buffer(v15, qword_27E53A720);

  v16 = sub_241352FDC();
  v17 = sub_2413540DC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v20 = sub_2412DDC2C(v11, v10, v24);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_241215000, v16, v17, "beginInterval for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CE4870](v19, -1, -1);
    MEMORY[0x245CE4870](v18, -1, -1);
  }

  else
  {
  }

  sub_241347E78(*(v0 + 88), *(v0 + 48), *(v0 + 56), 0);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_241347174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 128) = a5;
  *(v7 + 88) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  *(v7 + 112) = swift_task_alloc();
  if (qword_27E537D00 != -1)
  {
    swift_once();
  }

  v8 = qword_27E53A738;
  *(v7 + 120) = qword_27E53A738;

  return MEMORY[0x2822009F8](sub_241347250, v8, 0);
}

uint64_t sub_241347250()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_241346464(*(v0 + 128));
  v6 = v5;
  v40[0] = v1;
  v40[1] = v2;

  MEMORY[0x245CE20D0](46, 0xE100000000000000);
  v35 = v6;
  v36 = v4;
  v7 = sub_2413545FC();
  MEMORY[0x245CE20D0](v7);

  v9 = v1;
  v8 = v2;
  v10 = OBJC_IVAR____TtC11AssetViewer10Signposter_intervals;
  swift_beginAccess();
  if (*(*(v3 + v10) + 16) && (sub_2412FDA14(v9, v2), (v11 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_27E537CF0 != -1)
    {
      swift_once();
    }

    v12 = sub_241352FFC();
    __swift_project_value_buffer(v12, qword_27E53A720);

    v13 = sub_241352FDC();
    v14 = sub_2413540BC();

    v38 = v3;
    v39 = v9;
    v37 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2412DDC2C(v9, v8, v40);
      _os_log_impl(&dword_241215000, v13, v14, "Didn't create begin interval for signpost %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x245CE4870](v16, -1, -1);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v21 = *(v0 + 128);
    v22 = *(v0 + 88);
    v23 = sub_241353EEC();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    v24 = sub_241347E20();
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    *(v25 + 48) = v19;
    *(v25 + 56) = v20;

    sub_241327238(0, 0, v17, &unk_24136ADF0, v25);

    v3 = v38;
    v9 = v39;
    v10 = v37;
  }

  swift_beginAccess();
  if (*(*(v3 + v10) + 16) && (sub_2412FDA14(v9, v8), (v26 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
    sub_2413468A4(v36, v35, 2);
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  sub_2413462B8(0, v9, v8);
  swift_endAccess();
  if (qword_27E537CF0 != -1)
  {
    swift_once();
  }

  v27 = sub_241352FFC();
  __swift_project_value_buffer(v27, qword_27E53A720);

  v28 = sub_241352FDC();
  v29 = sub_2413540DC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v30 = 136315138;
    v32 = sub_2412DDC2C(v9, v8, v40);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_241215000, v28, v29, "  endInterval for %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245CE4870](v31, -1, -1);
    MEMORY[0x245CE4870](v30, -1, -1);
  }

  else
  {
  }

  sub_241347E78(*(v0 + 128), *(v0 + 96), *(v0 + 104), 1);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24134774C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4B4449656E656373;
  v4 = 0xEA00000000007965;
  if (v2 != 1)
  {
    v3 = 0x79654B65707974;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74736F706E676973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF79654B656D614ELL;
  }

  v7 = 0x4B4449656E656373;
  v8 = 0xEA00000000007965;
  if (*a2 != 1)
  {
    v7 = 0x79654B65707974;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74736F706E676973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF79654B656D614ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24135497C();
  }

  return v11 & 1;
}

uint64_t sub_241347860()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_241347914()
{
  sub_241353CCC();
}

uint64_t sub_2413479B4()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_241347A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_241348234();
  *a1 = result;
  return result;
}

void sub_241347A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF79654B656D614ELL;
  v4 = 0xEA00000000007965;
  v5 = 0x4B4449656E656373;
  if (v2 != 1)
  {
    v5 = 0x79654B65707974;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74736F706E676973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Signposter.deinit()
{
  v1 = OBJC_IVAR____TtC11AssetViewer10Signposter_signposter;
  v2 = sub_241352F7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Signposter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AssetViewer10Signposter_signposter;
  v2 = sub_241352F7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_241347C48()
{
  result = sub_241352F7C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_241347D48()
{
  result = sub_241352F4C();
  if (v1 <= 0x3F)
  {
    result = sub_241352F7C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_241347E20()
{
  result = qword_27E538508;
  if (!qword_27E538508)
  {
    type metadata accessor for Signposter.SignposterActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538508);
  }

  return result;
}

void sub_241347E78(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_27E537CF0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A720);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_241215000, v9, v10, "send post notification", v11, 2u);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_27E537CF8 != -1)
  {
    swift_once();
  }

  v13 = qword_27E541A18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365E60;
  *(inited + 32) = 0;
  sub_241346464(a1);
  v15 = sub_2413545FC();
  v16 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  *(inited + 72) = 1;
  *(inited + 104) = v16;
  *(inited + 80) = a2;
  *(inited + 88) = a3;
  *(inited + 112) = 2;
  *(inited + 144) = &type metadata for Signposter.SignpostType;
  *(inited + 120) = a4 & 1;

  v18 = sub_241245F98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380D0);
  swift_arrayDestroy();
  sub_2412EE690(v18);

  v19 = sub_241353B4C();

  [v12 postNotificationName:v13 object:0 userInfo:v19];
}

uint64_t sub_2413480FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241348188()
{
  result = qword_27E53A790;
  if (!qword_27E53A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A790);
  }

  return result;
}

unint64_t sub_2413481E0()
{
  result = qword_27E53A798;
  if (!qword_27E53A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A798);
  }

  return result;
}

uint64_t sub_241348234()
{
  v0 = sub_24135486C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2413482C0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x245CE29C0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2413544EC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2413483FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241348554()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A7A0);
  __swift_project_value_buffer(v0, qword_27E53A7A0);
  return sub_241352FEC();
}

double sub_2413485D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

uint64_t sub_241348648()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

uint64_t sub_2413486BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  if (v1 >> 62)
  {
LABEL_15:
    v2 = sub_2413544EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v5 = sub_24135233C();

    v3 = v4 + 1;
  }

  while ((v5 & 1) == 0);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

double sub_241348808()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_2413544EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = 0.0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      sub_24135230C();
      v7 = v6;

      if (v4 <= v7)
      {
        v4 = v7;
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0.0;
LABEL_16:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return fmod(v4, __y);
}

void sub_241348978()
{
  v1 = sub_2413517DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40) && (, sub_24135296C(), sub_2413516FC(), , (*(v2 + 8))(v4, v1), REListenerComponentGetComponentType(), REEntityGetComponentByClass()))
  {
    if (*(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isMuted) == 1)
    {
      REListenerComponentGetLinearGain();
      *(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_unmutedAudioListenerGain) = v5;
    }

    REListenerComponentSetLinearGain();
    REListenerComponentGetLinearGain();
    v7 = v6;
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v8 = sub_241352FFC();
    __swift_project_value_buffer(v8, qword_27E53A7A0);
    v9 = sub_241352FDC();
    v10 = sub_2413540DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      v12 = "Set new gain: %f";
      v13 = v10;
      v14 = v9;
      v15 = v11;
      v16 = 12;
LABEL_13:
      _os_log_impl(&dword_241215000, v14, v13, v12, v15, v16);
      MEMORY[0x245CE4870](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E53A7A0);
    v9 = sub_241352FDC();
    v18 = sub_2413540BC();
    if (os_log_type_enabled(v9, v18))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "No audioComponent found so cannot toggle isMuted";
      v13 = v18;
      v14 = v9;
      v15 = v11;
      v16 = 2;
      goto LABEL_13;
    }
  }
}

BOOL sub_241348C54()
{
  v1 = v0;
  if (qword_27E537D10 != -1)
  {
LABEL_29:
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A7A0);
  v3 = sub_241352FDC();
  v4 = sub_2413540AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "areAnimationsValid called", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  v22 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers;
  if (v6 >> 62)
  {
    v7 = sub_2413544EC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v8, v6);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_16;
        }
      }

      if ((sub_24135232C() & 1) == 0)
      {
        break;
      }

      ++v8;
      if (v9 == v7)
      {
        goto LABEL_17;
      }
    }

    v19 = sub_241352FDC();
    v20 = sub_2413540AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_241215000, v19, v20, "controller invalid, returning false", v21, 2u);
      MEMORY[0x245CE4870](v21, -1, -1);
    }

    return 0;
  }

  else
  {
LABEL_17:

    v10 = sub_241352FDC();
    v11 = sub_2413540AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = v22;
      v14 = *(v1 + v22);
      if (v14 >> 62)
      {
        v15 = sub_2413544EC();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v15;

      _os_log_impl(&dword_241215000, v10, v11, "all %ld are valid, returning true", v12, 0xCu);
      MEMORY[0x245CE4870](v12, -1, -1);
    }

    else
    {

      v13 = v22;
    }

    v16 = *(v1 + v13);
    if (v16 >> 62)
    {
      v17 = sub_2413544EC();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v17 != 0;
  }
}

void sub_241348FA0(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
LABEL_41:
    if (!sub_2413544EC())
    {
      goto LABEL_42;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v25 = sub_241352FFC();
    __swift_project_value_buffer(v25, qword_27E53A7A0);
    oslog = sub_241352FDC();
    v26 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_241215000, oslog, v26, "Root entities or assetManager not set, this means Entity is not added to the scene yet. We will check to play animations again in onEntityDidAddedToScene", v27, 2u);
      MEMORY[0x245CE4870](v27, -1, -1);
    }

    return;
  }

  v5 = *(v2 + 24);
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = qword_27E537D10;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E53A7A0);
  v8 = sub_241352FDC();
  v9 = sub_2413540DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v3 & 1;
    _os_log_impl(&dword_241215000, v8, v9, "Creating animations, startsPaused: %{BOOL}d", v10, 8u);
    MEMORY[0x245CE4870](v10, -1, -1);
  }

  v29 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers;
  v11 = *(v2 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  if (v11 >> 62)
  {
    if (!sub_2413544EC())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_2413499C4(0xD00000000000001ELL, 0x80000002413640B0);
  }

LABEL_11:
  v12 = *(v2 + 16);
  v32 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    v13 = sub_2413544EC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v2;

  if (v13)
  {
    v3 = 0;
    v2 = MEMORY[0x277D84F90];
    do
    {
      v28 = v2;
      v14 = v3;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v14, v12);
          v3 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v3 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        if (sub_24134B4BC())
        {
          break;
        }

        v15 = sub_241352FDC();
        v16 = sub_2413540DC();
        if (os_log_type_enabled(v15, v16))
        {
          v2 = v5;
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_241215000, v15, v16, "No default animation found", v17, 2u);
          v18 = v17;
          v5 = v2;
          MEMORY[0x245CE4870](v18, -1, -1);
        }

        ++v14;
        if (v3 == v13)
        {
          v2 = v28;
          goto LABEL_32;
        }
      }

      sub_24135298C();

      MEMORY[0x245CE21C0](v19);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
      v2 = v32;
    }

    while (v3 != v13);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

LABEL_32:

  *(v30 + v29) = v2;

  v20 = *(v30 + v29);
  if (v20 >> 62)
  {
    v21 = sub_2413544EC();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = sub_241352FDC();
  v23 = sub_2413540DC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_241215000, v22, v23, "Created %ld animation controllers", v24, 0xCu);
    MEMORY[0x245CE4870](v24, -1, -1);
  }
}

uint64_t sub_24134950C(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0 || sub_241348C54())
  {
    v4 = *(v1 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
    if (v4 >> 62)
    {
      v5 = sub_2413544EC();
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
LABEL_15:
        v7 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_audioPlaybackStates;
        swift_beginAccess();
        v8 = *(v2 + v7);
        v9 = *(v8 + 16);
        if (v9)
        {

          v10 = (v8 + 40);
          do
          {
            if (a1)
            {
              REAudioPlayerComponentPlayToken();
            }

            else
            {
              MEMORY[0x245CE3440](*(v10 - 1), *v10);
            }

            v10 += 3;
            --v9;
          }

          while (v9);
        }

        return sub_2413486BC();
      }
    }

    if (v5 >= 1)
    {

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v6, v4);
          if (a1)
          {
            goto LABEL_13;
          }
        }

        else
        {

          if (a1)
          {
LABEL_13:
            sub_24135237C();
            goto LABEL_8;
          }
        }

        sub_24135235C();
LABEL_8:
        ++v6;

        if (v5 == v6)
        {

          goto LABEL_15;
        }
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27E537D10 != -1)
  {
LABEL_32:
    swift_once();
  }

  v12 = sub_241352FFC();
  __swift_project_value_buffer(v12, qword_27E53A7A0);
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_241215000, v13, v14, "Animations are already completed, creating new animations to resume playback", v15, 2u);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  sub_2413499C4(0xD00000000000001DLL, 0x8000000241364090);
  sub_241348FA0(0);

  return sub_2413486BC();
}

uint64_t sub_241349784(double a1)
{
  v2 = v1;
  if (!sub_241348C54())
  {
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v4 = sub_241352FFC();
    __swift_project_value_buffer(v4, qword_27E53A7A0);
    v5 = sub_241352FDC();
    v6 = sub_2413540DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_241215000, v5, v6, "setPlaybackTime: Recreating animations after they were completed.", v7, 2u);
      MEMORY[0x245CE4870](v7, -1, -1);
    }

    sub_2413499C4(0xD000000000000014, 0x8000000241364070);
    sub_241348FA0(1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  if (v8 >> 62)
  {
LABEL_25:
    v9 = sub_2413544EC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v10, v8);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      sub_24135231C();

      ++v10;
    }

    while (v11 != v9);
  }

  v12 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_audioPlaybackStates;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = (v14 + 40);
    do
    {
      MEMORY[0x245CE3490](*(v16 - 1), *v16, a1);
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_2413499C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers;
  v7 = *(v2 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_2413544EC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_27E537D10 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E53A7A0);

  v10 = sub_241352FDC();
  v11 = sub_2413540DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 134218242;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2412DDC2C(a1, a2, &v17);
    _os_log_impl(&dword_241215000, v10, v11, "Stopping %ld animations, caller: %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245CE4870](v13, -1, -1);
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  a2 = *(v3 + v6);
  if (a2 >> 62)
  {
    a1 = sub_2413544EC();
  }

  else
  {
    a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    v14 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v14, a2);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_18;
        }
      }

      sub_24135234C();

      ++v14;
    }

    while (v15 != a1);
  }

  *(v3 + v6) = MEMORY[0x277D84F90];
}

void sub_241349C30(char a1, unsigned __int8 *a2)
{
  v3 = v2;
  v99[1] = *MEMORY[0x277D85DE8];
  v5 = a2[16];
  v6 = a2[17];
  v7 = a2[18];
  if ([objc_opt_self() wantsAnimationDisabled])
  {
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v8 = sub_241352FFC();
    __swift_project_value_buffer(v8, qword_27E53A7A0);
    oslog = sub_241352FDC();
    v9 = sub_2413540DC();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_28;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "setupModelAnimation, but user defaults specify disabling animations";
LABEL_27:
    _os_log_impl(&dword_241215000, oslog, v9, v11, v10, 2u);
    MEMORY[0x245CE4870](v10, -1, -1);
LABEL_28:

    return;
  }

  if (!*(v2 + 32))
  {
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v49 = sub_241352FFC();
    __swift_project_value_buffer(v49, qword_27E53A7A0);
    oslog = sub_241352FDC();
    v9 = sub_2413540DC();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_28;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "interactionService must not be nil to setup animations";
    goto LABEL_27;
  }

  v12 = qword_27E537D10;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_241352FFC();
  __swift_project_value_buffer(v13, qword_27E53A7A0);

  v14 = sub_241352FDC();
  v15 = sub_2413540DC();

  v96 = v6;
  osloga = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v99[0] = v94;
    *v16 = 67109378;
    *(v16 + 4) = a1 & 1;
    *(v16 + 8) = 2080;
    v17 = sub_2413523CC();
    v18 = sub_2413520DC();
    v19 = MEMORY[0x245CE21F0](v17, v18);
    v20 = v5;
    v21 = v7;
    v23 = v22;

    v24 = sub_2412DDC2C(v19, v23, v99);
    v7 = v21;
    v5 = v20;

    *(v16 + 10) = v24;
    _os_log_impl(&dword_241215000, v14, v15, "setupModelAnimation - forceAutoPlayAndLoop? %{BOOL}d. Interactions.rawAll: %s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x245CE4870](v94, -1, -1);
    v25 = v16;
    v6 = v96;
    MEMORY[0x245CE4870](v25, -1, -1);
  }

  v26 = sub_2413523CC();
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      goto LABEL_13;
    }

LABEL_32:
    if (v5 > 1)
    {
    }

    else
    {
      v51 = sub_24135497C();

      if ((v51 & 1) == 0)
      {
        v48 = (v7 == 2) | v7;
        v47 = 0.0;
        goto LABEL_35;
      }
    }

    v67 = sub_241352FDC();
    v68 = sub_2413540DC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = "[Animation] Early return since there are no interactions and this is a Reality File";
LABEL_85:
      _os_log_impl(&dword_241215000, v67, v68, v70, v69, 2u);
      MEMORY[0x245CE4870](v69, -1, -1);
    }

LABEL_86:

    return;
  }

  v50 = sub_2413544EC();

  if (!v50)
  {
    goto LABEL_32;
  }

LABEL_13:
  v28 = sub_2413523CC();
  v29 = sub_2412D4BE0(v28);
  v31 = v30;

  v32 = sub_241352FDC();
  v33 = sub_2413540DC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v99[0] = v35;
    *v34 = 136315394;
    v36 = sub_241352C5C();
    v37 = MEMORY[0x245CE21F0](v29, v36);
    v39 = sub_2412DDC2C(v37, v38, v99);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = sub_2413520AC();
    v41 = MEMORY[0x245CE21F0](v31, v40);
    v43 = sub_2412DDC2C(v41, v42, v99);

    *(v34 + 14) = v43;
    _os_log_impl(&dword_241215000, v32, v33, "Animation scrubber - animation Entities: %s, sound Actions: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v35, -1, -1);
    MEMORY[0x245CE4870](v34, -1, -1);
  }

  if (v29 >> 62)
  {
LABEL_80:
    if (sub_2413544EC())
    {
      goto LABEL_19;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if (v31 >> 62)
  {
    if (!sub_2413544EC())
    {
LABEL_83:

      v67 = sub_241352FDC();
      v68 = sub_2413540DC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "[Animation] Early return, let RealityKit handle interactions";
        goto LABEL_85;
      }

      goto LABEL_86;
    }
  }

  else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_83;
  }

LABEL_19:
  if (a1)
  {
    goto LABEL_83;
  }

  v44 = sub_241352FDC();
  v45 = sub_2413540DC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_241215000, v44, v45, "[Animation] Special case: stop animations from interactions and get sound duration", v46, 2u);
    MEMORY[0x245CE4870](v46, -1, -1);
  }

  v47 = sub_24134B7F0(v29, v31);

  v48 = 0;
  v6 = v96;
LABEL_35:
  v52 = sub_24134B094();
  v53 = sub_241352FDC();
  v54 = sub_2413540DC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134218240;
    *(v55 + 4) = v52;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v47;
    _os_log_impl(&dword_241215000, v53, v54, "[Animation] animationDuration: %f, soundDuration: %f", v55, 0x16u);
    MEMORY[0x245CE4870](v55, -1, -1);
  }

  if (v47 <= v52)
  {
    v47 = v52;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v99[0] = *&v47;

  sub_24135317C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  if (*v99 <= 0.0)
  {
LABEL_52:

    v59 = sub_241352FDC();
    v60 = sub_2413540DC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24135316C();

      *(v61 + 4) = v99[0];
      _os_log_impl(&dword_241215000, v59, v60, "[Animation] No model animations found. Duration: %f", v61, 0xCu);
      MEMORY[0x245CE4870](v61, -1, -1);
    }

    v62 = v3 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState;
    *v62 = 0;
    *(v62 + 2) = 0;
    *(v62 + 8) = 0xBFF0000000000000;
  }

  else
  {
    v95 = v48;
    v31 = *(v3 + 16);
    if (v31 >> 62)
    {
      v29 = sub_2413544EC();
    }

    else
    {
      v29 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = (v6 == 2) | v6;

    v56 = 0;
    do
    {
      v57 = v56;
      if (v29 == v56)
      {
        break;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v56, v31);
        if (__OFADD__(v57, 1))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      else
      {
        if (v56 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        if (__OFADD__(v57, 1))
        {
          goto LABEL_51;
        }
      }

      v58 = sub_24134BCBC();

      v56 = v57 + 1;
    }

    while (!v58);

    v63 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_hasAudio;
    *(v3 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_hasAudio) = v29 != v57;

    v64 = sub_241352FDC();
    v65 = sub_2413540DC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = *(v3 + v63);

      _os_log_impl(&dword_241215000, v64, v65, "hasAudio? %{BOOL}d @@@", v66, 8u);
      MEMORY[0x245CE4870](v66, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24135316C();

    if ((~v99[0] & 0x7FF0000000000000) == 0)
    {
      v71 = sub_241352FDC();
      v72 = sub_2413540DC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_241215000, v71, v72, "[Animation] Infinite animation duration", v73, 2u);
        MEMORY[0x245CE4870](v73, -1, -1);
      }

      v74 = v3 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState;
      *v74 = 256;
      *(v74 + 2) = 1;
    }

    v75 = osloga | a1 & v95;
    v76 = osloga | a1;
    v77 = (v3 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState);
    *v77 = (v75 & 1) == 0;
    v77[1] = v76 & 1;
    v77[2] = (osloga | v95) & 1;

    v78 = sub_241352FDC();
    v79 = sub_2413540DC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v99[0] = v81;
      *v80 = 136315138;
      if (v77[2])
      {
        v82 = 0x10000;
      }

      else
      {
        v82 = 0;
      }

      if (v77[1])
      {
        v83 = 256;
      }

      else
      {
        v83 = 0;
      }

      v84 = sub_24134AAE0(v83 | *v77 | v82);
      v86 = sub_2412DDC2C(v84, v85, v99);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_241215000, v78, v79, "Animation display preference: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x245CE4870](v81, -1, -1);
      MEMORY[0x245CE4870](v80, -1, -1);
    }

    v87 = [objc_opt_self() sharedInstance];
    v88 = MEMORY[0x277CB8030];
    if (!*v77)
    {
      v88 = MEMORY[0x277CB8048];
    }

    v89 = *v88;
    v99[0] = 0;
    v90 = [v87 setCategory:v89 error:v99];

    if (v90)
    {
      v91 = v99[0];
    }

    else
    {
      v92 = v99[0];
      v93 = sub_24135139C();

      swift_willThrow();
    }

    sub_241348FA0(1);

    *(v3 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping) = v77[2];
  }
}

uint64_t sub_24134AAE0(int a1)
{
  sub_2413545EC();
  MEMORY[0x245CE20D0](0x75726353776F6873, 0xEE00203A72656262);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v2, v3);

  MEMORY[0x245CE20D0](0xD000000000000012, 0x8000000241364050);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v4, v5);

  MEMORY[0x245CE20D0](0x646C756F6873202CLL, 0xEE00203A706F6F4CLL);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v6, v7);

  return 0;
}

uint64_t sub_24134AC2C()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24134AAE0(v2 | *v0 | v1);
}

uint64_t sub_24134AC5C(uint64_t a1)
{
  v2 = sub_241351B3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers);

    v25 = sub_241351B2C();
    MEMORY[0x28223BE20](v25);
    v24[-2] = &v25;
    v9 = sub_2413482C0(sub_24134CA98, &v24[-4], v8);

    if ((v9 & 1) == 0)
    {
    }

    if (*(v7 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping) == 1)
    {
      if (qword_27E537D10 != -1)
      {
        swift_once();
      }

      v10 = sub_241352FFC();
      __swift_project_value_buffer(v10, qword_27E53A7A0);
      (*(v3 + 16))(v5, a1, v2);
      v11 = sub_241352FDC();
      v12 = sub_2413540DC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        v25 = v24[0];
        *v13 = 136315138;
        sub_241351B2C();
        v14 = sub_24135236C();

        if (v14)
        {
          v15 = sub_241352C0C();
          v17 = v16;
        }

        else
        {
          v17 = 0xE90000000000003ELL;
          v15 = 0x656D616E206F6E3CLL;
        }

        (*(v3 + 8))(v5, v2);
        v22 = sub_2412DDC2C(v15, v17, &v25);

        *(v13 + 4) = v22;
        _os_log_impl(&dword_241215000, v11, v12, "Manually looping by restarting playback. %s", v13, 0xCu);
        v23 = v24[0];
        __swift_destroy_boxed_opaque_existential_0(v24[0]);
        MEMORY[0x245CE4870](v23, -1, -1);
        MEMORY[0x245CE4870](v13, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      sub_241348FA0(0);
    }

    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v18 = sub_241352FFC();
    __swift_project_value_buffer(v18, qword_27E53A7A0);
    v19 = sub_241352FDC();
    v20 = sub_2413540DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_241215000, v19, v20, "animation finished, and not looping Inline @@@@@@@@@@", v21, 2u);
      MEMORY[0x245CE4870](v21, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v25) = 0;
    return sub_24135317C();
  }

  return result;
}

double sub_24134B094()
{
  v23 = sub_24135170C();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(RootTimeline + 16);
  if (v4 >> 62)
  {
LABEL_33:
    if (!sub_2413544EC())
    {
      goto LABEL_34;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    if (qword_27E537D10 != -1)
    {
      swift_once();
    }

    v18 = sub_241352FFC();
    __swift_project_value_buffer(v18, qword_27E53A7A0);
    v19 = sub_241352FDC();
    v20 = sub_2413540BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_241215000, v19, v20, "determineAnimationDuration: Root entities or assetManager was not set", v21, 2u);
      MEMORY[0x245CE4870](v21, -1, -1);
    }

    return 0.0;
  }

  if (!*(RootTimeline + 24))
  {
    goto LABEL_34;
  }

  v5 = *(RootTimeline + 16);
  if (v5 >> 62)
  {
    v6 = sub_2413544EC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    v24 = v5 & 0xC000000000000001;
    v8 = (v1 + 8);
    v9 = 0.0;
    while (1)
    {
      if (v24)
      {
        v1 = MEMORY[0x245CE29C0](v7, v5);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v1 = *(v5 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }
      }

      RootTimeline = v1;
      if (sub_24134B4BC())
      {
        sub_241351CFC();
        sub_2413516FC();
        (*v8)(v3, v23);
        RootTimeline = v26;
        v11 = REAssetHandleAssetType();
        if (v11 == 5 || v11 == 11 && (RootTimeline = REAnimationSceneAssetGetRootTimeline()) != 0)
        {
          RootTimeline = RETimelineDefinitionCreateFromTimeline();
          RETimelineDefinitionGetDuration();
          v13 = v12;
          sub_2413517EC();

          if (v9 <= v13)
          {
            v9 = v13;
          }
        }

        else
        {

          if (v9 <= 0.0)
          {
            v9 = 0.0;
          }
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_27;
      }
    }
  }

  v9 = 0.0;
LABEL_27:

  if (qword_27E537D10 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E53A7A0);
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v9;
    _os_log_impl(&dword_241215000, v15, v16, "Final maxDuration: %f", v17, 0xCu);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  return v9;
}

uint64_t sub_24134B4BC()
{
  v1 = v0;
  v2 = sub_2413517DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537D10 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  v7 = __swift_project_value_buffer(v6, qword_27E53A7A0);

  v8 = sub_241352FDC();
  v9 = sub_2413540DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v7;
    v11 = v10;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v11 = 136315138;
    v12 = sub_241352C0C();
    v14 = sub_2412DDC2C(v12, v13, &v24);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_241215000, v8, v9, "@@@ getDefaultARQLAnimation: %s", v11, 0xCu);
    v15 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x245CE4870](v15, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  printHierarchy(entity:level:debugString:)(v1, 0, 0, 0xE000000000000000);
  sub_241351BCC();
  sub_24135296C();
  sub_2413516FC();
  (*(v3 + 8))(v5, v2);
  if (REAnimationLibraryComponentCreateDefaultAnimation())
  {
    sub_241351D0C();
    swift_allocObject();
    v16 = sub_241351D1C();
    sub_2413517EC();
  }

  else
  {
    v17 = sub_241352FDC();
    v18 = sub_2413540DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_241215000, v17, v18, "No default animation found", v19, 2u);
      MEMORY[0x245CE4870](v19, -1, -1);
    }

    return 0;
  }

  return v16;
}

double sub_24134B7F0(unint64_t a1, unint64_t a2)
{
  v40 = a2;
  v42 = a1;
  v3 = sub_241352B6C();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v2 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A800);
  sub_24135430C();

  sub_24135240C();

  v43 = v2;
  v6 = *(v2 + 16);
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v7)
  {
    v8 = 0;
    v9 = (v41 + 8);
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v7 = sub_2413544EC();
          goto LABEL_3;
        }

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }
      }

      sub_241352C5C();
      sub_2413518AC();
      sub_2413119A0(1, v5);

      (*v9)(v5, v3);
      ++v8;
    }

    while (v10 != v7);
  }

  v11 = v42;
  if (v42 >> 62)
  {
    v17 = v42;
    v18 = sub_2413544EC();
    v11 = v17;
    v6 = v18;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_15:
      v12 = 0;
      v13 = v11 & 0xC000000000000001;
      v14 = v11 & 0xFFFFFFFFFFFFFF8;
      v15 = (v41 + 8);
      do
      {
        if (v13)
        {
          MEMORY[0x245CE29C0](v12, v11);
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *(v14 + 16))
          {
            goto LABEL_25;
          }

          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        sub_241352C5C();
        sub_2413518AC();
        sub_241311BC8(1, v5);

        (*v15)(v5, v3);
        ++v12;
        v11 = v42;
      }

      while (v16 != v6);
    }
  }

  v19 = v40;
  if (v40 >> 62)
  {
    goto LABEL_45;
  }

  v20 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_30:
    v21 = 0;
    v22 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_audioPlaybackStates;
    v41 = v19 & 0xFFFFFFFFFFFFFF8;
    v42 = v19 & 0xC000000000000001;
    v23 = 0.0;
    v39 = v20;
    while (1)
    {
      if (v42)
      {
        MEMORY[0x245CE29C0](v21, v19);
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v21 >= *(v41 + 16))
        {
          goto LABEL_44;
        }

        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v20 = sub_2413544EC();
          if (!v20)
          {
            return 0.0;
          }

          goto LABEL_30;
        }
      }

      v26 = sub_2412D3DB8();
      if (v26)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        v32 = v43;
        swift_beginAccess();
        v33 = *(v32 + v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + v22) = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_2412A1B5C(0, *(v33 + 2) + 1, 1, v33);
          *(v43 + v22) = v33;
        }

        v36 = *(v33 + 2);
        v35 = *(v33 + 3);
        if (v36 >= v35 >> 1)
        {
          v33 = sub_2412A1B5C((v35 > 1), v36 + 1, 1, v33);
        }

        v23 = v31;
        *(v33 + 2) = v36 + 1;
        v24 = &v33[24 * v36];
        *(v24 + 4) = v29;
        *(v24 + 5) = v30;
        *(v24 + 6) = v31;
        *(v43 + v22) = v33;
        swift_endAccess();
        v20 = v39;
        v19 = v40;
      }

      ++v21;
      if (v25 == v20)
      {
        return v23;
      }
    }
  }

  return 0.0;
}

BOOL sub_24134BCBC()
{
  v1 = sub_241352B6C();
  MEMORY[0x28223BE20](v1 - 8);
  v35[1] = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A808);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A818);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v35 - v11;
  v13 = sub_241352AAC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v35 - v21;
  v40 = v0;
  sub_241352A8C();
  v23 = sub_241352EBC();
  sub_241352ABC();
  v24 = *(v14 + 8);
  v24(v22, v13);
  v25 = 1;
  v26 = (*(*(v23 - 8) + 48))(v12, 1, v23);
  sub_241246278(v12, &qword_27E53A818);
  if (v26 == 1)
  {
    sub_241352A8C();
    v27 = sub_241352E9C();
    sub_241352ABC();
    v24(v20, v13);
    LODWORD(v27) = (*(*(v27 - 8) + 48))(v9, 1, v27);
    sub_241246278(v9, &qword_27E53A810);
    if (v27 == 1)
    {
      sub_241352A8C();
      v28 = sub_241352EAC();
      v29 = v39;
      sub_241352ABC();
      v24(v17, v13);
      LODWORD(v28) = (*(*(v28 - 8) + 48))(v29, 1, v28);
      sub_241246278(v29, &qword_27E53A808);
      if (v28 == 1)
      {
        sub_241352C5C();
        sub_2413518AC();
        v30 = v36;
        sub_241352B2C();
        v31 = v38;
        do
        {
          v32 = sub_241352B3C();
          v25 = v41 != 0;
          if (!v41)
          {
            break;
          }

          v33 = sub_24134BCBC(v32);
        }

        while ((v33 & 1) == 0);
        (*(v37 + 8))(v30, v31);
      }
    }
  }

  return v25;
}

uint64_t ModelAnimationController.deinit()
{

  v1 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__duration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538ED0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v4 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__isPlaying;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A7D0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__playbackTimePublished, v2);
  sub_241246278(v0 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_playbackCompletedCancellable, &qword_27E538318);
  return v0;
}

uint64_t ModelAnimationController.__deallocating_deinit()
{
  ModelAnimationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelAnimationController()
{
  result = qword_27E53A7E8;
  if (!qword_27E53A7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24134C3C4()
{
  sub_2412B7F24(319, &qword_27E538EC0);
  if (v0 <= 0x3F)
  {
    sub_2412B7F24(319, &qword_27E53A7F8);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelAnimationController.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelAnimationController.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

char *sub_24134C5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A7D0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = MEMORY[0x277D84F90];
  *(v0 + 2) = MEMORY[0x277D84F90];
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0;
  v10 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__duration;
  v18 = 0;
  sub_24135312C();
  v11 = *(v6 + 32);
  v11(&v0[v10], v8, v5);
  v12 = &v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState];
  *v12 = 0;
  v12[2] = 0;
  *(v12 + 1) = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_audioPlaybackStates] = v9;
  *&v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationControllers] = v9;
  v13 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__isPlaying;
  LOBYTE(v18) = 0;
  sub_24135312C();
  (*(v2 + 32))(&v0[v13], v4, v1);
  v14 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController__playbackTimePublished;
  v18 = 0;
  sub_24135312C();
  v11(&v0[v14], v8, v5);
  v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isMuted] = 0;
  *&v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_unmutedAudioListenerGain] = 1065353216;
  v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_hasAudio] = 0;
  v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping] = 0;
  v15 = &v0[OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_playbackCompletedCancellable];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  return v0;
}

double sub_24134C848@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24134C8C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

uint64_t sub_24134C944@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  *a1 = v3;
  return result;
}

uint64_t sub_24134C9C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

uint64_t sub_24134CA38()
{
  sub_24135238C();
  sub_24134CAB8();
  return sub_241353BCC() & 1;
}

unint64_t sub_24134CAB8()
{
  result = qword_27E53A820;
  if (!qword_27E53A820)
  {
    sub_24135238C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A820);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelAnimationController.AnimationState.Preference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelAnimationController.AnimationState.Preference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_24134CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_241352DDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() wantsObjectFitToScreen];
  v13 = *(a1 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
  if (v12)
  {
    REComposeMatrix();
    v38 = v15;
    v39 = v14;
    v36 = v17;
    v37 = v16;
    sub_241352C5C();
    sub_2413518CC();

    sub_24134D030(a1, a2, a3, a4);
  }

  else
  {
    sub_241352C5C();
    sub_2413519BC();
    sub_241352E2C();
    type metadata accessor for RESRT(0);
    sub_241352DCC();
    (*(v9 + 8))(v11, v8);
    v38 = v40[1];
    v39 = v40[0];
    v18 = *(a2 + 16);
    v36 = *(a2 + 32);
    v37 = v40[2];
    v35 = v18;
    v19 = swift_allocObject();
    v21 = v37;
    v20 = v38;
    *(v19 + 16) = v37;
    *(v19 + 32) = v20;
    v22 = v35;
    *(v19 + 48) = v36;
    *(v19 + 64) = v22;
    *(v19 + 80) = v13;
    *(v19 + 96) = v39;
    *(v19 + 112) = v20;
    v23 = *a2;
    v24 = *(a2 + 16);
    *(v19 + 128) = v21;
    *(v19 + 144) = v23;
    v25 = *(a2 + 32);
    *(v19 + 160) = v24;
    *(v19 + 176) = v25;
    *(v19 + 192) = 0;
    *(v19 + 200) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = v13;
    v27 = *(a2 + 16);
    *(v26 + 32) = *a2;
    *(v26 + 48) = v27;
    *(v26 + 64) = *(a2 + 32);
    *(v26 + 80) = a3;
    *(v26 + 88) = a4;
    swift_retain_n();
    sub_24124AD38(a3);
    v28 = sub_2412FCD6C(sub_24124AD48, v19, sub_24124AD4C, v26, 0.35);

    v29 = a1 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
    *v29 = v28;
    *(v29 + 8) = 0;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v30 = sub_241352FFC();
    __swift_project_value_buffer(v30, qword_27E53A538);
    v31 = sub_241352FDC();
    v32 = sub_2413540DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v40[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, v40);
      _os_log_impl(&dword_241215000, v31, v32, "%s: Fit-to-screen disabled, skipping step", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245CE4870](v34, -1, -1);
      MEMORY[0x245CE4870](v33, -1, -1);
    }
  }
}

void sub_24134D030(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  sub_241352C5C();
  sub_24135191C();
  v25 = v8;
  sub_24135175C();
  v24 = v9;
  sub_24135175C();
  sub_24134D964(v10);
  v12 = v11;
  v13 = vsubq_f32(v25, v24);
  v14 = vmulq_f32(v13, v13);
  v14.f32[0] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  sub_24134E1DC(*v14.i64, v12, v15);
  if (v16 > 1.0 || v16 < 0.25)
  {
    v19 = v17;
    v20 = v16;
    v21 = 0;
  }

  else
  {
    v20 = v16;
    v19 = v17;
    v21 = v17 >= 0.25 && v17 <= 1.0;
  }

  v23 = sub_24134E314();
  sub_24134D32C(v21, a1, a2, a3, a4, v20, v19, v23);
}

void sub_24134D32C(char a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v18 = sub_241352DDC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v23 = sub_241352FFC();
    __swift_project_value_buffer(v23, qword_27E53A538);
    v24 = sub_241352FDC();
    v25 = sub_2413540DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v72[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, v72);
      _os_log_impl(&dword_241215000, v24, v25, "%s: Object seems to fit screen, skipping scale fitting", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x245CE4870](v27, -1, -1);
      MEMORY[0x245CE4870](v26, -1, -1);
    }

    return;
  }

  v28 = *(v8 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v28)
  {
    __break(1u);
    goto LABEL_18;
  }

  v76 = a4;
  *&v68 = v20;
  v29 = *(v28 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v67 = a5;
  v30 = v29;
  sub_24135292C();
  v31 = sub_2413524BC();

  if (!v31)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_241352C5C();
  sub_24135193C();
  v71 = v32;

  v33 = v71;
  v33.i32[3] = 0;
  v71 = v33;
  v34 = *(a2 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
  sub_24135191C();
  v70 = v35;
  v69 = v36;
  sub_24135175C();
  v38 = vsubq_f32(v69, v37);
  v39 = vmulq_f32(v38, v38);
  v40 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
  sub_24135175C();
  v42 = sub_24134E484(v41, v40, v71);
  if (!v9)
  {
    v43 = v42;
    v44 = sub_24134E524(a6, a7, a8);
    v46 = sub_24134E87C(v44, v45, v43);
    v71.i64[0] = 0;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v47 = sub_241352FFC();
    __swift_project_value_buffer(v47, qword_27E53A538);
    v48 = sub_241352FDC();
    v49 = sub_2413540DC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *&v70 = swift_slowAlloc();
      *&v72[0] = v70;
      *v50 = 136315394;
      *(v50 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, v72);
      *(v50 + 12) = 2048;
      *(v50 + 14) = v46;
      _os_log_impl(&dword_241215000, v48, v49, "%s: Result scaling factor is '%f'", v50, 0x16u);
      v51 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x245CE4870](v51, -1, -1);
      MEMORY[0x245CE4870](v50, -1, -1);
    }

    sub_24134E9E8(a3, &v73, v46);
    sub_2413519BC();
    sub_241352E2C();
    type metadata accessor for RESRT(0);
    sub_241352DCC();
    (*(v19 + 8))(v22, v68);
    v70 = v72[0];
    v69 = v72[1];
    v68 = v72[2];
    v66 = v75;
    v65 = v74;
    v52 = swift_allocObject();
    v53 = v68;
    v54 = v69;
    *(v52 + 16) = v68;
    *(v52 + 32) = v54;
    v55 = v65;
    *(v52 + 48) = v66;
    *(v52 + 64) = v55;
    *(v52 + 80) = v34;
    *(v52 + 96) = v70;
    *(v52 + 112) = v54;
    v56 = v73;
    v57 = v74;
    *(v52 + 128) = v53;
    *(v52 + 144) = v56;
    v58 = v75;
    *(v52 + 160) = v57;
    *(v52 + 176) = v58;
    *(v52 + 192) = 0;
    *(v52 + 200) = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v34;
    v60 = v74;
    *(v59 + 32) = v73;
    *(v59 + 48) = v60;
    *(v59 + 64) = v75;
    v61 = v76;
    v62 = v67;
    *(v59 + 80) = v76;
    *(v59 + 88) = v62;
    swift_retain_n();
    sub_24124AD38(v61);
    v63 = sub_2412FCD6C(sub_24124B1EC, v52, sub_24124B1F8, v59, 0.35);

    v64 = a2 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
    *v64 = v63;
    *(v64 + 8) = 0;
  }
}

void sub_24134D964(float32x4_t a1)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v1;
  v6 = v4;
  sub_24135292C();
  v7 = sub_2413524BC();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_241352C5C();
  sub_24135193C();
  v20 = v8;

  v9 = *(v5 + v2);
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  sub_24135292C();
  v12 = sub_2413524BC();

  if (v12)
  {

    sub_24135193C();
    v19 = v13;

    v14 = vmulq_f32(v20, vsubq_f32(a1, v19));
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v15 = vmulq_f32(v20, v20);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    v17 = vmulq_n_f32(v20, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v18 = vmuls_lane_f32(v14.f32[0], v17, 2);
    *v14.f32 = vmul_n_f32(*v17.f32, v14.f32[0]);
    sub_24134DB28(sqrtf((v18 * v18) + vaddv_f32(vmul_f32(*v14.f32, *v14.f32))));
    return;
  }

LABEL_13:
  __break(1u);
}

float sub_24134DB28(float a1)
{
  sub_24134DF7C();
  v4 = tanf(v3 * 0.5);
  if ((~LODWORD(v4) & 0x7F800000) != 0 || (LODWORD(v4) & 0x7FFFFF) == 0)
  {
    v6 = v4;
    sub_24134DD38();
    if (!v1)
    {
      a1 = (v6 * a1) + (v6 * a1);
      if (qword_27E537CD0 != -1)
      {
        v16 = v7;
        swift_once();
        v7 = v16;
      }

      v8 = a1 * v7;
      v9 = sub_241352FFC();
      __swift_project_value_buffer(v9, qword_27E53A538);
      v10 = sub_241352FDC();
      v11 = sub_2413540DC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v17);
        *(v12 + 12) = 2048;
        *(v12 + 14) = a1;
        *(v12 + 22) = 2048;
        *(v12 + 24) = v8;
        _os_log_impl(&dword_241215000, v10, v11, "%s: Got camera bounds '%f x %f'", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x245CE4870](v13, -1, -1);
        MEMORY[0x245CE4870](v12, -1, -1);
      }
    }
  }

  else
  {
    sub_24134EF1C();
    swift_allocError();
    *v14 = 0xD000000000000047;
    v14[1] = 0x8000000241364250;
    swift_willThrow();
  }

  return a1;
}

void sub_24134DD38()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    Height = CGRectGetHeight(v22);
    if (Height == 0.0)
    {
      sub_24134EF1C();
      swift_allocError();
      *v12 = 0xD000000000000053;
      v12[1] = 0x80000002413642A0;
      swift_willThrow();
    }

    else
    {
      v13 = Height;
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      v14 = CGRectGetWidth(v23) / v13;
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v15 = v14;
      v16 = sub_241352FFC();
      __swift_project_value_buffer(v16, qword_27E53A538);
      v17 = sub_241352FDC();
      v18 = sub_2413540DC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v21);
        *(v19 + 12) = 2048;
        *(v19 + 14) = v15;
        _os_log_impl(&dword_241215000, v17, v18, "%s: Screen aspect ratio reported as '%f'", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x245CE4870](v20, -1, -1);
        MEMORY[0x245CE4870](v19, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24134DF7C()
{
  v1 = sub_2413517DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  sub_24135292C();
  v8 = sub_2413524BC();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_24135296C();
  sub_2413516FC();

  (*(v2 + 8))(v4, v1);
  RECustomMatrixCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECustomMatrixCameraComponentGetProjectionMatrix();
    atanf(1.0 / v9);
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v10 = sub_241352FFC();
    __swift_project_value_buffer(v10, qword_27E53A538);
    v11 = sub_241352FDC();
    v12 = sub_2413540BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x3FF0C15240000000;
      _os_log_impl(&dword_241215000, v11, v12, "Camera entity has no CustomMatrixCameraComponent, requests for FOV will default to %f", v13, 0xCu);
      MEMORY[0x245CE4870](v13, -1, -1);
    }
  }
}

void sub_24134E1DC(double a1, float a2, float a3)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    sub_2413545EC();
    MEMORY[0x245CE20D0](0xD00000000000005DLL, 0x80000002413641D0);
    sub_241353FCC();
    MEMORY[0x245CE20D0](0xD000000000000013, 0x8000000241364230);
    sub_241353FCC();
    MEMORY[0x245CE20D0](39, 0xE100000000000000);
    sub_24134EF1C();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    swift_willThrow();
  }
}

float sub_24134E314()
{
  [objc_opt_self() objectFitToScreenPercentage];
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v8);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_241215000, v3, v4, "%s: Desired entity-to-screen ratio default is '%f'", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245CE4870](v6, -1, -1);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  return v1;
}

float sub_24134E484(float32x4_t a1, float a2, float32x4_t a3)
{
  v3 = vsubq_f32(a1, a3);
  v4 = vmulq_f32(v3, v3);
  v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (v5 != 0.0)
  {
    return (a2 / v5) * 0.8;
  }

  sub_24134EF1C();
  swift_allocError();
  *v6 = 0xD00000000000005ALL;
  v6[1] = 0x8000000241364170;
  swift_willThrow();
  return result;
}

float sub_24134E524(float a1, float a2, float a3)
{
  v4 = a1;
  if (a1 == 0.0 || a2 == 0.0)
  {
    sub_2413545EC();
    MEMORY[0x245CE20D0](0xD00000000000005ALL, 0x80000002413640F0);
    sub_241353FCC();
    MEMORY[0x245CE20D0](0xD000000000000012, 0x8000000241364150);
    sub_241353FCC();
    MEMORY[0x245CE20D0](39, 0xE100000000000000);
    sub_24134EF1C();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v6 = sub_241352FFC();
    __swift_project_value_buffer(v6, qword_27E53A538);
    v7 = sub_241352FDC();
    v8 = sub_2413540DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v18);
      *(v9 + 12) = 2048;
      *(v9 + 14) = v4;
      *(v9 + 22) = 2048;
      *(v9 + 24) = a2;
      _os_log_impl(&dword_241215000, v7, v8, "%s: Entity to screen width ratio: '%f', Entity to screen height ratio: '%f'", v9, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x245CE4870](v10, -1, -1);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    v4 = a3 / v4;
    v11 = a3 / a2;
    v12 = sub_241352FDC();
    v13 = sub_2413540DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v18);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v4;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v11;
      _os_log_impl(&dword_241215000, v12, v13, "%s: Width scaling factor: '%f', Height scaling factor: '%f'", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CE4870](v15, -1, -1);
      MEMORY[0x245CE4870](v14, -1, -1);
    }
  }

  return v4;
}

float sub_24134E87C(float a1, float a2, float a3)
{
  if (a1 <= a2)
  {
    a1 = a2;
  }

  if (a1 <= a3)
  {
    v3 = a1;
  }

  else
  {
    v3 = a3;
  }

  if (a1 != v3)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v4 = sub_241352FFC();
    __swift_project_value_buffer(v4, qword_27E53A538);
    v5 = sub_241352FDC();
    v6 = sub_2413540DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v10);
      _os_log_impl(&dword_241215000, v5, v6, "%s: Rescaled entity would clip through the camera near plane, reducing entity scale further. Place entity at a further distance from the camera to prevent this.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x245CE4870](v8, -1, -1);
      MEMORY[0x245CE4870](v7, -1, -1);
    }
  }

  return v3;
}

void sub_24134E9E8(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46.i64[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v46);
    *(v7 + 12) = 2048;
    *(v7 + 14) = a3;
    _os_log_impl(&dword_241215000, v5, v6, "%s: Using scaling factor '%f'", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v47);
    *(v11 + 12) = 2080;
    v46 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    sub_24124A868();
    v13 = sub_2413549BC();
    v15 = sub_2412DDC2C(v13, v14, &v47);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_241215000, v9, v10, "%s: Original object scale: '%s'", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v12, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  v16 = sub_241352FDC();
  v17 = sub_2413540DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2412DDC2C(0xD000000000000012, 0x80000002413640D0, &v47);
    *(v18 + 12) = 2080;
    v20.i64[0] = vmulq_n_f32(*a1, a3).u64[0];
    v20.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a3, *a1, 2));
    v46 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    sub_24124A868();
    v21 = sub_2413549BC();
    v23 = sub_2412DDC2C(v21, v22, &v47);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_241215000, v16, v17, "%s: After scaling: '%s'", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v19, -1, -1);
    MEMORY[0x245CE4870](v18, -1, -1);
  }

  if (qword_27E537C30 != -1)
  {
    swift_once();
  }

  if (qword_27E537C38 != -1)
  {
    swift_once();
  }

  REComposeMatrix();
  v36 = v24;
  v38 = v25;
  v40 = v26;
  v44 = v27;
  REComposeMatrix();
  v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v36.f32[0]), v29, *v36.f32, 1), v30, v36, 2), v31, v36, 3);
  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v38.f32[0]), v29, *v38.f32, 1), v30, v38, 2), v31, v38, 3);
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v40.f32[0]), v29, *v40.f32, 1), v30, v40, 2), v31, v40, 3);
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v44.f32[0]), v29, *v44.f32, 1), v30, v44, 2), v31, v44, 3);
  *&v32 = simd_float4x4.scale.getter(v37, v39);
  v41 = v32;
  v48.columns[0] = v37;
  v48.columns[1] = v39;
  v48.columns[2] = v35;
  v48.columns[3] = v45;
  *&v33 = simd_quaternion(v48);
  v34 = v45;
  v34.i32[3] = 0;
  *a2 = v41;
  a2[1] = v33;
  a2[2] = v34;
}

unint64_t sub_24134EF1C()
{
  result = qword_27E53A828;
  if (!qword_27E53A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A828);
  }

  return result;
}

uint64_t sub_24134EF80()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A830);
  __swift_project_value_buffer(v0, qword_27E53A830);
  return sub_241352FEC();
}

id sub_24134F004()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  [v2 setOpaque_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setUserInteractionEnabled_];

  v4 = [v2 scrollView];
  [v4 setScrollEnabled_];

  v5 = [v2 scrollView];
  [v5 setContentInsetAdjustmentBehavior_];

  return v2;
}

char *sub_24134F140(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView;
  *&v4[v10] = sub_24134F004();
  v11 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_highlightedOverlayView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = [objc_opt_self() blackColor];
  v14 = [v13 colorWithAlphaComponent_];

  [v12 setBackgroundColor_];
  [v12 setHidden_];
  *&v4[v11] = v12;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for WebViewButton();
  v15 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView;
  v17 = *&v15[OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView];
  v18 = v15;
  [v18 addSubview_];
  v19 = *&v15[v16];
  UIView.pinToSuperviewEdges()();

  v20 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_highlightedOverlayView;
  [v18 addSubview_];
  v21 = *&v18[v20];
  UIView.pinToSuperviewEdges()();

  return v18;
}

id sub_24134F404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24134F6F4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_webView;
  *(v0 + v2) = sub_24134F004();
  v3 = OBJC_IVAR____TtC11AssetViewer13WebViewButton_highlightedOverlayView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  [v4 setBackgroundColor_];
  [v4 setHidden_];
  *(v0 + v3) = v4;
  sub_2413547DC();
  __break(1u);
}

uint64_t sub_24134F818(uint64_t (*a1)(void), const char *a2, char a3)
{
  v7 = v3;
  if (qword_27E537D18 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A830);
  v9 = sub_241352FDC();
  v10 = a1();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_241215000, v9, v10, a2, v11, 2u);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  v12 = (v7 + OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler);
  v13 = *(v7 + OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler);
  if (v13)
  {

    v13(a3 & 1);
    sub_2412186FC(v13);
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  *v12 = 0;
  v12[1] = 0;

  return sub_2412186FC(v14);
}

uint64_t sub_24134F964(void *a1, const char *a2)
{
  v4 = v2;
  if (qword_27E537D18 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E53A830);
  v7 = a1;
  v8 = sub_241352FDC();
  v9 = sub_2413540BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_241354A3C();
    v14 = sub_2412DDC2C(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_241215000, v8, v9, a2, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CE4870](v11, -1, -1);
    MEMORY[0x245CE4870](v10, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = sub_24135138C();
  [v15 sendAnalyticsWithEvent:20 error:v16];

  v17 = (v4 + OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler);
  v18 = *(v4 + OBJC_IVAR____TtC11AssetViewer13WebViewButton_completionHandler);
  if (v18)
  {

    v18(0);
    sub_2412186FC(v18);
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  *v17 = 0;
  v17[1] = 0;
  return sub_2412186FC(v19);
}

id sub_24134FB68()
{
  v1 = v0;
  v2 = sub_241351DDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  v16 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v16)
  {
    v17 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
    swift_beginAccess();
    sub_241350278(v16 + v17, v15);
    v18 = sub_241351DEC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
LABEL_3:
      v20 = sub_241289004();
      [v20 setGoal_];

LABEL_9:
      sub_2413502E8(v15);
LABEL_10:
      [objc_opt_self() floatForKey_];
      return [v1 performSelector:sel_activateCoachingView withObject:0 afterDelay:v29];
    }

    sub_241350278(v15, v12);
    v21 = (*(v19 + 88))(v12, v18);
    if (v21 == *MEMORY[0x277CDAD68])
    {
      (*(v19 + 96))(v12, v18);
      (*(v3 + 32))(v8, v12, v2);
      sub_241351DCC();
      sub_241350350();
      v22 = sub_241353BCC();
      v23 = *(v3 + 8);
      v23(v6, v2);
      v24 = sub_241289004();
      v25 = v24;
      if (v22)
      {
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      [v24 setGoal_];

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930) + 48);
      v23(v8, v2);
      v28 = sub_241351D9C();
      (*(*(v28 - 8) + 8))(&v12[v27], v28);
      goto LABEL_9;
    }

    if (v21 == *MEMORY[0x277CDAD60] || v21 == *MEMORY[0x277CDAD88])
    {
      (*(v19 + 8))(v12, v18);
    }

    else if (v21 != *MEMORY[0x277CDAD58])
    {
      (*(v19 + 8))(v12, v18);
      goto LABEL_3;
    }

    sub_2413502E8(v15);
    v31 = sub_241289004();
    [v31 setGoal_];

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_24134FFA4()
{
  v0 = sub_241287420();
  v1 = v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    oslog = sub_241352FDC();
    v3 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_241215000, oslog, v3, "Trying to show coaching view but we are not in AR mode", v4, 2u);
      MEMORY[0x245CE4870](v4, -1, -1);
    }
  }

  else
  {
    oslog = sub_241289004();
    [oslog setActive:1 animated:1];
  }
}

Swift::Void __swiftcall PreviewViewController.coachingOverlayViewDidDeactivate(_:)(ARCoachingOverlayView *a1)
{
  v2 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  if (v3)
  {

    v3(v4);
    sub_2412186FC(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  *v2 = 0;
  v2[1] = 0;

  sub_2412186FC(v5);
}

uint64_t sub_241350278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413502E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241350350()
{
  result = qword_27E539FC0;
  if (!qword_27E539FC0)
  {
    sub_241351DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539FC0);
  }

  return result;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E75;
      case 1:
        return 0x7469617274726F70;
      case 2:
        return 0xD000000000000012;
    }
  }

  else
  {
    if (a1 <= 4)
    {
      return 0x70616373646E616CLL;
    }

    if (a1 == 6)
    {
      return 0x6E776F4465636166;
    }

    if (a1 == 5)
    {
      return 0x705565636166;
    }
  }

  result = sub_2413547DC();
  __break(1u);
  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27E541698 == -1)
  {
    if (qword_27E5416A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E5416A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E541690 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E541684 > a3)
      {
        return 1;
      }

      if (dword_27E541684 >= a3)
      {
        return dword_27E541688 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E5416A0;
  if (qword_27E5416A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E5416A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245CE3F60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E541684, &dword_27E541688);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}