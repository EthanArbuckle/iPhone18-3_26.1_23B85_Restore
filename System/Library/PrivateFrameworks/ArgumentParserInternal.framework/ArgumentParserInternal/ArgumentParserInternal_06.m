unint64_t sub_241031510(uint64_t a1, uint64_t a2)
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

unint64_t sub_24103157C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_2410315C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_24102FB5C(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_241030298();
      v13 = v21;
    }

    v14 = *(v13 + 48) + 24 * v10;
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);

    v17 = *(v13 + 56) + 72 * v10;
    v18 = *(v17 + 48);
    *(a4 + 32) = *(v17 + 32);
    *(a4 + 48) = v18;
    *(a4 + 64) = *(v17 + 64);
    v19 = *(v17 + 16);
    *a4 = *v17;
    *(a4 + 16) = v19;
    sub_241031698(v10, v13);
    *v5 = v13;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *sub_241031698(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_241046F58() + 1) & ~v5;
    v30 = v4;
    v31 = v2;
    do
    {
      v9 = v7;
      v10 = *(v2 + 40);
      v11 = (*(v2 + 48) + 24 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      sub_2410475A8();

      sub_241046A88();
      MEMORY[0x245CD7AE0](*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          sub_241046A88();

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      v19 = sub_2410475E8();

      v7 = v9;
      v20 = v19 & v9;
      if (v3 >= v8)
      {
        v4 = v30;
        if (v20 < v8)
        {
          v2 = v31;
        }

        else
        {
          v2 = v31;
          if (v3 >= v20)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v31;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_14:
          v21 = *(v2 + 48);
          v22 = v21 + 24 * v3;
          v23 = (v21 + 24 * v6);
          if (v3 != v6 || v22 >= v23 + 24)
          {
            v24 = *v23;
            *(v22 + 16) = *(v23 + 2);
            *v22 = v24;
          }

          v25 = *(v2 + 56);
          result = (v25 + 72 * v3);
          v26 = (v25 + 72 * v6);
          if (72 * v3 < (72 * v6) || result >= v26 + 72 || v3 != v6)
          {
            result = memmove(result, v26, 0x48uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_2410318F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24102FDE4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_241030A2C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_24102FDE4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
        result = sub_241047518();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_241030134();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_241031A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24102FB5C(a2, a3, a4);
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
      sub_241030CC4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_24102FB5C(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_241047518();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_241030298();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 72 * v13;

    return sub_241033B24(a1, v25);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 24 * v13);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v28 = v24[7] + 72 * v13;
  *v28 = *a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  *(v28 + 64) = *(a1 + 64);
  *(v28 + 32) = v30;
  *(v28 + 48) = v31;
  *(v28 + 16) = v29;
  v32 = v24[2];
  v17 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v33;
}

uint64_t sub_241031C1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_2410475A8();
  v11 = a4 >> 6;
  if (a4 >> 6)
  {
    if (v11 != 1)
    {
      if (a3 | a2 || a4 != 128)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x245CD7AE0](v12);
      goto LABEL_11;
    }

    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
  }

  sub_2410475C8();
LABEL_11:
  v13 = sub_2410475E8();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_48:
    v28 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v4;
    sub_240FE0E2C(a2, a3, a4);
    sub_241032D28(a2, a3, a4, v15, isUniquelyReferenced_nonNull_native);
    *v4 = v40;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v16 = ~v14;
  v18 = a2 != 1 || a3 != 0;
  if (a4 == 128)
  {
    v19 = (a3 | a2) != 0;
  }

  else
  {
    v18 = 1;
    v19 = 1;
  }

  v20 = v11 != 2 || v18;
  v21 = v11 != 2 || v19;
  v38 = v21;
  v39 = v20;
  while (1)
  {
    v22 = *(v9 + 48) + 24 * v15;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25 >> 6)
    {
      break;
    }

    if (a4 >= 0x40u)
    {
      goto LABEL_29;
    }

LABEL_35:
    v26 = v23 == a2 && v24 == a3;
    if (v26 || (sub_241047428()) && ((a4 ^ v25) & 1) == 0)
    {
      v31 = a2;
      v32 = a3;
      v33 = a4;
      goto LABEL_53;
    }

LABEL_29:
    v15 = (v15 + 1) & v16;
    if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (v25 >> 6 == 1)
  {
    if (v11 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if (v24 | v23 || v25 != 128)
  {
    if ((v39 & 1) == 0)
    {
      sub_240FE0E3C(1, 0, 128);
      v31 = 1;
      goto LABEL_52;
    }

    v27 = 1;
    goto LABEL_47;
  }

  if (v38)
  {
    v27 = 0;
LABEL_47:
    sub_240FE0E3C(v27, 0, 128);
    goto LABEL_29;
  }

  sub_240FE0E3C(0, 0, 128);
  v31 = 0;
LABEL_52:
  v32 = 0;
  v33 = 0x80;
LABEL_53:
  sub_240FE0E3C(v31, v32, v33);
  v34 = *(v9 + 48) + 24 * v15;
  v35 = *v34;
  v36 = *(v34 + 8);
  *a1 = *v34;
  *(a1 + 8) = v36;
  v37 = *(v34 + 16);
  *(a1 + 16) = v37;
  sub_240FE0E2C(v35, v36, v37);
  return 0;
}

uint64_t sub_241031F0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = a4 >> 8;
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_2410475A8();
  if (v10 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](a2), (a4))
  {
    v13 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v13 = a3;
  }

  MEMORY[0x245CD7AE0](v13);
  v14 = sub_2410475E8();
  v15 = v11 + 56;
  v16 = -1 << *(v11 + 32);
  v17 = v14 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v11 + 48);
    do
    {
      v20 = v19 + 24 * v17;
      v21 = *(v20 + 16);
      LOBYTE(v22) = *(v20 + 17);
      if (v22)
      {
        if ((a4 & 0x100) != 0)
        {
          result = 0;
          a2 = *v20;
          a3 = *(v20 + 8);
          goto LABEL_19;
        }
      }

      else if ((a4 & 0x100) == 0 && *v20 == a2)
      {
        if (*(v20 + 16))
        {
          if (a4)
          {
            result = 0;
            a3 = *(v20 + 8);
            goto LABEL_19;
          }
        }

        else if ((a4 & 1) == 0 && *(v20 + 8) == a3)
        {
          result = 0;
          goto LABEL_19;
        }
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v22 = (a4 >> 8) & 1;
  v23 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v5;
  sub_241032FF8(a2, a3, a4 & 0x1FF, v17, isUniquelyReferenced_nonNull_native);
  *v5 = v26;
  result = 1;
  v21 = a4;
LABEL_19:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v21;
  *(a1 + 17) = v22;
  return result;
}

uint64_t sub_2410320B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_241046F98();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_241046F88();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_2410322C8(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_2410328F8(v19 + 1);
    }

    sub_241032C84(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](a2);
  v11 = sub_2410475E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_2410331D8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_2410322C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
    v2 = sub_241046FF8();
    v16 = v2;
    sub_241046F78();
    for (; sub_241046FA8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_2410328F8(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0]();
      result = sub_2410475E8();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_2410324D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8D0, &qword_24104BC88);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_241032B48(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_241032644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8C8, &qword_24104BC68);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v35 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 17);
      v23 = *(v6 + 40);
      sub_2410475A8();
      if (v22 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v20), (v21))
      {
        v24 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v24 = v35;
      }

      MEMORY[0x245CD7AE0](v24);
      result = sub_2410475E8();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v35;
      *(v15 + 16) = v21;
      *(v15 + 17) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2410328F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v18);
      result = sub_2410475E8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_241032B48(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_2410475A8();
  if (!(a3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    goto LABEL_11;
  }

  if (a2 | a1 || a3 != 128)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x245CD7AE0](v9);
LABEL_11:
  sub_2410475E8();
  v10 = -1 << *(a4 + 32);
  result = sub_241046F68();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(a4 + 48) + 24 * result;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_241032C84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](a1);
  sub_2410475E8();
  v5 = -1 << *(a2 + 32);
  result = sub_241046F68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_241032D28(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a5)
  {
    sub_2410324D4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_241033330();
      goto LABEL_54;
    }

    sub_241033748(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_2410475A8();
  v14 = a3 >> 6;
  if (a3 >> 6)
  {
    if (v14 != 1)
    {
      if (a2 | v9 || a3 != 128)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      MEMORY[0x245CD7AE0](v15);
      goto LABEL_18;
    }

    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
  }

  sub_2410475C8();
LABEL_18:
  result = sub_2410475E8();
  v16 = -1 << *(v12 + 32);
  a4 = result & ~v16;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_54;
  }

  v17 = ~v16;
  v19 = v9 != 1 || a2 != 0;
  if (a3 == 128)
  {
    v20 = (a2 | v9) != 0;
  }

  else
  {
    v19 = 1;
    v20 = 1;
  }

  v21 = v14 != 2 || v19;
  v22 = v14 != 2 || v20;
  v32 = v22;
  v33 = v21;
  while (1)
  {
    v23 = *(v12 + 48) + 24 * a4;
    result = *v23;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    if (!(v25 >> 6))
    {
      break;
    }

    if (v25 >> 6 == 1)
    {
      if (v14 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v24 | result || v25 != 128)
    {
      result = sub_240FE0E3C(1, 0, 128);
      if ((v33 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = sub_240FE0E3C(0, 0, 128);
      if ((v32 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_36:
    a4 = (a4 + 1) & v17;
    if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (a3 >= 0x40u)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (result != v9 || v24 != a2)
  {
    result = sub_241047428();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if ((a3 ^ v25))
  {
    goto LABEL_36;
  }

LABEL_53:
  result = sub_241047508();
  __break(1u);
LABEL_54:
  v27 = *v34;
  *(*v34 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 24 * a4;
  *v28 = v9;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

uint64_t sub_241032FF8(uint64_t result, uint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_241032644(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_241033498();
      a4 = v11;
      goto LABEL_25;
    }

    sub_2410338A0(v9 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_2410475A8();
  if (a3 & 0x100) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v8), (a3))
  {
    v14 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v14 = a2;
  }

  MEMORY[0x245CD7AE0](v14);
  result = sub_2410475E8();
  v15 = -1 << *(v12 + 32);
  a4 = result & ~v15;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v12 + 48) + 24 * a4;
      if (*(v17 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a3 & 0x100) == 0 && *v17 == v8)
      {
        if (*(v17 + 16))
        {
          if (a3)
          {
            goto LABEL_24;
          }
        }

        else if ((a3 & 1) == 0 && *(v17 + 8) == a2)
        {
LABEL_24:
          result = sub_241047508();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v18 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = *(v18 + 48) + 24 * a4;
  *v19 = v8;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  *(v19 + 17) = HIBYTE(a3) & 1;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2410331D8(uint64_t result, unint64_t a2, char a3)
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
    sub_2410328F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2410335F8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_241033C0C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v4);
  result = sub_2410475E8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
  result = sub_241047508();
  __break(1u);
  return result;
}

void *sub_241033330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8D0, &qword_24104BC88);
  v2 = *v0;
  v3 = sub_241046FD8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_240FE0E2C(v19, v20, v22);
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

void *sub_241033498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8C8, &qword_24104BC68);
  v2 = *v0;
  v3 = sub_241046FD8();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
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

void *sub_2410335F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
  v2 = *v0;
  v3 = sub_241046FD8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

unint64_t sub_241033748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8D0, &qword_24104BC88);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_241032B48(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(v3 + 48) + 24 * (v12 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_240FE0E2C(*v15, v17, v18);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2410338A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8C8, &qword_24104BC68);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v34 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 17);
      v23 = *(v6 + 40);
      sub_2410475A8();
      if (v22 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v20), (v21))
      {
        v24 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v24 = v34;
      }

      MEMORY[0x245CD7AE0](v24);
      result = sub_2410475E8();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_34;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v34;
      *(v15 + 16) = v21;
      *(v15 + 17) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_32;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_241033C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
  result = sub_241046FE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v17);
      result = sub_2410475E8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
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

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_241033F20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_241033F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241033FCC()
{
  result = qword_280CC1F00;
  if (!qword_280CC1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1F00);
  }

  return result;
}

uint64_t sub_241034020(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!(a3 >> 6))
  {
    v3 = 11565;
LABEL_6:
    v5 = v3;
    MEMORY[0x245CD70E0]();
    return v5;
  }

  if (a3 >> 6 != 1)
  {
    v3 = 45;
    goto LABEL_6;
  }

  v5 = 0;
  MEMORY[0x245CD70E0](45, 0xE100000000000000);
  sub_241046A98();
  return v5;
}

uint64_t sub_2410340C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_2410475A8();
  if (!(a3 >> 6))
  {
    v4 = 0;
LABEL_6:
    MEMORY[0x245CD7AE0](v4);
    sub_241046A88();
    return sub_2410475E8();
  }

  if (a3 >> 6 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  MEMORY[0x245CD7AE0](1);
  sub_241046A88();
  sub_2410475C8();
  return sub_2410475E8();
}

uint64_t sub_24103416C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_241034020(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_241034020(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_241047428();
  }

  return v10 & 1;
}

uint64_t sub_241034214(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_241034020(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_241034020(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_241047428();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_2410342D0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_241034020(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_241034020(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_241047428();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_24103438C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_241034020(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_241034020(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_241047428();
  }

  return v10 & 1;
}

uint64_t sub_24103445C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16) >> 6;
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x245CD7AE0](1);
      sub_241046A88();
      return sub_2410475C8();
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x245CD7AE0](v5);

  return sub_241046A88();
}

uint64_t sub_24103450C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  if (!(v3 >> 6))
  {
    v4 = 0;
LABEL_6:
    MEMORY[0x245CD7AE0](v4);
    sub_241046A88();
    return sub_2410475E8();
  }

  if (v3 >> 6 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  MEMORY[0x245CD7AE0](1);
  sub_241046A88();
  sub_2410475C8();
  return sub_2410475E8();
}

uint64_t sub_2410345AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_241046EB8();
      v12 = v11;
      v13 = sub_241046E68();
      v14 = sub_241046BD8();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_241047428();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_241046BD8();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_24103471C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!(a3 >> 6))
  {
    if (a6 < 0x40u)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (a3 >> 6 == 1)
  {
    if ((a6 & 0xC0) == 0x40)
    {
      if (a1 == a4 && a2 == a5)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }

      v7 = a3;
      v8 = a6;
      v9 = sub_241047428();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }
    }

    return 0;
  }

  if ((a6 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_17:

  return sub_241047428();
}

unint64_t sub_241034804(uint64_t a1, unint64_t a2)
{
  if (sub_2410345AC(11565, 0xE200000000000000, a1, a2))
  {
    result = sub_241046E88();
    if (v5)
    {
      result = a2;
    }

    if (a2 >> 14 >= result >> 14)
    {
LABEL_12:
      v8 = sub_241046ED8();
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v6 = MEMORY[0x245CD7040](v8, v10, v12, v14);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  result = sub_241046EA8();
  if (result == 2)
  {
    if ((a2 ^ a1) >= 0x4000)
    {
      sub_241046E78();
      v6 = sub_241046EB8();
LABEL_13:

      return v6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_241046E88();
  if (v7)
  {
    result = a2;
  }

  if (a2 >> 14 >= result >> 14)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_241034A24()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v4 = (v0[1] + 16 * v1);
  v3 = *v4;
  v5 = v4[1];
  v0[2] = v1 + 1;

  return v3;
}

unint64_t sub_241034A90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_241046C48() != a1 || v9 != a2)
  {
    v10 = sub_241047428();

    if (v10)
    {
      return v8;
    }

    v8 = sub_241046B68();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_241034B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_241037F00(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    goto LABEL_15;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v6 + 16);
  if (v11 < v7 || v11 < result)
  {
    goto LABEL_18;
  }

  if (result >= v7)
  {
    if (result != v11)
    {
      v13 = v6 + (result << 6) + 48;
      while ((*(v13 + 40) & 1) == 0)
      {
        ++result;
        v13 += 64;
        if (v11 == result)
        {
          goto LABEL_15;
        }
      }

      if ((*v13 & 0x6000000000000000) == 0x2000000000000000)
      {
        v20 = *(v13 + 24);
        v14 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 - 16);
        v17 = *(v13 - 8);
        v18 = result;
        sub_241029EB8(v16, v17, *v13);
        result = sub_241036EBC(v4, v18);
        v9 = v20;
        v19 = 1;
LABEL_16:
        *a4 = v9;
        *(a4 + 16) = v19;
        *(a4 + 24) = v16;
        *(a4 + 32) = v17;
        return result;
      }
    }

LABEL_15:
    v19 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_241034C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_241037F00(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = result;
  v15 = *(v6 + 16);
  if (v15 < v7 || v15 < result)
  {
    goto LABEL_22;
  }

  if (result < v7)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 == v15)
  {
LABEL_10:

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0uLL;
    goto LABEL_11;
  }

  v17 = v14 << 6;
  while (1)
  {
    v18 = (v6 + v17);
    v19 = *(v6 + v17 + 48);
    v20 = (v19 >> 61) & 3;
    if (v20)
    {
      break;
    }

LABEL_13:
    ++v14;
    v17 += 64;
    if (v15 == v14)
    {
      goto LABEL_10;
    }
  }

  if (v20 == 2)
  {
    v21 = v18[7];
    v22 = v18[8];
    sub_241029F24(v18[4], v18[5], v19);
    goto LABEL_13;
  }

  v23 = *(v6 + 16);
  if (v23 < v7)
  {
    goto LABEL_24;
  }

  if (v14 >= v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = (v6 + v17);
  v25 = *(v6 + v17 + 48);
  if ((v25 & 0x6000000000000000) != 0x2000000000000000)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v26 = v24[7];
  v27 = v24[8];
  v12 = v24[4];
  v13 = v24[5];
  v28 = v6 + v17;
  v11 = *(v6 + v17 + 88);
  v29 = *(v28 + 72);
  sub_241029EB8(v12, v13, v25);
  result = sub_241036EBC(v4, v14);
  v9 = v29;
LABEL_11:
  *a4 = v9;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_241034E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_241037F00(a1, a2, a3 & 0x1FF, *v4, v7);
  if (v9)
  {
LABEL_2:
    result = 0;
    v10 = 0uLL;
    v11 = 0uLL;
LABEL_15:
    *a4 = v10;
    *(a4 + 16) = v11;
    *(a4 + 32) = result;
    return result;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(v6 + 16);
  if (v12 < v7 || v12 < result)
  {
    goto LABEL_17;
  }

  if (result >= v7)
  {
    v14 = (v6 + (result << 6) + 88);
    v15 = v12 - result + 1;
    while (--v15)
    {
      v16 = v14 + 64;
      v17 = *v14;
      v14 += 64;
      if (v17 == 1)
      {
        v19 = *(v16 - 10);
        v18 = *(v16 - 9);
        result = sub_241037010(v19, v18, 1);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v20 = v4[2];
        if (v19 < *(v20 + 16))
        {
          v21 = v20 + 16 * v19;
          v22 = *(v21 + 40);
          *&v23 = vdupq_n_s64(1uLL).u64[0];
          *(&v23 + 1) = *(v21 + 32);
          v24 = v23;

          v11 = v24;
          *&v10 = v19;
          *(&v10 + 1) = v18;
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_2;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_241034F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
    goto LABEL_7;
  }

  if (v2 < v3)
  {
    v5 = *v1 + (v2 << 6);
    v6 = *(v5 + 48);
    if ((v6 & 0x6000000000000000) == 0x2000000000000000)
    {
      v7 = *(v5 + 88);
      v14 = *(v5 + 72);
      v8 = *(v5 + 56);
      v9 = *(v5 + 64);
      v11 = *(v5 + 32);
      v10 = *(v5 + 40);
      v1[1] = v2 + 1;
      v12 = a1;
      result = sub_241029EB8(v11, v10, v6);
      v4 = v14;
      a1 = v12;
LABEL_8:
      *a1 = v4;
      *(a1 + 16) = v7;
      *(a1 + 24) = v11;
      *(a1 + 32) = v10;
      return result;
    }

LABEL_7:
    v7 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_241034FE4()
{
  if ((v0[2] & 0x8000000000000080) != 0x80)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_241046B58();
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v18 = MEMORY[0x277D84F90];
  result = sub_240FE4180(0, v3 & ~(v3 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v4 = v18;
    v8 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v8 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v9 = 4 * v8;
    v10 = 15;
    while (v9 > v10 >> 14)
    {
      v11 = sub_241046C48();
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v12;
        v17 = v11;
        sub_240FE4180((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v17;
      }

      *(v18 + 16) = v14 + 1;
      v15 = (v18 + 48 * v14);
      v15[4] = v7;
      v15[5] = v11;
      v15[6] = v12;
      v15[7] = 64;
      v15[8] = 0;
      v15[9] = 0;
      result = sub_241046B68();
      v10 = result;
      if (v5 == ++v7)
      {
        return v4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_241035148@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
LABEL_7:
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = *v1 + (v2 << 6) + 48;
    while ((*v5 & 0x6000000000000000) != 0x2000000000000000)
    {
      ++v2;
      v5 += 64;
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }

    v7 = *(v5 - 16);
    v8 = *(v5 - 8);
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    v13 = *(v5 + 24);
    v6 = *(v5 + 40);
    v11 = a1;
    sub_241029EB8(v7, v8, *v5);
    result = sub_2410371C0(v2);
    v4 = v13;
    a1 = v11;
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_241035220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    goto LABEL_106;
  }

  if (a2 < 0)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    result = sub_241047508();
    __break(1u);
  }

  else
  {
    v5 = a1 + 32;
    v6 =  + 88;
    v7 = MEMORY[0x277D84F90];
    v8 = a2;
    v9 = a2;
LABEL_4:
    v10 = (v6 + (v8 << 6));
    while (v3 != v9)
    {
      if (v8 < a2 || v9 >= v3)
      {
        __break(1u);
LABEL_100:
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
        goto LABEL_107;
      }

      ++v9;
      v11 = *v10;
      v10 += 64;
      if (v11)
      {
        v12 = *(v10 - 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_240FE3714(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_240FE3714((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v12;
        v8 = v9;
        goto LABEL_4;
      }
    }

    v70 = MEMORY[0x277D84F90];
    if (v3 != a2)
    {
      v70 = MEMORY[0x277D84F90];
      v55 = a2;
      do
      {
        v56 = v55;
        while (1)
        {
          if (v56 < a2 || v55 >= v3)
          {
            goto LABEL_100;
          }

          v57 = (v5 + (v55 << 6));
          v58 = v57[1];
          v78 = *v57;
          v79 = v58;
          *v80 = v57[2];
          *&v80[9] = *(v57 + 41);
          ++v55;
          if ((v58 & 0x6000000000000000) != 0x4000000000000000 || v79 != 0x4000000000000000 || *(&v79 + 1) | *v80 | *(&v78 + 1) | v78)
          {
            break;
          }

LABEL_89:
          if (v55 == v3)
          {
            goto LABEL_15;
          }
        }

        if ((v80[24] & 1) == 0)
        {
          v59 = *(v7 + 2);
          v60 = (v7 + 32);
          while (v59)
          {
            v61 = *v60++;
            --v59;
            if (v61 == *&v80[8])
            {
              goto LABEL_89;
            }
          }
        }

        sub_241025690(&v78, &v82);
        v62 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_240FE41C0(0, *(v70 + 16) + 1, 1);
          v62 = v70;
        }

        v64 = *(v62 + 16);
        v63 = *(v62 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_240FE41C0((v63 > 1), v64 + 1, 1);
          v62 = v70;
        }

        *(v62 + 16) = v64 + 1;
        v70 = v62;
        v65 = (v62 + (v64 << 6));
        v66 = v78;
        v67 = v79;
        v68 = *v80;
        *(v65 + 73) = *&v80[9];
        v65[3] = v67;
        v65[4] = v68;
        v65[2] = v66;
      }

      while (v55 != v3);
    }

LABEL_15:

    v15 = *(v70 + 16);
    if (v15)
    {
      v81 = MEMORY[0x277D84F90];
      sub_240FE4200(0, v15, 0);
      v16 = 0;
      v17 = v81;
      v72 = v15;
      while (1)
      {
        v18 = (v70 + 32 + (v16 << 6));
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *&v84[9] = *(v18 + 41);
        v83 = v20;
        *v84 = v21;
        v82 = v19;
        v23 = *(&v21 + 1);
        v22 = *&v84[16];
        v24 = v84[24];
        if (v84[24] == 1)
        {
          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_103;
          }
        }

        else
        {
          if ((v83 & 0x6000000000000000) == 0)
          {
            v51 = v82;
            if ((v83 & 0x8000000000000000) != 0)
            {
              v52 = *v84;
              v74 = *(&v83 + 1);
              if (v83 >> 6)
              {
                if (v83 >> 6 == 1)
                {
                  *&v76 = 0;
                  *(&v76 + 1) = 0xE000000000000000;
                  sub_241025690(&v82, &v78);
                  MEMORY[0x245CD70E0](45, 0xE100000000000000);
                  sub_241046A98();
LABEL_77:
                  v78 = v76;
                  MEMORY[0x245CD70E0](61, 0xE100000000000000);
                  MEMORY[0x245CD70E0](v74, v52);
                  v26 = *(&v78 + 1);
                  v73 = v78;
                  goto LABEL_25;
                }

                *&v76 = 45;
                v54 = 0xE100000000000000;
              }

              else
              {
                *&v76 = 11565;
                v54 = 0xE200000000000000;
              }

              *(&v76 + 1) = v54;
              sub_241025690(&v82, &v78);
              MEMORY[0x245CD70E0](v51, *(&v51 + 1));
              goto LABEL_77;
            }

            if (v83 >> 6)
            {
              if (v83 >> 6 == 1)
              {
                v75 = 0;
                v77 = 0xE000000000000000;
                sub_241025690(&v82, &v78);
                MEMORY[0x245CD70E0](45, 0xE100000000000000);
                sub_241046A98();
LABEL_73:
                v26 = v77;
                v73 = v75;
                goto LABEL_25;
              }

              v75 = 45;
              v53 = 0xE100000000000000;
            }

            else
            {
              v75 = 11565;
              v53 = 0xE200000000000000;
            }

            v77 = v53;
            sub_241025690(&v82, &v78);
            MEMORY[0x245CD70E0](v51, *(&v51 + 1));
            goto LABEL_73;
          }

          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_105;
          }
        }

        v25 = (a3 + 32 + 16 * *(&v21 + 1));
        v26 = v25[1];
        v73 = *v25;
        sub_241025690(&v82, &v78);

LABEL_25:
        v27 = sub_241025748();
        v28 = MEMORY[0x245CD7300](1, &type metadata for InputOrigin.Element, v27);
        v29 = *(v28 + 40);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v23);
        if (v24)
        {
          v30 = 0;
        }

        else
        {
          MEMORY[0x245CD7AE0](1);
          v30 = v22;
        }

        MEMORY[0x245CD7AE0](v30);
        v31 = sub_2410475E8();
        v32 = -1 << *(v28 + 32);
        v33 = v31 & ~v32;
        if ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          do
          {
            v35 = *(v28 + 48) + 24 * v33;
            if ((*(v35 + 17) & 1) == 0 && *v35 == v23)
            {
              if (*(v35 + 16))
              {
                if (v24)
                {
                  goto LABEL_59;
                }
              }

              else if ((v24 & 1) == 0 && *(v35 + 8) == v22)
              {
                goto LABEL_59;
              }
            }

            v33 = (v33 + 1) & v34;
          }

          while (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v28 + 16);
        if (*(v28 + 24) <= v37)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_241032644(v37 + 1);
          }

          else
          {
            sub_2410338A0(v37 + 1);
          }

          v38 = *(v28 + 40);
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v23);
          if (v24)
          {
            v39 = 0;
          }

          else
          {
            MEMORY[0x245CD7AE0](1);
            v39 = v22;
          }

          MEMORY[0x245CD7AE0](v39);
          v40 = sub_2410475E8();
          v41 = -1 << *(v28 + 32);
          v33 = v40 & ~v41;
          if ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v42 = ~v41;
            do
            {
              v43 = *(v28 + 48) + 24 * v33;
              if ((*(v43 + 17) & 1) == 0 && *v43 == v23)
              {
                if (*(v43 + 16))
                {
                  if (v24)
                  {
                    goto LABEL_108;
                  }
                }

                else if ((v24 & 1) == 0 && *(v43 + 8) == v22)
                {
                  goto LABEL_108;
                }
              }

              v33 = (v33 + 1) & v42;
            }

            while (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_241033498();
        }

        *(v28 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v33;
        v44 = *(v28 + 48) + 24 * v33;
        *v44 = v23;
        *(v44 + 8) = v22;
        *(v44 + 16) = v24;
        *(v44 + 17) = 0;
        v45 = *(v28 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_101;
        }

        *(v28 + 16) = v47;
LABEL_59:
        sub_2410256EC(&v82);
        v81 = v17;
        v49 = *(v17 + 16);
        v48 = *(v17 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_240FE4200((v48 > 1), v49 + 1, 1);
          v17 = v81;
        }

        ++v16;
        *(v17 + 16) = v49 + 1;
        v50 = (v17 + 24 * v49);
        v50[4] = v28;
        v50[5] = v73;
        v50[6] = v26;
        if (v16 == v72)
        {

          return v17;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_241035A0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    v11 = sub_241046B58();
    if (v11 < 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_241047BF0;
      *(v3 + 32) = a1;
      *(v3 + 40) = a2;
      *(v3 + 48) = 0x2000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;

      return v3;
    }

    if (v11 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_241047BF0;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0x4000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

    goto LABEL_23;
  }

  v7 = 0;
  v8 = 4 * v6;
  v3 = 15;
  while (1)
  {
    if (sub_241046C48() == 45 && v10 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v9 = sub_241047428();

    if ((v9 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v3 = sub_241046B68();
    v7 = v3 >> 14;
    if (v3 >> 14 == v8)
    {
      goto LABEL_11;
    }
  }

  result = sub_241046C18();
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  v13 = result;
  v14 = sub_241046C78();
  v18 = v17;
  if (v13 == 1)
  {
    v19 = v14;
    v20 = v15;
    v21 = v16;

    sub_241037864(v19, v20, v21, v18, v58);
    if (v51)
    {
LABEL_20:

      return v3;
    }

    v25 = v58[0];
    v26 = v58[1];
    v49 = v58[2];
    v52 = v58[3];
    v27 = v58[4];
    v28 = sub_241034FE4();
    v29 = *(v28 + 16);
    if (!v29)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
      v33 = swift_allocObject();
      v34 = v27;
      v3 = v33;
      *(v33 + 16) = xmmword_241047BF0;
      *(v33 + 32) = v25;
      *(v33 + 40) = v26;
      *(v33 + 48) = v49;
      *(v33 + 56) = v52;
      *(v33 + 64) = v34;
      *(v33 + 72) = a3;
      *(v33 + 80) = 0;
      *(v33 + 88) = 1;
      return v3;
    }

    if (v29 != 1)
    {
      v35 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
      v36 = swift_allocObject();
      v37 = v27;
      v3 = v36;
      *(v36 + 16) = xmmword_241047BF0;
      *(v36 + 32) = v25;
      *(v36 + 40) = v26;
      *(v36 + 48) = v49;
      *(v36 + 56) = v52;
      *(v36 + 64) = v37;
      *(v36 + 72) = a3;
      *(v36 + 80) = 0;
      *(v36 + 88) = 1;
      v38 = *(v35 + 16);
      if (v38)
      {
        v50 = v38 - 1;
        for (i = (v35 + 40); ; i += 6)
        {
          v40 = *i;
          v48 = *(i - 1);
          v41 = i[1];
          v42 = i[2];
          v43 = i[3];
          v44 = i[4];
          sub_241029ED8(*i, v41, v42);
          v46 = *(v3 + 16);
          v45 = *(v3 + 24);
          if (v46 >= v45 >> 1)
          {
            v3 = sub_240FE32D0((v45 > 1), v46 + 1, 1, v3);
          }

          v61 = 0;
          *(v3 + 16) = v46 + 1;
          v47 = v3 + (v46 << 6);
          *(v47 + 32) = v40;
          *(v47 + 40) = v41;
          *(v47 + 48) = v42;
          *(v47 + 56) = v43;
          *(v47 + 64) = v44;
          *(v47 + 72) = a3;
          *(v47 + 80) = v48;
          *(v47 + 88) = v61;
          if (!v50)
          {
            break;
          }

          --v50;
        }
      }

      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_241047BF0;
    result = sub_241038384(v58);
    if ((v19 ^ v20) >= 0x4000)
    {
      v30 = sub_241046EB8();
      v32 = v31;

      *(v3 + 32) = v30;
      *(v3 + 40) = v32;
      *(v3 + 48) = 64;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  if (!v13)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_241047BF0;
    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
    *(v3 + 48) = 0x2000000000000000;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;

    return v3;
  }

  if (v13 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_241047BF0;

    sub_24103602C(a1, a2, v59);
    v22 = v60;
    v23 = v59[1];
    *(v3 + 32) = v59[0];
    *(v3 + 48) = v23;
    *(v3 + 64) = v22;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;
    return v3;
  }

LABEL_23:
  sub_240FDEE00();
  swift_allocError();
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = v54;
  *(v24 + 32) = v55;
  *(v24 + 48) = v56;
  *(v24 + 64) = v57;
  *(v24 + 80) = 5;
  swift_willThrow();

  return v3;
}

unint64_t sub_24103602C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_241034A90(61, 0xE100000000000000, a1, a2);
  if (v7)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1;
    }

    v9 = v8 << 16;
    if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v10 = v9 | 7;
    }

    else
    {
      v10 = v9 | 0xB;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = sub_241046C78();
  v13 = v12;
  sub_240FFCF70(v10, a1, a2);
  v15 = v14;

  result = sub_241046E88();
  if (v17)
  {
    result = v15;
  }

  if (v15 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_241046ED8();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = sub_241034804(v11, v13);
    v27 = v26;
    v29 = v28;
    if ((v18 ^ v20) >> 14)
    {
      v30 = MEMORY[0x245CD7040](v18, v20, v22, v24);
      v31 = v33;

      v32 = v29 | 0x8000000000000000;
    }

    else
    {

      v30 = 0;
      v31 = 0;
      v32 = v29;
    }

    *a3 = v25;
    a3[1] = v27;
    a3[2] = v32;
    a3[3] = v30;
    a3[4] = v31;
  }

  return result;
}

uint64_t sub_2410361EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (v3 < 0)
  {
    v5 = v0[3];
    v4 = v0[4];
    v8 = sub_241034020(v1, v2, v3);
    MEMORY[0x245CD70E0](61, 0xE100000000000000);
    v1 = v5;
    v2 = v4;
LABEL_9:
    MEMORY[0x245CD70E0](v1, v2);
    return v8;
  }

  if (!(v3 >> 6))
  {
    v6 = 11565;
LABEL_8:
    v8 = v6;
    goto LABEL_9;
  }

  if (v3 >> 6 != 1)
  {
    v6 = 45;
    goto LABEL_8;
  }

  v8 = 0;
  MEMORY[0x245CD70E0](45, 0xE100000000000000);
  sub_241046A98();
  return v8;
}

uint64_t sub_2410362C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_241037484(v5, v7) & 1;
}

uint64_t sub_241036318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_241037648(v5, v7) & 1;
}

BOOL sub_241036364(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v3 = *(a1 + 40);
  v13 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = *(a2 + 40);
  v15 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if ((sub_241037648(v12, v14) & 1) == 0 || v3 != v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (v4 == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1;
    }

    return (v11 & 1) == 0;
  }

  return (v9 & 1) != 0;
}

uint64_t sub_241036400()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_241036474()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_241036508()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2410475A8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x245CD7AE0](1);
    v3 = v1;
  }

  MEMORY[0x245CD7AE0](v3);
  return sub_2410475E8();
}

uint64_t sub_241036568()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x245CD7AE0](1);
  }

  return MEMORY[0x245CD7AE0](v1);
}

uint64_t sub_2410365B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2410475A8();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_241036610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_241036648(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_241036680(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2410366B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_2410366F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24103672C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x245CD7AE0](1);
    v4 = v2;
  }

  MEMORY[0x245CD7AE0](v4);
  return sub_2410475E8();
}

uint64_t sub_2410367A0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x245CD7AE0](*v0);
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  return MEMORY[0x245CD7AE0](v1);
}

uint64_t sub_2410367F4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v2);
  if (v3)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_241036868(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2410368B8(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_241036908(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_241036958(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2410369A8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16) == 1)
    {
      if (v2)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2410369F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_24102F290(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_24102F200(v3, v5);
}

uint64_t sub_241036A6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = (v3 >> 61) & 3;
  if (v4)
  {
    if (v4 != 1)
    {
      return 0x74616E696D726574;
    }

    v10 = 0x272065756C6176;
    MEMORY[0x245CD70E0](v1, v2);
    v1 = 39;
    v2 = 0xE100000000000000;
    goto LABEL_13;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    v6 = v0[3];
    v7 = v0[4];
    v8 = sub_241034020(v1, v2, v3);
    MEMORY[0x245CD70E0](v6, v7);
    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    v10 = v8;

    MEMORY[0x245CD70E0](0x2065756C6176203BLL, 0xE900000000000027);

    return v10;
  }

  if (!(v3 >> 6))
  {
    v9 = 11565;
LABEL_12:
    v10 = v9;
LABEL_13:
    MEMORY[0x245CD70E0](v1, v2);
    return v10;
  }

  if (v3 >> 6 != 1)
  {
    v9 = 45;
    goto LABEL_12;
  }

  v10 = 0;
  MEMORY[0x245CD70E0](45, 0xE100000000000000);
  sub_241046A98();
  return v10;
}

uint64_t sub_241036C04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_241047358();
  }

  v5 = sub_241047358();
  MEMORY[0x245CD70E0](46, 0xE100000000000000);
  v4 = sub_241047358();
  MEMORY[0x245CD70E0](v4);

  return v5;
}

uint64_t sub_241036CC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = (v6 >> 61) & 3;
  if (v10)
  {
    if (v10 != 1)
    {
      v17 = sub_241036C04(v7, v8, v9);
      MEMORY[0x245CD70E0](v17);

      v18 = 757932125;
      v19 = 0xE400000000000000;
LABEL_9:
      result = MEMORY[0x245CD70E0](v18, v19);
      goto LABEL_10;
    }

    v11 = sub_241036C04(v7, v8, v9);
    MEMORY[0x245CD70E0](v11);

    MEMORY[0x245CD70E0](2564189, 0xE300000000000000);
    v12 = v5;
    v13 = v4;
LABEL_8:
    MEMORY[0x245CD70E0](v12, v13);
    v18 = 39;
    v19 = 0xE100000000000000;
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v22 = sub_241036C04(v7, v8, v9);
    MEMORY[0x245CD70E0](v22);

    MEMORY[0x245CD70E0](8285, 0xE200000000000000);
    v23 = sub_241034020(v5, v4, v6);
    MEMORY[0x245CD70E0](v23);

    MEMORY[0x245CD70E0](10045, 0xE200000000000000);
    v12 = v20;
    v13 = v21;
    goto LABEL_8;
  }

  v14 = sub_241036C04(v7, v8, v9);
  MEMORY[0x245CD70E0](v14);

  MEMORY[0x245CD70E0](8285, 0xE200000000000000);
  v15 = sub_241034020(v5, v4, v6);
  MEMORY[0x245CD70E0](v15);

LABEL_10:
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_241036EBC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 <= a2)
  {
    v3 = result;
    if (v2 != a2)
    {
      if (v2 < a2)
      {
        v5 = a2 << 6;
        v6 = a2;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          v8 = *v3;
          if (v7 >= *(*v3 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v8 + v5 - 32);
          v10 = *(v8 + v5 - 16);
          v11 = *(v8 + v5);
          *&v24[9] = *(v8 + v5 + 9);
          v23 = v10;
          *v24 = v11;
          v22 = v9;
          sub_241025690(&v22, v20);
          result = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v8;
          if ((result & 1) == 0)
          {
            result = sub_24103F1DC(v8);
            v8 = result;
            *v3 = result;
          }

          v12 = v7 + 1;
          if (v12 >= *(v8 + 16))
          {
            goto LABEL_18;
          }

          v13 = (v8 + v5);
          v14 = *(v8 + v5 + 32);
          v15 = *(v8 + v5 + 48);
          v16 = *(v8 + v5 + 64);
          *&v21[9] = *(v8 + v5 + 73);
          v20[1] = v15;
          *v21 = v16;
          v20[0] = v14;
          v17 = v22;
          v18 = v23;
          v19 = *v24;
          *(v13 + 73) = *&v24[9];
          v13[3] = v18;
          v13[4] = v19;
          v13[2] = v17;
          result = sub_2410256EC(v20);
          v6 = v12 - 1;
          if (v12 - 1 == v2)
          {
            goto LABEL_14;
          }

          if (v2 < v6)
          {
            v5 -= 64;
            if (v6 <= a2)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
    }

LABEL_14:
    if (!__OFADD__(v2, 1))
    {
      v3[1] = v2 + 1;
      return result;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_241037010(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 16);
  if (v6 < v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 >= v6)
  {
    return result;
  }

  v7 = v5 << 6;
  v8 = v3[1];
  while (1)
  {
    v9 = *(v4 + v7 + 72);
    if (v9 == result)
    {
      break;
    }

    ++v8;
    v7 += 64;
    if (v9 > result || v8 >= v6)
    {
      return result;
    }
  }

  if (a3)
  {
    if (v6 != v8)
    {
      v11 = (v4 + v7 + 72);
      v12 = v8;
      while (1)
      {
        v13 = *v11;
        v11 += 8;
        if (v13 != result)
        {
          break;
        }

        if (v6 == ++v12)
        {
          goto LABEL_35;
        }
      }

      v6 = v12;
    }

LABEL_35:
    if (v6 >= v8)
    {

      return sub_24103730C(v8, v6);
    }

    goto LABEL_43;
  }

  if (*(v4 + v7 + 88) == 1)
  {
    v14 = result;
    v15 = a2;
    sub_2410371C0(v8);
    a2 = v15;
    result = v14;
    ++v8;
    v4 = *v3;
    v5 = v3[1];
  }

  if (v5 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = *(v4 + 16);
  if (v16 < v5 || v16 < v8)
  {
    goto LABEL_44;
  }

  if (v8 < v5)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v8 != v16)
  {
    for (i = (v4 + (v8 << 6) + 88); ; i += 64)
    {
      if (v8 >= v16)
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(i - 2) == result && (*i & 1) == 0 && *(i - 1) == a2)
      {
        break;
      }

      if (v16 == ++v8)
      {
        return result;
      }
    }

    return sub_2410371C0(v8);
  }

  return result;
}

uint64_t sub_2410371C0(uint64_t result)
{
  v3 = v1[1];
  if (v3 <= result)
  {
    if (v3 != result)
    {
      v4 = result;
      if (v3 >= result)
      {
LABEL_13:
        __break(1u);
      }

      else
      {
        v2 = *v1;
        v5 = result << 6;
        v6 = result;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          if (v7 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + v5 - 32);
          v9 = *(v2 + v5 - 16);
          v10 = *(v2 + v5);
          *&v23[9] = *(v2 + v5 + 9);
          v22 = v9;
          *v23 = v10;
          v21 = v8;
          sub_241025690(&v21, v19);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_24103F1DC(v2);
            v2 = result;
          }

          v11 = v7 + 1;
          if (v11 >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          v12 = (v2 + v5);
          v13 = *(v2 + v5 + 32);
          v14 = *(v2 + v5 + 48);
          v15 = *(v2 + v5 + 64);
          *&v20[9] = *(v2 + v5 + 73);
          v19[1] = v14;
          *v20 = v15;
          v19[0] = v13;
          v16 = v21;
          v17 = v22;
          v18 = *v23;
          *(v12 + 73) = *&v23[9];
          v12[3] = v17;
          v12[4] = v18;
          v12[2] = v16;
          result = sub_2410256EC(v19);
          v6 = v11 - 1;
          if (v11 - 1 == v3)
          {
            goto LABEL_17;
          }

          if (v3 < v6)
          {
            v5 -= 64;
            if (v6 <= v4)
            {
              continue;
            }
          }

          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      *v1 = v2;
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v1[1] = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_24103730C(uint64_t result, unint64_t a2)
{
  v5 = result;
  v6 = v2[1];
  if (v6 >= result)
  {
    goto LABEL_12;
  }

  v3 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    while (1)
    {
      v24 = a2;
      if (v5 >= 1)
      {
        break;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      *v2 = v3;
      a2 = v24;
LABEL_12:
      v21 = a2 - v5;
      if (__OFSUB__(a2, v5))
      {
        goto LABEL_17;
      }

      v22 = __OFADD__(v6, v21);
      v23 = v6 + v21;
      if (!v22)
      {
        v2[1] = v23;
        return result;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_24103F1DC(v3);
      v3 = result;
      v7 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        goto LABEL_21;
      }
    }

    v8 = v5 + 1;
    v9 = (v5 << 6) - 32;
    v10 = (a2 << 6) - 32;
    while (1)
    {
      a2 = *(v3 + 16);
      if (v8 - 2 >= a2)
      {
        break;
      }

      v11 = *(v3 + v9);
      v12 = *(v3 + v9 + 16);
      v13 = *(v3 + v9 + 32);
      *&v28[9] = *(v3 + v9 + 41);
      v27 = v12;
      *v28 = v13;
      v26 = v11;
      sub_241025690(&v26, v25);
      if (v7 >= a2)
      {
        goto LABEL_16;
      }

      v14 = (v3 + v10);
      v15 = *(v3 + v10);
      v16 = *(v3 + v10 + 16);
      v17 = *(v3 + v10 + 32);
      *&v30[9] = *(v3 + v10 + 41);
      v29[1] = v16;
      *v30 = v17;
      v29[0] = v15;
      v18 = v26;
      v19 = v27;
      v20 = *v28;
      *(v14 + 41) = *&v28[9];
      v14[1] = v19;
      v14[2] = v20;
      *v14 = v18;
      result = sub_2410256EC(v29);
      if (v6 >= v8 - 2)
      {
        goto LABEL_11;
      }

      --v7;
      --v8;
      v9 -= 64;
      v10 -= 64;
      if (v8 < 2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_241037484(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = a2[2];
    if (v7 < 0)
    {
      return 0;
    }

    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    if (v6 >> 6)
    {
      v11 = v7 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v11 == 64)
        {
          if (v4 == v8 && v5 == v9)
          {
            if ((v6 ^ v7))
            {
              return 0;
            }
          }

          else
          {
            v20 = sub_241047428();
            if (((v6 ^ v7) & 1) != 0 || (v20 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if (v10 >= 0x40)
    {
      return 0;
    }

    return v4 == v8 && v5 == v9 || (sub_241047428() & 1) != 0;
  }

  v12 = a2[2];
  if ((v12 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[3];
  v18 = a2[4];
  if (!(v6 >> 6))
  {
    if (a2[2] >= 0x40u)
    {
      return 0;
    }

LABEL_28:
    if ((v4 != v15 || v5 != v16) && (sub_241047428() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v19 = v12 & 0xC0;
  if (v6 >> 6 != 1)
  {
    if (v19 != 128)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v19 != 64)
  {
    return 0;
  }

  if (v4 == v15 && v5 == v16)
  {
    if ((v6 ^ v12))
    {
      return 0;
    }
  }

  else
  {
    v22 = sub_241047428();
    result = 0;
    if (v22 & 1) == 0 || ((v6 ^ v12))
    {
      return result;
    }
  }

LABEL_38:
  if (v13 == v17 && v14 == v18)
  {
    return 1;
  }

  return sub_241047428();
}

uint64_t sub_241037648(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v6 >> 61) & 3;
  if (!v7)
  {
    v10 = a2[2];
    if ((v10 & 0x6000000000000000) != 0)
    {
      return 0;
    }

    v11 = *a2;
    v12 = a2[1];
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v10 < 0)
      {
        return 0;
      }

      v13 = a2[2];
      if (v6 >> 6)
      {
        v14 = v10 & 0xC0;
        if (v6 >> 6 == 1)
        {
          if (v14 != 64)
          {
            return 0;
          }

          if (v4 == v11 && v5 == v12)
          {
            if ((v6 ^ v10))
            {
              return 0;
            }
          }

          else
          {
            v21 = sub_241047428();
            if (((v6 ^ v10) & 1) != 0 || (v21 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        if (v14 != 128)
        {
          return 0;
        }
      }

      else if (v13 >= 0x40)
      {
        return 0;
      }

      if (v4 == v11 && v5 == v12)
      {
        return 1;
      }

      return (sub_241047428() & 1) != 0;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v16 = a1[3];
    v17 = a1[4];
    v18 = a2[3];
    v19 = a2[4];
    if (v6 >> 6)
    {
      v20 = v10 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v20 != 64 || (v4 != v11 || v5 != v12) && (sub_241047428() & 1) == 0 || ((v6 ^ v10) & 1) != 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v20 != 128)
      {
        return 0;
      }
    }

    else if (a2[2] >= 0x40u)
    {
      return 0;
    }

    if ((v4 != v11 || v5 != v12) && (sub_241047428() & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    if (v16 == v18 && v17 == v19)
    {
      return 1;
    }

    return (sub_241047428() & 1) != 0;
  }

  if (v7 != 1)
  {
    v15 = a2[2];
    return (v15 & 0x6000000000000000) == 0x4000000000000000 && v15 == 0x4000000000000000 && !(a2[3] | a2[4] | a2[1] | *a2);
  }

  if ((a2[2] & 0x6000000000000000) != 0x2000000000000000)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  return sub_241047428();
}

unint64_t sub_241037864@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a5;
  v10 = a2 >> 14;
  v11 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    result = sub_241046EA8();
    if (result == 1)
    {
      goto LABEL_27;
    }

LABEL_3:
    v13 = MEMORY[0x245CD7040](a1, a2, a3, a4);
    v15 = v14;

    v16 = 0;
    v17 = 0;
    v18 = 128;
    goto LABEL_24;
  }

  v53 = a1 >> 14;
  do
  {
    if (sub_241046EB8() == 61 && v19 == 0xE100000000000000)
    {

LABEL_13:
      if (v11 < v53)
      {
        __break(1u);
      }

      else
      {
        v22 = sub_241046ED8();
        v54 = v24;
        v26 = v25;
        if ((v22 ^ v23) < 0x4000)
        {

          if (sub_241046EA8() == 1)
          {
            v27 = sub_241046EB8();
            v29 = v28;
            v30 = 64;
          }

          else
          {
            v27 = MEMORY[0x245CD7040](a1, a2, a3, a4);
            v29 = v42;
            v30 = 0x80;
          }

          v43 = sub_241034020(v27, v29, v30);
          v45 = v44;
          sub_240FF0D30(v27, v29, v30);
          sub_240FDEE00();
          swift_allocError();
          *v46 = v43;
          *(v46 + 8) = v45;
          *(v46 + 16) = v49;
          *(v46 + 32) = v50;
          *(v46 + 48) = v51;
          *(v46 + 64) = v52;
          *(v46 + 80) = 5;
          return swift_willThrow();
        }

        v31 = v22;
        v32 = v23;
        result = sub_241046E68();
        if (v10 >= result >> 14)
        {
          v33 = sub_241046ED8();
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v16 = MEMORY[0x245CD7040](v33, v35, v37, v39);
          v17 = v40;

          if (sub_241046EA8() == 1)
          {
            v18 = 0x8000000000000040;
            v13 = sub_241046EB8();
            v15 = v41;
          }

          else
          {
            v13 = MEMORY[0x245CD7040](v31, v32, v54, v26);
            v15 = v47;
            v18 = 0x8000000000000080;
          }

          v9 = a5;

LABEL_24:
          *v9 = v13;
          v9[1] = v15;
          v9[2] = v18;
          v9[3] = v16;
          v9[4] = v17;
          return result;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v20 = sub_241047428();

    if (v20)
    {
      goto LABEL_13;
    }

    v11 = sub_241046E68() >> 14;
  }

  while (v11 != v10);
  result = sub_241046EA8();
  v9 = a5;
  if (result != 1)
  {
    goto LABEL_3;
  }

  if (v53 != v10)
  {
    v13 = sub_241046EB8();
    v15 = v21;

    v16 = 0;
    v17 = 0;
    v18 = 64;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_241037C74(uint64_t a1)
{
  v28 = MEMORY[0x277D84F90];
  v2 = (2 * *(a1 + 16)) | 1;
  v24 = a1;
  v25 = a1 + 32;
  v26 = 0;
  v27 = v2;

  result = sub_241034A24();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_241035A0C(result, v5, v6);
      if (v1)
      {

        swift_unknownObjectRelease();

        return v5;
      }

      v8 = v7;

      result = sub_240FE1F6C(v9);
      if (!*(v8 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(v8 + 48);
      v21 = *(v8 + 32);
      v22 = v10;
      v23[0] = *(v8 + 64);
      *(v23 + 9) = *(v8 + 73);
      sub_241025690(&v21, v20);

      if ((v22 & 0x6000000000000000) == 0x4000000000000000 && v22 == 0x4000000000000000 && !(*(&v22 + 1) | *&v23[0] | *(&v21 + 1) | v21))
      {
        break;
      }

      result = sub_2410256EC(&v21);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      result = sub_241034A24();
      v5 = v12;
      ++v6;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v13 = (v27 >> 1) - v26;
  if (v27 >> 1 != v26)
  {
    if ((v27 >> 1) > v26)
    {
      v5 = v28;
      v14 = (v25 + 16 * v26 + 8);
      while (1)
      {
        v16 = *(v14 - 1);
        v15 = *v14;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE32D0(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_240FE32D0((v17 > 1), v18 + 1, 1, v5);
          v5 = result;
        }

        LOBYTE(v21) = 1;
        *(v5 + 16) = v18 + 1;
        v19 = v5 + (v18 << 6);
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        *(v19 + 48) = 0x2000000000000000;
        *(v19 + 56) = 0;
        *(v19 + 64) = 0;
        *(v19 + 72) = v11;
        *(v19 + 80) = 0;
        *(v19 + 88) = v21;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        ++v11;
        v14 += 2;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v5 = v28;
LABEL_16:
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_241037F00(uint64_t result, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) == 0)
  {
    v5 = *(a4 + 16);
    if (v5 >= a5)
    {
      if (a5 < 0)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = (a4 + (a5 << 6) + 88);
      do
      {
        if (v5 == a5)
        {
          return 0;
        }

        v9 = *(v6 - 2);
        if (v9 > result)
        {
          return a5;
        }

        if (v9 == result)
        {
          v7 = *v6;
          if (a3)
          {
            if ((v7 & 1) == 0)
            {
              return a5;
            }
          }

          else
          {
            if (*(v6 - 1) <= a2)
            {
              v7 = 1;
            }

            if (v7 != 1)
            {
              return a5;
            }
          }
        }

        v6 += 64;
      }

      while (!__OFADD__(a5++, 1));
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_241037F98@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4 < a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 == a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = xmmword_24104BE60;
    v11 = 0uLL;
LABEL_7:
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    *(a3 + 40) = v10;
    *(a3 + 56) = v7;
    *(a3 + 64) = v5;
    *(a3 + 72) = v6;
    *(a3 + 80) = v8;
    return result;
  }

  if (v4 > a2)
  {
    v12 = (result + (a2 << 6));
    *&v19[9] = *(v12 + 73);
    v13 = v12[4];
    v18 = v12[3];
    *v19 = v13;
    v17 = v12[2];
    v5 = *(&v13 + 1);
    v6 = *&v19[16];
    v8 = v19[24];
    v20 = 0;
    v14 = v18;
    v15 = v17;
    v7 = v13;
    result = sub_241025690(&v17, v16);
    v10 = v14;
    v11 = v15;
    v9 = v8;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_241038084(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 < a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v2 == a2)
  {
    return 0;
  }

  if ((v2 - a2) > 1)
  {
    return 1;
  }

  if (v2 <= a2)
  {
    goto LABEL_15;
  }

  v3 = (result + (a2 << 6));
  v4 = v3[6];
  result = 1;
  if ((v4 & 0x6000000000000000) == 0x4000000000000000 && v4 == 0x4000000000000000 && !(v3[7] | v3[5] | v3[4] | v3[8]))
  {
    sub_241029EB8(0, 0, 0x4000000000000000uLL);
    return 0;
  }

  return result;
}

uint64_t sub_241038134(uint64_t a1, int64_t a2)
{
  v21 = *(a1 + 16);
  if (v21 < a2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = *(a1 + 16);
  v3 = v21 - a2;
  if (v21 == a2)
  {
    return 0x3E7974706D653CLL;
  }

  v31 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v31;
    v8 = a2;
    v9 = (a1 + (a2 << 6) + 32);
    while ((v8 + v6) < v21 && v6 < v3)
    {
      v11 = v9[1];
      v29[0] = *v9;
      v29[1] = v11;
      v13 = *v9;
      v12 = v9[1];
      v30[0] = v9[2];
      *(v30 + 9) = *(v9 + 41);
      v25 = v13;
      v26 = v12;
      v27[0] = v9[2];
      *(v27 + 9) = *(v9 + 41);
      sub_241025690(v29, &v22);
      sub_241036CC8(&v25, v28);
      v22 = v25;
      v23 = v26;
      v24[0] = v27[0];
      *(v24 + 9) = *(v27 + 9);
      sub_2410256EC(&v22);
      v14 = v28[0];
      v15 = v28[1];
      v31 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_240FE41A0((v16 > 1), v17 + 1, 1);
        v8 = a2;
        v7 = v31;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      if (~a2 + v21 == v6)
      {
        *&v29[0] = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF28F0();
        v19 = sub_241046AA8();

        return v19;
      }

      ++v6;
      v9 += 4;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  v22 = v25;
  v23 = v26;
  v24[0] = v27[0];
  *(v24 + 9) = *(v27 + 9);
  sub_2410256EC(&v22);

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal14SplitArgumentsV7ElementV5ValueO(uint64_t a1)
{
  if (((*(a1 + 16) >> 61) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 16) >> 61) & 3;
  }
}

uint64_t sub_241038428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 1) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24103847C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (2 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SplitArguments.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SplitArguments.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24103854C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_241038594(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2410385E4()
{
  result = qword_27E51F8D8;
  if (!qword_27E51F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8D8);
  }

  return result;
}

unint64_t sub_241038638()
{
  result = qword_27E51F8E0;
  if (!qword_27E51F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8E0);
  }

  return result;
}

uint64_t sub_24103868C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 1) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_2410386E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (2 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24103874C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0x80000000000000C1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_24104BE70;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

uint64_t getEnumTagSinglePayload for SplitArguments.SubIndex(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SplitArguments.SubIndex(uint64_t result, int a2, int a3)
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

uint64_t sub_2410387FC(uint64_t a1)
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

uint64_t sub_241038818(uint64_t result, int a2)
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

unint64_t sub_241038848()
{
  result = qword_27E51F8E8;
  if (!qword_27E51F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8E8);
  }

  return result;
}

uint64_t sub_2410388B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2410475A8();
  sub_241046A88();
  v4 = *(a3 + 16);
  MEMORY[0x245CD7AE0](v4);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_241046A88();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return sub_2410475E8();
}

uint64_t sub_241038960()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_241046A88();
  result = MEMORY[0x245CD7AE0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_241046A88();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2410389E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2410475A8();
  sub_241046A88();
  MEMORY[0x245CD7AE0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_241046A88();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return sub_2410475E8();
}

uint64_t sub_241038A80(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_241047428() & 1) == 0)
  {
    return 0;
  }

  return sub_24102F200(v2, v3);
}

uint64_t sub_241038AF4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_240FE2060(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF28F0();
  v5 = sub_241046AA8();

  return v5;
}

uint64_t sub_241038BDC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v33 = *(a2 + 16);
        v29 = v4 - 1;
        v8 = MEMORY[0x277D84F90];
        v32 = MEMORY[0x277D84F90];
        v30 = a2 + 40;
        while (1)
        {
          v31 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = *(v8 + 16);
            if (v13 >= v3)
            {
              break;
            }

            v14 = *v9;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_240FE41A0(0, v13 + 1, 1);
            }

            v16 = *(v8 + 16);
            v15 = *(v8 + 24);
            if (v16 >= v15 >> 1)
            {
              result = sub_240FE41A0((v15 > 1), v16 + 1, 1);
            }

            *(v8 + 16) = v16 + 1;
            v17 = v8 + 16 * v16;
            *(v17 + 32) = v10;
            *(v17 + 40) = v11;
            v9 += 2;
            v5 = v12;
            if (v33 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v31 >= v13)
          {
            goto LABEL_33;
          }

          v18 = v8 + 16 * v31;
          v19 = *(v18 + 40);
          v27 = *(v18 + 32);

          v28 = v19;

          v20 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_240FE41A0(0, *(v32 + 16) + 1, 1);
            v20 = v32;
          }

          v22 = *(v20 + 16);
          v21 = *(v20 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_240FE41A0((v21 > 1), v22 + 1, 1);
            v20 = v32;
          }

          *(v20 + 16) = v22 + 1;
          v32 = v20;
          v23 = v20 + 16 * v22;
          *(v23 + 32) = v27;
          *(v23 + 40) = v28;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_241024E2C(v8);
            v8 = result;
          }

          v7 = v30;
          if (v31 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v24 = v8 + 16 * v31;
          v25 = *(v24 + 40);
          *(v24 + 32) = v10;
          *(v24 + 40) = v11;

          if ((v31 + 1) < v3)
          {
            v6 = v31 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v29 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v32 = MEMORY[0x277D84F90];
LABEL_29:

      return v32;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_241038E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v8);
  v9 = sub_241047698();
  v11 = v9;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v10;
    v23 = v9;
    v25 = v3;
    v27 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v12, 0);
    v13 = v27;
    v24 = a2;
    v14 = a2 + 32;
    do
    {
      sub_240FEDBC4(v14, v26);
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v15 = sub_241047698();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v27 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_240FE41A0((v18 > 1), v19 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);

    v3 = v25;
    v11 = v23;
  }

  else
  {
  }

  (*(v5 + 8))(v8, v3);
  return v11;
}

unint64_t sub_241039038(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_241046B88();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_241046C78();
}

uint64_t sub_2410390E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (sub_241046C48() == 95 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v10 = sub_241047428();

      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v11 = sub_241039038(1uLL, v7, a2);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v7 = MEMORY[0x245CD7040](v11, v13, v15, v17);
  }

LABEL_9:
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_240FE2060(inited);
  }

  return v7;
}

uint64_t sub_241039240(uint64_t a1, unint64_t a2)
{
  v23[0] = 46;
  v23[1] = 0xE100000000000000;
  v22[2] = v23;
  v2 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF7448, v22, a1, a2, v23);
  v3 = *(v2 + 16);
  if (v3)
  {
    v23[0] = MEMORY[0x277D84F90];
    result = sub_240FE41A0(0, v3, 0);
    v5 = 0;
    v6 = v23[0];
    v7 = (v2 + 56);
    while (v5 < *(v2 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = MEMORY[0x245CD7040](v8, v9, v10, v11);
      v14 = v13;

      v23[0] = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_240FE41A0((v15 > 1), v16 + 1, 1);
        v6 = v23[0];
      }

      ++v5;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 4;
      if (v3 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:
    v18 = *(v6 + 16);
    if (v18)
    {
      v19 = (v6 + 16 + 16 * v18);
      v20 = *v19;
      v21 = v19[1];

      sub_241038BDC(1, v6);
    }

    else
    {

      return 0;
    }

    return v20;
  }

  return result;
}

unint64_t sub_241039414()
{
  result = qword_280CC1EF0;
  if (!qword_280CC1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1EF0);
  }

  return result;
}

uint64_t sub_241039468(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_241046C48();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2410394B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_241046F48();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_24103F2A4(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_241039544(uint64_t a1)
{
  v4 = *(v1 + 8);
  swift_beginAccess();
  v5 = *(v4 + 72);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_241029F90(v8, v11);
      if (v2)
      {
        goto LABEL_10;
      }

      if (*&v11[0] == a1)
      {

        v13 = v11[0];
        v14[0] = v11[1];
        v14[1] = v11[2];
        v15 = v12;
        sub_240FDDF54(v14, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F838, &qword_24104AF00);
        return swift_dynamicCast();
      }

      ++v7;
      sub_241029FEC(v11);
      v8 += 56;
      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    MEMORY[0x245CD7E80](v2);
    result = sub_241029FEC(v11);
    __break(1u);
  }

  else
  {
LABEL_7:

    sub_240FDEE00();
    swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0;
    *(v9 + 80) = 15;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2410396D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  *(&v21 + 1) = a3;
  v22 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  *&v19 = a2;
  *(&v19 + 1) = a4;
  swift_beginAccess();
  v11 = *(v9 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_240FE35EC(0, *(v11 + 2) + 1, 1, v11);
    *(v9 + 72) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_240FE35EC((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[56 * v14];
  v16 = v20;
  v17 = v21;
  *(v15 + 10) = v22;
  *(v15 + 3) = v16;
  *(v15 + 4) = v17;
  *(v15 + 2) = v19;
  *(v9 + 72) = v11;
  return swift_endAccess();
}

uint64_t sub_241039814()
{
  type metadata accessor for ParsedArgumentsContainer();
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  swift_getWitnessTable();
  return sub_2410472D8();
}

uint64_t sub_2410398B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_2410398F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_241039A34()
{
  sub_24103EFE4();
  swift_allocError();
  *v0 = 0u;
  v0[1] = 0u;
  return swift_willThrow();
}

uint64_t sub_241039A84()
{
  sub_24103EFE4();
  swift_allocError();
  *v0 = 1;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return swift_willThrow();
}

double sub_241039AD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  if (*(v6 + 16) && (v7 = sub_24102FB5C(a1, a2, a3), (v8 & 1) != 0))
  {
    sub_240FFC198(*(v6 + 56) + 72 * v7, v14);
    v18 = v14[0];
    v19 = v14[1];
    v20 = v14[2];
    v9 = v16;
    v21 = v15;
    v10 = v17;
    swift_beginAccess();

    sub_24102EFE4(v11);
    swift_endAccess();
    v12 = v19;
    *a4 = v18;
    *(a4 + 16) = v12;
    result = *&v20;
    *(a4 + 32) = v20;
    *(a4 + 48) = v21;
    *(a4 + 56) = v9;
    *(a4 + 64) = v10;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_241039BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_241039BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - v7;
  v9 = v2[2];
  (*(v10 + 16))(&v17 - v7);
  v11 = *(v4 + 88);

  v12 = sub_241038E38(v8, v9, v5);
  v13 = v2[3];
  sub_241039AD8(v12, v14, v15, a2);
}

BOOL sub_241039CEC(uint64_t a1)
{
  sub_241039BC4(a1, v3);
  v1 = v4 != 0;
  sub_240FE07E8(v3, &qword_27E51F898, &unk_24104B580);
  return v1;
}

uint64_t sub_241039D40(uint64_t a1)
{
  sub_241039BC4(a1, v3);
  if (!v4)
  {
    sub_240FE07E8(v3, &qword_27E51F898, &unk_24104B580);
    v6 = 0u;
    v7 = 0u;
    goto LABEL_5;
  }

  sub_240FE088C(&v5, &v6, &qword_27E51F328, &qword_241048720);
  sub_240FFBF78(v3);
  if (!*(&v7 + 1))
  {
LABEL_5:
    v1 = 1;
    goto LABEL_6;
  }

  v1 = 0;
LABEL_6:
  sub_240FE07E8(&v6, &qword_27E51F328, &qword_241048720);
  return v1;
}

uint64_t sub_241039DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v59 = a1;
  v60 = a5;
  v56 = *v5;
  v9 = *(v56 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v57 = &v52 - v12;
  v13 = sub_241046E58();
  v53 = *(v13 - 8);
  v14 = *(v53 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v52 - v16;
  v73 = a3;
  v54 = *(a3 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a2;
  v22 = v5;
  sub_241039BC4(v21, v72);
  sub_240FE088C(v72, &v67, &qword_27E51F898, &unk_24104B580);
  v61 = v6;
  if (!v68)
  {
    v31 = &qword_27E51F898;
    v32 = &unk_24104B580;
    v33 = &v67;
LABEL_10:
    sub_240FE07E8(v33, v31, v32);
LABEL_12:
    v34 = v22;
    v35 = v22[3];
    v53 = v34[2];
    v54 = v35;
    v55 = *(v35 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3D0, &qword_24104CC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 56) = v9;
    v56 = *(v56 + 88);
    *(inited + 64) = v56;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
    v38 = *(v10 + 16);
    v38(boxed_opaque_existential_1Tm, v20, v9);
    v67 = v53;

    sub_240FE2C5C(inited);
    v53 = v67;
    v39 = v34[2];
    v40 = v57;
    v38(v57, v20, v9);

    v41 = sub_241038E38(v40, v39, v9);
    v43 = v42;
    v45 = v44;
    sub_241039BC4(v20, v71);
    v67 = v55;
    v68 = v54;
    v69 = v53;
    v70[0] = v41;
    v70[1] = v43;
    v70[2] = v45;
    v65 = &type metadata for SingleValueDecoder;
    v66 = sub_24103F310();
    *&v64 = swift_allocObject();
    sub_24103F364(&v67, v64 + 16);
    sub_241046DC8();
    sub_2410153E0(&v67);
    return sub_240FE07E8(v72, &qword_27E51F898, &unk_24104B580);
  }

  v23 = v71[1];

  sub_240FFBF78(&v67);
  if (*(v23 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_2410394B0(v23);
  v25 = v24;

  if ((v25 & 0x10000) != 0 || (v25 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  sub_240FE088C(v72, &v67, &qword_27E51F898, &unk_24104B580);
  if (!v68)
  {
    sub_240FE07E8(&v67, &qword_27E51F898, &unk_24104B580);
    v62 = 0u;
    v63 = 0u;
    goto LABEL_15;
  }

  sub_240FE088C(v70, &v62, &qword_27E51F328, &qword_241048720);
  sub_240FFBF78(&v67);
  if (!*(&v63 + 1))
  {
LABEL_15:
    v31 = &qword_27E51F328;
    v32 = &qword_241048720;
    v33 = &v62;
    goto LABEL_10;
  }

  sub_240FFC32C(&v62, &v64);
  sub_240FE078C(&v64, &v67);
  v26 = v55;
  v27 = v73;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    sub_240FE07E8(v72, &qword_27E51F898, &unk_24104B580);
    v28 = v54;
    (*(v54 + 56))(v26, 0, 1, v27);
    v29 = *(v28 + 32);
    v29(v19, v26, v27);
    return (v29)(v60, v19, v27);
  }

  else
  {
    (*(v54 + 56))(v26, 1, 1, v27);
    (*(v53 + 1))(v26, v13);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_241047128();
    v46 = v67;
    v47 = v68;
    result = sub_240FE088C(v72, &v67, &qword_27E51F898, &unk_24104B580);
    v48 = v68;
    if (v68)
    {
      v49 = v67;
      v50 = v69;

      sub_240FFBF78(&v67);
      sub_24103F39C();
      swift_allocError();
      *v51 = v46;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      *(v51 + 24) = v48;
      *(v51 + 32) = v50;
      *(v51 + 40) = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      return sub_240FE07E8(v72, &qword_27E51F898, &unk_24104B580);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24103A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v68 = a1;
  v46 = *v4;
  v10 = *(v46 + 80);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v39 - v12;
  v14 = v13;
  sub_241039BC4(v13, v67);
  sub_240FE088C(v67, &v55, &qword_27E51F898, &unk_24104B580);
  if (*(&v55 + 1))
  {
    v64 = v57;
    v65 = v58;
    v66 = v59;
    v62 = v55;
    v63 = v56;
    if (*(*(&v58 + 1) + 16) == 1)
    {
      sub_2410394B0(*(&v58 + 1));
      if ((v15 & 0x10100) == 0x100)
      {
        sub_240FE07E8(v67, &qword_27E51F898, &unk_24104B580);
        sub_240FE088C(&v63 + 8, &v55, &qword_27E51F328, &qword_241048720);
        sub_240FFBF78(&v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
        v16 = swift_dynamicCast();
        return (*(*(a2 - 8) + 56))(a4, v16 ^ 1u, 1, a2);
      }
    }

    v42 = a3;
    v43 = a4;
    v44 = a2;
    v45 = v5;
    sub_240FFBF78(&v62);
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v44 = a2;
    v45 = v5;
    sub_240FE07E8(&v55, &qword_27E51F898, &unk_24104B580);
  }

  v18 = v4[2];
  v19 = v4[3];
  v20 = *(v19 + 88);
  v40 = v18;
  v41 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3D0, &qword_24104CC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 56) = v10;
  v46 = *(v46 + 88);
  *(inited + 64) = v46;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  v23 = *(v48 + 16);
  v23(boxed_opaque_existential_1Tm, v14, v10);
  *&v55 = v40;

  sub_240FE2C5C(inited);
  v48 = v55;
  v24 = v6[2];
  v25 = v47;
  v23(v47, v14, v10);

  v26 = sub_241038E38(v25, v24, v10);
  v28 = v27;
  v30 = v29;
  sub_240FE088C(v67, &v65, &qword_27E51F898, &unk_24104B580);
  *&v62 = v41;
  *(&v62 + 1) = v19;
  *&v63 = v48;
  *(&v63 + 1) = v26;
  *&v64 = v28;
  *(&v64 + 1) = v30;
  *(&v56 + 1) = &type metadata for SingleValueDecoder;
  *&v57 = sub_24103F310();
  *&v55 = swift_allocObject();
  sub_24103F364(&v62, v55 + 16);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  sub_241046DC8();
  if (v33)
  {
    v61 = v33;
    MEMORY[0x245CD7E90](v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
    if (swift_dynamicCast())
    {
      MEMORY[0x245CD7E80](v33);
      v54 = v60;
      v51 = v57;
      v52 = v58;
      v53 = v59;
      v49 = v55;
      v50 = v56;
      if (v60 == 11)
      {
        sub_241006CF0(&v49);
        sub_2410153E0(&v62);
        sub_240FE07E8(v67, &qword_27E51F898, &unk_24104B580);
        (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
        return MEMORY[0x245CD7E80](v61);
      }

      sub_240FDEE00();
      swift_allocError();
      v34 = v50;
      *v35 = v49;
      *(v35 + 16) = v34;
      v37 = v52;
      v36 = v53;
      v38 = v51;
      *(v35 + 80) = v54;
      *(v35 + 48) = v37;
      *(v35 + 64) = v36;
      *(v35 + 32) = v38;
      swift_willThrow();
    }

    sub_2410153E0(&v62);
    sub_240FE07E8(v67, &qword_27E51F898, &unk_24104B580);
    return MEMORY[0x245CD7E80](v61);
  }

  else
  {
    sub_2410153E0(&v62);
    sub_240FE07E8(v67, &qword_27E51F898, &unk_24104B580);
    return (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
  }
}

uint64_t sub_24103AB48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_24103AB70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal12ParsedValuesV7ElementVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24103AC8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_24103ACD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24103AD50(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  sub_24103F3F0();
}

uint64_t sub_24103ADAC(uint64_t a1)
{
  v3 = *v1;
  sub_241039DFC(MEMORY[0x277D839B0], a1, MEMORY[0x277D839B0], MEMORY[0x277D839D0], &v6);
  if (!v2)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_24103ADFC(uint64_t a1)
{
  v3 = *v1;
  result = sub_241039DFC(MEMORY[0x277D837D0], a1, MEMORY[0x277D837D0], MEMORY[0x277D83808], &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

double sub_24103AE50(uint64_t a1)
{
  v3 = *v1;
  sub_241039DFC(MEMORY[0x277D839F8], a1, MEMORY[0x277D839F8], MEMORY[0x277D83A30], &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

float sub_24103AE9C(uint64_t a1)
{
  v3 = *v1;
  sub_241039DFC(MEMORY[0x277D83A90], a1, MEMORY[0x277D83A90], MEMORY[0x277D83AC8], &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_24103B018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_241039DFC(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_24103B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_241039DFC(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_24103B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_241039DFC(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_24103B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_241039DFC(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_24103B20C()
{
  result = sub_241047488();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103B25C()
{
  result = sub_241047498();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103B304()
{
  result = sub_2410474B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103B354()
{
  result = sub_2410474A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103B494()
{
  result = sub_2410474C8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_24103B574()
{
  type metadata accessor for ParsedArgumentsContainer();
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  swift_getWitnessTable();
  return sub_2410472D8();
}

uint64_t sub_24103B620@<X0>(void *a1@<X8>)
{
  sub_240FE088C(v1 + 48, &v27, &qword_27E51F898, &unk_24104B580);
  if (!*(&v27 + 1))
  {
    sub_240FE07E8(&v27, &qword_27E51F898, &unk_24104B580);
    v7 = *(v1 + 16);
    if (v7[2])
    {
      v8 = *(v1 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v7[2];
        if (v9)
        {
LABEL_8:
          v7[2] = v9 - 1;
          sub_240FDDF54(&v7[5 * v9 - 1], &v27);
          sub_240FEDBC4(&v27, &v32);
          v10 = *(&v33 + 1);
          v11 = __swift_mutable_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
          v12 = *(*(v10 - 8) + 64);
          MEMORY[0x28223BE20](v11);
          v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v15 + 16))(v14);
          v16 = sub_241038E38(v14, v7, v10);
          v18 = v17;
          v20 = v19;
          __swift_destroy_boxed_opaque_existential_1Tm(&v32);
          sub_240FDEE00();
          swift_allocError();
          *v21 = v16;
          *(v21 + 8) = v18;
          *(v21 + 16) = v20;
          v22 = v35;
          v23 = v34;
          v24 = v32;
          *(v21 + 40) = v33;
          *(v21 + 24) = v24;
          *(v21 + 56) = v23;
          *(v21 + 72) = v22;
          *(v21 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(&v27);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v7);
    v7 = result;
    v9 = *(result + 16);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v34 = v29;
  v35 = v30;
  v36 = v31;
  v32 = v27;
  v33 = v28;
  sub_240FE088C(&v33 + 8, &v27, &qword_27E51F328, &qword_241048720);
  if (*(&v28 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F908, &qword_24104CC38);
    if (swift_dynamicCast())
    {
      v3 = v37;
      v4 = *(v1 + 16);
      a1[3] = &type metadata for SingleValueDecoder.UnkeyedContainer;
      a1[4] = sub_24103F490();
      v5 = swift_allocObject();
      *a1 = v5;
      sub_240FFC198(&v32, (v5 + 3));
      v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F918, &unk_24104CC40);
      v5[16] = &off_2852DDEE8;
      v5[12] = v3;
      v5[13] = 0;

      result = sub_240FFBF78(&v32);
      v5[2] = v4;
      return result;
    }
  }

  else
  {
    sub_240FE07E8(&v27, &qword_27E51F328, &qword_241048720);
  }

  sub_240FDEE00();
  swift_allocError();
  *v25 = 3;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 72) = 0;
  *(v25 + 80) = 15;
  swift_willThrow();
  return sub_240FFBF78(&v32);
}

uint64_t sub_24103B99C()
{
  sub_240FE088C(v0 + 128, v25, &qword_27E51F898, &unk_24104B580);
  if (*(&v25[0] + 1))
  {
    v29 = v25[2];
    v30 = v25[3];
    v31 = v26;
    v27 = v25[0];
    v28 = v25[1];
    sub_240FE088C(&v28 + 8, v25, &qword_27E51F328, &qword_241048720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
    if (swift_dynamicCast())
    {
      sub_240FFBF78(&v27);
      v1 = v32;
    }

    else
    {
      v21 = v27;
      v22 = v28;
      sub_24103F39C();
      swift_allocError();
      *v23 = xmmword_24104C830;
      *(v23 + 16) = v21;
      *(v23 + 32) = v22;
      *(v23 + 40) = 0;
      swift_willThrow();

      sub_240FFBF78(&v27);
    }

    return v1 & 1;
  }

  sub_240FE07E8(v25, &qword_27E51F898, &unk_24104B580);
  v2 = *(v0 + 120);
  if (!v2[2])
  {
    __break(1u);
LABEL_11:
    result = sub_24103F290(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v3 = *(v0 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_7:
    v2[2] = v5 - 1;
    sub_240FDDF54(&v2[5 * v5 - 1], v25);
    sub_240FEDBC4(v25, &v27);
    v6 = *(&v28 + 1);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7);
    v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10);
    v12 = sub_241038E38(v10, v2, v6);
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    sub_240FDEE00();
    swift_allocError();
    *v17 = v12;
    *(v17 + 8) = v14;
    *(v17 + 16) = v16;
    v18 = v30;
    v19 = v29;
    v20 = v27;
    *(v17 + 40) = v28;
    *(v17 + 24) = v20;
    *(v17 + 56) = v19;
    *(v17 + 72) = v18;
    *(v17 + 80) = 11;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    return v1 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24103BC8C()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v26);
    return v23[1];
  }

  else
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v26);
  }
}

uint64_t sub_24103BF78()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_8:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();
  }

  return sub_240FFBF78(&v26);
}

uint64_t sub_24103C264()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_8:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();
  }

  return sub_240FFBF78(&v26);
}

uint64_t sub_24103C550()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v26);
    return v23[1];
  }

  else
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v26);
  }
}

uint64_t sub_24103C83C()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v26);
    return v31;
  }

  else
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v26);
  }
}

uint64_t sub_24103CB28()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v26);
    return v31;
  }

  else
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v26);
  }
}

uint64_t sub_24103CE14()
{
  sub_240FE088C(v0 + 128, v24, &qword_27E51F898, &unk_24104B580);
  if (!*(&v24[0] + 1))
  {
    sub_240FE07E8(v24, &qword_27E51F898, &unk_24104B580);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_240FDDF54(&v2[5 * v4 - 1], v24);
          sub_240FEDBC4(v24, &v26);
          v5 = *(&v27 + 1);
          v6 = __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
          v7 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v6);
          v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v9);
          v11 = sub_241038E38(v9, v2, v5);
          v13 = v12;
          v15 = v14;
          __swift_destroy_boxed_opaque_existential_1Tm(&v26);
          sub_240FDEE00();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v13;
          *(v16 + 16) = v15;
          v17 = v29;
          v18 = v28;
          v19 = v26;
          *(v16 + 40) = v27;
          *(v16 + 24) = v19;
          *(v16 + 56) = v18;
          *(v16 + 72) = v17;
          *(v16 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v28 = v24[2];
  v29 = v24[3];
  v30 = v25;
  v26 = v24[0];
  v27 = v24[1];
  sub_240FE088C(&v27 + 8, v24, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v26);
    return v31;
  }

  else
  {
    v20 = v26;
    v21 = v27;
    sub_24103F39C();
    swift_allocError();
    *v22 = xmmword_24104C830;
    *(v22 + 16) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v26);
  }
}

uint64_t sub_24103D100@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_241046E58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  sub_240FE088C(v2 + 128, v34, &qword_27E51F898, &unk_24104B580);
  if (!*(&v34[0] + 1))
  {
    sub_240FE07E8(v34, &qword_27E51F898, &unk_24104B580);
    v12 = *(v2 + 120);
    if (v12[2])
    {
      v13 = *(v2 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v14 = v12[2];
        if (v14)
        {
LABEL_7:
          v12[2] = v14 - 1;
          sub_240FDDF54(&v12[5 * v14 - 1], v34);
          sub_240FEDBC4(v34, &v36);
          v15 = *(&v37 + 1);
          v16 = __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          v17 = *(*(v15 - 8) + 64);
          MEMORY[0x28223BE20](v16);
          v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v20 + 16))(v19);
          v21 = sub_241038E38(v19, v12, v15);
          v23 = v22;
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_1Tm(&v36);
          sub_240FDEE00();
          swift_allocError();
          *v26 = v21;
          *(v26 + 8) = v23;
          *(v26 + 16) = v25;
          v27 = v39;
          v28 = v38;
          v29 = v36;
          *(v26 + 40) = v37;
          *(v26 + 24) = v29;
          *(v26 + 56) = v28;
          *(v26 + 72) = v27;
          *(v26 + 80) = 11;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_1Tm(v34);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_24103F290(v12);
    v12 = result;
    v14 = *(result + 16);
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v38 = v34[2];
  v39 = v34[3];
  v40 = v35;
  v36 = v34[0];
  v37 = v34[1];
  sub_240FE088C(&v37 + 8, v34, &qword_27E51F328, &qword_241048720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  if (swift_dynamicCast())
  {
    sub_240FFBF78(&v36);
    v10 = *(a1 - 8);
    (*(v10 + 56))(v9, 0, 1, a1);
    return (*(v10 + 32))(a2, v9, a1);
  }

  else
  {
    (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    v30 = v36;
    v31 = v37;
    sub_24103F39C();
    swift_allocError();
    *v32 = xmmword_24104C830;
    *(v32 + 16) = v30;
    *(v32 + 32) = v31;
    *(v32 + 40) = 0;
    swift_willThrow();

    return sub_240FFBF78(&v36);
  }
}

BOOL sub_24103D540()
{
  sub_240FE088C(v0 + 128, v3, &qword_27E51F898, &unk_24104B580);
  v1 = v4 == 0;
  sub_240FE07E8(v3, &qword_27E51F898, &unk_24104B580);
  return v1;
}

uint64_t sub_24103D79C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v12, v2, v3);
  if (v13)
  {
    sub_240FFC32C(&v12, v14);
    sub_240FE078C(v14, &v12);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v4 = v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v12;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    return v4 & 1;
  }

  else
  {
    sub_240FE07E8(&v12, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103D944()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_240FFC32C(&v11, v13);
    sub_240FE078C(v13, &v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
    sub_240FE07E8(&v11, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103DAE8()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_240FFC32C(&v10, v12);
    sub_240FE078C(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_240FE07E8(&v10, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103DC8C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_240FFC32C(&v10, v12);
    sub_240FE078C(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_240FE07E8(&v10, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103DE30()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_240FFC32C(&v11, v13);
    sub_240FE078C(v13, &v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
    sub_240FE07E8(&v11, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103DFD4()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_240FFC32C(&v11, v13);
    sub_240FE078C(v13, &v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
    sub_240FE07E8(&v11, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103E178()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_240FFC32C(&v11, v13);
    sub_240FE078C(v13, &v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
    sub_240FE07E8(&v11, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103E31C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_240FFC32C(&v11, v13);
    sub_240FE078C(v13, &v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_241047128();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_24103F39C();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
    sub_240FE07E8(&v11, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103E4C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_241046E58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = v2[13];
  v11 = v2[14];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 10), v10);
  (*(v11 + 32))(&v19, v10, v11);
  if (v20)
  {
    sub_240FFC32C(&v19, v21);
    sub_240FE078C(v21, &v19);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v12 = *(a1 - 8);
      (*(v12 + 56))(v9, 0, 1, a1);
      return (*(v12 + 32))(v22, v9, a1);
    }

    else
    {
      (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
      (*(v6 + 8))(v9, v5);
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_241047128();
      v14 = v19;
      v16 = v2[1];
      v15 = v2[2];
      v17 = v3[3];
      sub_24103F39C();
      swift_allocError();
      *v18 = v14;
      *(v18 + 16) = v16;
      *(v18 + 24) = v15;
      *(v18 + 32) = v17;
      *(v18 + 40) = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }
  }

  else
  {
    sub_240FE07E8(&v19, &qword_27E51F328, &qword_241048720);
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24103E814()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_24103E86C()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t sub_24103E8C4()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_24103EB34()
{
  result = sub_241047388();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103EB84()
{
  result = sub_241047398();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103EC2C()
{
  result = sub_2410473C8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103EC7C()
{
  result = sub_2410473A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103EDBC()
{
  result = sub_2410473D8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24103EE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_24103EF44@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SingleValueDecoder.SingleValueContainer;
  a1[4] = sub_24103F43C();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_24103F364(v1, v3 + 16);
  v4 = *(v1 + 16);
  sub_240FE088C(v1 + 48, v3 + 144, &qword_27E51F898, &unk_24104B580);
  *(v3 + 136) = v4;
}

unint64_t sub_24103EFE4()
{
  result = qword_27E51F8F0;
  if (!qword_27E51F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8F0);
  }

  return result;
}

double sub_24103F088@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  if (v9 >= sub_241046D68())
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_241046DB8();
    v2[1] = v9 + 1;
    *(a2 + 24) = v4;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    (*(v5 + 32))(boxed_opaque_existential_1Tm, v8, v4);
  }

  return result;
}

uint64_t sub_24103F198(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_24103F038();
}

uint64_t sub_24103F204(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_241046F88();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_24103F2A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 24 * result;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16) | (*(v4 + 17) << 8);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_24103F310()
{
  result = qword_280CC2070;
  if (!qword_280CC2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2070);
  }

  return result;
}

unint64_t sub_24103F39C()
{
  result = qword_27E51F8F8;
  if (!qword_27E51F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8F8);
  }

  return result;
}

unint64_t sub_24103F43C()
{
  result = qword_27E51F900;
  if (!qword_27E51F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F900);
  }

  return result;
}

unint64_t sub_24103F490()
{
  result = qword_27E51F910;
  if (!qword_27E51F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F910);
  }

  return result;
}

uint64_t sub_24103F4E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24103F544(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24103F58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_24103F63C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_24103F684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ArgumentDecoder.Error(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24103F7E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24103F800(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 ToolInfoV0.init(command:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 32);
  *(a2 + 56) = v2;
  *(a2 + 72) = *(a1 + 64);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *a2 = 0;
  *(a2 + 88) = *(a1 + 80);
  *(a2 + 24) = v4;
  return result;
}

uint64_t CommandInfoV0.init(superCommands:commandName:abstract:discussion:defaultSubcommand:subcommands:arguments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = result;
  if (!*(result + 16))
  {

    v17 = 0;
  }

  v19 = a10;
  v20 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v20 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    a4 = 0;
    a5 = 0;
  }

  v21 = a11;
  v22 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v22 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a6 = 0;
    a7 = 0;
    v23 = a12;
    if (a10)
    {
      goto LABEL_11;
    }

LABEL_18:
    a8 = 0;
    if (!*(a11 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v23 = a12;
  if (!a10)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = HIBYTE(a10) & 0xF;
  if ((a10 & 0x2000000000000000) == 0)
  {
    v24 = a8 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    if (*(a11 + 16))
    {
      goto LABEL_15;
    }

LABEL_21:

    v21 = 0;
    if (*(v23 + 16))
    {
      goto LABEL_16;
    }

LABEL_22:

    v23 = 0;
    goto LABEL_16;
  }

  a8 = 0;
  v19 = 0;
  if (!*(a11 + 16))
  {
    goto LABEL_21;
  }

LABEL_15:
  if (!*(v23 + 16))
  {
    goto LABEL_22;
  }

LABEL_16:
  *a9 = v17;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v19;
  a9[9] = v21;
  a9[10] = v23;
  return result;
}

__n128 ArgumentInfoV0.init(kind:shouldDisplay:sectionTitle:isOptional:isRepeating:names:preferredName:valueName:defaultValue:allValues:abstract:discussion:)@<Q0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a7;
  v20 = a13;
  v21 = a11;
  v34 = *a1;
  v38 = *a8;
  v36 = a8[1].n128_u64[0];
  if (a7 && !*(a7 + 16))
  {

    v18 = 0;
  }

  v22 = a14;

  if (a11)
  {
    v23 = a10;
    v24 = HIBYTE(a11) & 0xF;
    if ((a11 & 0x2000000000000000) == 0)
    {
      v24 = a10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {

      v23 = 0;
      v21 = 0;
    }

    v25 = a16;
    if (a13)
    {
      goto LABEL_10;
    }

LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v23 = 0;
  v25 = a16;
  if (!a13)
  {
    goto LABEL_15;
  }

LABEL_10:
  v26 = a12;
  v27 = HIBYTE(a13) & 0xF;
  if ((a13 & 0x2000000000000000) == 0)
  {
    v27 = a12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v26 = 0;
    v20 = 0;
  }

LABEL_16:
  v28 = a18;
  if (a14 && !*(a14 + 16))
  {

    v22 = 0;
    if (v25)
    {
LABEL_19:
      v29 = a15;
      v30 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v30 = a15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {

        v29 = 0;
        v25 = 0;
      }

      if (a18)
      {
        goto LABEL_24;
      }

LABEL_30:
      v31 = 0;
      goto LABEL_31;
    }
  }

  else if (v25)
  {
    goto LABEL_19;
  }

  v29 = 0;
  if (!a18)
  {
    goto LABEL_30;
  }

LABEL_24:
  v31 = a17;
  v32 = HIBYTE(a18) & 0xF;
  if ((a18 & 0x2000000000000000) == 0)
  {
    v32 = a17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    v31 = 0;
    v28 = 0;
  }

LABEL_31:
  *a9 = v34;
  *(a9 + 1) = a2 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  *(a9 + 25) = a6 & 1;
  *(a9 + 32) = v18;
  result = v38;
  *(a9 + 40) = v38;
  *(a9 + 56) = v36;
  *(a9 + 64) = v23;
  *(a9 + 72) = v21;
  *(a9 + 80) = v26;
  *(a9 + 88) = v20;
  *(a9 + 96) = v22;
  *(a9 + 104) = v29;
  *(a9 + 112) = v25;
  *(a9 + 120) = v31;
  *(a9 + 128) = v28;
  return result;
}