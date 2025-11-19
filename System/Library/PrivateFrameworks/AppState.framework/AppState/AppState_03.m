uint64_t sub_222614F20(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](a2);
  MEMORY[0x223DBBB40](a3 & 1);
  v9 = sub_22261B740();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v7 + 48) + 16 * v11;
      if (*v13 == a2)
      {
        v14 = *(v13 + 8);
        if (((v14 ^ a3) & 1) == 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    *a1 = a2;
    *(a1 + 8) = v14;
  }

  else
  {
LABEL_7:
    v16 = a3 & 1;
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_222615664(a2, v16, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = a2;
    *(a1 + 8) = v16;
    return 1;
  }

  return result;
}

uint64_t sub_222615058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D08, &qword_22261EBF8);
  result = sub_22261B4E0();
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
      sub_22261B700();
      MEMORY[0x223DBBB60](v18);
      result = sub_22261B740();
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

uint64_t sub_2226152A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
  result = sub_22261B4E0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v20);
      MEMORY[0x223DBBB40](v21);
      result = sub_22261B740();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222615518(uint64_t result, unint64_t a2, char a3)
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
    sub_222615058(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2226157E8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_222615A7C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](v4);
  result = sub_22261B740();
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
  result = sub_22261B660();
  __break(1u);
  return result;
}

uint64_t sub_222615664(uint64_t result, int a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_2226152A8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_222615928();
      a3 = v9;
      goto LABEL_14;
    }

    sub_222615C9C(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](v6);
  MEMORY[0x223DBBB40](a2 & 1);
  result = sub_22261B740();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    while (1)
    {
      v14 = *(v10 + 48) + 16 * a3;
      if (*v14 == v6 && ((*(v14 + 8) ^ a2) & 1) == 0)
      {
        break;
      }

      a3 = (a3 + 1) & v13;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = sub_22261B660();
    __break(1u);
  }

LABEL_14:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v6;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

void *sub_2226157E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D08, &qword_22261EBF8);
  v2 = *v0;
  v3 = sub_22261B4D0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_222615928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
  v2 = *v0;
  v3 = sub_22261B4D0();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

uint64_t sub_222615A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D08, &qword_22261EBF8);
  result = sub_22261B4E0();
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
      sub_22261B700();
      MEMORY[0x223DBBB60](v17);
      result = sub_22261B740();
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

uint64_t sub_222615C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
  result = sub_22261B4E0();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v19);
      MEMORY[0x223DBBB40](v20);
      result = sub_22261B740();
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
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
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

