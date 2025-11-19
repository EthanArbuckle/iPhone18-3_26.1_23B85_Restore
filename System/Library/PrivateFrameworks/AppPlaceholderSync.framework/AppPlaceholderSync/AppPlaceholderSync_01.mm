uint64_t sub_222582CD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_222582A78(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222582E58();
      goto LABEL_16;
    }

    sub_222582FB4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_222590948();
  sub_2225904F8();
  result = sub_222590968();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2225908C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2225908D8();
  __break(1u);
  return result;
}

void *sub_222582E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  v2 = *v0;
  v3 = sub_222590718();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_222582FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  result = sub_222590728();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_222590948();

      sub_2225904F8();
      result = sub_222590968();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2225831EC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2225907F8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_222590778();
  *v1 = result;
  return result;
}

uint64_t sub_22258328C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2225907F8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2225907F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22256EF08(&qword_27D00EF78, &qword_27D00EF70, &qword_222591BE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF70, &qword_222591BE0);
            v9 = sub_22256DBA0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SyncItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222583430(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_222590038();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2225836D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_222590088();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_222583978(void *a1, uint64_t a2, void *a3, size_t *a4)
{
  v41 = a4;
  v38 = a3;
  v5 = sub_222590018();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v40 = sub_222590038();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = (*a1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
  v19 = *v18;
  v20 = v18[1];
  if (v19 == sub_22257A8F4() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_2225908C8();

    if ((v23 & 1) == 0 && (*v18 != qword_27D00EEC8 || v18[1] != off_27D00EED0))
    {
      result = sub_2225908C8();
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  sub_22258FDD8();
  v26 = sub_22258FDF8();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_22258588C(v11, v9, MEMORY[0x277D46788]);
  sub_22258FFE8();
  sub_2225858F4(v11, MEMORY[0x277D46788]);

  v28 = v38;
  MEMORY[0x223DB9AA0](v27);
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_222590588();
  }

  sub_222590598();
  v30 = v39;
  v29 = v40;
  (*(v12 + 16))(v39, v17, v40);
  v31 = v41;
  v32 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_222580AA4(0, v32[2] + 1, 1, v32, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
    *v31 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    *v31 = sub_222580AA4(v34 > 1, v35 + 1, 1, v32, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
  }

  (*(v12 + 8))(v17, v29);
  v36 = *v31;
  *(v36 + 16) = v35 + 1;
  return (*(v12 + 32))(v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35, v30, v29);
}

unint64_t sub_222583DB8(unint64_t result, uint64_t a2, void *a3, size_t *a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_222583978(&v13, a2, a3, a4);

        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2225907F8();
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_222583ED0(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2225906F8();
    sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
    sub_2225859CC();
    sub_222590618();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        sub_222573338(&v25, a2, a3);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_222590708())
        {
          break;
        }

        sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_222568DEC();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2225840D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      v5 = sub_22257A8F4();
      v7 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(v4, v3, v5, v6);

      sub_22257E190(v7);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_22258418C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_222576FD4(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_222584290(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;

  *(v1 + 24) = sub_22258EF30();
  v2 = *MEMORY[0x277CCA1A0];
  v3 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v4 = v2;
  v5 = sub_222590498();
  v6 = [v3 initWithName:v5 protectionClass:v4];

  *(v1 + 32) = v6;
  return v1;
}

uint64_t sub_22258433C()
{
  v78[4] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Defaults();
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = v58 - v6;
  v75 = sub_22258FCA8();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22258FD68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v73 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v58 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, qword_28130F8F8);
  swift_beginAccess();
  v19 = v18 + v0[10];
  v71 = *(v11 + 16);
  v72 = v11 + 16;
  v71(v16, v19, v10);
  v77 = v16;
  sub_22258FD28();
  v20 = sub_222590498();

  v78[0] = 0;
  v66 = v17;
  v21 = [v17 contentsOfDirectoryAtPath:v20 error:v78];

  v22 = v78[0];
  if (v21)
  {
    v23 = sub_222590568();
    v24 = v22;

    v26 = v23;
    v27 = *(v23 + 16);
    if (v27)
    {
      v59 = v18;
      v61 = v3;
      v62 = v0;
      v70 = *MEMORY[0x277CC91D0];
      v29 = v7 + 104;
      v28 = *(v7 + 104);
      v68 = (v11 + 56);
      v69 = v28;
      v60 = v11;
      v67 = (v11 + 8);
      v58[1] = v26;
      v30 = (v26 + 40);
      *&v25 = 136315394;
      v63 = v25;
      v31 = v66;
      v64 = v10;
      v65 = v29;
      do
      {
        v34 = *(v30 - 1);
        v33 = *v30;
        v69(v74, v70, v75);
        v35 = v76;
        v71(v76, v77, v10);
        (*v68)(v35, 0, 1, v10);
        swift_bridgeObjectRetain_n();
        v36 = v73;
        sub_22258FD38();
        v37 = sub_22258FCD8();
        (*v67)(v36, v10);
        v78[0] = 0;
        v38 = [v31 removeItemAtURL:v37 error:v78];

        if (v38)
        {
          v32 = v78[0];
        }

        else
        {
          v39 = v78[0];
          v40 = sub_22258FC68();

          swift_willThrow();
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v41 = sub_2225901D8();
          __swift_project_value_buffer(v41, qword_28130F918);

          v42 = v40;
          v43 = sub_2225901B8();
          v44 = sub_222590668();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v78[0] = v47;
            *v45 = v63;
            v48 = sub_222580F0C(v34, v33, v78);

            *(v45 + 4) = v48;
            *(v45 + 12) = 2112;
            v49 = v40;
            v50 = _swift_stdlib_bridgeErrorToNSError();
            *(v45 + 14) = v50;
            *v46 = v50;
            _os_log_impl(&dword_222567000, v43, v44, "error removing %s: %@", v45, 0x16u);
            sub_22256EA7C(v46, &qword_27D00EDB0, &unk_222591A20);
            v51 = v46;
            v10 = v64;
            MEMORY[0x223DBA5D0](v51, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v47);
            MEMORY[0x223DBA5D0](v47, -1, -1);
            MEMORY[0x223DBA5D0](v45, -1, -1);
          }

          else
          {
          }

          v31 = v66;
        }

        v30 += 2;
        --v27;
      }

      while (v27);

      v0 = v62;
      v3 = v61;
      v11 = v60;
      v18 = v59;
    }

    else
    {
    }
  }

  else
  {
    v52 = v78[0];
    v53 = sub_22258FC68();

    swift_willThrow();
  }

  sub_22258588C(v18, v3, type metadata accessor for Defaults);
  v54 = v0[7];
  sub_222571A3C();
  v55 = v0[8];
  sub_222571A3C();

  sub_2225858F4(v3, type metadata accessor for Defaults);
  result = (*(v11 + 8))(v77, v10);
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void _s18AppPlaceholderSync0C7ManagerC5resetyyFZ_0()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults();
  __swift_project_value_buffer(v0, qword_28130F8F8);
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:1 forKey:v3];

  sub_22258433C();
  if (qword_28130FDB8 != -1)
  {
    swift_once();
  }

  v4 = off_28130FDC0;
  v5 = *(*(off_28130FDC0 + 2) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  v6 = sub_2225902B8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_2225902C8();
  v9 = *(v4[2] + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  StoreContext.purgeAllItems()();
  swift_setDeallocating();
  v13 = *(inited + 16);

  sub_2225791F0();
  v14 = [v1 standardUserDefaults];
  v15 = sub_222590498();
  [v14 setBool:0 forKey:v15];
}

void sub_222584CA0(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22258FD68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_22258FCD8();
  v31 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v31];

  v10 = v31;
  if (v9)
  {
    v11 = *MEMORY[0x277D85DE8];

    v12 = v10;
  }

  else
  {
    v29 = v31;
    v13 = v31;
    v14 = sub_22258FC68();

    swift_willThrow();
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
    swift_dynamicCast();
    v15 = v30;
    if ([v30 code] == 4)
    {
    }

    else
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v16 = sub_2225901D8();
      __swift_project_value_buffer(v16, qword_28130F918);
      (*(v3 + 16))(v6, a1, v2);
      v17 = v15;
      v18 = sub_2225901B8();
      v19 = sub_222590668();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32[0] = v29;
        *v20 = 136315394;
        v22 = sub_22258FD28();
        v24 = v23;
        (*(v3 + 8))(v6, v2);
        v25 = sub_222580F0C(v22, v24, v32);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v17;
        v26 = v17;
        _os_log_impl(&dword_222567000, v18, v19, "Error removing placeholder at %s: %@", v20, 0x16u);
        sub_22256EA7C(v21, &qword_27D00EDB0, &unk_222591A20);
        MEMORY[0x223DBA5D0](v21, -1, -1);
        v27 = v29;
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x223DBA5D0](v27, -1, -1);
        MEMORY[0x223DBA5D0](v20, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }
    }

    v28 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2225850A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2225850F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225851A4;

  return sub_22257EDD8(a1, v4, v5, v6);
}

uint64_t sub_2225851A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222585504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22258556C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2225855C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222585614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222585684(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222585A3C;

  return sub_2225808B4(a1, v5);
}

uint64_t sub_22258573C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2225851A4;

  return sub_2225808B4(a1, v5);
}

uint64_t sub_2225857F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DB9B60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_222582928(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22258588C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225858F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222585984(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2225859CC()
{
  result = qword_28130F798;
  if (!qword_28130F798)
  {
    sub_222585984(255, &qword_28130F7A0, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130F798);
  }

  return result;
}

uint64_t sub_222585BF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDB0, &unk_222591A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

APSLaunchUtil __swiftcall APSLaunchUtil.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_222585DE8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2225904C8();
  sub_222590948();
  sub_2225904F8();
  v4 = sub_222590968();

  return sub_2225860E0(a1, v4);
}

unint64_t sub_222585E7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222590948();
  sub_2225904F8();
  v6 = sub_222590968();

  return sub_2225861E4(a1, a2, v6);
}

unint64_t sub_222585EF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_222590038();
  v5 = MEMORY[0x277D46798];
  sub_222586790(&qword_27D00EF40, MEMORY[0x277D46798]);
  v6 = sub_222590478();
  return sub_22258629C(a1, v6, MEMORY[0x277D46798], &qword_27D00EFE8, v5, MEMORY[0x277D467B0]);
}

unint64_t sub_222585FC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22258FDF8();
  v5 = MEMORY[0x277CC95F0];
  sub_222586790(&qword_281310190, MEMORY[0x277CC95F0]);
  v6 = sub_222590478();
  return sub_22258629C(a1, v6, MEMORY[0x277CC95F0], &qword_281310188, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_22258609C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_222590938();

  return sub_22258643C(a1, v4);
}

unint64_t sub_2225860E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2225904C8();
      v9 = v8;
      if (v7 == sub_2225904C8() && v9 == v10)
      {
        break;
      }

      v12 = sub_2225908C8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2225861E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2225908C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22258629C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_222586790(v24, v25);
      v20 = sub_222590488();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_22258643C(uint64_t a1, uint64_t a2)
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

id sub_2225864A8()
{
  sub_222585984(0, &qword_27D00EFB8, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFC0, &qword_222591C30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222591C20;
  *(v1 + 32) = sub_222585984(0, &qword_27D00EFC8, 0x277CBEAC0);
  *(v1 + 40) = sub_222585984(0, &qword_27D00EFD0, 0x277CCACA8);
  sub_222590688();

  if (!v0)
  {
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFE0, &unk_222591C40);
      if (swift_dynamicCast())
      {
        if (*(v16 + 16))
        {
          v2 = sub_222585E7C(0x4449656C646E7562, 0xE800000000000000);
          if (v3)
          {
            v4 = (*(v16 + 56) + 16 * v2);
            v5 = *v4;
            v6 = v4[1];

            v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);
            return sub_222580584(v5, v6, 0);
          }
        }
      }
    }

    else
    {
      sub_22256EA7C(v17, &qword_27D00EFD8, &qword_222591C38);
    }

    v9 = *MEMORY[0x277CCA5B8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB8, &unk_222591A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222591200;
    v11 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_2225904C8();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000022;
    *(inited + 56) = 0x8000000222593E30;
    v13 = v9;
    sub_22258CC5C(inited);
    swift_setDeallocating();
    sub_22256EA7C(inited + 32, &qword_27D00EEC0, &unk_222592390);
    v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v15 = sub_222590448();

    [v14 initWithDomain:v13 code:2 userInfo:v15];

    swift_willThrow();
  }

  return swift_willThrow();
}

