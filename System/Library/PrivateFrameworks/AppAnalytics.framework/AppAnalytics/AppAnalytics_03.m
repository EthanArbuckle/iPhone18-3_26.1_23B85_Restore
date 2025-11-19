uint64_t sub_1B69BFEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69BFF28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69BFF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B69C0248();
    v7 = a3(a1, &type metadata for EventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t EventData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B69BFF70(0, &qword_1EDBCAFC8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v26[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69C0248();
  sub_1B6ABA2D0();
  v12 = *v3;
  v13 = v3[1];
  v26[15] = 0;
  sub_1B6ABA000();
  if (!v2)
  {
    v14 = type metadata accessor for EventData();
    v15 = v14[5];
    v26[14] = 1;
    sub_1B6AB8DB0();
    sub_1B69A8420(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
    sub_1B6ABA040();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v26[13] = 2;
    sub_1B6ABA000();
    v19 = (v3 + v14[7]);
    v20 = *v19;
    v21 = v19[1];
    v26[12] = 3;
    sub_1B6ABA000();
    v22 = (v3 + v14[8]);
    v23 = *v22;
    v24 = v22[1];
    v26[11] = 4;
    sub_1B6AB9FE0();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B69C0248()
{
  result = qword_1EDBCAAE0[0];
  if (!qword_1EDBCAAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCAAE0);
  }

  return result;
}

unint64_t sub_1B69C02A0()
{
  result = qword_1EDBCB068;
  if (!qword_1EDBCB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB068);
  }

  return result;
}

unint64_t sub_1B69C02F8()
{
  result = qword_1EDBCAAD8;
  if (!qword_1EDBCAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCAAD8);
  }

  return result;
}

uint64_t sub_1B69C034C()
{
  v1 = *v0;
  v2 = 0x4449746E657665;
  v3 = 0x746150746E657665;
  v4 = 0x496E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6973736553707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6954746E657665;
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

uint64_t storeEnumTagSinglePayload for TimestampGranularity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimestampGranularity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B69C0548(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32) | (*(v2 + 33) << 8);
  return sub_1B69C0AD0(a1, a2, *(v2 + 16));
}

uint64_t sub_1B69C0574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a1;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v5 + 16) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    swift_beginAccess();
    v21 = *(v5 + 24);
    v22 = *(v21 + 16);

    if (v22 && (v23 = sub_1B69C0A30(v32, a4, v33, a2), (v24 & 1) != 0))
    {
      v25 = (*(v21 + 56) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_1B6AB8E30();
      v26 = sub_1B6AB8DD0();
      v29 = v28;
      (*(v9 + 8))(v12, v8);
      swift_beginAccess();

      v30 = *(v5 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v5 + 24);
      *(v5 + 24) = 0x8000000000000000;
      sub_1B69C087C(v26, v29, v32, a4, v33, a2, isUniquelyReferenced_nonNull_native);

      *(v5 + 24) = v34;
      swift_endAccess();
    }

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1B69C0A30(a3, a4, a5, a6);
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
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1B69C1270(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1B69C0A30(a3, a4, a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1B69DDAD0();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 32 * v17);
  *v32 = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
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

unint64_t sub_1B69C0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  v10 = sub_1B6ABA230();

  return sub_1B69C0DB0(a1, a2, a3, a4, v10);
}

uint64_t sub_1B69C0AD0(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v6 = sub_1B6AB8F00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1B6AB8EC0();
      sub_1B6AB8E70();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v12 + 16))(v15, a1, v11);
    }
  }

  else if (a3 == 2 || a3 == 3)
  {
    sub_1B6AB8CE0();
    sub_1B6AB8CD0();
  }

  else
  {
    sub_1B6AB8D10();
  }

  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1B6ABA2B0();
  result = sub_1B6AB8D60();
  v19 = v18 * 1000.0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v19 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1B6ABA140();
    (*(v12 + 8))(v15, v11);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1B69C0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1B6ABA0F0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1B69C0EB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1B69C1030(v8, v6, v4, a2);
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
  v12 = sub_1B6AA0140(v11, v6, v4, a2);
  result = MEMORY[0x1B8C99550](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B69C1030(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
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
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1B698FE74(*(a3 + 56) + 32 * v14, v22);

    LOBYTE(v16) = v23(v16, v17, v22);
    __swift_destroy_boxed_opaque_existential_1(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1B69B4BEC(v20, a2, v21, a3);
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
      return sub_1B69B4BEC(v20, a2, v21, a3);
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

void sub_1B69C11A0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B6AB9EA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B69C1208(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B6AB9EA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69C1270(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69C11A0(0, &qword_1EDBC8978, sub_1B69C156C);
  v39 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 32 * v22);
      v25 = v24[1];
      v42 = *v24;
      v26 = v24[3];
      v27 = (v23 + 16 * v22);
      v28 = v27[1];
      v40 = *v27;
      v41 = v24[2];
      if ((v39 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v42;
      v17[1] = v25;
      v17[2] = v41;
      v17[3] = v26;
      v18 = (*(v8 + 56) + 16 * v16);
      *v18 = v40;
      v18[1] = v28;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1B69C156C()
{
  result = qword_1EDBC8A48;
  if (!qword_1EDBC8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8A48);
  }

  return result;
}

unint64_t sub_1B69C15C4()
{
  result = qword_1EDBC8A40;
  if (!qword_1EDBC8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8A40);
  }

  return result;
}

uint64_t sub_1B69C1618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69C1678(uint64_t a1, uint64_t a2)
{
  sub_1B6980954(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69C1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v5 + 16) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (a4)
    {
      swift_beginAccess();
      v21 = *(v5 + 32);
      v22 = *(v21 + 16);

      v23 = v34;

      if (v22 && (v24 = sub_1B69C0A30(a3, a4, v35, v23), (v25 & 1) != 0))
      {
        v26 = (*(v21 + 56) + 16 * v24);
        a3 = *v26;
        v27 = v26[1];
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_1B6AB8E30();
        v28 = v23;
        v29 = sub_1B6AB8DD0();
        v31 = v30;
        (*(v9 + 8))(v12, v8);
        swift_beginAccess();

        v32 = *(v5 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v5 + 32);
        *(v5 + 32) = 0x8000000000000000;
        sub_1B69C087C(v29, v31, a3, a4, v35, v28, isUniquelyReferenced_nonNull_native);

        *(v5 + 32) = v36;
        swift_endAccess();
        return v29;
      }
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C19FC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69C1A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(a2 + 8))(v22);
  if (v22[1])
  {
    return v22[0];
  }

  while (1)
  {
    swift_beginAccess();
    v5 = *(v3 + 168);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v16 = *(v3 + 168);
      }

      result = sub_1B6AB9E60();
      if (!result)
      {
LABEL_21:

        v4 = 0;
        v10 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    v7 = result - 1;
    if (__OFSUB__(result, 1))
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {

      v9 = MEMORY[0x1B8C98510](v7, v5);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v8;
    }

    v4 = *&v9[OBJC_IVAR___AAGroup_name];
    v10 = *&v9[OBJC_IVAR___AAGroup_name + 8];

    v11 = *(v3 + 168);
    if (v11 >> 62)
    {
      if (v11 < 0)
      {
        v17 = *(v3 + 168);
      }

      result = sub_1B6AB9E60();
      if (!result)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v12 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_35;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {

      v19 = MEMORY[0x1B8C98510](v12, v11);

      v20 = *(v19 + OBJC_IVAR___AAGroup_contentType);
      v21 = *(v19 + OBJC_IVAR___AAGroup_contentType + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v13 = *(v11 + 8 * v12 + 32) + OBJC_IVAR___AAGroup_contentType;
      v14 = *v13;
      v15 = *(v13 + 8);
    }

LABEL_27:
    v18 = *(v3 + 152);

    if (!v18)
    {
      return v4;
    }

    v3 = v18;
    if (v10)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

__n128 ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v16 = *a11;
  v17 = a11[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = 0x302E312E30;
  *(a9 + 4) = 0xE500000000000000;
  *(a9 + 2) = a3;
  v18 = type metadata accessor for ProcessEvent();
  v19 = v18[11];
  v20 = sub_1B6AB8DB0();
  (*(*(v20 - 8) + 32))(&a9[v19], a4, v20);
  v21 = &a9[v18[12]];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &a9[v18[13]];
  *v22 = a7;
  v22[8] = a8 & 1;
  v23 = &a9[v18[14]];
  result = *a10;
  v25 = *(a10 + 16);
  *v23 = *a10;
  *(v23 + 1) = v25;
  v26 = &a9[v18[15]];
  *v26 = v16;
  *(v26 + 1) = v17;
  return result;
}

uint64_t sub_1B69C1DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v5 = type metadata accessor for ProcessEvent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for SessionManager.SessionState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v4 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1B6AB9110();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v4 + v22, v13, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v25 = v33;
      v24 = v34;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v13, type metadata accessor for SessionManager.SessionState);
      }

      v26 = *(v4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 24);
      v27 = *(v4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 32);
      __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider), v26);
      v28 = (*(v27 + 8))(v35, v26, v27);
      v29 = LOBYTE(v35[0]);
    }

    else
    {
      v30 = (*v13 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
      v29 = *v30;
      v28 = v30[1];

      v25 = v33;
      v24 = v34;
    }

    v35[0] = v29;
    *&v35[1] = v28;
    ProcessEvent.with(timestampConfiguration:)(v35, v5, v9);
    v31 = *(v4 + 24);
    sub_1B69C2290(v9, v25, v24);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ProcessEvent.with(timestampConfiguration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a3;
  v6 = sub_1B6AB8DB0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = v3[1];
  v25 = *v3;
  v27 = v3[2];
  (*(v13 + 16))(v9, v3 + *(a2 + 44));
  v14 = *(a2 + 52);
  v15 = (v3 + *(a2 + 48));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v3 + v14);
  v19 = *(v3 + v14 + 8);
  sub_1B69C1678(v3 + *(a2 + 56), v29);
  v28[0] = v10;
  v28[1] = v11;
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)(v25, v12, v27, v9, v16, v17, v18, v19, v26, v29, v28);

  v20 = v27;

  return v20;
}

uint64_t sub_1B69C2290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(v3 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    swift_beginAccess();
    result = *(v3 + 48);
    v15 = *(result + 16);
    if (v15)
    {

      v16 = (v21 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 8);
        swift_unknownObjectRetain();
        v20(a1, a2, a3, ObjectType, v18);
        swift_unknownObjectRelease();
        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B69C245C(uint64_t a1, uint64_t a2)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABF500;
  if (qword_1EDBC8130 != -1)
  {
    v15 = inited;
    swift_once();
    inited = v15;
  }

  v6 = unk_1EDBC8140;
  v7 = qword_1EDBC8148;
  v8 = unk_1EDBC8150;
  v9 = qword_1EDBC8158;
  v10 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  v11 = inited;

  v12 = sub_1B69C2608(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = sub_1B69C292C(v12, *(v2 + 16));

  return (v13 & 1) == 0;
}

void sub_1B69C2598()
{
  if (!qword_1EDBC7FF8)
  {
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC7FF8);
    }
  }
}

void sub_1B69C25E8()
{
  qword_1EDBC8138 = 42;
  unk_1EDBC8140 = 0xE100000000000000;
  qword_1EDBC8148 = 42;
  unk_1EDBC8150 = 0xE100000000000000;
  qword_1EDBC8158 = 42;
  unk_1EDBC8160 = 0xE100000000000000;
}

uint64_t sub_1B69C2608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69C287C();
    v3 = sub_1B6AB9C60();
    v4 = 0;
    v40 = v3 + 56;
    v35 = v1;
    v36 = a1 + 32;
    v34 = v3;
    while (1)
    {
      v5 = (v36 + 48 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v11 = v5[4];
      v10 = v5[5];
      v12 = *(v3 + 40);
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v13 = v9;
      v41 = v8;
      sub_1B6AB9380();
      v38 = v11;
      v39 = v10;
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v40 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) != 0)
      {
        v37 = v4;
        v20 = ~v15;
        v21 = *(v3 + 48);
        do
        {
          v22 = (v21 + 48 * v16);
          v23 = v22[2];
          v24 = v22[3];
          v25 = v22[4];
          v26 = v22[5];
          v27 = *v22 == v7 && v22[1] == v6;
          if (v27 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
          {
            v28 = v23 == v13 && v24 == v41;
            if (v28 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
            {
              v29 = v25 == v38 && v26 == v39;
              if (v29 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
              {

                v3 = v34;
                v1 = v35;
                v4 = v37;
                goto LABEL_4;
              }
            }
          }

          v16 = (v16 + 1) & v20;
          v17 = v16 >> 6;
          v18 = *(v40 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v3 = v34;
        v1 = v35;
        v4 = v37;
      }

      *(v40 + 8 * v17) = v18 | v19;
      v30 = (*(v3 + 48) + 48 * v16);
      *v30 = v7;
      v30[1] = v6;
      v30[2] = v13;
      v30[3] = v41;
      v30[4] = v38;
      v30[5] = v39;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v3 + 16) = v33;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1B69C287C()
{
  if (!qword_1EDBC8030)
  {
    sub_1B69C28D8();
    v0 = sub_1B6AB9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8030);
    }
  }
}

unint64_t sub_1B69C28D8()
{
  result = qword_1EDBC8260;
  if (!qword_1EDBC8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8260);
  }

  return result;
}

uint64_t sub_1B69C292C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && (v3 = *(a1 + 16)) != 0)
  {
    if (v2 >= v3)
    {
      v4 = a1;
    }

    else
    {
      v4 = a2;
    }

    v5 = v4 + 56;
    if (v2 >= v3)
    {
      v6 = a2;
    }

    else
    {
      v6 = a1;
    }

    v7 = 1 << *(v4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v4 + 56);
    v10 = (v7 + 63) >> 6;
    v43 = v6 + 56;

    v12 = 0;
    v40 = v4;
    v41 = v6;
    v37 = v10;
    v38 = v4 + 56;
    while (v9)
    {
      v13 = v9;
LABEL_19:
      v9 = (v13 - 1) & v13;
      if (*(v6 + 16))
      {
        v39 = (v13 - 1) & v13;
        v15 = (*(v4 + 48) + 48 * (__clz(__rbit64(v13)) | (v12 << 6)));
        v17 = *v15;
        v16 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
        v21 = v15[4];
        v20 = v15[5];
        v22 = *(v6 + 40);
        sub_1B6ABA1F0();

        sub_1B6AB9380();
        v45 = v19;
        v46 = v18;
        sub_1B6AB9380();
        v44 = v21;
        sub_1B6AB9380();
        v23 = sub_1B6ABA230();
        v24 = -1 << *(v6 + 32);
        v25 = v23 & ~v24;
        if ((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v42 = ~v24;
          v26 = *(v41 + 48);
          while (1)
          {
            v27 = (v26 + 48 * v25);
            v28 = v27[2];
            v29 = v27[3];
            v30 = v27[4];
            v31 = v27[5];
            v32 = *v27 == v17 && v27[1] == v16;
            if (v32 || (v33 = v27[1], (sub_1B6ABA0F0() & 1) != 0))
            {
              v34 = v28 == v45 && v29 == v46;
              if (v34 || (sub_1B6ABA0F0() & 1) != 0)
              {
                v35 = v30 == v44 && v31 == v20;
                if (v35 || (sub_1B6ABA0F0() & 1) != 0)
                {
                  break;
                }
              }
            }

            v25 = (v25 + 1) & v42;
            if (((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v36 = 0;
LABEL_43:

          return v36;
        }

LABEL_39:

        v4 = v40;
        v6 = v41;
        v10 = v37;
        v5 = v38;
        v9 = v39;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        v36 = 1;
        goto LABEL_43;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        v12 = v14;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL sub_1B69C2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD880;
  if (qword_1EDBC8130 != -1)
  {
    v21 = inited;
    swift_once();
    inited = v21;
  }

  v13 = unk_1EDBC8140;
  v14 = qword_1EDBC8148;
  v15 = unk_1EDBC8150;
  v16 = qword_1EDBC8158;
  v17 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = a1;
  *(inited + 136) = a2;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 160) = 42;
  *(inited + 168) = 0xE100000000000000;
  *(inited + 176) = a1;
  *(inited + 184) = a2;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  *(inited + 208) = a5;
  *(inited + 216) = a6;
  v18 = inited;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v19 = sub_1B69C2608(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(v18) = sub_1B69C292C(v19, *(v22 + 16));

  return (v18 & 1) == 0;
}

uint64_t sub_1B69C2DCC()
{
  v1 = *(v0 + 3);

  sub_1B69C2E8C(*(v0 + 4), *(v0 + 5));
  v2 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
  v3 = sub_1B6AB8DB0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69C2E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1B69C2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1B69B5FF8(a2, a3, a6, a7);
  v12 = v11;
  swift_beginAccess();

  v13 = *(a1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 136);
  *(a1 + 136) = 0x8000000000000000;
  sub_1B69C2F78(a4, a5, v10, v12, isUniquelyReferenced_nonNull_native);

  *(a1 + 136) = v16;
  return swift_endAccess();
}

uint64_t sub_1B69C2F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B6993940(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B69C3100(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1B6993940(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1B69DFC78();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1B69C3100(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69881C8(0, &qword_1EDBC7B68, &type metadata for DataProvider, MEMORY[0x1E69E6EC8]);
  v36 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69C33D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_1B6AB8DB0() - 8);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  v7 = v0[4];
  return sub_1B69A0AA0(v4, v5, v6, *(v6 + *(v3 + 64)), v1, v2);
}

void sub_1B69C346C(void *a1, unint64_t a2)
{
  if ((a2 >> 62) > 1)
  {
    if (a2 >> 62 == 2)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1B69C349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SummaryEventConfiguration.StorageURLOptions(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B69C3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SummaryEventConfiguration.StorageURLOptions(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B69C3590(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B69C3688@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B6AB92E0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B69C36B4()
{
  v18 = *(v0 + 4);
  v16 = *(v0 + 5);
  v1 = *(v0 + 6);
  v2 = *(v18 - 8);
  v19 = *(v2 + 80);
  v3 = (v19 + 80) & ~v19;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_1B6AB9B30() - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v17 = *(v9 + 64);
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v3], v18);
  v13 = *&v0[v4];

  (*(v5 + 8))(&v0[v7], v16);
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(&v0[v11], 1, v1))
  {
    (*(v14 + 8))(&v0[v11], v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v17, v19 | v6 | v10 | 7);
}

uint64_t sub_1B69C38E8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C39B8()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C3A88()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C3B58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics22CrashTerminationReasonVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69C3BBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B6AB8DB0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B69C3D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B6AB8DB0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B69C3E30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3E78@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B69C3ED0()
{
  MEMORY[0x1B8C99690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C3F28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3F70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3FB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C402C()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C4110()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C41E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C4228()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C4268()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C42A8()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C4304()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C439C()
{
  sub_1B6A10D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B69C4424()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C445C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  sub_1B6993C94(v0[9], v0[10]);
  v4 = v0[12];

  v5 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B69C44BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C44F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C452C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4564()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C45E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1B697EC54();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B69C46CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B697EC54();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B69C4770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C481C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B6AB8DB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C48C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C492C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C4998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimedData();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B69C4AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EventData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimedData();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B69C4BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BatchEvent.Event(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C4CA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BatchEvent.Event(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C4D4C(uint64_t a1, uint64_t a2)
{
  sub_1B6A33E3C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C4DB8(uint64_t a1, uint64_t a2)
{
  sub_1B6A33E3C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Batch();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C4EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Batch();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C4FA0()
{
  MEMORY[0x1B8C99690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4FD8()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C50B4()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C5198()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C51D4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C5210()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B69C52A0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C52F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C5340()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5528()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C559C()
{
  v1 = v0[4];

  v2 = v0[5];

  if (v0[8])
  {
    v3 = v0[9];
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B69C55EC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C5624()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C5734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6AB8E40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C57F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C585C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C58CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5904()
{
  v1 = type metadata accessor for EventData();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v8 = *(v0 + 48);
  }

  sub_1B69C346C(*(v0 + 56), *(v0 + 64));
  v9 = v0 + v3;
  v10 = *(v9 + 8);

  v11 = v1[5];
  v12 = sub_1B6AB8DB0();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v9 + v1[6] + 8);

  v14 = *(v9 + v1[7] + 8);

  v15 = *(v9 + v1[8] + 8);

  v16 = *(v0 + v4);

  v17 = *(v0 + v5 + 8);

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  v18 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18);

  return MEMORY[0x1EEE6BDD0](v0, v18 + 8, v2 | 7);
}

uint64_t sub_1B69C5AA4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5ADC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C5B40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C5B88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B69C5BCC(uint64_t a1, uint64_t a2)
{
  sub_1B698C128();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69C5C48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5C80()
{
  v1 = type metadata accessor for Batch();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 64);

  v10 = v1[10];
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = *(v4 + v1[11] + 8);

  v15 = (v4 + v1[13]);
  v16 = v15[1];
  if (v16 != 1)
  {
    if (v16 == 2)
    {
      goto LABEL_8;
    }

    v17 = v15[3];
  }

  if (v15[5] != 1)
  {
  }

LABEL_8:
  v18 = v1[14];
  if (!v13(v4 + v18, 1, v11))
  {
    (*(v12 + 8))(v4 + v18, v11);
  }

  v19 = (v22 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19);

  return MEMORY[0x1EEE6BDD0](v0, v19 + 8, v2 | 7);
}

uint64_t sub_1B69C5E7C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB95C238;
  *a1 = qword_1EB95C230;
  a1[1] = v2;
}

uint64_t sub_1B69C5ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C5F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6AB8DB0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartbeatEventService.Metadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C6108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartbeatEventService.Metadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C61C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RotationMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1B6AB8E40();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B69C6380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RotationMode();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1B6AB8E40();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B69C64E8()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B69C65AC()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B69C66A4()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B69C67B4()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C6894()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C68E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryEventMetaData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C69A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryEventMetaData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C6A58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6AA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C6AD8()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C6BB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C74()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C6CC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B69C6D10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1B69C6D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6DF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6E30()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B69C6E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C6ECC()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  if (*(v0 + 32) >= 3uLL)
  {
  }

  v6 = (v3 + 73) & ~v3;
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1B69C6FB4()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C7004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C703C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C70C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C7130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C71A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C71D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C7218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C72C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B6AB8DB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C7368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C73D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C7444()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C747C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C74BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C750C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C7544()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C7584()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C75BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t static SummaryEventConfiguration.custom(timeInterval:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for SummaryEventConfiguration(0) + 20);
  v5 = sub_1B6AB8BB0();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *a1 = a2;
  *(a1 + 8) = 0;
  return result;
}

void SummaryEventConfiguration.flushCadence.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SummaryEventConfiguration.FlushCadence(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SummaryEventConfiguration.FlushCadence(uint64_t result, int a2, int a3)
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

uint64_t sub_1B69C78DC(uint64_t a1)
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

uint64_t sub_1B69C78F8(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for GZIPError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GZIPError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1B69C79B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B6AB8F60();
}

uint64_t sub_1B69C7A04()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B6AB8F50();
}

uint64_t sub_1B69C7A5C()
{
  sub_1B6ABA1F0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B6AB8F50();
  return sub_1B6ABA230();
}

void *sub_1B69C7AEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B69C7B18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B69C7BB0(uint64_t a1, id *a2)
{
  result = sub_1B6AB92C0();
  *a2 = 0;
  return result;
}

uint64_t sub_1B69C7C28(uint64_t a1, id *a2)
{
  v3 = sub_1B6AB92D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B69C7CA8@<X0>(uint64_t *a1@<X8>)
{
  sub_1B6AB92E0();
  v2 = sub_1B6AB92B0();

  *a1 = v2;
  return result;
}

uint64_t sub_1B69C7CEC()
{
  v1 = *v0;
  v2 = sub_1B6AB92E0();
  v3 = MEMORY[0x1B8C97C70](v2);

  return v3;
}

uint64_t sub_1B69C7D28()
{
  v1 = *v0;
  sub_1B6AB92E0();
  sub_1B6AB9380();
}

uint64_t sub_1B69C7D7C()
{
  v1 = *v0;
  sub_1B6AB92E0();
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v2 = sub_1B6ABA230();

  return v2;
}

uint64_t sub_1B69C7DF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1B6AB8F40();
}

uint64_t sub_1B69C7E70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B6A5A364();

  *a1 = v2;
  return result;
}

uint64_t sub_1B69C7EB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B6AB92E0();
  v6 = v5;
  if (v4 == sub_1B6AB92E0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();
  }

  return v9 & 1;
}

void *sub_1B69C7F38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B69C7FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69C80BC(uint64_t a1)
{
  v2 = sub_1B69C7FE4(&qword_1EB95AB00, type metadata accessor for FileAttributeKey);
  v3 = sub_1B69C7FE4(&unk_1EB95AB08, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B69C8178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B6AB92B0();

  *a2 = v5;
  return result;
}

uint64_t sub_1B69C81C0(uint64_t a1)
{
  v2 = sub_1B69C7FE4(&qword_1EDBC8CD0, type metadata accessor for URLResourceKey);
  v3 = sub_1B69C7FE4(&qword_1EB95AB18, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t ProcessorManager.deinit()
{
  sub_1B6988008(v0 + 16);

  v1 = *(v0 + 48);

  return v0;
}

uint64_t ProcessorManager.__deallocating_deinit()
{
  sub_1B6988008(v0 + 16);

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t ProcessorManager.remove(eventProcessor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  v7 = *(v3 + 32);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;

  swift_unknownObjectRetain();
  sub_1B69877A4(v7, sub_1B69C8D18, v8);
}

uint64_t sub_1B69C8668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v4 + 32 + 16 * v7);
  while (1)
  {
    if (v5 == v7)
    {

      v16 = *(a1 + 48);
      *(a1 + 48) = v8;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    ++v7;
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11 != a2)
    {
      v12 = *(v10 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B69E4C4C(0, *(v8 + 16) + 1, 1);
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B69E4C4C((v13 > 1), v14 + 1, 1);
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69C87B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 48);
}

uint64_t sub_1B69C880C(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = *(v1 + 48);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v1 + 48);

      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 16);
        swift_unknownObjectRetain();
        v18(a1, ObjectType, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C89B8(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = *(v1 + 48);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v1 + 48);

      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 24);
        swift_unknownObjectRetain();
        v18(a1, ObjectType, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C8B64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(v2 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    result = swift_beginAccess();
    v13 = *(v2 + 48);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v2 + 48);

      v16 = (v13 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 48);
        swift_unknownObjectRetain();
        v20(a1, a2, ObjectType, v18);
        swift_unknownObjectRelease();
        v16 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C8D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B69C8DF0()
{
  v1 = *v0;
  v2 = v0[2];
  v10 = *(*v0 + 80);
  v11 = v1[11];
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[14];
  v15 = v1[15];
  type metadata accessor for CombineLatestStateMachine();
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine.IteratorDeinitializedAction();
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0208, &v9, v2);
  v3 = v16;
  if (v16)
  {
    v4 = *(v17 + 16);
    if (v4)
    {
      v5 = (v17 + 32);
      sub_1B6AB9610();
      sub_1B69D026C();

      do
      {
        v6 = *v5++;
        v7 = swift_allocError();
        sub_1B6AB91E0();
        sub_1B69AC828();
        swift_allocError();
        *v8 = v7;
        swift_continuation_throwingResumeWithError();
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    sub_1B6AB9710();
    sub_1B69D02C4(v3);
  }
}

uint64_t sub_1B69C9014(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69C905C, 0, 0);
}

uint64_t sub_1B69C905C()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E88F0] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = v1[13];
  v5 = v1[10];
  swift_getAssociatedTypeWitness();
  v6 = v1[14];
  v7 = v1[11];
  swift_getAssociatedTypeWitness();
  v8 = v1[15];
  v9 = v1[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *v3 = v0;
  v3[1] = sub_1B69C91D4;
  v10 = v0[2];
  v11 = v0[3];

  return MEMORY[0x1EEE6DE18](v10, &unk_1B6ABD1D0);
}

uint64_t sub_1B69C91D4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B69C9308, 0, 0);
}

uint64_t sub_1B69C9320(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a2;
  v4 = *(*a2 + 104);
  v5 = v3[10];
  swift_getAssociatedTypeWitness();
  v6 = v3[14];
  v7 = v3[11];
  swift_getAssociatedTypeWitness();
  v8 = v3[15];
  v9 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v10 = sub_1B6ABA280();
  v2[4] = v10;
  v11 = *(v10 - 8);
  v2[5] = v11;
  v12 = *(v11 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69C9508, 0, 0);
}

uint64_t sub_1B69C9508()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B69C95D0;
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1B69CA84C(v2, 0, 0, sub_1B69D0940, v3);
}

uint64_t sub_1B69C95D0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B69C96CC, 0, 0);
}

uint64_t sub_1B69C96CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  WitnessTable = swift_getWitnessTable();
  sub_1B6A883F4(v3, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B69C97A0(uint64_t a1, void *a2)
{
  v51 = a1;
  v3 = *a2;
  v50 = *(*a2 + 104);
  v49 = v3[10];
  swift_getAssociatedTypeWitness();
  v4 = v3[14];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  v6 = v3[15];
  v7 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v8 = sub_1B6ABA280();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &TupleTypeMetadata3 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &TupleTypeMetadata3 - v12;
  v13 = v49;
  v14 = v50;
  v55 = v49;
  v56 = v5;
  v57 = v7;
  v58 = v50;
  v59 = v4;
  v60 = v6;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction();
  v16 = sub_1B6AB9B30();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &TupleTypeMetadata3 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = a2[2];
  v53 = v51;
  v54 = a2;
  v55 = v13;
  v56 = v5;
  v24 = &TupleTypeMetadata3 - v23;
  v57 = v7;
  v58 = v14;
  v26 = v25;
  v59 = v4;
  v60 = v6;
  v27 = v21;
  type metadata accessor for CombineLatestStateMachine();
  sub_1B6A9C450(sub_1B69D0948, v52, v22);
  (*(v26 + 16))(v20, v24, v27);
  if ((*(*(Action - 8) + 48))(v20, 1, Action) == 1)
  {
    return (*(v26 + 8))(v24, v27);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v32 = *v20;
    v33 = v46;
    (*(*(TupleTypeMetadata3 - 8) + 56))(v46, 1, 1);
    v34 = v48;
    swift_storeEnumTagMultiPayload();
    (*(v47 + 32))(*(*(v32 + 64) + 40), v33, v34);
    swift_continuation_resume();
    return (*(v26 + 8))(v24, v27);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(*v20 + 16);
    if (v29)
    {
      v30 = (*v20 + 32);
      do
      {
        v31 = *v30++;
        swift_continuation_throwingResume();
        --v29;
      }

      while (v29);
    }

    return (*(v26 + 8))(v24, v27);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = *v20;
    v36 = v48;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v38 = v47;
    v39 = *(v47 + 32);
    v40 = &v20[*(TupleTypeMetadata2 + 48)];
    v41 = v46;
    v39(v46, v40, v36);
    v42 = v45;
    (*(v38 + 16))(v45, v41, v36);
    v39(*(*(v35 + 64) + 40), v42, v36);
    swift_continuation_resume();
    (*(v38 + 8))(v41, v36);
    return (*(v26 + 8))(v24, v27);
  }

  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

uint64_t sub_1B69C9D58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v6 = *a3;
  v7 = *(*a3 + 96);
  v56 = sub_1B6AB9B30();
  v52 = *(v56 - 8);
  v8 = *(v52 + 64);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v51 = v47 - v10;
  v50 = *(v6[11] - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v48 = v47 - v13;
  v53 = *(v6[10] - 8);
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v47 - v15;
  v16 = v6[13];
  v17 = v6[14];
  v55 = v18;
  *&v19 = v18;
  v57 = v20;
  *(&v19 + 1) = v20;
  v59 = v19;
  v49 = v7;
  *&v21 = v7;
  v47[1] = v16;
  *(&v21 + 1) = v16;
  v58 = v21;
  v22 = v6[15];
  v62 = v21;
  v61 = v19;
  v63 = v17;
  v64 = v22;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction();
  v24 = *(Action - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](Action);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (v47 - v29);
  v62 = v58;
  v61 = v59;
  v63 = v17;
  v64 = v22;
  v31 = type metadata accessor for CombineLatestStateMachine();
  *&v59 = a2;
  *&v58 = a1;
  sub_1B6A63368(a2, v31, v30);
  (*(v24 + 16))(v28, v30, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v59 = swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      v43 = sub_1B6ABA280();
      sub_1B6AB9740();
      v44 = *(swift_getTupleTypeMetadata2() + 48);
      v45 = v60;
      (*(v24 + 32))(v60, v30, Action);
      (*(v24 + 56))(v45, 0, 1, Action);
      return (*(*(v43 - 8) + 8))(&v28[v44], v43);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v55;
      v34 = v57;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v36 = *(TupleTypeMetadata3 + 48);
      v49 = *(TupleTypeMetadata3 + 64);
      (*(v53 + 32))(v54, v28, v33);
      v37 = v50;
      v38 = v48;
      (*(v50 + 32))(v48, &v28[v36], v34);
      v39 = v52;
      v40 = &v28[v49];
      v41 = v51;
      (*(v52 + 32))(v51, v40, v56);
      sub_1B69CA3D0(v58, v54, v38, v41, v59);
      (*(v39 + 8))(v41, v56);
      (*(v37 + 8))(v38, v57);
      (*(v53 + 8))(v54, v55);
      (*(v24 + 8))(v30, Action);
      return (*(v24 + 56))(v60, 1, 1, Action);
    }

    (*(v24 + 8))(v28, Action);
  }

  v46 = v60;
  (*(v24 + 32))(v60, v30, Action);
  return (*(v24 + 56))(v46, 0, 1, Action);
}

uint64_t sub_1B69CA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a1;
  v54 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v7 = *v5;
  v59 = *(*v5 + 96);
  v58 = sub_1B6AB9B30();
  v56 = *(v58 - 8);
  v49 = *(v56 + 64);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v43 - v9;
  v55 = v7[11];
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v43 - v13;
  v47 = &v43 - v13;
  v15 = v7[10];
  v45 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v43 - v18;
  v46 = &v43 - v18;
  sub_1B69949E8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v23;
  v24 = sub_1B6AB9680();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, v50, v15);
  v44 = v10;
  (*(v10 + 16))(v14, v51, v55);
  v25 = v56;
  (*(v56 + 16))(v57, v52, v58);
  v26 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v10 + 80) + v27 + 8) & ~*(v10 + 80);
  v29 = (v11 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v32 = v45;
  v31 = v46;
  v33 = v55;
  *(v30 + 4) = v45;
  *(v30 + 5) = v33;
  *(v30 + 6) = v59;
  v52 = v7[13];
  *(v30 + 7) = v52;
  v34 = v7[14];
  *(v30 + 8) = v34;
  v35 = v7[15];
  *(v30 + 9) = v35;
  v36 = &v30[v26];
  v37 = v32;
  (*(v16 + 32))(v36, v31);
  *&v30[v27] = v6;
  (*(v44 + 32))(&v30[v28], v47, v33);
  (*(v56 + 32))(&v30[v29], v57, v58);

  v38 = sub_1B69EDFB0(0, 0, v48, &unk_1B6ABD1E8, v30);
  *&v39 = v37;
  *(&v39 + 1) = v33;
  *&v40 = v59;
  *(&v40 + 1) = v52;
  v61 = v40;
  v60 = v39;
  v62 = v34;
  v63 = v35;
  v41 = type metadata accessor for CombineLatestStateMachine();
  sub_1B6A6A5E4(v38, v54, v41);
}

uint64_t sub_1B69CA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B6AB95E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B69CA8E0, v6, v8);
}

uint64_t sub_1B69CA8E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B69CA988;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CA988()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1B69CAA60(void *a1)
{
  v2 = *a1;
  v31 = *(*a1 + 104);
  v3 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2[14];
  v5 = v2[11];
  swift_getAssociatedTypeWitness();
  v6 = v2[15];
  v7 = v2[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v9 = sub_1B6ABA280();
  v29 = *(v9 - 8);
  AssociatedTypeWitness = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = v27 - v11;
  v12 = a1[2];
  v33 = v3;
  v34 = v5;
  v13 = v31;
  v35 = v7;
  v36 = v31;
  v37 = v4;
  v38 = v6;
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v31;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine();
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v13;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine.CancelledAction();
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0880, v32, v12);
  v14 = v39;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    v31 = v41;
    if (v39 < 0)
    {
      v20 = *(v40 + 16);
      if (v20)
      {
        v21 = (v40 + 32);
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v22 = *v21++;
          v23 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v24 = v23;
          swift_continuation_throwingResumeWithError();
          --v20;
        }

        while (v20);
      }

      else
      {
      }

      sub_1B6AB9710();
      sub_1B69D08E8(v14);
    }

    else
    {
      v27[0] = TupleTypeMetadata3;
      v27[1] = v40;
      v15 = *(v41 + 16);
      if (v15)
      {
        v16 = (v41 + 32);
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v17 = *v16++;
          v18 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v19 = v18;
          swift_continuation_throwingResumeWithError();
          --v15;
        }

        while (v15);
      }

      else
      {
      }

      sub_1B6AB9710();
      v25 = v28;
      (*(*(v27[0] - 8) + 56))(v28, 1, 1);
      v26 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 32))(*(*(v14 + 64) + 40), v25, v26);
      swift_continuation_resume();

      sub_1B69D08E8(v14);
    }
  }
}

uint64_t sub_1B69CAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B69CAF48, 0, 0);
}

uint64_t sub_1B69CAF48()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1B69CB038;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, 0, 0, &unk_1B6ABD1F8, v1, v8);
}

void sub_1B69CB038()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_1B69CB16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  v7 = *a4;
  v6[23] = *(*a4 + 104);
  v8 = v7[10];
  v6[24] = v8;
  swift_getAssociatedTypeWitness();
  v6[25] = v7[14];
  v9 = v7[11];
  v6[26] = v9;
  swift_getAssociatedTypeWitness();
  v6[27] = v7[15];
  v10 = v7[12];
  v6[28] = v10;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  v6[29] = sub_1B69AC828();
  v11 = sub_1B6ABA280();
  v6[30] = v11;
  v12 = *(v11 - 8);
  v6[31] = v12;
  v13 = *(v12 + 64) + 15;
  v6[32] = swift_task_alloc();
  v14 = sub_1B6AB9B30();
  v6[33] = v14;
  v15 = *(v14 - 8);
  v6[34] = v15;
  v16 = *(v15 + 64) + 15;
  v6[35] = swift_task_alloc();
  v17 = *(v10 - 8);
  v6[36] = v17;
  v6[37] = *(v17 + 64);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v18 = *(v9 - 8);
  v6[40] = v18;
  v6[41] = *(v18 + 64);
  v6[42] = swift_task_alloc();
  v19 = *(v8 - 8);
  v6[43] = v19;
  v6[44] = *(v19 + 64);
  v6[45] = swift_task_alloc();
  sub_1B69949E8();
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CB504, 0, 0);
}

uint64_t sub_1B69CB504()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v39 = v0[44];
  v41 = v1;
  v44 = v0[42];
  v45 = v0[41];
  v43 = v0[40];
  v47 = v0[34];
  v48 = v0[35];
  v50 = v0[33];
  v52 = v0[36];
  v60 = v0[28];
  v62 = v0[27];
  v4 = v0[26];
  v58 = v0[25];
  v5 = v0[24];
  v46 = v0[22];
  v42 = v0[21];
  v6 = v0[19];
  v54 = v0[20];
  v56 = v0[23];
  v63 = v0[18];
  v7 = sub_1B6AB9680();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v5);
  v9 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *(v10 + 6) = v60;
  *(v10 + 7) = v56;
  *(v10 + 8) = v58;
  *(v10 + 9) = v62;
  (*(v3 + 32))(&v10[v9], v2, v5);
  *&v10[(v39 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v54;

  sub_1B69CD4B4(v41, &unk_1B6ABD208, v10);
  sub_1B69D0D00(v41);
  v38 = v8;
  v40 = v7;
  v8(v41, 1, 1, v7);
  (*(v43 + 16))(v44, v42, v4);
  v11 = (*(v43 + 80) + 80) & ~*(v43 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  *(v12 + 6) = v60;
  *(v12 + 7) = v56;
  *(v12 + 8) = v58;
  *(v12 + 9) = v62;
  (*(v43 + 32))(&v12[v11], v44, v4);
  *&v12[(v45 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v54;

  sub_1B69CD4B4(v41, &unk_1B6ABD218, v12);
  sub_1B69D0D00(v41);
  (*(v47 + 16))(v48, v46, v50);
  if ((*(v52 + 48))(v48, 1, v60) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  else
  {
    v13 = v0[46];
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[36];
    v49 = v14;
    v51 = v0[37];
    v17 = v0[28];
    v61 = v0[27];
    v57 = v0[26];
    v59 = v0[25];
    v53 = v0[24];
    v55 = v0[23];
    v18 = v0[20];
    v19 = v0[18];
    v20 = *(v16 + 32);
    v20(v15, v0[35], v17);
    v38(v13, 1, 1, v40);
    (*(v16 + 16))(v14, v15, v17);
    v21 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v53;
    v22[5] = v57;
    v22[6] = v17;
    v22[7] = v55;
    v22[8] = v59;
    v22[9] = v61;
    v20(v22 + v21, v49, v17);
    *(v22 + ((v51 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1B69CD4B4(v13, &unk_1B6ABD228, v22);
    sub_1B69D0D00(v13);
    (*(v16 + 8))(v15, v17);
  }

  v23 = v0[29];
  v24 = *v0[18];
  if (sub_1B6AB9760())
  {
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[42];
    v29 = v0[38];
    v28 = v0[39];
    v30 = v0[35];
    v31 = v0[32];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = *(MEMORY[0x1E69E8708] + 4);
    v35 = swift_task_alloc();
    v0[47] = v35;
    sub_1B69D0E78();
    *v35 = v0;
    v35[1] = sub_1B69CBAA0;
    v37 = v0[18];

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v36);
  }
}

uint64_t sub_1B69CBAA0()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1B69CBD20;
  }

  else
  {
    v3 = sub_1B69CBBB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B69CBBB4()
{
  v1 = *(v0 + 232);
  v2 = **(v0 + 144);
  if (sub_1B6AB9760())
  {
    v4 = *(v0 + 360);
    v3 = *(v0 + 368);
    v5 = *(v0 + 336);
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 256);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(MEMORY[0x1E69E8708] + 4);
    v13 = swift_task_alloc();
    *(v0 + 376) = v13;
    sub_1B69D0E78();
    *v13 = v0;
    v13[1] = sub_1B69CBAA0;
    v15 = *(v0 + 144);

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v14);
  }
}

uint64_t sub_1B69CBD20()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v51 = *(*(v0 + 160) + 16);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v7;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v1;
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v7;
  *(v0 + 48) = v5;
  *(v0 + 56) = v3;
  type metadata accessor for CombineLatestStateMachine();
  *(v0 + 64) = v6;
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v7;
  *(v0 + 96) = v5;
  *(v0 + 104) = v3;
  type metadata accessor for CombineLatestStateMachine.UpstreamThrewAction();
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0EE4, v8, v51);

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  if ((~(v10 & v11) & 0xF000000000000007) != 0)
  {
    v50 = *(v0 + 120);
    v48 = *(v0 + 136);
    v49 = *(v0 + 128);
    if (v11 < 0)
    {
      v19 = *(v12 + 16);
      if (v19)
      {
        v20 = (v12 + 32);
        v21 = v9;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v22 = *(v0 + 232);
          v23 = *v20++;
          v24 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v25 = v24;
          swift_continuation_throwingResumeWithError();
          --v19;
        }

        while (v19);
      }

      else
      {
        v26 = v9;
      }

      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v29 = *(v0 + 240);
      sub_1B6AB9710();
      v9 = v50;
      *v27 = v50;
      swift_storeEnumTagMultiPayload();
      (*(v28 + 32))(*(*(v10 + 64) + 40), v27, v29);
      swift_continuation_resume();
    }

    else
    {
      v13 = v9[2];
      if (v13)
      {
        v14 = v9 + 4;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v15 = *(v0 + 232);
          v16 = *v14++;
          v17 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v18 = v17;
          swift_continuation_throwingResumeWithError();
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      sub_1B6AB9710();
      v9 = v50;
    }

    v11 = v49;
  }

  v30 = *(v0 + 384);
  v31 = *(v0 + 232);
  v32 = **(v0 + 144);
  sub_1B6AB9770();
  sub_1B69D0F60(v10, v9, v11);

  v33 = *(v0 + 232);
  v34 = **(v0 + 144);
  if (sub_1B6AB9760())
  {
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);
    v37 = *(v0 + 336);
    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = *(v0 + 280);
    v41 = *(v0 + 256);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(MEMORY[0x1E69E8708] + 4);
    v45 = swift_task_alloc();
    *(v0 + 376) = v45;
    sub_1B69D0E78();
    *v45 = v0;
    v45[1] = sub_1B69CBAA0;
    v47 = *(v0 + 144);

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v46);
  }
}

uint64_t sub_1B69CC1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v33 = v7;
  v32 = v6[10];
  *(v5 + 320) = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 328) = AssociatedTypeWitness;
  v9 = v6[14];
  *(v5 + 336) = v9;
  v10 = v6[11];
  *(v5 + 344) = v10;
  swift_getAssociatedTypeWitness();
  v11 = v6[15];
  *(v5 + 352) = v11;
  v12 = v6[12];
  *(v5 + 360) = v12;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 376) = sub_1B69AC828();
  v13 = sub_1B6ABA280();
  *(v5 + 384) = v13;
  v14 = *(v13 - 8);
  *(v5 + 392) = v14;
  *(v5 + 400) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v16 = v32;
  *(&v16 + 1) = v10;
  *&v17 = v12;
  *(&v17 + 1) = v33;
  *(v5 + 96) = v17;
  *(v5 + 80) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v11;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v18 = sub_1B6AB9B30();
  *(v5 + 432) = v18;
  v19 = *(v18 - 8);
  *(v5 + 440) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v21 = sub_1B6AB9B30();
  *(v5 + 464) = v21;
  v22 = *(v21 - 8);
  *(v5 + 472) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v24 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v26 = *(v32 - 8);
  *(v5 + 504) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v28 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v28;
  v29 = *(v28 - 8);
  *(v5 + 528) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CC630, 0, 0);
}