void *sub_222615EDC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_222616634(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222615F6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D08, &qword_22261EBF8);
  result = sub_22261B4F0();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_22261B700();
    MEMORY[0x223DBBB60](v16);
    result = sub_22261B740();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222616174(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
  result = sub_22261B4F0();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v9 + 40);
    sub_22261B700();
    MEMORY[0x223DBBB60](v17);
    MEMORY[0x223DBBB40](v18);
    result = sub_22261B740();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2226163A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27[0] = v8;
    v27[1] = v27;
    MEMORY[0x28223BE20](a1);
    v10 = v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v28 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v8 = (v12 + 63) >> 6;
    v15 = v4;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      v19 = *(a3 + 48) + 16 * v4;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v29 = v20;
      v30 = v19;
      v21 = v6(&v29);
      if (v15)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v21)
      {
        *&v10[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_222616174(v10, v27[0], v28, a3);
          goto LABEL_18;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_17;
      }

      v18 = *(a3 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
  v26 = sub_222615EDC(v25, v8, a3, v6);

  result = MEMORY[0x223DBC1E0](v25, -1, -1);
  if (!v4)
  {
    result = v26;
  }

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222616634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v24 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 16 * v17;
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v22 = v19;
    v23 = v18;
    result = a4(&v22);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_222616174(v24, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22261678C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        result = sub_222616D70(*v11, *(v11 + 8), &v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22261689C(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v57 = 0;
    v50 = 0;
    v55 = a2;
    v56 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v54 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    do
    {
LABEL_6:
      if (!v9)
      {
        v13 = v57;
        v12 = v55;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v10)
          {

            goto LABEL_43;
          }

          v9 = *(v6 + 8 * v14);
          ++v13;
          if (v9)
          {
            v57 = v14;
            goto LABEL_13;
          }
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v12 = v55;
LABEL_13:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = *(v56 + 48) + ((v57 << 10) | (16 * v15));
      v3 = *v16;
      v17 = *(v16 + 8);
      v18 = *(v12 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v3);
      MEMORY[0x223DBBB40](v17);
      v19 = sub_22261B740();
      v20 = -1 << *(v12 + 32);
      v2 = v19 & ~v20;
      v4 = v2 >> 6;
      v12 = 1 << v2;
    }

    while (((1 << v2) & v11[v2 >> 6]) == 0);
    while (1)
    {
      v21 = *(v55 + 48) + 16 * v2;
      if (*v21 == v3 && ((v17 ^ *(v21 + 8)) & 1) == 0)
      {
        break;
      }

      v2 = (v2 + 1) & ~v20;
      v4 = v2 >> 6;
      v12 = 1 << v2;
      if ((v11[v2 >> 6] & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    v60 = v54;
    v61 = v57;
    v62 = v9;
    v59[0] = v56;
    v59[1] = v6;
    v22 = (63 - v20) >> 6;
    v3 = 8 * v22;

    v51 = v22;
    if (v22 <= 0x80)
    {
LABEL_19:
      v52 = &v49;
      MEMORY[0x28223BE20](v23);
      v25 = (&v49 - v24);
      memcpy(&v49 - v24, v11, v3);
      v26 = v25[v4] & ~v12;
      v12 = v55;
      v27 = *(v55 + 16);
      v25[v4] = v26;
      v28 = v27 - 1;
      v4 = 1;
LABEL_20:
      v53 = v28;
LABEL_21:
      while (v9)
      {
LABEL_27:
        v31 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v32 = *(v56 + 48) + ((v57 << 10) | (16 * v31));
        v3 = *v32;
        v33 = *(v32 + 8);
        v34 = *(v12 + 40);
        sub_22261B700();
        v2 = &v58;
        MEMORY[0x223DBBB60](v3);
        MEMORY[0x223DBBB40](v33);
        v35 = sub_22261B740();
        v36 = -1 << *(v12 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & v11[v37 >> 6]) != 0)
        {
          v40 = ~v36;
          while (1)
          {
            v41 = *(v12 + 48) + 16 * v37;
            if (*v41 == v3 && ((v33 ^ *(v41 + 8)) & 1) == 0)
            {
              break;
            }

            v37 = (v37 + 1) & v40;
            v38 = v37 >> 6;
            v39 = 1 << v37;
            if ((v11[v37 >> 6] & (1 << v37)) == 0)
            {
              goto LABEL_21;
            }
          }

          v42 = v25[v38];
          v25[v38] = v42 & ~v39;
          if ((v42 & v39) != 0)
          {
            v28 = v53 - 1;
            if (__OFSUB__(v53, 1))
            {
              __break(1u);
            }

            if (v53 == 1)
            {

              v12 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_20;
          }
        }
      }

      v29 = v57;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v30 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v30);
        ++v29;
        if (v9)
        {
          v57 = v30;
          goto LABEL_27;
        }
      }

      if (v10 <= v57 + 1)
      {
        v43 = v57 + 1;
      }

      else
      {
        v43 = v10;
      }

      v57 = v43 - 1;
      v12 = sub_222616174(v25, v51, v53, v12);
      goto LABEL_43;
    }

LABEL_47:
    v46 = v55;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_19;
    }

    v47 = swift_slowAlloc();
    memcpy(v47, v11, v3);
    v48 = v50;
    v12 = sub_222616EBC(v47, v51, v46, v2, v59);

    if (!v48)
    {

      MEMORY[0x223DBC1E0](v47, -1, -1);
      v54 = v60;
      v57 = v61;
LABEL_43:
      sub_2225F24EC();
      goto LABEL_44;
    }

    result = MEMORY[0x223DBC1E0](v47, -1, -1);
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84FA0];
LABEL_44:
    v44 = *MEMORY[0x277D85DE8];
    return v12;
  }

  return result;
}

unint64_t sub_222616D70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  MEMORY[0x223DBBB40](a2 & 1);
  result = sub_22261B740();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v7 + 48) + 16 * v11;
      if (*v13 == a1 && ((*(v13 + 8) ^ a2) & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_222615928();
      v16 = v19;
    }

    v17 = *(v16 + 48) + 16 * v11;
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *a3 = v18;
    *(a3 + 8) = v17;
    result = sub_2226170AC(v11);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 2;
  }

  return result;
}

