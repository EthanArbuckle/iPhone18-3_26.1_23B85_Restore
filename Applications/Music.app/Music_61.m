uint64_t sub_1006C4BD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180430);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C4E74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_101180558);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1006C5104(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011803B8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1006C53B8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1006BE710(a2);
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
      sub_1006BFC14(v14, a3 & 1);
      result = sub_1006BE710(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1006C7CE0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1006C5518(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006BFFAC(v16, a4 & 1);
      result = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1006C7E3C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1006C56AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001AD48(a3, a4, sub_10000F930);
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
      sub_1006C024C(v18, a5 & 1);
      v13 = sub_10001AD48(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1006C7FA4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_1006C585C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_1006BE85C(a2 & 1);
  v11 = *(v7 + 16);
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
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1006C050C(v14, a3 & 1);
      v9 = sub_1006BE85C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1006C811C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

_OWORD *sub_1006C59A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1006C8278();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1006C07E8(v16, a4 & 1);
    v11 = sub_10001AD48(a2, a3, sub_10000F930);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000959C(v22);

    return sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

id sub_1006C5B1C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BE548(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &qword_101180590);
      v8 = sub_1006BE548(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_101192200);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&qword_101180590);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1006C5CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1006BE598(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1006C0AB4(v20, a6 & 1);
      v15 = sub_1006BE598(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1006C8430();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *sub_1006C5E68(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1006C89B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1006C1424(v16, a4 & 1);
    v11 = sub_10001AD48(a2, a3, sub_10000F930);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000959C(v22);

    return sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1006C5FE0(__int16 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1006BE7F4(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1006C8B54();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1006C16DC(v18, a5 & 1);
    v13 = sub_1006BE7F4(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 1) = HIBYTE(a1) & 1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;

    return sub_100020438(v25);
  }

  else
  {

    return sub_1006C78E4(v13, a4, a1 & 0x1FF, a2, a3, v23);
  }
}

uint64_t sub_1006C616C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_10001AD48(a2, a3, sub_10000F930);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1006C1C54(v18, a4 & 1, a5);
      v13 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1006C8E88(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

id sub_1006C6334(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BEAC4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &qword_10119EB88);
      v8 = sub_1006BEAC4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_101181F70);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&qword_10119EB88);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_1006C64D4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006C1EF4(v16, a4 & 1);
      result = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1006C8FE8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1006C6668(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10001AD48(a3, a4, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1006C2194(v18, a5 & 1);
      result = sub_10001AD48(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1006C9150();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = v23[7] + 16 * result;
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

uint64_t sub_1006C6828(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_10001AD48(a2, a3, sub_10000F930);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1006C1C54(v18, a4 & 1, a5);
      v13 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1006C8E88(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t sub_1006C6A04(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26[0] = a4;
  v26[1] = a5;
  v6 = v5;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1006BE9F0(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1006C92DC(v26[0]);
      goto LABEL_7;
    }

    sub_1006C2454(v19, a3 & 1, v26[0]);
    v24 = sub_1006BE9F0(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_1006C7A0C(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

unint64_t sub_1006C6BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  result = sub_10001AD48(a2, a3, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1006C2BB0(v18, a4 & 1, a5);
      result = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1006C97D4(a5);
      result = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * result) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
}

_OWORD *sub_1006C6DA4(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1006BE7F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1006C992C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1006C2E48(v14, a3 & 1);
    v9 = sub_1006BE7F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_10000959C(v20);

    return sub_100016270(a1, v20);
  }

  else
  {

    return sub_1006C7AC4(v9, a2, a1, v19);
  }
}

uint64_t sub_1006C6ED0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1006BE7F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = sub_10010FC20(&unk_1011A4B90);
      return sub_10006B010(a1, v17 + *(*(v18 - 8) + 72) * v10, &unk_1011A4B90);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1006C9AA8();
    goto LABEL_7;
  }

  sub_1006C30DC(v13, a3 & 1);
  v20 = sub_1006BE7F4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1006C7B2C(v10, a2, a1, v16);
}

_OWORD *sub_1006C702C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BE91C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1006C9CBC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1006C3404(v13, a3 & 1);
    v8 = sub_1006BE91C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1006C716C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1006C9E3C();
      goto LABEL_7;
    }

    sub_1006C36D4(v15, a4 & 1);
    v22 = sub_10001AD48(a2, a3, sub_10000F930);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Cache.Entry(0) - 8) + 72) * v12;

    return sub_1006CCBB0(a1, v20);
  }

LABEL_13:
  sub_1006C7C34(v12, a2, a3, a1, v18);
}

id sub_1006C72F8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BEBD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &unk_101180390);
      v8 = sub_1006BEBD0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_10118DF60);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&unk_101180390);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_1006C7498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006C4BD0(v16, a4 & 1);
      v11 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1006CA848();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_1006C7638(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1006BE7F4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006C4E74(v16, a4 & 1);
      result = sub_1006BE7F4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1006CA9B4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

_OWORD *sub_1006C77C0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100016270(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1006C782C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EditorialVideoArtworkFlavor();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

unint64_t sub_1006C78E4(unint64_t result, char a2, __int16 a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 1) = HIBYTE(a3) & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1006C793C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100016270(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1006C79B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1006C7A0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IndexPath();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

_OWORD *sub_1006C7AC4(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100016270(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1006C7B2C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_10010FC20(&unk_1011A4B90);
  result = sub_10040DFB8(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1006C7BCC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100016270(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1006C7C34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Cache.Entry(0);
  result = sub_1006CCB48(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Cache.Entry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1006C7CE0()
{
  v1 = v0;
  sub_10010FC20(&qword_101180488);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_1006C7E3C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011804B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1006C7FA4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_1006C811C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011805C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1006C8278()
{
  v1 = v0;
  sub_10010FC20(&qword_101180210);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1006C8430()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1006C85B8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011804E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_1006C8730()
{
  v1 = v0;
  v33 = type metadata accessor for EditorialVideoArtworkFlavor();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101180568);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1006C89B0()
{
  v1 = v0;
  sub_10010FC20(&unk_101180220);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1006C8B54()
{
  v1 = v0;
  sub_10010FC20(&qword_101180470);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = *v18;
        v20 = *(v18 + 1);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 24 * v17;
        *v23 = v19;
        *(v23 + 1) = v20;
        *(v23 + 8) = v21;
        *(v23 + 16) = v22;
        result = sub_100030444(v21);
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

void *sub_1006C8CD0()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 40 * v17;
        sub_1000160F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DD18(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100016270(v22, (*(v4 + 56) + v17));
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

void *sub_1006C8E88(uint64_t *a1)
{
  v2 = v1;
  sub_10010FC20(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1006C8FE8()
{
  v1 = v0;
  sub_10010FC20(&qword_101180268);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1006C9150()
{
  v1 = v0;
  sub_10010FC20(&qword_101180478);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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

void *sub_1006C92DC(uint64_t *a1)
{
  v3 = v1;
  v33 = type metadata accessor for IndexPath();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(a1);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

char *sub_1006C9554()
{
  v1 = v0;
  v35 = type metadata accessor for DisplayRepresentation();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011805C0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1006C97D4(uint64_t *a1)
{
  v2 = v1;
  sub_10010FC20(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v3 + 56) + 8 * v18);
        v23 = (*(v5 + 48) + 16 * v18);
        *v23 = v21;
        v23[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v22;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1006C992C()
{
  v1 = v0;
  sub_10010FC20(&qword_101180290);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100016270(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1006C9AA8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011A4B90);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  sub_10010FC20(&qword_10119EB70);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_10003272C(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_10040DFB8(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1006C9CBC()
{
  v1 = v0;
  sub_10010FC20(&qword_101180418);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_1006C9E3C()
{
  v1 = v0;
  v2 = type metadata accessor for Cache.Entry(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101180578);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1006CCAE0(*(v4 + 56) + v26, v30, type metadata accessor for Cache.Entry);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1006CCB48(v25, *(v27 + 56) + v26, type metadata accessor for Cache.Entry);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1006CA0A8(uint64_t *a1)
{
  v2 = v1;
  sub_10010FC20(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1006CA208()
{
  v1 = v0;
  sub_10010FC20(&qword_101180278);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1006CA358()
{
  v1 = v0;
  sub_10010FC20(&unk_1011804D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_1006CA4B8()
{
  v1 = v0;
  v2 = type metadata accessor for SidebarActivityView.Activity();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CF50);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1006CCAE0(*(v5 + 48) + v21, v4, type metadata accessor for SidebarActivityView.Activity);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1006CCB48(v4, *(v7 + 48) + v21, type metadata accessor for SidebarActivityView.Activity);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1006CA6F4(uint64_t *a1)
{
  v2 = v1;
  sub_10010FC20(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1006CA848()
{
  v1 = v0;
  sub_10010FC20(&qword_101180430);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_1006CA9B4()
{
  v1 = v0;
  sub_10010FC20(&qword_101180558);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_1006CAB2C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011803B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void (*sub_1006CAC94(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E90FC(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAD14(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E914C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAD94(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E91C0(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAE14(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100062D50(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAE94(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E9388(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CAF14;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAF1C(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E90E8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1006CAF9C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E976C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1006CB01C;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1006CB024()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CB15C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v23 = sub_10010FC20(&qword_10119EB78);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = v22 - v8;
  v10 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel;
  v11 = type metadata accessor for LibraryImport.ViewModel(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a2 + v10, 1, 1, v11);
  v12(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, 1, 1, v11);
  v12(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 1, 1, v11);
  v13 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliObserver;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  *(a2 + v13) = qword_101218B28;
  v14 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModelObserver;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModelObserver) = 0;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus) = 4294967288;
  v15 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatusObserver;

  *(a2 + v15) = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = 0;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver) = 0;
  v24 = 0;
  swift_unknownObjectWeakInit();
  v24 = a3;
  v25 = _swiftEmptyDictionarySingleton;
  v16 = swift_unknownObjectWeakAssign();
  sub_1005C277C(v16, a2 + 16);
  v17 = *(**(a2 + v15) + 216);

  v17(v18, &off_1010B2008);

  swift_beginAccess();

  sub_10010FC20(&qword_10118CA88);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_1006CCA7C();
  v19 = v23;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v19);
  *(a2 + v14) = v20;

  return a2;
}

uint64_t sub_1006CB4AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1006BCEA8(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_1006CB5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1006CB648()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101183A90);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v115 - v10;
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_91;
  }

  v13 = v12;
  v14 = [v12 window];

  v118 = v5;
  if (v14)
  {
    v15 = [v14 windowScene];

    if (!v15 || (v16 = [v15 activationState], v15, v16))
    {
      v14 = 0;
      goto LABEL_6;
    }

    v45 = [v1 view];
    if (v45)
    {
      v46 = v45;
      [v45 bounds];
      v48 = v47;
      v50 = v49;

      v18 = 0;
      v14 = v48;
      v17 = v50;
      goto LABEL_7;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_6:
  v17 = 0;
  v18 = 1;
LABEL_7:
  v116 = v2;
  v19 = objc_allocWithZone(type metadata accessor for NowPlayingViewController(0));
  v20 = sub_1005CD81C(v14, v17, v18);
  v21 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v22 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  v117 = v3;
  if (v22 && (v23 = [v22 artworkView]) != 0)
  {
    v24 = v23;
    v25 = *&v23[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
    v26 = Artwork.View.currentImage.getter();
  }

  else
  {
    v26 = 0;
  }

  v27 = *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage];
  *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage] = v26;
  v28 = v26;

  sub_1005C3E98();
  v29 = *&v1[v21];
  if (v29 && (v30 = [v29 artworkView]) != 0)
  {
    v31 = *&v30[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
    v32 = v30;
  }

  else
  {
    v31 = 0;
  }

  v33 = *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
  *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData] = v31;

  sub_1005C86CC(v33);

  v34 = *&v1[v21];
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);
  }

  else
  {
    v35 = 0;
  }

  *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager] = v35;

  sub_1005C7C64();

  v36 = *&v1[v21];
  if (v36)
  {
    v37 = *(v36 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    v38 = v37;
  }

  else
  {
    v37 = 0;
  }

  v39 = *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = v37;
  v40 = v37;
  sub_1005C40E8(v39);

  v41 = *&v1[v21];
  if (v41)
  {
    v42 = [v41 artworkView];
    if (v42)
    {
      v43 = v42;
      v44 = *&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
      if (!v44)
      {

        return;
      }

      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        goto LABEL_88;
      }

      v115[2] = v44;
      LOBYTE(aBlock) = 11;
      v51 = sub_100025CE0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v51) & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v68 = v120;
        if (v120 == 255 || (sub_10004ADFC(aBlock, v120), (v68 & 1) == 0))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v69 = v120;
          if (v120 != 255)
          {
            sub_10004ADFC(aBlock, v120);
            if ((v69 & 1) == 0)
            {
              v70 = *&v1[v21];
              if (v70)
              {
                v71 = [v70 artworkView];
                if (v71)
                {
                  v72 = v71;
                  if (*&v71[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();

                    static Published.subscript.getter();

                    v73 = v120;
                    if (v120 != 255)
                    {
                      sub_10004ADFC(aBlock, v120);
                      if ((v73 & 1) == 0)
                      {
                        sub_10065F284();
                        sub_10065D24C();
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v74 = *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (v74)
        {
          v75 = *(v74 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
          if (v75 != 3 && v75)
          {
            goto LABEL_88;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v76 = v120;
          if (v120 != 255)
          {
            sub_10004ADFC(aBlock, v120);
            if (v76)
            {
              sub_10065FB58();
              v77 = [v43 traitCollection];
              [v77 displayCornerRadius];
              v79 = v78;

              sub_10004CF20(*&v43[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v43 traitCollection], v9);
              v80 = type metadata accessor for UIView.Corner();
              v81 = *(v80 - 8);
              if ((*(v81 + 48))(v9, 1, v80) == 1)
              {
                sub_1000095E8(v9, &qword_101183A90);
                v82 = 0;
              }

              else
              {
                v90 = v118;
                UIView.Corner.radius.getter();
                (*(v81 + 8))(v9, v80);
                [v43 bounds];
                UIView.Corner.Radius.value(in:)();
                v82 = v91;
                (*(v117 + 8))(v90, v116);
              }

              [*&v43[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
              v92 = objc_opt_self();
              v93 = swift_allocObject();
              *(v93 + 16) = v43;
              *(v93 + 24) = 1;
              *(v93 + 32) = v79;
              *(v93 + 40) = v82;
              v123 = sub_1005EB1E8;
              v124 = v93;
              aBlock = _NSConcreteStackBlock;
              v120 = 1107296256;
              v94 = &unk_1010BAE20;
              goto LABEL_87;
            }
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v83 = v120;
          if (v120 == 255)
          {
            goto LABEL_88;
          }

          sub_10004ADFC(aBlock, v120);
          if (v83)
          {
            goto LABEL_88;
          }

          v84 = *&v1[v21];
          if (!v84)
          {
            goto LABEL_88;
          }

          v85 = [v84 artworkView];
          if (!v85)
          {
            goto LABEL_88;
          }

          v86 = v85;
          sub_10065ECCC();
          sub_10065EEBC();
          v87 = objc_opt_self();
          v88 = swift_allocObject();
          *(v88 + 16) = v86;
          v123 = sub_1005EAB14;
          v124 = v88;
          aBlock = _NSConcreteStackBlock;
          v120 = 1107296256;
          v89 = &unk_1010BADD0;
LABEL_83:
          v121 = sub_10002BC98;
          v122 = v89;
          v109 = _Block_copy(&aBlock);
          v110 = v86;

          [v87 animateWithDuration:v109 animations:0.2];
          _Block_release(v109);

LABEL_88:

          return;
        }

        goto LABEL_93;
      }

      v43[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] = v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];
      if ((sub_1002752B8() & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v52 = v120;
        if (v120 != 255)
        {
          sub_10004ADFC(aBlock, v120);
          if ((v52 & 1) == 0)
          {
            v53 = *&v1[v21];
            if (v53)
            {
              v54 = [v53 artworkView];
              if (v54)
              {
                v55 = v54;
                if (*&v54[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
                {
                  swift_getKeyPath();
                  v115[1] = swift_getKeyPath();

                  static Published.subscript.getter();

                  v56 = v120;
                  if (v120 != 255)
                  {
                    sub_10004ADFC(aBlock, v120);
                    if ((v56 & 1) == 0)
                    {
                      sub_10065F284();
                      sub_10065D24C();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v57 = *&v20[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v57)
      {
        v58 = *(v57 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
        if (v58 != 3 && v58)
        {
          goto LABEL_88;
        }

        if ((sub_1002752B8() & 1) == 0 || (v59 = [v1 traitCollection], v60 = objc_msgSend(v59, "horizontalSizeClass"), v59, v60 != 1))
        {
LABEL_77:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v103 = v120;
          if (v120 == 255)
          {
            goto LABEL_88;
          }

          sub_10004ADFC(aBlock, v120);
          if (v103)
          {
            goto LABEL_88;
          }

          v104 = [v1 traitCollection];
          v105 = [v104 horizontalSizeClass];

          if (v105 != 1)
          {
            goto LABEL_88;
          }

          v106 = *&v1[v21];
          if (!v106)
          {
            goto LABEL_88;
          }

          v107 = [v106 artworkView];
          if (!v107)
          {
            goto LABEL_88;
          }

          v86 = v107;
          sub_10065ECCC();
          sub_10065EEBC();
          v87 = objc_opt_self();
          v108 = swift_allocObject();
          *(v108 + 16) = v86;
          v123 = sub_1005EBDDC;
          v124 = v108;
          aBlock = _NSConcreteStackBlock;
          v120 = 1107296256;
          v89 = &unk_1010BAE70;
          goto LABEL_83;
        }

        v61 = [v1 view];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 window];

          if (v63)
          {
            [v63 frame];
            v65 = v64;
            v67 = v66;
          }

          else
          {
            v65 = 0.0;
            v67 = 0.0;
          }

          v95 = [v1 traitCollection];
          v96 = sub_1005E7D18(v95, v65, v67);

          if (v96)
          {
            sub_10065FB58();
            v97 = [v43 traitCollection];
            [v97 displayCornerRadius];
            v99 = v98;

            sub_10004CF20(*&v43[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v43 traitCollection], v11);
            v100 = type metadata accessor for UIView.Corner();
            v101 = *(v100 - 8);
            if ((*(v101 + 48))(v11, 1, v100) == 1)
            {
              sub_1000095E8(v11, &qword_101183A90);
              v102 = 0;
            }

            else
            {
              v111 = v118;
              UIView.Corner.radius.getter();
              (*(v101 + 8))(v11, v100);
              [v43 bounds];
              UIView.Corner.Radius.value(in:)();
              v102 = v112;
              (*(v117 + 8))(v111, v116);
            }

            [*&v43[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
            v92 = objc_opt_self();
            v113 = swift_allocObject();
            *(v113 + 16) = v43;
            *(v113 + 24) = 1;
            *(v113 + 32) = v99;
            *(v113 + 40) = v102;
            v123 = sub_1005EBE9C;
            v124 = v113;
            aBlock = _NSConcreteStackBlock;
            v120 = 1107296256;
            v94 = &unk_1010BAEC0;
LABEL_87:
            v121 = sub_10002BC98;
            v122 = v94;
            v114 = _Block_copy(&aBlock);
            v43 = v43;

            [v92 animateWithDuration:4 delay:v114 options:0 animations:0.35 completion:0.0];
            _Block_release(v114);
            goto LABEL_88;
          }

          goto LABEL_77;
        }

LABEL_94:
        __break(1u);
        return;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }
  }
}

void *sub_1006CC604()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      sub_10010FC20(&qword_101192018);
      result = swift_allocObject();
      *(result + 1) = xmmword_100EBC6B0;
      result[4] = v2;
      result[5] = &off_1010A3F68;
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006CC6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006CC720()
{

  return swift_deallocObject();
}

uint64_t sub_1006CC768()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1006BDA78(v2);
}

void sub_1006CC804()
{
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_barDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_appearanceState) = 0x80;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver) = 0;
  v1 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
  v2 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModelsToListenFor) = &off_10109C1B8;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC5Music16TabBarController_stackAuthorities;
  *(v0 + v5) = sub_10010DA58(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_observers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_bindings) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab) = 1;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006CC9C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator);
    v4 = Strong;

    if (v3)
    {

      if (v3 == a1)
      {
        swift_beginAccess();
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          sub_100032128();
        }
      }
    }
  }
}

unint64_t sub_1006CCA7C()
{
  result = qword_10119EB80;
  if (!qword_10119EB80)
  {
    sub_1001109D0(&qword_10119EB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119EB80);
  }

  return result;
}

uint64_t sub_1006CCAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006CCB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006CCBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Cache.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1006CCC9C()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.EditableComponents();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v4 - 8);
  v70 = &v64 - v5;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v64 - v7;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for PlaylistEditingViewController(0);
  v77.receiver = v1;
  v77.super_class = v18;
  objc_msgSendSuper2(&v77, "viewDidLoad");
  v19 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v20 = *(v10 + 16);
  v73 = v9;
  v69 = v20;
  v20(v17, &v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v9);
  result = [v1 view];
  if (result)
  {
    v22 = result;
    v66 = v19;
    v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = [objc_opt_self() systemBackgroundColor];
    [v22 setBackgroundColor:v23];

    v24 = [v1 navigationController];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 presentationController];

      if (v26)
      {
        [v26 setDelegate:v1];
      }
    }

    v75[3] = sub_10010FC20(&qword_10119EC88);
    v27 = sub_10001C8B8(v75);
    sub_1006D7488(v27);
    v76[3] = sub_10010FC20(qword_10119ECA0);
    v28 = sub_10001C8B8(v76);
    sub_1006D79B0(v28);
    swift_arrayDestroy();
    static TaskPriority.userInitiated.getter();
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
    v68 = v17;
    v30 = v17;
    v31 = v73;
    v32 = v69;
    v69(v14, v30, v73);
    v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v10 + 32))(v34 + v33, v14, v31);
    *(v34 + ((v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
    v35 = v1;
    sub_10035EB10(0, 0, v8, &unk_100EDE2D0, v34);

    sub_1000095E8(v8, &unk_101181520);
    v36 = [v35 navigationItem];
    v37 = sub_1006D20F4();
    [v36 setLeftBarButtonItem:v37];

    v38 = [v35 navigationItem];
    v39 = sub_1006D2118();
    [v38 setRightBarButtonItem:v39];

    v40 = v67;
    v32(v67, &v1[v66], v31);
    v41 = v70;
    Playlist.editableComponents.getter();
    v42 = *(v10 + 8);
    v42(v40, v31);
    v44 = v71;
    v43 = v72;
    if ((*(v71 + 48))(v41, 1, v72) == 1)
    {
      sub_1000095E8(v41, &unk_10118D240);
    }

    else
    {
      v45 = v65;
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v47 = *(v44 + 8);
      v47(v45, v43);
      v47(v41, v43);
      if (v46)
      {
        v48 = sub_1006D251C();
        [(objc_class *)v48 setEnabled:0];

        v49 = sub_1006D2B28();
        [(objc_class *)v49 setEnabled:0];

        sub_10010FC20(&qword_101183990);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100EBE270;
        v51 = *&v35[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem];
        *(v50 + 32) = v51;
        v52 = objc_opt_self();
        v53 = v51;
        *(v50 + 40) = [v52 flexibleSpaceItem];
        v54 = *&v35[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem];
        *(v50 + 48) = v54;
        v74 = v50;
        v55 = v54;
        v56 = [v35 traitCollection];
        v57 = [v56 horizontalSizeClass];

        if (v57 != 1 || (v58 = [v35 traitCollection], v59 = objc_msgSend(v58, "userInterfaceIdiom"), v58, v59 == 6))
        {
          v60 = [v52 fixedSpaceItem];
          sub_1003C063C(0, 0, v60);

          v61 = [v52 fixedSpaceItem];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        sub_100009F78(0, &qword_101181580);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v35 setToolbarItems:isa];

        v63 = [v35 navigationController];
        [v63 setToolbarHidden:0 animated:0];
      }
    }

    sub_1006DF074();
    return (v42)(v68, v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006CD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&unk_101181520);
  v5[4] = swift_task_alloc();
  sub_10010FC20(&qword_101186E00);
  v5[5] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v5[6] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_10119F040);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v5[15] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011921D8);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1006CD7D4, 0, 0);
}

uint64_t sub_1006CD7D4()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  type metadata accessor for Playlist.Entry();
  MusicLibraryRequest.init()();
  MusicLibraryRequest.ignoreExplicitContentRestrictions.setter();
  swift_getKeyPath();
  v5 = *(v3 + 16);
  v0[19] = v5;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_1006E1788(&qword_101186EC0, &type metadata accessor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_1000095E8(v1, &unk_1011814D0);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1006CD98C;
  v7 = v0[16];
  v8 = v0[14];

  return MusicLibraryRequest.response()(v8, v7);
}

uint64_t sub_1006CD98C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1006CE050;
  }

  else
  {
    v2 = sub_1006CDAA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_1006CDAA0()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  type metadata accessor for MusicLibraryPlaylistEditViewModel();
  v1(v2, v6, v4);
  MusicLibraryResponse.items.getter();
  v7 = sub_10010FC20(&qword_10118C2B0);
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = type metadata accessor for SocialProfile();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  sub_100020674(&unk_10119F050, &qword_10118C2B0);
  v0[23] = MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)();
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v10 = result;
    [result cloudAddToPlaylistBehavior];

    dispatch thunk of MusicLibraryPlaylistEditViewModel.addInsertedEntriesToLibrary.setter();
    v12 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1006CDCE8;

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006CDCE8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1006CE264;
  }

  else
  {
    v2 = sub_1006CDDFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006CDDFC()
{
  v1 = v0[23];
  v2 = v0[17];
  v17 = v0[16];
  v18 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[4];
  v15 = v3;
  v16 = v7;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v4, v3, v6);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = &protocol witness table for MainActor;
  *(v12 + 4) = v9;
  *(v12 + 5) = v1;
  (*(v5 + 32))(&v12[v11], v4, v6);

  sub_1001F4CB8(0, 0, v16, &unk_100EDE318, v12);

  (*(v5 + 8))(v15, v6);
  (*(v2 + 8))(v18, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1006CE050()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load entries and setup edit controller with error=%@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006CE264()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);
  (*(v0[17] + 8))(v0[18], v0[16]);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219770);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load entries and setup edit controller with error=%@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006CE4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_10010FC20(&qword_101184218);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10119F060);
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_10010FC20(&unk_10119F040);
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v6[21] = *(v10 + 64);
  v6[22] = swift_task_alloc();
  sub_10010FC20(&qword_101182140);
  v6[23] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_10119F068);
  v6[24] = v11;
  v6[25] = *(v11 - 8);
  v6[26] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_10119F070);
  v6[27] = v12;
  v6[28] = *(v12 - 8);
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for Playlist.EditableComponents();
  v6[30] = v13;
  v6[31] = *(v13 - 8);
  v6[32] = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  v6[33] = v14;
  v6[34] = *(v14 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  sub_10010FC20(&unk_10118D240);
  v6[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[38] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CE880, v16, v15);
}

uint64_t sub_1006CE880()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[33];
    v6 = v0[34];
    v7 = v0[30];
    v8 = v0[31];
    v9 = *(v6 + 16);
    v51 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
    v9(v3, Strong + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5);
    Playlist.editableComponents.getter();
    v49 = *(v6 + 8);
    v49(v3, v5);
    v10 = (*(v8 + 48))(v4, 1, v7);
    v11 = v0[37];
    if (v10 == 1)
    {
      sub_1000095E8(v0[37], &unk_10118D240);
    }

    else
    {
      v13 = v0[31];
      v12 = v0[32];
      v14 = v0[30];
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v48 = v9;
      v16 = *(v13 + 8);
      v16(v12, v14);
      v16(v11, v14);
      if (v15)
      {
        v46 = v0[28];
        v47 = v0[29];
        v17 = v0[26];
        v18 = v0[24];
        v19 = v0[23];
        v44 = v0[21];
        v45 = v0[27];
        v38 = v0[25];
        v40 = v0[20];
        v42 = v0[19];
        v43 = v0[22];
        v41 = v0[12];
        dispatch thunk of MusicLibraryPlaylistEditViewModel.$entries.getter();
        sub_100009F78(0, &qword_101182960);
        v20 = static OS_dispatch_queue.main.getter();
        v0[9] = v20;
        v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
        sub_100020674(&qword_10119F080, &qword_10119F068);
        sub_1000206BC();
        Publisher.receive<A>(on:options:)();
        sub_1000095E8(v19, &qword_101182140);

        v9 = v48;
        (*(v38 + 8))(v17, v18);
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v40 + 16))(v43, v41, v42);
        v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
        v23 = swift_allocObject();
        (*(v40 + 32))(v23 + v22, v43, v42);
        *(v23 + ((v44 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
        sub_100020674(&qword_10119F088, &qword_10119F070);
        v24 = Publisher<>.sink(receiveValue:)();

        (*(v46 + 8))(v47, v45);
        *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription] = v24;
      }
    }

    v25 = v0[35];
    v26 = v0[33];
    *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController] = v0[11];

    [v2 setEditing:1 animated:1];
    v27 = sub_1006D1794();
    [v27 reloadData];

    v9(v25, &v2[v51], v26);
    sub_1006CF48C();
    v49(v25, v26);
    LOBYTE(v25) = sub_100031064(1);

    if (v25)
    {
      v28 = v0[23];
      v29 = v0[18];
      v52 = v0[17];
      v30 = v0[15];
      v50 = v0[16];
      v32 = v0[13];
      v31 = v0[14];
      sub_1006D2BA8();
      swift_beginAccess();
      sub_10010FC20(&qword_101184258);
      Published.projectedValue.getter();
      swift_endAccess();

      sub_100009F78(0, &qword_101182960);
      v33 = static OS_dispatch_queue.main.getter();
      v0[8] = v33;
      v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
      sub_100020674(&qword_101184270, &qword_101184218);
      sub_1000206BC();
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v28, &qword_101182140);

      (*(v31 + 8))(v30, v32);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_10119F078, &qword_10119F060);
      v35 = Publisher<>.sink(receiveValue:)();

      (*(v52 + 8))(v29, v50);
      *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription] = v35;
    }

    else
    {
    }
  }

  v36 = v0[1];

  return v36();
}

void sub_1006CF02C(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_10010FC20(&qword_101184230);
  __chkstk_darwin(v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = (&v26 - v6);
  v7 = sub_10010FC20(&qword_10118C2B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *a1;
  v30 = *a1;
  type metadata accessor for Playlist.Entry();

  sub_10010FC20(&qword_10119F090);
  sub_100020674(&qword_10119F098, &qword_10119F090);
  MusicItemCollection.init<A>(_:)();
  sub_10010FC20(&unk_10119F040);
  MusicLibraryResponse.items.getter();
  sub_1006E2DEC();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges] = (v15 & 1) == 0;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_1006D2BA8();

    v20 = v27;
    *v27 = v14;
    v21 = type metadata accessor for PlaylistCovers.Source();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v20, v28, &qword_101184230);

    static Published.subscript.setter();
    sub_1000095E8(v20, &qword_101184230);
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101219770);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = (v15 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "🆕 Entries changed, hasTracklistChanges=%{BOOL}d", v25, 8u);
  }
}

void *sub_1006CF48C()
{
  v1 = type metadata accessor for Playlist.Variant();
  v53 = *(v1 - 8);
  __chkstk_darwin(v1);
  v49 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v3);
  v5 = &v48 - v4;
  v6 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v6 - 8);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  __chkstk_darwin(v10);
  v52 = &v48 - v11;
  v12 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Playlist.EditableComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v22 - 8);
  v24 = &v48 - v23;
  v51 = v0;
  Playlist.editableComponents.getter();
  if ((*(v19 + 48))(v24, 1, v18) == 1)
  {
    sub_1000095E8(v24, &unk_10118D240);
    return &_swiftEmptySetSingleton;
  }

  v48 = v5;
  static Playlist.EditableComponents.metadata.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v26(v24, v18);
  if ((v25 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v56 = sub_10010E580(&off_10109C1E0);
  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = type metadata accessor for UserProfile();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v14, 1, v27) != 1)
  {
    v31 = v1;
    UserProfile.socialProfile.getter();
    (*(v28 + 8))(v14, v27);
    v32 = type metadata accessor for SocialProfile();
    if ((*(*(v32 - 8) + 48))(v17, 1, v32) == 1)
    {
      goto LABEL_10;
    }

    sub_1000095E8(v17, &qword_101186E00);
    static ApplicationCapabilities.shared.getter(v57);
    v35 = v58;

    sub_100014984(v57);
    v36 = sub_10048BBDC(3, v35);

    if ((v36 & 1) == 0)
    {
      return v56;
    }

    v37 = v52;
    Playlist.variant.getter();
    v39 = v53;
    v38 = v54;
    (*(v53 + 104))(v54, enum case for Playlist.Variant.smart(_:), v1);
    (*(v39 + 56))(v38, 0, 1, v1);
    v40 = *(v3 + 48);
    v41 = v48;
    sub_1000089F8(v37, v48, &unk_10119EF50);
    sub_1000089F8(v38, v41 + v40, &unk_10119EF50);
    v42 = *(v39 + 48);
    if (v42(v41, 1, v31) == 1)
    {
      sub_1000095E8(v38, &unk_10119EF50);
      sub_1000095E8(v37, &unk_10119EF50);
      if (v42(v41 + v40, 1, v31) == 1)
      {
        v33 = &unk_10119EF50;
        v34 = v41;
        goto LABEL_11;
      }
    }

    else
    {
      v43 = v50;
      sub_1000089F8(v41, v50, &unk_10119EF50);
      if (v42(v41 + v40, 1, v31) != 1)
      {
        v44 = v41 + v40;
        v45 = v49;
        (*(v39 + 32))(v49, v44, v31);
        sub_1006E1788(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = *(v39 + 8);
        v47(v45, v31);
        sub_1000095E8(v54, &unk_10119EF50);
        sub_1000095E8(v37, &unk_10119EF50);
        v47(v43, v31);
        sub_1000095E8(v41, &unk_10119EF50);
        if (v46)
        {
          return v56;
        }

        goto LABEL_20;
      }

      sub_1000095E8(v54, &unk_10119EF50);
      sub_1000095E8(v37, &unk_10119EF50);
      (*(v39 + 8))(v43, v31);
    }

    sub_1000095E8(v41, &unk_1011A4670);
LABEL_20:
    sub_1003B37A0(&v55, 3);
    return v56;
  }

  sub_1000095E8(v14, &qword_101183AD0);
  v29 = type metadata accessor for SocialProfile();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
LABEL_10:
  v33 = &qword_101186E00;
  v34 = v17;
LABEL_11:
  sub_1000095E8(v34, v33);
  return v56;
}

void sub_1006CFD6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1006D2118();

    v3 = String.trim()();

    v4 = (v3._object >> 56) & 0xF;
    if ((v3._object & 0x2000000000000000) == 0)
    {
      v4 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    [(objc_class *)v2 setEnabled:v4 != 0];
  }
}

void sub_1006CFE60(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PlaylistEditingViewController(0);
  objc_msgSendSuper2(&v7, "viewIsAppearing:", a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      sub_10010FC20(&unk_101182D80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100EBC6B0;
      *(v6 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
      *(v6 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for Window();
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006CFFA4(void *a1)
{
  v2 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1006D2BA8();

    v10 = [a1 traitCollection];
    [v10 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v7, v4, &unk_101184290);
    static Published.subscript.setter();
    return sub_1000095E8(v7, &unk_101184290);
  }

  return result;
}

void sub_1006D0184()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PlaylistEditingViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_1006DEEF8(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006D03A4(int a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Playlist.EditableComponents();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v17 - 8);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v54 - v20;
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for PlaylistEditingViewController(0);
  v62.receiver = v3;
  v62.super_class = v24;
  objc_msgSendSuper2(&v62, "setEditing:animated:", a1 & 1, a2 & 1);
  v25 = sub_1006D1794();
  v60 = v9;
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v9 + 16))(v16, &v3[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v8);
  Playlist.editableComponents.getter();
  (*(v9 + 8))(v16, v8);
  if ((*(v61 + 48))(v23, 1, v6) == 1)
  {
    sub_1000095E8(v23, &unk_10118D240);
LABEL_4:
    v26 = 0;
    goto LABEL_6;
  }

  v54 = v8;
  v27 = v57;
  static Playlist.EditableComponents.tracklist.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v55 = a1;
  v28 = *(v61 + 8);
  v29 = v27;
  v8 = v54;
  v28(v29, v6);
  v28(v23, v6);
  LOBYTE(a1) = v55;
LABEL_6:
  v30 = v58;
  [v25 setEditing:v26 & 1];

  v31 = sub_1006D2B28();
  if ((a1 & 1) == 0)
  {
LABEL_9:
    v33 = 0;
    goto LABEL_11;
  }

  v32 = v60;
  (*(v60 + 16))(v13, &v3[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v8);
  Playlist.editableComponents.getter();
  (*(v32 + 8))(v13, v8);
  if ((*(v61 + 48))(v30, 1, v6) == 1)
  {
    sub_1000095E8(v30, &unk_10118D240);
    goto LABEL_9;
  }

  v34 = v8;
  v35 = v57;
  static Playlist.EditableComponents.tracklist.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v33 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v36 = *(v61 + 8);
  v37 = v35;
  v8 = v34;
  v36(v37, v6);
  v36(v30, v6);
LABEL_11:
  [(objc_class *)v31 setEnabled:v33 & 1];

  v38 = [*&v3[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] indexPathsForSelectedItems];
  v39 = v60;
  if (v38)
  {
    v40 = v38;
    type metadata accessor for IndexPath();
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = *(v41 + 16);

    v43 = v42 != 0;
  }

  else
  {
    v43 = 0;
  }

  v44 = v59;
  v45 = sub_1006D251C();
  if (a1)
  {
    v46 = v56;
    (*(v39 + 16))(v56, &v3[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v8);
    Playlist.editableComponents.getter();
    (*(v39 + 8))(v46, v8);
    if ((*(v61 + 48))(v44, 1, v6) == 1)
    {
      sub_1000095E8(v44, &unk_10118D240);
    }

    else
    {
      v47 = v57;
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v49 = *(v61 + 8);
      v49(v47, v6);
      v49(v44, v6);
      if (v48)
      {
        goto LABEL_19;
      }
    }
  }

  v43 = 0;
LABEL_19:
  [(objc_class *)v45 setEnabled:v43];

  v50 = sub_1006D20F4();
  [(objc_class *)v50 setEnabled:a1 & 1];

  if (a1)
  {
    v51 = sub_1006D2118();
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v51 = static UIBarButtonItem.loading.getter();
  }

  v52 = v51;
  v53 = [v3 navigationItem];
  [v53 setRightBarButtonItem:v52 animated:1];
}

uint64_t sub_1006D0BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&qword_10119EC88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1006D7488(v8);
    sub_10010FC20(&qword_10119EFC8);
    v11 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    (*(v6 + 8))(v8, v5);
    return v11;
  }

  else
  {
    strcpy(v14, "Unknown kind=");
    v14[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1006D0EA8(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10010FC20(qword_10119ECA0);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Playlist.Entry();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  if (*(v1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {

    v13 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

    v14 = IndexPath.item.getter();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v13 + 16))
    {
      v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14;
      v17 = a1;
      v18 = v6;
      v16 = *(v10 + 16);
      v16(v12, v15, v9);

      sub_1006D79B0(v8);
      v16(v5, v12, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_100009F78(0, &unk_101184790);
      UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v5, &qword_101191570);
      (*(v20 + 8))(v8, v18);
      (*(v10 + 8))(v12, v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1006D1414(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

id sub_1006D1794()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
LABEL_6:
    v21 = v2;
    return v3;
  }

  v4 = sub_1006D19A4();
  v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setDelegate:v0];
  [v7 setDataSource:v0];
  result = [v0 view];
  if (result)
  {
    v10 = result;
    [result frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v7 setFrame:{v12, v14, v16, v18}];
    [v7 setAutoresizingMask:18];

    v3 = v7;
    [v3 setKeyboardDismissMode:1];
    [v3 setAllowsMultipleSelectionDuringEditing:1];
    result = [v0 view];
    if (result)
    {
      v19 = result;
      [result addSubview:v3];

      [v0 setContentScrollView:v3 forEdge:1];
      v20 = *&v0[v1];
      *&v0[v1] = v3;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006D19A4()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout);
  }

  else
  {
    v4 = sub_1006D1A08();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006D1A08()
{
  v0 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension:1.0];
  v3 = [v1 estimatedDimension:300.0];
  v4 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = v4;
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  sub_10010FC20(&qword_101183990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6C0;
  *(v8 + 32) = v7;
  sub_100009F78(0, &unk_1011913A0);
  v9 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setBoundarySupplementaryItems:isa];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v17[4] = sub_1006E2AFC;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1005A63A8;
  v17[3] = &unk_1010BB538;
  v14 = _Block_copy(v17);

  v15 = [v13 initWithSectionProvider:v14 configuration:v0];

  _Block_release(v14);

  return v15;
}

void *sub_1006D1CD4(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_1006D1794();

    [v17 directionalLayoutMargins];
    v19 = v18;

    v20 = v19 + v19;
  }

  else
  {
    v20 = 0.0;
  }

  (*(v5 + 104))(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
  v21 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  v21(v38, 0);
  v22 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  v23 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v24 + 24) = v20;
  v23(v37, 0);
  v22(v38, 0);
  sub_100009F78(0, &qword_101191398);
  v25 = v35;
  v26 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27 || (v28 = v27, v29 = [v27 presentingViewController], v28, !v29) || (v30 = objc_msgSend(v29, "traitCollection"), v29, !v30))
  {
    v30 = [v25 traitCollection];
  }

  v31 = [v30 horizontalSizeClass];
  v32 = 0.0;
  if (v31 != 1)
  {
    v32 = Int.seconds.getter(25);
  }

  [v26 setContentInsets:{0.0, v32, 0.0, v32}];

  (*(v12 + 8))(v14, v36);
  return v26;
}

objc_class *sub_1006D213C(uint64_t *a1, uint64_t a2, UIBarButtonSystemItem a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3;
    v13.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13.is_nil = 0;
    v9.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(a3, v13, v14).super.super.isa;
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9.super.super.isa;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_1006D225C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a2;
  sub_1001F4F78(0, 0, v5, &unk_100EDE2C0, v8);
}

uint64_t sub_1006D2380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1006D2418, v6, v5);
}

uint64_t sub_1006D2418()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1001EF8A0;

    return sub_1006DC594();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_1006D2540()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1006D1794();
    v6 = [v5 indexPathsForSelectedItems];

    if (v6)
    {
      type metadata accessor for IndexPath();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0x206574656C6544;
    v9._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    aBlock = v8;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v10._countAndFlagsBits = 0x297328676E6F7320;
    v10._object = 0xE90000000000003FLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0xD000000000000020;
    v11._object = 0x8000000100E55590;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    aBlock = v8;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v12._object = 0x8000000100E555C0;
    v12._countAndFlagsBits = 0xD00000000000001BLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();

    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = String._bridgeToObjectiveC()();

    v28 = sub_1006E2990;
    v29 = v16;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10027D328;
    v27 = &unk_1010BB498;
    v18 = _Block_copy(&aBlock);

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v17 style:2 handler:v18];
    _Block_release(v18);

    [v15 addAction:v20];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v21 = String._bridgeToObjectiveC()();

    v28 = UIScreen.Dimensions.size.getter;
    v29 = 0;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10027D328;
    v27 = &unk_1010BB4C0;
    v22 = _Block_copy(&aBlock);

    v23 = [v19 actionWithTitle:v21 style:1 handler:v22];
    _Block_release(v22);

    [v15 addAction:v23];
    [v4 presentViewController:v15 animated:1 completion:0];
  }
}

void sub_1006D2B4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_1006D2BA8()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel;
  if (*&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel];
  }

  else
  {
    v2 = sub_1006D2C10(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1006D2C10(char *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v93 = &v93 - v3;
  v4 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v93 - v7;
  v8 = sub_10010FC20(&qword_101184230);
  __chkstk_darwin(v8 - 8);
  v97 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = (&v93 - v11);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v12 - 8);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v14 - 8);
  v106 = &v93 - v15;
  v16 = type metadata accessor for Playlist();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v105 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v93 - v20;
  __chkstk_darwin(v21);
  v101 = &v93 - v22;
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  v29 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v29 - 8);
  v100 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v98 = &v93 - v32;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  v110 = sub_1004F627C();
  v111 = a1;
  v33 = *(v17 + 16);
  v107 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v108 = v33;
  v34 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v33(v28, &a1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v16);
  Playlist.artworkViewModel.getter(v106);
  v35 = *(v17 + 8);
  v109 = v17 + 8;
  v35(v28, v16);
  v103 = v35;
  v33(v25, &a1[v34], v16);
  v36 = v99;
  Playlist.variant.getter();
  v35(v25, v16);
  v37 = sub_10010FC20(&unk_101182950);
  (*(*(v37 - 8) + 56))(v36, 0, 11, v37);
  v38 = Corner.medium.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  LOBYTE(a1) = *(v38 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v114);
  v41 = v98;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v106, v36, 0x3FF0000000000000, 0, v114, v39, v40, a1, v98);
  v42 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v41, v100, &unk_10119F000);

  static Published.subscript.setter();
  sub_1000095E8(v41, &unk_10119F000);
  v43 = v111;
  v44 = v107;
  v104 = v17 + 16;
  v108(v28, &v111[v107], v16);
  v45 = Playlist.name.getter();
  v47 = v46;
  v106 = v28;
  v48 = v28;
  v49 = v103;
  v103(v48, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v45;
  v113 = v47;

  static Published.subscript.setter();
  v50 = &v43[v44];
  v51 = v101;
  v52 = v108;
  v108(v101, v50, v16);
  v53 = Playlist.standardDescription.getter();
  v55 = v54;
  v49(v51, v16);
  if (v55)
  {
    v56 = v53;
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v56;
  v113 = v57;

  static Published.subscript.setter();
  v58 = v111;
  v59 = v102;
  v52(v102, &v111[v44], v16);
  v60 = Playlist.isVisible.getter();
  v49(v59, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = v60 & 1;

  static Published.subscript.setter();
  v61 = v107;
  v62 = v105;
  v52(v105, &v58[v107], v16);
  v63 = Playlist.curatorName.getter();
  v65 = v64;
  v105 = v16;
  v49(v62, v16);
  if (!v65)
  {
    v67 = v105;
    v66 = v106;
    v52(v106, &v111[v61], v105);
    v63 = sub_10034E2C4();
    v65 = v68;
    v49(v66, v67);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v63;
  v113 = v65;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 1;

  static Published.subscript.setter();
  v69 = v111;
  v71 = v105;
  v70 = v106;
  v52(v106, &v111[v61], v105);
  v72 = sub_1006CF48C();
  v49(v70, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v72;

  result = static Published.subscript.setter();
  if (!*&v69[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController])
  {
    __break(1u);
    goto LABEL_17;
  }

  v74 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  v75 = v96;
  *v96 = v74;
  v76 = type metadata accessor for PlaylistCovers.Source();
  swift_storeEnumTagMultiPayload();
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v75, v97, &qword_101184230);

  static Published.subscript.setter();
  sub_1000095E8(v75, &qword_101184230);
  result = [v111 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v77 = result;
  v78 = [result window];

  if (v78)
  {
    v79 = [v78 traitCollection];
    [v79 horizontalSizeClass];

    v80 = v95;
    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v80, v94, &unk_101184290);

    static Published.subscript.setter();

    sub_1000095E8(v80, &unk_101184290);
  }

  v81 = v106;
  v82 = v105;
  v108(v106, &v111[v107], v105);
  sub_1006CF48C();
  v103(v81, v82);
  LOBYTE(v81) = sub_100031064(0);

  if (v81)
  {
    v83 = v111;
    v84 = [v111 traitCollection];
    [v84 displayScale];
    v86 = v85;

    v87 = type metadata accessor for TaskPriority();
    v88 = v93;
    (*(*(v87 - 8) + 56))(v93, 1, 1, v87);
    type metadata accessor for MainActor();
    v89 = v110;

    v90 = v83;
    v91 = static MainActor.shared.getter();
    v92 = swift_allocObject();
    v92[2] = v91;
    v92[3] = &protocol witness table for MainActor;
    v92[4] = v90;
    v92[5] = v89;
    v92[6] = v86;
    sub_1001F4CB8(0, 0, v88, &unk_100EDE250, v92);
  }

  return v110;
}

uint64_t sub_1006D38D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1632) = a1;
  *(v6 + 1624) = a6;
  *(v6 + 1616) = a5;
  sub_10010FC20(&unk_101195200);
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = sub_10010FC20(&unk_101191420);
  *(v6 + 1680) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v6 + 1688) = v7;
  *(v6 + 1696) = *(v7 - 8);
  *(v6 + 1704) = swift_task_alloc();
  *(v6 + 1712) = swift_task_alloc();
  *(v6 + 1720) = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  *(v6 + 1728) = swift_task_alloc();
  *(v6 + 1736) = swift_task_alloc();
  *(v6 + 1744) = swift_task_alloc();
  *(v6 + 1752) = swift_task_alloc();
  *(v6 + 1760) = swift_task_alloc();
  v8 = type metadata accessor for CoverArtworkRecipe.ExpressionID();
  *(v6 + 1768) = v8;
  *(v6 + 1776) = *(v8 - 8);
  *(v6 + 1784) = swift_task_alloc();
  sub_10010FC20(&unk_10119F010);
  *(v6 + 1792) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 1800) = v9;
  *(v6 + 1808) = *(v9 - 8);
  *(v6 + 1816) = swift_task_alloc();
  *(v6 + 1824) = swift_task_alloc();
  *(v6 + 1832) = swift_task_alloc();
  v10 = type metadata accessor for CoverArtworkRecipe();
  *(v6 + 1840) = v10;
  *(v6 + 1848) = *(v10 - 8);
  *(v6 + 1856) = swift_task_alloc();
  *(v6 + 1864) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 1872) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1880) = v12;
  *(v6 + 1888) = v11;

  return _swift_task_switch(sub_1006D3C84, v12, v11);
}

uint64_t sub_1006D3C84()
{
  v103 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1808);
  v5 = *(v0 + 1800);
  v6 = *(v0 + 1792);
  v7 = *(v0 + 1616);
  v96 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v97 = *(v4 + 16);
  v97(v3, v7 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5);
  Playlist.coverArtworkRecipe.getter();
  v99 = *(v4 + 8);
  v99(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 1792), &unk_10119F010);
    goto LABEL_9;
  }

  (*(*(v0 + 1848) + 32))(*(v0 + 1864), *(v0 + 1792), *(v0 + 1840));
  sub_1006D6018(v0 + 1512);
  if (!*(v0 + 1520))
  {
    (*(*(v0 + 1848) + 8))(*(v0 + 1864), *(v0 + 1840));
LABEL_9:
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1816);
    v28 = *(v0 + 1800);
    v29 = *(v0 + 1752);
    v93 = *(v0 + 1696);
    v95 = *(v0 + 1688);
    v97(v26, v7 + v96, v28);
    Playlist.tracksTiledArtwork.getter();
    v99(v26, v28);
    v97(v27, v7 + v96, v28);
    Playlist.artwork.getter();
    v99(v27, v28);
    v30 = *(v93 + 48);
    *(v0 + 1936) = v30;
    *(v0 + 1944) = (v93 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v30(v29, 1, v95) == 1)
    {
      sub_1000095E8(*(v0 + 1752), &unk_101188920);
LABEL_24:
      v70 = *(v0 + 1936);
      v71 = *(v0 + 1728);
      v72 = *(v0 + 1688);
      sub_1000089F8(*(v0 + 1760), v71, &unk_101188920);
      if (v70(v71, 1, v72) == 1)
      {
        v73 = *(v0 + 1728);

        sub_1000095E8(v73, &unk_101188920);
        if (qword_10117FE30 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_1000060E4(v74, qword_101219770);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v0 + 1760);
        if (v77)
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "🖼️ Placeholder", v79, 2u);
        }

        sub_1000095E8(v78, &unk_101188920);

        v80 = *(v0 + 8);

        return v80();
      }

      (*(*(v0 + 1696) + 32))(*(v0 + 1704), *(v0 + 1728), *(v0 + 1688));
      v46 = sub_1006D56D0;
      goto LABEL_33;
    }

    v31 = *(v0 + 1744);
    v32 = *(v0 + 1720);
    v33 = *(v0 + 1696);
    v34 = *(v0 + 1688);
    v35 = *(v0 + 1680);
    v36 = *(v0 + 1672);
    v98 = *(v33 + 32);
    v100 = *(v0 + 1760);
    v98(v32, *(v0 + 1752), v34);
    (*(v33 + 16))(v31, v32, v34);
    (*(v33 + 56))(v31, 0, 1, v34);
    v37 = *(v36 + 48);
    sub_1000089F8(v31, v35, &unk_101188920);
    sub_1000089F8(v100, v35 + v37, &unk_101188920);
    if (v30(v35, 1, v34) == 1)
    {
      v38 = *(v0 + 1688);
      sub_1000095E8(*(v0 + 1744), &unk_101188920);
      if (v30(v35 + v37, 1, v38) == 1)
      {
        v39 = *(v0 + 1696);
        sub_1000095E8(*(v0 + 1680), &unk_101188920);
        (*(v39 + 8))(*(v0 + 1720), *(v0 + 1688));
        goto LABEL_24;
      }
    }

    else
    {
      v40 = *(v0 + 1688);
      sub_1000089F8(*(v0 + 1680), *(v0 + 1736), &unk_101188920);
      v41 = v30(v35 + v37, 1, v40);
      v42 = *(v0 + 1744);
      v43 = *(v0 + 1736);
      if (v41 != 1)
      {
        v65 = *(v0 + 1712);
        v66 = *(v0 + 1696);
        v67 = *(v0 + 1688);
        v101 = *(v0 + 1680);
        v98(v65, v35 + v37, v67);
        sub_1006E1788(&unk_10118D3D0, &type metadata accessor for Artwork);
        v68 = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v66 + 8);
        v69(v65, v67);
        sub_1000095E8(v42, &unk_101188920);
        v69(v43, v67);
        sub_1000095E8(v101, &unk_101188920);
        if (v68)
        {
          v69(*(v0 + 1720), *(v0 + 1688));
          goto LABEL_24;
        }

LABEL_17:
        v46 = sub_1006D4CC0;
LABEL_33:

        return _swift_task_switch(v46, 0, 0);
      }

      v44 = *(v0 + 1696);
      v45 = *(v0 + 1688);
      sub_1000095E8(*(v0 + 1744), &unk_101188920);
      (*(v44 + 8))(v43, v45);
    }

    sub_1000095E8(*(v0 + 1680), &unk_101191420);
    goto LABEL_17;
  }

  v90 = *(v0 + 1520);
  v88 = *(v0 + 1528);
  v89 = *(v0 + 1536);
  v91 = *(v0 + 1544);
  v92 = *(v0 + 1552);
  v94 = *(v0 + 1560);
  v87 = *(v0 + 1512);
  v8 = *(v0 + 1544);
  *(v0 + 1568) = *(v0 + 1528);
  *(v0 + 1584) = v8;
  *(v0 + 1600) = *(v0 + 1560);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1848);
  v12 = *(v0 + 1840);
  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101219770);
  (*(v11 + 16))(v10, v9, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1848);
  v86 = *(v0 + 1840);
  if (v16)
  {
    v19 = *(v0 + 1784);
    v85 = v15;
    v20 = *(v0 + 1776);
    v81 = *(v0 + 1768);
    v82 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v102 = v84;
    *v82 = 136315138;
    v83 = v14;
    CoverArtworkRecipe.expressionID.getter();
    sub_1006E1788(&unk_10119F030, &type metadata accessor for CoverArtworkRecipe.ExpressionID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v19, v81);
    v24 = *(v18 + 8);
    v24(v17, v86);
    v25 = sub_1000105AC(v21, v23, &v102);

    *(v82 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v83, v85, "🖼️ recipe=%s", v82, 0xCu);
    sub_10000959C(v84);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v86);
  }

  *(v0 + 1896) = v24;
  v47 = *(v0 + 1824);
  v48 = *(v0 + 1800);
  sub_10010FC20(&unk_10119F020);
  v49 = swift_allocObject();
  *(v0 + 1904) = v49;
  *(v49 + 16) = xmmword_100EBC6B0;
  *(v49 + 32) = v87;
  *(v49 + 40) = v90;
  v50 = *(v0 + 1584);
  *(v49 + 48) = *(v0 + 1568);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(v0 + 1600);
  v97(v47, v7 + v96, v48);
  v51 = v90;
  v52 = v88;
  v53 = v89;
  v54 = v91;
  v55 = v92;
  v56 = v94;
  v57 = Playlist.name.getter();
  v59 = v58;
  *(v0 + 1912) = v58;
  v99(v47, v48);
  v60 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
  v61 = *v60;
  v62 = v60[1];
  v63 = swift_task_alloc();
  *(v0 + 1920) = v63;
  *v63 = v0;
  v63[1] = sub_1006D484C;

  return static PlaylistCovers.carouselItems(from:playlistTitle:size:)(v49, v57, v59, v61, v62);
}

uint64_t sub_1006D484C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1904);
  *(*v1 + 1928) = a1;

  swift_setDeallocating();
  sub_100501490(v3 + 32);
  swift_deallocClassInstance();

  v4 = *(v2 + 1888);
  v5 = *(v2 + 1880);

  return _swift_task_switch(sub_1006D49CC, v5, v4);
}

uint64_t sub_1006D49CC()
{
  v1 = (v0 + 832);
  v2 = *(v0 + 1928);

  if (*(v2 + 16))
  {
    v3 = *(v0 + 1928);
    *(v0 + 1104) = *(v3 + 32);
    v4 = *(v3 + 80);
    v5 = *(v3 + 96);
    v6 = *(v3 + 64);
    *(v0 + 1120) = *(v3 + 48);
    *(v0 + 1168) = v5;
    *(v0 + 1152) = v4;
    *(v0 + 1136) = v6;
    v8 = *(v3 + 128);
    v7 = *(v3 + 144);
    v9 = *(v3 + 160);
    *(v0 + 1184) = *(v3 + 112);
    *(v0 + 1232) = v9;
    *(v0 + 1216) = v7;
    *(v0 + 1200) = v8;
    memmove((v0 + 968), (v3 + 32), 0x88uLL);
    UIScreen.Dimensions.size.getter(v10);
    sub_100500E4C(v0 + 1104, v0 + 1240);

    v11 = *(v0 + 1080);
    *(v0 + 928) = *(v0 + 1064);
    *(v0 + 944) = v11;
    *(v0 + 960) = *(v0 + 1096);
    v12 = *(v0 + 1016);
    *(v0 + 864) = *(v0 + 1000);
    *(v0 + 880) = v12;
    v13 = *(v0 + 1048);
    *(v0 + 896) = *(v0 + 1032);
    *(v0 + 912) = v13;
    v14 = *(v0 + 984);
    *v1 = *(v0 + 968);
    *(v0 + 848) = v14;
  }

  else
  {

    sub_100501134(v0 + 832);
  }

  v15 = *(v0 + 1896);
  v16 = *(v0 + 1864);
  v17 = *(v0 + 1840);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = *(v0 + 896);
  *(v0 + 1456) = *(v0 + 912);
  v19 = *(v0 + 944);
  *(v0 + 1472) = *(v0 + 928);
  *(v0 + 1488) = v19;
  v20 = *v1;
  *(v0 + 1392) = *(v0 + 848);
  v21 = *(v0 + 880);
  *(v0 + 1408) = *(v0 + 864);
  *(v0 + 1424) = v21;
  *(v0 + 1440) = v18;
  *(v0 + 1504) = *(v0 + 960);
  *(v0 + 1376) = v20;

  static Published.subscript.setter();
  sub_1000095E8(v0 + 1512, &qword_1011935A8);
  v15(v16, v17);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1006D4CC0()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1664);
  v2 = *(v0 + 1648);
  v3 = xmmword_101219030;
  v4 = 1.0 / *(v0 + 1632);
  v5 = type metadata accessor for Artwork.CropStyle();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 1952) = v7;
  *v7 = v0;
  v7[1] = sub_1006D4E54;
  v8 = *(v0 + 1664);
  v9 = *(v0 + 1648);
  v11.n128_u64[0] = v3 >> 64;
  v10.n128_u64[0] = v3;
  v12.n128_f64[0] = v4;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v8, v9, 0, 0, v10, v11, v12);
}

uint64_t sub_1006D4E54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1960) = a1;

  v5 = *(v3 + 1664);
  v6 = *(v3 + 1648);
  if (v1)
  {

    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = sub_1006D5020;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v9 = *(v4 + 1888);
    v8 = *(v4 + 1880);
    v7 = sub_1006D5370;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1006D503C()
{
  (*(v0[212] + 8))(v0[215], v0[211]);
  v1 = v0[242];
  v2 = v0[216];
  v3 = v0[211];
  sub_1000089F8(v0[220], v2, &unk_101188920);
  if (v1(v2, 1, v3) == 1)
  {
    v4 = v0[216];

    sub_1000095E8(v4, &unk_101188920);
    if (qword_10117FE30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219770);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[220];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "🖼️ Placeholder", v10, 2u);
    }

    sub_1000095E8(v9, &unk_101188920);

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[212] + 32))(v0[213], v0[216], v0[211]);

    return _swift_task_switch(sub_1006D56D0, 0, 0);
  }
}

uint64_t sub_1006D5370()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🖼️ User upload", v4, 2u);
  }

  v5 = *(v0 + 1960);
  v19 = *(v0 + 1760);
  v6 = *(v0 + 1720);
  v7 = *(v0 + 1696);
  v8 = *(v0 + 1688);
  v9 = *(v0 + 1616);

  v10 = *(v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage);
  *(v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage) = v5;
  v11 = v5;

  *&v12 = static PlaylistCovers.CarouselItem.picker.getter((v0 + 560)).n128_u64[0];
  UIScreen.Dimensions.size.getter(v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = *(v0 + 672);
  *(v0 + 792) = *(v0 + 656);
  *(v0 + 808) = v13;
  *(v0 + 824) = *(v0 + 688);
  v14 = *(v0 + 608);
  *(v0 + 728) = *(v0 + 592);
  *(v0 + 744) = v14;
  v15 = *(v0 + 640);
  *(v0 + 760) = *(v0 + 624);
  *(v0 + 776) = v15;
  v16 = *(v0 + 576);
  *(v0 + 696) = *(v0 + 560);
  *(v0 + 712) = v16;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1608) = v5;

  static Published.subscript.setter();

  (*(v7 + 8))(v6, v8);
  sub_1000095E8(v19, &unk_101188920);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1006D56D0()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1656);
  v2 = *(v0 + 1640);
  v3 = xmmword_101219030;
  v4 = 1.0 / *(v0 + 1632);
  v5 = type metadata accessor for Artwork.CropStyle();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 1968) = v7;
  *v7 = v0;
  v7[1] = sub_1006D5864;
  v8 = *(v0 + 1656);
  v9 = *(v0 + 1640);
  v11.n128_u64[0] = v3 >> 64;
  v10.n128_u64[0] = v3;
  v12.n128_f64[0] = v4;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v8, v9, 0, 0, v10, v11, v12);
}

uint64_t sub_1006D5864(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1976) = a1;

  v5 = *(v3 + 1656);
  v6 = *(v3 + 1640);
  if (v1)
  {

    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = sub_1006D5A30;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v9 = *(v4 + 1888);
    v8 = *(v4 + 1880);
    v7 = sub_1006D5CC0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1006D5A4C()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];

  (*(v2 + 8))(v1, v3);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219770);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[220];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "🖼️ Placeholder", v9, 2u);
  }

  sub_1000095E8(v8, &unk_101188920);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006D5CC0()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🖼️ tracksTiledArtwork", v4, 2u);
  }

  v5 = *(v0 + 1976);
  v6 = *(v0 + 1760);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);

  static PlaylistCovers.CarouselItem.tracksTiled(image:)(v5, v0 + 16);
  v10 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v11 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v11;
  v12 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  v13 = *(v0 + 48);
  v14 = *(v0 + 64);
  *(v0 + 184) = v13;
  *(v0 + 200) = v14;
  *(v0 + 216) = v10;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v12;
  UIScreen.Dimensions.size.getter(*&v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = *(v0 + 232);
  v16 = *(v0 + 264);
  *(v0 + 384) = *(v0 + 248);
  *(v0 + 400) = v16;
  *(v0 + 416) = *(v0 + 280);
  v17 = *(v0 + 168);
  v18 = *(v0 + 200);
  *(v0 + 320) = *(v0 + 184);
  *(v0 + 336) = v18;
  *(v0 + 352) = *(v0 + 216);
  *(v0 + 368) = v15;
  *(v0 + 288) = *(v0 + 152);
  *(v0 + 304) = v17;

  sub_100500E4C(v0 + 16, v0 + 424);
  static Published.subscript.setter();

  sub_100500EA8(v0 + 16);
  (*(v8 + 8))(v7, v9);
  sub_1000095E8(v6, &unk_101188920);

  v19 = *(v0 + 8);

  return v19();
}