uint64_t sub_222586790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PublisherStore.defaultURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults();
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  v4 = *(v2 + 20);
  v5 = sub_22258FD68();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2225868A4()
{
  v0 = sub_22258FD68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PublisherStore();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Defaults();
  v9 = __swift_project_value_buffer(v8, qword_28130F8F8);
  swift_beginAccess();
  (*(v1 + 16))(v4, v9 + *(v8 + 20), v0);
  result = sub_222569460(v4);
  qword_28130FAE8 = result;
  return result;
}

uint64_t static PublisherStore.shared.getter()
{
  if (qword_28130FAE0 != -1)
  {
    swift_once();
  }
}

uint64_t static PublisherStore.reset()()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults();
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  swift_beginAccess();
  return sub_222586DEC(*v1);
}

uint64_t static PublisherStore.upgrade()()
{
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v1 = sub_2225901D8();
  __swift_project_value_buffer(v1, qword_28130F918);
  v2 = sub_2225901B8();
  v3 = sub_222590678();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_6;
  }

  v0 = swift_slowAlloc();
  *v0 = 134217984;
  if (qword_28130F8F0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = type metadata accessor for Defaults();
    v5 = __swift_project_value_buffer(v4, qword_28130F8F8);
    swift_beginAccess();
    *(v0 + 4) = *v5;
    _os_log_impl(&dword_222567000, v2, v3, "Attempting to upgrade to %ld", v0, 0xCu);
    MEMORY[0x223DBA5D0](v0, -1, -1);
LABEL_6:

    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Defaults();
    v7 = __swift_project_value_buffer(v6, qword_28130F8F8);
    result = swift_beginAccess();
    v2 = *v7;
    if (v2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  if (v2 != 1)
  {
    result = 1;
    do
    {
      v9 = result + 1;
      sub_222586DEC(result);
      result = v9;
    }

    while (v2 != v9);
  }

  return result;
}

uint64_t PublisherStore.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context);

  return v0;
}