uint64_t sub_1B69CC630()
{
  v1 = v0[67];
  v2 = v0[39];
  (*(v0[63] + 16))(v0[64], v0[37], v0[40]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CC6D4, 0, 0);
}

uint64_t sub_1B69CC6D4()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CC780;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D13BC);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CC780()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69D1458, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[39];
    v6 = v1[40];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1B69CC934;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CC934()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1B69D145C;
  }

  else
  {
    v3 = sub_1B69CCA48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B69CCA48()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[41]) == 1)
  {
    v65 = v0[70];
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[42];
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D12C8, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v40 = v0[47];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[52];
        v46 = v0[48];
        v45 = v0[49];
        v47 = v0[46];
        sub_1B6AB9710();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v14 = v0[47];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
      }

      sub_1B69D1130(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[56];
    v51 = v0[57];
    v54 = v0[51];
    v53 = v0[52];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[62];
  v61 = v0[70];
  v62 = v0[55];
  v59 = v0[57];
  v60 = v0[54];
  v64 = v0[56];
  v66 = v0[53];
  v19 = v0[45];
  v57 = v18;
  v58 = v0[44];
  v21 = v0[42];
  v20 = v0[43];
  v22 = v0[39];
  v23 = v0[40];
  v24 = v0[38];
  (*(v1 + 32))();
  v25 = *(v24 + 16);
  v26 = swift_task_alloc();
  v26[2] = v23;
  v26[3] = v20;
  v26[4] = v19;
  v26[5] = v22;
  v26[6] = v21;
  v26[7] = v58;
  v26[8] = v57;
  v0[28] = v23;
  v0[29] = v20;
  v0[30] = v19;
  v0[31] = v22;
  v0[32] = v21;
  v0[33] = v58;
  type metadata accessor for CombineLatestStateMachine();
  sub_1B6A9C450(sub_1B69D1360, v26, v25);

  (*(v62 + 16))(v64, v59, v60);
  if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
  {
    v27 = v0[56];
    v29 = v0[51];
    v28 = v0[52];
    v30 = v0[49];
    v31 = v0[50];
    v32 = v0[48];
    v33 = *v27;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
    (*(v31 + 16))(v29, v28, v32);
    (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
    swift_continuation_resume();
    (*(v31 + 8))(v28, v32);
  }

  v36 = v0[61];
  v35 = v0[62];
  v37 = v0[41];
  (*(v0[55] + 8))(v0[57], v0[54]);
  (*(v36 + 8))(v35, v37);

  return MEMORY[0x1EEE6DFA0](sub_1B69CC6D4, 0, 0);
}

uint64_t sub_1B69CD104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  v31 = a2;
  v32 = a7;
  v27 = a3;
  v28 = a6;
  v34 = a5;
  v30 = a4;
  v38 = a9;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_1B6AB9B30();
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v26 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v33 = sub_1B6AB9B30();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v26 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v29 = sub_1B6AB9B30();
  v19 = *(v29 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v22 = &v26 - v21;
  v23 = *(v18 - 8);
  (*(v23 + 16))(&v26 - v21, v31, v18);
  (*(v23 + 56))(v22, 0, 1, v18);
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v40 = v27;
  v41 = v30;
  v42 = v34;
  v43 = v28;
  v44 = v32;
  v45 = v36;
  v24 = type metadata accessor for CombineLatestStateMachine();
  sub_1B6A65A18(v22, v17, v12, v24, v38);
  (*(v35 + 8))(v12, v37);
  (*(v14 + 8))(v17, v33);
  return (*(v19 + 8))(v22, v29);
}

uint64_t sub_1B69CD4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69949E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a1, v10);
  v11 = sub_1B6AB9680();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B69D0D00(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1B6AB95E0();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB9670();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1B69CD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v32 = v6[14];
  *(v5 + 328) = v32;
  v31 = v6[11];
  *(v5 + 336) = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 344) = AssociatedTypeWitness;
  v10 = v6[15];
  *(v5 + 352) = v10;
  v11 = v6[12];
  *(v5 + 360) = v11;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 376) = sub_1B69AC828();
  v12 = sub_1B6ABA280();
  *(v5 + 384) = v12;
  v13 = *(v12 - 8);
  *(v5 + 392) = v13;
  *(v5 + 400) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v15 = v8;
  *(&v15 + 1) = v31;
  *&v16 = v11;
  *(&v16 + 1) = v7;
  *(v5 + 96) = v16;
  *(v5 + 80) = v15;
  *(v5 + 112) = v32;
  *(v5 + 120) = v10;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v17 = sub_1B6AB9B30();
  *(v5 + 432) = v17;
  v18 = *(v17 - 8);
  *(v5 + 440) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v20 = sub_1B6AB9B30();
  *(v5 + 464) = v20;
  v21 = *(v20 - 8);
  *(v5 + 472) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v23 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v25 = *(v31 - 8);
  *(v5 + 504) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v27 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v27;
  v28 = *(v27 - 8);
  *(v5 + 528) = v28;
  v29 = *(v28 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CDAD0, 0, 0);
}