void sub_1006D6018(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoverArtworkRecipe.ExpressionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CoverArtworkRecipe.version.getter() == 3157553 && v6 == 0xE300000000000000)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v19 = 0;
      v9 = 0uLL;
      goto LABEL_13;
    }
  }

  v8 = CoverArtworkRecipe.backgroundColor.getter();
  v9 = 0uLL;
  if (!v8)
  {
    v19 = 0;
LABEL_13:
    v20 = 0uLL;
    v21 = 0uLL;
    goto LABEL_18;
  }

  v10 = v8;
  v11 = CoverArtworkRecipe.primaryColor.getter();
  if (v11)
  {
    v12 = v11;
    v13 = CoverArtworkRecipe.secondaryColor.getter();
    if (v13)
    {
      v14 = v13;
      v15 = CoverArtworkRecipe.tertiaryColor.getter();
      if (v15)
      {
        v16 = v15;
        CoverArtworkRecipe.expressionID.getter();
        v17 = CoverArtworkRecipe.ExpressionID.rawValue.getter();
        (*(v3 + 8))(v5, v2);
        v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v17);
        if (v18 != 8)
        {
          v44 = v18;
          [objc_allocWithZone(UIColor) initWithCGColor:v10];
          [objc_allocWithZone(UIColor) initWithCGColor:v12];
          [objc_allocWithZone(UIColor) initWithCGColor:v14];
          [objc_allocWithZone(UIColor) initWithCGColor:v16];
          UIScreen.Dimensions.size.getter(v22);
          v24 = v23;
          v42 = v25;
          v43 = v23;
          v26 = v25;
          v28 = v27;
          v41 = v27;
          v30 = v29;
          v31 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
          v32 = *v31;
          v33 = v31[1];
          sub_100009F78(0, &qword_1011951F0);
          v34 = [swift_getObjCClassFromMetadata() preferredFormat];
          v35 = v28;
          v36 = v44;
          v37 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v24, v26, v35, v30, v34, v44, v32, v33);
          v39 = v38;

          PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)(v36, v37, v43, v42, v41, v30, v39, v45);
          v19 = v45[0];
          v9 = v46;
          v20 = v47;
          v21 = v48;
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v19 = 0;
  v20 = 0uLL;
  v21 = 0uLL;
  v9 = 0uLL;
LABEL_18:
  *a1 = v19;
  *(a1 + 8) = v9;
  *(a1 + 24) = v20;
  *(a1 + 40) = v21;
}