uint64_t sub_222616EBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v29 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          if (v13 >= v14)
          {
            break;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

        if (v14 <= v11 + 1)
        {
          v27 = v11 + 1;
        }

        else
        {
          v27 = (a5[2] + 64) >> 6;
        }

        a5[3] = v27 - 1;
        a5[4] = 0;

        return sub_222616174(v7, a2, v29, a3);
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v19 = *(a3 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v17);
      MEMORY[0x223DBBB40](v18);
      result = sub_22261B740();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = *(a3 + 48) + 16 * v21;
          if (*v25 == v17 && ((v18 ^ *(v25 + 8)) & 1) == 0)
          {
            break;
          }

          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        v26 = v7[v22];
        v7[v22] = v26 & ~v23;
        if ((v26 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      if (v29 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_2226170AC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22261B4C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 16 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        sub_22261B700();
        MEMORY[0x223DBBB60](v14);
        MEMORY[0x223DBBB40](v15);
        v16 = sub_22261B740() & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + v11);
          if (16 * v2 != v11 || (v2 = v6, v18 >= v19 + 1))
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_22261727C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2226172C0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222611000(v2);
  }

  return result;
}

void *sub_222617320(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = sub_22261B150();
  v17[3] = v8;
  v17[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, a3, v8);
  a4[2] = a1;
  v10 = sub_2225DDC10(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D28, &qword_22261EC28);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  a4[4] = v11;
  sub_2225D6718(a2, (a4 + 5));
  sub_2225D6718(v17, (a4 + 10));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D30, &unk_22261EC30);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_22261AEA0();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v17);
  a4[3] = v15;
  return a4;
}

uint64_t sub_222617500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2E18;

  return sub_222609EF4(a1, v4);
}

uint64_t sub_22261759C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2225E2AA0;

  return sub_22260AE14(a1, v4, v5);
}

uint64_t sub_222617664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2AA0;

  return sub_22260B43C(a1, v4, v5, v7, v6);
}

uint64_t sub_22261773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_22261780C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010D60, &qword_22261ED18);
    v3 = sub_22261B4F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 8 * v4);
      result = sub_22261B6F0();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_222617930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D10, &unk_22261EC00);
    v3 = sub_22261B4F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v3 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v8);
      MEMORY[0x223DBBB40](v9);
      result = sub_22261B740();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (1)
        {
          v22 = v17 + 16 * v13;
          if (*v22 == v8 && ((v9 ^ *(v22 + 8)) & 1) == 0)
          {
            break;
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if ((v15 & (1 << v13)) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        *(v5 + 8 * v14) = v15 | v16;
        v18 = v17 + 16 * v13;
        *v18 = v8;
        *(v18 + 8) = v9;
        v19 = *(v3 + 16);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v21;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_222617A9C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_222617B40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_222617B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8AppState010StorefrontaB10ControllerC010DataSourceB033_86A46CCF333B1C1F4BCB048BF559D885LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222617C14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222617C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_222617CC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_222617CF4()
{
  v1 = *(v0 + 16);

  return sub_222608848(v2);
}

uint64_t sub_222617D50@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v4;
  result = sub_22260D3DC(&v7, v5);
  *a1 = result & 1;
  return result;
}

void sub_222617DB0(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_22260D088(*(v1 + 24), a1);
}

void *sub_222617DFC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222617F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222617FC0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v8 = v3;
  v9 = v4;
  return (*(v6 + 56))(&v8, v5, v6) & 1;
}

uint64_t sub_222618048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2E18;

  return sub_2226117DC(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_222618110(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225E2E18;

  return sub_222607CC0(v6, a1, a2, v8, v7);
}

uint64_t sub_2226181D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2E18;

  return sub_2226082DC(a1, v4, v5, v7);
}

uint64_t sub_222618294(uint64_t a1)
{
  v4 = *(sub_22261ADE0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2225E2E18;

  return sub_2226083D4(a1, v6, v7, v1 + v5);
}

unint64_t sub_222618384()
{
  result = qword_280D9F038[0];
  if (!qword_280D9F038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D9F038);
  }

  return result;
}

uint64_t sub_2226183D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2225E2E18;

  return sub_222611A10(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_2226184B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2225E2E18;

  return sub_222611E14(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 11), v8);
}