uint64_t PublisherStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222586DEC(void *a1)
{
  v111 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = &v84 - v4;
  v94 = sub_22258FCA8();
  v5 = *(v94 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v94);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22258FD68();
  v9 = *(v102 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v102);
  v93 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v84 - v13;
  v96 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v107 = 0;
  v108 = 0xE000000000000000;
  sub_222590758();

  v107 = 0xD000000000000010;
  v108 = 0x8000000222593A50;
  v109 = a1;
  v15 = sub_2225908B8();
  MEMORY[0x223DB9A60](v15);

  v16 = MEMORY[0x223DB9A60](0x726F74737370612ELL, 0xE900000000000065);
  v17 = 0;
  v92 = (v5 + 104);
  v18 = (v9 + 16);
  v91 = (v9 + 56);
  v101 = (v9 + 8);
  v90 = v107;
  v97 = v108;
  v89 = *MEMORY[0x277CC91C0];
  v104 = *MEMORY[0x277CCA5B8];
  v16.n128_u64[0] = 136315138;
  v85 = v16;
  v16.n128_u64[0] = 136315394;
  v84 = v16;
  v88 = v8;
  v87 = (v9 + 16);
  do
  {
    v100 = v17;
    v19 = &unk_2835BD7B0 + 16 * v17;
    v20 = *(v19 + 4);
    v21 = *(v19 + 5);
    v109 = v90;
    v110 = v97;

    MEMORY[0x223DB9A60](v20, v21);
    v23 = v109;
    v22 = v110;
    (*v92)(v8, v89, v94);
    v24 = qword_28130F8F0;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Defaults();
    v26 = __swift_project_value_buffer(v25, qword_28130F8F8);
    swift_beginAccess();
    v27 = *(v25 + 44);
    v28 = *v18;
    v29 = v26 + v27;
    v30 = v95;
    v31 = v102;
    (*v18)(v95, v29, v102);
    (*v91)(v30, 0, 1, v31);
    v103 = v22;
    sub_22258FD38();
    v32 = v93;
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v33 = sub_2225901D8();
    v34 = __swift_project_value_buffer(v33, qword_28130F918);
    v28(v32, v14, v31);
    v99 = v34;
    v35 = v32;
    v36 = sub_2225901B8();
    v37 = sub_222590678();
    v38 = os_log_type_enabled(v36, v37);
    v98 = v23;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v109 = v40;
      *v39 = v85.n128_u32[0];
      sub_2225878C0();
      v41 = v14;
      v42 = sub_2225908B8();
      v86 = v21;
      v44 = v43;
      v45 = *v101;
      (*v101)(v35, v31);
      v46 = v42;
      v14 = v41;
      v47 = v45;
      v48 = sub_222580F0C(v46, v44, &v109);

      *(v39 + 4) = v48;
      _os_log_impl(&dword_222567000, v36, v37, "attempting to remove %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v49 = v40;
      v8 = v88;
      MEMORY[0x223DBA5D0](v49, -1, -1);
      MEMORY[0x223DBA5D0](v39, -1, -1);
    }

    else
    {

      v47 = *v101;
      (*v101)(v35, v31);
    }

    v50 = sub_22258FCD8();
    v109 = 0;
    v51 = [v96 removeItemAtURL:v50 error:&v109];

    v52 = v109;
    if (v51)
    {
      v47(v14, v102);

      v18 = v87;
      goto LABEL_3;
    }

    v53 = v52;
    v54 = sub_22258FC68();

    swift_willThrow();
    v109 = v54;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222587874();
    swift_dynamicCast();

    v86 = v105;
    v56 = [v105 underlyingErrors];
    v57 = sub_222590568();

    v58 = 0;
    v59 = *(v57 + 16);
    while (1)
    {
      if (v59 == v58)
      {

        v8 = v88;
        v81 = v102;
        v18 = v87;
        goto LABEL_27;
      }

      if (v58 >= *(v57 + 16))
      {
        __break(1u);
      }

      v61 = *(v57 + 8 * v58 + 32);
      v62 = v61;
      v63 = sub_22258FC58();
      v64 = [v63 domain];
      v65 = sub_2225904C8();
      v67 = v66;

      if (v65 != sub_2225904C8() || v67 != v68)
      {
        break;
      }

LABEL_14:
      v60 = [v63 code];

      ++v58;
      if (v60 != 2)
      {
        goto LABEL_23;
      }
    }

    v70 = sub_2225908C8();

    if (v70)
    {
      goto LABEL_14;
    }

LABEL_23:

    v71 = v103;

    v72 = v86;
    v73 = sub_2225901B8();
    v74 = sub_222590668();

    v75 = os_log_type_enabled(v73, v74);
    v8 = v88;
    v18 = v87;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v106 = v77;
      *v76 = v84.n128_u32[0];
      v78 = sub_222580F0C(v98, v71, &v106);
      v99 = v47;
      v79 = v8;
      v80 = v78;

      *(v76 + 4) = v80;
      v8 = v79;
      *(v76 + 12) = 2048;
      *(v76 + 14) = [v72 code];

      _os_log_impl(&dword_222567000, v73, v74, "error removing %s: %ld", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x223DBA5D0](v77, -1, -1);
      MEMORY[0x223DBA5D0](v76, -1, -1);

      v99(v14, v102);
      goto LABEL_28;
    }

    v81 = v102;
LABEL_27:

    v47(v14, v81);
LABEL_28:

LABEL_3:
    v17 = v100 + 1;
  }

  while (v100 != 2);

  result = swift_arrayDestroy();
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for PublisherStore()
{
  result = qword_28130FAD0;
  if (!qword_28130FAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222587874()
{
  result = qword_28130F790;
  if (!qword_28130F790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130F790);
  }

  return result;
}

unint64_t sub_2225878C0()
{
  result = qword_2813101C0;
  if (!qword_2813101C0)
  {
    sub_22258FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101C0);
  }

  return result;
}