uint64_t sub_1006D6360()
{
  v1 = type metadata accessor for Playlist();
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource))
  {
    v7 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource);
LABEL_8:

    return v7;
  }

  result = (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v3);
  v9 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  if (v11)
  {
    type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
    swift_allocObject();

    v7 = sub_1006E2408(v5, v10, v11);

    *(v0 + v6) = v7;

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1006D64F0()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView);
  }

  else
  {
    v4 = v0;
    sub_1006D6360();
    type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
    sub_1006E1788(&unk_10119EF00, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource);
    ObservedObject.init(wrappedValue:)();
    v5 = objc_allocWithZone(sub_10010FC20(&unk_10119EFF0));
    v6 = _UIHostingView.init(rootView:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1006D65D8()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = [v1 isEditing];
  if (v16)
  {
    v34 = v5;
    v17 = *(v3 + 16);
    v36 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
    v37 = v17;
    v38 = v3 + 16;
    v17(v15, &v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v2);
    v18 = Playlist.name.getter();
    v20 = v19;
    v35 = *(v3 + 8);
    v35(v15, v2);
    sub_1006D2BA8();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v18 == v39 && v20 == v40)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v37(v11, &v1[v36], v2);
    v23 = Playlist.standardDescription.getter();
    v25 = v24;
    v35(v11, v2);
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v26 == v39 && v27 == v40)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
LABEL_23:
        LOBYTE(v16) = 1;
        return v16 & 1;
      }
    }

    v37(v8, &v1[v36], v2);
    v29 = Playlist.isVisible.getter();
    v35(v8, v2);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    LOBYTE(v16) = 1;
    if (v29 != 2 && ((v39 ^ v29) & 1) == 0)
    {
      v30 = v34;
      v37(v34, &v1[v36], v2);
      sub_1006CF48C();
      v35(v30, v2);
      v31 = sub_100031064(0);

      if (v31)
      {
        LOBYTE(v16) = sub_1006D6A4C();
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }
  }

  return v16 & 1;
}

