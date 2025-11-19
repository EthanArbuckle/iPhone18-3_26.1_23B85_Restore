uint64_t sub_1AC6830AC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1AC6831A8;

  return v10(v6 + 2);
}

uint64_t sub_1AC6831A8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6832A0()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1AC6832C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1AC6833BC;

  return v9(v5 + 16);
}

uint64_t sub_1AC6833BC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6834B4()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_1AC6834D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC6835D0;

  return v7(a1);
}

uint64_t sub_1AC6835D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1AC6836B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
    OUTLINED_FUNCTION_172();
    v2 = sub_1AC7A0978();
    v15 = v2;
    sub_1AC7A08A8();
    while (1)
    {
      if (!sub_1AC7A0918())
      {

        return v2;
      }

      sub_1AC688A98();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1AC61209C();
      }

      v2 = v15;
      v3 = *(v15 + 40);
      result = sub_1AC7A0748();
      v5 = -1 << *(v15 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_601();
LABEL_15:
      OUTLINED_FUNCTION_599(v8);
      *(v12 + 8 * v13) = v14;
      ++*(v15 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      if (*(v15 + 56 + 8 * v7) != -1)
      {
        OUTLINED_FUNCTION_600();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1AC683844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
    OUTLINED_FUNCTION_172();
    v2 = sub_1AC7A0978();
    v24 = v2;
    sub_1AC7A08A8();
    while (1)
    {
      if (!sub_1AC7A0918())
      {

        return v2;
      }

      type metadata accessor for SpeechRecognizerWorker();
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_1AC612548(v10 + 1, v3, v4, v5, v6, v7, v8, v9, v22);
      }

      v2 = v24;
      v11 = *(v24 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40]();
      result = sub_1AC7A0EC8();
      v13 = -1 << *(v24 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v24 + 56 + 8 * (v14 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_601();
LABEL_15:
      OUTLINED_FUNCTION_599(v16);
      *(v20 + 8 * v21) = v23;
      ++*(v24 + 16);
    }

    v17 = 0;
    v18 = (63 - v13) >> 6;
    while (++v15 != v18 || (v17 & 1) == 0)
    {
      v19 = v15 == v18;
      if (v15 == v18)
      {
        v15 = 0;
      }

      v17 |= v19;
      if (*(v24 + 56 + 8 * v15) != -1)
      {
        OUTLINED_FUNCTION_600();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void (*sub_1AC6839F4(uint64_t a1, uint64_t a2))(uint64_t)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1AC683A74(a1, a2, sub_1AC683E24);
}

void (*sub_1AC683A74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t)))(uint64_t)
{
  OUTLINED_FUNCTION_78_0();
  v13[6] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v6 = *(v5 + 32);
  v13[3] = v13;
  v13[4] = v5;
  v7 = ((1 << v6) + 63) >> 6;
  if (v6 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1AC613DA0(0, v7, &v13[-1] - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    v8 = OUTLINED_FUNCTION_171();
    a3(v8);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_1AC684424(v11, v7);
    OUTLINED_FUNCTION_86();

    OUTLINED_FUNCTION_96_0();
  }

  v9 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_1AC683BF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1AC7A08E8();
      a2 = sub_1AC6836B0(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_1AC688A98();
    v6 = MEMORY[0x1E69E7CD0];
    v14 = MEMORY[0x1E69E7CD0];
    sub_1AC7A08A8();
LABEL_9:
    while (sub_1AC7A0918())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v7 = *(v3 + 40);
        v8 = sub_1AC7A0748();
        v9 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v11 = *(*(v3 + 48) + 8 * v10);
          v12 = sub_1AC7A0758();

          v8 = v10 + 1;
          if (v12)
          {
            if (v6[3] <= v6[2])
            {
              sub_1AC61209C();
            }

            v6 = v14;
            sub_1AC612688(v13, v14);
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    if (v4)
    {
LABEL_7:
      sub_1AC683A74(a1, a2, sub_1AC684134);
      return;
    }

    sub_1AC75228C();
  }
}

void sub_1AC683E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v27 = a1;
  v6 = sub_1AC79FB18();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v25 - v12;
  v29 = *(a3 + 16);
  if (!v29)
  {
    v26 = 0;
    goto LABEL_14;
  }

  v26 = 0;
  v13 = 0;
  v33 = *(v11 + 16);
  v34 = v11 + 16;
  v28 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v11 + 72);
  v31 = a4 + 56;
  v32 = v14;
  v15 = (v11 + 8);
  v35 = a4;
  while (2)
  {
    v30 = v13 + 1;
    v33(v36, v28 + v32 * v13, v6);
    v16 = *(a4 + 40);
    sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v17 = sub_1AC79FE48();
    v18 = ~(-1 << *(a4 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v31 + 8 * v20)) == 0)
      {
        (*v15)(v36, v6);
        goto LABEL_10;
      }

      v33(v10, *(v35 + 48) + v19 * v32, v6);
      sub_1AC68A730(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v22 = sub_1AC79FED8();
      v23 = *v15;
      (*v15)(v10, v6);
      v17 = v19 + 1;
    }

    while ((v22 & 1) == 0);
    v23(v36, v6);
    v24 = *(v27 + 8 * v20);
    *(v27 + 8 * v20) = v24 | v21;
    if ((v24 & v21) != 0)
    {
LABEL_10:
      a4 = v35;
      goto LABEL_11;
    }

    a4 = v35;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return;
    }

    ++v26;
LABEL_11:
    v13 = v30;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_14:

  sub_1AC61887C();
}

void sub_1AC684134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    sub_1AC688A98();
    sub_1AC68A730(&qword_1EB56BF00, sub_1AC688A98);
    sub_1AC7A0488();
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v30 = 0;
  v12 = (v6 + 64) >> 6;
  v32 = v5;
  v33 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_1AC7A0918())
      {
        goto LABEL_28;
      }

      sub_1AC688A98();
      swift_dynamicCast();
      v18 = v41;
      v7 = v13;
      v17 = v14;
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v34 = v17;
    v19 = *(a4 + 40);
    v20 = sub_1AC7A0748();
    v21 = ~(-1 << *(a4 + 32));
    do
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = 1 << (v20 & v21);
      if ((v24 & *(a4 + 56 + 8 * v23)) == 0)
      {

        v13 = v7;
        v4 = v33;
        v14 = v34;
        v12 = (v6 + 64) >> 6;
        v5 = v32;
        goto LABEL_9;
      }

      sub_1AC688A98();
      v25 = *(*(a4 + 48) + 8 * v22);
      v26 = sub_1AC7A0758();

      v20 = v22 + 1;
    }

    while ((v26 & 1) == 0);

    v27 = *(a1 + 8 * v23);
    *(a1 + 8 * v23) = v27 | v24;
    v13 = v7;
    v4 = v33;
    v8 = v34;
    v14 = v34;
    v28 = (v27 & v24) == 0;
    v12 = (v6 + 64) >> 6;
    v5 = v32;
    if (!v28)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_28:
      sub_1AC5CA508();

      sub_1AC618CB4();
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1AC684424(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_512();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    v6 = OUTLINED_FUNCTION_117();
    v2(v6);
  }
}

uint64_t sub_1AC68448C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1AC613DA0(0, v5, v6);
    v7 = sub_1AC684618(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_1AC68492C(v10, v5, sub_1AC68A714);
    MEMORY[0x1B26EAB10](v10, -1, -1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t sub_1AC684618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = sub_1AC79FB18();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = v27 - v13;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return 0;
  }

  v27[1] = v4;
  v28 = 0;
  v14 = 0;
  v35 = *(v12 + 16);
  v36 = v12 + 16;
  v30 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v12 + 72);
  v33 = a4 + 56;
  v34 = v15;
  v16 = (v12 + 8);
  v37 = a4;
  while (2)
  {
    v32 = v14 + 1;
    v35(v38, v30 + v34 * v14, v7);
    v17 = *(a4 + 40);
    sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v18 = sub_1AC79FE48();
    v19 = ~(-1 << *(a4 + 32));
    do
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = 1 << (v18 & v19);
      if ((v22 & *(v33 + 8 * v21)) == 0)
      {
        (*v16)(v38, v7);
        goto LABEL_11;
      }

      v35(v11, *(v37 + 48) + v20 * v34, v7);
      sub_1AC68A730(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v23 = sub_1AC79FED8();
      v24 = *v16;
      (*v16)(v11, v7);
      v18 = v20 + 1;
    }

    while ((v23 & 1) == 0);
    result = (v24)(v38, v7);
    v26 = *(v29 + 8 * v21);
    *(v29 + 8 * v21) = v26 | v22;
    if ((v26 & v22) != 0)
    {
LABEL_11:
      a4 = v37;
      goto LABEL_12;
    }

    a4 = v37;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 + 1 == *(v37 + 16))
    {
      return 1;
    }

    ++v28;
LABEL_12:
    v14 = v32;
    if (v32 != v31)
    {
      continue;
    }

    return 0;
  }
}

void *sub_1AC68492C(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1AC6849AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0) + 48);
  v6 = *(a1 + v4);
  result = sub_1AC6F12A4(a2, a1);
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_1AC684A1C()
{
  OUTLINED_FUNCTION_512();
  v3 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  v4 = OUTLINED_FUNCTION_117();
  result = sub_1AC684A7C(v4, v5, v1, v6, v7);
  *v0 = v9;
  return result;
}

uint64_t sub_1AC684A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  OUTLINED_FUNCTION_433();
  v42 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v9 = OUTLINED_FUNCTION_40(v42);
  v43 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C918, &qword_1AC7AAE80);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_234();
  v20 = OUTLINED_FUNCTION_89();
  sub_1AC6F15F0(v20);

  while (1)
  {
    sub_1AC686EB8(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
    v21 = OUTLINED_FUNCTION_627();
    if (__swift_getEnumTagSinglePayload(v21, 1, a2) == 1)
    {
      sub_1AC5CA508();
    }

    v22 = *(a2 + 48);
    v23 = OUTLINED_FUNCTION_429();
    sub_1AC61B988(v23, v24);
    v25 = *(v5 + v22);
    v26 = *a5;
    v28 = sub_1AC6E08C4(v15);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    a2 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
        sub_1AC7A0B28();
      }
    }

    else
    {
      sub_1AC6F0CAC(v31, a4 & 1);
      v32 = *a5;
      v33 = sub_1AC6E08C4(v15);
      if ((a2 & 1) != (v34 & 1))
      {
        goto LABEL_16;
      }

      v28 = v33;
    }

    v35 = *a5;
    if (a2)
    {
      v44 = *(v35[7] + 8 * v28);

      sub_1AC659150(v25);
      a2 = v44;
      OUTLINED_FUNCTION_2_6();
      sub_1AC68A2BC();
      v36 = v35[7];
      v37 = *(v36 + 8 * v28);
      *(v36 + 8 * v28) = v44;

      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      sub_1AC61B988(v15, v35[6] + *(v43 + 72) * v28);
      *(v35[7] + 8 * v28) = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_15;
      }

      v35[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1AC7A0DC8();
  __break(1u);
  return result;
}

uint64_t sub_1AC684D70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AC6B16D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AC685250(v6);
  return sub_1AC7A0A78();
}