uint64_t sub_222587950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_222587A78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE18();
}

uint64_t sub_222587BB0()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  return v0;
}

uint64_t sub_222587CAC()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590358();
}

uint64_t sub_222587D68@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  *a2 = v5;
  return result;
}

uint64_t sub_222587E74(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE18();
}

uint64_t sub_222587F44()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  return v1;
}

uint64_t sub_222588048()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590358();
}

uint64_t sub_2225880F0()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578]);
  sub_222590348();
}

uint64_t sub_222588228()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_22258A970(&qword_2813101B0, MEMORY[0x277CC9578]);
  sub_222590358();
}

uint64_t sub_222588320()
{
  v1 = *v0;
  sub_222590948();
  MEMORY[0x223DB9EB0](v1);
  return sub_222590968();
}

uint64_t sub_222588394()
{
  v1 = *v0;
  sub_222590948();
  MEMORY[0x223DB9EB0](v1);
  return sub_222590968();
}

unint64_t sub_2225883D8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2225884A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22258A1F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2225884E4(uint64_t a1)
{
  v2 = sub_22258A91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222588520(uint64_t a1)
{
  v2 = sub_22258A91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_22258855C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22258FDB8();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F010, &qword_222592040);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PlaceholderRecord();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  v13 = sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v49 = v12;
  v50 = v12;
  v51 = v13;
  v52 = v13;
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_222590308();
  v47 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  sub_22258FE38();
  v14 = a1[3];
  v15 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_22258A91C();
  v46 = v11;
  v16 = v48;
  sub_222590978();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    v29 = sub_22258FE48();
    (*(*(v29 - 8) + 8))(v1 + v47, v29);
    v30 = *(*v1 + 48);
    v31 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v7;
    LOBYTE(v49) = 0;
    v17 = sub_222590858();
    v19 = v18;
    v20 = v2[6];
    v42 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v49 = v17;
    v50 = v19;
    sub_222590238();

    LOBYTE(v49) = 1;
    v21 = sub_222590858();
    v23 = v22;
    v24 = v2[6];
    v42 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v49 = v21;
    v50 = v23;
    sub_222590238();

    LOBYTE(v49) = 2;
    v25 = sub_222590858();
    v27 = v26;
    v28 = v2[6];
    v42 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v49 = v25;
    v50 = v27;
    sub_222590238();

    LOBYTE(v49) = 3;
    LODWORD(v25) = sub_222590878();
    v33 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    LODWORD(v49) = v25;
    sub_222590238();

    LOBYTE(v49) = 4;
    sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578]);
    v34 = v48;
    sub_222590868();
    v35 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    sub_22258A970(&qword_2813101B0, MEMORY[0x277CC9578]);
    sub_222590238();
    v36 = v45;

    (*(v43 + 8))(v34, v4);
    LOBYTE(v49) = 5;
    v37 = sub_222590858();
    v39 = v38;
    v40 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v49 = v37;
    v50 = v39;
    sub_222590238();

    (*(v44 + 8))(v46, v36);
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return v2;
}

uint64_t sub_222588C60(void *a1)
{
  v2 = v1;
  v4 = sub_22258FDB8();
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F020, &qword_222592048);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22258A91C();
  sub_222590988();
  v14 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  v28 = v2;
  swift_getKeyPath();
  v25 = sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  v26 = v14;
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v27 = v2;
  sub_222590348();

  LOBYTE(v28) = 0;
  v15 = v29;
  sub_222590888();
  if (v15)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v16 = v24;
    v29 = v9;

    v28 = v27;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v28) = 1;
    sub_222590888();

    v28 = v27;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v28) = 2;
    sub_222590888();

    v28 = v27;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v28) = 3;
    sub_2225908A8();
    v28 = v27;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    v21 = MEMORY[0x277CC9578];
    sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578]);
    sub_222590348();
    v18 = v16;

    LOBYTE(v28) = 4;
    sub_22258A970(&qword_2813101B0, v21);
    v19 = v22;
    sub_222590898();
    (*(v23 + 8))(v18, v19);
    v28 = v27;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v28) = 5;
    sub_222590888();
    (*(v29 + 8))(v12, v8);
  }
}