uint64_t sub_1006D6A4C()
{
  sub_1006D2BA8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v114 = v57;
  v115 = v58;
  v116 = v59;
  v110 = v53;
  v111 = v54;
  v113 = v56;
  v112 = v55;
  v109 = v52;
  v108 = v51;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v117[6] = v57;
  v117[7] = v58;
  v118 = v59;
  v117[2] = v53;
  v117[3] = v54;
  v117[5] = v56;
  v117[4] = v55;
  v117[1] = v52;
  v117[0] = v51;
  v125 = v57;
  v126 = v58;
  v127 = v59;
  v121 = v53;
  v122 = v54;
  v123 = v55;
  v124 = v56;
  v119 = v51;
  v120 = v52;
  if (sub_1000D8FCC(&v119) == 1)
  {
    sub_100502390(&v100);
  }

  else
  {
    v55 = v123;
    v56 = v124;
    v57 = v125;
    v58 = v126;
    v51 = v119;
    v52 = v120;
    v53 = v121;
    v54 = v122;
    UIScreen.Dimensions.size.getter(*&v121);
    sub_100501164(&v119, &v83);
    v104 = v55;
    v105 = v56;
    v106 = v57;
    v107 = v58;
    v100 = v51;
    v101 = v52;
    v102 = v53;
    v103 = v54;
  }

  v89 = v114;
  v90 = v115;
  v91 = v116;
  v85 = v110;
  v86 = v111;
  v88 = v113;
  v87 = v112;
  v83 = v108;
  v84 = v109;
  if (sub_1000D8FCC(&v83) == 1)
  {
    sub_100502390(&v75);
  }

  else
  {
    v55 = v87;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v51 = v83;
    v52 = v84;
    v53 = v85;
    v54 = v86;
    UIScreen.Dimensions.size.getter(*&v85);
    sub_100501164(&v83, &v75);
    v79 = v55;
    v80 = v56;
    v81 = v57;
    v82 = v58;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v78 = v54;
  }

  v55 = v104;
  v56 = v105;
  v57 = v106;
  v58 = v107;
  v51 = v100;
  v52 = v101;
  v53 = v102;
  v54 = v103;
  v61 = v77;
  v62 = v78;
  v59 = v75;
  v60 = v76;
  v65 = v81;
  v66 = v82;
  v63 = v79;
  v64 = v80;
  v69 = v102;
  v70 = v103;
  v67 = v100;
  v68 = v101;
  v73 = v106;
  v74 = v107;
  v71 = v104;
  v72 = v105;
  if (sub_1000D8FCC(&v67) != 1)
  {
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    if (sub_1005024E0(&v43) == 1)
    {
      v39 = v79;
      v40 = v80;
      v41 = v81;
      v42 = v82;
      v35 = v75;
      v36 = v76;
      v37 = v77;
      v38 = v78;
      if (sub_1000D8FCC(&v35) != 1)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        if (sub_1005024E0(&v27) == 1)
        {
          v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage);
          swift_getKeyPath();
          swift_getKeyPath();
          v3 = v2;

          static Published.subscript.getter();

          v4 = v96;
          if (v2)
          {
            if (v96)
            {
              sub_100009F78(0, &qword_101183B40);
              v5 = static NSObject.== infix(_:_:)();
              sub_1000095E8(v117, &qword_1011842B0);
              sub_1000095E8(&v108, &qword_1011842B0);
              sub_1000095E8(&v51, &unk_10119EFE0);

              v1 = v5 ^ 1;
              return v1 & 1;
            }

            sub_1000095E8(v117, &qword_1011842B0);
            sub_1000095E8(&v108, &qword_1011842B0);
            sub_1000095E8(&v51, &unk_10119EFE0);
          }

          else
          {
            sub_1000095E8(v117, &qword_1011842B0);
            sub_1000095E8(&v108, &qword_1011842B0);
            sub_1000095E8(&v51, &unk_10119EFE0);
            if (!v4)
            {
              v1 = 0;
              return v1 & 1;
            }
          }

LABEL_18:
          v1 = 1;
          return v1 & 1;
        }
      }
    }

    else
    {
      v39 = v79;
      v40 = v80;
      v41 = v81;
      v42 = v82;
      v35 = v75;
      v36 = v76;
      v37 = v77;
      v38 = v78;
      if (sub_1000D8FCC(&v35) != 1)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        if (sub_1005024E0(&v27) != 1)
        {
          v7 = *(&v44 + 1);
          v8 = v45;
          v9 = *(&v28 + 1);
          v10 = v29;
          v11 = v30;
          v12 = v31;
          v24 = v47;
          v22 = *(&v45 + 1);
          v23 = v46;
          v25 = *(&v31 + 1);
          v26 = *(&v47 + 1);
          v21 = v31;
          if (v45)
          {
            if (v29)
            {
              LOBYTE(v96) = BYTE8(v28);
              v97 = v29;
              v98 = v30;
              v99 = v31;
              v92[0] = BYTE8(v44);
              v93 = v45;
              v94 = v46;
              v95 = v47;
              v19 = *(&v29 + 1);
              v20 = v30;
              v13 = *(&v45 + 1);
              v14 = v46;
              v16 = v45;
              v17 = *(&v44 + 1);
              v15 = v29;
              sub_1001F43A0(*(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
              sub_1001F43A0(v9, v15, *(&v10 + 1), v20, *(&v11 + 1), v12, v25);
              sub_1001F43A0(v7, v16, v13, v14, *(&v14 + 1), v24, v26);
              sub_1001F43A0(v9, v15, v19, v20, *(&v20 + 1), v12, v25);
              v18 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v92, &v96);
              sub_1001F4464(v9, v15, v19, v20, *(&v20 + 1), v12, v25);
              sub_1001F4464(v17, v16, v22, v23, *(&v23 + 1), v24, v26);
              sub_1000095E8(v117, &qword_1011842B0);
              sub_1000095E8(&v108, &qword_1011842B0);
              sub_1000095E8(&v51, &unk_10119EFE0);
              sub_1001F4464(v9, v15, v19, v20, *(&v20 + 1), v21, v25);
              sub_1001F4464(v17, v16, v22, v23, *(&v23 + 1), v24, v26);
              v1 = v18 ^ 1;
              return v1 & 1;
            }

            sub_1001F43A0(*(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
            sub_1001F43A0(v9, 0, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1));
            sub_1000095E8(v117, &qword_1011842B0);
            sub_1000095E8(&v108, &qword_1011842B0);
            sub_1000095E8(&v51, &unk_10119EFE0);
          }

          else
          {
            sub_1001F43A0(*(&v44 + 1), 0, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
            sub_1001F43A0(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1));
            sub_1000095E8(v117, &qword_1011842B0);
            sub_1000095E8(&v108, &qword_1011842B0);
            sub_1000095E8(&v51, &unk_10119EFE0);
            if (!v10)
            {
              sub_1001F4464(v7, 0, v22, v23, *(&v23 + 1), v24, v26);
              v1 = 0;
              return v1 & 1;
            }
          }

          sub_1001F4464(v7, v8, v22, v23, *(&v23 + 1), v24, v26);
          sub_1001F4464(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v21, v25);
          goto LABEL_18;
        }
      }
    }

    sub_1000095E8(v117, &qword_1011842B0);
    sub_1000095E8(&v108, &qword_1011842B0);
    sub_1000095E8(&v51, &unk_10119EFE0);
    goto LABEL_18;
  }

  sub_1000095E8(v117, &qword_1011842B0);
  sub_1000095E8(&v108, &qword_1011842B0);
  v47 = v79;
  v48 = v80;
  v49 = v81;
  v50 = v82;
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v46 = v78;
  v1 = sub_1000D8FCC(&v43) != 1;
  sub_1000095E8(&v51, &unk_10119EFE0);
  return v1 & 1;
}

