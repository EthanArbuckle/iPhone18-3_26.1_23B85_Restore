void *sub_1000847EC()
{
  v1 = v0;
  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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

void *sub_100084930()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100084B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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

uint64_t sub_100084DA0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100085DA8(&qword_1000BC4F8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

void sub_1000850A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for IndexPath();
  v6 = *(*(v39 - 8) + 64);
  v8.n128_f64[0] = __chkstk_darwin(v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v7 + 16;
  v35 = v7;
  v32 = 0;
  v33 = (v7 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20, v8);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      (*v33)(v21, v20);
      return;
    }

    v26 = v24;
    (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        sub_100085398(v31, v30, v32, v28);
        return;
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100085308(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_1000850A8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_100085398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for IndexPath();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100085DA8(&qword_1000BC4F8);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1000856AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100085DA8(&qword_1000BC4F8);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_100085DA8(&qword_1000BCCE8);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100084930();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10008592C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_10008592C(int64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v14 + 1) & v12;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v17 = v12;
      v18 = *(v15 + 56);
      v38 = v15;
      v35 = (v15 - 8);
      v36 = v16;
      do
      {
        v19 = v9;
        v20 = v18;
        v21 = v18 * v11;
        v36(v7, *(v8 + 48) + v18 * v11, v3);
        v22 = v8;
        v23 = v17;
        v24 = v22;
        v25 = *(v22 + 40);
        sub_100085DA8(&qword_1000BC4F8);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v17 = v23;
        if (a1 >= v37)
        {
          if (v27 >= v37 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v20;
            v31 = v20 * a1;
            if (v20 * a1 < v21 || v30 + v20 * a1 >= (v30 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v37 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v20;
LABEL_5:
        v11 = (v11 + 1) & v17;
        v9 = v19;
      }

      while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

double sub_100085C24(char a1, double a2, double a3)
{
  v3 = 1.0;
  if (a1)
  {
    v3 = -1.0;
  }

  if (a2 >= a3)
  {
    a2 = a3;
  }

  v8 = v3 * (a3 - sqrt(a3 * a3 - a2 * a2));
  v4 = asin(a2 / a3 * v3);
  *v5.i64 = v8;
  *&v5.i64[1] = v4;
  v6 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&result = vbslq_s8(vceqq_s64(vandq_s8(v5, v6), v6), vandq_s8(v5, vceqzq_s64(vandq_s8(v5, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), v5).u64[0];
  return result;
}

unint64_t sub_100085CB4()
{
  result = qword_1000BD4B8;
  if (!qword_1000BD4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000BD4B8);
  }

  return result;
}

uint64_t sub_100085D40(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085DA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100085DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100085E74()
{
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview);
  *v4 = 0u;
  v4[1] = 0u;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom) = 0;
  v5 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction;
  v6 = objc_opt_self();
  *(v0 + v5) = [v6 functionWithName:kCAMediaTimingFunctionEaseIn];
  v7 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction;
  *(v0 + v7) = [v6 functionWithName:kCAMediaTimingFunctionEaseOut];
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_alwaysVisiblePinnedToBottomCount) = 3;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_progressOfBottomItemIconInDock) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100086094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + qword_1000BD530;
  v5 = *(v3 + qword_1000BD530);
  v6 = *(v3 + qword_1000BD530 + 8);
  v7 = *(v3 + qword_1000BD530 + 16);
  *v4 = *&a1;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if ((a3 & 1) == 0)
  {
    if ((v7 & 1) != 0 || (v5 == *&a1 ? (v10 = v6 == *&a2) : (v10 = 0), !v10))
    {
      v11 = *(v3 + qword_1000BD600);
      if (v11)
      {
        v12 = *(v3 + qword_1000BD608);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          [v13 setConstant:*&a2];
          [v14 setConstant:*&a1];
        }
      }
    }
  }
}

id sub_100086210(void *a1)
{
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label] = 0;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer] = 0;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSBCollectionViewCellContentView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

char *sub_1000863A0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[qword_1000BD530];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v4[qword_1000BD538] = 0;
  v6 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v4[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_1000BD548] = 0;
  v7 = a1;
  v8 = DOCItemCollectionCell.init(frame:containerView:)();
  v9 = objc_allocWithZone(UIView);
  v10 = v8;
  v11 = [v9 init];
  v12 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v12 setAutoresizingMask:18];
  [v12 setHidden:1];

  [v11 addSubview:v12];
  v13 = *&v10[qword_1000BD548];
  *&v10[qword_1000BD548] = v12;

  v14 = [objc_allocWithZone(UIView) init];
  [v10 setSelectedBackgroundView:v14];

  [v10 setBackgroundView:v11];
  return v10;
}

id sub_100086568(void *a1)
{
  type metadata accessor for DOCItemCollectionCell();
  v3 = method lookup function for DOCItemCollectionCell();
  v3(a1);
  v4 = DOCItemCollectionCell.thumbnailView.getter();
  [v4 setDelegate:v1];

  type metadata accessor for DOCImageViewContainerView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = *(v1 + qword_1000BD538);
  *(v1 + qword_1000BD538) = v5;

  v7 = *(v1 + qword_1000BD540);

  return [a1 addSubview:v7];
}

void *sub_100086634()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (result)
  {

    v8 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v15 = UICellConfigurationState.isEditing.getter();
      result = (*(v3 + 8))(v6, v2);
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10008B2C0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_10008B2D8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000099B4;
    aBlock[3] = &unk_1000B0608;
    v12 = _Block_copy(aBlock);
    v13 = v1;

    [v9 performWithoutAnimation:v12];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000868AC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DOCSBCollectionViewCell(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100086634();
}

uint64_t sub_10008694C()
{
  type metadata accessor for DOCItemCollectionCell();
  v1 = method lookup function for DOCItemCollectionCell();
  v1();
  sub_100087274();
  v2 = *((swift_isaMask & *v0) + qword_1000BF1B8 + 152);

  return v2();
}

void sub_1000869EC()
{
  v0 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v0)
  {
    v4 = v0;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v1 = dispatch thunk of DOCItemCollectionCell.titleLabel.getter();
    if (v1)
    {
      v2 = v1;
      v3 = String._bridgeToObjectiveC()();

      [v2 setText:v3];
    }

    else
    {
    }
  }
}

void sub_100086AB0()
{
  type metadata accessor for DOCItemCollectionCell();
  v0 = method lookup function for DOCItemCollectionCell();
  v0();

  sub_100087274();
}

void sub_100086AFC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCItemCollectionCell();
  v10 = method lookup function for DOCItemCollectionCell();
  v10();
  v11 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v11)
  {
    v22 = v11;
    v12 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v12)
    {
      v13 = v12;
      v14 = DOCItemCollectionCell.thumbnailView.getter();
      [v14 updateImage:v13 addDecoration:{objc_msgSend(swift_unknownObjectRetain(), "isRepresentativeIcon")}];

      swift_unknownObjectRelease_n();
    }

    else
    {
      v15 = dispatch thunk of DOCItemCollectionCellContent.isInCreateMode.getter();
      if (v15 == 2)
      {
        __break(1u);
        return;
      }

      if ((v15 & 1) == 0)
      {
        v16 = DOCItemCollectionCell.thumbnailView.getter();
        [v16 setThumbnail:0];
      }
    }

    if (sub_100086EA8())
    {
      sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
      v17 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10008B330;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D508;
      aBlock[3] = &unk_1000B0658;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10008B338();
      sub_10000589C(&unk_1000BCE30, &unk_100090E70);
      sub_1000518F8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v1 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v20 = v22;
    }
  }
}