uint64_t *sub_2225892F4(__int128 *a1)
{
  type metadata accessor for PlaceholderRecord();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_222590308();
  sub_22258FE38();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  sub_22258A8C0(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_222589414()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  v2 = sub_22258FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceholderRecord()
{
  result = qword_281310140;
  if (!qword_281310140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22258950C()
{
  result = sub_22258FE48();
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

uint64_t *sub_2225895D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for PlaceholderRecord();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_22258855C(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_222589650()
{
  v1 = sub_22258FDB8();
  v10 = *(v1 - 8);
  v11 = v1;
  v2 = *(v10 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_222590758();
  MEMORY[0x223DB9A60](0xD00000000000001ELL, 0x8000000222593FC0);
  v12 = v0;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  MEMORY[0x223DB9A60](v12, v13);

  MEMORY[0x223DB9A60](0xD000000000000013, 0x8000000222593FE0);
  v12 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v12, v13);

  MEMORY[0x223DB9A60](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  v12 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v12, v13);

  MEMORY[0x223DB9A60](0x6F6674616C70202CLL, 0xEB000000003D6D72);
  v12 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  v5 = sub_2225908B8();
  MEMORY[0x223DB9A60](v5);

  MEMORY[0x223DB9A60](0x6D207473616C202CLL, 0xEB000000003D646FLL);
  v12 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  v6 = MEMORY[0x277CC9578];
  sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578]);
  sub_222590348();

  sub_22258A970(&qword_2813101A0, v6);
  v7 = v11;
  v8 = sub_2225908B8();
  MEMORY[0x223DB9A60](v8);

  (*(v10 + 8))(v4, v7);
  MEMORY[0x223DB9A60](0x656369766564202CLL, 0xE90000000000003DLL);
  v12 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v12, v13);

  return v14;
}

uint64_t sub_222589BE4(__int128 *a1)
{
  v2 = type metadata accessor for PlaceholderRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_2225892F4(a1);
  return v5;
}

uint64_t sub_222589C70(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_22258A8C0(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_222589CC8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_22258A85C(v1 + 16, v4);
  return sub_222589D58;
}

void sub_222589D58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_22258A85C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    sub_22258A8C0((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    sub_22258A8C0(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_222589E14()
{
  v1 = *v0;
  sub_222590948();
  type metadata accessor for PlaceholderRecord();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590338();
  return sub_222590968();
}

uint64_t sub_222589EA0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_222590338();
}

uint64_t sub_222589EF8()
{
  sub_222590948();
  v1 = *v0;
  swift_getWitnessTable();
  sub_222590338();
  return sub_222590968();
}

uint64_t sub_222589F60()
{
  v1 = *v0;
  type metadata accessor for PlaceholderRecord();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord);
  return sub_222590328();
}

uint64_t sub_222589FDC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_22258A1F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2225908C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F60 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F80 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593FA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2225908C8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22258A40C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFF8, &qword_222591F38);
  v0 = *(sub_2225903B8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222591CA0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F000, &qword_222591F68);
  v4 = *(sub_2225903F8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_222591200;
  sub_2225903E8();
  v7 = sub_222590408();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_222590418();
  sub_22258A970(&qword_28130F808, MEMORY[0x277CDD5E8]);
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  return v3;
}

uint64_t sub_22258A79C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_222587CAC();
}

uint64_t sub_22258A7C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_222588048();
}

uint64_t sub_22258A7E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_222587CAC();
}

uint64_t sub_22258A80C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_222587CAC();
}

uint64_t sub_22258A834()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_222587CAC();
}

uint64_t sub_22258A85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22258A8C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22258A91C()
{
  result = qword_27D00F018;
  if (!qword_27D00F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F018);
  }

  return result;
}

uint64_t sub_22258A970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PlaceholderRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaceholderRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22258AB28()
{
  result = qword_27D00F028;
  if (!qword_27D00F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F028);
  }

  return result;
}

unint64_t sub_22258AB80()
{
  result = qword_27D00F030;
  if (!qword_27D00F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F030);
  }

  return result;
}

unint64_t sub_22258ABD8()
{
  result = qword_27D00F038;
  if (!qword_27D00F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F038);
  }

  return result;
}

uint64_t *sub_22258AC2C()
{
  v1 = sub_22258FDB8();
  v34 = *(v1 - 8);
  v2 = v34;
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v37 = &v29 - v6;
  v8 = sub_22258FDD8();
  v10 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
  v30 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);
  v31 = v11;
  v36 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform);
  v12 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
  v32 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
  v33 = v12;
  v38 = *(v2 + 16);
  v38(v7, v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v1);
  v13 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
  v39 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);
  v40 = v13;
  v14 = type metadata accessor for PlaceholderRecord();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v17[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  v18 = sub_22258EEE4(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v41 = v14;
  v42 = v14;
  v43 = v18;
  v44 = v18;
  v17[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v17 + 2);
  sub_222590308();
  sub_22258FE38();
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  v41 = v8;
  v42 = v10;
  sub_222590238();

  v20 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  v41 = v31;
  v42 = v30;
  sub_222590238();

  v21 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  v41 = v33;
  v42 = v32;
  sub_222590238();

  v22 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  LODWORD(v41) = v36;
  sub_222590238();

  v23 = v35;
  v24 = v37;
  v38(v35, v37, v1);
  v25 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  sub_22258EEE4(&qword_2813101B0, MEMORY[0x277CC9578]);
  sub_222590238();

  v26 = *(v34 + 8);
  v26(v23, v1);
  v27 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  swift_getKeyPath();
  v41 = v40;
  v42 = v39;
  sub_222590238();

  v26(v24, v1);
  return v17;
}

uint64_t SyncItem.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

  return v1;
}