uint64_t sub_1006D7488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10119EFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10119EFC0);
  v10 = sub_10010FC20(&qword_10119EC88);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10119EFC0);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10010FC20(&qword_10119EFC8);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10119EFC0);
  return swift_endAccess();
}

void sub_1006D7704(void *a1)
{
  v2 = _s8MetadataO4ViewVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10119EFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
    swift_beginAccess();
    sub_1000089F8(&v13[v14], v11, &qword_10119EFD0);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      sub_1000095E8(v11, &qword_10119EFD0);
      sub_1006D2BA8();
      sub_1004F43FC(v5);
      sub_1006E1C24(v5, v8);
      (*(v3 + 56))(v8, 0, 1, v2);
      swift_beginAccess();
      sub_10006B010(v8, &v13[v14], &qword_10119EFD0);
      swift_endAccess();
      sub_1006DFD34(v5, v13);
      sub_1006E2FFC(v5, _s8MetadataO4ViewVMa);
      v15 = *&v13[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView];
      *&v13[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView] = a1;
      v16 = a1;
    }

    else
    {

      sub_1000095E8(v11, &qword_10119EFD0);
    }
  }
}

uint64_t sub_1006D79B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10119EF98);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10119EF98);
  v10 = sub_10010FC20(qword_10119ECA0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10119EF98);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Playlist.Entry();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10119EF98);
  return swift_endAccess();
}