uint64_t sub_1B69CDAD0()
{
  v1 = v0[67];
  v2 = v0[41];
  (*(v0[63] + 16))(v0[64], v0[37], v0[42]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CDB74, 0, 0);
}

uint64_t sub_1B69CDB74()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CDC20;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D1248);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CDC20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69CDEE8, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[41];
    v6 = v1[42];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1B69CDDD4;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CDDD4()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1B69CE694;
  }

  else
  {
    v3 = sub_1B69CDFD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B69CDEE8()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[51];
  v7 = v0[52];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B69CDFD8()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[43]) == 1)
  {
    v65 = v0[70];
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D1200, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v40 = v0[47];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[52];
        v46 = v0[48];
        v45 = v0[49];
        v47 = v0[46];
        sub_1B6AB9710();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v14 = v0[47];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
      }

      sub_1B69D1130(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[56];
    v51 = v0[57];
    v54 = v0[51];
    v53 = v0[52];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[62];
  v61 = v0[70];
  v62 = v0[55];
  v59 = v0[57];
  v60 = v0[54];
  v64 = v0[56];
  v66 = v0[53];
  v19 = v0[45];
  v57 = v18;
  v58 = v0[44];
  v21 = v0[41];
  v20 = v0[42];
  v22 = v0[39];
  v23 = v0[40];
  v24 = v0[38];
  (*(v1 + 32))();
  v25 = *(v24 + 16);
  v26 = swift_task_alloc();
  v26[2] = v23;
  v26[3] = v20;
  v26[4] = v19;
  v26[5] = v22;
  v26[6] = v21;
  v26[7] = v58;
  v26[8] = v57;
  v0[28] = v23;
  v0[29] = v20;
  v0[30] = v19;
  v0[31] = v22;
  v0[32] = v21;
  v0[33] = v58;
  type metadata accessor for CombineLatestStateMachine();
  sub_1B6A9C450(sub_1B69D121C, v26, v25);

  (*(v62 + 16))(v64, v59, v60);
  if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
  {
    v27 = v0[56];
    v29 = v0[51];
    v28 = v0[52];
    v30 = v0[49];
    v31 = v0[50];
    v32 = v0[48];
    v33 = *v27;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
    (*(v31 + 16))(v29, v28, v32);
    (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
    swift_continuation_resume();
    (*(v31 + 8))(v28, v32);
  }

  v36 = v0[61];
  v35 = v0[62];
  v37 = v0[43];
  (*(v0[55] + 8))(v0[57], v0[54]);
  (*(v36 + 8))(v35, v37);

  return MEMORY[0x1EEE6DFA0](sub_1B69CDB74, 0, 0);
}

uint64_t sub_1B69CE694()
{
  v1 = v0[70];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[51];
  v7 = v0[52];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B69CE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a8;
  v29 = a4;
  v30 = a7;
  v27 = a3;
  v28 = a6;
  v33 = a5;
  v31 = a2;
  v37 = a9;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1B6AB9B30();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v27 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v32 = sub_1B6AB9B30();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1B6AB9B30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  (*(*(v18 - 8) + 56))(&v27 - v22, 1, 1, v18);
  v24 = *(v13 - 8);
  (*(v24 + 16))(v17, v31, v13);
  (*(v24 + 56))(v17, 0, 1, v13);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v39 = v27;
  v40 = v29;
  v41 = v33;
  v42 = v28;
  v43 = v30;
  v44 = v35;
  v25 = type metadata accessor for CombineLatestStateMachine();
  sub_1B6A65A18(v23, v17, v12, v25, v37);
  (*(v34 + 8))(v12, v36);
  (*(v14 + 8))(v17, v32);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1B69CEB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v33 = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v9 = v6[14];
  *(v5 + 328) = v9;
  v10 = v6[11];
  *(v5 + 336) = v10;
  swift_getAssociatedTypeWitness();
  v32 = v6[15];
  *(v5 + 344) = v32;
  v11 = v6[12];
  *(v5 + 352) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 360) = AssociatedTypeWitness;
  v13 = sub_1B6AB9B30();
  *(v5 + 368) = v13;
  *(v5 + 376) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 384) = sub_1B69AC828();
  v14 = sub_1B6ABA280();
  *(v5 + 392) = v14;
  v15 = *(v14 - 8);
  *(v5 + 400) = v15;
  *(v5 + 408) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *&v17 = v8;
  *(&v17 + 1) = v10;
  *&v18 = v11;
  *(&v18 + 1) = v33;
  *(v5 + 96) = v18;
  *(v5 + 80) = v17;
  *(v5 + 112) = v9;
  *(v5 + 120) = v32;
  *(v5 + 432) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v19 = sub_1B6AB9B30();
  *(v5 + 440) = v19;
  v20 = *(v19 - 8);
  *(v5 + 448) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  v22 = *(v13 - 8);
  *(v5 + 472) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v24 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v26 = *(v11 - 8);
  *(v5 + 504) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v28 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v28;
  v29 = *(v28 - 8);
  *(v5 + 528) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CEF84, 0, 0);
}