uint64_t sub_100086EA8()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v6)
  {

    v7 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v8 = 1;
    }

    else
    {
      v8 = UICellConfigurationState.isEditing.getter();
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_100086FD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100086634();
  }
}

void sub_100087070()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v4)
  {
    v12 = v4;
    if (dispatch thunk of DOCItemCollectionCellContent.hasAllTheProperties.getter())
    {
      v5 = sub_10008751C();
      v6 = qword_1000BD548;
      v7 = *&v0[qword_1000BD548];
      if (v7)
      {
        v8 = v5;
        v9 = v7;
        v10 = [v1 _bridgedConfigurationState];
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        DOCItemCollectionCell.BackgroundStateView.configurationState.setter();
        v11 = *&v1[v6];
        if (v11)
        {
          [v11 setHidden:(v8 & 1) == 0];
        }
      }

      [v1 setNeedsLayout];
    }

    else
    {
    }
  }
}

void sub_1000871BC(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for DOCSBCollectionViewCell(0);
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = *&v1[qword_1000BD548];
  if (v2)
  {
    v3 = v2;
    [v3 setHidden:{1, v4.receiver, v4.super_class}];
  }
}

uint64_t sub_10008723C()
{
  v1 = objc_allocWithZone(type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect());
  v2 = v0;
  return DOCItemCollectionListCellSpringLoadedInteractionEffect.init(targetCell:)();
}

void sub_100087274()
{
  if ((dispatch thunk of DOCItemCollectionCell.isRenaming.getter() & 1) == 0)
  {
    v0 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
    if (v0)
    {
      v5 = v0;
      v1 = dispatch thunk of DOCItemCollectionCellContent.shouldDim.getter();
      v2 = DOCItemCollectionCell.thumbnailView.getter();
      v3 = v2;
      v4 = 0.35;
      if ((v1 & 1) == 0)
      {
        v4 = 1.0;
      }

      [v2 setAlpha:v4];
    }
  }
}