uint64_t SyncItem.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
  v2 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);

  return v1;
}

uint64_t sub_22258B1A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SyncItem.deviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);

  return v1;
}

uint64_t SyncItem.launchPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
  sub_22258556C(v1, *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));
  return v1;
}

void *createLaunchPayloadFor(bundleID:)(uint64_t a1, uint64_t a2)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F040, &qword_222592170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_22258C63C(inited);
  swift_setDeallocating();
  sub_22256EA7C(inited + 32, &qword_27D00F048, &qword_222592178);
  v6 = sub_222590448();

  v12[0] = 0;
  v7 = [v4 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = sub_22258FD78();
  }

  else
  {
    v9 = v8;
    sub_22258FC68();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_22258B43C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x615068636E75616CLL;
  }

  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_22258B534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22258EBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22258B568(uint64_t a1)
{
  v2 = sub_22258C750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22258B5A4(uint64_t a1)
{
  v2 = sub_22258C750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncItem.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SyncItem.init(from:)(a1);
  return v5;
}

uint64_t SyncItem.init(from:)(uint64_t *a1)
{
  v2 = sub_22258FDB8();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22258FDF8();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F050, &qword_222592180);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v42);
  v12 = &v38 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_22258C750();
  v15 = v43;
  sub_222590978();
  if (v15)
  {
    v16 = v44;
    type metadata accessor for SyncItem();
    v32 = *(*v16 + 48);
    v33 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v5;
    v18 = v9;
    v43 = v2;
    LOBYTE(v46) = 0;
    sub_22258EEE4(&qword_27D00F058, MEMORY[0x277CC95F0]);
    v19 = v41;
    v20 = v42;
    sub_222590868();
    v16 = v44;
    (*(v40 + 32))(v44 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v19, v6);
    LOBYTE(v46) = 1;
    v21 = sub_222590858();
    v22 = (v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v46) = 2;
    v41 = 0;
    v24 = sub_222590858();
    v25 = (v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v46) = 3;
    v27 = sub_222590878();
    v38 = v6;
    *(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v27;
    LOBYTE(v46) = 4;
    sub_22258EEE4(&qword_2813101A8, MEMORY[0x277CC9578]);
    v28 = v43;
    sub_222590868();
    (*(v39 + 32))(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v17, v28);
    LOBYTE(v46) = 5;
    v29 = sub_222590858();
    v30 = (v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    *v30 = v29;
    v30[1] = v31;
    v48 = 6;
    sub_22258C7F0();
    sub_222590848();
    (*(v18 + 8))(v12, v20);
    v35 = v46;
    v36 = v47;
    if (v47 >> 60 == 15)
    {
      v35 = 0;
      v36 = 0xC000000000000000;
    }

    v37 = (v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v37 = v35;
    v37[1] = v36;
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  return v16;
}

uint64_t sub_22258BCC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F068, &qword_222592188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22258C750();
  sub_222590988();
  LOBYTE(v21) = 0;
  sub_22258FDF8();
  sub_22258EEE4(&qword_281310198, MEMORY[0x277CC95F0]);
  sub_222590898();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v12 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);
    LOBYTE(v21) = 1;
    sub_222590888();
    v13 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v14 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
    LOBYTE(v21) = 2;
    sub_222590888();
    v15 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform);
    LOBYTE(v21) = 3;
    sub_2225908A8();
    LOBYTE(v21) = 4;
    sub_22258FDB8();
    sub_22258EEE4(&qword_2813101B0, MEMORY[0x277CC9578]);
    sub_222590898();
    v16 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    v17 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);
    LOBYTE(v21) = 5;
    sub_222590888();
    v18 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8);
    v21 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    v22 = v18;
    v20[15] = 6;
    sub_22258556C(v21, v18);
    sub_22258C844();
    sub_222590898();
    sub_2225855C0(v21, v22);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SyncItem.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
  v2 = sub_22258FDF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);

  v5 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
  v6 = sub_22258FDB8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);

  sub_2225855C0(*(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload), *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));
  return v0;
}

uint64_t SyncItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
  v2 = sub_22258FDF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);

  v5 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
  v6 = sub_22258FDB8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);

  sub_2225855C0(*(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload), *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22258C22C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for SyncItem();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = SyncItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t SyncItem.description.getter()
{
  v1 = v0;
  sub_222590758();
  MEMORY[0x223DB9A60](0xD000000000000015, 0x8000000222594000);
  sub_22258FDF8();
  sub_22258EEE4(&qword_281310180, MEMORY[0x277CC95F0]);
  v2 = sub_2225908B8();
  MEMORY[0x223DB9A60](v2);

  MEMORY[0x223DB9A60](0xD000000000000013, 0x8000000222593FE0);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8));
  MEMORY[0x223DB9A60](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8));
  MEMORY[0x223DB9A60](0x6F6674616C70202CLL, 0xEB000000003D6D72);
  v6 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform);
  v3 = sub_2225908B8();
  MEMORY[0x223DB9A60](v3);

  MEMORY[0x223DB9A60](0x6D207473616C202CLL, 0xEB000000003D646FLL);
  sub_22258FDB8();
  sub_22258EEE4(&qword_2813101A0, MEMORY[0x277CC9578]);
  v4 = sub_2225908B8();
  MEMORY[0x223DB9A60](v4);

  MEMORY[0x223DB9A60](0x656369766564202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8));
  return HIDWORD(v6);
}

unint64_t sub_22258C544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F090, &qword_2225923B0);
    v3 = sub_222590828();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_222585DE8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_22258C63C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F088, &qword_2225923A8);
    v3 = sub_222590828();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222585E7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_22258C750()
{
  result = qword_28130FEE0;
  if (!qword_28130FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FEE0);
  }

  return result;
}

uint64_t type metadata accessor for SyncItem()
{
  result = qword_28130FEB8;
  if (!qword_28130FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22258C7F0()
{
  result = qword_27D00F060;
  if (!qword_27D00F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F060);
  }

  return result;
}

unint64_t sub_22258C844()
{
  result = qword_2813101B8;
  if (!qword_2813101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101B8);
  }

  return result;
}