uint64_t sub_1B69CEF84()
{
  v1 = v0[67];
  v2 = v0[43];
  (*(v0[63] + 16))(v0[64], v0[37], v0[44]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CF028, 0, 0);
}

uint64_t sub_1B69CF028()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CF0D4;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D11B0);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CF0D4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69CF39C, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[43];
    v6 = v1[44];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1B69CF288;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CF288()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1B69CFB4C;
  }

  else
  {
    v3 = sub_1B69CF48C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B69CF39C()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[52];
  v7 = v0[53];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B69CF48C()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[45]) == 1)
  {
    v65 = v0[70];
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[46]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D1114, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v40 = v0[48];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[53];
        v46 = v0[49];
        v45 = v0[50];
        v47 = v0[47];
        sub_1B6AB9710();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v14 = v0[48];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
      }

      sub_1B69D1130(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[57];
    v51 = v0[58];
    v54 = v0[52];
    v53 = v0[53];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[62];
  v61 = v0[70];
  v62 = v0[56];
  v59 = v0[58];
  v60 = v0[55];
  v64 = v0[57];
  v66 = v0[54];
  v19 = v0[44];
  v57 = v18;
  v58 = v0[43];
  v21 = v0[41];
  v20 = v0[42];
  v22 = v0[39];
  v23 = v0[40];
  v24 = v0[38];
  (*(v1 + 32))();
  v25 = *(v24 + 16);
  v26 = swift_task_alloc();
  v26[2] = v23;
  v26[3] = v20;
  v26[4] = v19;
  v26[5] = v22;
  v26[6] = v21;
  v26[7] = v58;
  v26[8] = v57;
  v0[28] = v23;
  v0[29] = v20;
  v0[30] = v19;
  v0[31] = v22;
  v0[32] = v21;
  v0[33] = v58;
  type metadata accessor for CombineLatestStateMachine();
  sub_1B6A9C450(sub_1B69D1184, v26, v25);

  (*(v62 + 16))(v64, v59, v60);
  if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
  {
    v27 = v0[57];
    v29 = v0[52];
    v28 = v0[53];
    v30 = v0[50];
    v31 = v0[51];
    v32 = v0[49];
    v33 = *v27;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
    (*(v31 + 16))(v29, v28, v32);
    (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
    swift_continuation_resume();
    (*(v31 + 8))(v28, v32);
  }

  v36 = v0[61];
  v35 = v0[62];
  v37 = v0[45];
  (*(v0[56] + 8))(v0[58], v0[55]);
  (*(v36 + 8))(v35, v37);

  return MEMORY[0x1EEE6DFA0](sub_1B69CF028, 0, 0);
}

uint64_t sub_1B69CFB4C()
{
  v1 = v0[70];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[52];
  v7 = v0[53];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

void sub_1B69CFC3C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *a2;
  v5 = a2[2];
  v10 = *(*a2 + 80);
  v11 = v4[11];
  v12 = v4[12];
  v13 = v4[13];
  v14 = v4[14];
  v15 = v4[15];
  v16 = a1;
  type metadata accessor for CombineLatestStateMachine();
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine.ChildTaskSuspendedAction();
  sub_1B6AB9B30();
  sub_1B6A9C450(a3, &v9, v5);
  v6 = v17;
  v7 = v18;
  if ((~v17 & 0xF00000000000000FLL) != 0 || (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    if (v18 < 0)
    {
      sub_1B69AC828();
      swift_allocError();
      *v8 = v7 & 0x7FFFFFFFFFFFFFFFLL;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      swift_continuation_throwingResume();
      sub_1B69D11CC(v6, v7);
    }
  }
}

uint64_t sub_1B69CFDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a8;
  v29 = a4;
  v30 = a7;
  v27 = a3;
  v28 = a6;
  v32 = a2;
  v33 = a5;
  v37 = a9;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1B6AB9B30();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v27 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v31 = sub_1B6AB9B30();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1B6AB9B30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  (*(*(v18 - 8) + 56))(&v27 - v22, 1, 1, v18);
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(v12, v32, AssociatedTypeWitness);
  (*(v24 + 56))(v12, 0, 1, AssociatedTypeWitness);
  v39 = v27;
  v40 = v29;
  v41 = v33;
  v42 = v28;
  v43 = v30;
  v44 = v35;
  v25 = type metadata accessor for CombineLatestStateMachine();
  sub_1B6A65A18(v23, v17, v12, v25, v37);
  (*(v34 + 8))(v12, v36);
  (*(v14 + 8))(v17, v31);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1B69D0198()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B69D01B8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69D0208@<X0>(uint64_t *a1@<X8>)
{
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v3 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1B6A62B00(v3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1B69D026C()
{
  result = qword_1EB95AC60;
  if (!qword_1EB95AC60)
  {
    sub_1B6AB9610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC60);
  }

  return result;
}

uint64_t sub_1B69D02C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B69D0304()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B6AB9D30();
  return sub_1B6AB9D20();
}

void *sub_1B69D0380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v4 = *v3;
  v34 = *(*v3 + 96);
  v5 = v34;
  v39 = sub_1B6AB9B30();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v32 - v8;
  v9 = v4[11];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v13;
  v14 = v4[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v32 - v17;
  v33 = v4[13];
  v32 = v4[14];
  *&v19 = v14;
  *(&v19 + 1) = v9;
  *&v20 = v5;
  *(&v20 + 1) = v33;
  v21 = v4[15];
  v42 = v19;
  v43 = v20;
  v44 = v32;
  v45 = v21;
  v22 = type metadata accessor for CombineLatestStateMachine();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  (*(v15 + 16))(v18, v38, v14);
  v27 = *(v10 + 16);
  v28 = v35;
  v27(v35, v40, v9);
  v29 = v36;
  (*(v37 + 16))(v36, v41, v39);
  sub_1B6A628D8(v18, v28, v29, v14, v9, v34, v26);
  v30 = sub_1B69D0304();
  (*(v23 + 8))(v26, v22);
  v3[2] = v30;
  return v3;
}

uint64_t sub_1B69D0744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1B69D07DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B69AD75C;

  return sub_1B69C9320(a1, v1);
}

unint64_t sub_1B69D0880@<X0>(unint64_t *a1@<X8>)
{
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v3 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1B6A646A4(v3);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t sub_1B69D08E8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B69D08FC();
  }

  return result;
}