uint64_t sub_1AC684DEC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC5CA854(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1AC5CA904(v6, &qword_1EB56C840, &qword_1AC7AAC68, sub_1AC685CA8, sub_1AC685424);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC684E90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC5CB7E8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1AC5CA904(v6, &qword_1EB56C848, &qword_1AC7AACD8, sub_1AC6862DC, sub_1AC685534);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC684F34(uint64_t *a1, uint64_t (*a2)(void, char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v35 - v15;
  v17 = *a1;
  v18 = v46;
  result = sub_1AC680460(*a1, a2);
  if (!v18)
  {
    v42 = a2;
    v43 = v16;
    v37 = v11;
    v38 = v14;
    if (v20)
    {
      return *(v17 + 16);
    }

    else
    {
      v41 = v6;
      v36 = a1;
      v21 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v22 = v17;
        v35[1] = 0;
        v39 = a3;
        v40 = v7;
        while (1)
        {
          v23 = *(v22 + 16);
          if (v21 == v23)
          {
            break;
          }

          if (v21 >= v23)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v46 = result;
          v24 = v22;
          v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v25 = v22 + v44;
          v26 = *(v7 + 72);
          v45 = v26 * v21;
          v27 = v43;
          sub_1AC68A3F8(v22 + v44 + v26 * v21, v43, &qword_1EB56BF58, &qword_1AC7A9230);
          v28 = v42(*v27, v27 + *(v41 + 48));
          v29 = v27;
          LOBYTE(v27) = v28;
          sub_1AC5C9624(v29, &qword_1EB56BF58, &qword_1AC7A9230);
          if (v27)
          {
            v7 = v40;
            result = v46;
            v22 = v24;
          }

          else
          {
            result = v46;
            if (v21 == v46)
            {
              v7 = v40;
            }

            else
            {
              if ((v46 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v30 = *(v24 + 16);
              if (v46 >= v30)
              {
                goto LABEL_24;
              }

              v31 = v26 * v46;
              result = sub_1AC68A3F8(v25 + v26 * v46, v38, &qword_1EB56BF58, &qword_1AC7A9230);
              if (v21 >= v30)
              {
                goto LABEL_25;
              }

              v32 = v45;
              sub_1AC68A3F8(v25 + v45, v37, &qword_1EB56BF58, &qword_1AC7A9230);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AC7045B0(v24);
                v24 = v34;
              }

              v7 = v40;
              v33 = v24 + v44;
              result = sub_1AC68A6C8(v37, v24 + v44 + v31, &qword_1EB56BF58, &qword_1AC7A9230);
              if (v21 >= *(v24 + 16))
              {
                goto LABEL_26;
              }

              sub_1AC68A6C8(v38, v33 + v32, &qword_1EB56BF58, &qword_1AC7A9230);
              *v36 = v24;
              result = v46;
            }

            v22 = v24;
            ++result;
          }

          ++v21;
        }
      }
    }
  }

  return result;
}

void sub_1AC685250(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1AC7A0CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1AC6AEEA0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1AC685648(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1AC685330(0, v3, 1, a1);
  }
}

void sub_1AC685330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 sampleRate];
        v15 = v14;
        [v13 sampleRate];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1AC685424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 40 * v4);
      v10 = *v9;
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v9[2];
      v14 = v8;
      v15 = v7;
      do
      {
        v16 = *v15;
        v17 = *(v15 + 16);
        v18 = *(v15 + 8);
        v19 = *(v15 + 12) << 32;
        result = sub_1AC7A0678();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v21 = *(v15 + 48);
        v20 = *(v15 + 52);
        v22 = *(v15 + 56);
        v23 = *(v15 + 16);
        v24 = *(v15 + 32);
        result = *(v15 + 40);
        *(v15 + 40) = *v15;
        v25 = *(v15 + 64);
        *(v15 + 56) = v23;
        *(v15 + 72) = v24;
        *v15 = result;
        *(v15 + 8) = v21;
        *(v15 + 12) = v20;
        *(v15 + 16) = v22;
        *(v15 + 24) = v25;
        v15 -= 40;
      }

      while (!__CFADD__(v14++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1AC685534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 48 * v4);
      v10 = *v9;
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v9[2];
      v14 = v8;
      v15 = v7;
      do
      {
        v16 = *v15;
        v17 = *(v15 + 16);
        v18 = *(v15 + 8);
        v19 = *(v15 + 12) << 32;
        result = sub_1AC7A0678();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v20 = *(v15 + 64);
        v21 = *(v15 + 72);
        v22 = *(v15 + 80);
        v23 = *v15;
        v24 = *(v15 + 32);
        *(v15 + 64) = *(v15 + 16);
        *(v15 + 80) = v24;
        result = *(v15 + 48);
        v26 = *(v15 + 56);
        v25 = *(v15 + 60);
        *v15 = result;
        *(v15 + 8) = v26;
        *(v15 + 12) = v25;
        *(v15 + 16) = v20;
        *(v15 + 24) = v21;
        *(v15 + 32) = v22;
        *(v15 + 48) = v23;
        v15 -= 48;
      }

      while (!__CFADD__(v14++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1AC685648(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v113;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v99 = v6;
        v6 += 16 * v98;
        v100 = *v6;
        v101 = &v97[2 * v98];
        v102 = *(v101 + 1);
        sub_1AC686918((*a3 + 8 * *v6), (*a3 + 8 * *v101), (*a3 + 8 * v102), v111);
        if (v5)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_119;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_120;
        }

        *v6 = v100;
        *(v6 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_121;
        }

        v98 = *v97 - 1;
        sub_1AC6B021C(v101 + 16, v103, v101);
        *v97 = v98;
        v6 = v99;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &off_1E797D000;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v105 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[365]];
      v16 = v15;
      [v14 v7[365]];
      v18 = v17;

      v108 = v9;
      v19 = v9 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v21 = *(v12 - 1);
        v6 = *v12;
        v22 = v21;
        [v6 v7[365]];
        v24 = v23;
        [v22 v7[365]];
        v26 = v25;

        ++v12;
        v19 = v20 + 1;
        if (v16 < v18 == v24 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v16 >= v18)
      {
        v6 = v105;
        v8 = v108;
      }

      else
      {
        v8 = v108;
        if (v5 < v108)
        {
          goto LABEL_125;
        }

        if (v108 >= v5)
        {
          v6 = v105;
        }

        else
        {
          if (v4 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v4;
          }

          v28 = 8 * v27 - 8;
          v29 = v5;
          v30 = v108;
          v6 = v105;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v6 + 2);
      sub_1AC60E284();
      v6 = v95;
    }

    v50 = *(v6 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v6 + 3) >> 1)
    {
      sub_1AC60E284();
      v6 = v96;
    }

    *(v6 + 2) = v51;
    v52 = v6 + 32;
    v53 = &v6[16 * v50 + 32];
    *v53 = v8;
    *(v53 + 1) = v5;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v50)
    {
      v110 = v5;
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v6[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v6 + 4);
          v58 = *(v6 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_60:
          if (v60)
          {
            goto LABEL_110;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_118;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v51 < 2)
        {
          goto LABEL_112;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_75:
        if (v75)
        {
          goto LABEL_115;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v82 < v74)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v86 = &v52[16 * v54 - 16];
        v87 = *v86;
        v88 = v54;
        v89 = &v52[16 * v54];
        v90 = *(v89 + 1);
        sub_1AC686918((*a3 + 8 * *v86), (*a3 + 8 * *v89), (*a3 + 8 * v90), v111);
        if (v113)
        {
          goto LABEL_103;
        }

        if (v90 < v87)
        {
          goto LABEL_105;
        }

        v5 = v52;
        v91 = v7;
        v92 = v6;
        v6 = *(v6 + 2);
        if (v88 > v6)
        {
          goto LABEL_106;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v6)
        {
          goto LABEL_107;
        }

        v51 = (v6 - 1);
        sub_1AC6B021C(v89 + 16, &v6[-v88 - 1], v89);
        *(v92 + 2) = v6 - 1;
        v93 = v6 > 2;
        v6 = v92;
        v7 = v91;
        v52 = v5;
        v5 = v110;
        if (!v93)
        {
          goto LABEL_89;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_108;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_109;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_111;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_114;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v34)
  {
    goto LABEL_39;
  }

  v106 = v6;
  v35 = *a3;
  v36 = *a3 + 8 * v5 - 8;
  v109 = v8;
  v111 = v34;
  v37 = v8 - v5;
LABEL_32:
  v38 = *(v35 + 8 * v5);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    [v42 v7[365]];
    v45 = v44;
    [v43 v7[365]];
    v47 = v46;

    if (v45 >= v47)
    {
LABEL_37:
      ++v5;
      v36 += 8;
      --v37;
      if (v5 == v111)
      {
        v5 = v111;
        v6 = v106;
        v8 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v48 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v48;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_1AC685CA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v110 = v6 + 16;
      v111 = *(v6 + 2);
      while (v111 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v112 = v6;
        v6 += 16 * v111;
        v113 = *v6;
        v114 = &v110[2 * v111];
        v115 = *(v114 + 1);
        sub_1AC686B50((*a3 + 40 * *v6), (*a3 + 40 * *v114), *a3 + 40 * v115, v120);
        if (v122)
        {
          break;
        }

        if (v115 < v113)
        {
          goto LABEL_115;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_116;
        }

        *v6 = v113;
        *(v6 + 1) = v115;
        v116 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_117;
        }

        v122 = 0;
        v111 = *v110 - 1;
        sub_1AC6B021C(v114 + 16, v116, v114);
        *v110 = v111;
        v6 = v112;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = (*a3 + 40 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = (*a3 + 40 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = sub_1AC7A0678();
      v17 = v12 + 12;
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v5 >= v4)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        v22 = *(v17 - 6);
        v23 = *(v17 - 5);
        v24 = *(v17 - 2);
        v25 = *(v17 - 7);
        v26 = sub_1AC7A0678();
        v17 += 5;
        v18 = v19 + 1;
        if ((v16 & 1) != (v26 & 1))
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = v4;
        }

        v28 = 40 * v27 - 16;
        v29 = 40 * v7 + 24;
        v30 = v5;
        v31 = v7;
        do
        {
          if (v31 != --v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v33 = (v32 + v29);
            v34 = *(v32 + v29 - 24);
            v35 = v32 + v28;
            v36 = *(v33 - 1);
            v37 = *(v33 - 2);
            v38 = *v33;
            v39 = *(v35 + 8);
            v40 = *(v35 - 8);
            *(v33 - 24) = *(v35 - 24);
            *(v33 - 8) = v40;
            *(v33 + 1) = v39;
            *(v35 - 24) = v34;
            *(v35 - 16) = v37;
            *(v35 - 8) = v36;
            *v35 = v38;
          }

          ++v31;
          v28 -= 40;
          v29 += 40;
        }

        while (v31 < v30);
      }
    }

LABEL_20:
    v41 = a3[1];
    if (v5 < v41)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = *(v6 + 2);
      sub_1AC60E284();
      v6 = v108;
    }

    v66 = *(v6 + 2);
    v67 = v66 + 1;
    if (v66 >= *(v6 + 3) >> 1)
    {
      sub_1AC60E284();
      v6 = v109;
    }

    *(v6 + 2) = v67;
    v68 = v6 + 32;
    v69 = &v6[16 * v66 + 32];
    *v69 = v7;
    *(v69 + 1) = v5;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v66)
    {
      while (1)
      {
        v70 = v67 - 1;
        v71 = &v68[16 * v67 - 16];
        v72 = &v6[16 * v67];
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v73 = *(v6 + 4);
          v74 = *(v6 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_57:
          if (v76)
          {
            goto LABEL_106;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_109;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_114;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v67 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v67 < 2)
        {
          goto LABEL_108;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_72:
        if (v91)
        {
          goto LABEL_111;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_113;
        }

        if (v98 < v90)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v70 - 1 >= v67)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v102 = v6;
        v103 = &v68[16 * v70 - 16];
        v104 = *v103;
        v6 = &v68[16 * v70];
        v105 = *(v6 + 1);
        sub_1AC686B50((*a3 + 40 * *v103), (*a3 + 40 * *v6), *a3 + 40 * v105, v120);
        if (v122)
        {
          goto LABEL_99;
        }

        if (v105 < v104)
        {
          goto LABEL_101;
        }

        v106 = *(v102 + 2);
        if (v70 > v106)
        {
          goto LABEL_102;
        }

        *v103 = v104;
        *(v103 + 1) = v105;
        if (v70 >= v106)
        {
          goto LABEL_103;
        }

        v122 = 0;
        v67 = v106 - 1;
        sub_1AC6B021C(v6 + 16, v106 - 1 - v70, &v68[16 * v70]);
        v6 = v102;
        *(v102 + 2) = v106 - 1;
        if (v106 <= 2)
        {
          goto LABEL_86;
        }
      }

      v77 = &v68[16 * v67];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_104;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_105;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_107;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_110;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_118;
        }

        if (v75 < v101)
        {
          v70 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v41)
  {
    v42 = a3[1];
  }

  else
  {
    v42 = v7 + a4;
  }

  if (v42 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v42)
  {
    goto LABEL_37;
  }

  v120 = v6;
  v43 = *a3;
  v44 = *a3 + 40 * v5 - 40;
  v117 = v7;
  v45 = v7 - v5;
LABEL_30:
  v46 = v42;
  v47 = (v43 + 40 * v5);
  v48 = *v47;
  v50 = *(v47 + 2);
  v49 = *(v47 + 3);
  v51 = v47[2];
  v52 = v45;
  v53 = v44;
  while (1)
  {
    v54 = *v53;
    v55 = *(v53 + 16);
    v56 = *(v53 + 8);
    v57 = *(v53 + 12) << 32;
    if ((sub_1AC7A0678() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v44 += 40;
      --v45;
      v42 = v46;
      if (v5 == v46)
      {
        v5 = v46;
        v7 = v117;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v43)
    {
      break;
    }

    v59 = *(v53 + 48);
    v58 = *(v53 + 52);
    v60 = *(v53 + 56);
    v61 = *(v53 + 16);
    v63 = *(v53 + 32);
    v62 = *(v53 + 40);
    *(v53 + 40) = *v53;
    v64 = *(v53 + 64);
    *(v53 + 56) = v61;
    *(v53 + 72) = v63;
    *v53 = v62;
    *(v53 + 8) = v59;
    *(v53 + 12) = v58;
    *(v53 + 16) = v60;
    *(v53 + 24) = v64;
    v53 -= 40;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

void sub_1AC6862DC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v121 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v111 = v6 + 16;
      v112 = *(v6 + 2);
      while (v112 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v113 = v6;
        v6 += 16 * v112;
        v114 = *v6;
        v115 = &v111[2 * v112];
        v116 = *(v115 + 1);
        sub_1AC686D04((*a3 + 48 * *v6), (*a3 + 48 * *v115), (*a3 + 48 * v116), v121);
        if (v123)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_115;
        }

        if (v112 - 2 >= *v111)
        {
          goto LABEL_116;
        }

        *v6 = v114;
        *(v6 + 1) = v116;
        v117 = *v111 - v112;
        if (*v111 < v112)
        {
          goto LABEL_117;
        }

        v123 = 0;
        v112 = *v111 - 1;
        sub_1AC6B021C(v115 + 16, v117, v115);
        *v111 = v112;
        v6 = v113;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = (*a3 + 48 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = (*a3 + 48 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = sub_1AC7A0678();
      v17 = v12 + 14;
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v5 >= v4)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        v22 = *(v17 - 7);
        v23 = *(v17 - 6);
        v24 = *(v17 - 2);
        v25 = *(v17 - 8);
        v26 = sub_1AC7A0678();
        v17 += 6;
        v18 = v19 + 1;
        if ((v16 & 1) != (v26 & 1))
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = v4;
        }

        v28 = 48 * v27 - 24;
        v29 = 48 * v7 + 32;
        v30 = v5;
        v31 = v7;
        do
        {
          if (v31 != --v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v33 = (v32 + v29);
            v34 = *(v32 + v29 - 32);
            v35 = v32 + v28;
            v36 = *(v33 - 2);
            v37 = *(v33 - 8);
            v38 = *(v33 - 3);
            v39 = *v33;
            v40 = *(v35 + 8);
            v41 = *(v35 - 8);
            *(v33 - 2) = *(v35 - 24);
            *(v33 - 1) = v41;
            *v33 = v40;
            *(v35 - 24) = v34;
            *(v35 - 16) = v38;
            *(v35 - 8) = v36;
            *v35 = v37;
            *(v35 + 8) = v39;
          }

          ++v31;
          v28 -= 48;
          v29 += 48;
        }

        while (v31 < v30);
      }
    }

LABEL_20:
    v42 = a3[1];
    if (v5 < v42)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = *(v6 + 2);
      sub_1AC60E284();
      v6 = v109;
    }

    v67 = *(v6 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v6 + 3) >> 1)
    {
      sub_1AC60E284();
      v6 = v110;
    }

    *(v6 + 2) = v68;
    v69 = v6 + 32;
    v70 = &v6[16 * v67 + 32];
    *v70 = v7;
    *(v70 + 1) = v5;
    v121 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v67)
    {
      while (1)
      {
        v71 = v68 - 1;
        v72 = &v69[16 * v68 - 16];
        v73 = &v6[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v6 + 4);
          v75 = *(v6 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_57:
          if (v77)
          {
            goto LABEL_106;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_109;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_114;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v68 < 2)
        {
          goto LABEL_108;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_72:
        if (v92)
        {
          goto LABEL_111;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_113;
        }

        if (v99 < v91)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v71 - 1 >= v68)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v103 = v6;
        v104 = &v69[16 * v71 - 16];
        v105 = *v104;
        v6 = &v69[16 * v71];
        v106 = *(v6 + 1);
        sub_1AC686D04((*a3 + 48 * *v104), (*a3 + 48 * *v6), (*a3 + 48 * v106), v121);
        if (v123)
        {
          goto LABEL_99;
        }

        if (v106 < v105)
        {
          goto LABEL_101;
        }

        v107 = *(v103 + 2);
        if (v71 > v107)
        {
          goto LABEL_102;
        }

        *v104 = v105;
        *(v104 + 1) = v106;
        if (v71 >= v107)
        {
          goto LABEL_103;
        }

        v123 = 0;
        v68 = v107 - 1;
        sub_1AC6B021C(v6 + 16, v107 - 1 - v71, &v69[16 * v71]);
        v6 = v103;
        *(v103 + 2) = v107 - 1;
        if (v107 <= 2)
        {
          goto LABEL_86;
        }
      }

      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_104;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_105;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_107;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_110;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_118;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v42)
  {
    v43 = a3[1];
  }

  else
  {
    v43 = v7 + a4;
  }

  if (v43 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v43)
  {
    goto LABEL_37;
  }

  v121 = v6;
  v44 = *a3;
  v45 = *a3 + 48 * v5 - 48;
  v118 = v7;
  v46 = v7 - v5;
LABEL_30:
  v47 = v43;
  v48 = (v44 + 48 * v5);
  v49 = *v48;
  v51 = *(v48 + 2);
  v50 = *(v48 + 3);
  v52 = v48[2];
  v53 = v46;
  v54 = v45;
  while (1)
  {
    v55 = *v54;
    v56 = *(v54 + 16);
    v57 = *(v54 + 8);
    v58 = *(v54 + 12) << 32;
    if ((sub_1AC7A0678() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v45 += 48;
      --v46;
      v43 = v47;
      if (v5 == v47)
      {
        v5 = v47;
        v7 = v118;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v44)
    {
      break;
    }

    v59 = *(v54 + 64);
    v60 = *(v54 + 72);
    v61 = *(v54 + 80);
    v62 = *v54;
    v63 = *(v54 + 32);
    *(v54 + 64) = *(v54 + 16);
    *(v54 + 80) = v63;
    v65 = *(v54 + 56);
    v64 = *(v54 + 60);
    *v54 = *(v54 + 48);
    *(v54 + 8) = v65;
    *(v54 + 12) = v64;
    *(v54 + 16) = v59;
    *(v54 + 24) = v60;
    *(v54 + 32) = v61;
    *(v54 + 48) = v62;
    v54 -= 48;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

uint64_t sub_1AC686918(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1AC5D9408(a1, (a2 - a1) / 8, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 sampleRate];
      v17 = v16;
      [v15 sampleRate];
      v19 = v18;

      if (v17 >= v19)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1AC5D9408(a2, (a3 - a2) / 8, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 sampleRate];
    v30 = v29;
    [v28 sampleRate];
    v32 = v31;

    v33 = v5 + 1;
    if (v30 < v32)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_1AC686B50(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1AC703FE4(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = *(v4 + 2);
      if ((sub_1AC7A0678() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 40;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 40;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *v18;
    v21 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v20;
    *(v7 + 1) = v21;
    goto LABEL_13;
  }

  sub_1AC703FE4(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  v22 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v24 = *(v10 - 5);
    v25 = *(v10 - 4);
    v26 = *(v10 - 3);
    v27 = *(v6 - 5);
    v28 = *(v6 - 4);
    v29 = *(v6 - 3);
    v30 = sub_1AC7A0678();
    v31 = (v5 + 40);
    if (v30)
    {
      v19 = v31 == v6;
      v6 -= 40;
      if (!v19)
      {
        v34 = *v22;
        v35 = *(v22 + 1);
        *(v5 + 32) = *(v22 + 4);
        *v5 = v34;
        *(v5 + 16) = v35;
        v6 = v22;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      v32 = *(v10 - 40);
      v33 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v32;
      *(v5 + 16) = v33;
    }

    v10 -= 40;
  }

LABEL_28:
  v36 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

uint64_t sub_1AC686D04(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1AC704020(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = *(v4 + 2);
      if ((sub_1AC7A0678() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 48;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 48;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *v18;
    v21 = *(v18 + 2);
    *(v7 + 1) = *(v18 + 1);
    *(v7 + 2) = v21;
    *v7 = v20;
    goto LABEL_13;
  }

  sub_1AC704020(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_15:
  v22 = v6 - 48;
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v24 = *(v10 - 6);
    v25 = *(v10 - 5);
    v26 = *(v10 - 4);
    v27 = *(v6 - 6);
    v28 = *(v6 - 5);
    v29 = *(v6 - 4);
    v30 = sub_1AC7A0678();
    v31 = v5 + 48;
    if (v30)
    {
      v19 = v31 == v6;
      v6 -= 48;
      if (!v19)
      {
        v34 = *v22;
        v35 = *(v22 + 2);
        *(v5 + 1) = *(v22 + 1);
        *(v5 + 2) = v35;
        *v5 = v34;
        v6 = v22;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      v32 = *(v10 - 3);
      v33 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v33;
      *v5 = v32;
    }

    v10 -= 48;
  }

LABEL_28:
  v36 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v36])
  {
    memmove(v6, v4, 48 * v36);
  }

  return 1;
}

uint64_t sub_1AC686EB8@<X0>(uint64_t a1@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v34 - v4;
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B8, &qword_1AC7AADF8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v39 = a1;
  if (v20)
  {
    v36 = v19;
    v21 = v18;
LABEL_7:
    v35 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v21 << 6);
    sub_1AC68A130(*(v17 + 48) + *(v37 + 72) * v22, v8);
    v23 = *(*(v17 + 56) + 8 * v22);
    v24 = *(v38 + 48);
    v25 = v8;
    v26 = v38;
    sub_1AC61B988(v25, v15);
    *&v15[v24] = v23;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v26);

    v27 = v35;
    v19 = v36;
LABEL_8:
    *v1 = v17;
    v1[1] = v16;
    v1[2] = v19;
    v1[3] = v18;
    v1[4] = v27;
    v28 = v1[5];
    v29 = v1[6];
    if (__swift_getEnumTagSinglePayload(v15, 1, v26))
    {
      memcpy(v12, v15, v10);
    }

    else
    {
      sub_1AC61B988(v15, v12);
      *&v12[*(v26 + 48)] = *&v15[*(v26 + 48)];
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v26);
    }

    v30 = v39;
    v31 = 1;
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) != 1)
    {
      v32 = v34;
      sub_1AC61B988(v12, v34);
      *(v32 + *(v26 + 48)) = *&v12[*(v26 + 48)];
      v28(v32);
      sub_1AC68A2BC();
      sub_1AC5C9624(v32 + *(v26 + 48), &qword_1EB56C8D0, &qword_1AC7AAE18);
      v31 = 0;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v33);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v19 + 64) >> 6))
      {
        v26 = v38;
        __swift_storeEnumTagSinglePayload(&v34 - v14, 1, 1, v38);
        v27 = 0;
        goto LABEL_8;
      }

      v20 = *(v16 + 8 * v21);
      ++v18;
      if (v20)
      {
        v36 = v19;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AC687244(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1AC683E24(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1AC687274(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AC687368;

  return v6(v2 + 32);
}

uint64_t sub_1AC687368()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1AC68745C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1AC5CA560;

  return sub_1AC681ED0(a2, v9, a4, a5);
}

uint64_t sub_1AC687514(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 16) = a1;
  v11 = *a6;
  v12 = a6[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_1AC5C8838;

  return sub_1AC6827D4(a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1AC6875E0(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AC687678;

  return sub_1AC6829FC(v3);
}

uint64_t sub_1AC687678()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  *v5 = v2;
  OUTLINED_FUNCTION_44();

  return v8();
}

void sub_1AC687774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1AC684134(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_1AC6877BC(uint64_t a1, os_unfair_lock_s *a2, void (*a3)(os_unfair_lock_s *, uint64_t, _UNKNOWN **))
{
  os_unfair_lock_lock(a2 + 16);
  a3(a2 + 18, a1, &off_1F212E960);

  os_unfair_lock_unlock(a2 + 16);
}

uint64_t sub_1AC68782C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_44_4();
  v6 = *(v5 + 64);
  v7 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v8);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_501();
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_285(v11);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC65AD84(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC68793C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6879A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_334();

  return sub_1AC65C8D0(v3, v4, v5);
}

uint64_t sub_1AC687A30()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  OUTLINED_FUNCTION_239();
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_636();

  return sub_1AC65DC74(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t type metadata accessor for SpeechAnalyzer()
{
  result = qword_1EB56B350;
  if (!qword_1EB56B350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_44_4();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40(v6);
  v8 = v7;
  v9 = (((v3 + 56) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 6);

  v14 = OUTLINED_FUNCTION_305();
  v15(v14);
  (*(v8 + 8))(&v0[v9], v6);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1AC687CB0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_44_4();
  v6 = *(v5 + 64);
  v7 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v8);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_501();
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_285(v11);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC67D7B8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC687DC8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E344(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC687E60()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E768(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC687EF8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E768(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC687F90()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();

  return sub_1AC680050();
}

void sub_1AC68802C()
{
  sub_1AC6881D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ClientInfo(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1AC6881D4()
{
  if (!qword_1ED937B98[0])
  {
    type metadata accessor for SpeechAnalyzer.Options(255);
    v0 = sub_1AC7A0798();
    if (!v1)
    {
      atomic_store(v0, qword_1ED937B98);
    }
  }
}

uint64_t assignWithCopy for AnalyzerInput(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 8) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  return a1;
}

uint64_t assignWithTake for AnalyzerInput(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SpeechModels(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1AC6883CC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t sub_1AC68852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1AC684618(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1AC688560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC682A7C(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC688628(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6830AC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1AC6886F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC682D78(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6887B8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC688848(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC6832C4(a1, a2, a3, a4, v10);
}

uint64_t sub_1AC68890C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_523();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6889FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_112_2();

  return sub_1AC67CD30(v6, v7, v8);
}

unint64_t sub_1AC688A98()
{
  result = qword_1EB56ABA0;
  if (!qword_1EB56ABA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56ABA0);
  }

  return result;
}

uint64_t sub_1AC688AF8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC688B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29_0(v10);
  *v11 = v12;
  v11[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1AC688C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AC637EE4;

  return v10(a2, a3);
}

uint64_t sub_1AC688D48()
{
  OUTLINED_FUNCTION_302();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_311();
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);
  v12 = *(v0 + v10);
  v13 = (v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v23 = v13[1];
  v15 = OUTLINED_FUNCTION_171();
  return sub_1AC67B540(v15, v16, v1, v17, v18, v19, v20, v21, v23);
}

uint64_t objectdestroy_57Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_414();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC688E50()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67B2B8(v5, v6, v7, v8, v9, v10);
}

void sub_1AC688EEC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1AC688EF8()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_105_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v18 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_115();

  return sub_1AC67B714(v8, v9, v10, v11, v12, v13, v14, v15);
}

id sub_1AC688FC8(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AC688FD4()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v5 = ((*(v3 + 80) + 64) & ~*(v3 + 80)) + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_239();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6783F8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC689144()
{
  OUTLINED_FUNCTION_302();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_311();
  v10 = (v9 + 43) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);
  v12 = (v0 + ((v9 + 11) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = v0 + v10;
  v26 = *v15;
  v27 = *(v15 + 8);
  v25 = *(v12 + 24);
  v24 = v12[2];
  v16 = OUTLINED_FUNCTION_171();
  return sub_1AC679074(v16, v17, v1, v18, v19, v20, v21, v22, v24, v25, v26, v27);
}

uint64_t sub_1AC689230()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_239();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_29_0(v8);
  *v9 = v10;
  v9[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC679828(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC689324()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_95_2(v6);
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC679C30(v8, v9, v10, v11, v12);
}

uint64_t sub_1AC6893C4()
{
  OUTLINED_FUNCTION_302();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_171();

  return sub_1AC67A05C(v8, v9, v1, v10, v11, v12, v13);
}

uint64_t sub_1AC689460(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t sub_1AC689498()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = *(v0 + 24);
  v22 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29_0(v9);
  *v10 = v11;
  v10[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC679250(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC689560()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v0);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  OUTLINED_FUNCTION_239();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return sub_1AC678A94(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC689638()
{
  OUTLINED_FUNCTION_25();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1AC677014(v0, v1 + v4, v9, v10);
}

uint64_t sub_1AC689720()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_22(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = *(v0 + v5);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_636();

  return sub_1AC677350(v14, v15, v16, v17, v18, v19, v20);
}

uint64_t objectdestroy_171Tm()
{
  OUTLINED_FUNCTION_104();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v5);
  v7 = v6;
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_305();
  v12(v11);
  v13 = *(v0 + v4);

  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

void sub_1AC6899C8()
{
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 80);
  v8 = *(v0 + v4);
  sub_1AC678894();
}

uint64_t objectdestroy_213Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_328();
  v9(v8);
  v10 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1AC689B7C()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v0);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  OUTLINED_FUNCTION_239();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return sub_1AC6779D4(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC689C54()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_239();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_0(v7);
  *v8 = v9;
  v8[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC675C8C(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_22_0(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC689DC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_594();
  return sub_1AC67ABA4(v3);
}

uint64_t sub_1AC689E2C()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v1 = v0[5];
  v2 = (*(*(v0[4] - 8) + 80) + 56) & ~*(*(v0[4] - 8) + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_636();

  return sub_1AC673828(v9, v10, v11, v12);
}

uint64_t sub_1AC689F14()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  v7 = OUTLINED_FUNCTION_70_2();

  return sub_1AC680C2C(v7, v8, v2, v3);
}

uint64_t sub_1AC689FB4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_127Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC68A088()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_523();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AC68A130(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_433();
  v5 = v4(v3);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  return a2;
}

uint64_t sub_1AC68A188()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_311();
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = OUTLINED_FUNCTION_594();

  return sub_1AC672A60(v11, v12, v13, v14);
}

uint64_t sub_1AC68A218()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_311();
  v9 = *(v0 + v8);
  v10 = OUTLINED_FUNCTION_594();

  return sub_1AC6732B0(v10, v11);
}

uint64_t sub_1AC68A29C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AC68A2AC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AC68A2BC()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_22_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1AC68A30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AC68A370(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  sub_1AC68D948();
  return v6 & 1;
}

uint64_t sub_1AC68A3F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  return v4;
}

uint64_t sub_1AC68A444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  return v4;
}

uint64_t sub_1AC68A530()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC673430(v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_344Tm()
{
  OUTLINED_FUNCTION_78_0();
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[4];

  v1(v0[5]);
  v4 = OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6BDD0](v4, v5, 7);
}

uint64_t sub_1AC68A62C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC672C3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC68A6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  return v4;
}

uint64_t sub_1AC68A730(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC68A774()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

void OUTLINED_FUNCTION_47_3()
{
  v6 = v0[139];
  v5 = v0[138];
  *(v1 - 168) = v0[115];
  *(v1 - 144) = v0[106];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[98];
}

void OUTLINED_FUNCTION_52_2()
{
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];
  v1 = v0[102];
  v10 = v0[101];
  v11 = v0[100];
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[36];
  v7 = v0[37];
  *(v0[33] + v0[51]) = 0;
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_74_3()
{
  v2 = v0[137];
  v3 = v0[132];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[87];

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_79_2()
{
  v4 = v1 + *(v0 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  v3 = v0[139];
  v4 = v0[138];
  *(v1 - 144) = v0[115];
  *(v1 - 168) = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = *(*(v1 - 152) + 784);
  v8 = *(*(v1 - 152) + 752);

  return sub_1AC61B988(v8, v6);
}

void OUTLINED_FUNCTION_96_2()
{
  v4 = v0[35];
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_1AC659708(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_101_2()
{
  result = v0[137];
  v3 = v0[115];
  v4 = v0[114];
  *(v1 - 112) = v0[106];
  return result;
}

uint64_t OUTLINED_FUNCTION_118_2()
{
  v3 = *(v1 + *(v0 + 32) + 8);
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(v1 + 32) = v2;

  return sub_1AC659150(v1);
}

uint64_t OUTLINED_FUNCTION_121_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_125_1()
{

  JUMPOUT(0x1B26EAB10);
}

uint64_t OUTLINED_FUNCTION_136_1()
{
  result = *(v2 + 840);
  *(v2 + 616) = v1;
  v4 = *(*(v0 + 16) + 16);
  return result;
}

void OUTLINED_FUNCTION_137_1()
{
  v3 = *(v1 + 840);
  v4 = *(v1 + 776);
  v5 = *(v0 + *(*(v2 - 120) + 48));
}

void OUTLINED_FUNCTION_138_1()
{
  v1 = v0[115];
  v2 = v0[106];
  v3 = v0[105];
}

uint64_t OUTLINED_FUNCTION_139_1()
{
  *(v2 + *(v0 + 48)) = *(v1 + *(v0 + 48));
  v4 = *(*(v2 + *(v0 + 48)) + 16);
}

uint64_t OUTLINED_FUNCTION_140_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_159_1(float a1)
{
  *v2 = a1;
  *(v1 + 152) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_162_1(uint64_t result)
{
  *(result + 8) = sub_1AC65E030;
  v2 = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_165_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_179_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_185_1(uint64_t a1)
{
  *(a1 + 8) = sub_1AC66A204;
  v2 = v1[185];
  v3 = v1[178];
  v4 = v1[120];
  return v1[100];
}

uint64_t OUTLINED_FUNCTION_195_0()
{
  v4 = *(v0 + 32);
  *(v2 - 160) = v1 + 1;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_199_0(uint64_t a1)
{
  *(a1 + 8) = sub_1AC5C9F80;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return v1 + 208;
}

uint64_t OUTLINED_FUNCTION_201_0()
{
  v3 = v0 + *(v1 + 36);

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

void OUTLINED_FUNCTION_207_0()
{
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];
  v1 = v0[102];
  v10 = v0[101];
}

void OUTLINED_FUNCTION_211_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v17 + 920);
  v20 = *(a16 + *(v16 + 48));
}

uint64_t OUTLINED_FUNCTION_212_0()
{
  v3 = v0 + *(v1 + 36);

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

uint64_t OUTLINED_FUNCTION_215(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(*(a14 + 56) + 8 * v14);
}

uint64_t OUTLINED_FUNCTION_216()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[25];
  result = v0[26];
  v5 = v0[24];
  return result;
}

void OUTLINED_FUNCTION_217()
{
  v1 = v0[33];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
}

double OUTLINED_FUNCTION_220@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_1AC7A0B18();
}

uint64_t OUTLINED_FUNCTION_229()
{
  v1 = *(v0 - 152);
  v2 = *(v1 + 944);
  return *(v1 + 928);
}

uint64_t OUTLINED_FUNCTION_230()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_237(float a1)
{
  *v2 = a1;
  *(v1 + 136) = v3;
  return 0;
}

void OUTLINED_FUNCTION_238()
{
  v1 = v0[90];
  v2 = v0[89];
  v0[205] = 0;
  v3 = v0[203];
  v4 = v0[93];
}

void OUTLINED_FUNCTION_239()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_240(uint64_t result)
{
  *(result + 8) = sub_1AC6823C0;
  v2 = *(v1 + 136);
  v3 = *(v1 + 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_252@<X0>(uint64_t a1@<X8>)
{
  *(v2 + v1) = a1;
  v5 = *(v3 - 152);

  return sub_1AC79FE38();
}

void OUTLINED_FUNCTION_253()
{
  *(v1 - 104) = *(v0 + 600);

  sub_1AC6E0F44();
}

uint64_t OUTLINED_FUNCTION_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v15 - 104) = a1;
  *v13 = a13;

  return sub_1AC68A30C(v14 + 96, v14 + 56);
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = 0xD00000000000001ALL;
  *(v1 - 96) = (a1 - 32) | 0x8000000000000000;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(a1 + 16) = a19;

  return sub_1AC68A30C(a29, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1)
{
  *(v1 - 144) = a1;

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_264(uint64_t a1, unint64_t a2)
{
  *(v4 - 144) = v2;
  __swift_destroy_boxed_opaque_existential_0((v3 + 96));

  return sub_1AC5CFE74(a1, a2, (v4 - 104));
}

uint64_t OUTLINED_FUNCTION_268()
{
  result = v1[105];
  v4 = v1[98];
  v5 = v1[94];
  v1[78] = v2;
  v6 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_279(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *(v23 + *(a23 + 20));
}

uint64_t OUTLINED_FUNCTION_281(unint64_t *a1)
{

  return sub_1AC5C8B9C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_282()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_283()
{
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[16];
  v12 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
}

uint64_t OUTLINED_FUNCTION_290(uint64_t a1)
{
  *(v2 + 1664) = a1;
  *(a1 + 24) = v1;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_296()
{
  v3 = v0 + *(v1 + 36);

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

__n128 *OUTLINED_FUNCTION_299(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  *(v4 + v3) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_300(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

id OUTLINED_FUNCTION_301@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + a1);
  v6 = (v3 + *(v1 + 48));
  v7 = *v6;
  v8 = *(v6 + 1);

  return v5;
}

__n128 OUTLINED_FUNCTION_303(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  a1[1] = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_307(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(*(v2 + 920), a2, 1, *(v2 + 848));
}

uint64_t OUTLINED_FUNCTION_312(uint64_t result)
{
  v2[75] = result;
  v2[140] = *(v1 + 16);
  v3 = v2[122];
  return result;
}

void OUTLINED_FUNCTION_313()
{

  JUMPOUT(0x1B26E8C40);
}

__n128 OUTLINED_FUNCTION_315(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31)
{
  *(v33 + 16) = v31;
  result = a31;
  *(v33 + 16 * v32 + 32) = a31;
  return result;
}

void OUTLINED_FUNCTION_316()
{
  v2 = *(v1 - 160);
  v3 = *(v1 - 152);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

BOOL OUTLINED_FUNCTION_318(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_319()
{
  v1 = *(v0 - 152);
  result = *(v1 + 944);
  v3 = *(v1 + 928);
  v4 = **(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_322@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  v6 = v5[1];
  v17 = *v5;
  v7 = v5[2];
  v8 = *(v5 + 24);
  *(v1 + v3) = 0;
  v9 = v2[49];
  v10 = v2[46];
  v11 = v2[43];
  v13 = v2[40];
  v12 = v2[41];
  v14 = v2[36];
  v15 = v2[37];
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{
  v2 = -(-1 << *(a1 + 32));
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 56);
}

uint64_t OUTLINED_FUNCTION_329()
{
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1024);

  return sub_1AC60C718(v3, v2);
}

uint64_t OUTLINED_FUNCTION_333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 + *(a19 + 20));
}

uint64_t OUTLINED_FUNCTION_336(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  __swift_project_boxed_opaque_existential_1(a30, *(*(v30 - 152) + 200));

  return sub_1AC7A0D28();
}

uint64_t OUTLINED_FUNCTION_337(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8B9C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_358()
{
  result = *(v0 + 840);
  *(v0 + 616) = v2;
  v4 = *(*(v1 + 16) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_367()
{
  v3 = *(v1 + *(v0 + 60));
}

void OUTLINED_FUNCTION_368()
{
  v3 = *(v1 + *(v0 + 56));
}

uint64_t OUTLINED_FUNCTION_369()
{
  v3 = *(v1 + *(v0 + 48));
}

uint64_t OUTLINED_FUNCTION_370()
{
  v3 = *(v1 + *(v0 + 36));
}

uint64_t OUTLINED_FUNCTION_371()
{
  v4 = v0[96];
  v2 = v0[95];
  v5 = v0[98];
}

uint64_t OUTLINED_FUNCTION_372()
{

  return sub_1AC6EE14C(v0);
}

unint64_t OUTLINED_FUNCTION_373()
{
  v3 = *v1;

  return sub_1AC6E08C4(v0);
}

uint64_t OUTLINED_FUNCTION_374()
{
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = **(v0 + 168);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_375@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(a2)))));
}

uint64_t OUTLINED_FUNCTION_377()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1)
{
  v6 = (a1 + *v3);
  v7 = *(v6 + 2);
  v8 = *v6;
  *(v4 - 96) = *v6;
  *v1 = v8;
  *(v2 + 472) = v7;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_382(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_384()
{
  *(v1 - 168) = v0 + 664;
  *(v1 - 160) = v0 + 656;
  *(v1 - 152) = v0;
  v2 = *(v0 + 680);
}

uint64_t OUTLINED_FUNCTION_394()
{
  v2 = *(v0 + 160);

  return sub_1AC79FDE8();
}

uint64_t OUTLINED_FUNCTION_395()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v1);
  v4 = *(v2 + 920);
  v5 = *(v2 + 912);
  return result;
}

uint64_t OUTLINED_FUNCTION_396()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_397()
{
  v2 = *(v0 + 920);

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_399@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + v1;
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_400@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 48);

  return sub_1AC68A130(v1, v2);
}

uint64_t OUTLINED_FUNCTION_401()
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_404()
{
  v2 = *(v0 - 152);
  v3 = *(v2 + 920);
  v4 = *(v2 + 856);
}

uint64_t OUTLINED_FUNCTION_406()
{
  *(v2 - 176) = v1;
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
}

uint64_t OUTLINED_FUNCTION_407@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_409()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_410(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_411(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_412()
{
  v1[170] = v0;
  v3 = v1[127];
  v4 = v1[128];

  return sub_1AC60C718(v4, v3);
}

uint64_t OUTLINED_FUNCTION_413()
{
  v3 = *(v0 + *(v1 + 60));
}

uint64_t OUTLINED_FUNCTION_415()
{
  v2 = *(v0 + 920);

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_419@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16 * v1 + 32);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_421()
{
  v2 = *(v0 + 1096);
}

uint64_t OUTLINED_FUNCTION_426(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(v18 + *(a18 + 20));
}

uint64_t OUTLINED_FUNCTION_430()
{
}

uint64_t OUTLINED_FUNCTION_436()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_1AC684A1C();
}

uint64_t OUTLINED_FUNCTION_444(uint64_t a1)
{
  *(v1 + 1656) = a1;

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_446()
{
  v3 = *(v0 + *(v1 + 20));
}

uint64_t OUTLINED_FUNCTION_448()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_449()
{
  v3 = *(v0 + *(v1 + 60));
}

uint64_t OUTLINED_FUNCTION_450()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t OUTLINED_FUNCTION_451()
{
  v3 = *(v0 + *(v1 + 52));
}

uint64_t OUTLINED_FUNCTION_452(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1AC5CFE74(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_453()
{
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[85];
  v6 = v0[84];
  sub_1AC5CA508();
  *(v1 - 104) = v6;
}

void OUTLINED_FUNCTION_464()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_466()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_468()
{
  v3 = *(v0 + *(v1 + 52));
}

void OUTLINED_FUNCTION_471(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3].n128_u8[0] = v2;
}

void OUTLINED_FUNCTION_472(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_476()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t OUTLINED_FUNCTION_478()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_484()
{
  *(v1 + 14) = v0;
  v3 = *(v2 - 144);
  v4 = *(v2 - 144);
}

uint64_t OUTLINED_FUNCTION_486(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = a1 + v20;
  v24 = *(a20 + 48);

  return sub_1AC68A130(v21, v23);
}

uint64_t OUTLINED_FUNCTION_487@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(v2 + 480) = *v4;
  *(v2 + 488) = v5;
  *(v2 + 496) = v6;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_488()
{

  return sub_1AC7A0CB8();
}

uint64_t OUTLINED_FUNCTION_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v15 - 96) = a1;
  *v13 = a13;

  return sub_1AC68A30C(v14 + 96, v14 + 56);
}

uint64_t OUTLINED_FUNCTION_493()
{
  v2 = *(v0 + 600);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_494()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_501()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
}

char *OUTLINED_FUNCTION_518()
{
  v3 = *(v2 + 48);
  *v0 = *v1;
  return v1 + v3;
}

__n128 OUTLINED_FUNCTION_519(unint64_t a1)
{
  v2[3].n128_u64[1] = a1;
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_521()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_522(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

id OUTLINED_FUNCTION_525()
{
  v1[59] = v0;
  v3 = v1[37];
  v4 = v1[34];
  v1[29] = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_526()
{
  v3 = *(v0 + *(v1 + 60));
}

uint64_t OUTLINED_FUNCTION_527()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t OUTLINED_FUNCTION_528()
{
  v3 = *(v0 + *(v1 + 52));
}

uint64_t OUTLINED_FUNCTION_529()
{
  v3 = *(v0 + *(v1 + 20));
}

uint64_t OUTLINED_FUNCTION_530()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 168);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_532(uint64_t a1)
{
  v3 = a1 + 32;
  v4 = *(v1 - 104);

  return sub_1AC68A30C(v4, v3);
}

void *OUTLINED_FUNCTION_533()
{

  return sub_1AC6314F8((v0 > 1), v1, 1);
}

void *OUTLINED_FUNCTION_534()
{

  return sub_1AC6314F8(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_535(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_536()
{
  v3 = v0 + *(v1 + 36);

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

uint64_t OUTLINED_FUNCTION_537(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
}

Class OUTLINED_FUNCTION_538()
{
  v1[14] = v0;
  v4 = *(v1[12] + v2);
  v1[15] = v4;

  return object_getClass(v4);
}

uint64_t OUTLINED_FUNCTION_539()
{
  *(v2 + 1256) = *(v0 + v1);

  return type metadata accessor for NormalizingTranscriber(0);
}

uint64_t OUTLINED_FUNCTION_540()
{
  *(v2 + 1336) = *(v0 + v1);

  return type metadata accessor for SpeechDetector();
}

uint64_t OUTLINED_FUNCTION_541()
{
  *(v2 + 1176) = *(v0 + v1);

  return type metadata accessor for SpeechTranscriber();
}

uint64_t OUTLINED_FUNCTION_542()
{
  *(v2 + 1216) = *(v0 + v1);

  return type metadata accessor for DictationTranscriber(0);
}

uint64_t OUTLINED_FUNCTION_543()
{
  *(v2 + 1136) = *(v0 + v1);

  return type metadata accessor for Transcriber();
}

uint64_t OUTLINED_FUNCTION_544()
{
  *(v1 + 1096) = v0;
  v3 = *(v1 + 784);
}

void OUTLINED_FUNCTION_545()
{
  v2 = *(*(v0 - 152) + 1056);

  JUMPOUT(0x1B26E95B0);
}

uint64_t OUTLINED_FUNCTION_546()
{
  *(v1 + 1296) = *(v0 + v2);

  return type metadata accessor for EndpointDetector();
}

uint64_t OUTLINED_FUNCTION_547()
{

  return sub_1AC61B988(v1 + v2, v0);
}

uint64_t OUTLINED_FUNCTION_548()
{
  v2 = *(v0 - 8);

  return type metadata accessor for Transcriber();
}

uint64_t OUTLINED_FUNCTION_549()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_550()
{
}

uint64_t OUTLINED_FUNCTION_552()
{
  v2 = *(*(v0 - 152) + 944);

  return swift_unknownObjectRetain();
}

void *OUTLINED_FUNCTION_553(void *a1)
{

  return sub_1AC6314F8(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_554()
{
  *(v1 + 1336) = *(v0 + v2);

  return type metadata accessor for SpeechDetector();
}

uint64_t OUTLINED_FUNCTION_556()
{

  return sub_1AC684A1C();
}

uint64_t OUTLINED_FUNCTION_557()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_558()
{
  v1[211] = v0;
  v3 = v1[203];
  v4 = v1[184];
  v5 = v1[137];
  v6 = v1[87];
}

uint64_t OUTLINED_FUNCTION_559()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_560()
{
  v2 = *(v0 + 600);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_561(uint64_t a1)
{
  *(v1 + 1704) = a1;
}

uint64_t OUTLINED_FUNCTION_562()
{
  v3 = *(v0 - 1);
  v2 = *v0;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_563()
{

  return sub_1AC79FFF8();
}

uint64_t OUTLINED_FUNCTION_565()
{

  return sub_1AC79FFF8();
}

uint64_t OUTLINED_FUNCTION_566(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 + *(a21 + 20));
}

uint64_t OUTLINED_FUNCTION_567()
{
  v2 = *(v0 + 1488);
  v3 = *(v0 + 696);

  return type metadata accessor for LanguageDetectorWorker();
}

void OUTLINED_FUNCTION_568()
{
  v2 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_569()
{
  v2 = *(v0 + 184);
}

uint64_t OUTLINED_FUNCTION_570()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_1AC5CFE74(v2, v3, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_571()
{
  *(v2 + 1296) = *(v0 + v1);

  return type metadata accessor for EndpointDetector();
}

unint64_t OUTLINED_FUNCTION_575()
{
  v2 = *(v0 + 248);

  return sub_1AC6E08C4(v2);
}

void OUTLINED_FUNCTION_576()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t OUTLINED_FUNCTION_577()
{
  v3 = *(v0 + *(v1 + 36));
}

uint64_t OUTLINED_FUNCTION_578(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1AC5CFE74(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_579()
{
  v3 = *(v0 + *(v1 + 48));
}

__n128 OUTLINED_FUNCTION_580@<Q0>(__n128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10)
{
  result = a10;
  a1[2] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_582(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_595(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(*(v2 + 920), a2, 1, *(v2 + 848));
}

void OUTLINED_FUNCTION_603(uint64_t a1@<X8>)
{
  v3 = v2[14];
  v2[6] = 1;
  v2[7] = v1;
  v2[8] = a1;
}

uint64_t OUTLINED_FUNCTION_610()
{
  result = v0 + 64;
  v2 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  result = *(v11 + 128);
  v13 = *(v11 + 112);
  v14 = *a11;
  return result;
}

void *OUTLINED_FUNCTION_628(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  result[5] = v3;
  result[6] = v2;
  return result;
}

void OUTLINED_FUNCTION_629()
{
  *(v1 + 1576) = v3;
  *(v1 + 1568) = v0;
  v4 = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_638@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 992) = *(a1 + 32);
  v3 = *(a1 + 40);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_641()
{
  v2 = *(v0 + 48);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_642()
{
  v3 = v0[115];
  v4 = v0[106];
  v5 = v0[105];
  v6 = *(v1 - 136);
}

uint64_t OUTLINED_FUNCTION_643()
{
  v4 = *(*(v1 + v0) + 16);
}

BOOL OUTLINED_FUNCTION_645()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_646()
{

  return sub_1AC7A0178();
}

uint64_t OUTLINED_FUNCTION_647()
{
}

uint64_t OUTLINED_FUNCTION_649()
{
  v3 = *(v1 - 104);

  return sub_1AC68A30C(v3, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_650()
{
  v3 = *(v0 + *(v1 + 20));
}

uint64_t OUTLINED_FUNCTION_651()
{
  v2 = *(v0 + 912);

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_652()
{
  v3 = *(v1 - 104);

  return sub_1AC5D9384((v0 + 136), v3);
}

uint64_t OUTLINED_FUNCTION_653()
{
  v2 = *(v0 - 128);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_654()
{

  return sub_1AC79FFF8();
}

uint64_t OUTLINED_FUNCTION_655()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_656()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_658()
{
  __swift_project_boxed_opaque_existential_1(*(v1 - 104), *(v0 + 200));

  return sub_1AC7A0D28();
}

void sub_1AC68CFAC(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1AC7A08E8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1AC631164();
    v32 = v37;
    v34 = sub_1AC6C18F8(v1);
    v35 = v3;
    v36 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v8 = v34;
        v7 = v35;
        v9 = v36;
        v10 = v1;
        sub_1AC63788C(v34, v35, v36, v1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v32;
        v37 = v32;
        v15 = *(v32 + 16);
        if (v15 >= *(v32 + 24) >> 1)
        {
          sub_1AC631164();
          v14 = v37;
        }

        *(v14 + 16) = v15 + 1;
        *(v14 + 8 * v15 + 32) = v13;
        v32 = v14;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v1 = v10;
          if (sub_1AC7A08B8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v20 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9C8, &qword_1AC7AB390);
          v21 = sub_1AC7A0478();
          sub_1AC7A0938();
          v21(v33, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v10;
          v16 = 1 << *(v10 + 32);
          if (v8 >= v16)
          {
            goto LABEL_32;
          }

          v17 = v8 >> 6;
          v18 = *(v29 + 8 * (v8 >> 6));
          if (((v18 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v10 + 36) != v7)
          {
            goto LABEL_34;
          }

          v19 = v18 & (-2 << (v8 & 0x3F));
          if (v19)
          {
            v16 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v20 = v30;
          }

          else
          {
            v22 = v17 << 6;
            v23 = v17 + 1;
            v24 = (v28 + 8 * v17);
            v20 = v30;
            while (v23 < (v16 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1AC637E98(v8, v7, 0);
                v16 = __clz(__rbit64(v25)) + v22;
                goto LABEL_27;
              }
            }

            sub_1AC637E98(v8, v7, 0);
          }

LABEL_27:
          v27 = *(v1 + 36);
          v34 = v16;
          v35 = v27;
          v36 = 0;
        }

        if (v5 == v20)
        {
          sub_1AC637E98(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1AC68D2C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_1AC68D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TranscriptionSegment();
    OUTLINED_FUNCTION_28_5(v6);
    sub_1AC6AA4FC(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v5, a2, type metadata accessor for TranscriptionSegment);
    v9 = a2;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v11 = type metadata accessor for TranscriptionSegment();
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

char *sub_1AC68D3EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1AC61C25C(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v4 = OUTLINED_FUNCTION_89();
    return MEMORY[0x1B26E95B0](v4);
  }

  result = sub_1AC7A08E8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_1AC68D47C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_1AC61C24C(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1AC61C25C(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    v5 = OUTLINED_FUNCTION_89();
    return MEMORY[0x1B26E95B0](v5);
  }

  result = sub_1AC7A08E8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1AC68D514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_1AC68D548(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC68D564, v1);
}

void sub_1AC68D564()
{
  OUTLINED_FUNCTION_45();
  v18 = v0;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v3, qword_1ED9386C8);
  v4 = *v2 == *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID) && v2[1] == *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID + 8);
  if (v4 || (sub_1AC7A0D38() & 1) != 0)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientInfo;
    OUTLINED_FUNCTION_134_3();
    swift_beginAccess();
    sub_1AC68793C(v5, v6 + v7);
    swift_endAccess();
    v8 = *(v6 + 112);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *(v9 + 16) = v5;
    OUTLINED_FUNCTION_30(dword_1AC7A83C0);
    v16 = v10;
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_1AC68D76C;

    v16();
  }

  else
  {
    v12 = sub_1AC79FDC8();
    v13 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_366(v13))
    {
      v14 = OUTLINED_FUNCTION_150();
      v15 = OUTLINED_FUNCTION_48();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1AC5CFE74(0xD000000000000019, 0x80000001AC7B7500, &v17);
      _os_log_impl(&dword_1AC5BC000, v12, v13, "Failed precondition: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_70();

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1AC68D76C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_1AC66D410;
  }

  else
  {
    v12 = v3[6];
    v11 = v3[7];

    v10 = sub_1AC68D878;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC68D8B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;

      v4(&v7);
      if (v3)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1AC68D948()
{
  OUTLINED_FUNCTION_104();
  v160 = v1;
  v155 = v2;
  v4 = v3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  v5 = OUTLINED_FUNCTION_80(v151);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v150 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v10 = OUTLINED_FUNCTION_167(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v143 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v142 = &v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v163 = &v140 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v140 - v19;
  v20 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v21 = v20[12];
  v148 = *(v4 + v21);
  v22 = *(v4 + v21 + 8);
  v161 = v0;
  v162 = v4;
  v23 = (v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures + v21);
  v24 = *v23;
  v164 = *(v23 + 1);
  v165 = v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  v25 = *(v4 + v20[14]);
  v168 = v25;
  v166 = &unk_1F212FA88;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA40, qword_1AC7B2AA0);
  sub_1AC5C8B9C(&qword_1EB56ABF0, &qword_1EB56CA38, &unk_1AC7AB4D0);
  sub_1AC5C8B9C(&qword_1EB56AC90, &qword_1EB56CA40, qword_1AC7B2AA0);
  sub_1AC6AA608();
  v26 = sub_1AC7A04B8();

  v152 = v22;
  v149 = v24;
  if (!v22)
  {
    v27 = v26 ^ 1 | v24;
    goto LABEL_6;
  }

  v27 = 0;
  if (v26 & ~v24)
  {
LABEL_6:
    v29 = v162;
    v28 = v163;
    v30 = v164;
    goto LABEL_7;
  }

  v29 = v162;
  v28 = v163;
  v30 = v164;
  if (v164)
  {
    sub_1AC5CF764(0, &unk_1EB56AB00, 0x1E699B9C8);
    v31 = v152;
    v32 = v30;
    v27 = sub_1AC7A0758();
  }

LABEL_7:
  sub_1AC72464C();
  sub_1AC752090(v33, v25);
  v35 = v34;
  v36 = v165;
  v37 = *(v165 + v20[14]);

  v38 = OUTLINED_FUNCTION_123();
  sub_1AC752090(v38, v39);
  v158 = v35;
  v157 = sub_1AC61C254(v40);
  v159 = MEMORY[0x1B26E85C0](v29, v36);
  sub_1AC625D20(*(v36 + v20[5]));
  if (!v41)
  {
    __break(1u);
    goto LABEL_140;
  }

  v42 = sub_1AC79FF58();

  v164 = SFEntitledAssetTypeForTaskName(v42);

  sub_1AC625D20(*(v29 + v20[5]));
  if (!v43)
  {
LABEL_140:
    __break(1u);
    return;
  }

  v44 = sub_1AC79FF58();

  v45 = SFEntitledAssetTypeForTaskName(v44);

  v46 = v20[9];
  v47 = v29 + v46;
  v144 = v165 + v46;
  sub_1AC6F7110();
  v154 = v48;
  v49 = *v155;
  v50 = v155[1];
  v51 = v161;
  v52 = *(v161 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID + 8);
  v53 = *v155 == *(v161 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID) && v50 == v52;
  v155 = *(v161 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID);
  v147 = v52;
  v146 = v49;
  v145 = v50;
  if (v53)
  {
    LODWORD(v163) = 1;
  }

  else
  {
    LODWORD(v163) = sub_1AC7A0D38();
  }

  v54 = v156;
  sub_1AC6AA65C(v160, v156, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v55 = type metadata accessor for SpeechAnalyzer.Options(0);
  OUTLINED_FUNCTION_170_2(v54);
  if (v53)
  {
    sub_1AC5C9624(v54, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v56 = 5;
  }

  else
  {
    v56 = *(v54 + *(v55 + 20));
    OUTLINED_FUNCTION_6_6();
    sub_1AC6AA714(v54, v57);
  }

  v58 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_analysisOptions;
  sub_1AC6AA65C(v51 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_analysisOptions, v28, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_170_2(v28);
  if (v53)
  {
    sub_1AC5C9624(v28, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v59 = 5;
  }

  else
  {
    v59 = *(v28 + *(v55 + 20));
    OUTLINED_FUNCTION_6_6();
    sub_1AC6AA714(v60, v61);
  }

  v153 = v27;
  v141 = v58;
  if (v56 == 3)
  {
    if (v59 != 3)
    {
      goto LABEL_24;
    }

LABEL_33:
    if (v27)
    {
      if ((v157 & 1) == 0)
      {
        OUTLINED_FUNCTION_220_0();
        v81 = 1;
LABEL_58:
        v83 = MEMORY[0x1E69E7CC0];
LABEL_59:
        OUTLINED_FUNCTION_45_6();
        sub_1AC7A09C8();

        OUTLINED_FUNCTION_42_5();
        v168 = v70 + 4;
        v169 = v69;
        sub_1AC61BA94();
        OUTLINED_FUNCTION_123();
        v71 = sub_1AC7A0458();
        v73 = v72;

        MEMORY[0x1B26E8C40](v71, v73);

        OUTLINED_FUNCTION_16_7();
        OUTLINED_FUNCTION_143();
        sub_1AC7A0458();

        v74 = OUTLINED_FUNCTION_170();
        MEMORY[0x1B26E8C40](v74);

        if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
        {
          OUTLINED_FUNCTION_35_6();
          v83 = v128;
        }

        OUTLINED_FUNCTION_59_4();
        v51 = v161;
        v45 = v47;
        if (v75)
        {
          OUTLINED_FUNCTION_34_6();
          v83 = v129;
        }

        OUTLINED_FUNCTION_60_4();
        if (v159)
        {
          OUTLINED_FUNCTION_161_2();
          if (!v53)
          {
            v159 = 0;
            v82 = 1;
            goto LABEL_92;
          }

          if ((v154 & 1) == 0)
          {
            OUTLINED_FUNCTION_58_3();
            v78 = v81;
            v159 = 0;
            v79 = 1;
            goto LABEL_89;
          }

          if ((v163 & 1) == 0)
          {
            v159 = 0;
LABEL_85:
            v80 = 1;
LABEL_91:
            LODWORD(v165) = v80;
LABEL_122:
            LODWORD(v162) = v80;
LABEL_123:
            OUTLINED_FUNCTION_45_6();
            sub_1AC7A09C8();

            OUTLINED_FUNCTION_42_5();
            v168 = v111;
            v169 = v110;
            MEMORY[0x1B26E8C40](v146, v145);
            OUTLINED_FUNCTION_16_7();
            MEMORY[0x1B26E8C40](v155, v147);
            if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
            {
              OUTLINED_FUNCTION_35_6();
              v83 = v136;
            }

            OUTLINED_FUNCTION_59_4();
            if (v75)
            {
              OUTLINED_FUNCTION_34_6();
              v83 = v137;
            }

            OUTLINED_FUNCTION_60_4();
            if (v81)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          }

          v159 = 0;
          v67 = 1;
LABEL_69:
          LODWORD(v165) = v67;
          goto LABEL_100;
        }

        v159 = 0;
LABEL_71:
        OUTLINED_FUNCTION_45_6();
        sub_1AC7A09C8();

        v168 = 0x6420656C61636F6CLL;
        v169 = 0xEF20646572697365;
        sub_1AC79FB18();
        sub_1AC6A78C4(&qword_1EB56B458, MEMORY[0x1E6969770]);
        OUTLINED_FUNCTION_170();
        v76 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v76);

        OUTLINED_FUNCTION_16_7();
        OUTLINED_FUNCTION_170();
        v77 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v77);

        if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
        {
          OUTLINED_FUNCTION_35_6();
          v83 = v130;
        }

        OUTLINED_FUNCTION_59_4();
        if (v75)
        {
          OUTLINED_FUNCTION_34_6();
          v83 = v131;
        }

        OUTLINED_FUNCTION_60_4();
        OUTLINED_FUNCTION_161_2();
        if (v53)
        {
          if (v154)
          {
            if (v163)
            {
              LODWORD(v165) = 0;
LABEL_99:
              v67 = 1;
LABEL_100:
              LODWORD(v162) = v67;
              if (v81)
              {
                goto LABEL_128;
              }

LABEL_109:
              OUTLINED_FUNCTION_45_6();
              sub_1AC7A09C8();

              OUTLINED_FUNCTION_42_5();
              v168 = v101 + 6;
              v169 = v100;
              v102 = v142;
              sub_1AC6AA65C(v160, v142, &qword_1EB56C7D0, &qword_1AC7ACB40);
              OUTLINED_FUNCTION_170_2(v102);
              if (v53)
              {
                sub_1AC5C9624(v102, &qword_1EB56C7D0, &qword_1AC7ACB40);
                v103 = 5;
              }

              else
              {
                v103 = *(v102 + *(v55 + 20));
                OUTLINED_FUNCTION_6_6();
                sub_1AC6AA714(v102, v104);
              }

              LOBYTE(v166) = v103;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA48, &qword_1AC7AB4E0);
              v105 = OUTLINED_FUNCTION_259_0();
              MEMORY[0x1B26E8C40](v105);

              OUTLINED_FUNCTION_16_7();
              v106 = v143;
              sub_1AC6AA65C(v51 + v141, v143, &qword_1EB56C7D0, &qword_1AC7ACB40);
              OUTLINED_FUNCTION_170_2(v106);
              if (v53)
              {
                sub_1AC5C9624(v106, &qword_1EB56C7D0, &qword_1AC7ACB40);
                v107 = 5;
              }

              else
              {
                v107 = *(v106 + *(v55 + 20));
                OUTLINED_FUNCTION_6_6();
                sub_1AC6AA714(v106, v108);
              }

              LOBYTE(v166) = v107;
              v109 = OUTLINED_FUNCTION_259_0();
              MEMORY[0x1B26E8C40](v109);

              if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
              {
                OUTLINED_FUNCTION_35_6();
                v83 = v138;
              }

              OUTLINED_FUNCTION_59_4();
              if (v75)
              {
                OUTLINED_FUNCTION_34_6();
                v83 = v139;
              }

              OUTLINED_FUNCTION_60_4();
              goto LABEL_128;
            }

            LODWORD(v165) = 0;
            goto LABEL_121;
          }

          OUTLINED_FUNCTION_58_3();
          v78 = v81;
          LODWORD(v165) = 0;
          goto LABEL_103;
        }

        LODWORD(v165) = 0;
        goto LABEL_93;
      }

      if ((v159 & 1) == 0)
      {
        v81 = 1;
        v83 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_96_3();
        goto LABEL_71;
      }

      OUTLINED_FUNCTION_161_2();
      if (!v53)
      {
        v81 = 1;
        v83 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_96_3();
        goto LABEL_92;
      }

      if (v154)
      {
        v81 = 1;
        v83 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_96_3();
        LODWORD(v165) = v62;
        LODWORD(v162) = v62;
        if ((v163 & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_128;
      }

      OUTLINED_FUNCTION_58_3();
      v78 = 1;
      v83 = MEMORY[0x1E69E7CC0];
LABEL_88:
      OUTLINED_FUNCTION_96_3();
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_220_0();
    v81 = 1;
LABEL_44:
    OUTLINED_FUNCTION_45_6();
    sub_1AC7A09C8();
    MEMORY[0x1B26E8C40](0xD000000000000020, 0x80000001AC7B7430);
    LOBYTE(v166) = v148;
    v167 = v152;
    OUTLINED_FUNCTION_167_0();
    sub_1AC7A0AF8();
    OUTLINED_FUNCTION_16_7();
    LOBYTE(v166) = v149;
    v167 = v30;
    OUTLINED_FUNCTION_167_0();
    sub_1AC7A0AF8();
    v63 = v168;
    v64 = v169;
    v83 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_35_6();
      v83 = v126;
    }

    v65 = v83[2];
    if (v65 >= v83[3] >> 1)
    {
      OUTLINED_FUNCTION_34_6();
      v83 = v127;
    }

    v83[2] = v65 + 1;
    v66 = &v83[2 * v65];
    v66[4] = v63;
    v66[5] = v64;
    if ((v157 & 1) == 0)
    {
      goto LABEL_59;
    }

    v45 = v47;
    if ((v159 & 1) == 0)
    {
      OUTLINED_FUNCTION_96_3();
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_161_2();
    if (!v53)
    {
      OUTLINED_FUNCTION_96_3();
      LODWORD(v165) = v68;
LABEL_93:
      OUTLINED_FUNCTION_45_6();
      sub_1AC7A09C8();

      OUTLINED_FUNCTION_42_5();
      v168 = v85;
      v169 = v84;
      v166 = v45;
      type metadata accessor for SFEntitledAssetType(0);
      v86 = OUTLINED_FUNCTION_259_0();
      MEMORY[0x1B26E8C40](v86);

      OUTLINED_FUNCTION_16_7();
      v166 = v164;
      v87 = OUTLINED_FUNCTION_259_0();
      MEMORY[0x1B26E8C40](v87);

      if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
      {
        OUTLINED_FUNCTION_35_6();
        v83 = v132;
      }

      OUTLINED_FUNCTION_59_4();
      if (v75)
      {
        OUTLINED_FUNCTION_34_6();
        v83 = v133;
      }

      OUTLINED_FUNCTION_60_4();
      if (v154)
      {
        if (v163)
        {
          goto LABEL_99;
        }

LABEL_121:
        v80 = 1;
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_58_3();
      v78 = v81;
      goto LABEL_103;
    }

    if (v154)
    {
      if ((v163 & 1) == 0)
      {
        OUTLINED_FUNCTION_96_3();
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_96_3();
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_58_3();
    v78 = v81;
    goto LABEL_88;
  }

  if (v56 != 4 || v59 == 4)
  {
    goto LABEL_33;
  }

LABEL_24:
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_220_0();
    v81 = 0;
    goto LABEL_44;
  }

  if ((v157 & 1) == 0)
  {
    OUTLINED_FUNCTION_220_0();
    v81 = 0;
    goto LABEL_58;
  }

  if ((v159 & 1) == 0)
  {
    v81 = 0;
    OUTLINED_FUNCTION_96_3();
    v83 = MEMORY[0x1E69E7CC0];
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_161_2();
  if (!v53)
  {
    v81 = 0;
    OUTLINED_FUNCTION_96_3();
    v83 = MEMORY[0x1E69E7CC0];
LABEL_92:
    LODWORD(v165) = v82;
    goto LABEL_93;
  }

  if (v154)
  {
    OUTLINED_FUNCTION_96_3();
    v83 = MEMORY[0x1E69E7CC0];
    if (v163)
    {
      LODWORD(v165) = 1;
      LODWORD(v162) = 1;
      goto LABEL_109;
    }

    v81 = 0;
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_58_3();
  v78 = 0;
  OUTLINED_FUNCTION_96_3();
  v83 = MEMORY[0x1E69E7CC0];
LABEL_89:
  LODWORD(v165) = v79;
LABEL_103:
  OUTLINED_FUNCTION_45_6();
  sub_1AC7A09C8();

  OUTLINED_FUNCTION_42_5();
  v168 = v89 + 4;
  v169 = v88;
  OUTLINED_FUNCTION_167_0();
  sub_1AC6AA65C(v90, v91, v92, v93);
  v94 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v94);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_167_0();
  sub_1AC6AA65C(v95, v96, v97, v98);
  OUTLINED_FUNCTION_74_4();
  v99 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v99);

  if ((OUTLINED_FUNCTION_201_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_6();
    v83 = v134;
  }

  OUTLINED_FUNCTION_59_4();
  v81 = v78;
  if (v75)
  {
    OUTLINED_FUNCTION_34_6();
    v83 = v135;
  }

  v51 = v55;
  OUTLINED_FUNCTION_60_4();
  v55 = v45;
  if ((v163 & 1) == 0)
  {
    LODWORD(v162) = 0;
    goto LABEL_123;
  }

  LODWORD(v162) = 0;
  if ((v81 & 1) == 0)
  {
    goto LABEL_109;
  }

LABEL_128:
  if (v83[2])
  {
    sub_1AC6E8028(*(v51 + 112));
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v112 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v112, qword_1ED9386C8);

    v113 = sub_1AC79FDC8();
    v114 = sub_1AC7A05E8();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = OUTLINED_FUNCTION_448();
      v168 = swift_slowAlloc();
      *v115 = 136446466;
      v116 = OUTLINED_FUNCTION_157_1();
      v119 = sub_1AC5CFE74(v116, v117, v118);

      *(v115 + 4) = v119;
      *(v115 + 12) = 2080;
      v166 = v83;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
      OUTLINED_FUNCTION_100_3();
      sub_1AC5C8B9C(v120, v121, &unk_1AC7A9BE0);
      v122 = sub_1AC79FEA8();
      v124 = v123;

      v125 = sub_1AC5CFE74(v122, v124, &v168);

      *(v115 + 14) = v125;
      _os_log_impl(&dword_1AC5BC000, v113, v114, "SpeechRecognizerWorker.isRecognizerUsable: Recognizer %{public}s not usable because %s", v115, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC68E9AC()
{
  OUTLINED_FUNCTION_85();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for ClientInfo(0);
  v1[12] = v7;
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v13 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v1[16] = v13;
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  v1[19] = OUTLINED_FUNCTION_126();
  v19 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v1[20] = v19;
  OUTLINED_FUNCTION_167(v19);
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_126();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v22);
  v24 = *(v23 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

uint64_t sub_1AC68EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_112_3();
  v20 = v18[23];
  v19 = v18[24];
  v22 = v18[19];
  v21 = v18[20];
  v23 = v18[12];
  v24 = v18[7];
  sub_1AC79F958();
  v25 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_265_0(v25, 1);
  OUTLINED_FUNCTION_265_0(v20, 1);
  v18[25] = v24[2];
  v18[26] = v24[3];
  v18[27] = v24[6];
  v18[28] = v24[7];
  v18[29] = *v24;
  v18[30] = v24[1];
  sub_1AC6AA65C(v24 + *(v23 + 32), v22, &qword_1EB56CA50, &qword_1AC7AB4F0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
  {
    sub_1AC5C9624(v18[19], &qword_1EB56CA50, &qword_1AC7AB4F0);
  }

  else
  {
    v26 = v18[23];
    v27 = v18[24];
    v29 = v18[20];
    v28 = v18[21];
    v30 = v18[19];
    v24 = &unk_1AC7A9520;
    sub_1AC5C9624(v26, &qword_1EB56B8F0, &unk_1AC7A9520);
    sub_1AC5C9624(v27, &qword_1EB56B8F0, &unk_1AC7A9520);
    v31 = OUTLINED_FUNCTION_117();
    sub_1AC6AA6B8(v31, v32, v33);
    v22 = *(*(v17 - 8) + 16);
    v34 = OUTLINED_FUNCTION_73_1();
    v22(v34);
    OUTLINED_FUNCTION_265_0(v27, 0);
    (v22)(v26, v28 + *(v29 + 20), v17);
    sub_1AC6AA714(v28, type metadata accessor for ClientInfo.LoggingInfo);
    OUTLINED_FUNCTION_265_0(v26, 0);
  }

  v35 = v18[16];
  v36 = v18[6];
  v37 = objc_opt_self();
  v18[31] = v37;
  v38 = [v37 processInfo];
  [v38 systemUptime];
  v18[32] = v39;

  v40 = sub_1AC625D20(*(v36 + *(v35 + 20)));
  v18[33] = v40;
  v18[34] = v41;
  if (!v41)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v40, v41, v42);
  }

  v44 = v18[22];
  v43 = v18[23];
  OUTLINED_FUNCTION_171_2();
  sub_1AC6AA65C(v45, v46, v47, &unk_1AC7A9520);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v17);
  v49 = OUTLINED_FUNCTION_36_5();
  sub_1AC5C9624(v49, v50, v51);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_1EB56B060 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    OUTLINED_FUNCTION_90_4();
    v18[38] = qword_1EB56E6E8;
    mach_continuous_time();
    OUTLINED_FUNCTION_253_0();
    OUTLINED_FUNCTION_148_2();
    sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
    OUTLINED_FUNCTION_2_7();
    sub_1AC6AA4FC(a13, v22, v52);
    v53 = sub_1AC6F6CB0(v22);
    v18[39] = v53;
    sub_1AC6B87D0();
    v18[40] = v54;
    sub_1AC6DC984();
    v18[41] = v55;
    sub_1AC6AA65C(a16, a17, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v56 = type metadata accessor for SpeechAnalyzer.Options(0);
    v57 = __swift_getEnumTagSinglePayload(a17, 1, v56);
    v58 = v18[15];
    if (v57 == 1)
    {
      sub_1AC5C9624(v18[15], &qword_1EB56C7D0, &qword_1AC7ACB40);
      v59 = 0;
    }

    else
    {
      v59 = sub_1AC6D99DC();
      OUTLINED_FUNCTION_6_6();
      sub_1AC6AA714(v58, v63);
    }

    v18[42] = v59;
    v64 = v18[17];
    v65 = v18[10];
    v66 = v18[6];
    OUTLINED_FUNCTION_2_7();
    sub_1AC6AA4FC(v67, v68, v69);
    if (v65)
    {
      v70 = *(v18[10] + 112);
      OUTLINED_FUNCTION_104_3(OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements);

      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_403();

      return MEMORY[0x1EEE6DFA0](v40, v41, v42);
    }

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v72 = sub_1AC79FDE8();
    v18[53] = __swift_project_value_buffer(v72, qword_1ED9386C8);
    v73 = sub_1AC79FDC8();
    v74 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_366(v74))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_250_0(&dword_1AC5BC000, v75, v76, "SpeechRecognizerWorker: Making new EARSpeechRecognizer");
      OUTLINED_FUNCTION_96_0();
    }

    v77 = v18[31];

    v18[5] = MEMORY[0x1E69E7CC0];
    v78 = [v77 processInfo];
    [v78 systemUptime];
    v18[54] = v79;

    v80 = v24[2];
    v18[55] = sub_1AC643EA0();

    MEMORY[0x1B26E8CF0](v81);
    OUTLINED_FUNCTION_233_0();
    if (v83)
    {
      OUTLINED_FUNCTION_9(v82);
      sub_1AC7A0178();
    }

    OUTLINED_FUNCTION_157_1();
    sub_1AC7A0198();
    v18[56] = v18[5];
    if (qword_1ED938050 != -1)
    {
      OUTLINED_FUNCTION_9_7();
    }

    v84 = v18[11];
    v85 = v18[7];
    sub_1AC6B87D0();
    v18[57] = v86;
    v87 = [v53 modelOptions];
    v88 = [v87 customLm];

    v18[58] = sub_1AC69429C(v88);
    v89 = swift_task_alloc();
    v18[59] = v89;
    *v89 = v18;
    OUTLINED_FUNCTION_95_2(v89);
    OUTLINED_FUNCTION_192_1();
    OUTLINED_FUNCTION_403();

    return sub_1AC638E38();
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      OUTLINED_FUNCTION_9_7();
    }

    v60 = swift_task_alloc();
    v18[35] = v60;
    *v60 = v18;
    OUTLINED_FUNCTION_85_0(v60);
    OUTLINED_FUNCTION_403();

    return sub_1AC63A5F8();
  }
}

uint64_t sub_1AC68F198()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 280);
  *v6 = *v1;
  *(v5 + 288) = v9;
  *(v5 + 296) = v0;

  if (v0)
  {
    v10 = *(v5 + 272);
  }

  else
  {
    *(v5 + 528) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC68F2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_112_3();
  if ((*(v17 + 528) & 1) == 0)
  {
    if (qword_1EB56B060 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v20 = *(v17 + 288);
    v21 = *(v17 + 264);
    v22 = *(v17 + 272);
    v23 = *(v17 + 192);
    sub_1AC728074();
  }

  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  OUTLINED_FUNCTION_90_4();
  *(v17 + 304) = qword_1EB56E6E8;
  mach_continuous_time();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_148_2();
  sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(a13, v18, v24);
  v25 = sub_1AC6F6CB0(v18);
  *(v17 + 312) = v25;
  sub_1AC6B87D0();
  *(v17 + 320) = v26;
  sub_1AC6DC984();
  *(v17 + 328) = v27;
  sub_1AC6AA65C(a16, a17, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v28 = type metadata accessor for SpeechAnalyzer.Options(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a17, 1, v28);
  v30 = *(v17 + 120);
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(*(v17 + 120), &qword_1EB56C7D0, &qword_1AC7ACB40);
    v31 = 0;
  }

  else
  {
    v31 = sub_1AC6D99DC();
    OUTLINED_FUNCTION_6_6();
    sub_1AC6AA714(v30, v32);
  }

  *(v17 + 336) = v31;
  v33 = *(v17 + 136);
  v34 = *(v17 + 80);
  v35 = *(v17 + 48);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v36, v37, v38);
  if (v34)
  {
    v39 = *(*(v17 + 80) + 112);
    OUTLINED_FUNCTION_104_3(OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements);

    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_403();

    return MEMORY[0x1EEE6DFA0](v40, v41, v42);
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v44 = sub_1AC79FDE8();
    *(v17 + 424) = __swift_project_value_buffer(v44, qword_1ED9386C8);
    v45 = sub_1AC79FDC8();
    v46 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_366(v46))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_250_0(&dword_1AC5BC000, v47, v48, "SpeechRecognizerWorker: Making new EARSpeechRecognizer");
      OUTLINED_FUNCTION_96_0();
    }

    v49 = *(v17 + 248);

    *(v17 + 40) = MEMORY[0x1E69E7CC0];
    v50 = [v49 processInfo];
    [v50 systemUptime];
    *(v17 + 432) = v51;

    v52 = *(v19 + 16);
    *(v17 + 440) = sub_1AC643EA0();

    MEMORY[0x1B26E8CF0](v53);
    OUTLINED_FUNCTION_233_0();
    if (v55)
    {
      OUTLINED_FUNCTION_9(v54);
      sub_1AC7A0178();
    }

    OUTLINED_FUNCTION_157_1();
    sub_1AC7A0198();
    *(v17 + 448) = *(v17 + 40);
    if (qword_1ED938050 != -1)
    {
      OUTLINED_FUNCTION_9_7();
    }

    v56 = *(v17 + 88);
    v57 = *(v17 + 56);
    sub_1AC6B87D0();
    *(v17 + 456) = v58;
    v59 = [v25 modelOptions];
    v60 = [v59 customLm];

    *(v17 + 464) = sub_1AC69429C(v60);
    v61 = swift_task_alloc();
    *(v17 + 472) = v61;
    *v61 = v17;
    OUTLINED_FUNCTION_95_2(v61);
    OUTLINED_FUNCTION_192_1();
    OUTLINED_FUNCTION_403();

    return sub_1AC638E38();
  }
}

uint64_t sub_1AC68F694()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[10] + v0[44];
  OUTLINED_FUNCTION_12();
  v0[45] = *(v1 + 64);

  v2 = OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC68F710()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = v0[43];
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  OUTLINED_FUNCTION_228_0();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1AC7A6D00;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  sub_1AC79FF98();
  v0[46] = v6;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v7 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v7, qword_1ED9386C8);

  v8 = sub_1AC79FDC8();
  v9 = sub_1AC7A05D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_150();
    v28 = OUTLINED_FUNCTION_48();
    *v10 = 136446210;
    v11 = OUTLINED_FUNCTION_172();
    *(v10 + 4) = sub_1AC5CFE74(v11, v12, v13);
    _os_log_impl(&dword_1AC5BC000, v8, v9, "SpeechRecognizerWorker: Reusing EARSpeechRecognizer %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_96_0();
  }

  v15 = v0[41];
  v14 = v0[42];
  v16 = v0[39];
  v17 = v0[40];
  v0[47] = *(v1 + 16);
  v18 = v16;
  v19 = v17;
  v20 = v15;
  v21 = v14;
  v22 = swift_task_alloc();
  v0[48] = v22;
  *v22 = v0;
  v22[1] = sub_1AC68F904;
  v23 = v0[41];
  v24 = v0[42];
  v25 = v0[40];
  OUTLINED_FUNCTION_111_3(v0[39]);
  OUTLINED_FUNCTION_291();

  return sub_1AC5EAA10();
}

uint64_t sub_1AC68F904()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v3[52] = v0;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[49] = v12;
    *v12 = v7;
    v12[1] = sub_1AC68FA68;
    v13 = v3[47];
    OUTLINED_FUNCTION_111_3(v3[40]);

    return sub_1AC5EBB24();
  }
}

uint64_t sub_1AC68FA68()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v3[52] = v0;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[50] = v12;
    *v12 = v7;
    v12[1] = sub_1AC68FBC8;
    v13 = v3[47];

    return sub_1AC5E5590();
  }
}

uint64_t sub_1AC68FBC8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 400);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    *(v5 + 416) = v0;
  }

  else
  {
    *(v5 + 408) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC68FCD4()
{
  v67 = *(v0 + 360);
  v1 = *(v0 + 336);
  v63 = *(v0 + 368);
  v65 = *(v0 + 344);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v57 = *(v0 + 112);
  v59 = *(v0 + 408);
  v53 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v55 = *(v0 + 72);
  v61 = *(v0 + 64);
  v10 = *(v0 + 56);

  v11 = *(v7 + 48);
  v12 = (v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures + v11);
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v5 + v11;
  v16 = *(v15 + 8);
  *v15 = v13;
  *(v15 + 8) = v14;
  v17 = v14;

  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v5, v6, v18);
  OUTLINED_FUNCTION_30_3();
  sub_1AC6AA4FC(v10, v53, v19);
  sub_1AC6AA65C(v55, v57, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v20 = v59;

  v21 = *(v9 + 48);
  v22 = *(v9 + 52);
  swift_allocObject();

  v68 = sub_1AC6930DC(v65, v6, v53, v61, v57, v67, v20, v4);

  v23 = *(v0 + 328);
  v25 = *(v0 + 312);
  v24 = *(v0 + 320);
  v26 = *(v0 + 304);
  v28 = *(v0 + 264);
  v27 = *(v0 + 272);
  v29 = *(v0 + 184);
  v30 = *(v0 + 192);
  v52 = *(v0 + 408);
  v54 = *(v0 + 176);
  v56 = *(v0 + 168);
  v58 = *(v0 + 152);
  v60 = *(v0 + 144);
  v50 = *(v0 + 336);
  v51 = *(v0 + 136);
  v31 = *(v0 + 80);
  v62 = *(v0 + 112);
  v64 = *(v0 + 120);
  v66 = *(v0 + 104);
  v32 = mach_continuous_time();
  OUTLINED_FUNCTION_207_1(v32);

  v33 = OUTLINED_FUNCTION_74_0();
  sub_1AC5C9624(v33, v34, &unk_1AC7A9520);
  v35 = OUTLINED_FUNCTION_98();
  sub_1AC5C9624(v35, v36, &unk_1AC7A9520);
  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v51, v37);

  v46 = OUTLINED_FUNCTION_230_0(v38, v39, v40, v41, v42, v43, v44, v45, v49, v50, v51, v52, v54, v56, v58, v60, v62, v64, v66, v68);

  return v47(v46);
}

uint64_t sub_1AC68FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v16 = v14[45];
  v15 = v14[46];
  v18 = v14[42];
  v17 = v14[43];
  v19 = v14[40];
  v20 = v14[41];
  v21 = v14[39];
  v22 = v14[34];
  v40 = v14[23];
  v41 = v14[24];
  v42 = v14[17];
  v23 = v14[10];

  OUTLINED_FUNCTION_83_4();
  sub_1AC5C9624(v24, v25, v26);
  OUTLINED_FUNCTION_83_4();
  sub_1AC5C9624(v27, v28, v29);
  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v42, v30);
  v43 = v14[52];
  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_115();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v43, a12, a13, a14);
}

uint64_t sub_1AC6900DC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  v5 = v2[59];
  v6 = *v1;
  OUTLINED_FUNCTION_19();
  *v7 = v6;
  v3[60] = v8;
  v3[61] = v0;

  v9 = v2[58];
  v10 = v2[57];
  if (v0)
  {
    v11 = v3[56];
    v12 = v3[34];
  }

  else
  {
    v13 = v2[58];
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1AC69023C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA58, &unk_1AC7AB4F8);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  v0[62] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[63] = v3;
  *v3 = v0;
  v3[1] = sub_1AC6902FC;
  v4 = v0[60];

  return sub_1AC5E5590();
}

uint64_t sub_1AC6902FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 504);
  *v3 = *v1;
  *(v2 + 512) = v6;
  *(v2 + 520) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC690400()
{
  v98 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  OUTLINED_FUNCTION_228_0();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1AC7A6D00;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1AC79FF98();
  v8 = v7;
  v9 = sub_1AC79FDC8();
  v10 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_366(v10))
  {
    v11 = OUTLINED_FUNCTION_150();
    v12 = OUTLINED_FUNCTION_48();
    v97 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1AC5CFE74(v6, v8, &v97);
    OUTLINED_FUNCTION_94();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  v18 = *(v0 + 304);
  v19 = [*(v0 + 248) processInfo];
  [v19 systemUptime];
  v21 = v20;

  v22 = *(v18 + 16);
  sub_1AC644008(0);

  MEMORY[0x1B26E8CF0](v23);
  v24 = *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
  {
    OUTLINED_FUNCTION_9(v24);
    sub_1AC7A0178();
  }

  v25 = *(v0 + 424);
  OUTLINED_FUNCTION_170();
  sub_1AC7A0198();
  v92 = *(v0 + 40);
  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 432);
    v29 = OUTLINED_FUNCTION_150();
    *v29 = 134217984;
    *(v29 + 4) = v21 - v28;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Preheat time interval in seconds: %f", v29, 0xCu);
    OUTLINED_FUNCTION_70();
  }

  v84 = *(v0 + 512);
  v86 = *(v0 + 496);
  v88 = *(v0 + 440);
  v90 = *(v0 + 480);
  v94 = *(v0 + 336);
  v30 = *(v0 + 256);
  v31 = *(v0 + 136);
  v32 = *(v0 + 144);
  v33 = *(v0 + 128);
  v34 = *(v0 + 104);
  v35 = *(v0 + 88);
  v36 = *(v0 + 64);
  v80 = *(v0 + 72);
  v82 = *(v0 + 112);
  v38 = *(v0 + 48);
  v37 = *(v0 + 56);

  v39 = sub_1AC637EF8(4, *(v38 + *(v33 + 56)));
  v40 = *(v33 + 48);
  v41 = *(v38 + v40 + 8);
  v42 = v31 + v40;
  v43 = *(v42 + 8);
  *v42 = v39 & 1;
  *(v42 + 8) = v41;
  v44 = v41;

  OUTLINED_FUNCTION_2_7();
  v45 = OUTLINED_FUNCTION_74_4();
  sub_1AC6AA4FC(v45, v46, v47);
  OUTLINED_FUNCTION_30_3();
  sub_1AC6AA4FC(v37, v34, v48);
  sub_1AC6AA65C(v80, v82, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v49 = v84;

  v50 = *(v35 + 48);
  v51 = *(v35 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_108_0();

  v96 = sub_1AC6930DC(v86, v32, v34, v36, v82, v92, v49, v30);

  v53 = *(v0 + 320);
  v52 = *(v0 + 328);
  v54 = *(v0 + 304);
  v55 = *(v0 + 312);
  v57 = *(v0 + 264);
  v56 = *(v0 + 272);
  v58 = *(v0 + 184);
  v59 = *(v0 + 192);
  v81 = *(v0 + 512);
  v83 = *(v0 + 176);
  v85 = *(v0 + 168);
  v87 = *(v0 + 152);
  v79 = *(v0 + 136);
  v93 = *(v0 + 120);
  v60 = *(v0 + 80);
  v89 = *(v0 + 144);
  v91 = *(v0 + 112);
  v95 = *(v0 + 104);
  v61 = mach_continuous_time();
  OUTLINED_FUNCTION_207_1(v61);

  v62 = OUTLINED_FUNCTION_74_0();
  sub_1AC5C9624(v62, v63, &unk_1AC7A9520);
  v64 = OUTLINED_FUNCTION_98();
  sub_1AC5C9624(v64, v65, &unk_1AC7A9520);
  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v79, v66);

  v75 = OUTLINED_FUNCTION_230_0(v67, v68, v69, v70, v71, v72, v73, v74, v78, v79, v81, v83, v85, v87, v89, v91, v93, v94, v95, v96);

  return v76(v75);
}

uint64_t sub_1AC690884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[62];
  v16 = v14[60];
  v18 = v14[55];
  v17 = v14[56];
  v20 = v14[41];
  v19 = v14[42];
  v21 = v14[39];
  v22 = v14[40];
  v23 = v14[34];
  v24 = v14[23];
  v41 = v14[24];
  v42 = v14[17];

  OUTLINED_FUNCTION_166_2();
  sub_1AC5C9624(v25, v26, v27);
  OUTLINED_FUNCTION_166_2();
  sub_1AC5C9624(v28, v29, v30);
  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v42, v31);
  v43 = v14[65];
  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_115();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v43, a12, a13, a14);
}

uint64_t sub_1AC6909C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[23];
  v14 = v12[24];
  OUTLINED_FUNCTION_171_2();
  sub_1AC5C9624(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_89();
  sub_1AC5C9624(v18, v19, &unk_1AC7A9520);
  v29 = v12[37];
  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1AC690A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = *(v12 + 440);
  v15 = *(v12 + 328);
  v14 = *(v12 + 336);
  v16 = *(v12 + 320);
  v18 = *(v12 + 184);
  v17 = *(v12 + 192);
  v19 = *(v12 + 136);

  v20 = OUTLINED_FUNCTION_74_0();
  sub_1AC5C9624(v20, v21, &unk_1AC7A9520);
  v22 = OUTLINED_FUNCTION_39();
  sub_1AC5C9624(v22, v23, &unk_1AC7A9520);
  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v19, v24);
  v34 = *(v12 + 488);
  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_1AC690BA8()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 776) = v2;
  *(v1 + 408) = v3;
  *(v1 + 416) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  *(v1 + 424) = OUTLINED_FUNCTION_126();
  v7 = sub_1AC79F7F8();
  *(v1 + 432) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v1 + 440) = v8;
  v10 = *(v9 + 64);
  *(v1 + 448) = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v11);
  v13 = *(v12 + 64);
  *(v1 + 456) = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v14);
  v16 = *(v15 + 64);
  *(v1 + 464) = OUTLINED_FUNCTION_126();
  v17 = type metadata accessor for Assets(0);
  *(v1 + 472) = v17;
  OUTLINED_FUNCTION_167(v17);
  v19 = *(v18 + 64);
  *(v1 + 480) = OUTLINED_FUNCTION_126();
  v20 = sub_1AC79FB18();
  *(v1 + 488) = v20;
  OUTLINED_FUNCTION_22(v20);
  *(v1 + 496) = v21;
  v23 = *(v22 + 64) + 15;
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1AC6911DC()
{
  OUTLINED_FUNCTION_169();
  v14 = *(*(v0 + 520) + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v13 = *(v0 + 168);
  v9 = *(v0 + 184);
  v10 = swift_task_alloc();
  *(v0 + 528) = v10;
  *v10 = v0;
  v10[1] = sub_1AC6912C0;
  OUTLINED_FUNCTION_154_1();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_115();

  return sub_1AC5E75E8();
}

uint64_t sub_1AC6912C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 536) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6913B8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 416);
  sub_1AC6AA5B4(v0 + 104);
  v2 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC69178C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 416);
  sub_1AC6AA5B4(v0 + 104);
  v2 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC6917EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  sub_1AC6AA5B4(v10 + 104);
  v11 = *(v10 + 536);
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1AC691884()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[70] + 16);
  v2 = swift_task_alloc();
  v0[71] = v2;
  *v2 = v0;
  v2[1] = sub_1AC69191C;
  v3 = v0[69];
  OUTLINED_FUNCTION_111_3(v0[68]);

  return sub_1AC5E4B90();
}

uint64_t sub_1AC69191C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 568);
  *v4 = *v2;
  *(v3 + 576) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 416);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC691D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  sub_1AC604184(v10[68], v10[69]);
  v11 = v10[72];
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1AC691E20()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[75] + 16);
  v2 = swift_task_alloc();
  v0[76] = v2;
  *v2 = v0;
  v2[1] = sub_1AC691EB8;
  v3 = v0[74];
  OUTLINED_FUNCTION_111_3(v0[73]);

  return sub_1AC5E4788();
}

uint64_t sub_1AC691EB8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 608);
  *v4 = *v2;
  *(v3 + 616) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 416);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6922E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  sub_1AC604184(v10[73], v10[74]);
  v11 = v10[77];
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1AC692380()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 696);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 704) = v0;

  if (v0)
  {
    v9 = sub_1AC69273C;
    v10 = 0;
  }

  else
  {
    v10 = *(v3 + 416);
    v9 = sub_1AC692484;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC692484()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[64];
  Locale.languageRegionIdentifier.getter();
  v3 = v2;
  v4 = sub_1AC79FF58();
  v5 = SFReplacementLocaleCodeForLocaleIdentifier(v4);

  if (v5)
  {
    sub_1AC79FF68();
    v7 = v6;

    v3 = v7;
  }

  v0[89] = v3;
  v8 = v0[85];
  v9 = v0[81];
  v10 = v0[52];
  v11 = swift_task_alloc();
  v0[90] = v11;
  *v11 = v0;
  v11[1] = sub_1AC692594;
  v12 = v0[86];
  v13 = v0[80];
  v14 = v0[56];
  OUTLINED_FUNCTION_111_3(v0[78]);
  OUTLINED_FUNCTION_523();

  return sub_1AC6399F0();
}

uint64_t sub_1AC692594()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  v5 = v2[90];
  v6 = v2[56];
  v7 = v2[55];
  v8 = v2[54];
  v9 = *v1;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  v3[91] = v11;
  v3[92] = v12;
  v3[93] = v0;

  (*(v7 + 8))(v6, v8);
  v13 = v2[89];
  if (v0)
  {
    v14 = v3[81];
    v15 = v3[52];
  }

  else
  {
    v16 = v3[52];
  }

  OUTLINED_FUNCTION_291();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1AC69273C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 648);
  v2 = *(v0 + 416);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC69279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_248_0();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_89();
  v15(v14);
  OUTLINED_FUNCTION_14_3();
  sub_1AC6AA714(v10, v16);
  v17 = *(v11 + 704);
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1AC692850()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[92];
  v2 = v0[91];
  v0[94] = *(v0[52] + 112);
  sub_1AC5CFBB8(v2, v1);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6928BC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[94] + 16);
  v2 = swift_task_alloc();
  v0[95] = v2;
  *v2 = v0;
  v2[1] = sub_1AC692954;
  v3 = v0[92];
  OUTLINED_FUNCTION_111_3(v0[91]);

  return sub_1AC5E4B90();
}

uint64_t sub_1AC692954()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 760);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 768) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC692A4C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[52];
  sub_1AC5C28A8(v0[91], v0[92]);
  v2 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1AC692AB0()
{
  OUTLINED_FUNCTION_112_3();
  v1 = *(v0 + 680);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = [*(v0 + 656) processInfo];
  [v6 systemUptime];
  v8 = v7;

  v9 = sub_1AC6A8D4C(v3);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1AC6A8DBC(v3, &selRef_contextualStrings);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  sub_1AC6AA65C(v5 + v1, v4, &qword_1EB56B8F0, &unk_1AC7A9520);
  v14 = sub_1AC625D20(v2);
  if (!v15)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v57 = v14;
  v58 = v15;
  v16 = *(v0 + 648);

  v56 = mach_continuous_time();
  v17 = sub_1AC61C24C(v11);
  if (v17)
  {
    v18 = v17;

    for (i = 0; ; ++i)
    {
      if (v18 == i)
      {
        v54 = v0;

        v23 = v10;
        v24 = sub_1AC61C24C(v10);
        if (v24)
        {
          v25 = v24;
          v59 = MEMORY[0x1E69E7CC0];
          v26 = OUTLINED_FUNCTION_241();
          sub_1AC6310CC(v26, v27, v28);
          if (v25 < 0)
          {
            goto LABEL_38;
          }

          v29 = 0;
          v13 = v59;
          do
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x1B26E95B0](v29, v23);
            }

            else
            {
              v30 = *(v23 + 8 * v29 + 32);
            }

            v31 = v30;
            v32 = [v30 context];
            v33 = sub_1AC79FF68();
            v35 = v34;

            v37 = *(v59 + 16);
            v36 = *(v59 + 24);
            if (v37 >= v36 >> 1)
            {
              v39 = OUTLINED_FUNCTION_9(v36);
              sub_1AC6310CC(v39, v37 + 1, 1);
            }

            ++v29;
            *(v59 + 16) = v37 + 1;
            v38 = v59 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v35;
          }

          while (v25 != v29);
        }

        else
        {

          v13 = MEMORY[0x1E69E7CC0];
        }

        v0 = v54;
        goto LABEL_33;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1B26E95B0](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v20 = *(v11 + 8 * i + 32);
      }

      v21 = v20;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v20 isLoggable])
      {
        sub_1AC7A0A68();
        v22 = *(v10 + 16);
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  v40 = *(v0 + 736);
  v41 = *(v0 + 728);
  v42 = *(v0 + 672);
  v43 = *(v0 + 664);
  v44 = *(v0 + 624);
  v45 = *(v0 + 512);
  v47 = *(v0 + 488);
  v46 = *(v0 + 496);
  v52 = v45;
  v53 = *(v0 + 480);
  v48 = *(v0 + 424);
  v55 = *(v0 + 416);
  sub_1AC728250(v48, v57, v58, v56, v13);

  sub_1AC5C28A8(v41, v40);

  sub_1AC5C9624(v48, &qword_1EB56B8F0, &unk_1AC7A9520);
  (*(v46 + 8))(v52, v47);
  OUTLINED_FUNCTION_14_3();
  sub_1AC6AA714(v53, v49);
  v50 = v55 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_574();
  *(v50 + 72) = v8 - v43;
  OUTLINED_FUNCTION_50_5();

  OUTLINED_FUNCTION_29();

  v51();
}

uint64_t sub_1AC692EB0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[81];
  v2 = v0[52];
  sub_1AC5C28A8(v0[91], v0[92]);

  return MEMORY[0x1EEE6DFA0](sub_1AC692F28, v2, 0);
}

uint64_t sub_1AC692F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 736);
  v12 = *(v10 + 728);
  v13 = *(v10 + 512);
  v14 = *(v10 + 488);
  v15 = *(v10 + 496);
  v16 = *(v10 + 480);

  v17 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v17, v18);
  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_73_1();
  v21(v20);
  OUTLINED_FUNCTION_14_3();
  sub_1AC6AA714(v16, v22);
  v23 = *(v10 + 768);
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1AC692FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_248_0();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_89();
  v15(v14);
  OUTLINED_FUNCTION_14_3();
  sub_1AC6AA714(v10, v16);
  v17 = *(v11 + 744);
  OUTLINED_FUNCTION_38_6();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1AC6930DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  v9 = v8;
  v147 = a7;
  v138 = a6;
  v150 = a5;
  v148 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = &v132 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v132 - v21;
  v145 = sub_1AC7A0288();
  v143 = *(v145 - 8);
  v22 = *(v143 + 64);
  v23 = MEMORY[0x1EEE9AC00](v145);
  v142 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v132 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v132 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v135 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v133 = &v132 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v132 - v40;
  swift_defaultActor_initialize();
  *(v8 + 120) = 0;
  v132 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_isCustomLmUsed) = 0;
  v42 = v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated;
  *(v42 + 4) = 0;
  v137 = v42;
  *v42 = 2;
  v43 = (v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_lastStringOfPriorFinalResult);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pauseResumeState) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat) = 0;
  v44 = v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *v44 = 0u;
  *(v44 + 48) = 1;
  v45 = v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 48) = 1;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didPrepare) = 0;
  v46 = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_scheduledFinalizations) = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clearMeasurementsBeforeRun) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor) = 0;
  v47 = v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 1;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics) = 0;
  v48 = (v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError);
  *v49 = 0;
  v49[1] = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pendingEagerResultRequests) = v46;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates) = v46;
  v50 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA60, &qword_1AC7AB508);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  *(v8 + v50) = sub_1AC766A20();
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didDidFinish) = 0;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionContinuations) = v46;
  *(v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionHandlers) = v46;
  *(v8 + 112) = a1;
  sub_1AC6AA4FC(a2, v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures, type metadata accessor for SpeechRecognizerSupportedFeatures);
  sub_1AC6AA4FC(a3, v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientInfo, type metadata accessor for ClientInfo);
  v54 = *a3;
  v55 = a3[1];
  v151 = a3;
  v56 = (v8 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID);
  v136 = v54;
  *v56 = v54;
  v56[1] = v55;
  v134 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v57 = *(v134 + 36);
  v149 = a2;
  sub_1AC6AA65C(a2 + v57, v41, &qword_1EB56C318, &unk_1AC7A8790);
  v58 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v58);
  v144 = a1;
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C9624(v41, &qword_1EB56C318, &unk_1AC7A8790);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = &v41[*(v58 + 24)];
    v60 = *v62;
    v61 = *(v62 + 1);

    sub_1AC6AA714(v41, type metadata accessor for TranscriberCommon.ModelOptions);
  }

  v63 = (v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_geoLMRegionID);
  *v63 = v60;
  v63[1] = v61;

  sub_1AC694074(v153);
  v64 = (v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resumeContext);
  v65 = v153[1];
  *v64 = v153[0];
  v64[1] = v65;
  v64[2] = v153[2];
  v66 = *(type metadata accessor for ClientInfo(0) + 32);
  sub_1AC6AA65C(v151 + v66, v32, &qword_1EB56CA50, &qword_1AC7AB4F0);
  v67 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v68 = __swift_getEnumTagSinglePayload(v32, 1, v67);
  v69 = v133;
  if (v68 == 1)
  {
    sub_1AC5C9624(v32, &qword_1EB56CA50, &qword_1AC7AB4F0);
    v70 = sub_1AC79F958();
    v71 = v69;
    v72 = 1;
  }

  else
  {
    v73 = sub_1AC79F958();
    (*(*(v73 - 8) + 16))(v69, v32, v73);
    sub_1AC6AA714(v32, type metadata accessor for ClientInfo.LoggingInfo);
    v71 = v69;
    v72 = 0;
    v70 = v73;
  }

  __swift_storeEnumTagSinglePayload(v71, v72, 1, v70);
  sub_1AC6A941C(v69, v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId);
  sub_1AC6AA65C(v151 + v66, v30, &qword_1EB56CA50, &qword_1AC7AB4F0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v67) == 1)
  {
    sub_1AC5C9624(v30, &qword_1EB56CA50, &qword_1AC7AB4F0);
    v74 = sub_1AC79F958();
    v75 = v135;
    v76 = v135;
    v77 = 1;
  }

  else
  {
    v78 = *(v67 + 20);
    v79 = sub_1AC79F958();
    v80 = &v30[v78];
    v75 = v135;
    (*(*(v79 - 8) + 16))(v135, v80, v79);
    sub_1AC6AA714(v30, type metadata accessor for ClientInfo.LoggingInfo);
    v76 = v75;
    v77 = 0;
    v74 = v79;
  }

  __swift_storeEnumTagSinglePayload(v76, v77, 1, v74);
  v82 = v149;
  v81 = v150;
  v83 = v146;
  v84 = v142;
  sub_1AC6A941C(v75, v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestId);
  sub_1AC6AA65C(v81, v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_analysisOptions, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v85 = v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  *v85 = 1;
  *(v85 + 8) = 0u;
  *(v85 + 24) = 0u;
  *(v85 + 40) = 0u;
  *(v85 + 56) = 0;
  *(v85 + 64) = v46;
  *(v85 + 72) = 0u;
  *(v85 + 88) = 0u;
  *(v85 + 104) = v46;
  *(v85 + 112) = 0;
  *(v85 + 120) = 0;
  *(v85 + 128) = v46;
  *(v85 + 136) = v46;
  *(v85 + 144) = v46;
  *(v85 + 152) = 0;
  *(v85 + 160) = 0xE000000000000000;
  *(v85 + 168) = 256;
  v86 = [objc_opt_self() processInfo];
  [v86 systemUptime];
  v88 = v87;

  swift_beginAccess();
  *(v85 + 48) = v88;
  *(v85 + 96) = a8;
  v89 = *(v85 + 64);
  *(v85 + 64) = v138;

  v90 = v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters;
  *v90 = 0;
  *(v90 + 8) = 0xE000000000000000;
  *(v90 + 16) = 0;
  *(v90 + 24) = 0xE000000000000000;
  *(v90 + 32) = 0;
  *(v90 + 40) = 0xE000000000000000;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1701736302;
  *(v90 + 64) = 0xE400000000000000;
  *(v90 + 72) = 1;
  *(v90 + 74) = 0;
  *(v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultCandidateId) = 0;
  v91 = v137;
  swift_beginAccess();
  *(v91 + 4) = 0;
  *v91 = 0;
  v92 = sub_1AC637EF8(4, *(v82 + *(v134 + 56)));
  v93 = v147;
  v94 = v143;
  if (v92)
  {
    Locale.languageRegionIdentifier.getter();
    v95 = sub_1AC79FF58();
    v96 = SFReplacementLocaleCodeForLocaleIdentifier(v95);

    if (v96)
    {
      sub_1AC79FF68();
    }

    sub_1AC5CF764(0, &qword_1EB56AB38, 0x1E699B9F0);
    v97 = sub_1AC694228();
    v98 = *(v9 + v132);
    *(v9 + v132) = v97;
  }

  v99 = v136;
  *(v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs) = sub_1AC70A8E0(v136, v55) & 1;
  v100 = [objc_opt_self() systemClientId];
  v101 = sub_1AC79FF68();
  v103 = v102;

  if (v99 == v101 && v55 == v103)
  {
    v105 = 1;
  }

  else
  {
    v105 = sub_1AC7A0D38();
  }

  v106 = v145;

  *(v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitOndeviceRecordLogs) = v105 & 1;
  *(v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo) = v93;
  v107 = v139;
  sub_1AC6AA65C(v150, v139, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v108 = type metadata accessor for SpeechAnalyzer.Options(0);
  if (__swift_getEnumTagSinglePayload(v107, 1, v108) == 1)
  {
    v109 = v93;
    sub_1AC5C9624(v107, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v110 = v140;
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v106);
    sub_1AC7A0338();
    if (__swift_getEnumTagSinglePayload(v110, 1, v106) != 1)
    {
      sub_1AC5C9624(v110, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    v111 = v140;
    (*(v94 + 16))(v140, v107, v106);
    v112 = v93;
    sub_1AC6AA714(v107, type metadata accessor for SpeechAnalyzer.Options);
    __swift_storeEnumTagSinglePayload(v111, 0, 1, v106);
    (*(v94 + 32))(v83, v111, v106);
  }

  v113 = *(v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  v114 = *(v94 + 16);
  v115 = v141;
  v114(v141, v83, v106);
  __swift_storeEnumTagSinglePayload(v115, 0, 1, v106);
  sub_1AC766470(v9, v115);
  sub_1AC5C9624(v115, &qword_1EB56BE70, &qword_1AC7A8270);
  if (qword_1ED937ED8 != -1)
  {
    swift_once();
  }

  v116 = qword_1ED938608;

  sub_1AC76BE88(v117, v116);

  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v118 = sub_1AC79FDE8();
  __swift_project_value_buffer(v118, qword_1ED9386C8);
  v114(v84, v83, v106);
  v119 = sub_1AC79FDC8();
  v120 = sub_1AC7A05D8();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v152 = v122;
    *v121 = 136315138;
    sub_1AC6A78C4(&qword_1EB56ACB0, MEMORY[0x1E69E85F0]);
    v123 = sub_1AC7A0CC8();
    v124 = v84;
    v125 = v106;
    v127 = v126;
    v128 = *(v94 + 8);
    v128(v124, v125);
    v129 = sub_1AC5CFE74(v123, v127, &v152);

    *(v121 + 4) = v129;
    _os_log_impl(&dword_1AC5BC000, v119, v120, "SpeechRecognizerWorker: Operating at priority %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v122);
    MEMORY[0x1B26EAB10](v122, -1, -1);
    MEMORY[0x1B26EAB10](v121, -1, -1);

    sub_1AC5C9624(v150, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v128(v146, v125);
  }

  else
  {

    sub_1AC5C9624(v150, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v130 = *(v94 + 8);
    v130(v84, v106);
    v130(v83, v106);
  }

  sub_1AC6AA714(v149, type metadata accessor for SpeechRecognizerSupportedFeatures);
  sub_1AC6AA714(v151, type metadata accessor for ClientInfo);
  return v9;
}

uint64_t sub_1AC694074@<X0>(void *a1@<X8>)
{
  v2 = AnalysisContext.contextualStrings.getter();
  v3 = sub_1AC6DC6E0(0x6E6F437466656C5FLL, 0xEC00000074786574, v2);

  if (v3)
  {
    if (v3[2])
    {
      v5 = v3[4];
      v4 = v3[5];
    }

    else
    {
      v5 = 0;
      v4 = 0xE000000000000000;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = AnalysisContext.contextualStrings.getter();
  v7 = sub_1AC6DC6E0(0x6F4374686769725FLL, 0xED0000747865746ELL, v6);

  if (v7)
  {
    if (v7[2])
    {
      v9 = v7[4];
      v8 = v7[5];
    }

    else
    {
      v9 = 0;
      v8 = 0xE000000000000000;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = AnalysisContext.contextualStrings.getter();
  v11 = sub_1AC6DC6E0(0x657463656C65735FLL, 0xED00007478655464, v10);

  if (!v11)
  {
    goto LABEL_17;
  }

  if (!v11[2])
  {

LABEL_17:

    v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_18;
  }

  v13 = v11[4];
  v12 = v11[5];

LABEL_18:
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v13;
  a1[5] = v12;
  return result;
}

id sub_1AC694228()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1AC79FF58();

  v2 = [v0 initWithLanguage_];

  return v2;
}

uint64_t sub_1AC69429C(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1AC6A8DBC(v2, &selRef_sandboxExtensionsForUsingANEAndAssets);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v30 = a1;
  v5 = *(v3 + 16);
  if (v5)
  {
    sub_1AC60DBDC();
    v7 = v6;
    v8 = (v4 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1AC60DBDC();
        v7 = v14;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v30)
  {
    v15 = v30;
    v16 = [v2 sandboxExtensionsForCustomLmConfig_];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1AC7A0158();

      v19 = *(v18 + 16);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v7 + 16);
          sub_1AC60DBDC();
          v7 = v29;
        }

        v20 = (v18 + 40);
        do
        {
          v22 = *(v20 - 1);
          v21 = *v20;
          v23 = *(v7 + 16);
          v24 = *(v7 + 24);

          if (v23 >= v24 >> 1)
          {
            sub_1AC60DBDC();
            v7 = v26;
          }

          *(v7 + 16) = v23 + 1;
          v25 = v7 + 16 * v23;
          *(v25 + 32) = v22;
          *(v25 + 40) = v21;
          v20 += 2;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
    }
  }

  return v7;
}

uint64_t sub_1AC694498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6944B8, 0, 0);
}

uint64_t sub_1AC6944B8()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  sub_1AC6B87D0();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_46_7(v3);

  return sub_1AC5EBB24();
}

uint64_t sub_1AC694550()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v12();
  }
}

uint64_t sub_1AC69466C(char a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a1 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6946FC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC5E64D8();
}

uint64_t sub_1AC6947A0()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 24) = *(*(v0 + 16) + 112);

  v1 = OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC694808()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  return OUTLINED_FUNCTION_15_5(sub_1AC694828, v1);
}

uint64_t sub_1AC694828()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v1 = (v0[2] + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resumeContext);
  v2 = *v1;
  v0[5] = v1[1];
  v3 = v1[2];
  v0[6] = v1[3];
  v4 = v1[4];
  v0[7] = v1[5];

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1AC69490C;
  v6 = v0[4];
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_636();

  return sub_1AC5E6924();
}

uint64_t sub_1AC69490C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = sub_1AC694A84;
  }

  else
  {
    v12 = v3[6];
    v11 = v3[7];
    v13 = v3[5];

    v10 = sub_1AC694A2C;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC694A2C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC694A84()
{
  OUTLINED_FUNCTION_85();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC694AF4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1AC694B50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC694B70, v2);
}

uint64_t sub_1AC694B70()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_176_1();

  v0 = OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC694BD0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1AC694C64;
  v3 = v0[3];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC5E97FC();
}

uint64_t sub_1AC694C64()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}