uint64_t sub_1006D7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v6 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v6 - 8);
  v38 = v31 - v7;
  v39 = type metadata accessor for UICellAccessory.ReorderOptions();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_10119EFA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - v17;
  v42 = a3;
  type metadata accessor for PlaylistEditingViewController.Cell(0);
  sub_1006E1788(&qword_10119EFA8, type metadata accessor for PlaylistEditingViewController.Cell);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v43[3] = v15;
  v43[4] = sub_100020674(&unk_10119EFB0, &qword_10119EFA0);
  sub_10001C8B8(v43);
  UIHostingConfiguration.margins(_:_:)();
  (*(v16 + 8))(v18, v15);
  v41 = a1;
  UICollectionViewCell.contentConfiguration.setter();
  sub_10010FC20(&unk_101184740);
  v31[1] = *(*(type metadata accessor for UICellAccessory() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_100EBDC20;
  v19 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
  v33 = v12;
  v20 = *(v12 + 104);
  v21 = v11;
  v20(v14, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v11);
  if (qword_10117F290 != -1)
  {
    swift_once();
  }

  v22 = v35;
  v23 = sub_1000060E4(v35, qword_101218718);
  v24 = v34;
  v25 = v32;
  (*(v34 + 16))(v32, v23, v22);
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v24 + 8))(v25, v22);
  v26 = *(v33 + 8);
  v26(v14, v21);
  v20(v14, v19, v21);
  v27 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  v28 = v36;
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  static UICellAccessory.reorder(displayed:options:)();
  (*(v37 + 8))(v28, v39);
  v26(v14, v21);
  UICollectionViewListCell.accessories.setter();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_1006D8258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Entry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(type metadata accessor for PlaylistEditingViewController.Cell(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006D8304(void *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    static UIBackgroundConfiguration.listCell()();
    v16 = type metadata accessor for UICellConfigurationState();
    v29[3] = v16;
    v29[4] = &protocol witness table for UICellConfigurationState;
    v17 = sub_10001C8B8(v29);
    (*(*(v16 - 8) + 16))(v17, a2, v16);
    UIBackgroundConfiguration.updated(for:)();
    v18 = *(v8 + 8);
    v18(v10, v7);
    sub_10000959C(v29);
    v19 = [v15 traitCollection];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 6)
    {
      v21 = sub_1006D1794();
      [v21 directionalLayoutMargins];
      MinX = v22;
    }

    else
    {
      [a1 frame];
      MinX = CGRectGetMinX(v30);
    }

    v24 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v25 + 8) = *(v25 + 8) - MinX;
    v24(v29, 0);
    v26 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v27 + 24) = *(v27 + 24) - MinX;
    v26(v29, 0);
    v28 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    UICollectionViewCell.backgroundConfiguration.setter();

    return (v18)(v13, v7);
  }

  return result;
}