uint64_t sub_100087324()
{
  result = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (result)
  {
    v1 = result;
    if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
    {

      return 1;
    }

    else
    {
      v2 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
      if (v2)
      {
        v3 = [v2 isRepresentativeIcon];
        swift_unknownObjectRelease();

        return v3 ^ 1;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_1000873A0()
{
  v1 = *(v0 + qword_1000BD548);
}

id sub_10008740C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100087444(uint64_t a1)
{
  v2 = *(a1 + qword_1000BD548);
}

id sub_1000874BC()
{
  v1 = [*v0 contentView];

  return v1;
}

uint64_t sub_10008751C()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((dispatch thunk of DOCItemCollectionCellContent.hasAllTheProperties.getter() & 1) == 0)
  {

LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  v8 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = UICellConfigurationState.isSelected.getter();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = dispatch thunk of DOCItemCollectionCellContent.isFocusing.getter();
  }

  return v9 & 1;
}

void sub_10008765C(char *a1)
{
  v1 = *&a1[qword_1000BD548];
  if (v1)
  {
    v9 = v1;
    sub_100087734(v10);
    if ((v11 & 1) == 0)
    {
      v3 = *v10;
      v4 = *&v10[1];
      v5 = *&v10[2];
      v6 = *&v10[3];
      v7 = [v9 superview];
      if (v7)
      {
        v8 = v7;
        [a1 convertRect:v7 toCoordinateSpace:{v3, v4, v5, v6}];
        [v9 setFrame:?];
      }
    }
  }
}

void sub_100087734(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v9)
  {
    v10 = v9;
    if (dispatch thunk of DOCItemCollectionCellContent.isFocusing.getter())
    {
    }

    else
    {
      static Logger.UI.getter();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Laying out a focus view of a cell that has no focus.", v13, 2u);
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  v14 = *(v2 + qword_1000BD538);
  if (v14)
  {
    v15 = v14;
    DOCImageViewContainerView.focusImageBackgroundFrame.getter();

    v16 = v18;
    *a1 = *&v17[8];
    *(a1 + 16) = v16;
    *(a1 + 32) = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000878E8(void *a1)
{
  v1 = a1;
  sub_100086634();
}

void sub_1000879A0(void *a1)
{
  v2 = v1;
  sub_100086568(a1);
  sub_100086094(0x4050000000000000, 0x4050000000000000, 0);
  v3 = qword_1000BD540;
  [*&v1[qword_1000BD540] setAutoresizingMask:18];
  v4 = *&v1[v3];
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  v14 = qword_1000BD538;
  if (!*&v2[qword_1000BD538])
  {
    __break(1u);
    goto LABEL_17;
  }

  [*&v2[v3] addSubview:?];
  v15 = *&v2[v3];
  v16 = sub_100088104();
  [v15 addSubview:v16];

  v17 = *&v2[v3];
  v18 = qword_1000BD610;
  v19 = *&v2[qword_1000BD610];
  v20 = *&v17[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label];
  *&v17[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label] = v19;
  v21 = v17;
  v22 = v19;

  v23 = *&v2[v14];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = DOCItemCollectionCell.thumbnailView.getter();
  [v24 addSubview:v25];

  v26 = *&v2[v14];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  DOCItemCollectionCell.thumbnailView.getter();
  dispatch thunk of DOCImageViewContainerView.containedView.setter();

  v28 = *&v2[v14];
  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = DOCItemCollectionCell.thumbnailView.getter();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v31) = 1144750080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v31];

  v32 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v33) = 1144750080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  [*&v2[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = *&v2[v14];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = [v34 widthAnchor];
  v36 = &v2[qword_1000BD530];
  if (v2[qword_1000BD530 + 16])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v35;
  v38 = [v35 constraintEqualToConstant:*v36];

  v39 = qword_1000BD600;
  v40 = *&v2[qword_1000BD600];
  *&v2[qword_1000BD600] = v38;

  v41 = *&v2[v14];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = [v41 heightAnchor];
  if (v36[2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v42;
  v84 = v18;
  v44 = [v42 constraintEqualToConstant:v36[1]];

  v45 = qword_1000BD608;
  v46 = *&v2[qword_1000BD608];
  *&v2[qword_1000BD608] = v44;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10008F920;
  v48 = *&v2[v14];
  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = [v48 topAnchor];
  v50 = [*&v2[v3] topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v47 + 32) = v51;
  v52 = *&v2[v14];
  if (!v52)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = [v52 centerXAnchor];
  v54 = [*&v2[v3] centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v47 + 40) = v55;
  v56 = *&v2[v39];
  if (!v56)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v47 + 48) = v56;
  v57 = *&v2[v45];
  if (!v57)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v47 + 56) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10008F960;
  v59 = v57;
  v60 = v56;
  v61 = DOCItemCollectionCell.thumbnailView.getter();
  v62 = [v61 centerXAnchor];

  v63 = *&v2[v14];
  if (!v63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v64 = [v63 centerXAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];

  *(v58 + 32) = v65;
  v66 = DOCItemCollectionCell.thumbnailView.getter();
  v67 = [v66 bottomAnchor];

  v68 = *&v2[v14];
  if (v68)
  {
    v69 = [v68 bottomAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];

    *(v58 + 40) = v70;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100090F10;
    v72 = [*&v2[v84] trailingAnchor];
    v73 = [*&v2[v3] trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(inited + 32) = v74;
    v75 = [*&v2[v84] leadingAnchor];
    v76 = [*&v2[v3] leadingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(inited + 40) = v77;
    v78 = [*&v2[v84] bottomAnchor];
    v79 = [*&v2[v3] bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:-3.0];

    *(inited + 48) = v80;
    v81 = objc_opt_self();
    sub_10000D644(inited);
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:isa];

    v83 = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:v83];

    return;
  }

LABEL_29:
  __break(1u);
}

id sub_100088104()
{
  v1 = qword_1000BD610;
  v2 = *&v0[qword_1000BD610];
  if (v2)
  {
    v3 = *&v0[qword_1000BD610];
  }

  else
  {
    v4 = sub_100088168(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100088168(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTextAlignment:1];
  [v2 setNumberOfLines:1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v3 setTextColor:v5];

  [v3 setLineBreakMode:5];
  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v9];
  v10 = [v4 clearColor];
  [v3 setBackgroundColor:v10];

  v11 = objc_opt_self();
  v12 = [a1 traitCollection];
  v13 = [v11 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v12];

  v14 = v13;
  [v14 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  [v3 setFont:v16];
  return v3;
}

void sub_1000883C4()
{
  v0 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v0)
  {
    v3 = v0;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v1 = sub_100088104();
    v2 = String._bridgeToObjectiveC()();

    [v1 setText:v2];
  }
}

void sub_100088494()
{
  type metadata accessor for DOCItemCollectionCell();
  v0 = method lookup function for DOCItemCollectionCell();
  v0();
  sub_100087274();
  v1 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v1)
  {
    v2 = v1;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v3 = sub_100088104();
    v4 = String._bridgeToObjectiveC()();

    [v3 setText:v4];
  }

  sub_100087274();
  v5 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v5)
  {
    v8 = v5;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v6 = sub_100088104();
    v7 = String._bridgeToObjectiveC()();

    [v6 setText:v7];
  }
}

void sub_1000885D8(void *a1)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v1 = v12.receiver;
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = *&v1[qword_1000BD540];
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
}

id sub_1000886B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, "applyLayoutAttributes:", a3);
}

char *sub_100088700(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[qword_1000BD600] = 0;
  *&v4[qword_1000BD608] = 0;
  *&v4[qword_1000BD610] = 0;
  v5 = &v4[qword_1000BD530];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v4[qword_1000BD538] = 0;
  v6 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v4[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_1000BD548] = 0;
  v7 = a1;
  v8 = DOCItemCollectionCell.init(frame:containerView:)();
  v9 = objc_allocWithZone(UIView);
  v10 = v8;
  v11 = [v9 init];
  v12 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v12 setAutoresizingMask:18];
  [v12 setHidden:1];

  [v11 addSubview:v12];
  v13 = *&v10[qword_1000BD548];
  *&v10[qword_1000BD548] = v12;

  v14 = [objc_allocWithZone(UIView) init];
  [v10 setSelectedBackgroundView:v14];

  [v10 setBackgroundView:v11];
  return v10;
}

void sub_1000888EC()
{
  v1 = *(v0 + qword_1000BD610);
}

void sub_100088958(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a5);
}