uint64_t sub_222618588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2225E2E18;

  return sub_222605CE0(a1, v5);
}

unint64_t sub_222618640(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_222618650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return sub_222610328(a1, v4, v5, v6);
}

uint64_t sub_222618704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222618770(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

BOOL sub_2226188E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v33 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v33 - v18);
  sub_2225D8D00(a2, &v33 - v18);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21 = *v19;
    v20 = v19[1];
    sub_2225D8D00(a1, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_2225D8D00(v17, v14);
          sub_2225D8D64(v14, type metadata accessor for AppInstallation);
          v23 = 1;
          goto LABEL_29;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
LABEL_16:

        v23 = 1;
        goto LABEL_29;
      }

      sub_2225D8D00(v17, v8);
      v24 = sub_2225FA634(*v8, v8[1]);
      v26 = v25;

      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_2225FA634(v21, v20);
      v30 = v29;

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v23 = v27 < v31;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_16;
      }

      sub_2225D8D00(v17, v11);
      if ((*v11 | 2) != 2)
      {
LABEL_28:
        v23 = 0;
        goto LABEL_29;
      }

      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
    v17 = v19;
  }

LABEL_29:
  sub_2225D8D64(v17, type metadata accessor for State);
  return v23;
}

uint64_t sub_222618C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v31 - v23;
  v25 = *(v22 + 56);
  sub_2225D8D00(a1, &v31 - v23);
  sub_2225D8D00(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_25;
        }

        sub_2225D8D00(&v24[v25], v8);
        v27 = *v8;
        goto LABEL_22;
      }

      sub_2225D8D00(v24, v14);
      v28 = swift_getEnumCaseMultiPayload();
      sub_2225D8D64(v14, type metadata accessor for AppInstallation);
      if (v28)
      {
        goto LABEL_25;
      }

LABEL_19:
      v29 = v24;
LABEL_24:
      sub_2225D8D64(v29, type metadata accessor for State);
      return 1;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 6 && !swift_getEnumCaseMultiPayload())
      {
        sub_2225D8D00(&v24[v25], v19);
        if (*v19 <= 1u)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

LABEL_16:
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2225D8D00(v24, v17);
    if (*v17 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_25;
  }

  sub_2225D8D00(&v24[v25], v11);
  v27 = *v11;
LABEL_22:
  if ((v27 | 2) == 2)
  {
LABEL_23:
    sub_2225D8D64(&v24[v25], type metadata accessor for State);
    v29 = v24;
    goto LABEL_24;
  }

LABEL_25:
  sub_2225FE4DC(v24);
  return 0;
}