uint64_t sub_1006D864C@<X0>(uint64_t a1@<X8>)
{
  v141 = a1;
  v140 = sub_10010FC20(&qword_10119F150);
  __chkstk_darwin(v140);
  v117 = (&v114 - v2);
  v136 = sub_10010FC20(&qword_10119F158);
  __chkstk_darwin(v136);
  v139 = &v114 - v3;
  v4 = sub_10010FC20(&qword_10119F160);
  __chkstk_darwin(v4 - 8);
  v116 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = (&v114 - v7);
  v137 = sub_10010FC20(&qword_10119F168);
  __chkstk_darwin(v137);
  v135 = (&v114 - v8);
  v9 = sub_10010FC20(&unk_10119F170);
  __chkstk_darwin(v9 - 8);
  v138 = &v114 - v10;
  v134 = type metadata accessor for DynamicTypeSize();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v12 - 8);
  v127 = &v114 - v13;
  v130 = type metadata accessor for Text.Suffix();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10010FC20(&unk_10119F180);
  __chkstk_darwin(v131);
  v144 = &v114 - v15;
  v124 = type metadata accessor for ArtworkImage.ReusePolicy();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v114 - v21;
  v23 = type metadata accessor for Playlist.Entry.InternalItem();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&unk_1011A1400);
  v119 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v114 - v28;
  v121 = sub_10010FC20(&unk_10119F190);
  v123 = *(v121 - 8);
  __chkstk_darwin(v121);
  v31 = &v114 - v30;
  v32 = sub_10010FC20(&qword_101193608);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v118 = &v114 - v34;
  v126 = sub_10010FC20(&qword_10119F1A0);
  __chkstk_darwin(v126);
  v125 = &v114 - v35;
  v36 = sub_10010FC20(&qword_10119F1A8);
  __chkstk_darwin(v36 - 8);
  v143 = &v114 - v37;
  v142 = v1;
  Playlist.Entry.internalItem.getter();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v23, &protocol witness table for Playlist.Entry.InternalItem, v22);
  (*(v24 + 8))(v26, v23);
  v38 = sub_10010FC20(&unk_101182950);
  (*(*(v38 - 8) + 56))(v19, 1, 11, v38);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x4048000000000000, 0, 0x4048000000000000, 0, 0, 1, 2, &v152);
  v39 = v122;
  v40 = v120;
  v41 = v124;
  (*(v122 + 104))(v120, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v124);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v22, v19, &v152, v40, v29);
  (*(v39 + 8))(v40, v41);
  sub_1006E2FFC(v19, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v22, &unk_10118A5E0);
  Corner.small.unsafeMutableAddressor();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.corner(_:)();
  (*(v119 + 8))(v29, v27);
  Border.artwork.unsafeMutableAddressor();

  *&v153 = v27;
  *(&v153 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v118;
  v44 = v121;
  View.border(_:corner:)();

  (*(v123 + 8))(v31, v44);
  v45 = v43 + *(v33 + 44);
  *v45 = 0x3FF0000000000000;
  *(v45 + 8) = 0;
  v46 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v46 lineHeight];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v47 = v125;
  sub_10003D17C(v43, v125, &qword_101193608);
  v48 = (v47 + *(v126 + 36));
  v49 = v158;
  v48[4] = v157;
  v48[5] = v49;
  v48[6] = v159;
  v50 = v154;
  *v48 = v153;
  v48[1] = v50;
  v51 = v156;
  v48[2] = v155;
  v48[3] = v51;
  sub_1006E305C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v47, &qword_10119F1A0);
  v145 = Playlist.Entry.title.getter();
  v146 = v52;
  sub_100009838();
  v53 = Text.init<A>(_:)();
  v55 = v54;
  v145 = v53;
  v146 = v54;
  LOBYTE(v22) = v56 & 1;
  v147 = v56 & 1;
  v148 = v57;
  v58 = v127;
  Playlist.Entry.contentRating.getter();
  v59 = TextBadge.init(for:isPlayable:)(v58, 1);
  v60 = TextBadge.view.getter(v59);
  v62 = v61;
  LOBYTE(v43) = v63;
  v64 = v128;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v60, v62, v43 & 1);

  v65 = v144;
  View.textSuffix(_:)();
  (*(v129 + 8))(v64, v130);
  sub_10011895C(v53, v55, v22);

  LODWORD(v60) = static HierarchicalShapeStyle.primary.getter();
  *(v65 + *(sub_10010FC20(&qword_101198B50) + 36)) = v60;
  v66 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v68 = (v65 + *(v131 + 36));
  *v68 = KeyPath;
  v68[1] = v66;
  v145 = Playlist.Entry.artistName.getter();
  v146 = v69;
  v70 = Text.init<A>(_:)();
  v72 = v71;
  LOBYTE(v64) = v73;
  LODWORD(v145) = static HierarchicalShapeStyle.secondary.getter();
  v74 = Text.foregroundStyle<A>(_:)();
  v76 = v75;
  LOBYTE(v65) = v77;
  sub_10011895C(v70, v72, v64 & 1);

  static Font.footnote.getter();
  v129 = Text.font(_:)();
  v130 = v78;
  v80 = v79;
  v131 = v81;

  sub_10011895C(v74, v76, v65 & 1);

  type metadata accessor for PlaylistEditingViewController.Cell(0);
  v82 = v132;
  sub_10056CABC(v132);
  LOBYTE(v72) = DynamicTypeSize.isAccessibilitySize.getter();
  v83 = *(v133 + 8);
  v84 = v134;
  v83(v82, v134);
  if (v72)
  {
    v85 = 2;
  }

  else
  {
    v85 = 1;
  }

  v86 = swift_getKeyPath();
  sub_10056CABC(v82);
  v87 = DynamicTypeSize.isAccessibilitySize.getter();
  v83(v82, v84);
  if (v87)
  {
    v88 = static HorizontalAlignment.leading.getter();
    v89 = v135;
    *v135 = v88;
    v89[1] = 0;
    *(v89 + 16) = 0;
    v90 = v89;
    v91 = *(sub_10010FC20(&qword_10119F1D8) + 44);
    v133 = v86;
    v92 = v90 + v91;
    v93 = v80 & 1;
    v94 = v129;
    v95 = v130;
    sub_10021D0C0(v129, v130, v93);
    v96 = v131;

    v97 = static VerticalAlignment.center.getter();
    v98 = v115;
    *v115 = v97;
    *(v98 + 8) = 0;
    *(v98 + 16) = 1;
    v99 = sub_10010FC20(&qword_10119F1E0);
    sub_1006D9A34(v143, v144, v98 + *(v99 + 44));
    v100 = v116;
    sub_1000089F8(v98, v116, &qword_10119F160);
    sub_1000089F8(v100, v92, &qword_10119F160);
    v101 = v92 + *(sub_10010FC20(&qword_10119F1E8) + 48);
    *v101 = v94;
    *(v101 + 8) = v95;
    *(v101 + 16) = v93;
    v102 = v133;
    *(v101 + 24) = v96;
    *(v101 + 32) = v102;
    *(v101 + 40) = v85;
    *(v101 + 48) = 0;
    sub_10021D0C0(v94, v95, v93);

    sub_10021D0C0(v94, v95, v93);

    sub_1000095E8(v98, &qword_10119F160);
    sub_10011895C(v94, v95, v93);

    sub_1000095E8(v100, &qword_10119F160);
    sub_10011895C(v94, v95, v93);

    v103 = v135;
    sub_1000089F8(v135, v139, &qword_10119F168);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119F1C8, &qword_10119F168);
    sub_100020674(&qword_10119F1D0, &qword_10119F150);
    v104 = v138;
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v94, v95, v93);

    v105 = v103;
    v106 = &qword_10119F168;
  }

  else
  {
    v107 = v129;
    v145 = v129;
    v108 = v130;
    v146 = v130;
    v109 = v80 & 1;
    v147 = v109;
    v148 = v131;
    v149 = v86;
    v150 = v85;
    v151 = 0;

    sub_10021D0C0(v107, v108, v109);

    v110 = static VerticalAlignment.center.getter();
    v111 = v117;
    *v117 = v110;
    *(v111 + 8) = 0;
    *(v111 + 16) = 1;
    v112 = sub_10010FC20(&qword_10119F1C0);
    sub_1006D9D84(v143, v144, &v145, v111 + *(v112 + 44));
    sub_10011895C(v107, v108, v109);

    sub_1000089F8(v111, v139, &qword_10119F150);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119F1C8, &qword_10119F168);
    sub_100020674(&qword_10119F1D0, &qword_10119F150);
    v104 = v138;
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v107, v108, v109);

    v105 = v111;
    v106 = &qword_10119F150;
  }

  sub_1000095E8(v105, v106);
  sub_10003D17C(v104, v141, &unk_10119F170);
  sub_1000095E8(v144, &unk_10119F180);
  return sub_1000095E8(v143, &qword_10119F1A8);
}