double sub_100088A48()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v1 = [v0 CGColor];

  dword_1000BF188 = 1065353216;
  qword_1000BF190 = v1;
  result = 0.0;
  xmmword_1000BF198 = xmmword_1000914F0;
  qword_1000BF1A8 = 0x4030000000000000;
  dword_1000BF1B0 = 1065353216;
  byte_1000BF1B4 = 1;
  return result;
}

void sub_100088ADC(void *a1)
{
  v2 = v1;
  sub_100086568(a1);
  v3 = qword_1000BD540;
  [*&v1[qword_1000BD540] setAutoresizingMask:18];
  v4 = *&v1[v3];
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  type metadata accessor for DOCSBLabelPlatterView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = qword_1000BD668;
  v16 = *&v2[qword_1000BD668];
  *&v2[qword_1000BD668] = v14;
  v17 = v14;

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = qword_1000BD538;
  v19 = *&v2[qword_1000BD538];
  if (!v19)
  {
    goto LABEL_29;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [objc_allocWithZone(UIView) init];
  v21 = qword_1000BD670;
  v22 = *&v2[qword_1000BD670];
  *&v2[qword_1000BD670] = v20;

  if (qword_1000BB748 == -1)
  {
    v23 = *&v2[v21];
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  swift_once();
  v23 = *&v2[v21];
  if (!v23)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_4:
  v24 = byte_1000BF1B4;
  v25 = dword_1000BF1B0;
  v27 = *(&xmmword_1000BF198 + 1);
  v26 = *&qword_1000BF1A8;
  v28 = *&xmmword_1000BF198;
  v29 = dword_1000BF188;
  v30 = qword_1000BF190;
  v31 = [v23 layer];
  LODWORD(v32) = v29;
  [v31 setOpacity:v32];
  [v31 setShadowColor:v30];
  [v31 setShadowOffset:{v28, v27}];
  [v31 setShadowRadius:v26];
  LODWORD(v33) = v25;
  [v31 setShadowOpacity:v33];
  [v31 setPunchoutShadow:v24];

  v34 = DOCItemCollectionCell.thumbnailView.getter();
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v36) = 1144750080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];

  v37 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v38) = 1144750080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v38];

  v39 = *&v2[v21];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = [v39 layer];
  [v40 setCornerRadius:8.0];

  v41 = *&v2[v21];
  if (!v41)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = [v41 layer];
  [v42 setShadowPathIsBounds:1];

  if (!*&v2[v15])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [*&v2[v3] addSubview:?];
  if (!*&v2[v18])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [*&v2[v3] addSubview:?];
  v43 = *&v2[v3];
  v44 = *&v2[v15];
  v45 = *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer];
  *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer] = v44;
  v46 = v43;
  v47 = v44;

  v48 = *&v2[v3];
  v49 = *&v2[v21];
  v50 = *&v48[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow];
  *&v48[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow] = v49;
  v51 = v48;
  v52 = v49;

  v53 = *&v2[v18];
  if (!v53)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = *&v2[v21];
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v53 insertSubview:v54 atIndex:0];
  v55 = *&v2[v21];
  if (!v55)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v56 = v55;
  v57 = DOCItemCollectionCell.thumbnailView.getter();
  [v56 addSubview:v57];

  v58 = *&v2[v18];
  if (!v58)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v59 = v58;
  DOCItemCollectionCell.thumbnailView.getter();
  dispatch thunk of DOCImageViewContainerView.containedView.setter();

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10008F920;
  v61 = *&v2[v18];
  if (!v61)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v62 = [v61 leadingAnchor];
  v63 = [*&v2[v3] leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v60 + 32) = v64;
  v65 = *&v2[v18];
  if (!v65)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = [v65 trailingAnchor];
  v67 = [*&v2[v3] trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v60 + 40) = v68;
  v69 = *&v2[v18];
  if (!v69)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v70 = [v69 topAnchor];
  v71 = [*&v2[v3] topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v60 + 48) = v72;
  v73 = *&v2[v18];
  if (!v73)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v118 = v15;
  v74 = [v73 bottomAnchor];
  v75 = [*&v2[v3] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v60 + 56) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10008F960;
  v78 = DOCItemCollectionCell.thumbnailView.getter();
  v79 = [v78 centerXAnchor];

  v80 = *&v2[v18];
  if (!v80)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v81 = [v80 centerXAnchor];
  v82 = [v79 constraintEqualToAnchor:v81];

  *(v77 + 32) = v82;
  v83 = DOCItemCollectionCell.thumbnailView.getter();
  v84 = [v83 centerYAnchor];

  v85 = *&v2[v18];
  if (!v85)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v86 = [v85 centerYAnchor];
  v87 = [v84 constraintEqualToAnchor:v86];

  *(v77 + 40) = v87;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F940;
  v89 = *&v2[v118];
  if (!v89)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v90 = [v89 centerYAnchor];
  v91 = [*&v2[v3] centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(inited + 32) = v92;
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_10008F940;
  v94 = *&v2[v118];
  if (!v94)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v95 = [v94 trailingAnchor];
  v96 = *&v2[v18];
  if (!v96)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v97 = [v96 leadingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97 constant:-8.0];

  *(v93 + 32) = v98;
  v99 = *&v2[v21];
  if (!v99)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v103 = v99;
  v104 = DOCItemCollectionCell.thumbnailView.getter();
  isa = DOCConstraintsToResizeWithReferenceView();

  if (!isa)
  {
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v106 = objc_opt_self();

  sub_10000D644(v107);

  sub_10000D644(v108);
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v109 = Array._bridgeToObjectiveC()().super.isa;

  [v106 activateConstraints:v109];

  v110 = Array._bridgeToObjectiveC()().super.isa;
  [v106 activateConstraints:v110];

  [v106 activateConstraints:isa];
  v111 = *&v2[v118];
  if (!v111)
  {
    goto LABEL_48;
  }

  v112 = *(v111 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter);
  if (v112)
  {
    v113 = v112;

    swift_setDeallocating();
    v114 = *(v93 + 16);
    swift_arrayDestroy();
    v115 = [v113 layer];

    [v115 setAllowsEdgeAntialiasing:1];
    v116 = DOCItemCollectionCell.thumbnailView.getter();
    v117 = [v116 layer];

    [v117 setAllowsEdgeAntialiasing:1];
    [v2 setClipsToBounds:0];
    return;
  }

LABEL_49:
  __break(1u);
}

void *sub_1000895A0()
{
  v1 = *(v0 + qword_1000BD668);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000895E4(void *a1)
{
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "applyLayoutAttributes:", a1);
  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v1[qword_1000BD678] = (*(v3 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide) & 1) == 0;
    v5 = *&v1[qword_1000BD680];
    *&v1[qword_1000BD680] = *(v3 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha);
    v6 = a1;
    sub_10008982C(v5);
    v7 = *(v4 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom);
    v8 = v1[qword_1000BD690];
    v1[qword_1000BD690] = v7;
    if (v7 != v8)
    {
      v9 = *&v1[qword_1000BD668];
      if (!v9)
      {
        goto LABEL_9;
      }

      [v9 setHidden:?];
    }

    v10 = qword_1000BD688;
    *&v1[qword_1000BD688] = *(v4 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_imageScale);
    v11 = DOCItemCollectionCell.thumbnailView.getter();
    v12 = *&v1[v10];
    v16.a = 1.0;
    v16.b = 0.0;
    v16.c = 0.0;
    v16.d = 1.0;
    v16.tx = 0.0;
    v16.ty = 0.0;
    CGAffineTransformScale(&v15, &v16, v12, v12);
    v16 = v15;
    [v11 setTransform:&v16];

    v13 = *&v1[qword_1000BD670];
    if (v13)
    {
      v14 = *&v1[v10];
      v16.a = 1.0;
      v16.b = 0.0;
      v16.c = 0.0;
      v16.d = 1.0;
      v16.tx = 0.0;
      v16.ty = 0.0;
      CGAffineTransformScale(&v15, &v16, v14, v14);
      v16 = v15;
      [v13 setTransform:&v16];

      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_1000897C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000895E4(v4);
}

void sub_10008982C(double a1)
{
  v2 = qword_1000BD680;
  if (*(v1 + qword_1000BD680) == a1)
  {
    return;
  }

  v3 = v1;
  v4 = *(v1 + qword_1000BD668);
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v4 setAlpha:?];
  v5 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
  {
    v7 = 1;
  }

  else
  {
    v8 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v8)
    {
      v9 = [v8 isRepresentativeIcon];
      swift_unknownObjectRelease();
      v7 = v9 ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *(v3 + qword_1000BD670);
  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v11 = [v10 layer];
  v12 = 0.0;
  if ((v7 & 1) == 0)
  {
    v12 = *(v3 + v2);
    *&v12 = v12;
  }

  v13 = v11;
  [v11 setShadowOpacity:v12];
}

void sub_100089980()
{
  v1 = v0;
  v2 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v2)
  {
    v3 = v2;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v4 = *(v1 + qword_1000BD668);
    if (!v4)
    {
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v4 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();

      [v6 setText:v7];
    }

    else
    {
    }
  }

  v8 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
  {
    v10 = 1;
  }

  else
  {
    v11 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v11)
    {
      v12 = [v11 isRepresentativeIcon];
      swift_unknownObjectRelease();
      v10 = v12 ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  dispatch thunk of DOCItemCollectionCellContent.isFolder.getter();
  v13 = *(v1 + qword_1000BD670);
  if (!v13)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v14 = [v13 layer];
  v15 = 0.0;
  v16 = v14;
  if ((v10 & 1) == 0)
  {
    if (qword_1000BB748 != -1)
    {
      swift_once();
      v14 = v16;
    }

    LODWORD(v15) = dword_1000BF1B0;
  }

  [v14 setShadowOpacity:v15];
}

void sub_100089B5C()
{
  type metadata accessor for DOCItemCollectionCell();
  v0 = method lookup function for DOCItemCollectionCell();
  v0();
  sub_100087274();
  sub_100089980();
  sub_100087274();

  sub_100089980();
}

void sub_100089BB8()
{
  type metadata accessor for DOCSBCollectionViewCell(0);
  v0 = method lookup function for DOCItemCollectionCell();
  v0();
  v1 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v1)
  {
    v2 = v1;
    dispatch thunk of DOCItemCollectionCellContent.showGridCircularProgressView.getter();
  }
}

uint64_t sub_100089C80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  type metadata accessor for DOCItemCollectionCell();
  v5 = method lookup function for DOCItemCollectionCell();
  v6 = v5();
  a3(v6);

  return a4();
}