uint64_t sub_22258C8A0()
{
  result = sub_22258FDF8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22258FDB8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22258CB58()
{
  result = qword_27D00F070;
  if (!qword_27D00F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F070);
  }

  return result;
}

unint64_t sub_22258CBB0()
{
  result = qword_28130FED0;
  if (!qword_28130FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FED0);
  }

  return result;
}

unint64_t sub_22258CC08()
{
  result = qword_28130FED8;
  if (!qword_28130FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FED8);
  }

  return result;
}

unint64_t sub_22258CC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F078, &qword_222592388);
    v3 = sub_222590828();
    v4 = a1 + 32;

    while (1)
    {
      sub_22258EE7C(v4, &v13, &qword_27D00EEC0, &unk_222592390);
      v5 = v13;
      v6 = v14;
      result = sub_222585E7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22256EADC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22258CD8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0B8, &qword_2225923E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0C0, &qword_2225923E8);
    v8 = sub_222590828();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22258EE7C(v10, v6, &qword_27D00F0B8, &qword_2225923E0);
      result = sub_222585EF4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_222590038();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22258FDF8();
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

unint64_t sub_22258CFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0B0, &unk_2225923D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
    v8 = sub_222590828();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22258EE7C(v10, v6, &qword_27D00F0B0, &unk_2225923D0);
      result = sub_222585FC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22258FDF8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_22258D194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F080, &qword_2225923A0);
    v8 = sub_222590828();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22258EE7C(v10, v6, &qword_27D00EF30, &qword_222591B90);
      v12 = *v6;
      result = sub_22258609C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_222590078();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t sub_22258D370(uint64_t a1)
{
  v37 = sub_22258FDB8();
  v35 = *(v37 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31[-v6];
  v41 = a1;
  swift_getKeyPath();
  sub_22258EEE4(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258EEE4(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_222590348();

  sub_22258FDC8();

  v8 = sub_22258FDF8();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 48);
  v36 = v7;
  result = v9(v7, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v11 = v41;
    v12 = v42;
    v41 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v33 = v42;
    v34 = v41;
    v41 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v32 = v41;
    v41 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_22258EEE4(&qword_2813101A8, MEMORY[0x277CC9578]);
    v13 = v40;
    sub_222590348();

    v41 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v14 = v41;
    v15 = v42;
    v16 = type metadata accessor for SyncItem();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = v36;
    (*(v38 + 16))(v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v36, v39);
    v21 = (v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    *v21 = v11;
    v21[1] = v12;
    v22 = (v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v23 = v33;
    *v22 = v34;
    v22[1] = v23;
    *(v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v32;
    v24 = v35;
    v25 = v37;
    (*(v35 + 16))(v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v13, v37);
    v26 = (v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    *v26 = v14;
    v26[1] = v15;

    v34 = v11;
    v27 = createLaunchPayloadFor(bundleID:)(v11, v12);
    v29 = v28;

    (*(v24 + 8))(v40, v25);
    (*(v38 + 8))(v20, v39);
    v30 = (v19 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v30 = v27;
    v30[1] = v29;
    return v19;
  }

  return result;
}

uint64_t sub_22258DAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0A8, &qword_2225923C8);
    v3 = sub_222590738();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_2225904C8();
      sub_222590948();
      v29 = v7;
      sub_2225904F8();
      v9 = sub_222590968();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_2225904C8();
        v20 = v19;
        if (v18 == sub_2225904C8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_2225908C8();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22258DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = a7;
  v92 = a8;
  v97 = a6;
  v104 = a5;
  v12 = sub_22258FDB8();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v12);
  v93 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v87 - v17;
  v19 = sub_22258FDF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v88 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v103 = &v87 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v87 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v87 - v29;
  sub_22258FDC8();
  result = (*(v20 + 48))(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v89 = *(v20 + 32);
    v89(v30, v18, v19);
    v99 = a1;
    v100 = a2;
    v105 = a1;
    v106 = a2;

    v94 = a3;
    v98 = a4;
    MEMORY[0x223DB9A60](a3, a4);
    v32 = v20;
    v34 = v105;
    v33 = v106;
    LODWORD(v105) = v104;
    v35 = sub_2225908B8();
    v37 = v36;
    v105 = v34;
    v106 = v33;

    MEMORY[0x223DB9A60](v35, v37);

    sub_22258FFC8();
    v95 = v32;
    v96 = v30;

    v90 = *(v32 + 8);
    v90(v30, v19);
    v89(v30, v28, v19);
    v38 = v101;
    v39 = v32;
    v40 = v102;
    v41 = v30;
    v42 = v103;
    v88 = 0;
    v43 = *(v39 + 16);
    v43(v103, v41, v19);
    v44 = v19;
    v45 = *(v38 + 16);
    v46 = v93;
    v47 = v97;
    v45(v93, v97, v40);
    v48 = type metadata accessor for SyncItem();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    v52 = v42;
    v53 = v51;
    v89 = v44;
    v43((v51 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier), v52, v44);
    v54 = (v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v56 = v99;
    v55 = v100;
    *v54 = v99;
    v54[1] = v55;
    v57 = (v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v58 = v98;
    *v57 = v94;
    v57[1] = v58;
    *(v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v104;
    v45((v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate), v46, v40);
    v59 = v55;
    v60 = (v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    v61 = v92;
    *v60 = v91;
    v60[1] = v61;

    v62 = v88;
    v63 = createLaunchPayloadFor(bundleID:)(v56, v55);
    if (v62)
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v65 = sub_2225901D8();
      __swift_project_value_buffer(v65, qword_28130F918);

      v66 = sub_2225901B8();
      v67 = sub_222590668();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = v59;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v105 = v70;
        *v69 = 136446210;
        v71 = sub_222580F0C(v99, v68, &v105);
        v72 = v46;
        v73 = v101;
        v74 = v71;

        *(v69 + 4) = v74;
        _os_log_impl(&dword_222567000, v66, v67, "Error creating launch payload for %{public}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x223DBA5D0](v70, -1, -1);
        MEMORY[0x223DBA5D0](v69, -1, -1);

        v75 = *(v73 + 8);
        v76 = v102;
        v75(v97, v102);
        v75(v72, v76);
      }

      else
      {

        v82 = v102;
        v83 = *(v101 + 8);
        v83(v47, v102);
        v83(v46, v82);
      }

      v84 = v89;
      v85 = v90;
      v90(v103, v89);
      v85(v96, v84);
      v77 = 0;
      v78 = 0xC000000000000000;
    }

    else
    {
      v77 = v63;
      v78 = v64;

      v79 = *(v38 + 8);
      v79(v47, v40);
      v79(v46, v40);
      v80 = v89;
      v81 = v90;
      v90(v103, v89);
      v81(v96, v80);
    }

    v86 = (v53 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v86 = v77;
    v86[1] = v78;
    return v53;
  }

  return result;
}

uint64_t sub_22258E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v60 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F098, &qword_2225923B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v51 - v9;
  v10 = sub_22258FD68();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22258FBB8();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v63 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22258FDB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v25 = sub_222580584(a1, a2, 0);
  if (v4)
  {

    return v10;
  }

  v26 = v25;
  v54 = v10;
  v55 = a2;
  v51 = v21;
  v52 = v13;
  v56 = v16;
  v57 = v17;
  sub_22258FD88();
  v27 = v26;
  v28 = [v27 URL];
  v29 = v61;
  sub_22258FD18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0A0, &qword_2225923C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  v31 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v32 = v31;
  sub_22258DAD8(inited);
  swift_setDeallocating();
  sub_22258EE20(inited + 32);
  sub_22258FCB8();
  v53 = 0;
  (*(v62 + 8))(v29, v54);

  v33 = v59;
  sub_22258FBA8();
  v35 = v56;
  v34 = v57;
  if ((*(v57 + 48))(v33, 1, v56) == 1)
  {
    sub_22256EA7C(v33, &qword_27D00F098, &qword_2225923B8);
  }

  else
  {
    (*(v34 + 8))(v23, v35);
    (*(v34 + 32))(v23, v33, v35);
  }

  v36 = v60;
  v37 = [v27 bundleIdentifier];
  result = v55;
  if (v37)
  {
    v39 = v23;

    v40 = sub_2225904C8();
    v61 = v41;
    v62 = v40;

    v42 = v27;
    v43 = [v27 shortVersionString];
    if (v43)
    {
      v44 = v43;
      v45 = sub_2225904C8();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v48 = [v42 platform];

    v49 = v57;
    v50 = v51;
    (*(v57 + 16))(v51, v39, v35);
    v10 = sub_22258DCCC(v62, v61, v45, v47, v48, v50, v36, v64);

    (*(v58 + 8))(v63, v52);
    (*(v49 + 8))(v39, v35);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22258EBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2225908C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F60 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F80 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593FA0 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x615068636E75616CLL && a2 == 0xED000064616F6C79)
  {

    return 6;
  }

  else
  {
    v6 = sub_2225908C8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22258EE20(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22258EE7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22258EEE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22258EF30()
{
  v65 = sub_2225900D8();
  v69 = *(v65 - 8);
  v0 = *(v69 + 64);
  v1 = MEMORY[0x28223BE20](v65);
  v64 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  *&v68 = &v60 - v3;
  v4 = sub_22258FEB8();
  v61 = *(v4 - 8);
  *&v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222590148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222590108();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2225900B8();
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v70 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_222590498();
  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    v23 = sub_22258FF88();
    v69 = 0;
    *&v24 = 138412546;
    v68 = v24;
    v25 = *(v23 + 48);
    v26 = *(v23 + 52);
    swift_allocObject();
    v27 = sub_22258FF28();

    sub_22258FF78();

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v43 = sub_2225901D8();
    __swift_project_value_buffer(v43, qword_28130F918);

    v44 = sub_2225901B8();
    v45 = sub_222590658();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v71 = v27;
      v72[0] = v47;
      *v46 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0D8, &qword_222592500);
      v48 = sub_2225904D8();
      v50 = sub_222580F0C(v48, v49, v72);

      *(v46 + 4) = v50;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DBA5D0](v47, -1, -1);
      MEMORY[0x223DBA5D0](v46, -1, -1);
    }
  }

  else
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D468A0], v12);
    (*(v8 + 104))(v11, *MEMORY[0x277D46900], v7);
    if (qword_28130FA08 != -1)
    {
      swift_once();
    }

    v28 = v62;
    v29 = __swift_project_value_buffer(v62, qword_281310230);
    (*(v61 + 16))(v63, v29, v28);
    sub_2225900A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0C8, &qword_2225924F0);
    v30 = *(sub_2225900F8() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    v62 = xmmword_222591200;
    *(v33 + 16) = xmmword_222591200;
    sub_22258FE98();
    sub_2225900E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0D0, &qword_2225924F8);
    v34 = v66;
    v35 = *(v66 + 72);
    v36 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v62;
    (*(v34 + 16))(v37 + v36, v70, v67);
    v38 = v68;
    sub_2225900C8();
    v39 = v65;
    (*(v69 + 16))(v64, v38, v65);
    sub_22258CD8C(MEMORY[0x277D84F90]);
    v40 = sub_22258FF88();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v27 = sub_22258FEE8();
    sub_22258FF78();
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v51 = sub_2225901D8();
    __swift_project_value_buffer(v51, qword_28130F918);

    v52 = sub_2225901B8();
    v53 = sub_222590658();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v71 = v27;
      v72[0] = v55;
      *v54 = 136315138;

      v56 = sub_2225904D8();
      v58 = sub_222580F0C(v56, v57, v72);

      *(v54 + 4) = v58;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x223DBA5D0](v55, -1, -1);
      MEMORY[0x223DBA5D0](v54, -1, -1);
    }

    (*(v69 + 8))(v68, v39);
    (*(v66 + 8))(v70, v67);
  }

  return v27;
}