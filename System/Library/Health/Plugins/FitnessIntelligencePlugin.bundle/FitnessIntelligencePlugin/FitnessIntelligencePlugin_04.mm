char *sub_68A38(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8FE90, &qword_7AC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_68B78(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_75AE8();
  sub_755E8();
  v9 = sub_75B08();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_69718(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_68DB8(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_758A8();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_75898();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_6901C(v15, result + 1, a4, a5, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_69474(v29 + 1, a4, a5);
        }

        v30 = v16;
        sub_69694(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_75808(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_75818();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v27 = a2;
      sub_69898(v27, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v37;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_6901C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    sub_38F8(a3, a4);
    v8 = sub_758E8();
    v21 = v8;
    sub_75888();
    if (sub_758B8())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_69474(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_75808(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_758B8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_69214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_38F8(&qword_8FE80, qword_7AC08);
  result = sub_758D8();
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_75AE8();
      sub_755E8();
      result = sub_75B08();
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
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

uint64_t sub_69474(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_38F8(a2, a3);
  result = sub_758D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_75808(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_69694(uint64_t a1, uint64_t a2)
{
  sub_75808(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_75878();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_69718(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_69214(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_69A1C();
      goto LABEL_16;
    }

    sub_69CB8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_75AE8();
  sub_755E8();
  result = sub_75B08();
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

      result = sub_75A68();
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
  result = sub_75A88();
  __break(1u);
  return result;
}

void sub_69898(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_69474(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_69B78(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_69EF0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_75808(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_75818();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_75A88();
  __break(1u);
}

void *sub_69A1C()
{
  v1 = v0;
  sub_38F8(&qword_8FE80, qword_7AC08);
  v2 = *v0;
  v3 = sub_758C8();
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

id sub_69B78(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_38F8(a1, a2);
  v4 = *v2;
  v5 = sub_758C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_69CB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_38F8(&qword_8FE80, qword_7AC08);
  result = sub_758D8();
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
      sub_75AE8();

      sub_755E8();
      result = sub_75B08();
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

uint64_t sub_69EF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_38F8(a2, a3);
  result = sub_758D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_75808(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_6A0FC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_759D8();
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
  result = sub_75938();
  *v1 = result;
  return result;
}

void *sub_6A19C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_74858();
  v8 = result;
  if (result)
  {
    result = sub_74878();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_74868();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

void (*sub_6A24C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_75928();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_6A2CC;
  }

  __break(1u);
  return result;
}

uint64_t sub_6A2D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_759D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_759D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_7718(&qword_8FF60, &qword_8FF58, &qword_7ADA0);
          for (i = 0; i != v6; ++i)
          {
            sub_38F8(&qword_8FF58, &qword_7ADA0);
            v9 = sub_6A24C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_7688(0, &qword_8EDE8, HDSQLiteComparisonPredicate_ptr);
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

uint64_t sub_6A488(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_756E8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_68B78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_6A520(const void *a1, sqlite3_stmt *a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  sub_38F8(a5, a6);
  result = sub_75098();
  v11 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v11)
    {
      BYTE6(v12) = BYTE6(v10);
      sub_FB28(result, v10);
      LODWORD(v12) = BYTE6(v12);
      goto LABEL_13;
    }

LABEL_9:
    v16 = HIDWORD(result);
    v17 = result;
    result = sub_FB28(result, v10);
    v15 = __OFSUB__(v16, v17);
    LODWORD(v12) = v16 - v17;
    if (!v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    sub_FB28(result, v10);
    LODWORD(v12) = 0;
    goto LABEL_13;
  }

  if (v11 != 2)
  {
    goto LABEL_12;
  }

  v14 = *(result + 16);
  v13 = *(result + 24);
  result = sub_FB28(result, v10);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (!v15)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 <= 0x7FFFFFFF)
    {
LABEL_13:
      if (qword_8E9E0 == -1)
      {
        return sqlite3_bind_blob(a2, v8, a1, v12, qword_90000);
      }

LABEL_16:
      swift_once();
      return sqlite3_bind_blob(a2, v8, a1, v12, qword_90000);
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_6A63C()
{
  result = qword_8FE70;
  if (!qword_8FE70)
  {
    sub_76D0(&qword_8F000, &qword_7A5D0);
    sub_6A7F0(&qword_8F7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FE70);
  }

  return result;
}

uint64_t sub_6A6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A7C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_6A7F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_74CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6A944@<X0>(const void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, _DWORD *a4@<X8>)
{
  result = sub_6A520(a1, *(v4 + 16), *(v4 + 24), *(v4 + 32), a2, a3);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_6A980()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6A9CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6AA44()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_6AB08()
{
  v1 = (sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_74CA8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[11], v6);
  v8 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_6AC28(sqlite3_stmt *a1)
{
  v3 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5658(a1, v1 + v4, v5);
}

uint64_t sub_6ADA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v131 = a2;
  v128 = sub_754B8();
  v3 = *(v128 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v128);
  v6 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_38F8(&qword_8F288, &qword_7A128);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v118 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = v105 - v11;
  v126 = sub_74CA8();
  v116 = *(v126 - 8);
  v12 = *(v116 + 64);
  v13 = __chkstk_darwin(v126);
  v125 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = v105 - v15;
  v111 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v16 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v113 = v105 - v17;
  v117 = sub_75268();
  v114 = *(v117 - 8);
  v18 = *(v114 + 64);
  v19 = __chkstk_darwin(v117);
  v112 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v105 - v21;
  v23 = sub_38F8(&qword_8FC60, &qword_7A9D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v123 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = v105 - v27;
  v28 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v134 = v105 - v33;
  v34 = sub_38F8(&qword_8F290, &qword_7A130);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v122 = v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v133 = v105 - v38;
  v39 = sub_752E8();
  v40 = *(v39 - 8);
  v41 = v40[8];
  __chkstk_darwin(v39);
  v43 = v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_38F8(&qword_8F298, &qword_7A138);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v121 = v105 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v132 = v105 - v48;
  sub_5B1CC(1);
  v120 = HDSQLiteColumnAsInt64();
  sub_5B1CC(2);
  v119 = HDSQLiteColumnAsInt64();
  sub_5B1CC(11);
  v110 = HDSQLiteColumnAsInt64();
  sub_5B1CC(10);
  v49 = HDSQLiteColumnAsData();
  if (!v49)
  {

LABEL_15:
    v69 = v131;
    sub_75378();
    v70 = sub_754A8();
    v71 = sub_75718();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "Failed to initialize WorkoutPropertyRecordEntity from row: no propertyData", v72, 2u);
    }

    (*(v3 + 8))(v6, v128);
    v73 = 1;
    goto LABEL_34;
  }

  v109 = v32;
  v130 = a1;
  v127 = v22;
  v50 = v49;
  v51 = sub_748C8();
  v53 = v52;

  sub_5B1CC(9);
  v54 = HDSQLiteColumnAsString();
  if (!v54)
  {

    sub_FB28(v51, v53);
    goto LABEL_15;
  }

  v55 = v54;
  v105[2] = v51;
  v105[3] = v53;
  v106 = v7;
  v105[1] = sub_755A8();
  v105[0] = v56;

  v57 = v40[13];
  (v57)(v43, enum case for WorkoutPropertyDimensionsField.monthOfYear(_:), v39);
  v58 = v130;
  v59 = sub_56778(v43, v130);
  v60 = v40[1];
  v60(v43, v39);
  if (v59 && (sub_5B1CC(3), (v61 = HDSQLiteColumnAsString()) != 0))
  {
    v62 = v61;
    sub_755A8();

    v58 = v130;
    sub_74CF8();
  }

  else
  {
    v63 = sub_74D08();
    (*(*(v63 - 8) + 56))(v132, 1, 1, v63);
  }

  (v57)(v43, enum case for WorkoutPropertyDimensionsField.dayOfWeek(_:), v39);
  v64 = sub_56778(v43, v58);
  v60(v43, v39);
  if (v64 && (sub_5B1CC(4), (v65 = HDSQLiteColumnAsString()) != 0))
  {
    v66 = v65;
    sub_755A8();

    v58 = v130;
    sub_753C8();
  }

  else
  {
    v67 = sub_753D8();
    (*(*(v67 - 8) + 56))(v133, 1, 1, v67);
  }

  (v57)(v43, enum case for WorkoutPropertyDimensionsField.hourOfDay(_:), v39);
  v68 = sub_56778(v43, v58);
  v60(v43, v39);
  if (v68)
  {
    sub_5B1CC(5);
    HDSQLiteColumnAsInt64();
    sub_753E8();
  }

  else
  {
    v74 = sub_753F8();
    (*(*(v74 - 8) + 56))(v134, 1, 1, v74);
  }

  (v57)(v43, enum case for WorkoutPropertyDimensionsField.activityType(_:), v39);
  v75 = sub_56778(v43, v58);
  v60(v43, v39);
  if (!v75)
  {
    goto LABEL_22;
  }

  sub_5B1CC(6);
  v76 = HDSQLiteColumnAsInt64();
  if (v76 < 0)
  {
    __break(1u);
LABEL_22:
    v76 = 0;
  }

  v108 = v76;
  v128 = v57;
  (v57)(v43, enum case for WorkoutPropertyDimensionsField.locationType(_:), v39);
  v77 = sub_56778(v43, v58);
  v60(v43, v39);
  if (v77 && (sub_5B1CC(7), (v78 = HDSQLiteColumnAsString()) != 0))
  {
    v79 = v78;
    sub_755A8();

    v80 = v129;
    sub_74F08();
  }

  else
  {
    v81 = sub_74F18();
    v80 = v129;
    (*(*(v81 - 8) + 56))(v129, 1, 1, v81);
  }

  v107 = !v75;
  (v128)(v43, enum case for WorkoutPropertyDimensionsField.sourceIdentifier(_:), v39);
  v82 = sub_56778(v43, v130);

  v60(v43, v39);
  if (v82)
  {
    sub_5B1CC(8);
    v83 = HDSQLiteColumnAsString();
    v84 = v126;
    v85 = v134;
    v86 = v132;
    v87 = v80;
    if (v83)
    {
      v88 = v83;
      sub_755A8();
    }

    v89 = v133;
  }

  else
  {
    v87 = v80;
    v84 = v126;
    v89 = v133;
    v85 = v134;
    v86 = v132;
  }

  sub_FCE0(v86, v121, &qword_8F298, &qword_7A138);
  sub_FCE0(v89, v122, &qword_8F290, &qword_7A130);
  sub_FCE0(v85, v109, &qword_8FBC0, &unk_7A968);
  sub_FCE0(v87, v123, &qword_8FC60, &qword_7A9D8);
  sub_751F8();
  v90 = v124;
  sub_74CB8();
  v91 = v125;
  sub_74CB8();
  sub_6C294(&qword_8F2A0, &type metadata accessor for CacheIndex);
  result = sub_75568();
  if (result)
  {
    v94 = v115;
    v93 = v116;
    v95 = *(v116 + 32);
    v95(v115, v90, v84);
    v96 = v106;
    v95((v94 + *(v106 + 48)), v91, v84);
    v97 = v118;
    sub_FCE0(v94, v118, &qword_8F288, &qword_7A128);
    v98 = *(v96 + 48);
    v99 = v113;
    v95(v113, v97, v84);
    v100 = *(v93 + 8);
    v100(v97 + v98, v84);
    sub_14C60(v94, v97);
    v95(&v99[*(v111 + 36)], (v97 + *(v96 + 48)), v84);
    v100(v97, v84);
    v101 = v114;
    v102 = v127;
    v103 = v117;
    (*(v114 + 16))(v112, v127, v117);
    sub_75048();
    sub_6C294(&qword_8F8C0, &type metadata accessor for WorkoutPropertyRecord);
    v69 = v131;
    sub_75078();
    (*(v101 + 8))(v102, v103);
    sub_3D48(v129, &qword_8FC60, &qword_7A9D8);
    sub_3D48(v134, &qword_8FBC0, &unk_7A968);
    sub_3D48(v133, &qword_8F290, &qword_7A130);
    sub_3D48(v132, &qword_8F298, &qword_7A138);
    v73 = 0;
LABEL_34:
    v104 = sub_38F8(&qword_8EFE0, &qword_79F30);
    return (*(*(v104 - 8) + 56))(v69, v73, 1, v104);
  }

  __break(1u);
  return result;
}

uint64_t sub_6BCAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_754B8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75268();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74CA8();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = __chkstk_darwin(v9);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v38 - v13;
  v14 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = sub_38F8(&qword_8F0B8, &unk_79F60);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v38 - v23;
  v25 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v38 - v28;
  sub_6ADA8(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_3D48(v24, &qword_8F0B8, &unk_79F60);
    v33 = 1;
    v34 = v45;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v30 = sub_75098();
    v32 = v31;
    sub_75298();
    sub_FB28(v30, v32);
    sub_75088();
    v37 = *(v38 + 16);
    v37(v44, v20, v9);
    sub_3D48(v20, &qword_8F000, &qword_7A5D0);
    sub_75088();
    v37(v39, &v18[*(v14 + 36)], v9);
    sub_3D48(v18, &qword_8F000, &qword_7A5D0);
    sub_75058();
    sub_5978(v47, v46);
    v34 = v45;
    sub_75038();
    sub_3940(v47);
    (*(v26 + 8))(v29, v25);
    v33 = 0;
  }

  v35 = sub_75048();
  return (*(*(v35 - 8) + 56))(v34, v33, 1, v35);
}

uint64_t sub_6C294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6C2DC(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, v10);
    if (!*(&v11 + 1))
    {
      goto LABEL_8;
    }

LABEL_5:
    sub_6C95C(v10, v13);
    sub_43198(v13, v13[3]);
    sub_75658();
    sqlite3_bind_int64(a1, v3, v10[0]);
    result = sub_3940(v13);
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v9 = *(v6 + 16);
  *v10 = *v6;
  v11 = v9;
  v12 = *(v6 + 32);
  if (*(&v9 + 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  result = sqlite3_bind_null(a1, v3);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_6C3E0(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a2 ^ 0x7FFFFFFF;
  v7 = (a3 + 40);
  while (!*v7)
  {
    result = sqlite3_bind_null(a1, v3);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_9:
    v7 += 2;
    v3 = (v3 + 1);
    --v6;
    if (!--v4)
    {
      return v3;
    }
  }

  v8 = *(v7 - 1);
  v9 = qword_8E9E0;
  v10 = *v7;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_90000;
  v12 = sub_755C8();

  sqlite3_bind_text(a1, v3, (v12 + 32), -1, v11);

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_6C4F0(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, &v12);
    if (*(&v13 + 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    result = sqlite3_bind_null(a1, v3);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_11:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v11 = *(v6 + 16);
  v12 = *v6;
  v13 = v11;
  v14 = *(v6 + 32);
  if (!*(&v11 + 1))
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_6C95C(&v12, v15);
  sub_43198(v15, v15[3]);
  sub_75658();
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v8 = qword_90000;
  v9 = sub_755C8();

  sqlite3_bind_text(a1, v3, (v9 + 32), -1, v8);

  result = sub_3940(v15);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_6C668(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = (a3 + 32);
  for (i = a2 ^ 0x7FFFFFFF; ; --i)
  {
    v9 = *v6++;
    v8 = v9;
    result = v9 == 2 ? sqlite3_bind_null(a1, v3) : sqlite3_bind_int64(a1, v3, v8 & 1);
    if (!i)
    {
      break;
    }

    v3 = (v3 + 1);
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6C6F4(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = (a3 + 32);
  for (i = a2 ^ 0x7FFFFFFF; ; --i)
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 && *(v8 + 16))
    {

      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_1D80C();
      sub_75538();

      if (qword_8E9E0 != -1)
      {
        swift_once();
      }

      v10 = qword_90000;
      v11 = sub_755C8();

      sqlite3_bind_text(a1, v3, (v11 + 32), -1, v10);
    }

    else
    {
      result = sqlite3_bind_null(a1, v3);
    }

    if (!i)
    {
      break;
    }

    v3 = (v3 + 1);
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6C850(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, v10);
    if (*(&v11 + 1))
    {
      goto LABEL_5;
    }

LABEL_9:
    result = sqlite3_bind_null(a1, v3);
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v9 = *(v6 + 16);
  *v10 = *v6;
  v11 = v9;
  v12 = *(v6 + 32);
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_6C95C(v10, v13);
  sub_43198(v13, v13[3]);
  result = sub_75658();
  if (v10[0] < 0)
  {
    goto LABEL_13;
  }

  sqlite3_bind_int64(a1, v3, v10[0]);
  result = sub_3940(v13);
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_6C95C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_6C974(uint64_t a1)
{
  result = sub_6DF6C(&unk_8F7A0, type metadata accessor for RingsPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6C9CC()
{
  v0 = sub_74DD8();
  sub_19BBC(v0, qword_90060);
  v1 = sub_19C20(v0, qword_90060);
  v2 = enum case for RingsPropertyKind.totalCount(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_6CA54(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_754B8();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = [a1 protectedDatabase];
  if (v17)
  {
    v18 = v17;
    v40 = a2;
    v41 = v14;
    aBlock = 0;
    v46 = 0xE000000000000000;
    sub_75908(119);
    v52._object = 0x8000000000079880;
    v52._countAndFlagsBits = 0xD000000000000075;
    sub_75608(v52);
    v51 = sub_74C98();
    v53._countAndFlagsBits = sub_75A38();
    sub_75608(v53);

    v19 = sub_75598();

    v49 = nullsub_1;
    v50 = 0;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_644E0;
    v48 = &unk_89470;
    v20 = _Block_copy(&aBlock);

    (*(v8 + 16))(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + v21, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_6DE84;
    *(v23 + 24) = v22;
    v49 = sub_1B6F8;
    v50 = v23;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_4F494;
    v48 = &unk_894E8;
    v24 = _Block_copy(&aBlock);

    aBlock = 0;
    v25 = [v18 executeSQL:v19 error:&aBlock bindingHandler:v20 enumerationHandler:v24];
    _Block_release(v24);
    _Block_release(v20);

    if (v25)
    {
      v26 = aBlock;

      return 1;
    }

    v32 = aBlock;
    sub_74898();

    swift_willThrow();
    v33 = v41;
    sub_75378();
    swift_errorRetain();
    v34 = sub_754A8();
    v35 = sub_75718();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_0, v34, v35, "Failed to list all cache indexes %@", v36, 0xCu);
      sub_3D48(v37, &unk_8EB30, &unk_7A270);

      v33 = v41;
    }

    (*(v43 + 8))(v33, v44);
    v39 = v40;
    if (v40)
    {
      *v39 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v28 = sub_754A8();
    v29 = sub_75718();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Failed to list cache indexes: no protected database", v30, 2u);
    }

    (*(v43 + 8))(v16, v44);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v31 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_6D074(uint64_t a1, char *a2, char *a3, void (*a4)(char *, char *, uint64_t))
{
  v65 = a4;
  v67 = a3;
  v69 = a2;
  v66 = sub_38F8(&qword_8F288, &qword_7A128);
  v4 = *(*(v66 - 8) + 64);
  v5 = __chkstk_darwin(v66);
  v68 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  v9 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = sub_74CA8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v59 - v25;
  HDSQLiteColumnAsInt64();
  sub_74CB8();
  v70 = v26;
  sub_74C58();
  v69 = v8;
  v60 = 0;
  v61 = v13;
  v64 = v16;
  v62 = v9;
  v27 = *(v9 + 36);
  sub_6DF6C(&qword_8F2A0, &type metadata accessor for CacheIndex);
  v28 = v67;
  v29 = sub_75558();
  v63 = v20;
  v31 = v20 + 16;
  v30 = *(v20 + 16);
  if (v29)
  {
    v32 = v24;
    v33 = v28;
  }

  else
  {
    v33 = &v18[v27];
    v32 = v24;
  }

  v30(v32, v33, v19);
  v34 = v66;
  v35 = v69;
  v36 = sub_75568();
  v37 = v68;
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v69 = v18;
  v30(v35, v18, v19);
  v38 = v63;
  v39 = *(v63 + 32);
  v39(v35 + *(v34 + 48), v24, v19);
  sub_FCE0(v35, v37, &qword_8F288, &qword_7A128);
  v40 = *(v34 + 48);
  v31 = v64;
  v39(v64, v37, v19);
  v41 = *(v38 + 8);
  LOBYTE(v24) = v41;
  v41(v37 + v40, v19);
  sub_1B748(v35, v37, &qword_8F288, &qword_7A128);
  v39(v31 + *(v62 + 36), (v37 + *(v34 + 48)), v19);
  v68 = v41;
  v41(v37, v19);
  v30 = v65;
  v42 = *v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v30;
  v44 = v71;
  *v30 = 0x8000000000000000;
  v34 = sub_42788(v31);
  v46 = v44[2];
  v47 = (v45 & 1) == 0;
  v48 = v46 + v47;
  if (__OFADD__(v46, v47))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v24) = v45;
  if (v44[3] >= v48)
  {
    v35 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_42AC4(v48, isUniquelyReferenced_nonNull_native);
    v44 = v71;
    v49 = sub_42788(v31);
    v35 = v69;
    if ((v24 & 1) != (v50 & 1))
    {
      result = sub_75A98();
      __break(1u);
      return result;
    }

    v34 = v49;
  }

  while (1)
  {
    v51 = v61;
    v52 = *v30;
    *v30 = v44;

    v53 = *v30;
    if ((v24 & 1) == 0)
    {
      sub_FCE0(v31, v51, &qword_8F000, &qword_7A5D0);
      sub_6D61C(v34, v51, 0, v53);
    }

    v54 = v53[7];
    v55 = *(v54 + 8 * v34);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (!v56)
    {
      break;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    sub_42874();
    v44 = v71;
  }

  *(v54 + 8 * v34) = v57;
  sub_3D48(v31, &qword_8F000, &qword_7A5D0);
  sub_3D48(v35, &qword_8F000, &qword_7A5D0);
  v68(v70, v19);
  return v60 == 0;
}

uint64_t sub_6D61C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_38F8(&qword_8F000, &qword_7A5D0);
  result = sub_1B748(a2, v8 + *(*(v9 - 8) + 72) * a1, &qword_8F000, &qword_7A5D0);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_6D6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = sub_38F8(&qword_8F3D8, &qword_7A208);
  v7 = *(*(v63 - 8) + 64);
  v8 = __chkstk_darwin(v63);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v61 = v55 - v11;
  __chkstk_darwin(v10);
  v60 = v55 - v12;
  v13 = type metadata accessor for DatabaseChecksum();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v64 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_74CA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v69 = &_swiftEmptyDictionarySingleton;
  v19 = [a2 database];
  (*(v17 + 16))(v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v20, v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  *(v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v69;
  v22 = swift_allocObject();
  v22[2] = sub_6DDC0;
  v22[3] = v21;
  aBlock[4] = sub_FC94;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_89448;
  v23 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v24 = [v19 performTransactionWithContext:a3 error:aBlock block:v23 inaccessibilityHandler:0];
  _Block_release(v23);

  v25 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    goto LABEL_30;
  }

  if (!v24)
  {
    sub_74898();

    swift_willThrow();

    return v25;
  }

  v26 = v69;
  v27 = v69[2];
  v25 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    goto LABEL_23;
  }

  v55[1] = v21;
  v55[2] = v3;
  aBlock[0] = _swiftEmptyArrayStorage;

  sub_67DFC(0, v27, 0);
  v25 = aBlock[0];
  v28 = -1 << *(v26 + 32);
  v67 = v26 + 8;
  v29 = sub_75868();
  v30 = 0;
  v56 = v26 + 9;
  v57 = v27;
  do
  {
    if (v29 < 0 || v29 >= 1 << *(v26 + 32))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    v32 = v29 >> 6;
    if ((v67[v29 >> 6] & (1 << v29)) == 0)
    {
      goto LABEL_26;
    }

    v33 = *(v26 + 9);
    v65 = v30;
    v66 = v33;
    v34 = v26[6];
    v35 = sub_38F8(&qword_8F000, &qword_7A5D0);
    v36 = v60;
    sub_FCE0(v34 + *(*(v35 - 8) + 72) * v29, v60, &qword_8F000, &qword_7A5D0);
    v37 = *(v26[7] + 8 * v29);
    v38 = v36;
    v39 = v61;
    sub_1B748(v38, v61, &qword_8F000, &qword_7A5D0);
    *(v39 + *(v63 + 48)) = v37;
    v40 = v39;
    v41 = v62;
    sub_1B748(v40, v62, &qword_8F3D8, &qword_7A208);
    v42 = v41;
    v43 = v64;
    sub_1B748(v42, v64, &qword_8F000, &qword_7A5D0);
    v44 = v43;
    *(v43 + *(v59 + 20)) = v37;
    aBlock[0] = v25;
    v46 = v25[2];
    v45 = v25[3];
    if (v46 >= v45 >> 1)
    {
      sub_67DFC(v45 > 1, v46 + 1, 1);
      v44 = v64;
      v25 = aBlock[0];
    }

    v25[2] = v46 + 1;
    sub_1B534(v44, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46);
    v31 = 1 << *(v26 + 32);
    if (v29 >= v31)
    {
      goto LABEL_27;
    }

    v47 = v67[v32];
    if ((v47 & (1 << v29)) == 0)
    {
      goto LABEL_28;
    }

    if (v66 != *(v26 + 9))
    {
      goto LABEL_29;
    }

    v48 = v47 & (-2 << (v29 & 0x3F));
    if (v48)
    {
      v31 = __clz(__rbit64(v48)) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v49 = v32 << 6;
      v50 = v32 + 1;
      v51 = &v56[v32];
      while (v50 < (v31 + 63) >> 6)
      {
        v53 = *v51++;
        v52 = v53;
        v49 += 64;
        ++v50;
        if (v53)
        {
          sub_1B598(v29, v66, 0);
          v31 = __clz(__rbit64(v52)) + v49;
          goto LABEL_6;
        }
      }

      sub_1B598(v29, v66, 0);
    }

LABEL_6:
    v30 = v65 + 1;
    v29 = v31;
  }

  while (v65 + 1 != v57);

LABEL_23:

  return v25;
}

uint64_t sub_6DDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6DDF0()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6DE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_74CA8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_6DF6C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_6DFD0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_6E030(char a1)
{
  v2 = sub_6F270();
  v3 = sub_6E0D4(a1);
  v5 = v4;
  v6 = v2[2];
  if (v6)
  {
    v7 = v3;
    v8 = 0;
    v9 = v2 + 5;
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v5;
      if (v10 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  return v8;
}

uint64_t sub_6E0D4(char a1)
{
  result = 0x4449574F52;
  switch(a1)
  {
    case 1:
      result = 0x6361437472617473;
      break;
    case 2:
      result = 0x6568636143646E65;
      break;
    case 3:
      result = 0x59664F68746E6F6DLL;
      break;
    case 4:
      result = 0x656557664F796164;
      break;
    case 5:
      result = 0x6144664F72756F68;
      break;
    case 6:
      v3 = 0x696C61646F6DLL;
      goto LABEL_15;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 0x7265706F7270;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
      break;
    case 9:
      result = 0x79747265706F7270;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    case 11:
      result = 0x4164657461657263;
      break;
    case 12:
      result = 0x766F7250636E7973;
      break;
    case 13:
      result = 0x6E656449636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_6E2D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6E0D4(*a1);
  v5 = v4;
  if (v3 == sub_6E0D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_6E358()
{
  v1 = *v0;
  sub_75AE8();
  sub_6E0D4(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_6E3BC()
{
  sub_6E0D4(*v0);
  sub_755E8();
}

Swift::Int sub_6E410()
{
  v1 = *v0;
  sub_75AE8();
  sub_6E0D4(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_6E470@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6F930(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_6E4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6E0D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FitnessPlusPropertyRecordEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

void sub_6E99C()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7ADE0;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:4];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:4];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:4];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:4];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:4];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:3];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:1];

  *(v0 + 120) = v48;
  v49 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v50 = sub_75598();
  v51 = sub_75598();
  v52 = [v49 initWithName:v50 columnType:v51 keyPathType:3];

  *(v0 + 128) = v52;
  v53 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v54 = sub_75598();
  v55 = sub_75598();
  v56 = [v53 initWithName:v54 columnType:v55 keyPathType:3];

  *(v0 + 136) = v56;
  qword_90078 = v0;
}

id FitnessPlusPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id FitnessPlusPropertyRecordEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_6F234(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_6F270()
{
  sub_67C58(0, 13, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x4449574F52;
    switch(*(&off_85808 + v0 + 32))
    {
      case 1:
        v3 = 0x6361437472617473;
        v2 = 0xEF7865646E496568;
        break;
      case 2:
        v3 = 0x6568636143646E65;
        v2 = 0xED00007865646E49;
        break;
      case 3:
        v3 = 0x59664F68746E6F6DLL;
        v2 = 0xEB00000000726165;
        break;
      case 4:
        v3 = 0x656557664F796164;
        v2 = 0xE90000000000006BLL;
        break;
      case 5:
        v2 = 0xE900000000000079;
        v3 = 0x6144664F72756F68;
        break;
      case 6:
        v3 = 0x7974696C61646F6DLL;
        goto LABEL_16;
      case 7:
        v3 = 0xD000000000000012;
        v2 = 0x8000000000077410;
        break;
      case 8:
        v3 = 0x79747265706F7270;
LABEL_16:
        v2 = 0xEC000000646E694BLL;
        break;
      case 9:
        v3 = 0x79747265706F7270;
        v2 = 0xEC00000061746144;
        break;
      case 0xA:
        v2 = 0xE700000000000000;
        v3 = 0x6E6F6973726576;
        break;
      case 0xB:
        v2 = 0xE900000000000074;
        v3 = 0x4164657461657263;
        break;
      case 0xC:
        v3 = 0x766F7250636E7973;
        v2 = 0xEE0065636E616E65;
        break;
      case 0xD:
        v3 = 0x6E656449636E7973;
        v2 = 0xEC00000079746974;
        break;
      default:
        break;
    }

    v7 = result;
    v5 = result[2];
    v4 = result[3];
    if (v5 >= v4 >> 1)
    {
      sub_67C58((v4 > 1), v5 + 1, 1);
      result = v7;
    }

    ++v0;
    result[2] = v5 + 1;
    v6 = &result[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 13);
  return result;
}

char *_s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000034;
  v22._object = 0x8000000000079910;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA18 != -1)
  {
    swift_once();
  }

  v0 = qword_90078;
  if (qword_90078 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90078 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

uint64_t sub_6F930(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85EC8;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_6F97C(void *a1)
{
  if (qword_8EA18 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90078;
  v3 = qword_90078 >> 62;
  if (qword_90078 >> 62)
  {
    if (qword_90078 < 0)
    {
      v1 = qword_90078;
    }

    else
    {
      v1 = qword_90078 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90078 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v6 = sub_759D8();

    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

  v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t getEnumTagSinglePayload for FitnessPlusPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FitnessPlusPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6FCD4()
{
  result = qword_8FFE0;
  if (!qword_8FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFE0);
  }

  return result;
}

unint64_t sub_6FD28(uint64_t a1)
{
  *(a1 + 8) = sub_6FD58();
  result = sub_6FDAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_6FD58()
{
  result = qword_8FFE8;
  if (!qword_8FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFE8);
  }

  return result;
}

unint64_t sub_6FDAC()
{
  result = qword_8FFF0;
  if (!qword_8FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFF0);
  }

  return result;
}

unint64_t sub_6FE00(uint64_t a1)
{
  result = sub_5A144();
  *(a1 + 8) = result;
  return result;
}

void *sub_6FE28(uint64_t a1, void *a2)
{
  v39 = a2;
  v3 = sub_749B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v36 = v7;
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v42 = v6;
  v8 = sub_5914(aBlock);
  v35 = *(v4 + 16);
  v35(v8, a1, v3);
  v9 = sub_75598();
  v10 = v42;
  if (v42)
  {
    v11 = sub_43198(aBlock, v42);
    ObjCClassFromMetadata = &v33;
    v12 = a1;
    v13 = *(v10 - 1);
    v14 = *(v13 + 64);
    __chkstk_darwin(v11);
    v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_75A58();
    (*(v13 + 8))(v16, v10);
    a1 = v12;
    sub_3940(aBlock);
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_opt_self() predicateWithProperty:v9 equalToValue:v17];

  swift_unknownObjectRelease();
  v19 = v38;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = v39;
  v21 = [v39 database];
  v22 = v37;
  v35(v37, a1, v3);
  v23 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v19;
  *(v24 + 3) = v18;
  *(v24 + 4) = v20;
  *(v24 + 5) = &v40;
  (*(v4 + 32))(&v24[v23], v22, v3);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_744BC;
  *(v25 + 24) = v24;
  v43 = sub_1008C;
  v44 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  v42 = &unk_89848;
  v26 = _Block_copy(aBlock);
  v27 = v18;
  v28 = v20;

  aBlock[0] = 0;
  v29 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v21 error:aBlock block:v26];
  _Block_release(v26);

  v30 = aBlock[0];
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  if (v29)
  {

    v31 = v40;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v31 = v40;
  }

  return v31;
}

id sub_702A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a1;
  v5 = v4;
  v9 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v25 - v12;
  v30 = _swiftEmptyArrayStorage;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [a4 database];
  sub_183FC(a3, v13);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 24) = a2;
  sub_185B4(v13, v17 + v14);
  *(v17 + v15) = v5;
  *(v17 + v16) = a4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v30;
  v18 = swift_allocObject();
  v18[2] = sub_746C4;
  v18[3] = v17;
  aBlock[4] = sub_1008C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_89938;
  v19 = _Block_copy(aBlock);

  v20 = a4;

  aBlock[0] = 0;
  v21 = v27;
  v22 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v27 error:aBlock block:v19];
  _Block_release(v19);

  v23 = aBlock[0];
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  if (v22)
  {
    v22 = v30;
  }

  else
  {
    sub_74898();

    swift_willThrow();
  }

  return v22;
}

uint64_t sub_705B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [a3 database];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v4;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_7213C;
  *(v9 + 24) = v8;
  v27 = sub_FC94;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_2BB8;
  v26 = &unk_89668;
  v10 = _Block_copy(&aBlock);

  v11 = a3;

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_7361C;
  *(v13 + 24) = v12;
  v27 = sub_11AC4;
  v28 = v13;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_65494;
  v26 = &unk_896E0;
  v14 = _Block_copy(&aBlock);

  v15 = v11;

  aBlock = 0;
  v16 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:v21 error:&aBlock block:v10 inaccessibilityHandler:v14];
  _Block_release(v14);
  _Block_release(v10);

  v17 = aBlock;
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16)
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_74898();

  swift_willThrow();

  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_7092C(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v84 = a7;
  v85 = a8;
  v83 = a6;
  v86 = a5;
  v81 = a2;
  v10 = sub_754B8();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v77 - v15;
  v17 = sub_74848();
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = _swiftEmptyArrayStorage;
  v93 = &type metadata for String;
  aBlock = a3;
  v91 = a4;
  v79 = a4;

  v21 = sub_75598();
  v22 = sub_43198(&aBlock, &type metadata for String);
  v23 = *(&type metadata for String - 1);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26);
  v27 = sub_75A58();
  (*(v23 + 8))(v26, &type metadata for String);
  sub_3940(&aBlock);
  v28 = objc_opt_self();
  v29 = [v28 predicateWithProperty:v21 equalToValue:v27];

  swift_unknownObjectRelease();
  if (!v29)
  {
LABEL_26:
    __break(1u);
  }

  sub_75668();
  if (*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v89 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v76 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
    sub_756A8();
  }

  sub_756D8();
  sub_183FC(v86, v16);
  v31 = v87;
  v30 = v88;
  v32 = (*(v87 + 48))(v16, 1, v88);
  v78 = a3;
  if (v32 == 1)
  {
    sub_3D48(v16, &qword_8F3C0, &qword_7A1E0);
    goto LABEL_15;
  }

  v86 = v10;
  (*(v31 + 32))(v20, v16, v30);
  sub_38F8(&qword_8F180, &qword_79D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7AF40;
  v34 = sub_74968();
  v93 = v34;
  sub_5914(&aBlock);
  sub_74838();
  v35 = sub_75598();
  v36 = v93;
  if (v93)
  {
    v37 = sub_43198(&aBlock, v93);
    v38 = *(v36 - 1);
    v39 = *(v38 + 64);
    __chkstk_darwin(v37);
    v41 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41);
    v42 = sub_75A58();
    (*(v38 + 8))(v41, v36);
    sub_3940(&aBlock);
  }

  else
  {
    v42 = 0;
  }

  v43 = [v28 predicateWithProperty:v35 greaterThanOrEqualToValue:v42];

  result = swift_unknownObjectRelease();
  if (!v43)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  *(inited + 32) = v43;
  v93 = v34;
  sub_5914(&aBlock);
  sub_74828();
  v45 = sub_75598();
  v46 = v93;
  v10 = v86;
  if (v93)
  {
    v47 = sub_43198(&aBlock, v93);
    v48 = *(v46 - 1);
    v49 = *(v48 + 64);
    __chkstk_darwin(v47);
    v51 = &v77 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v51);
    v52 = sub_75A58();
    (*(v48 + 8))(v51, v46);
    sub_3940(&aBlock);
  }

  else
  {
    v52 = 0;
  }

  v53 = [v28 predicateWithProperty:v45 lessThanOrEqualToValue:v52];

  result = swift_unknownObjectRelease();
  if (!v53)
  {
    goto LABEL_28;
  }

  *(inited + 40) = v53;
  sub_67090(inited);
  (*(v87 + 8))(v20, v88);
LABEL_15:
  sub_5174(v89);

  isa = sub_75678().super.isa;

  v55 = [objc_opt_self() predicateMatchingAllPredicates:isa];

  v56 = sub_1D420();
  sub_462C(v56);

  v57 = sub_75678().super.isa;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v55;
  v60 = [v84 database];
  v61 = swift_allocObject();
  *(v61 + 16) = v85;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_74798;
  *(v62 + 24) = v61;
  v94 = sub_747D4;
  v95 = v62;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v92 = sub_71428;
  v93 = &unk_899B0;
  v63 = _Block_copy(&aBlock);

  aBlock = 0;
  v64 = [ObjCClassFromMetadata enumerateProperties:v57 withPredicate:v59 healthDatabase:v60 error:&aBlock enumerationHandler:v63];
  _Block_release(v63);

  v65 = aBlock;
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v64)
  {
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v66 = v82;
    sub_75378();
    v67 = v79;

    swift_errorRetain();
    v68 = sub_754A8();
    v69 = sub_75718();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v86 = v10;
      v73 = v72;
      aBlock = v72;
      *v70 = 136315394;
      *(v70 + 4) = sub_31B4(v78, v67, &aBlock);
      *(v70 + 12) = 2112;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v74;
      *v71 = v74;
      _os_log_impl(&dword_0, v68, v69, "Failed to query inference containers for adapter %s: %@", v70, 0x16u);
      sub_3D48(v71, &unk_8EB30, &unk_7A270);

      sub_3940(v73);

      (*(v80 + 8))(v82, v86);
    }

    else
    {

      (*(v80 + 8))(v66, v10);
    }

    v75 = v81;
    if (v81)
    {
      *v75 = sub_74888();
    }
  }

  return v64;
}

uint64_t sub_71428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = sub_75688();
  LOBYTE(a5) = v9(a2, v10, a4, a5);

  return a5 & 1;
}

unint64_t sub_714A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v48 = a2;
  v10 = sub_749B8();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_754B8();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  __chkstk_darwin(v14);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D420();
  sub_462C(v17);

  isa = sub_75678().super.isa;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [a5 database];
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  v22 = swift_allocObject();
  v22[2] = sub_74814;
  v22[3] = v21;
  aBlock[4] = sub_74554;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_71428;
  aBlock[3] = &unk_898C0;
  v23 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v24 = [ObjCClassFromMetadata enumerateProperties:isa withPredicate:a4 healthDatabase:v20 error:aBlock enumerationHandler:v23];
  _Block_release(v23);

  v25 = aBlock[0];
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  if ((v24 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
    v26 = v49;
    sub_75378();
    v27 = v45;
    (*(v45 + 16))(v13, v44, v10);
    swift_errorRetain();
    v28 = sub_754A8();
    v29 = sub_75718();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      LODWORD(v44) = v24;
      v31 = v10;
      v32 = v30;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v32 = 136315394;
      sub_743A8(&qword_8FFF8, &type metadata accessor for UUID);
      v33 = sub_75A38();
      v35 = v34;
      v36 = v31;
      v24 = v44;
      (*(v27 + 8))(v13, v36);
      v37 = sub_31B4(v33, v35, aBlock);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v38;
      v39 = v42;
      *v42 = v38;
      _os_log_impl(&dword_0, v28, v29, "Failed to query inference containers for uuid %s: %@", v32, 0x16u);
      sub_3D48(v39, &unk_8EB30, &unk_7A270);

      sub_3940(v43);

      (*(v46 + 8))(v49, v47);
    }

    else
    {

      (*(v27 + 8))(v13, v10);
      (*(v46 + 8))(v26, v47);
    }

    v40 = v48;
    if (v48)
    {
      *v40 = sub_74888();
    }
  }

  return v24;
}

BOOL sub_71A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v6 = sub_38F8(&unk_8FA00, &qword_7A740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_74D78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_11AD8(v9);
  v18 = (*(v11 + 48))(v9, 1, v10);
  if (v18 == 1)
  {
    sub_3D48(v9, &unk_8FA00, &qword_7A740);
  }

  else
  {
    v26 = *(v11 + 32);
    v26(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v19 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_67844(0, v19[2] + 1, 1, v19);
      *a5 = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      *a5 = sub_67844(v21 > 1, v22 + 1, 1, v19);
    }

    (*(v11 + 8))(v17, v10);
    v23 = *a5;
    *(v23 + 2) = v22 + 1;
    v26(&v23[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22], v15, v10);
  }

  return v18 != 1;
}

uint64_t sub_71C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37 = a5;
  v38 = a6;
  v32 = a2;
  v36 = a1;
  v7 = sub_754B8();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  v9 = __chkstk_darwin(v7);
  v29[1] = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = sub_74D78();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  if (v18)
  {
    v29[0] = v12;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = a3 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v34 = (v19 - 8);
    v35 = v20;
    v33 = *(v19 + 56);
    v22 = v38;
    do
    {
      v23 = v19;
      v35(v17, v21, v13);
      v24 = [v22 syncIdentityManager];
      v25 = [v24 currentSyncIdentity];

      v26 = [v25 entity];
      v27 = [v26 persistentID];

      sub_72160(v17, v37, v27, v22, v36);
      (*v34)(v17, v13);
      v21 += v33;
      --v18;
      v19 = v23;
    }

    while (v18);
  }

  sub_72B08(v38);
  return 1;
}

uint64_t sub_720FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_72148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_72160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v91 = a4;
  v94 = a1;
  v8 = sub_749B8();
  v86 = *(v8 - 1);
  v9 = *(v86 + 64);
  __chkstk_darwin(v8);
  v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_74D78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v93 = &v73 - v15;
  v16 = sub_754B8();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  __chkstk_darwin(v16);
  isa = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [a5 protectedDatabase];
  if (v19)
  {
    v20 = v19;
    v80 = v13;
    v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = v12;
    v83 = a2;
    v84 = a3;
    v79 = v8;
    v96 = v8;
    sub_5914(aBlock);
    sub_74D48();
    v21 = sub_75598();
    v22 = v96;
    if (v96)
    {
      v23 = sub_43198(aBlock, v96);
      v24 = *(v22 - 1);
      v25 = *(v24 + 64);
      __chkstk_darwin(v23);
      v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27);
      v28 = sub_75A58();
      (*(v24 + 8))(v27, v22);
      sub_3940(aBlock);
    }

    else
    {
      v28 = 0;
    }

    v30 = v93;
    v31 = [objc_opt_self() predicateWithProperty:v21 equalToValue:v28];

    swift_unknownObjectRelease();
    if (v31)
    {
      sub_743A8(&qword_8F178, &type metadata accessor for InferenceRecord);
      v32 = v92;
      v33 = sub_74F98();
      if (v32)
      {
      }

      else
      {
        v36 = v33;
        v93 = v34;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v38 = v31;
        v39 = [v91 database];
        aBlock[0] = 0;
        v92 = ObjCClassFromMetadata;
        v40 = [ObjCClassFromMetadata deleteEntitiesWithPredicate:v38 healthDatabase:v39 error:aBlock];

        if (v40)
        {
          v91 = v36;
          v41 = aBlock[0];
          v42 = isa;
          sub_75378();
          v43 = v82;
          v90 = *(v82 + 16);
          v90(v30, v94, v11);
          v44 = sub_754A8();
          v76 = sub_75708();
          v45 = os_log_type_enabled(v44, v76);
          v78 = v20;
          v77 = v38;
          if (v45)
          {
            v46 = swift_slowAlloc();
            v73 = v46;
            v75 = swift_slowAlloc();
            aBlock[0] = v75;
            *v46 = 136315138;
            v47 = v30;
            v48 = v85;
            v74 = v44;
            sub_74D48();
            sub_743A8(&qword_8FFF8, &type metadata accessor for UUID);
            v49 = v79;
            v50 = sub_75A38();
            v52 = v51;
            (*(v86 + 8))(v48, v49);
            (*(v43 + 8))(v47, v11);
            v53 = sub_31B4(v50, v52, aBlock);

            v54 = v73;
            *(v73 + 1) = v53;
            v55 = v74;
            _os_log_impl(&dword_0, v74, v76, "Inserting record container: %s", v54, 0xCu);
            sub_3940(v75);

            (*(v87 + 8))(isa, v88);
          }

          else
          {

            (*(v43 + 8))(v30, v11);
            (*(v87 + 8))(v42, v88);
          }

          sub_1D420();
          isa = sub_75678().super.isa;

          v58 = v81;
          v90(v81, v94, v11);
          v59 = (*(v43 + 80) + 16) & ~*(v43 + 80);
          v60 = (v80 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
          v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
          v62 = swift_allocObject();
          (*(v43 + 32))(v62 + v59, v58, v11);
          v63 = (v62 + v60);
          v64 = v91;
          v65 = v93;
          *v63 = v91;
          v63[1] = v65;
          v66 = v84;
          *(v62 + v61) = v83;
          *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
          v67 = swift_allocObject();
          *(v67 + 16) = sub_742F0;
          *(v67 + 24) = v62;
          v97 = sub_2FE7C;
          v98 = v67;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_644E0;
          v96 = &unk_897D0;
          v68 = _Block_copy(aBlock);

          sub_398C(v64, v65);

          aBlock[0] = 0;
          v69 = isa;
          v70 = [v92 insertOrReplaceEntity:1 database:v78 properties:isa error:aBlock bindingHandler:v68];
          _Block_release(v68);

          v71 = aBlock[0];
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          if (v70)
          {
          }

          else
          {
            sub_74898();

            swift_willThrow();
          }

          sub_FB28(v64, v65);
        }

        else
        {
          v56 = v38;
          v57 = aBlock[0];
          sub_74898();

          swift_willThrow();
          sub_FB28(v36, v93);
        }
      }
    }

    else
    {
      sub_19A60();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_19A60();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }
}

void sub_72B08(void *a1)
{
  v4 = sub_74968();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  sub_44DAC(&v36 - v9);
  if (!v2)
  {
    v38 = 0;
    v39 = a1;
    v44 = v4;
    v11 = sub_5914(aBlock);
    v41 = v5;
    v42 = v4;
    v12 = *(v5 + 16);
    v12(v11, v10, v4);
    ObjCClassFromMetadata = sub_75598();
    v13 = v44;
    if (v44)
    {
      v14 = sub_43198(aBlock, v44);
      v36 = &v36;
      v37 = v12;
      v15 = *(v13 - 1);
      v16 = *(v15 + 64);
      __chkstk_darwin(v14);
      v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18);
      v19 = sub_75A58();
      (*(v15 + 8))(v18, v13);
      v12 = v37;
      sub_3940(aBlock);
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_opt_self();
    v21 = ObjCClassFromMetadata;
    v22 = [v20 predicateWithProperty:ObjCClassFromMetadata lessThanOrEqualToValue:v19];

    swift_unknownObjectRelease();
    if (v22)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [v39 database];
      v37 = v22;
      v23 = v42;
      v12(v8, v10, v42);
      v24 = v41;
      v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      (*(v24 + 32))(v27 + v25, v8, v23);
      *(v27 + v26) = v1;
      v28 = v37;
      *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_74178;
      *(v29 + 24) = v27;
      v45 = sub_1008C;
      v46 = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2BB8;
      v44 = &unk_89758;
      v30 = _Block_copy(aBlock);
      v31 = v28;

      aBlock[0] = 0;
      v32 = v39;
      v33 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:v39 error:aBlock block:v30];
      _Block_release(v30);

      v34 = aBlock[0];
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if (v30)
      {
        __break(1u);
      }

      if (v33)
      {
        (*(v41 + 8))(v10, v42);
      }

      else
      {
        sub_74898();

        swift_willThrow();
        (*(v41 + 8))(v10, v42);
      }
    }

    else
    {
      sub_19A60();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();
      (*(v41 + 8))(v10, v42);
    }
  }
}

id sub_73028(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v7 = sub_74D78();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v56 - v12;
  v14 = sub_754B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v59 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v56 - v19;
  sub_75378();

  v21 = sub_754A8();
  v22 = sub_75708();
  v23 = os_log_type_enabled(v21, v22);
  v60 = a2;
  if (v23)
  {
    v24 = v15;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(a3 + 16);

    _os_log_impl(&dword_0, v21, v22, "Journaling %ld records for insert", v25, 0xCu);
    v15 = v24;
    a2 = v60;
  }

  else
  {
  }

  v27 = *(v15 + 8);
  v26 = v15 + 8;
  v58 = v27;
  v27(v20, v14);
  v28 = [v62 database];
  v29 = v28;
  v30 = *(a3 + 16);
  if (v30)
  {
    v56[0] = v28;
    v56[1] = v26;
    v57 = v14;
    v65 = _swiftEmptyArrayStorage;
    sub_75978();
    v32 = v61 + 16;
    v31 = *(v61 + 16);
    v33 = a3 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v61 = *(v61 + 72);
    v62 = v31;
    v34 = (v32 - 8);
    do
    {
      v35 = v62;
      (v62)(v13, v33, v7);
      v35(v11, v13, v7);
      v36 = type metadata accessor for InferenceRecordContainerJournalEntry();
      v37 = objc_allocWithZone(v36);
      v35(&v37[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v11, v7);
      *&v37[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance] = v63;
      v64.receiver = v37;
      v64.super_class = v36;
      objc_msgSendSuper2(&v64, "init");
      v38 = *v34;
      (*v34)(v11, v7);
      v38(v13, v7);
      sub_75958();
      v39 = v7;
      v40 = v13;
      v41 = v11;
      v42 = v32;
      v43 = v65[2];
      sub_75988();
      v32 = v42;
      v11 = v41;
      v13 = v40;
      v7 = v39;
      sub_75998();
      sub_75968();
      v33 += v61;
      --v30;
    }

    while (v30);
    a2 = v60;
    v14 = v57;
    v29 = v56[0];
  }

  sub_4E2F8();
  isa = sub_75678().super.isa;

  v65 = 0;
  v45 = [v29 addJournalEntries:isa error:&v65];

  if (v45)
  {
    v46 = v65;
  }

  else
  {
    v47 = v14;
    v48 = v65;
    sub_74898();

    swift_willThrow();
    v49 = v59;
    sub_75378();
    swift_errorRetain();
    v50 = sub_754A8();
    v51 = sub_75718();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&dword_0, v50, v51, "Failed to journal records for insert: %@", v52, 0xCu);
      sub_3D48(v53, &unk_8EB30, &unk_7A270);

      v49 = v59;
    }

    v58(v49, v47);
    if (a2)
    {
      *a2 = sub_74888();
    }
  }

  return v45;
}

uint64_t sub_735DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_73628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a3;
  v39 = a4;
  v33[1] = a1;
  v6 = sub_753A8();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_74DB8();
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = sub_74968();
  v14 = *(v33[0] - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v33[0]);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_749B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_75598();
  sub_74D48();
  isa = sub_74988().super.isa;
  (*(v19 + 8))(v22, v18);
  HDSQLiteBindUUIDToProperty();

  v25 = sub_75598();
  sub_74D68();
  v26 = sub_74918().super.isa;
  (*(v14 + 8))(v17, v33[0]);
  HDSQLiteBindDateToProperty();

  v27 = sub_75598();
  sub_74D58();
  sub_74DA8();
  (*(v34 + 8))(v13, v35);
  sub_75398();
  (*(v36 + 8))(v9, v37);
  v28 = sub_75598();

  HDSQLiteBindStringToProperty();

  v29 = sub_75598();
  v30 = sub_748A8().super.isa;
  HDSQLiteBindDataToProperty();

  v31 = sub_75598();
  HDSQLiteBindInt64ToProperty();

  v32 = sub_75598();
  HDSQLiteBindInt64ToProperty();
}

uint64_t sub_73A70(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v62 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v57[-v14];
  v16 = sub_754B8();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v57[-v21];
  v23 = [a1 protectedDatabase];
  v65 = a2;
  if (v23)
  {
    v24 = v23;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v66 = 0;
    if ([ObjCClassFromMetadata deleteEntitiesInDatabase:v24 predicate:a5 error:&v66])
    {
      v26 = v66;

      return 1;
    }

    v37 = v66;
    sub_74898();

    swift_willThrow();
    v38 = v20;
    sub_75378();
    v39 = v10;
    v40 = *(v10 + 16);
    v41 = v62;
    v42 = a3;
    v43 = v9;
    v40(v62, v42, v9);
    swift_errorRetain();
    v44 = sub_754A8();
    v45 = sub_75718();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v39;
      v47 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66 = v61;
      *v47 = 136315394;
      sub_743A8(&qword_8F9F8, &type metadata accessor for Date);
      v58 = v45;
      v48 = sub_75A38();
      v60 = v38;
      v50 = v49;
      (*(v46 + 8))(v41, v43);
      v51 = sub_31B4(v48, v50, &v66);
      v52 = v65;

      *(v47 + 4) = v51;
      *(v47 + 12) = 2112;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v53;
      v54 = v59;
      *v59 = v53;
      _os_log_impl(&dword_0, v44, v58, "Failed to delete containers after date %s: %@", v47, 0x16u);
      sub_3D48(v54, &unk_8EB30, &unk_7A270);

      sub_3940(v61);

      (*(v63 + 8))(v60, v64);
      if (!v52)
      {
        goto LABEL_14;
      }
    }

    else
    {

      (*(v39 + 8))(v41, v9);
      (*(v63 + 8))(v38, v64);
      v52 = v65;
      if (!v65)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    *v52 = sub_74888();
    goto LABEL_14;
  }

  sub_75378();
  (*(v10 + 16))(v15, a3, v9);
  v28 = sub_754A8();
  v29 = sub_75718();
  v30 = v10;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v66 = v32;
    *v31 = 136315138;
    sub_743A8(&qword_8F9F8, &type metadata accessor for Date);
    v33 = sub_75A38();
    v35 = v34;
    (*(v30 + 8))(v15, v9);
    v36 = sub_31B4(v33, v35, &v66);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v28, v29, "Failed to clean up containers before date: %s: no protected database", v31, 0xCu);
    sub_3940(v32);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  (*(v63 + 8))(v22, v64);
  v55 = v65;
  if (!v65)
  {
    return 0;
  }

  sub_19A60();
  swift_allocError();
  *v56 = 0;
  *v55 = sub_74888();
LABEL_15:

  return 0;
}

uint64_t sub_740D4()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_74178(void *a1, void *a2)
{
  v5 = *(sub_74968() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_73A70(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_74240()
{
  v1 = sub_74D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_742F0(uint64_t a1)
{
  v3 = *(sub_74D78() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_73628(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_743A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_743F0()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_744BC(uint64_t a1, void *a2)
{
  v5 = *(sub_749B8() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_714A4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_74554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_74580()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_74848();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_746C4(uint64_t a1, void *a2)
{
  v5 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_7092C(a1, a2, v9, v10, v2 + v6, v11, v12, v13);
}