char *sub_100089CF0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[qword_1000BD668] = 0;
  *&v4[qword_1000BD670] = 0;
  v4[qword_1000BD678] = 1;
  *&v4[qword_1000BD680] = 0x3FF0000000000000;
  *&v4[qword_1000BD688] = 0x3FF0000000000000;
  v4[qword_1000BD690] = 0;
  v5 = &v4[qword_1000BD530];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v4[qword_1000BD538] = 0;
  v6 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v4[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_1000BD548] = 0;
  v7 = a1;
  v8 = DOCItemCollectionCell.init(frame:containerView:)();
  v9 = objc_allocWithZone(UIView);
  v10 = v8;
  v11 = [v9 init];
  v12 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v12 setAutoresizingMask:18];
  [v12 setHidden:1];

  [v11 addSubview:v12];
  v13 = *&v10[qword_1000BD548];
  *&v10[qword_1000BD548] = v12;

  v14 = [objc_allocWithZone(UIView) init];
  [v10 setSelectedBackgroundView:v14];

  [v10 setBackgroundView:v11];
  return v10;
}

void sub_100089F04()
{
  v1 = *(v0 + qword_1000BD670);
}

void sub_100089F44(uint64_t a1)
{
  v2 = *(a1 + qword_1000BD670);
}

id sub_100089F98()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    v3 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_100005938(v5);
  }

  sub_100006380(v2);
  return v3;
}