uint64_t sub_222618F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2225DE544(a1);
    v15 = *v3;
    v16 = sub_2225F1650(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A170();
        v21 = v26;
      }

      sub_2225DDDD0(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_222619C30(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2225DE544(v9);
  }

  else
  {
    sub_2225DDDD0(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2225F9964(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_222619128(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2225DE544(a1);
    v15 = *v2;
    v16 = sub_2225F173C(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A37C();
        v21 = v26;
      }

      sub_2225DDDD0(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_222619E00(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2225DE544(v9);
  }

  else
  {
    sub_2225DDDD0(a1, v14);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_2225F9AB0(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

void *WaitingAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = &unk_2835C1058;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v0[4] = v4;
  return v0;
}

void *WaitingAppStateDataSource.init()()
{
  v0[3] = &unk_2835C1058;
  v0[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v0[4] = v4;
  return v0;
}

void *WaitingAppStateDataSource.__allocating_init(supportedAppKinds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = a1;
  v2[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v2[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v2[4] = v6;
  return v2;
}

void *WaitingAppStateDataSource.init(supportedAppKinds:)(uint64_t a1)
{
  v1[3] = a1;
  v1[2] = sub_2225DD970(MEMORY[0x277D84F90]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v1[5] = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v1[4] = v5;
  return v1;
}

void WaitingAppStateDataSource.state(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F76C8(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t WaitingAppStateDataSource.setWaiting(forAppWith:installationType:)(uint64_t *a1, char *a2)
{
  v3 = *(v2 + 32);
  v6 = *a1;
  v7 = *a2;
  os_unfair_lock_lock(v3 + 4);
  sub_2226174E4(v4);
  os_unfair_lock_unlock(v3 + 4);
  return 1;
}

uint64_t sub_2226196DC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  *(&v11 - v7) = a3;
  v9 = type metadata accessor for State();
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  swift_beginAccess();
  sub_222618F1C(v8, a2);
  return swift_endAccess();
}

uint64_t WaitingAppStateDataSource.clearWaiting(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_222618894(v3);
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

uint64_t sub_222619864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = sub_2225F1650(a2);
  if (v10)
  {
    v11 = v9;
    v12 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    v20 = v14;
    *(a1 + 16) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22261A170();
      v14 = v20;
    }

    v15 = *(v14 + 56);
    v16 = type metadata accessor for State();
    v17 = *(v16 - 8);
    sub_2225DDDD0(v15 + *(v17 + 72) * v11, v7);
    sub_222619C30(v11, v14);
    *(a1 + 16) = v14;
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  else
  {
    v18 = type metadata accessor for State();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  swift_endAccess();
  return sub_2225DE544(v7);
}

void *WaitingAppStateDataSource.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t WaitingAppStateDataSource.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_222619AC8(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F7954(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_222619B40(uint64_t *a1, char *a2)
{
  v3 = *(*v2 + 32);
  v6 = *v2;
  v7 = *a1;
  v8 = *a2;
  os_unfair_lock_lock(v3 + 4);
  sub_222618894(v4);
  os_unfair_lock_unlock(v3 + 4);
  return 1;
}

uint64_t sub_222619BBC(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  v6 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_222618894(v3);
  os_unfair_lock_unlock(v2 + 4);
  return 1;
}

unint64_t sub_222619C30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_22261B700();
      MEMORY[0x223DBBB60](v10);
      result = sub_22261B740();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for State() - 8) + 72);
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
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_222619E00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_22261B700();
      MEMORY[0x223DBBB40](v10);
      result = sub_22261B740();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for State() - 8) + 72);
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
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_222619FD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22261B4C0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_22261B700();
      MEMORY[0x223DBBB60](v11);
      result = sub_22261B740();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22261A170()
{
  v1 = v0;
  v2 = type metadata accessor for State();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A48, &qword_22261D398);
  v6 = *v0;
  v7 = sub_22261B5C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_2225D8D00(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_2225DDDD0(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_22261A37C()
{
  v1 = v0;
  v2 = type metadata accessor for State();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A00, &unk_22261D350);
  v6 = *v0;
  v7 = sub_22261B5C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_2225D8D00(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + v21) = v22;
        result = sub_2225DDDD0(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_22261A588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A30, &unk_22261D380);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22261A6F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A28, &qword_22261D378);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

void *sub_22261A864()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A10, &qword_22261D360);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22261A9C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A08, &qword_22261E3A0);
  v2 = *v0;
  v3 = sub_22261B5C0();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        v17 *= 56;
        v21 = *(v2 + 56) + v17;
        v22 = *(v21 + 16);
        v24 = *(v21 + 24);
        v23 = *(v21 + 32);
        v25 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = *(v4 + 48) + v18;
        v28 = *v21;
        *v27 = v20;
        *(v27 + 8) = v19;
        v29 = *(v4 + 56) + v17;
        *v29 = v28;
        *(v29 + 16) = v22;
        *(v29 + 24) = v24;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        *(v29 + 48) = v26;
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