uint64_t sub_1006D9A34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_10010FC20(&unk_10119F180);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10010FC20(&qword_10119F1F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  type metadata accessor for PlaylistEditingViewController.Cell(0);
  sub_10056CABC(v13);
  (*(v8 + 104))(v10, enum case for DynamicTypeSize.accessibility3(_:), v7);
  v20 = static DynamicTypeSize.< infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v10, v7);
  v21(v13, v7);
  if (v20)
  {
    sub_1000089F8(v26, v19, &qword_10119F1A8);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_10010FC20(&qword_10119F1A8);
  (*(*(v23 - 8) + 56))(v19, v22, 1, v23);
  sub_1000089F8(v19, v16, &qword_10119F1F0);
  sub_1000089F8(v27, v6, &unk_10119F180);
  sub_1000089F8(v16, a3, &qword_10119F1F0);
  v24 = sub_10010FC20(&qword_10119F1F8);
  sub_1000089F8(v6, a3 + *(v24 + 48), &unk_10119F180);
  sub_1000095E8(v19, &qword_10119F1F0);
  sub_1000095E8(v6, &unk_10119F180);
  return sub_1000095E8(v16, &qword_10119F1F0);
}

uint64_t sub_1006D9D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  v6 = sub_10010FC20(&qword_10119F1A8);
  __chkstk_darwin(v6 - 8);
  v32 = &v28[-v7];
  v8 = sub_10010FC20(&unk_10119F180);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9];
  v11 = sub_10010FC20(&qword_10119F200);
  __chkstk_darwin(v11 - 8);
  v31 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v28[-v14];
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = &v15[*(sub_10010FC20(&qword_10119F208) + 44)];
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);
  v21 = *(a3 + 32);
  v30 = *(a3 + 40);
  v29 = *(a3 + 48);
  sub_1000089F8(a2, v10, &unk_10119F180);
  sub_1000089F8(v10, v16, &unk_10119F180);
  v22 = v16 + *(sub_10010FC20(&qword_10119F210) + 48);
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  *(v22 + 40) = v30;
  *(v22 + 48) = v29;
  sub_10021D0C0(v17, v18, v19);

  sub_10021D0C0(v17, v18, v19);

  sub_10011895C(v17, v18, v19);

  sub_1000095E8(v10, &unk_10119F180);
  v23 = v32;
  sub_1000089F8(v33, v32, &qword_10119F1A8);
  v24 = v31;
  sub_1000089F8(v15, v31, &qword_10119F200);
  v25 = v34;
  sub_1000089F8(v23, v34, &qword_10119F1A8);
  v26 = sub_10010FC20(&qword_10119F218);
  sub_1000089F8(v24, v25 + *(v26 + 48), &qword_10119F200);
  sub_1000095E8(v15, &qword_10119F200);
  sub_1000095E8(v24, &qword_10119F200);
  return sub_1000095E8(v23, &qword_10119F1A8);
}

void sub_1006DA0D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  if (*(a1 + 16))
  {
    if (qword_10117FE30 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101219770);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      type metadata accessor for Track();
      v12 = Array.description.getter();
      v14 = sub_1000105AC(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "⏬️ Will add entries=%s", v10, 0xCu);
      sub_10000959C(v11);
    }

    static TaskPriority.userInitiated.getter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    type metadata accessor for MainActor();

    v16 = v2;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = a1;
    sub_1001F4CB8(0, 0, v6, &unk_100EDDFE8, v18);
  }
}

uint64_t sub_1006DA354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_10010FC20(&unk_101181520);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1006DA428, v7, v6);
}

void sub_1006DA428()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  v0[10] = v1;
  if (v1)
  {
    v0[2] = v0[4];
    v6 = &async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:);

    v2 = swift_task_alloc();
    v0[11] = v2;
    v3 = sub_10010FC20(&qword_10119ED90);
    v4 = type metadata accessor for Track();
    v0[12] = v4;
    v5 = sub_100020674(&qword_101192820, &qword_10119ED90);
    *v2 = v0;
    v2[1] = sub_1006DA588;

    (v6)(v0 + 2, v3, v4, v5, &protocol witness table for Track);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006DA588()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1006DA808;
  }

  else
  {
    v5 = sub_1006DA6C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006DA6C0()
{

  v1 = *(v0 + 40);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v3;

  sub_1001F4CB8(0, 0, v1, &unk_100EDDFF8, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006DA808()
{
  v19 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    v7 = Array.description.getter();
    v9 = sub_1000105AC(v7, v8, &v18);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add %s with error=%@", v4, 0x16u);
    sub_1000095E8(v5, &unk_101183D70);

    sub_10000959C(v6);
  }

  else
  {
  }

  v11 = *(v0 + 40);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;

  sub_1001F4CB8(0, 0, v11, &unk_100EDDFF8, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1006DAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = type metadata accessor for IndexPath();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DAC1C, v7, v6);
}

uint64_t sub_1006DAC1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1006D6360();

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    *v4 = _swiftEmptyArrayStorage;

    v3(v0 + 2, 0);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1006D1794();
    v8 = [v7 indexPathsForSelectedItems];

    if (v8)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    v10 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
    [*&v6[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] reloadData];
    if (v9)
    {
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = v0[17];
        v13 = *(v12 + 16);
        v12 += 16;
        v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v29 = *(v12 + 56);
        v30 = v13;
        v15 = (v12 - 8);
        do
        {
          v16 = v0[19];
          v17 = v0[16];
          v30(v16, v14, v17);
          v18 = *&v6[v10];
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v18 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

          (*v15)(v16, v17);
          v14 += v29;
          --v11;
        }

        while (v11);
      }
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = sub_1006D1794();

    if ([v22 numberOfItemsInSection:0] < 1)
    {
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];
      IndexPath.init(item:section:)();
      v26 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v22 scrollToItemAtIndexPath:v26 atScrollPosition:4 animated:1];

      (*(v24 + 8))(v23, v25);
    }
  }

  v27 = v0[1];

  return v27();
}

void sub_1006DAF60()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  __chkstk_darwin(v8);
  v55 = &v48 - v9;
  v10 = type metadata accessor for Playlist.Entry();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v48 - v14;
  v15 = IndexPath.item.getter();
  v16 = IndexPath.item.getter();
  v17 = v16;
  v18 = v16;
  if (v15 >= v16)
  {
    v18 = v16 - 1;
    if (__OFSUB__(v16, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v52 = v4;
  v56 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
  v19 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  if (!v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= *(v20 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_101219770);
    v30 = v54;
    v19(v54, v58, v10);
    v31 = v53;
    sub_1000089F8(v18, v53, &qword_101191570);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = v17;
      v35 = v34;
      v49 = swift_slowAlloc();
      v59 = v49;
      *v35 = 136315394;
      sub_1006E1788(&qword_10119A818, &type metadata accessor for Playlist.Entry);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v39 = *(v57 + 8);
      v39(v30, v10);
      v40 = sub_1000105AC(v36, v38, &v59);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      sub_1000089F8(v31, v52, &qword_101191570);
      v41 = String.init<A>(describing:)();
      v42 = v31;
      v43 = v41;
      v45 = v44;
      v18 = v55;
      sub_1000095E8(v42, &qword_101191570);
      v46 = sub_1000105AC(v43, v45, &v59);

      *(v35 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v32, v33, "🔃 Will move entry=%s after entry=%s", v35, 0x16u);
      swift_arrayDestroy();

      v17 = v50;
    }

    else
    {

      sub_1000095E8(v31, &qword_101191570);
      v39 = *(v57 + 8);
      v39(v30, v10);
    }

    if (*(v17 + v56))
    {

      v47 = v58;
      dispatch thunk of MusicLibraryPlaylistEditViewModel.move(_:after:)();

      sub_1000095E8(v18, &qword_101191570);
      v39(v47, v10);
      return;
    }

    goto LABEL_25;
  }

  v53 = v7;
  v51 = v2;
  v21 = v1;
  v57 = v11;
  v23 = *(v11 + 16);
  v22 = v11 + 16;
  v19 = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v25 = *(v22 + 56);
  v23(v58, (v20 + v24 + v25 * v15), v10);

  if (!v17)
  {
    v28 = 1;
    v18 = v55;
LABEL_12:
    (*(v57 + 56))(v18, v28, 1, v10);
    v17 = v21;
    if (qword_10117FE30 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (*(v21 + v56))
  {

    v26 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 < *(v26 + 16))
    {
      v27 = v26 + v24 + v25 * v18;
      v18 = v55;
      v19(v55, v27, v10);

      v28 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}