void sub_10008A05C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter] = 0;
  v9 = &v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets];
  __asm
  {
    FMOV            V0.2D, #7.0
    FMOV            V1.2D, #-7.0
  }

  *v9 = _Q0;
  *(v9 + 1) = _Q1;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidthSpec] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont] = 1;
  v122.receiver = v4;
  v122.super_class = type metadata accessor for DOCSBLabelPlatterView();
  v16 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_allocWithZone(UILabel);
  v18 = v16;
  v19 = [v17 init];
  v20 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label;
  v21 = *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label];
  *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label] = v19;
  v22 = v19;

  if (!v22)
  {
    __break(1u);
    goto LABEL_41;
  }

  [v22 setTextAlignment:4];

  v23 = *&v18[v20];
  if (!v23)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v23 setNumberOfLines:1];
  v24 = *&v18[v20];
  if (!v24)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v24 setLineBreakMode:5];
  v25 = *&v18[v20];
  if (!v25)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = v25;
  v27 = sub_100089F98();
  [v26 setFont:v27];

  v28 = *&v18[v20];
  if (!v28)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *&v18[v20];
  if (!v29)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 labelColor];
  [v31 setTextColor:v32];

  v34 = *&v18[v20];
  if (!v34)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v33) = 1144750080;
  [v34 setContentCompressionResistancePriority:0 forAxis:v33];
  v36 = *&v18[v20];
  if (!v36)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v35) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v35];
  v38 = *&v18[v20];
  if (!v38)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LODWORD(v37) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v37];
  v40 = *&v18[v20];
  if (!v40)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v39) = 1148846080;
  [v40 setContentHuggingPriority:0 forAxis:v39];
  v41 = *&v18[v20];
  if (!v41)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v42 = v41;
  v43 = [v30 clearColor];
  [v42 setBackgroundColor:v43];

  v44 = [objc_allocWithZone(UIView) init];
  v45 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView;
  v46 = *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView];
  *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView] = v44;
  v47 = v44;

  if (!v47)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v49 = [v48 CGColor];

  v50 = *&v18[v45];
  if (!v50)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v51 = [v50 layer];
  LODWORD(v52) = 1.0;
  [v51 setOpacity:v52];
  [v51 setShadowColor:v49];
  [v51 setShadowOffset:{0.0, 4.0}];
  [v51 setShadowRadius:16.0];
  LODWORD(v53) = 1.0;
  [v51 setShadowOpacity:v53];
  [v51 setPunchoutShadow:1];

  v54 = *&v18[v45];
  if (!v54)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v55 = [v54 layer];
  [v55 setShadowPathIsBounds:1];

  v56 = [objc_opt_self() effectWithStyle:8];
  v57 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v56];

  v58 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter;
  v59 = *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter];
  *&v18[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter] = v57;
  v60 = v57;

  if (!v60)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v61 = String._bridgeToObjectiveC()();
  [v60 _setGroupName:v61];

  v62 = *&v18[v58];
  if (!v62)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v62 setAutoresizingMask:18];
  v63 = *&v18[v58];
  if (!v63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v63 _setCornerRadius:0 continuous:15 maskedCorners:8.0];
  v64 = *&v18[v45];
  if (!v64)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v65 = v18;
  [v65 addSubview:v64];
  v66 = *&v18[v45];
  if (!v66)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!*&v18[v58])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v66 addSubview:?];
  v67 = *&v18[v45];
  if (!v67)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (!*&v18[v20])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v67 addSubview:?];
  v68 = *&v18[v45];
  if (!v68)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v69 = [v68 layer];
  [v69 setAllowsEdgeAntialiasing:1];

  v70 = *&v18[v58];
  if (!v70)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v71 = [v70 layer];
  [v71 setAllowsEdgeAntialiasing:1];

  v72 = *&v18[v20];
  if (!v72)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v121 = v49;
  v73 = [v72 widthAnchor];
  v74 = [v73 constraintLessThanOrEqualToConstant:*&v65[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth]];

  v75 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint;
  v76 = *&v65[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint];
  *&v65[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] = v74;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091500;
  v78 = *&v18[v20];
  if (!v78)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v79 = [v78 topAnchor];
  v80 = *&v18[v45];
  if (!v80)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v81 = [v80 topAnchor];
  v82 = &v65[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets];
  v83 = [v79 constraintEqualToAnchor:v81 constant:*&v65[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets]];

  *(inited + 32) = v83;
  v84 = *&v18[v20];
  if (!v84)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v85 = [v84 bottomAnchor];
  v86 = *&v18[v45];
  if (!v86)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToAnchor:v87 constant:v82[2]];

  *(inited + 40) = v88;
  v89 = *&v18[v20];
  if (!v89)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v90 = [v89 leadingAnchor];
  v91 = *&v18[v45];
  if (!v91)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v92 = [v91 leadingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92 constant:v82[1]];

  *(inited + 48) = v93;
  v94 = *&v18[v20];
  if (!v94)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v95 = [v94 trailingAnchor];
  v96 = *&v18[v45];
  if (!v96)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v97 = [v96 trailingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97 constant:v82[3]];

  *(inited + 56) = v98;
  v99 = *&v65[v75];
  if (!v99)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  *(inited + 64) = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10008F920;
  v101 = *&v18[v45];
  if (!v101)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v102 = v100;
  v103 = v99;
  v104 = [v101 topAnchor];
  v105 = [v65 topAnchor];

  v106 = [v104 constraintEqualToAnchor:v105];
  v102[4] = v106;
  v107 = *&v18[v45];
  if (!v107)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v108 = [v107 bottomAnchor];
  v109 = [v65 bottomAnchor];

  v110 = [v108 constraintEqualToAnchor:v109];
  v102[5] = v110;
  v111 = *&v18[v45];
  if (!v111)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v112 = [v111 leadingAnchor];
  v113 = [v65 leadingAnchor];

  v114 = [v112 constraintEqualToAnchor:v113];
  v102[6] = v114;
  v115 = *&v18[v45];
  if (v115)
  {
    v116 = [v115 trailingAnchor];
    v117 = [v65 trailingAnchor];

    v118 = [v116 constraintEqualToAnchor:v117];
    v102[7] = v118;
    v119 = objc_opt_self();
    sub_10000D644(inited);
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v119 activateConstraints:isa];

    return;
  }