uint64_t sub_1B69D08FC()
{
}

uint64_t sub_1B69D0964(uint64_t a1)
{
  v3 = v2;
  v5 = v1[6];
  v6 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v7 = (*(*(v1[4] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1[5] - 8);
  v9 = *(v8 + 64);
  v10 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = *(sub_1B6AB9B30() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B69AD75C;

  return sub_1B69CAF20(a1, v13, v14, v1 + v6, v15, v1 + v10, v1 + v12);
}

uint64_t sub_1B69D0B1C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B69D1460;

  return sub_1B69CB16C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1B69D0BE4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CC1D8(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_1B69D0D00(uint64_t a1)
{
  sub_1B69949E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69D0D5C(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[5] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CD67C(a1, v5, v6, v1 + v4, v7);
}

void sub_1B69D0E78()
{
  if (!qword_1EB95AC68)
  {
    sub_1B69AC828();
    v0 = sub_1B6AB9780();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AC68);
    }
  }
}

uint64_t sub_1B69D0EE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v4 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1B6A698C4(v3, v4);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_1B69D0F60(uint64_t a1, id a2, uint64_t a3)
{
  if ((~(a1 & a3) & 0xF000000000000007) != 0)
  {
    return sub_1B69D0F78(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B69D0F78(int a1, id a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1B69D0FF8(uint64_t a1)
{
  v4 = (*(*(v1[6] - 8) + 80) + 80) & ~*(*(v1[6] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[6] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CEB34(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1B69D1130(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B69D1144();
  }

  return result;
}

uint64_t sub_1B69D1144()
{
}

void sub_1B69D11CC(uint64_t a1, uint64_t a2)
{
  if ((~a1 & 0xF00000000000000FLL) != 0 || (a2 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1B69D11F0(a1, a2);
  }
}

void sub_1B69D11F0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1B69D1264(uint64_t a1, uint64_t a2)
{
  sub_1B69949E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69D12E4@<X0>(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v5 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1B6A68528(a1, v5);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t sub_1B69D13D8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  v6 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1B6A65470(a1, v5, v6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B69D146C()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t sub_1B69D14B0()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t ExternalAnalyticsUploader.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v2 = sub_1B6AB92B0();
    [v1 set:v2 sourceApplicationBundleIdentifier:?];
  }

  v3 = [objc_opt_self() sessionWithConfiguration:v1 delegate:0 delegateQueue:0];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t ExternalAnalyticsUploader.init()()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v2 = sub_1B6AB92B0();
    [v1 set:v2 sourceApplicationBundleIdentifier:?];
  }

  v3 = [objc_opt_self() sessionWithConfiguration:v1 delegate:0 delegateQueue:0];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t ExternalAnalyticsUploader.submitExternalAnalytics(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB8BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8810();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  sub_1B6AB87D0();
  v17 = *(v3 + 16);
  v18 = sub_1B6AB87A0();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  aBlock[4] = sub_1B69D1B50;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B69D1A0C;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  v21 = [v17 dataTaskWithRequest:v18 completionHandler:v20];
  _Block_release(v20);

  [v21 resume];
  return (*(v13 + 8))(v16, v12);
}

void sub_1B69D1944(int a1, int a2, void *a3, id a4, void (*a5)(id *))
{
  if (a3 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v8;
    v12 = 0;
    v9 = a3;
  }

  else if (a4)
  {
    v11 = a4;
    v12 = 1;
    v10 = a4;
  }

  else
  {
    sub_1B69D1BBC();
    v11 = swift_allocError();
    v12 = 1;
  }

  a5(&v11);
  sub_1B69D1C10(v11);
}

uint64_t sub_1B69D1A0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1B6AB8C80();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1B69AE288(v6, v11);
}

uint64_t ExternalAnalyticsUploader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B69D1BBC()
{
  result = qword_1EB95AC70;
  if (!qword_1EB95AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC70);
  }

  return result;
}

unint64_t sub_1B69D1C38()
{
  result = qword_1EB95AC78;
  if (!qword_1EB95AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC78);
  }

  return result;
}

uint64_t sub_1B69D1CAC()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B69D1D20()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B69D1D64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69D2268(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t BridgedSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AASession_identifier);
  v2 = *(v0 + OBJC_IVAR___AASession_identifier + 8);

  return v1;
}

uint64_t BridgedSession.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AASession_name);
  v2 = *(v0 + OBJC_IVAR___AASession_name + 8);

  return v1;
}

uint64_t BridgedSession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AASession_startDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BridgedSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B69D2268(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for BridgedSession()
{
  result = qword_1EB95ACA0;
  if (!qword_1EB95ACA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B69D22C8()
{
  result = qword_1EB95AC98;
  if (!qword_1EB95AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC98);
  }

  return result;
}

uint64_t sub_1B69D2334()
{
  result = sub_1B6AB8DB0();
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

void sub_1B69D240C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ProcessEvent();
  v3 = sub_1B6AB067C(v2, &protocol witness table for ProcessEvent<A>);
  [v1 processEvent_];
}

uint64_t sub_1B69D2484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B69D24FC(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = *(v4 + 16);
  result = [v7 respondsToSelector_];
  if (result)
  {
    v9 = *a4;

    return [v7 v9];
  }

  return result;
}

void sub_1B69D2588(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  if ([v6 respondsToSelector_])
  {
    v7 = sub_1B6A4197C();
    [v6 *a4];
  }
}

void sub_1B69D261C()
{
  v1 = *(v0 + 16);
  if ([v1 respondsToSelector_])
  {
    v2 = sub_1B6A4197C();
    v3 = sub_1B6AB8D20();
    [v1 didEndSession:v2 endDate:v3];
  }
}

uint64_t static DenylistDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B6ABA0F0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B6ABA0F0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1B6ABA0F0();
}

uint64_t DenylistDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6AB9380();
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t DenylistDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D28D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D295C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6AB9380();
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t DenylistDescriptor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6999200(0, &qword_1EDBCBB08, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B6ABD530;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_1B6999200(0, &qword_1EDBCAFF0, MEMORY[0x1E69E62F8]);
  sub_1B699918C();

  v8 = sub_1B6AB9290();

  return v8;
}

uint64_t sub_1B69D2ADC(uint64_t a1, int a2)
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

uint64_t sub_1B69D2B24(uint64_t result, int a2, int a3)
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

uint64_t CrashException.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrashException.signal.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CrashTerminationReason.namespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrashDetails.exception.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B69D2C14(v2, v3);
}

uint64_t sub_1B69D2C14(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t CrashDetails.terminationReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B69D2C68(v2, v3);
}

uint64_t sub_1B69D2C68(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B69D2C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B69D2CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B69D2D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B69D2DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B69D2E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1B69D2E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t static PrivacyValidation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1B69D2F14(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1B69D2F14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v32 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v39 = a2 + 56;
  v33 = v6;
  v34 = result;
  v36 = a2;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v35 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 48 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = *(a2 + 40);
      v18 = a2;
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v40 = v14;
      v41 = v13;
      sub_1B6AB9380();
      v19 = v15;
      v20 = v16;
      sub_1B6AB9380();
      v21 = sub_1B6ABA230();
      v22 = -1 << *(v18 + 32);
      v23 = v21 & ~v22;
      if (((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v37 = ~v22;
      v38 = *(v36 + 48);
      while (1)
      {
        v24 = (v38 + 48 * v23);
        v26 = v24[2];
        v25 = v24[3];
        v27 = v24[4];
        v28 = v24[5];
        v29 = *v24 == v12 && v24[1] == v11;
        if (v29 || (sub_1B6ABA0F0() & 1) != 0)
        {
          v30 = v26 == v40 && v25 == v41;
          if (v30 || (sub_1B6ABA0F0() & 1) != 0)
          {
            v31 = v27 == v19 && v28 == v20;
            if (v31 || (sub_1B6ABA0F0() & 1) != 0)
            {
              break;
            }
          }
        }

        v23 = (v23 + 1) & v37;
        if (((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v6 = v33;
      result = v34;
      v5 = v35;
      a2 = v36;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

LABEL_34:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v32 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69D31D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1B69D2F14(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t PrivacyValidation.denylistDescriptors.getter()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1B69D3240(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69D3290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B69D32E4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B69D32FC(uint64_t a1, int a2)
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

uint64_t sub_1B69D3344(uint64_t result, int a2, int a3)
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

void sub_1B69D3390(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

void static EventType.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B69D354C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v99 = a8;
  v98 = a7;
  v107 = a5;
  v111 = a4;
  v103 = a9;
  result[25] = *MEMORY[0x1E69E9840];
  v105 = a6;
  v104 = *(a6 - 8);
  v12 = v104[8];
  v13 = MEMORY[0x1EEE9AC00](a1);
  v97 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v109 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v92 - v17;

  v101 = a1;
  v102 = a2;
  v18 = sub_1B699F46C(a1, a2);
  v20 = v19;
  sub_1B69D63D4(0, &qword_1EB95ACC8, sub_1B69D6438, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD880;
  v22 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v23 = *MEMORY[0x1E697B020];
  type metadata accessor for CFString(0);
  v24 = MEMORY[0x1E697AC48];
  *(inited + 40) = v23;
  v25 = *v24;
  v108 = v26;
  *(inited + 64) = v26;
  *(inited + 72) = v25;
  v27 = MEMORY[0x1E6969080];
  *(inited + 80) = v18;
  *(inited + 88) = v20;
  v28 = *MEMORY[0x1E697AEB0];
  *(inited + 104) = v27;
  *(inited + 112) = v28;
  v29 = MEMORY[0x1E69E6370];
  *(inited + 120) = a3;
  v30 = *MEMORY[0x1E697B318];
  *(inited + 144) = v29;
  *(inited + 152) = v30;
  *(inited + 184) = v29;
  *(inited + 160) = 1;
  v31 = v22;
  v32 = v23;
  v33 = v25;
  v34 = v28;
  v35 = v107;
  v36 = v20;
  v37 = v18;
  v38 = v30;
  v110 = v36;
  sub_1B6994494(v18, v36);
  v39 = sub_1B69F7264(inited);
  swift_setDeallocating();
  sub_1B69D6438();
  swift_arrayDestroy();
  if (v35)
  {
    v40 = *MEMORY[0x1E697ABD0];
    v41 = v111;
    *&v112 = v111;
    *(&v112 + 1) = v35;
    v113 = MEMORY[0x1E69E6158];
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result[0] = v39;
    sub_1B69E6C34(&v112, v40, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v41 = v111;
  }

  result[0] = 0;
  sub_1B69825A8(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  sub_1B69D62A0();
  v43 = sub_1B6AB91F0();
  v44 = SecItemCopyMatching(v43, result);

  v45 = v109;
  if (v44)
  {
    if (v44 == -25300)
    {

      sub_1B6993C94(v37, v110);

LABEL_16:
      v56 = 1;
LABEL_17:
      v57 = v105;
      v58 = v103;
      v59 = v104;
LABEL_18:
      (v59[7])(v58, v56, 1, v57);
      goto LABEL_28;
    }

    v53 = SecCopyErrorMessageString(v44, 0);
    if (v53)
    {
      v54 = v53;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v112 = 0uLL;
        sub_1B6AB92D0();

        v55 = *(&v112 + 1);
        if (*(&v112 + 1))
        {
          v109 = v112;

LABEL_22:
          v60 = v102;
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v61 = sub_1B6AB8F90();
          __swift_project_value_buffer(v61, qword_1EDBCFD80);

          v62 = sub_1B6AB8F80();
          v63 = sub_1B6AB98E0();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v114 = v65;
            *v64 = 136315650;
            *(v64 + 4) = sub_1B698F63C(v101, v60, &v114);
            *(v64 + 12) = 2080;
            *&v112 = v41;
            *(&v112 + 1) = v35;
            sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v66 = sub_1B6AB9330();
            v68 = v37;
            v69 = sub_1B698F63C(v66, v67, &v114);

            *(v64 + 14) = v69;
            v37 = v68;
            *(v64 + 22) = 2080;
            v70 = v109;
            *(v64 + 24) = sub_1B698F63C(v109, v55, &v114);
            _os_log_impl(&dword_1B697C000, v62, v63, "Failed to read value at key: %s, from keychain access group: %s, with error: %s", v64, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v65, -1, -1);
            MEMORY[0x1B8C99550](v64, -1, -1);
          }

          else
          {

            v70 = v109;
          }

          sub_1B69D62F8();
          swift_allocError();
          *v71 = v70;
          v71[1] = v55;
          swift_willThrow();
          sub_1B6993C94(v37, v110);
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    v109 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (!result[0])
  {

    sub_1B6993C94(v37, v110);
    goto LABEL_16;
  }

  v114 = result[0];
  swift_unknownObjectRetain();
  v46 = swift_dynamicCast();
  v47 = v106;
  if ((v46 & 1) == 0)
  {

    sub_1B6993C94(v37, v110);
    v56 = 1;
    goto LABEL_17;
  }

  v48 = v112;
  v49 = sub_1B6AB8840();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_1B6AB8830();
  v52 = v100;
  sub_1B6AB8820();
  if (!v47)
  {
    v108 = *(&v48 + 1);
    v99 = v48;
    v106 = 0;

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v74 = sub_1B6AB8F90();
    __swift_project_value_buffer(v74, qword_1EDBCFD80);
    v94 = v104[2];
    v94(v45, v52, v105);

    v75 = sub_1B6AB8F80();
    v76 = sub_1B6AB98D0();

    v95 = v76;
    v96 = v75;
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v114 = v93;
      *v77 = 136315650;
      v78 = v97;
      v57 = v105;
      v94(v97, v45, v105);
      v79 = v45;
      v80 = v104[1];
      v80(v79, v57);
      v81 = sub_1B6ABA080();
      v83 = v82;
      v80(v78, v57);
      v84 = sub_1B698F63C(v81, v83, &v114);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_1B698F63C(v101, v102, &v114);
      *(v77 + 22) = 2080;
      *&v112 = v111;
      *(&v112 + 1) = v35;
      sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v85 = sub_1B6AB9330();
      v87 = sub_1B698F63C(v85, v86, &v114);

      *(v77 + 24) = v87;
      v88 = v96;
      _os_log_impl(&dword_1B697C000, v96, v95, "Value: %s, at key: %s read from access group: %s", v77, 0x20u);
      v89 = v93;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v89, -1, -1);
      v90 = v77;
      v52 = v100;
      MEMORY[0x1B8C99550](v90, -1, -1);
      sub_1B6993C94(v37, v110);
      sub_1B6993C94(v99, v108);

      v91 = v103;
      v59 = v104;
    }

    else
    {
      v59 = v104;
      v57 = v105;
      (v104[1])(v45, v105);

      sub_1B6993C94(v37, v110);
      sub_1B6993C94(v99, v108);

      v91 = v103;
    }

    (v59[4])(v91, v52, v57);
    v58 = v91;
    v56 = 0;
    goto LABEL_18;
  }

  sub_1B6993C94(v37, v110);
  sub_1B6993C94(v48, *(&v48 + 1));

LABEL_28:
  v72 = swift_unknownObjectRelease();
  v73 = *MEMORY[0x1E69E9840];
  return v72;
}

void sub_1B69D4140(void (*a1)(void, void, void), uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v170 = a8;
  v179 = a6;
  LODWORD(v173) = a4;
  v174 = *(a7 - 8);
  v175 = a5;
  v12 = *(v174 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v172 = v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v169 = v161 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v167 = v161 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v161 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v161 - v22;

  v171 = a2;
  v176 = a3;
  v178 = sub_1B699F46C(a2, a3);
  v180 = v24;
  v25 = sub_1B6AB88A0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  v28 = a1;
  v29 = a7;
  v30 = v177;
  v31 = sub_1B6AB8870();
  v33 = v32;

  if (!v30)
  {
    v161[0] = v23;
    v161[1] = 0;
    v165 = v28;
    v166 = v29;
    v162 = v21;
    v177 = v31;
    v168 = v33;
    sub_1B69D63D4(0, &qword_1EB95ACB0, sub_1B69D5350, MEMORY[0x1E69E6F90]);
    v163 = v36;
    inited = swift_initStackObject();
    v38 = v178;
    v39 = inited;
    *(inited + 16) = xmmword_1B6ABD530;
    v40 = *MEMORY[0x1E697AFF8];
    *(inited + 32) = *MEMORY[0x1E697AFF8];
    v41 = *MEMORY[0x1E697B020];
    type metadata accessor for CFString(0);
    v42 = MEMORY[0x1E697AC48];
    *(v39 + 40) = v41;
    v43 = *v42;
    v164 = v44;
    *(v39 + 64) = v44;
    *(v39 + 72) = v43;
    v45 = MEMORY[0x1E6969080];
    v46 = v180;
    *(v39 + 80) = v38;
    *(v39 + 88) = v46;
    v47 = *MEMORY[0x1E697AEB0];
    *(v39 + 104) = v45;
    *(v39 + 112) = v47;
    *(v39 + 144) = MEMORY[0x1E69E6370];
    *(v39 + 120) = v173 & 1;
    v48 = v40;
    v49 = v41;
    v50 = v43;
    v51 = v47;
    sub_1B6994494(v38, v180);
    v52 = sub_1B69F7378(v39);
    swift_setDeallocating();
    sub_1B69D5350();
    v53 = v179;
    swift_arrayDestroy();
    if (v53)
    {

      v54 = *MEMORY[0x1E697ABD0];
      v183 = MEMORY[0x1E69E6158];
      *&v182 = v175;
      *(&v182 + 1) = v53;
      sub_1B69979CC(&v182, v181);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v52;
      sub_1B69E6DA4(v181, v54, isUniquelyReferenced_nonNull_native);
      v52 = v184;
    }

    v56 = v168;
    v57 = v177;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1B6ABD890;
    v59 = *MEMORY[0x1E697B3C0];
    *(v58 + 32) = *MEMORY[0x1E697B3C0];
    *(v58 + 64) = MEMORY[0x1E6969080];
    *(v58 + 40) = v57;
    *(v58 + 48) = v56;
    v173 = v59;
    sub_1B6994494(v57, v56);
    sub_1B69F7378(v58);
    swift_setDeallocating();
    sub_1B69D6244(v58 + 32);
    sub_1B69D62A0();
    v60 = sub_1B6AB91F0();
    v61 = sub_1B6AB91F0();

    v62 = SecItemUpdate(v60, v61);
    swift_bridgeObjectRelease_n();

    if (v62 == -25300)
    {
      v183 = MEMORY[0x1E6969080];
      v81 = v177;
      *&v182 = v177;
      *(&v182 + 1) = v56;
      sub_1B69979CC(&v182, v181);
      sub_1B6994494(v81, v56);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v52;
      sub_1B69E6DA4(v181, v173, v82);
      v83 = sub_1B6AB91F0();
      v84 = SecItemAdd(v83, 0);

      v85 = v166;
      if (!v84)
      {

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v94 = sub_1B6AB8F90();
        __swift_project_value_buffer(v94, qword_1EDBCFD80);
        v95 = v174;
        v96 = v167;
        v172 = *(v174 + 16);
        (v172)(v167, v165, v85);

        v67 = sub_1B6AB8F80();
        v97 = sub_1B6AB98D0();

        LODWORD(v173) = v97;
        if (!os_log_type_enabled(v67, v97))
        {
          (*(v95 + 8))(v96, v166);

          sub_1B6993C94(v178, v180);
          v111 = v81;
          goto LABEL_23;
        }

        v98 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        *&v181[0] = v169;
        *v98 = 136315650;
        v99 = v67;
        v100 = v162;
        v101 = v166;
        (v172)(v162, v96, v166);
        v102 = *(v95 + 8);
        v102(v96, v101);
        v103 = sub_1B6ABA080();
        v105 = v104;
        v102(v100, v101);
        v106 = sub_1B698F63C(v103, v105, v181);

        *(v98 + 4) = v106;
        *(v98 + 12) = 2080;
        *(v98 + 14) = sub_1B698F63C(v171, v176, v181);
        *(v98 + 22) = 2080;
        *&v182 = v175;
        *(&v182 + 1) = v179;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v107 = sub_1B6AB9330();
        v109 = sub_1B698F63C(v107, v108, v181);

        *(v98 + 24) = v109;
        v67 = v99;
        _os_log_impl(&dword_1B697C000, v99, v173, "Value: %s, at key: %s written to keychain access group: %s", v98, 0x20u);
        v110 = v169;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v110, -1, -1);
        v80 = v98;
        goto LABEL_21;
      }

      v86 = SecCopyErrorMessageString(v84, 0);
      v87 = v174;
      if (v86)
      {
        v88 = v86;
        v172 = sub_1B6AB92E0();
        v173 = v89;
      }

      else
      {
        v172 = 0x206E776F6E6B6E55;

        v173 = 0xED0000726F727265;
      }

      v137 = v165;
      v138 = v169;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v139 = sub_1B6AB8F90();
      __swift_project_value_buffer(v139, qword_1EDBCFD80);
      v165 = *(v87 + 16);
      v165(v138, v137, v85);

      v140 = v173;

      v141 = sub_1B6AB8F80();
      v142 = v85;
      v143 = sub_1B6AB98E0();

      LODWORD(v167) = v143;
      if (os_log_type_enabled(v141, v143))
      {
        v144 = v142;
        v145 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v181[0] = v164;
        *v145 = 136315906;
        v146 = v141;
        v147 = v162;
        v148 = v169;
        v165(v162, v169, v144);
        v149 = *(v87 + 8);
        v149(v148, v144);
        v150 = sub_1B6ABA080();
        v152 = v151;
        v149(v147, v144);
        v153 = sub_1B698F63C(v150, v152, v181);

        *(v145 + 4) = v153;
        *(v145 + 12) = 2080;
        *(v145 + 14) = sub_1B698F63C(v171, v176, v181);
        *(v145 + 22) = 2080;
        *&v182 = v175;
        *(&v182 + 1) = v179;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v154 = sub_1B6AB9330();
        v156 = sub_1B698F63C(v154, v155, v181);

        *(v145 + 24) = v156;
        *(v145 + 32) = 2080;
        v157 = v172;
        *(v145 + 34) = sub_1B698F63C(v172, v173, v181);
        _os_log_impl(&dword_1B697C000, v146, v167, "Failed to write value: %s, for key: %s to keychain access group: %s, error: %s", v145, 0x2Au);
        v158 = v164;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v158, -1, -1);
        v159 = v145;
        v140 = v173;
        v135 = v180;
        MEMORY[0x1B8C99550](v159, -1, -1);
      }

      else
      {
        (*(v87 + 8))(v169, v142);

        v135 = v180;
        v157 = v172;
      }

      sub_1B69D62F8();
      swift_allocError();
      *v160 = v157;
      v160[1] = v140;
    }

    else
    {
      if (!v62)
      {

        v63 = v174;
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v64 = sub_1B6AB8F90();
        __swift_project_value_buffer(v64, qword_1EDBCFD80);
        v65 = v161[0];
        v66 = v166;
        v172 = *(v63 + 16);
        (v172)(v161[0], v165, v166);

        v67 = sub_1B6AB8F80();
        v68 = sub_1B6AB98D0();

        LODWORD(v173) = v68;
        if (!os_log_type_enabled(v67, v68))
        {
          (*(v63 + 8))(v65, v66);

LABEL_22:
          sub_1B6993C94(v178, v180);
          v111 = v177;
LABEL_23:
          sub_1B6993C94(v111, v168);

          return;
        }

        v69 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *&v181[0] = v167;
        *v69 = 136315650;
        v169 = v67;
        v70 = v162;
        (v172)(v162, v65, v66);
        v71 = *(v63 + 8);
        v71(v65, v66);
        v72 = sub_1B6ABA080();
        v74 = v73;
        v71(v70, v66);
        v75 = sub_1B698F63C(v72, v74, v181);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_1B698F63C(v171, v176, v181);
        *(v69 + 22) = 2080;
        *&v182 = v175;
        *(&v182 + 1) = v179;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v76 = sub_1B6AB9330();
        v78 = sub_1B698F63C(v76, v77, v181);

        *(v69 + 24) = v78;
        v67 = v169;
        _os_log_impl(&dword_1B697C000, v169, v173, "Value: %s, at key: %s updated in keychain, access group: %s", v69, 0x20u);
        v79 = v167;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v79, -1, -1);
        v80 = v69;
LABEL_21:
        MEMORY[0x1B8C99550](v80, -1, -1);
        goto LABEL_22;
      }

      v90 = SecCopyErrorMessageString(v62, 0);
      v91 = v174;
      if (v90)
      {
        v92 = v90;
        v169 = sub_1B6AB92E0();
        v173 = v93;
      }

      else
      {
        v169 = 0x206E776F6E6B6E55;

        v173 = 0xED0000726F727265;
      }

      v112 = v172;
      v113 = v165;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v114 = sub_1B6AB8F90();
      __swift_project_value_buffer(v114, qword_1EDBCFD80);
      v115 = v112;
      v116 = v166;
      v165 = *(v91 + 16);
      v165(v115, v113, v166);

      v117 = v173;

      v118 = sub_1B6AB8F80();
      v119 = sub_1B6AB98E0();
      v173 = v117;

      LODWORD(v167) = v119;
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v181[0] = v164;
        *v120 = 136315906;
        v163 = v118;
        v121 = v162;
        v122 = v172;
        v165(v162, v172, v116);
        v123 = *(v91 + 8);
        v123(v122, v116);
        v124 = sub_1B6ABA080();
        v126 = v125;
        v123(v121, v116);
        v127 = sub_1B698F63C(v124, v126, v181);

        *(v120 + 4) = v127;
        *(v120 + 12) = 2080;
        *(v120 + 14) = sub_1B698F63C(v171, v176, v181);
        *(v120 + 22) = 2080;
        *&v182 = v175;
        *(&v182 + 1) = v179;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v128 = sub_1B6AB9330();
        v130 = sub_1B698F63C(v128, v129, v181);

        *(v120 + 24) = v130;
        *(v120 + 32) = 2080;
        v131 = v169;
        v132 = v173;
        *(v120 + 34) = sub_1B698F63C(v169, v173, v181);
        v133 = v163;
        _os_log_impl(&dword_1B697C000, v163, v167, "Failed to write value: %s, for key: %s to keychain access group: %s, error: %s", v120, 0x2Au);
        v134 = v164;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v134, -1, -1);
        v135 = v180;
        MEMORY[0x1B8C99550](v120, -1, -1);
      }

      else
      {
        (*(v91 + 8))(v172, v116);

        v135 = v180;
        v131 = v169;
        v132 = v173;
      }

      sub_1B69D62F8();
      swift_allocError();
      *v136 = v131;
      v136[1] = v132;
    }

    swift_willThrow();
    sub_1B6993C94(v178, v135);
    v34 = v177;
    v35 = v168;
    goto LABEL_39;
  }

  v34 = v178;
  v35 = v180;
LABEL_39:
  sub_1B6993C94(v34, v35);
}

void sub_1B69D5350()
{
  if (!qword_1EB95ACB8)
  {
    type metadata accessor for CFString(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ACB8);
    }
  }
}

void *sub_1B69D53BC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B6993C94(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B6993C94(v6, v5);
    *v3 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B6AB8900() && __OFSUB__(v6, sub_1B6AB8930()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1B6AB8950();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1B6AB88E0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1B69D5C98(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1B6993C94(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    sub_1B6AB8BC0();
    result = sub_1B69D5C98(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B69D5760@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v33 = *MEMORY[0x1E69E9840];
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {

      sub_1B6993C94(v8, v7);
      *&v32 = v8;
      *(&v32 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1B6ABD8A0;
      sub_1B6993C94(0, 0xC000000000000000);
      sub_1B6AB8BC0();
      v12 = v32;
      result = sub_1B69D5D4C(*(v32 + 16), *(v32 + 24), a1, &v28);
      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
      *v2 = v12;
      v2[1] = *(&v12 + 1) | 0x8000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      result = a1(&v28, &v32, &v32);
      if (v3)
      {
        goto LABEL_21;
      }

      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
    }

LABEL_20:
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    goto LABEL_21;
  }

  if (v9)
  {
    v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B6993C94(v8, v7);
    *v2 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    v18 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1B6AB8900() && __OFSUB__(v8, sub_1B6AB8930()))
      {
LABEL_24:
        __break(1u);
      }

      v20 = sub_1B6AB8950();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_1B6AB88E0();

      v17 = v23;
    }

    if (v18 >= v8)
    {

      sub_1B69D5D4C(v8, v8 >> 32, a1, &v28);
      v14 = v29;
      v15 = v30;
      v26 = v31;
      v27 = v28;

      *v4 = v8;
      v4[1] = v17 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }

      v16 = v26;
      v13 = v27;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1B6993C94(v8, v7);
  *&v32 = v8;
  WORD4(v32) = v7;
  BYTE10(v32) = BYTE2(v7);
  BYTE11(v32) = BYTE3(v7);
  BYTE12(v32) = BYTE4(v7);
  BYTE13(v32) = BYTE5(v7);
  BYTE14(v32) = BYTE6(v7);
  result = a1(&v28, &v32, &v32 + BYTE6(v7));
  if (!v3)
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v19 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    *v2 = v32;
    v2[1] = v19;
    goto LABEL_20;
  }

  v11 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
  *v2 = v32;
  v2[1] = v11;
LABEL_21:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1B69D5B18@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B699FB2C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B69D607C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B69D60F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1B69D5BAC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B69D5C18@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = a1(&v10, 0, 0);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B69D5C98(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B6AB8930();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B6AB8920();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_1B69D5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_1B6AB8930();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_1B6AB8920();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

uint64_t sub_1B69D5E18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B6AB9410();
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
    v5 = MEMORY[0x1B8C97C20](15, a1 >> 16);
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

uint64_t sub_1B69D5E94@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1B6AB9CB0();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1B69D5EE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_1B69D5C18(sub_1B69D6568, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_1B69D5F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_1B6AB1978(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
}

uint64_t sub_1B69D5FDC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1B6AB8950();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1B6AB8910();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B69D607C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B6AB8950();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B6AB88F0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B6AB8C00();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B69D60F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B6AB8950();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B6AB88F0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B69D617C(uint64_t a1)
{
  sub_1B69825A8(0, &qword_1EDBC9BC8, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
  v3 = v2;
  v10[3] = v2;
  v10[4] = sub_1B69D64D0();
  v10[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v10, v3);
  v5 = (*v4 + 32);
  v6 = *(*v4 + 16);

  sub_1B69D5B18(v5, &v5[v6], &v9);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t sub_1B69D6244(uint64_t a1)
{
  sub_1B69D5350();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B69D62A0()
{
  result = qword_1EB95AAF0;
  if (!qword_1EB95AAF0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AAF0);
  }

  return result;
}

unint64_t sub_1B69D62F8()
{
  result = qword_1EB95ACC0;
  if (!qword_1EB95ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95ACC0);
  }

  return result;
}

void *sub_1B69D634C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B69D5BAC(sub_1B69D63B4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_1B69D63D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B69D6438()
{
  if (!qword_1EB95ACD0)
  {
    type metadata accessor for CFString(255);
    sub_1B69825A8(255, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ACD0);
    }
  }
}

unint64_t sub_1B69D64D0()
{
  result = qword_1EDBCA4C8;
  if (!qword_1EDBCA4C8)
  {
    sub_1B69825A8(255, &qword_1EDBC9BC8, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA4C8);
  }

  return result;
}

id BridgedFlushManager.__allocating_init(appSessionManager:client:endpoint:config:)(char *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = *&a1[OBJC_IVAR___AAAppSessionManager_appSessionManager];
  type metadata accessor for URLSessionUploadClientFactory();
  v12 = swift_allocObject();

  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  *&v10[OBJC_IVAR___AAFlushManager_flushManager] = sub_1B69D6A7C(v11, v13, a3, 0, v14, v12);
  v17.receiver = v10;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_unknownObjectRelease();
  return v15;
}

id BridgedFlushManager.init(appSessionManager:client:endpoint:config:)(char *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *&a1[OBJC_IVAR___AAAppSessionManager_appSessionManager];
  type metadata accessor for URLSessionUploadClientFactory();
  v12 = swift_allocObject();

  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  *&v5[OBJC_IVAR___AAFlushManager_flushManager] = sub_1B69D6A7C(v11, v13, a3, 0, v14, v12);
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_unknownObjectRelease();
  return v15;
}

id BridgedFlushManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedFlushManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B69D6A7C(uint64_t a1, void *a2, void *a3, uint64_t a4, char *a5, uint64_t *a6)
{
  v69 = a1;
  v70 = a4;
  v72 = a3;
  v9 = *a6;
  v10 = sub_1B6AB9980();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v66 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B6AB9950();
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB9090();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v62[1] = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6AB8BB0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[3] = v9;
  v80[4] = &protocol witness table for URLSessionUploadClientFactory;
  v80[0] = a6;
  v23 = type metadata accessor for UploadDropboxFileManager();
  v24 = swift_allocObject();
  sub_1B6982544(v80, v79);
  type metadata accessor for MescalSigner();
  swift_allocObject();
  v63 = a2;
  v25 = sub_1B6984F70(v63);
  v26 = type metadata accessor for SHA1Base64SigningService();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = &off_1F2E755D0;
  v28 = *(v19 + 16);
  v71 = a5;
  v28(v22, &a5[OBJC_IVAR___AAUploadBatchEventConfig_directory], v18);
  v29 = [v72 name];
  v30 = sub_1B6AB92E0();
  v32 = v31;

  v33 = type metadata accessor for DocumentDirectoryUploadDropboxPathProvider(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();

  v37 = sub_1B6985BBC(v22, v30, v32, v24, v36);
  v78[3] = v26;
  v78[4] = &off_1F2E75D60;
  v78[0] = v27;
  v77[3] = v33;
  v77[4] = &off_1F2E7D060;
  v77[0] = v37;
  v76[3] = v23;
  v76[4] = &off_1F2E7BBC8;
  v76[0] = v24;
  v38 = type metadata accessor for FlushManager();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v78, v26);
  v43 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = (v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v45;
  v75[3] = v26;
  v75[4] = &off_1F2E75D60;
  v75[0] = v47;
  sub_1B698C854();

  sub_1B6AB9050();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1B69D7310(&qword_1EDBCBB48, MEMORY[0x1E69E8030]);
  sub_1B69D72B8();
  sub_1B69D7310(&qword_1EDBCBB68, sub_1B69D72B8);
  sub_1B6AB9BE0();
  (*(v67 + 104))(v66, *MEMORY[0x1E69E8090], v68);
  *(v41 + 30) = sub_1B6AB99D0();
  v48 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v49 = sub_1B6AB8F90();
  v50 = __swift_project_value_buffer(v49, qword_1EDBCFD80);
  (*(*(v49 - 8) + 16))(&v41[v48], v50, v49);
  *(v41 + 2) = v69;
  *(v41 + 3) = &off_1F2E7C2C0;
  v52 = v71;
  v51 = v72;
  *(v41 + 4) = v63;
  *(v41 + 5) = v51;
  *(v41 + 6) = v70;
  *(v41 + 7) = v52;
  sub_1B6982544(v79, (v41 + 64));
  sub_1B6982544(v75, (v41 + 104));
  sub_1B6982544(v77, (v41 + 144));
  sub_1B6982544(v76, (v41 + 184));
  swift_beginAccess();
  sub_1B69D7358();
  v53 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v54 = swift_allocObject();
  v55 = v52;
  v56 = swift_slowAlloc();
  *(v54 + 16) = v56;
  *v56 = 0;
  *(v54 + 24) = 0x10000;
  *(v53 + 16) = v54;
  *(v53 + 24) = 0;
  *(v41 + 29) = v53;
  swift_endAccess();
  v57 = v55[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled];
  v58 = type metadata accessor for TransparencyLogging();
  v59 = objc_allocWithZone(v58);
  v59[OBJC_IVAR___AATransparencyLogging_isEnabled] = v57;
  if (v57 == 1)
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1EDBCCEE0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  sub_1B6AB9900();
  sub_1B6AB8F70();
  v73.receiver = v59;
  v73.super_class = v58;
  v60 = objc_msgSendSuper2(&v73, sel_init);

  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v75);
  *(v41 + 28) = v60;
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v41;
}

void sub_1B69D72B8()
{
  if (!qword_1EDBCBB70)
  {
    sub_1B6AB9950();
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCBB70);
    }
  }
}

uint64_t sub_1B69D7310(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69D7358()
{
  if (!qword_1EDBCABA0)
  {
    v0 = type metadata accessor for Atomic();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCABA0);
    }
  }
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AARawDataEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v7[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = 0;
  v7[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}