LABEL_77:
  __break(1u);
}

id sub_10008ABFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DOCSBLabelPlatterView();
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "didMoveToWindow");
  result = [v1 window];
  if (result)
  {

    if (byte_1000BD4E8)
    {
      v9 = 300.0;
    }

    else
    {
      v9 = *&qword_1000BD4E0;
      static Logger.UI.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "USING TUNED VALUE FOR maximumLabelWidth: %f", v12, 0xCu);
      }

      (*(v3 + 8))(v6, v2);
    }

    *&v1[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth] = v9;
    return [*&v1[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] setConstant:v9];
  }

  return result;
}

uint64_t sub_10008AED8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10008B390(v19);
    v9 = [v5 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 floatForKey:v10];
    v12 = v11;

    static Logger.UI.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v19[0] = v16;
      *v15 = 134218242;
      v17 = v12;
      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_100037B98(0xD000000000000020, 0x8000000100095730, v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "LOADED TUNED VALUE FOR maximumLabelWidth: %f from default %s", v15, 0x16u);
      sub_1000064E0(v16);

      result = (*(v1 + 8))(v4, v0);
    }

    else
    {

      result = (*(v1 + 8))(v4, v0);
      v17 = v12;
    }
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    result = sub_10008B390(v19);
    v17 = 0.0;
  }

  qword_1000BD4E0 = *&v17;
  byte_1000BD4E8 = v8 == 0;
  return result;
}

void sub_10008B1B4()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets);
  __asm
  {
    FMOV            V0.2D, #7.0
    FMOV            V1.2D, #-7.0
  }

  *v1 = _Q0;
  v1[1] = _Q1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidthSpec) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10008B288()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B2E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008B2F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008B338()
{
  result = qword_1000BC400;
  if (!qword_1000BC400)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC400);
  }

  return result;
}

uint64_t sub_10008B390(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BCA30, &unk_100090E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10008B464()
{
  v0 = [objc_opt_self() sharedInstance];
}

id sub_10008B660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10008B77C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_1000BD750 = CFAbsoluteTimeGetCurrent();
  byte_1000BD758 = 0;
  static Logger.UI.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_4;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  aBlock[0] = v18;
  *v17 = 136315394;
  result = sub_100037B98(0xD00000000000002ELL, 0x8000000100095830, aBlock);
  *(v17 + 4) = result;
  *(v17 + 12) = 2048;
  if ((byte_1000BD758 & 1) == 0)
  {
    *(v17 + 14) = qword_1000BD750;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s start time: %f", v17, 0x16u);
    sub_1000064E0(v18);

LABEL_4:

    (*(v11 + 8))(v14, v10);
    sub_10001A2A8(0, &qword_1000BD820, FINode_ptr);
    static FINode.startIfNeeded()();
    v20 = [objc_opt_self() sharedManager];
    v21 = DOCSBFolderAppBundleIdentifier;
    [v20 setHostIdentifier:DOCSBFolderAppBundleIdentifier];

    v22 = [objc_opt_self() defaultPermission];
    [v22 setHostIdentifier:v21];

    v23 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:0 hostIdentifier:v21];
    v24 = *(v31 + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver);
    *(v31 + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver) = v23;
    v25 = v23;

    [v25 startObservingSources];
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v6 + 8))(v9, v5);
    aBlock[4] = sub_10008B464;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000B0680;
    v27 = _Block_copy(aBlock);
    v28 = v32;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10008C0B0(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v29 = v34;
    v30 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v36 + 8))(v29, v30);
    (*(v33 + 8))(v28, v35);
    return 1;
  }

  __break(1u);
  return result;
}

id sub_10008BD70(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 role];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_8:
    v10 = [a1 configuration];
    v11 = [v10 name];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

    goto LABEL_8;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    v22 = [a1 configuration];
    v11 = [v22 name];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v23 = [a1 configuration];
  v11 = [v23 name];

  if (v11)
  {
LABEL_22:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v24;

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:
  v13 = [a1 role];
  if (v12)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(UISceneConfiguration) initWithName:v14 sessionRole:v13];

  return v15;
}

uint64_t sub_10008C098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C0B0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall DOCLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = DOCLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName._countAndFlagsBits, tableName._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}