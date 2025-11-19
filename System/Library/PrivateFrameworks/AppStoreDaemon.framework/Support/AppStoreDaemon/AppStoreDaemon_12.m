uint64_t sub_1001750DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10017988C(&qword_10059E9F8);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10017988C(&qword_10059EA00);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100175DE0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100175394(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10017605C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10017551C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1001761DC(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10017561C()
{
  v1 = v0;
  v35 = type metadata accessor for Calendar.Component();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100085D40(&qword_10059EA08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10017988C(&qword_10059E9F8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100175964()
{
  v1 = v0;
  v2 = *v0;
  sub_100085D40(&qword_10059EA48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100175BC4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100085D40(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    v26 = v3;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = static Hasher._hash(seed:_:)();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    if (v9 >= 64)
    {
      bzero((v4 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v3 = v26;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_100175DE0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017561C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100176318();
      goto LABEL_12;
    }

    sub_1001767F0();
  }

  v12 = *v3;
  sub_10017988C(&qword_10059E9F8);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10017988C(&qword_10059EA00);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10017605C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100175964();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100176550();
      goto LABEL_16;
    }

    sub_100176AF8();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001761DC(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100175BC4(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1001766C0(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100176D30(v6 + 1, a4);
  }

  v9 = *v4;
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100176318()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085D40(&qword_10059EA08);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_100176550()
{
  v1 = v0;
  sub_100085D40(&qword_10059EA48);
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

void *sub_1001766C0(uint64_t *a1)
{
  v2 = v1;
  sub_100085D40(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
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

uint64_t sub_1001767F0()
{
  v1 = v0;
  v32 = type metadata accessor for Calendar.Component();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100085D40(&qword_10059EA08);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10017988C(&qword_10059E9F8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100176AF8()
{
  v1 = v0;
  v2 = *v0;
  sub_100085D40(&qword_10059EA48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100176D30(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100085D40(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = static Hasher._hash(seed:_:)();
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
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_24;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100176F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F26AC(a1, a2);

  return sub_10009F6D0(a1 + 40, a2 + 40);
}

uint64_t sub_100176F5C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10009F6D0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1000828A8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_100005518(v21, &unk_10059E4A0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1001770BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1000F26AC(*(v3 + 48) + 40 * v13, &v17);
    sub_10009F6D0(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_1000828A8(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_100005518(&v17, &qword_10059EA10);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_100177244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v78 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  __chkstk_darwin(v11);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a2, a4);
  v17 = sub_100177A34(a1, v16, a3, a4, a5);
  if (v17)
  {
    v76 = v10;
    v77 = v16;
    static Logger.metrics.getter();
    sub_1000056D0(a1, v83);
    sub_1000056D0(a1, v80);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v74 = v14;
      v21 = v20;
      v22 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v21 = 138412546;
      v75 = a4;
      v24 = v84;
      v23 = v85;
      sub_100005B60(v83, v84);
      v25 = (*(v23 + 32))(v24, v23);
      sub_100005A00(v83);
      *(v21 + 4) = v25;
      *v22 = v25;
      *(v21 + 12) = 2082;
      v26 = v81;
      v27 = v82;
      sub_100005B60(v80, v81);
      v28 = *(v27 + 16);
      v29 = v27;
      a4 = v75;
      v30 = v28(v26, v29);
      v32 = v31;
      sub_100005A00(v80);
      v33 = sub_1001AD0D8(v30, v32, &v79);

      *(v21 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Building AMSMetricsEvent for topic: %{public}s", v21, 0x16u);
      sub_100005518(v22, &unk_10059C250);

      sub_100005A00(v73);

      v14 = v74;

      (*(v78 + 8))(v13, v76);
    }

    else
    {

      (*(v78 + 8))(v13, v76);
      sub_100005A00(v83);
      sub_100005A00(v80);
    }

    v34 = objc_allocWithZone(AMSMetricsEvent);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v34 initWithUnderlyingDictionary:isa];

    v36 = a1[3];
    v37 = a1[4];
    sub_100005B60(a1, v36);
    v38 = (*(v37 + 24))(v36, v37);
    v16 = v77;
    if (v38)
    {
      v39 = v38;
      [v17 setEventTime:v38];
    }

    v40 = a1[3];
    v41 = a1[4];
    sub_100005B60(a1, v40);
    (*(v41 + 96))(v40, v41);
    if (v42)
    {
      v43 = String._bridgeToObjectiveC()();

      [v17 setDiagnosticsSubmissionBugType:v43];
    }

    v44 = a1[3];
    v45 = a1[4];
    sub_100005B60(a1, v44);
    v46 = (*(v45 + 104))(v44, v45);
    if (v46 != 2)
    {
      [v17 setPreventSampling:v46 & 1];
    }

    [v17 setAnonymous:1];
    v47 = a1[3];
    v48 = a1[4];
    sub_100005B60(a1, v47);
    v49 = (*(v48 + 112))(v47, v48);
    if (v49)
    {
      v50 = *(v49 + 16);
      if (v50)
      {
        v75 = a4;
        v76 = v17;
        v74 = v14;
        v83[0] = _swiftEmptyArrayStorage;
        v78 = v49;
        sub_1001747A4(0, v50, 0);
        v51 = v78;
        v52 = 32;
        v53 = v83[0];
        v54 = 0x656E6F7A656D6974;
        do
        {
          v55 = *(v51 + v52);
          if (v55 == 6)
          {
            v56 = 0x6F6973726556736FLL;
          }

          else
          {
            v56 = v54;
          }

          if (v55 == 6)
          {
            v57 = 0xE90000000000006ELL;
          }

          else
          {
            v57 = 0xEE0074657366664FLL;
          }

          if (v55 == 4)
          {
            v58 = 0x56646C697542736FLL;
          }

          else
          {
            v58 = 0x656D614E736FLL;
          }

          if (v55 == 4)
          {
            v59 = 0xEE006E6F69737265;
          }

          else
          {
            v59 = 0xE600000000000000;
          }

          if (*(v51 + v52) <= 5u)
          {
            v56 = v58;
            v57 = v59;
          }

          v60 = 0x726556746E657665;
          if (v55 == 2)
          {
            v60 = 0x7372655665736162;
          }

          v61 = 0xEC0000006E6F6973;
          if (v55 == 2)
          {
            v61 = 0xEB000000006E6F69;
          }

          if (*(v51 + v52))
          {
            v62 = 0x6973726556707061;
          }

          else
          {
            v62 = 7368801;
          }

          if (*(v51 + v52))
          {
            v63 = 0xEA00000000006E6FLL;
          }

          else
          {
            v63 = 0xE300000000000000;
          }

          if (*(v51 + v52) <= 1u)
          {
            v60 = v62;
            v61 = v63;
          }

          if (*(v51 + v52) <= 3u)
          {
            v64 = v60;
          }

          else
          {
            v64 = v56;
          }

          if (*(v51 + v52) <= 3u)
          {
            v65 = v61;
          }

          else
          {
            v65 = v57;
          }

          v83[0] = v53;
          v67 = v53[2];
          v66 = v53[3];
          if (v67 >= v66 >> 1)
          {
            v69 = v54;
            sub_1001747A4((v66 > 1), v67 + 1, 1);
            v54 = v69;
            v51 = v78;
            v53 = v83[0];
          }

          v53[2] = v67 + 1;
          v68 = &v53[2 * v67];
          v68[4] = v64;
          v68[5] = v65;
          ++v52;
          --v50;
        }

        while (v50);

        v14 = v74;
        a4 = v75;
        v17 = v76;
        v16 = v77;
      }

      else
      {

        v53 = _swiftEmptyArrayStorage;
      }

      sub_1000E0F24(v53);

      v70 = Array._bridgeToObjectiveC()().super.isa;

      [v17 removePropertiesForKeys:v70];
    }
  }

  (*(v14 + 8))(v16, a4);
  return v17;
}

uint64_t sub_100177A34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = type metadata accessor for Logger();
  v28[1] = *(v29 - 8);
  v9 = __chkstk_darwin(v29);
  __chkstk_darwin(v9);
  v30 = v11;
  v12 = *(v11 + 16);
  v31 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a4;
  v12();
  sub_100005B60(a1, a1[3]);
  type metadata accessor for DictionaryEncoder();
  inited = swift_initStackObject();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(inited + 16) = JSONEncoder.init()();
  sub_1000BD7D4();

  sub_100085D40(&qword_10059D9B8);
  if (swift_dynamicCast())
  {
    v14 = v33;
    v15 = v31;
    v16 = v32;
    v17 = sub_100177FE0(a1, v31, a3, v32, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v14;
    sub_100179938(v17, sub_100176F18, 0, isUniquelyReferenced_nonNull_native, v34);

    v19 = v34[0];
    v20 = a1[3];
    v21 = a1[4];
    sub_100005B60(a1, v20);
    v22 = (*(v21 + 40))(v20, v21);
    if (v22)
    {
      v23 = v22;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v19;
      sub_100179938(v23, sub_100176F18, 0, v24, v34);

      v19 = v34[0];
    }

    v25 = v16;
    v26 = v15;
  }

  else
  {
    v19 = 0;
    v26 = v31;
    v25 = v32;
  }

  (*(v30 + 8))(v26, v25);
  return v19;
}

uint64_t sub_100177FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v98 = a3;
  v94 = sub_100085D40(&qword_10059DDB8);
  v7 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v86 - v8;
  v92 = type metadata accessor for Locale();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100085D40(&qword_10059DDC0);
  v11 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v86 - v12;
  v13 = sub_100085D40(&qword_10059DDC8);
  v14 = __chkstk_darwin(v13 - 8);
  v103 = &v86 - v15;
  __chkstk_darwin(v14);
  v97 = v17;
  v18 = *(v17 + 16);
  v100 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18();
  v19 = a1[3];
  v20 = a1[4];
  v104 = a1;
  sub_100005B60(a1, v19);
  v21 = (*(v20 + 88))(v19, v20);
  v106 = *(v21 + 16);
  if (!v106)
  {

    v23 = &_swiftEmptyDictionarySingleton;
LABEL_69:
    v82 = sub_100178D48(v104, v100, v98, a4);
    if (v82)
    {
      v83 = sub_100180AE0(v82);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v109 = v23;
      sub_100179938(v83, sub_100176F18, 0, isUniquelyReferenced_nonNull_native, &v109);

      v23 = v109;
    }

    (*(v97 + 8))(v100, a4);
    return v23;
  }

  v90 = a4;
  v22 = 0;
  v105 = v21 + 32;
  v101 = 0x8000000100450BC0;
  v89 = (v9 + 8);
  v88 = (v7 + 8);
  v87 = (v11 + 8);
  v23 = &_swiftEmptyDictionarySingleton;
  v24 = v103;
  v25 = v21;
  v102 = v21;
  while (v22 < *(v25 + 16))
  {
    v27 = *(v105 + v22);
    if (v27 <= 1)
    {
      if (*(v105 + v22))
      {
        v35 = [objc_opt_self() buildVersion];
      }

      else
      {
        v35 = [objc_opt_self() operatingSystem];
      }

      v58 = v35;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      *(&v113 + 1) = &type metadata for String;
      *&v112 = v59;
      *(&v112 + 1) = v61;
    }

    else
    {
      if (v27 == 2)
      {
        v36 = MobileGestalt_get_current_device();
        if (!v36)
        {
          goto LABEL_76;
        }

        v37 = v36;
        v38 = MobileGestalt_copy_productType_obj();

        if (v38)
        {
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v42 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v42)
          {
            v43 = 4 * v42;
            do
            {
              String.subscript.getter();
              v44 = Character.isNumber.getter();
            }

            while ((v44 & 1) == 0 && v43 != String.index(after:)() >> 14);
          }

          String.subscript.getter();

          v31 = static String._fromSubstring(_:)();
          v33 = v62;

          v34 = &type metadata for String;
          v24 = v103;
          v25 = v102;
        }

        else
        {
          v34 = 0;
          v33 = 0;
          v31 = 0;
        }

LABEL_39:
        *&v112 = v31;
        *(&v112 + 1) = v33;
        *&v113 = 0;
        *(&v113 + 1) = v34;
        goto LABEL_40;
      }

      if (v27 == 3)
      {
        v28 = MobileGestalt_get_current_device();
        if (!v28)
        {
          goto LABEL_75;
        }

        v29 = v28;
        v30 = MobileGestalt_copy_productType_obj();

        if (v30)
        {
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = &type metadata for String;
        }

        else
        {
          v33 = 0;
          v31 = 0;
          v34 = 0;
        }

        goto LABEL_39;
      }

      v45 = v104[3];
      v46 = v104[4];
      sub_100005B60(v104, v45);
      v47 = (*(v46 + 40))(v45, v46);
      if (!v47)
      {
        v113 = 0u;
        v112 = 0u;
        goto LABEL_34;
      }

      v48 = v47;
      *&v111 = 0xD000000000000010;
      *(&v111 + 1) = v101;
      AnyHashable.init<A>(_:)();
      if (!*(v48 + 16) || (v49 = sub_1000EE7C4(&v109), (v50 & 1) == 0))
      {

        sub_1000B5BDC(&v109);
        v112 = 0u;
        v113 = 0u;
LABEL_34:
        sub_100005518(&v112, &unk_10059CC50);
LABEL_35:
        v112 = 0u;
        v113 = 0u;
        goto LABEL_40;
      }

      sub_10009F6D0(*(v48 + 56) + 32 * v49, &v112);
      sub_1000B5BDC(&v109);

      if (!*(&v113 + 1))
      {
        goto LABEL_34;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_35;
      }

      v51 = v91;
      static Locale.current.getter();
      static RegexComponent<>.localizedInteger(locale:)();
      (*v89)(v51, v92);
      String.subscript.getter();
      v86 = 0;

      sub_100142FB0();
      v52 = v24;
      v53 = v93;
      v54 = v52;
      dispatch thunk of RegexComponent.regex.getter();
      v55 = v94;
      v56 = v86;
      Regex.firstMatch(in:)();
      if (v56)
      {

        (*v88)(v53, v55);
        (*v87)(v95, v96);
        v57 = sub_100085D40(&qword_10059DDD8);
        (*(*(v57 - 8) + 56))(v54, 1, 1, v57);
      }

      else
      {

        (*v88)(v53, v55);
        (*v87)(v95, v96);
      }

      v24 = v54;
      v76 = sub_100085D40(&qword_10059DDD8);
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(v54, 1, v76) == 1)
      {
        sub_100005518(v54, &qword_10059DDC8);
        v109 = 0u;
        v110 = 0u;
      }

      else
      {
        *(&v110 + 1) = &type metadata for Int;
        Regex.Match.output.getter();
        (*(v77 + 8))(v54, v76);
      }

      v25 = v102;
      v112 = v109;
      v113 = v110;
    }

LABEL_40:
    sub_1000FE388(&v112, &v109);
    if (*(&v110 + 1))
    {
      sub_1000828A8(&v109, &v111);
      if (v27 <= 1)
      {
        if (v27)
        {
          v63 = 0x4E646C697542736FLL;
          v64 = 0x7265626D75;
LABEL_50:
          v65 = v64 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        }

        else
        {
          v65 = 0xE200000000000000;
          v63 = 29551;
        }
      }

      else if (v27 == 2)
      {
        v63 = 0x6572617764726168;
        v65 = 0xEE00796C696D6146;
      }

      else
      {
        if (v27 == 3)
        {
          v63 = 0x6572617764726168;
          v64 = 0x6C65646F4DLL;
          goto LABEL_50;
        }

        v63 = 0x6F724665726F7473;
        v65 = 0xEC0000006449746ELL;
      }

      *&v108[0] = v63;
      *(&v108[0] + 1) = v65;
      AnyHashable.init<A>(_:)();
      sub_10009F6D0(&v111, v108);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v67 = sub_1000EE7C4(&v109);
      v69 = v23[2];
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        goto LABEL_73;
      }

      v73 = v68;
      if (v23[3] >= v72)
      {
        if (v66)
        {
          goto LABEL_56;
        }

        v78 = v67;
        sub_1001B1CF8();
        v67 = v78;
        v23 = v107;
        if ((v73 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_57:
        v75 = (v23[7] + 32 * v67);
        sub_100005A00(v75);
        sub_1000828A8(v108, v75);
        sub_1000B5BDC(&v109);
        sub_100005A00(&v111);
      }

      else
      {
        sub_1001AF9C4(v72, v66);
        v67 = sub_1000EE7C4(&v109);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_77;
        }

LABEL_56:
        v23 = v107;
        if (v73)
        {
          goto LABEL_57;
        }

LABEL_64:
        v23[(v67 >> 6) + 8] |= 1 << v67;
        v79 = v67;
        sub_1000F26AC(&v109, v23[6] + 40 * v67);
        sub_1000828A8(v108, (v23[7] + 32 * v79));
        sub_1000B5BDC(&v109);
        sub_100005A00(&v111);
        v80 = v23[2];
        v71 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v71)
        {
          goto LABEL_74;
        }

        v23[2] = v81;
      }

      v26 = &v112;
      goto LABEL_4;
    }

    sub_100005518(&v112, &unk_10059CC50);
    v26 = &v109;
LABEL_4:
    sub_100005518(v26, &unk_10059CC50);
    if (++v22 == v106)
    {

      a4 = v90;
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100178D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  __chkstk_darwin(a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = a1[3];
  v10 = a1[4];
  sub_100005B60(a1, v9);
  if (((*(v10 + 56))(v9, v10) & 1) != 0 || (v11 = a1[3], v12 = a1[4], sub_100005B60(a1, v11), (*(v12 + 80))(v11, v12), !v13))
  {
    v22 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
    v15 = String._bridgeToObjectiveC()();
    [v14 setDomain:v15];

    v16 = dispatch thunk of Bag.subscript.getter();
    v18 = v17;

    if (v18)
    {
      v19 = a1[3];
      v20 = a1[4];
      sub_100005B60(a1, v19);
      (*(v20 + 48))(v19, v20);
    }

    else
    {
      v21 = *&v16;
    }

    [v14 setResetInterval:v21];
    v23 = objc_allocWithZone(AMSProcessInfo);
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 initWithBundleIdentifier:v24];

    [v14 setClientInfo:v25];
    v39 = _swiftEmptyArrayStorage;
    v26 = a1[3];
    v27 = a1[4];
    sub_100005B60(a1, v26);
    if ((*(v27 + 64))(v26, v27))
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() keyWithName:v28 crossDeviceSync:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v30 = a1[3];
    v31 = a1[4];
    sub_100005B60(a1, v30);
    if ((*(v31 + 72))(v30, v31))
    {
      v32 = String._bridgeToObjectiveC()();
      v33 = [objc_opt_self() keyWithName:v32 crossDeviceSync:1];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100179B7C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [v14 generateEventFieldsForKeys:isa];

    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = sub_1001731D4(v36);
  }

  (*(v6 + 8))(v8, a4);
  return v22;
}

void *sub_100179208(uint64_t a1)
{
  v21 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v18 = &v17 - v5;
  sub_100085D40(&qword_10059CED0);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100435FD0;
  v17 = v8;
  v9 = v8 + v7;
  v10 = *(v2 + 104);
  v10(v8 + v7, enum case for Calendar.Component.year(_:), v1);
  v10(v9 + v6, enum case for Calendar.Component.month(_:), v1);
  v10(v9 + 2 * v6, enum case for Calendar.Component.day(_:), v1);
  v10(v9 + 3 * v6, enum case for Calendar.Component.hour(_:), v1);
  v10(v9 + 4 * v6, enum case for Calendar.Component.minute(_:), v1);
  v10(v9 + 5 * v6, enum case for Calendar.Component.second(_:), v1);
  v19 = v6;
  v10(v9 + 6 * v6, enum case for Calendar.Component.nanosecond(_:), v1);
  v22 = &_swiftEmptySetSingleton;
  v11 = *(v2 + 16);
  v12 = 8;
  do
  {
    if (!--v12)
    {
      break;
    }

    v13 = v20;
    v14 = v9 + v19;
    v11(v20, v9, v1);
    v15 = v18;
    sub_1001750DC(v18, v13);
    (*(v2 + 8))(v15, v1);
    v9 = v14;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v22;
}

id sub_1001794D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v22 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DateComponents();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100179208(a2);
  Calendar.dateComponents(_:from:)();

  v16 = *(v10 + 8);
  v16(v12, v9);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v16(v12, v9);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v15, v23);
    sub_100005518(v5, &qword_10059CB40);
    return 0;
  }

  else
  {
    v18 = v22;
    (*(v7 + 32))(v22, v5, v6);
    v19 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = [v19 serverTimeFromDate:isa];

    (*(v7 + 8))(v18, v6);
    (*(v13 + 8))(v15, v23);
    return v21;
  }
}

unint64_t sub_100179840(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100509A68, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10017988C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001798D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v5[3];
  v8 = v5[4];
  v9 = sub_100005B60(v5, v7);
  result = sub_100177244(a1, v9, v6, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_100179938(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_1001770BC(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_10013CD30();
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_1000828A8(&v40, v33);
    v15 = *a5;
    v16 = sub_1000EE7C4(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_1001AF9C4(v21, a4 & 1);
      v16 = sub_1000EE7C4(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_1001B1CF8();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10009F6D0(*(*a5 + 56) + 32 * v16, v32);
      sub_100005A00(v33);
      sub_1000B5BDC(&v34);
      v14 = *(v12 + 56);
      sub_100005A00(v14 + v13);
      sub_1000828A8(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_1000828A8(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_1001770BC(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100179B7C()
{
  result = qword_10059E6D0;
  if (!qword_10059E6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059E6D0);
  }

  return result;
}

uint64_t sub_100179BC8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_100179E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a2;
  v25 = a8;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v24 - v17;
  __chkstk_darwin(v16);
  (*(v20 + 16))(&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v21 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v18, v21 ^ 1u, 1, a3);
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = v24;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = sub_10017A2C8;
  v33 = &v34;
  sub_100179BC8(sub_10017A2D8, v26, &type metadata for Never, &type metadata for Any + 8, v22, v25);
  return (*(v15 + 8))(v18, v14);
}

_OWORD *sub_10017A0BC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = v14 - v9;
  a2(a1);
  v11 = *(a3 - 8);
  result = (*(v11 + 48))(v10, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v15 = a3;
    v13 = sub_100005F38(v14);
    (*(v11 + 32))(v13, v10, a3);
    return sub_1000828A8(v14, a4);
  }

  return result;
}

double sub_10017A210@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 __swift_objectForKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_10017A310@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (*(a4 + 16) && (result = sub_1000EE808(result, a2), (v8 & 1) != 0))
  {
    sub_10009F6D0(*(a4 + 56) + 32 * result, &v19);
    sub_1000828A8(&v19, v22);
    v9 = *(a3 + 16);
    if (v9)
    {
      for (i = (a3 + 40); ; i += 2)
      {
        v11 = *(i - 1);
        v12 = *i;
        sub_10009F6D0(v22, v18);

        sub_100085D40(&qword_10059EAE0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100005A00(v22);

          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          result = sub_100005518(&v15, &qword_10059EAE8);
          goto LABEL_10;
        }

        sub_1000056B8(&v15, &v19);
        v13 = v20;
        v14 = v21;
        sub_100005B60(&v19, v20);
        v18[0] = v11;
        v18[1] = v12;
        (*(v14 + 8))(&v15, v18, &type metadata for String, &protocol witness table for String, v13, v14);
        sub_100005A00(v22);

        if (!*(&v16 + 1))
        {
          break;
        }

        sub_1000828A8(&v15, v22);
        sub_100005A00(&v19);
        if (!--v9)
        {
          return sub_1000828A8(v22, a5);
        }
      }

      sub_100005518(&v15, &unk_10059CC50);
      *a5 = 0u;
      a5[1] = 0u;
      return sub_100005A00(&v19);
    }

    else
    {
      return sub_1000828A8(v22, a5);
    }
  }

  else
  {
LABEL_10:
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_10017A4F8()
{
  v1 = (v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___updateState);
  if (*(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___updateState + 8) != 1)
  {
    return *v1;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10023E604(v0, v2);

  result = v3;
  *v1 = v3;
  v1[8] = 0;
  return result;
}

id sub_10017A580()
{
  v1 = (v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID);
  if (*(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID + 8) != 1)
  {
    return *v1;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10023E51C(v0, v2);

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];

    result = v4;
  }

  else
  {
    result = 0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_10017A62C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata);
  v3 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata);
  v4 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata + 8);
  v5 = v3;
  if (v4 >> 60 == 11)
  {
    v5 = sub_10017CD10(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;
    sub_1000FE3F8(v5, v8);
    sub_10017E3F0(v6, v7);
  }

  sub_10017E404(v3, v4);
  return v5;
}

uint64_t sub_10017A6C0()
{
  v1 = (v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID);
  if (*(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = sub_10023E644(v0, v3);

    if (v4)
    {
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v2 = 0;
      v6 = 0xE000000000000000;
    }

    *v1 = v2;
    v1[1] = v6;
  }

  return v2;
}

objc_class *sub_10017A78C()
{
  v1 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid;
  v2 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = sub_10023E51C(v0, v4);

    isa = v5;
    if (!v5)
    {
      sub_100084500();
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10017A848(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadataDictionary] = 1;
  *&v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary] = 1;
  v4 = &v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata] = xmmword_100438550;
  *&v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid] = 0;
  v5 = &v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___updateState];
  *v6 = 0;
  v6[8] = 1;
  v1[OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithDatabaseID:propertyValues:externalPropertyValues:", a1, isa, v8);

  return v9;
}

uint64_t sub_10017AB10()
{
  v0 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v0 - 8);
  v2 = v26 - v1;
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v3._countAndFlagsBits = 0x656C646E7562207BLL;
  v3._object = 0xEC000000203A4449;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_10017A6C0();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3A44496D65746920;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);
  v26[1] = sub_10017A580();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6469766520;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = sub_10017A78C();
  v9 = [(objc_class *)v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x8000000100452250;
  v14._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v14);
  sub_10017ADD0(v2);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v2, 1, v15) == 1)
  {
    sub_100005518(v2, &qword_10059CB40);
LABEL_5:
    v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_6;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v2, v15);
  v18 = sub_1002525A8(isa);

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v19;
LABEL_6:
  v23 = v21;
  String.append(_:)(*&v22);

  v24._countAndFlagsBits = 32032;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  return v27;
}

uint64_t sub_10017ADD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100085D40(&unk_10059EAF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10017B368();
  if (v8)
  {
    sub_10017A310(0xD000000000000011, 0x8000000100452270, &off_100509B38, v8, &v23);

    sub_1000BC3E4(&unk_100509B58);
    if (v24)
    {
      if (swift_dynamicCast())
      {
        v9 = [objc_allocWithZone(NSDateFormatter) init];
        v10 = String._bridgeToObjectiveC()();
        [v9 setDateFormat:v10];

        [v9 setLenient:1];
        TimeZone.init(secondsFromGMT:)();
        v11 = type metadata accessor for TimeZone();
        v12 = *(v11 - 8);
        isa = 0;
        if ((*(v12 + 48))(v7, 1, v11) != 1)
        {
          isa = TimeZone._bridgeToObjectiveC()().super.isa;
          (*(v12 + 8))(v7, v11);
        }

        [v9 setTimeZone:isa];

        v14 = String._bridgeToObjectiveC()();

        v15 = [v9 dateFromString:v14];

        if (v15)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v16 = 0;
          v9 = v15;
        }

        else
        {
          v16 = 1;
        }

        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 56))(v4, v16, 1, v21);
        return sub_100117568(v4, a1);
      }
    }

    else
    {
      sub_100005518(&v23, &unk_10059CC50);
    }

    v20 = type metadata accessor for Date();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, 1, 1, v17);
}

uint64_t sub_10017B1B8()
{
  v1 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadataDictionary;
  v2 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadataDictionary);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_10017A62C();
    if (v5 >> 60 != 15)
    {
      v6 = v4;
      v7 = v5;
      v8 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v16[0] = 0;
      v10 = [v8 JSONObjectWithData:isa options:0 error:v16];

      if (v10)
      {
        v11 = v16[0];
        _bridgeAnyObjectToAny(_:)();
        sub_1000A7F1C(v6, v7);
        swift_unknownObjectRelease();
        sub_100085D40(&unk_10059DC90);
        if (swift_dynamicCast())
        {
          v3 = v15;
LABEL_8:
          v13 = *(v0 + v1);
          *(v0 + v1) = v3;

          sub_10017E3D0(v13);
          goto LABEL_9;
        }
      }

      else
      {
        v12 = v16[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1000A7F1C(v6, v7);
      }
    }

    v3 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_10017E3E0(v2);
  return v3;
}

uint64_t sub_10017B368()
{
  v1 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary;
  v2 = *(v0 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_10017B1B8();
    if (v4)
    {
      v3 = sub_1000BC2C8(v4);
    }

    else
    {
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_10017E3D0(v5);
  }

  sub_10017E3E0(v2);
  return v3;
}

uint64_t sub_10017B3F4(uint64_t a1, uint64_t a2)
{
  v3[98] = v2;
  v3[97] = a2;
  v3[96] = a1;
  v3[99] = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v3[100] = v4;
  v3[101] = *(v4 - 8);
  v3[102] = swift_task_alloc();

  return _swift_task_switch(sub_10017B4F4, 0, 0);
}

uint64_t sub_10017B4F4()
{
  v96 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  v3 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadataDictionary;
  *(v0 + 824) = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadataDictionary;
  *(v1 + v3) = 1;
  v4 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary;
  *(v0 + 832) = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary;
  *(v1 + v4) = 1;
  v5 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID;
  *(v0 + 840) = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID;
  v6 = (v1 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata;
  *(v0 + 848) = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___metadata;
  *(v1 + v7) = xmmword_100438550;
  v8 = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid;
  *(v0 + 856) = OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid;
  *(v1 + v8) = 0;
  v9 = v1 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___updateState;
  *v10 = 0;
  *(v10 + 8) = 1;
  if (!*(v2 + 16))
  {
    goto LABEL_15;
  }

  v11 = sub_1000EE808(25705, 0xE200000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_10009F6D0(*(*(v0 + 768) + 56) + 32 * v11, v0 + 480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = *(v0 + 776);

    goto LABEL_17;
  }

  v13 = sub_1001704B4(*(v0 + 600), *(v0 + 608));
  *(v0 + 864) = v13;
  if ((v14 & 1) != 0 || (v15 = v13, v16 = sub_1000BC2C8(*(v0 + 768)), (*(v0 + 872) = v16) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = v16;
  if (!*(v16 + 16) || (v18 = sub_1000EE808(0x6449656C646E7562, 0xE800000000000000), (v19 & 1) == 0))
  {

LABEL_23:

    goto LABEL_16;
  }

  sub_10009F6D0(*(v17 + 56) + 32 * v18, v0 + 512);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = *(v0 + 776);

    goto LABEL_17;
  }

  v20 = *(v0 + 624);
  if (!*(v17 + 16) || (v21 = *(v0 + 616), v22 = sub_1000EE808(0xD000000000000011, 0x8000000100450730), (v23 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_10009F6D0(*(v17 + 56) + 32 * v22, v0 + 544);
  v24 = swift_dynamicCast();
  v25 = *(v0 + 776);
  if (v24)
  {
    *(v0 + 880) = *(v0 + 744);

    v26 = sub_10017E418(v15, v21, v20, v25);
    *(v0 + 888) = v26;

    v92 = (v0 + 728);
    if (!v26)
    {
      v94 = v21;
      v38 = 0;
      v86 = 0;
      v89 = 0;
      *(*(v0 + 784) + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip) = 0;
LABEL_52:
      v53 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 752) = 0;
      v55 = [v53 dataWithJSONObject:isa options:0 error:v0 + 752];

      v56 = *(v0 + 752);
      if (v55)
      {
        v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        log = v58;
        v85 = v57;

        if (v89)
        {
          if (v86)
          {
            v59 = 20;
          }

          else
          {
            v59 = 4;
          }

          if (!v38)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v86)
          {
            v59 = 16;
          }

          else
          {
            v59 = 0;
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v59 |= 0x20uLL;
LABEL_66:
        v80 = *(v0 + 880);
        v81 = *(v0 + 864);
        v88 = *(v0 + 776);
        v91 = *(v0 + 872);
        sub_100085D40(&qword_10059EB10);
        v83 = *(v0 + 784);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100438560;
        *(v0 + 632) = 0xD000000000000015;
        *(v0 + 640) = 0x800000010044BEF0;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Int;
        *(inited + 72) = v59;
        *(v0 + 648) = 0x695F656C646E7562;
        *(v0 + 656) = 0xE900000000000064;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v94;
        *(inited + 152) = v20;
        *(v0 + 664) = 0xD000000000000019;
        *(v0 + 672) = 0x800000010044BF10;

        AnyHashable.init<A>(_:)();
        *(inited + 240) = &type metadata for Int64;
        *(inited + 216) = v80;
        *(v0 + 680) = 0x64695F6D657469;
        *(v0 + 688) = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for Int64;
        *(inited + 288) = v81;
        *(v0 + 696) = 0x617461646174656DLL;
        *(v0 + 704) = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 384) = &type metadata for Data;
        *(inited + 360) = v85;
        *(inited + 368) = log;
        strcpy((v0 + 712), "update_state");
        *(v0 + 725) = 0;
        *(v0 + 726) = -5120;
        sub_100088C88(v85, log);
        AnyHashable.init<A>(_:)();
        *(inited + 456) = &type metadata for Int;
        *(inited + 432) = 0;
        sub_1000EF040(inited);
        swift_setDeallocating();
        sub_100085D40(&unk_10059CDF0);
        swift_arrayDestroy();
        v76 = Dictionary._bridgeToObjectiveC()().super.isa;

        sub_1000EF040(_swiftEmptyArrayStorage);
        v77 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v92 = v83;
        v78 = [(objc_super *)v92 initWithDatabaseID:0 propertyValues:v76 externalPropertyValues:v77];
        sub_100088CDC(v85, log);

        v79 = *(&v78->receiver + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary);
        *(&v78->receiver + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary) = v91;
        v33 = v78;
        sub_10017E3D0(v79);

        goto LABEL_18;
      }

      v60 = v56;
      v61 = *(v0 + 776);

      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.updates.getter();
      v62 = v61;
      swift_errorRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      v65 = os_log_type_enabled(v63, v64);
      v66 = *(v0 + 816);
      v67 = *(v0 + 808);
      v68 = *(v0 + 800);
      v69 = *(v0 + 776);
      if (v65)
      {
        v93 = *(v0 + 800);
        v70 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v95[0] = swift_slowAlloc();
        *v70 = 138412802;
        *(v70 + 4) = v69;
        *v82 = v69;
        v90 = v66;
        *(v70 + 12) = 2082;

        v87 = v69;
        v71 = sub_1001AD0D8(v94, v20, v95);

        *(v70 + 14) = v71;
        *(v70 + 22) = 2082;
        swift_getErrorValue();
        v72 = Error.localizedDescription.getter();
        v74 = sub_1001AD0D8(v72, v73, v95);

        *(v70 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%@] Error serializing update metadata for %{public}s: %{public}s", v70, 0x20u);
        sub_100005518(v82, &unk_10059C250);

        swift_arrayDestroy();

        (*(v67 + 8))(v90, v93);
      }

      else
      {

        (*(v67 + 8))(v66, v68);
      }

      goto LABEL_16;
    }

    v27 = [v26 appClipMetadata];
    v28 = *(v0 + 784);
    if (v27)
    {

      *(v28 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip) = 1;
      LOBYTE(v27) = sub_10040C624(v26);
    }

    else
    {
      *(v28 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip) = 0;
    }

    *(v0 + 920) = v27;
    v39 = [v26 bundleIdentifier];
    if (v39)
    {
      v40 = v39;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v20 = v42;
    }

    *(v0 + 904) = v20;
    *(v0 + 896) = v21;
    if ((*(*(v0 + 784) + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip) & 1) == 0 && ([v26 isPlaceholder] & 1) == 0 && objc_msgSend(v26, "applicationHasMIDBasedSINF"))
    {
      if (qword_10059B510 != -1)
      {
        swift_once();
      }

      v43 = [v26 iTunesMetadata];
      v44 = [v43 storeItemIdentifier];

      v45 = swift_task_alloc();
      *(v0 + 912) = v45;
      *v45 = v0;
      v45[1] = sub_10017C19C;

      return sub_100120588(v44);
    }

    if ([*(v0 + 888) isPlaceholder])
    {
      v89 = [*(v0 + 888) placeholderFailureReason] == 4;
    }

    else
    {
      v89 = 0;
    }

    v46 = sub_10040CF04(*(v0 + 888));
    if (v46)
    {
      v47 = v46;
      v48 = [v46 DSPersonID];
      if (v48)
      {
        v49 = v48;
        v50 = [objc_opt_self() ams_sharedAccountStore];
        v51 = [v50 ams_iTunesAccountWithDSID:v49];

        v52 = *(v0 + 888);
        if (v51)
        {
          v86 = [v51 ams_isManagedAppleID];

LABEL_51:
          v20 = *(v0 + 904);
          v94 = *(v0 + 896);
          v38 = *(v0 + 920);
          goto LABEL_52;
        }
      }

      else
      {
        v52 = *(v0 + 888);
      }
    }

    else
    {
    }

    v86 = 0;
    goto LABEL_51;
  }

LABEL_16:

LABEL_17:
  v29 = *(v0 + 856);
  v30 = *(v0 + 832);
  v31 = *(v0 + 784);
  v32 = v31 + *(v0 + 848);
  sub_10017E3D0(*(v31 + *(v0 + 824)));
  sub_10017E3D0(*(v31 + v30));

  sub_10017E3F0(*v32, *(v32 + 8));

  swift_deallocPartialClassInstance();
  v33 = 0;
LABEL_18:

  v34 = *(v0 + 8);

  return v34(v33);
}

uint64_t sub_10017C19C(char a1)
{
  *(*v1 + 921) = a1;

  return _swift_task_switch(sub_10017C2C8, 0, 0);
}

uint64_t sub_10017C2C8()
{
  v64 = v0;
  v1 = *(v0 + 921);
  if ([*(v0 + 888) isPlaceholder])
  {
    v57 = [*(v0 + 888) placeholderFailureReason] == 4;
  }

  else
  {
    v57 = 0;
  }

  v2 = sub_10040CF04(*(v0 + 888));
  if (v2)
  {
    v3 = v2;
    v4 = [v2 DSPersonID];
    if (v4)
    {
      v5 = v4;
      v6 = v1;
      v7 = [objc_opt_self() ams_sharedAccountStore];
      v8 = [v7 ams_iTunesAccountWithDSID:v5];

      v9 = *(v0 + 888);
      if (v8)
      {
        v10 = [v8 ams_isManagedAppleID];
      }

      else
      {

        v10 = 0;
        v5 = v9;
      }

      v1 = v6;
    }

    else
    {
      v5 = *(v0 + 888);

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v5 = *(v0 + 888);
  }

  v61 = *(v0 + 896);
  v62 = *(v0 + 904);
  v59 = (v0 + 728);
  v11 = *(v0 + 920);
  v12 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 752) = 0;
  v14 = [v12 dataWithJSONObject:isa options:0 error:v0 + 752];

  v15 = *(v0 + 752);
  if (!v14)
  {
    v20 = v15;
    v21 = *(v0 + 776);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.updates.getter();
    v22 = v21;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 816);
    v27 = *(v0 + 808);
    v28 = *(v0 + 800);
    v29 = *(v0 + 776);
    if (v25)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v30 = 138412802;
      *(v30 + 4) = v29;
      *v31 = v29;
      v60 = v28;
      *(v30 + 12) = 2082;

      v56 = v29;
      v32 = sub_1001AD0D8(v61, v62, v63);

      *(v30 + 14) = v32;
      *(v30 + 22) = 2082;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1001AD0D8(v33, v34, v63);

      *(v30 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Error serializing update metadata for %{public}s: %{public}s", v30, 0x20u);
      sub_100005518(v31, &unk_10059C250);

      swift_arrayDestroy();

      (*(v27 + 8))(v26, v60);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    v36 = *(v0 + 856);
    v37 = *(v0 + 832);
    v38 = *(v0 + 784);
    v39 = v38 + *(v0 + 848);
    sub_10017E3D0(*(v38 + *(v0 + 824)));
    sub_10017E3D0(*(v38 + v37));

    sub_10017E3F0(*v39, *(v39 + 8));

    swift_deallocPartialClassInstance();
    v40 = 0;
    goto LABEL_38;
  }

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v17;
  v55 = v16;

  if (v57)
  {
    v18 = v10 == 0;
    if (v1)
    {
      if (v10)
      {
        v19 = 20;
      }

      else
      {
        v19 = 4;
      }

      if (!v11)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v41 = 12;
    v42 = 28;
    goto LABEL_32;
  }

  v18 = v10 == 0;
  if (!v1)
  {
    v41 = 8;
    v42 = 24;
LABEL_32:
    if (v18)
    {
      v19 = v41;
    }

    else
    {
      v19 = v42;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v10)
  {
    v19 = 16;
  }

  else
  {
    v19 = 0;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v19 |= 0x20uLL;
LABEL_37:
  v43 = *(v0 + 880);
  v58 = *(v0 + 872);
  v44 = *(v0 + 864);
  v53 = *(v0 + 776);
  sub_100085D40(&qword_10059EB10);
  v52 = *(v0 + 784);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100438560;
  *(v0 + 632) = 0xD000000000000015;
  *(v0 + 640) = 0x800000010044BEF0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v19;
  *(v0 + 648) = 0x695F656C646E7562;
  *(v0 + 656) = 0xE900000000000064;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v61;
  *(inited + 152) = v62;
  *(v0 + 664) = 0xD000000000000019;
  *(v0 + 672) = 0x800000010044BF10;

  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Int64;
  *(inited + 216) = v43;
  *(v0 + 680) = 0x64695F6D657469;
  *(v0 + 688) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for Int64;
  *(inited + 288) = v44;
  *(v0 + 696) = 0x617461646174656DLL;
  *(v0 + 704) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Data;
  *(inited + 360) = v55;
  *(inited + 368) = v54;
  strcpy((v0 + 712), "update_state");
  *(v0 + 725) = 0;
  *(v0 + 726) = -5120;
  sub_100088C88(v55, v54);
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Int;
  *(inited + 432) = 0;
  sub_1000EF040(inited);
  swift_setDeallocating();
  sub_100085D40(&unk_10059CDF0);
  swift_arrayDestroy();
  v46 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000EF040(_swiftEmptyArrayStorage);
  v47 = Dictionary._bridgeToObjectiveC()().super.isa;

  *v59 = v52;
  v48 = [(objc_super *)v59 initWithDatabaseID:0 propertyValues:v46 externalPropertyValues:v47];
  sub_100088CDC(v55, v54);

  v49 = *(&v48->receiver + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary);
  *(&v48->receiver + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___platformSpecificAttributesDictionary) = v58;
  v40 = v48;
  sub_10017E3D0(v49);

LABEL_38:

  v50 = *(v0 + 8);

  return v50(v40);
}

uint64_t sub_10017CD10(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10023E0F8(a1, v2);

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005518(v8, &unk_10059CC50);
    return 0;
  }
}

uint64_t sub_10017D338()
{
  result = sub_10017B368();
  if (result)
  {
    v1 = result;
    if (!*(result + 16))
    {
      goto LABEL_26;
    }

    v2 = sub_1000EE808(0x73726566666FLL, 0xE600000000000000);
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_10009F6D0(*(v1 + 56) + 32 * v2, v15);

    sub_100085D40(&unk_10059EB00);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return 0;
    }

    v4 = *(v13 + 16);
    if (!v4)
    {
      goto LABEL_26;
    }

    v5 = 0;
    while (v5 < *(v13 + 16))
    {
      v7 = *(v13 + 8 * v5 + 32);
      if (*(v7 + 16))
      {

        v8 = sub_1000EE808(1701869940, 0xE400000000000000);
        if (v9)
        {
          sub_10009F6D0(*(v7 + 56) + 32 * v8, v15);
          if (swift_dynamicCast())
          {
            if (v13 == 0x657461647075 && v14 == 0xE600000000000000)
            {

LABEL_21:

              if (*(v7 + 16))
              {
                v10 = sub_1000EE808(0x6D61726150797562, 0xE900000000000073);
                if (v12)
                {
LABEL_23:
                  sub_10009F6D0(*(v7 + 56) + 32 * v10, v15);

                  if (swift_dynamicCast())
                  {
                    return v13;
                  }

                  else
                  {
                    return 0;
                  }
                }
              }

LABEL_26:

              return 0;
            }

            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v6)
            {
              goto LABEL_21;
            }
          }
        }
      }

      if (v4 == ++v5)
      {
        if (*(v13 + 16))
        {
          v7 = *(v13 + 32);

          if (*(v7 + 16))
          {
            v10 = sub_1000EE808(0x6D61726150797562, 0xE900000000000073);
            if (v11)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_30:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

id sub_10017D5E4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10017D664()
{
  v0 = sub_10017B1B8();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_8;
  }

  sub_10017A310(0x7475626972747461uLL, 0xEA00000000007365, &off_100509B68, v0, &v3);

  swift_arrayDestroy();
  if (!*(&v4 + 1))
  {
LABEL_8:
    sub_100005518(&v3, &unk_10059CC50);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017D77C()
{
  v0 = sub_10017B1B8();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_10017A310(0x7475626972747461uLL, 0xEA00000000007365, &off_100509BB8, v0, &v3);

  swift_arrayDestroy();
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_100005518(&v3, &unk_10059CC50);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  return 0;
}

id sub_10017D888(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(PurchaseInfo) initWithBag:a2];
  sub_10017A6C0();
  v13 = String._bridgeToObjectiveC()();

  [v12 setBundleID:v13];

  v14 = objc_allocWithZone(AMSProcessInfo);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithBundleIdentifier:v15];

  [v12 setClientInfo:v16];
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  [v12 setExternalID:isa];

  v18 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:sub_10017A580()];
  [v12 setItemID:v18];

  [v12 setDiscoveredUpdate:1];
  [v12 setDisableBoosting:1];
  v63 = a1;
  if (a1)
  {
    [v12 setPriority:0];
    [v12 setUpdateType:2];
    [v12 setLogCode:@"UPD"];
    [v12 setPurchaseType:4];
    v19 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:5];
    [v12 setMetricsType:v19];

    [v12 setSuppressEvaluatorDialogs:1];
  }

  else
  {
    [v12 setPriority:-2];
    [v12 setUpdateType:1];
    [v12 setDiscretionary:1];
    [v12 setSuppressDialogs:1];
    [v12 setSuppressEvaluatorDialogs:1];
    [v12 setLogCode:@"UPA"];
    v20 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:12];
    [v12 setMetricsType:v20];

    [v12 setPurchaseType:1];
  }

  sub_10017D338();
  if (v21)
  {
    v22 = objc_allocWithZone(AMSBuyParams);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 initWithString:v23];

    sub_10017D664();
    if (v25)
    {
      v26 = String._bridgeToObjectiveC()();

      v27 = String._bridgeToObjectiveC()();
      [v24 setParameter:v26 forKey:v27];
    }

    if ((v63 & 1) == 0)
    {
      v28 = String._bridgeToObjectiveC()();
      [v24 setParameter:v28 forKey:AMSBuyParamPropertyIsBackground];
    }

    [v12 setBuyParams:v24];
  }

  if ([objc_opt_self() deviceIsAppleTV])
  {
    [v12 setTVProvider:{objc_msgSend(objc_opt_self(), "isTVProviderApp:", *&v3[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID])}];
  }

  v29 = *&v3[OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID];
  v30 = objc_allocWithZone(LSApplicationRecord);
  *&v65 = 0;
  v31 = [v30 initWithStoreItemIdentifier:v29 error:&v65];
  if (v31)
  {
    v32 = v65;
    v33 = [v31 iTunesMetadata];
    v34 = [v33 itemName];

    if (v34)
    {
      [v12 setItemName:v34];
    }

    v35 = [v31 iTunesMetadata];
    v36 = [v35 artistName];

    if (v36)
    {
      [v12 setVendorName:v36];
    }

    v37 = [v31 applicationDSID];
    if ([v12 isTVProvider] && ((objc_msgSend(v31, "isProfileValidated") & 1) != 0 || !objc_msgSend(v31, "applicationHasMIDBasedSINF")))
    {
      [v12 setTVProvider:0];
    }
  }

  else
  {
    v38 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v37 = 0;
  }

  if ([v12 isTVProvider])
  {
    [v12 setLogCode:@"PTV"];
    [v12 setPurchaseType:2];
    if (!v31)
    {
      [v12 setUpdateType:0];
    }

    [v12 setMachineBased:1];
    v39 = [v12 buyParams];
    v40 = [v39 parameterForKey:AMSBuyParamPropertyAppExtVrsId];

    if (v40)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000828A8(v64, &v65);
      v41 = [v12 buyParams];
      v42 = AMSBuyParamPropertyExternalVersionId;
      v43 = [v41 parameterForKey:AMSBuyParamPropertyExternalVersionId];

      if (v43)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005518(v64, &unk_10059CC50);
      }

      else
      {
        memset(v64, 0, sizeof(v64));
        sub_100005518(v64, &unk_10059CC50);
        v44 = [v12 buyParams];
        sub_100005B60(&v65, v66);
        [v44 setParameter:_bridgeAnythingToObjectiveC<A>(_:)() forKey:v42];

        swift_unknownObjectRelease();
      }

      sub_100005A00(&v65);
    }
  }

  [v12 setExpectedSoftwarePlatform:1];
  v45 = v60;
  static Logger.updates.getter();
  v46 = v3;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v65 = v50;
    *v49 = 136446466;
    v51 = sub_10017AB10();
    v53 = sub_1001AD0D8(v51, v52, &v65);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2050;

    *(v49 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v47, v48, "(UpdateMemoryEntity) %{public}s expectedSoftwarePlatform=%{public}ld", v49, 0x16u);
    sub_100005A00(v50);
  }

  else
  {
  }

  (*(v61 + 8))(v45, v62);
  if ([v12 expectedSoftwarePlatform] != 2)
  {
    [v12 setCoordinatorIntent:2];
    if (v63)
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    [v12 setCoordinatorImportance:v54];
  }

  [v12 updateGeneratedProperties];
  if (v37)
  {
    v55 = [objc_opt_self() ams_sharedAccountStore];
    v56 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v37];
    v57 = [v55 ams_iTunesAccountWithDSID:v56];

    if (v57)
    {
      [v12 setAccount:v57];
    }
  }

  return v12;
}

uint64_t sub_10017E3D0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10017E3E0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10017E3F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1000A7F1C(a1, a2);
  }

  return a1;
}

uint64_t sub_10017E404(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1000FE3F8(a1, a2);
  }

  return a1;
}

id sub_10017E418(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (a1 < 0)
  {
    __break(1u);
  }

  v13 = objc_allocWithZone(LSApplicationRecord);
  v41 = 0;
  v14 = [v13 initWithStoreItemIdentifier:a1 error:&v41];
  v15 = v41;
  if (!v14)
  {
    v16 = v15;
    v40 = a2;
    v38 = a3;
    v17 = _convertNSErrorToError(_:)();

    v18 = v17;
    swift_willThrow();
    static Logger.updates.getter();
    v19 = a4;
    swift_errorRetain();
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v39 = v18;
    v36 = v20;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v37 = v9;
      v25 = v24;
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v25 = 138412802;
      *(v25 + 4) = v20;
      *v26 = v20;
      *(v25 + 12) = 2048;
      *(v25 + 14) = a1;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v27 = v20;
      v28 = Error.localizedDescription.getter();
      v30 = sub_1001AD0D8(v28, v29, &v41);

      *(v25 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Error looking up record for %lld: %{public}s", v25, 0x20u);
      sub_100005518(v26, &unk_10059C250);

      sub_100005A00(v35);

      v9 = v37;
    }

    (*(v9 + 8))(v12, v8);
    v31 = objc_allocWithZone(LSApplicationRecord);
    v32 = v38;

    v14 = sub_1001914DC(v40, v32, 1);
  }

  return v14;
}

uint64_t sub_10017E9E4()
{
  XPCDictionary.init()();
  String.init(cString:)();
  if (qword_10059B4A0 != -1)
  {
    swift_once();
  }

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();
  sub_100117514();

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();

  return XPCDictionary.subscript.setter();
}

uint64_t sub_10017EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10017EB80, 0, 0);
}

uint64_t sub_10017EB80()
{
  if (qword_10059B4B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10017EC44;

  return sub_1000DFD60();
}

uint64_t sub_10017EC44()
{

  return _swift_task_switch(sub_10017ED40, 0, 0);
}

uint64_t sub_10017ED40()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  sub_1003205AC(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017F104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100085384;

  return sub_10017EB60(a1, v4, v5, v7, v6);
}

uint64_t sub_10017F1C4(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10017F288, 0, 0);
}

uint64_t sub_10017F288()
{
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (*(v0 + 40))
  {
    v5 = *(v0 + 80);
    sub_1000828A8((v0 + 16), (v0 + 48));
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *(v1 + 16) = v5;
    *(v1 + 32) = v0 + 48;
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_10017F414;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0xD000000000000027, 0x8000000100452350, sub_10017FDC0, v1, &type metadata for Bool);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10017F414()
{

  return _swift_task_switch(sub_10017F52C, 0, 0);
}

uint64_t sub_10017F52C()
{
  if (*(v0 + 144))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    sub_100005A00(v0 + 48);
LABEL_8:

    v3 = *(v0 + 8);

    return v3();
  }

  sub_100005A00(v0 + 48);
  NSFastEnumerationIterator.next()();
  if (!*(v0 + 40))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_8;
  }

  v5 = *(v0 + 80);
  sub_1000828A8((v0 + 16), (v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v0 + 48;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10017F414;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0xD000000000000027, 0x8000000100452350, sub_10017FDC0, v1, &type metadata for Bool);
}

uint64_t sub_10017F6DC(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_100085D40(&qword_10059C4D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  a2(a4, sub_10017FDCC, v12);
}

uint64_t sub_10017F9CC(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  v7 = swift_allocObject();
  v3[4] = v7;
  *(v7 + 16) = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10017FAC4;

  return sub_10017F1C4(sub_10017FDB8, v7);
}

uint64_t sub_10017FAC4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10017FC20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_10017F9CC(v2, v3, v4);
}

uint64_t sub_10017FCD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005B60(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10018E644;
  v11[3] = &unk_100510958;
  v8 = _Block_copy(v11);
  v9 = *(a4 + 16);

  v9(a4, v7, v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_10017FDCC()
{
  sub_100085D40(&qword_10059C4D8);
  sub_100085D40(&qword_10059C4D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10017FE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017FE88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&unk_10059ECF0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10009F6D0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_1000828A8(v33, v32);
    sub_100085D40(&qword_10059C510);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000828A8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000828A8(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000828A8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100180184(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&qword_10059ED00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_10009F6D0(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1000828A8(v27, &v22);

        sub_100085D40(&qword_10059C510);
        swift_dynamicCast();
        sub_1000828A8(&v23, v25);
        sub_1000828A8(v25, v26);
        sub_1000828A8(v26, &v24);
        result = sub_1000EE808(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100005A00(v10);
          result = sub_1000828A8(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1000828A8(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100180410(uint64_t a1)
{
  v2 = type metadata accessor for AnyValue();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100085D40(&qword_10059E6D8);
  v5 = __chkstk_darwin(v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    sub_100085D40(&qword_10059ED00);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_10016710C(v26, v45);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_1000828A8(&v51, v53);
    sub_1000828A8(v53, v54);
    sub_1000828A8(v54, &v52);
    result = sub_1000EE808(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      sub_100005A00(v17);
      result = sub_1000828A8(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_1000828A8(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100180818(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&unk_10059ECF0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10009F6D0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000828A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000828A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000828A8(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000828A8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100180AE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&unk_10059ECF0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000828A8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000828A8(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000828A8(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100180DA8()
{
  *(v1 + 56) = v0;
  sub_100085D40(&qword_10059C3E0);
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100180E44, 0, 0);
}

uint64_t sub_100180E44()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_1003D3F88(v1, v2);

  if (!v3)
  {
    v3 = String._bridgeToObjectiveC()();
    sub_1003D4090(v1, 1, v3);
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000056D0(v5 + 32, v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1000056B8((v0 + 16), v7 + 32);
  sub_10019F02C(0, 0, v4, &unk_1004386F8, v7);

  v8 = *(v5 + 24);
  *(v0 + 72) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v9 "notificationClient")];
    *(v0 + 80) = v10;
    swift_unknownObjectRelease();
    if (v10)
    {
      if ([v10 handlesViews])
      {
        v11 = swift_task_alloc();
        *(v0 + 88) = v11;
        *v11 = v0;
        v11[1] = sub_1001810E0;

        return sub_1001813EC(v9);
      }
    }

    else
    {
      v10 = v9;
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_100181264;

  return sub_100182360();
}

uint64_t sub_1001810E0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10018137C;
  }

  else
  {
    v2 = sub_1001811F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001811F4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100181264()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10018137C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001813EC(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_100085D40(&qword_10059ECC0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10018152C, 0, 0);
}

uint64_t sub_10018152C()
{
  v1 = v0[24];
  static Logger.appInstall.getter();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v5 + 16);
    *(v7 + 4) = v9;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v9;
    v8[1] = v6;
    v10 = v6;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Presenting the Background Assets transparency sheet with the request token “%@”…", v7, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  v12 = v0[33];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v23 = v0[28];
  v16 = v0[26];
  v17 = v0[24];

  v18 = *(v13 + 8);
  v0[34] = v18;
  v0[35] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v14);
  v19 = [objc_allocWithZone(ASDViewPresentationRequest) initWithViewIdentifier:0];
  v0[36] = v19;
  v20 = [v17 notificationClient];
  v0[37] = v20;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100181878;
  swift_continuation_init();
  v0[17] = v16;
  v21 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &unk_10059ECC8);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v15 + 32))(v21, v23, v16);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100182E28;
  v0[13] = &unk_1005109A8;
  [v20 deliverViewPresentationRequest:v19 resultHandler:?];
  (*(v15 + 8))(v21, v16);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100181878()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_100181FA4;
  }

  else
  {
    v2 = sub_100181988;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100181988()
{
  v37 = v0;
  v1 = v0[21];
  swift_unknownObjectRelease();
  if ([v1 error])
  {
    swift_willThrow();

    _s3__C4CodeOMa_0(0);
    v0[22] = 1060;
    swift_errorRetain();
    sub_100183FB0();
    v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v2)
    {

      v3 = swift_task_alloc();
      v0[39] = v3;
      *v3 = v0;
      v3[1] = sub_100181DFC;

      return sub_100182360();
    }

    static Logger.appInstall.getter();

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[34];
    v21 = v0[31];
    v22 = v0[29];
    if (v19)
    {
      v23 = v0[25];
      v33 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v24 = 138412546;
      v35 = v22;
      v27 = *(v23 + 16);
      *(v24 + 4) = v27;
      *v25 = v27;
      *(v24 + 12) = 2082;
      swift_getErrorValue();
      v34 = v20;
      v28 = v27;
      v29 = Error.localizedDescription.getter();
      v31 = sub_1001AD0D8(v29, v30, &v36);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v17, v33, "[%@] Transparency sheet completed with error: %{public}s", v24, 0x16u);
      sub_100086A24(v25);

      sub_100005A00(v26);

      v34(v21, v35);
    }

    else
    {

      v20(v21, v22);
    }

    v32 = v0[36];
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    static Logger.appInstall.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[25];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v7 + 16);
      *(v8 + 4) = v10;
      *v9 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Transparency sheet confirmed", v8, 0xCu);
      sub_100086A24(v9);
    }

    v12 = v0[36];
    v13 = v0[34];
    v14 = v0[32];
    v15 = v0[29];

    v13(v14, v15);

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_100181DFC()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1001822CC;
  }

  else
  {
    v2 = sub_100181F10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100181F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100181FA4()
{
  v26 = v0;
  swift_willThrow();
  swift_unknownObjectRelease();
  _s3__C4CodeOMa_0(0);
  v0[22] = 1060;
  swift_errorRetain();
  sub_100183FB0();
  v1 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v1)
  {

    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_100181DFC;

    return sub_100182360();
  }

  else
  {
    static Logger.appInstall.getter();

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[34];
    v8 = v0[31];
    v9 = v0[29];
    if (v6)
    {
      v24 = v0[31];
      v10 = v0[25];
      v21 = v5;
      v11 = swift_slowAlloc();
      v23 = v7;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v11 = 138412546;
      v22 = v9;
      v14 = *(v10 + 16);
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v15 = v14;
      v16 = Error.localizedDescription.getter();
      v18 = sub_1001AD0D8(v16, v17, &v25);

      *(v11 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v4, v21, "[%@] Transparency sheet completed with error: %{public}s", v11, 0x16u);
      sub_100086A24(v12);

      sub_100005A00(v13);

      v23(v24, v22);
    }

    else
    {

      v7(v8, v9);
    }

    v19 = v0[36];
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1001822CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100182360()
{
  v1[14] = v0;
  v2 = type metadata accessor for Logger();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100182420, 0, 0);
}

uint64_t sub_100182420()
{
  static Logger.appInstall.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v3 + 16);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Presenting the Background Assets transparency sheet without context…", v4, 0xCu);
    sub_100086A24(v5);
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v11 = v0[15];

  (*(v9 + 8))(v8, v11);
  v12 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithServiceName:v13 viewControllerClassName:v14];
  v0[18] = v15;

  v16 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v0[19] = v16;
  v0[6] = sub_100184008;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000C1214;
  v0[5] = &unk_1005109D0;
  v17 = _Block_copy(v0 + 2);
  v18 = objc_opt_self();

  v19 = [v18 responderWithHandler:v17];
  v0[20] = v19;
  _Block_release(v17);

  v20 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v19];
  v0[21] = v20;
  sub_100085D40(&qword_10059C4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100435310;
  *(inited + 32) = v20;
  v22 = v20;
  sub_1001893D4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10009FAD4(0, &qword_10059ECD8);
  sub_100184028();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v16 setActions:isa];

  v24 = [objc_opt_self() newHandleWithDefinition:v15 configurationContext:v16];
  v0[22] = v24;
  v0[13] = 0;
  v25 = swift_task_alloc();
  v0[23] = v25;
  v25[2] = v10;
  v25[3] = v0 + 13;
  v25[4] = v24;
  v26 = swift_task_alloc();
  v0[24] = v26;
  *v26 = v0;
  v26[1] = sub_10018286C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10018286C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100182A24;
  }

  else
  {

    v2 = sub_100182988;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100182988()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100182A24()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100182ACC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appInstall.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(a2 + 16);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Transparency sheet confirmed", v9, 0xCu);
    sub_100086A24(v10);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100182C5C(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v8 = sub_100085D40(&unk_10059DC70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = *(v9 + 16);
  v12(&v21 - v10, a1, v8);
  v13 = *(a2 + 16);
  v14 = type metadata accessor for BackgroundAssetTransparencySheetTaskHandleObserver();
  v15 = objc_allocWithZone(v14);
  v12(&v15[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_continuation], v11, v8);
  *&v15[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_logKey] = v13;
  v21.receiver = v15;
  v21.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v21, "init");
  (*(v9 + 8))(v11, v8);
  v18 = *a3;
  *a3 = v17;
  v19 = v17;

  [a4 registerObserver:v19];
  v20 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [a4 activateWithContext:v20];
}

void sub_100182E28(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059ECC0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059ECC0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100182EF8()
{
  v1 = v0[46];
  sub_100085D40(&qword_10059BC20);
  inited = swift_initStackObject();
  *(inited + 32) = 7368801;
  *(inited + 16) = xmmword_100436510;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x800000010044C480;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = 1701273968;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x644965676170;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0xD000000000000019;
  *(inited + 152) = 0x8000000100452540;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6570795465676170;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = 0x6C61646F4DLL;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 1701273968;
  *(inited + 264) = &type metadata for String;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = 0xD00000000000001FLL;
  *(inited + 248) = 0x8000000100452560;
  v3 = sub_1000EF17C(inited);
  swift_setDeallocating();
  sub_100085D40(&qword_10059CE00);
  swift_arrayDestroy();
  sub_100180818(v3);

  v4 = objc_allocWithZone(AMSMetricsEvent);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithUnderlyingDictionary:isa];
  v0[47] = v6;

  v7 = String._bridgeToObjectiveC()();
  [v6 setTopic:v7];

  v8 = v1[3];
  v9 = v1[4];
  sub_100005B60(v1, v8);
  v11 = sub_1000D1A7C(v8, v9, v10);
  v12 = type metadata accessor for ASEMetrics();
  v13 = objc_allocWithZone(v12);
  sub_1000056D0(v11 + OBJC_IVAR___Bag_bag, (v0 + 41));
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  v14 = objc_allocWithZone(v12);
  v0[48] = sub_100101074(0, v0 + 36);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_100085D40(&qword_10059C4A0);
  v15 = swift_allocObject();
  v0[49] = v15;
  *(v15 + 16) = xmmword_100435310;
  *(v15 + 32) = v6;
  v16 = v6;
  v17 = swift_task_alloc();
  v0[50] = v17;
  *v17 = v0;
  v17[1] = sub_1001832B4;

  return sub_1001012A4(v15, 1);
}

uint64_t sub_1001832B4()
{
  v1 = *(*v0 + 384);

  return _swift_task_switch(sub_1001833E4, 0, 0);
}

uint64_t sub_1001833E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100183444()
{
  sub_100005A00(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_100183510(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appInstall.getter();
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *&v7[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_logKey];
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Sheet did deactivate", v10, 0xCu);
    sub_100086A24(v11);
  }

  (*(v4 + 8))(v6, v3);
  return [a1 invalidate];
}

uint64_t sub_100183728(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  [a1 unregisterObserver:v3];
  if (a2)
  {
    swift_errorRetain();
    static Logger.appInstall.getter();
    swift_errorRetain();
    v13 = v3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v45 = v6;
      v17 = v16;
      v18 = swift_slowAlloc();
      v42 = v18;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v17 = 138412546;
      v44 = v7;
      v19 = *&v13[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      *(v17 + 12) = 2082;
      swift_getErrorValue();
      v20 = v19;
      v21 = Error.localizedDescription.getter();
      v23 = sub_1001AD0D8(v21, v22, &v46);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Sheet did invalidate with error: %{public}s", v17, 0x16u);
      sub_100086A24(v42);

      sub_100005A00(v43);

      (*(v44 + 8))(v12, v45);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v32 = _convertErrorToNSError(_:)();
    v33 = [v32 domain];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v39 = _convertErrorToNSError(_:)();
    v40 = [v39 code];

    if (v40 <= 8 && ((1 << v40) & 0x1CF) == 0)
    {
      sub_100085D40(&unk_10059DC70);
      CheckedContinuation.resume(returning:)();
    }

LABEL_14:
    v46 = a2;
    swift_errorRetain();
    sub_100085D40(&unk_10059DC70);
    CheckedContinuation.resume(throwing:)();
  }

  static Logger.appInstall.getter();
  v24 = v3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = *&v24[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_logKey];
    *(v27 + 4) = v29;
    *v28 = v29;
    v30 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Sheet did invalidate", v27, 0xCu);
    sub_100086A24(v28);
  }

  (*(v7 + 8))(v10, v6);
  sub_100085D40(&unk_10059DC70);
  return CheckedContinuation.resume(returning:)();
}

uint64_t type metadata accessor for BackgroundAssetTransparencySheetTaskHandleObserver()
{
  result = qword_10059ECA8;
  if (!qword_10059ECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100183DAC()
{
  sub_100183E48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100183E48()
{
  if (!qword_10059ECB8)
  {
    sub_10009F7F8(&unk_10059DE80);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_10059ECB8);
    }
  }
}

uint64_t sub_100183EC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100085384;

  return sub_100182ED8(a1, v4, v5, v1 + 32);
}

unint64_t sub_100183FB0()
{
  result = qword_10059BAD0;
  if (!qword_10059BAD0)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BAD0);
  }

  return result;
}

uint64_t sub_100184010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100184028()
{
  result = qword_10059ECE0;
  if (!qword_10059ECE0)
  {
    sub_10009FAD4(255, &qword_10059ECD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059ECE0);
  }

  return result;
}

uint64_t sub_10018409C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appInstall.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver_logKey];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Sheet did activate", v8, 0xCu);
    sub_100086A24(v9);
  }

  return (*(v2 + 8))(v4, v1);
}

id sub_100184230()
{
  result = [objc_allocWithZone(TaskQueue) init];
  qword_1005AB188 = result;
  return result;
}

uint64_t sub_10018443C()
{
  v1[22] = v0;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for AccountClientIdentifier();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for ClientInfo();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_1001846C4, 0, 0);
}

uint64_t sub_1001846C4()
{
  v1 = *(v0 + 176);
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Starting background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = *(v0 + 392);
  v11 = *(v0 + 264);
  v12 = *(v0 + 272);
  v13 = *(v0 + 176);

  v14 = *(v12 + 8);
  *(v0 + 400) = v14;
  *(v0 + 408) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  v15 = *(v13 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_appName + 8);
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v16 = *(v13 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_appName) & 0xFFFFFFFFFFFFLL;
  }

  v17 = *(v0 + 176);
  if (v16 && ((v18 = *&v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bundleID + 8], (v18 & 0x2000000000000000) != 0) ? (v19 = HIBYTE(v18) & 0xF) : (v19 = *&v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bundleID] & 0xFFFFFFFFFFFFLL), v19))
  {
    if (v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedSource] != 1)
    {
      static Logger.appInstall.getter();
      v37 = v17;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 176);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = *(v40 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
        *(v41 + 4) = v43;
        *v42 = v43;
        v44 = v43;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Not proceeding, Invalid source", v41, 0xCu);
        sub_100005518(v42, &unk_10059C250);
      }

      v30 = (v0 + 328);
      v45 = *(v0 + 336);
      v46 = *(v0 + 264);
      v47 = *(v0 + 176);

      v14(v45, v46);
      static Logger.appInstall.getter();
      v48 = v47;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedInstallType] == 1)
    {
      if (v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldSkipTransparencySheet])
      {
        v20 = swift_task_alloc();
        *(v0 + 488) = v20;
        *v20 = v0;
        v20[1] = sub_10018595C;

        return sub_100186614();
      }

      if (v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isUISupported] == 1)
      {
        sub_1000044A4(&v17[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bag], v0 + 56, &qword_10059BDF0);
        if (*(v0 + 80))
        {
          sub_1000056B8((v0 + 56), v0 + 16);
          v64 = *(v0 + 176);
          v65 = *(v64 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
          *(v0 + 440) = v65;
          v66 = *(v64 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_requestToken);
          sub_1000056D0(v0 + 16, v0 + 136);
          type metadata accessor for BackgroundAssetTransparencySheetTask();
          v67 = swift_allocObject();
          *(v0 + 448) = v67;
          *(v67 + 16) = v65;
          *(v67 + 24) = v66;
          sub_1000056B8((v0 + 136), v67 + 32);
          v68 = v65;
          v69 = v66;
          v70 = swift_task_alloc();
          *(v0 + 456) = v70;
          *v70 = v0;
          v70[1] = sub_10018548C;

          return sub_100180DA8();
        }

        else
        {
          v79 = *(v0 + 248);
          v78 = *(v0 + 256);
          v81 = *(v0 + 232);
          v80 = *(v0 + 240);
          v83 = *(v0 + 216);
          v82 = *(v0 + 224);
          v84 = *(v0 + 208);
          sub_100005518(v0 + 56, &qword_10059BDF0);
          static AccountClientIdentifier.production.getter();
          (*(v83 + 16))(v82, v81, v84);
          ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
          (*(v83 + 8))(v81, v84);
          *(v0 + 416) = sub_1000D6694(v78);
          (*(v79 + 8))(v78, v80);
          static BagService.PermittedDataOrigin.networkAndPersistence.getter();
          v85 = swift_task_alloc();
          *(v0 + 424) = v85;
          *v85 = v0;
          v85[1] = sub_1001851F8;
          v86 = *(v0 + 200);

          return sub_1000C4BE0(v0 + 96, 0, 0, v86);
        }
      }

      static Logger.appInstall.getter();
      v71 = v17;
      v23 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v72))
      {
        v73 = *(v0 + 176);
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138412290;
        v76 = *(v73 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
        *(v74 + 4) = v76;
        *v75 = v76;
        v77 = v76;
        _os_log_impl(&_mh_execute_header, v23, v72, "[%@] Not proceeding, UI is not supported", v74, 0xCu);
        sub_100005518(v75, &unk_10059C250);
      }

      v30 = (v0 + 368);
      v31 = *(v0 + 376);
    }

    else
    {
      static Logger.appInstall.getter();
      v57 = v17;
      v23 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v58))
      {
        v59 = *(v0 + 176);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = *(v59 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
        *(v60 + 4) = v62;
        *v61 = v62;
        v63 = v62;
        _os_log_impl(&_mh_execute_header, v23, v58, "[%@] Not proceeding, Not a supported install type", v60, 0xCu);
        sub_100005518(v61, &unk_10059C250);
      }

      v30 = (v0 + 344);
      v31 = *(v0 + 352);
    }
  }

  else
  {
    static Logger.appInstall.getter();
    v22 = v17;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 176);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = *(v25 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
      *(v26 + 4) = v28;
      *v27 = v28;
      v29 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Not proceeding, Invalid app metadata", v26, 0xCu);
      sub_100005518(v27, &unk_10059C250);
    }

    v30 = (v0 + 312);
    v31 = *(v0 + 320);
  }

  v32 = *(v0 + 264);
  v33 = *(v0 + 176);

  v14(v31, v32);
  static Logger.appInstall.getter();
  v34 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
LABEL_25:
    v49 = *(v0 + 176);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = *(v49 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v50 + 4) = v52;
    *v51 = v52;
    v53 = v52;
    _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Finished background asset relay task", v50, 0xCu);
    sub_100005518(v51, &unk_10059C250);
  }

LABEL_26:
  v54 = *v30;
  v55 = *(v0 + 264);

  v14(v54, v55);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1001851F8()
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  *(*v1 + 432) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_100185F10;
  }

  else
  {
    v6 = sub_100185388;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100185388()
{
  sub_1000056B8((v0 + 96), v0 + 16);
  v1 = *(v0 + 176);
  v2 = *(v1 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
  *(v0 + 440) = v2;
  v3 = *(v1 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_requestToken);
  sub_1000056D0(v0 + 16, v0 + 136);
  type metadata accessor for BackgroundAssetTransparencySheetTask();
  v4 = swift_allocObject();
  *(v0 + 448) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_1000056B8((v0 + 136), v4 + 32);
  v5 = v2;
  v6 = v3;
  v7 = swift_task_alloc();
  *(v0 + 456) = v7;
  *v7 = v0;
  v7[1] = sub_10018548C;

  return sub_100180DA8();
}

uint64_t sub_10018548C()
{
  v2 = *v1;
  *(v2 + 464) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100186164, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 472) = v3;
    *v3 = v2;
    v3[1] = sub_1001855F8;

    return sub_100186614();
  }
}

uint64_t sub_1001855F8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1001863BC;
  }

  else
  {
    v2 = sub_10018570C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018570C()
{
  v1 = v0[22];

  sub_100005A00((v0 + 2));
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v9 = v0[50];
  v10 = v0[48];
  v11 = v0[33];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10018595C()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100185CBC;
  }

  else
  {
    v2 = sub_100185A70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100185A70()
{
  v1 = v0[22];
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = v0[50];
  v11 = v0[45];
  v12 = v0[33];

  v10(v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100185CBC()
{
  v1 = v0[22];
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = v0[50];
  v11 = v0[38];
  v12 = v0[33];

  v10(v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100185F10()
{
  v1 = v0[22];
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = v0[50];
  v11 = v0[37];
  v12 = v0[33];

  v10(v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100186164()
{
  v1 = v0[22];

  sub_100005A00((v0 + 2));
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v9 = v0[50];
  v10 = v0[36];
  v11 = v0[33];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001863BC()
{
  v1 = v0[22];

  sub_100005A00((v0 + 2));
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v9 = v0[50];
  v10 = v0[35];
  v11 = v0[33];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100186614()
{
  v1[9] = v0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001866EC, 0, 0);
}

uint64_t sub_1001866EC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_metadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

LABEL_13:
    v28 = v0 + 12;
    v29 = v0[9];
    static Logger.appInstall.getter();
    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[9];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = *(v33 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
      *(v34 + 4) = v36;
      *v35 = v36;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] No essential max install size provided", v34, 0xCu);
      sub_100005518(v35, &unk_10059C250);
    }

    v38 = v0[11];

    v26 = *(v38 + 8);
    goto LABEL_16;
  }

  v4 = sub_1000EE808(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10009F6D0(*(v1 + 56) + 32 * v4, (v0 + 2));
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v0[6];
  v9 = *(v0[9] + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_packageDiskUsage);
  v10 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
    __break(1u);
    return result;
  }

  v11 = sub_100186FF0();
  if (v11 >= v10)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = v0[9];
  static Logger.appInstall.getter();
  v14 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[9];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412802;
    v20 = *(v17 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v18 + 4) = v20;
    *v19 = v20;
    *(v18 + 12) = 2050;
    *(v18 + 14) = v10;
    *(v18 + 22) = 2050;
    *(v18 + 24) = v12;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Insufficient space. %{public}lld needed, %{public}lld available", v18, 0x20u);
    sub_100005518(v19, &unk_10059C250);
  }

  v22 = v0[14];
  v23 = v0[10];
  v24 = v0[11];
  v25 = v0[9];

  v26 = *(v24 + 8);
  v26(v22, v23);
  if (*(v25 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldFailOnInsufficientSpace) == 1)
  {
    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_100186BC8;

    return sub_100187840(v10);
  }

  v28 = v0 + 13;
  v40 = v0[9];
  static Logger.appInstall.getter();
  v41 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[9];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = *(v44 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v45 + 4) = v47;
    *v46 = v47;
    v48 = v47;
    _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Not failing for insufficient space", v45, 0xCu);
    sub_100005518(v46, &unk_10059C250);
  }

LABEL_16:
  v26(*v28, v0[10]);
LABEL_17:

  v39 = v0[1];

  return v39();
}

uint64_t sub_100186BC8()
{

  return _swift_task_switch(sub_100186CC4, 0, 0);
}

uint64_t sub_100186CC4()
{
  type metadata accessor for ASDError(0);
  *(v0 + 64) = 1310;
  sub_1000EF17C(_swiftEmptyArrayStorage);
  sub_10018A954(&qword_10059B7F0, type metadata accessor for ASDError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100186F48(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_10018443C();
}

uint64_t sub_100186FF0()
{
  v1 = type metadata accessor for URLResourceValues();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Logger();
  v4 = *(v63 - 8);
  v5 = __chkstk_darwin(v63);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v61 = &v56 - v8;
  v9 = __chkstk_darwin(v7);
  v57 = &v56 - v10;
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  static Logger.appInstall.getter();
  v18 = v0;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58 = v3;
    v23 = v16;
    v24 = v14;
    v25 = v13;
    v26 = v4;
    v27 = v22;
    *v21 = 138412290;
    v28 = *&v18[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
    *(v21 + 4) = v28;
    *v22 = v28;
    v29 = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Using Core Services to check for available space…", v21, 0xCu);
    sub_100005518(v27, &unk_10059C250);
    v4 = v26;
    v13 = v25;
    v14 = v24;
    v16 = v23;
    v3 = v58;
  }

  v32 = *(v4 + 8);
  v31 = (v4 + 8);
  v30 = v32;
  v32(v12, v63);
  sub_100085D40(&qword_10059ED90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100434480;
  *(inited + 32) = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v34 = NSURLVolumeAvailableCapacityForImportantUsageKey;
  sub_10018A654(inited);
  swift_setDeallocating();
  sub_10018A8F8(inited + 32);
  URL.resourceValues(forKeys:)();

  v35 = URLResourceValues.volumeAvailableCapacityForImportantUsage.getter();
  if (v36)
  {
    static Logger.appInstall.getter();
    v37 = v18;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = v30;
      v41 = v40;
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = *&v37[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
      *(v41 + 4) = v43;
      *v42 = v43;
      v44 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Failure to get available capacity for important usage", v41, 0xCu);
      sub_100005518(v42, &unk_10059C250);

      v30 = v56;
    }

    v30(v61, v63);
    (*(v59 + 8))(v3, v60);
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  else
  {
    v58 = v3;
    v61 = v31;
    v46 = v63;
    v47 = v35;
    static Logger.appInstall.getter();
    v48 = v18;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v56 = v30;
      v52 = v51;
      v53 = swift_slowAlloc();
      *v52 = 138412546;
      v54 = *&v48[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
      *(v52 + 4) = v54;
      *v53 = v54;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v47;
      v55 = v54;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%@] Core Services reports that there are %lld bytes available.", v52, 0x16u);
      sub_100005518(v53, &unk_10059C250);

      v30 = v56;
    }

    v30(v57, v46);
    (*(v59 + 8))(v58, v60);
    (*(v14 + 8))(v16, v13);
    return v47;
  }
}

uint64_t sub_100187840(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for String.LocalizationValue();
  v2[4] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100187958, 0, 0);
}

uint64_t sub_100187958()
{
  v1 = v0[3];
  static Logger.appInstall.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Displaying insufficient space for essential assets dialog", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[2];

  (*(v11 + 8))(v10, v12);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000035;
  v15._object = 0x8000000100452720;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v13 + OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_appName));
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  v17 = String.init(appStoreDaemonLocalized:comment:)();
  v19 = v18;
  v0[9] = v18;
  v20 = sub_10018FE5C(v14);
  v22 = v21;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._object = 0x8000000100452760;
  v23._countAndFlagsBits = 0xD000000000000034;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  v24._countAndFlagsBits = v20;
  v24._object = v22;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
  String.LocalizationValue.init(stringInterpolation:)();
  v26 = String.init(appStoreDaemonLocalized:comment:)();
  v28 = v27;
  v0[10] = v27;
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_100187C28;

  return sub_100188690(v17, v19, v26, v28);
}

uint64_t sub_100187C28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100187DB8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  if (a2)
  {
    swift_errorRetain();
    static Logger.appInstall.getter();
    swift_errorRetain();
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v5;
      v20 = v19;
      v48 = swift_slowAlloc();
      v51 = v48;
      *v18 = 138412546;
      v21 = *&v15[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
      *(v18 + 4) = v21;
      *v20 = v21;
      *(v18 + 12) = 2082;
      swift_getErrorValue();
      v49 = v6;
      v22 = v21;
      v23 = Error.localizedDescription.getter();
      v25 = sub_1001AD0D8(v23, v24, &v51);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Failed to display insufficient space dialog: %{public}s", v18, 0x16u);
      sub_100005518(v20, &unk_10059C250);

      sub_100005A00(v48);

      (*(v49 + 8))(v14, v50);
    }

    else
    {

      (*(v6 + 8))(v14, v5);
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  v26 = v6;
  v27 = a1;
  v28 = [v27 selectedActionIdentifier];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == 0xD000000000000019 && 0x80000001004527A0 == v31)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      static Logger.appInstall.getter();
      v34 = v2;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = *&v34[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
        *(v37 + 4) = v39;
        *v38 = v39;
        v40 = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Cancel selected on insufficient space dialog", v37, 0xCu);
        sub_100005518(v38, &unk_10059C250);
      }

      (*(v26 + 8))(v9, v5);
      return;
    }
  }

  static Logger.appInstall.getter();
  v41 = v2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = *&v41[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
    *(v44 + 4) = v46;
    *v45 = v46;
    v47 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Opening storage management", v44, 0xCu);
    sub_100005518(v45, &unk_10059C250);
  }

  (*(v26 + 8))(v12, v5);
  sub_100188308();
}

id sub_100188308()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100085D40(&qword_10059CE90);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    sub_1000044A4(v11, v9, &qword_10059CE90);
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    v17 = 0;
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      URL._bridgeToObjectiveC()(v16);
      v17 = v18;
      (*(v15 + 8))(v9, v14);
    }

    sub_1000EF17C(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v13 openSensitiveURL:v17 withOptions:isa];

    if ((v20 & 1) == 0)
    {
      static Logger.appInstall.getter();
      v21 = v1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = *&v21[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey];
        *(v24 + 4) = v26;
        *v25 = v26;
        v27 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Failed to open storage management", v24, 0xCu);
        sub_100005518(v25, &unk_10059C250);
      }

      (*(v3 + 8))(v5, v2);
    }

    return sub_100005518(v11, &qword_10059CE90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100188690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for String.LocalizationValue();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100188728, 0, 0);
}

uint64_t sub_100188728()
{
  v1 = v0[6];
  String.LocalizationValue.init(stringLiteral:)();
  String.init(appStoreDaemonLocalized:comment:)();
  v2 = objc_allocWithZone(AMSDialogRequest);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithTitle:v3 message:v4];
  v0[8] = v5;

  v6 = String._bridgeToObjectiveC()();

  [v5 setLogKey:v6];

  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v7];
  v0[9] = v9;

  String.LocalizationValue.init(stringLiteral:)();
  String.init(appStoreDaemonLocalized:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  v12 = [v8 actionWithTitle:v10 identifier:v11];
  v0[10] = v12;

  sub_100085D40(&qword_10059C4A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100436500;
  *(v13 + 32) = v9;
  *(v13 + 40) = v12;
  sub_10009FAD4(0, &qword_10059D168);
  v14 = v9;
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setButtonActions:isa];

  v17 = swift_task_alloc();
  v0[11] = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v1;
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_100188A80;

  return withCheckedContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD000000000000032, 0x80000001004527C0, sub_10018A848, v17, &type metadata for () + 8);
}

uint64_t sub_100188A80()
{

  return _swift_task_switch(sub_100188B98, 0, 0);
}

uint64_t sub_100188B98()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100188C14(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100085D40(&unk_10059C490);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = objc_opt_self();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_10018A850;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100188E30;
  aBlock[3] = &unk_100510A98;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  sub_1003124D4(v10, a2, v13);
  _Block_release(v13);
}

uint64_t sub_100188DE8(void *a1, uint64_t a2)
{
  sub_100187DB8(a1, a2);
  sub_100085D40(&unk_10059C490);
  return CheckedContinuation.resume(returning:)();
}

void sub_100188E30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100189008()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_100186F48(v2, v3);
}

void *sub_1001890B4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100085D40(&qword_10059EA08);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10018A954(&qword_10059E9F8, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10018A954(&qword_10059EA00, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1001893D4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100085D40(&qword_10059EDA0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10009FAD4(0, &qword_10059ECD8);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10009FAD4(0, &qword_10059ECD8);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_1001896C4(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v113 = a5;
  v114 = a4;
  v115 = a3;
  v112 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v116 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v109 - v13;
  v15 = __chkstk_darwin(v12);
  v121 = &v109 - v16;
  __chkstk_darwin(v15);
  v111 = &v109 - v17;
  v18 = sub_1004090C4(a1);
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_appName];
  *v23 = v20;
  v23[1] = v22;
  v24 = sub_10040908C(a1);
  v119 = v9;
  v120 = v8;
  v110 = v14;
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = &v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bundleID];
  *v29 = v26;
  v29[1] = v28;
  v117 = a1;
  v30 = sub_100408EB0(a1);
  v31 = [v30 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = type metadata accessor for LogKey();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v37 = &v36[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v37 = 0;
  v37[1] = 0;
  *&v125 = 1414676802;
  *(&v125 + 1) = 0xE400000000000000;
  *&v126 = sub_1001C08F8;
  *(&v126 + 1) = 0;
  v127 = sub_1001C08F0;
  v128 = 0;
  v129 = sub_1001C08F4;
  v130 = 0;
  sub_100085D40(&unk_10059F910);
  sub_1000FBFF4();
  sub_100003B3C();
  v38 = Sequence<>.joined(separator:)();
  v40 = v39;
  *&v125 = 0;
  *(&v125 + 1) = 0xE000000000000000;
  v41._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v32;
  v43._object = v34;
  String.append(_:)(v43);

  v44 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v44 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = 47;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = 0xE100000000000000;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  v47 = v46;
  String.append(_:)(*&v45);

  v48._countAndFlagsBits = v38;
  v48._object = v40;
  String.append(_:)(v48);

  v49 = *(&v125 + 1);
  v50 = &v36[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v50 = v125;
  v50[1] = v49;
  *&v36[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v36[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v124.receiver = v36;
  v124.super_class = v35;
  v51 = &selRef_copyWithZone_;
  v52 = objc_msgSendSuper2(&v124, "init");
  v54 = v52;
  if (*&v52[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v55 = v52;
    v56 = sub_1000052DC();
  }

  v57 = OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey;
  *&v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey] = v54;
  *&v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_metadata] = v112;
  v58 = v117;
  isa = sub_10040998C(v117, v53);
  if (!isa)
  {
    sub_10009FAD4(0, &qword_10059EDA8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v60 = sub_100409214(v58, isa);

  v62 = v119;
  v61 = v120;
  if (v60)
  {
    v63 = sub_10023E51C(v60, @"disk_usage");
    if (v63)
    {
      v64 = v63;
      v65 = [v63 longLongValue];

      v60 = v64;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  *&v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_packageDiskUsage] = v65;
  v66 = v114;
  *&v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_requestToken] = v114;
  if (v113)
  {
    sub_1000056D0(v113 + OBJC_IVAR___Bag_bag, v122);
    v67 = v66;
    sub_100085D40(&qword_10059C3D0);
    sub_100085D40(&unk_10059CE80);
    swift_dynamicCast();
  }

  else
  {
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v68 = v66;
  }

  v69 = &v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bag];
  v70 = v126;
  *v69 = v125;
  *(v69 + 1) = v70;
  *(v69 + 4) = v127;
  if (sub_100409200(v58))
  {
    v71 = sub_100409200(v58);
    v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedSource] = v71 == 2;
    if (v71 != 2)
    {
      static Logger.appInstall.getter();
      v72 = v58;
      v73 = v6;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412546;
        v78 = *&v6[v57];
        *(v76 + 4) = v78;
        *v77 = v78;
        *(v76 + 12) = 2050;
        v79 = v78;
        v80 = sub_100409200(v72);

        *(v76 + 14) = v80;
        v62 = v119;

        _os_log_impl(&_mh_execute_header, v74, v75, "[%@] Invalid source %{public}ld", v76, 0x16u);
        sub_100005518(v77, &unk_10059C250);
        v61 = v120;
      }

      else
      {

        v74 = v72;
      }

      (*(v62 + 8))(v111, v61);
    }
  }

  else
  {
    v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedSource] = 1;
  }

  if (!sub_10023E604(v58, @"restore_type"))
  {
    if (!sub_100408E18(v58) || sub_100408E6C(v58))
    {
      v88 = 1;
      goto LABEL_43;
    }

    v103 = v110;
    static Logger.appInstall.getter();
    v104 = v6;
    v82 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v82, v105))
    {
      v121 = v103;
      v51 = &selRef_copyWithZone_;
      goto LABEL_39;
    }

    v106 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v106 = 138412290;
    v107 = *&v6[v57];
    *(v106 + 4) = v107;
    *v85 = v107;
    v108 = v107;
    _os_log_impl(&_mh_execute_header, v82, v105, "[%@] Not proceeding, Automatic installs not supported", v106, 0xCu);
    v121 = v103;
    v51 = &selRef_copyWithZone_;
    goto LABEL_38;
  }

  static Logger.appInstall.getter();
  v81 = v6;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412290;
    v86 = *&v6[v57];
    *(v84 + 4) = v86;
    *v85 = v86;
    v87 = v86;
    _os_log_impl(&_mh_execute_header, v82, v83, "[%@] Not proceeding, Restores not supported", v84, 0xCu);
LABEL_38:
    sub_100005518(v85, &unk_10059C250);
  }

LABEL_39:

  (*(v62 + 8))(v121, v61);
  v88 = 0;
LABEL_43:
  v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedInstallType] = v88;
  if ((v115 & 1) != 0 || sub_100408E6C(v58) == 1)
  {
    v89 = 1;
  }

  else
  {
    v100 = objc_opt_self();
    v101 = String._bridgeToObjectiveC()();
    v102 = sub_1003D3F88(v100, v101);

    if (v102)
    {
      LOBYTE(v125) = 2;
      static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

      v89 = v125 != 2;
    }

    else
    {
      v89 = 0;
    }
  }

  v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldSkipTransparencySheet] = v89;
  if (sub_10023E4DC(v58, @"supress_dialogs"))
  {
    static Logger.appInstall.getter();
    v90 = v6;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = *&v6[v57];
      *(v93 + 4) = v95;
      *v94 = v95;
      v96 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "[%@] Not proceeding, Dialogs are suppressed", v93, 0xCu);
      sub_100005518(v94, &unk_10059C250);
    }

    (*(v62 + 8))(v116, v61);
    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isUISupported] = v97;
  v98 = sub_100408E6C(v58) == 0;
  v6[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldFailOnInsufficientSpace] = v98;
  v123.receiver = v6;
  v123.super_class = ObjectType;
  return objc_msgSendSuper2(&v123, v51[398]);
}

id sub_10018A1E8(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = sub_1002334B0(a1, v11);
  if (v12)
  {
    v14 = v12;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_appName];
  *v18 = v15;
  v18[1] = v17;
  v19 = sub_1001FBBB4(a1, v13);
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = &v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_bundleID];
  *v24 = v21;
  v24[1] = v23;
  *&v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_metadata] = a3;
  v25 = [a4 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = type metadata accessor for LogKey();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v31 = &v30[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v31 = 0;
  v31[1] = 0;
  v63 = sub_1001C08F8;
  v64 = 0;
  v65 = sub_1001C08F0;
  v66 = 0;
  v67 = sub_1001C08F4;
  v68 = 0;
  sub_100085D40(&unk_10059F910);
  sub_1000FBFF4();
  sub_100003B3C();
  v32 = Sequence<>.joined(separator:)();
  v34 = v33;
  v61 = 0;
  v62 = 0xE000000000000000;
  v35._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = v26;
  v37._object = v28;
  String.append(_:)(v37);

  v38 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v38 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = 47;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = 0xE100000000000000;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v41 = v40;
  String.append(_:)(*&v39);

  v42._countAndFlagsBits = v32;
  v42._object = v34;
  String.append(_:)(v42);

  v43 = v62;
  v44 = &v30[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v44 = v61;
  v44[1] = v43;
  *&v30[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v30[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v60.receiver = v30;
  v60.super_class = v29;
  v45 = objc_msgSendSuper2(&v60, "init");
  v46 = v45;
  if (*&v45[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v47 = v45;
    v48 = sub_1000052DC();
  }

  *&v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_logKey] = v46;
  sub_1000056D0(v55 + OBJC_IVAR___Bag_bag, &v61);
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  *&v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_packageDiskUsage] = a2;
  *&v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_requestToken] = 0;
  v49 = objc_opt_self();
  v50 = String._bridgeToObjectiveC()();
  v51 = sub_1003D3F88(v49, v50);

  if (v51)
  {
    LOBYTE(v61) = 2;
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v52 = v61 != 2;
  }

  else
  {
    v52 = 0;
  }

  v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldSkipTransparencySheet] = v52;
  v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedSource] = 1;
  v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isSupportedInstallType] = 1;
  v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_isUISupported] = 1;
  v7[OBJC_IVAR____TtC9appstored24BackgroundAssetRelayTask_shouldFailOnInsufficientSpace] = (a5 & 1) == 0;
  v59.receiver = v7;
  v59.super_class = ObjectType;
  return objc_msgSendSuper2(&v59, "init");
}

void *sub_10018A654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059ED98);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10018A850(void *a1, uint64_t a2)
{
  sub_100085D40(&unk_10059C490);

  return sub_100188DE8(a1, a2);
}

uint64_t sub_10018A8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018A8F8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018A954(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10018A99C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v145 = type metadata accessor for Date();
  v153 = *(v145 - 8);
  v4 = __chkstk_darwin(v145);
  v162 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v160 = &v136 - v7;
  v8 = __chkstk_darwin(v6);
  v152 = &v136 - v9;
  v10 = __chkstk_darwin(v8);
  v154 = &v136 - v11;
  __chkstk_darwin(v10);
  v156 = &v136 - v12;
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v136 - v18;
  v20 = type metadata accessor for Logger();
  v155 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v163 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v151 = (&v136 - v24);
  __chkstk_darwin(v23);
  v26 = &v136 - v25;
  static Logger.appUsage.getter();
  v27 = *(v14 + 16);
  v157 = v19;
  v27(v19, a1, v13);
  v161 = v17;
  v27(v17, a1, v13);
  v28 = a2;
  v164 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v158 = v28;
  v159 = v20;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v150 = a1;
    v33 = v32;
    v34 = swift_slowAlloc();
    v147 = v34;
    v149 = swift_slowAlloc();
    v166[0] = v149;
    *v33 = 136446978;
    v35 = _typeName(_:qualified:)();
    v37 = sub_1001AD0D8(v35, v36, v166);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v28;
    *v34 = v28;
    *(v33 + 22) = 2082;
    v38 = v28;
    v40 = v156;
    v39 = v157;
    DateInterval.start.getter();
    v143 = sub_10008B538();
    v41 = v145;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    *&v146 = v29;
    LODWORD(v144) = v30;
    v142 = *(v153 + 8);
    v45 = v41;
    v142(v40, v41);
    v46 = *(v14 + 8);
    v46(v39, v13);
    v47 = sub_1001AD0D8(v42, v44, v166);

    *(v33 + 24) = v47;
    *(v33 + 32) = 2082;
    v48 = v13;
    v49 = v161;
    DateInterval.end.getter();
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v142(v40, v45);
    v53 = v153;
    v46(v49, v48);
    v54 = sub_1001AD0D8(v50, v52, v166);

    *(v33 + 34) = v54;
    v55 = v146;
    _os_log_impl(&_mh_execute_header, v146, v144, "[%{public}s/%@] Looking for Siri Execution events from startDate: %{public}s to %{public}s", v33, 0x2Au);
    sub_100086A24(v147);

    swift_arrayDestroy();

    a1 = v150;

    v157 = *(v155 + 8);
    (v157)(v164, v159);
    v56 = v45;
  }

  else
  {

    v57 = *(v14 + 8);
    v57(v161, v13);
    v57(v157, v13);
    v157 = *(v155 + 8);
    (v157)(v164, v20);
    v56 = v145;
    v53 = v153;
  }

  v58 = swift_allocObject();
  *(v58 + 16) = _swiftEmptyArrayStorage;
  v59 = objc_autoreleasePoolPush();
  v144 = v58;
  sub_10018BA6C(a1, v58);
  v150 = 0;
  objc_autoreleasePoolPop(v59);
  v166[3] = &_swiftEmptyDictionarySingleton;
  swift_beginAccess();
  v60 = *(v58 + 16);
  if (v60 >> 62)
  {
    goto LABEL_38;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v160; v61; i = v160)
  {
    v164 = (v60 & 0xC000000000000001);
    v156 = (v60 & 0xFFFFFFFFFFFFFF8);
    v147 = (v53 + 16);
    *&v146 = v53 + 8;
    v143 = v155 + 8;

    v53 = 0;
    *&v63 = 136446978;
    v138 = v63;
    v161 = v61;
    v142 = v60;
    while (1)
    {
      if (v164)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v53 >= *(v156 + 2))
        {
          goto LABEL_37;
        }

        v64 = *(v60 + 8 * v53 + 32);
      }

      v65 = v64;
      v66 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v67 = [v64 eventBody];
      if (!v67)
      {
        goto LABEL_8;
      }

      v68 = v67;
      v69 = [v67 appBundleID];
      if (!v69)
      {

LABEL_8:
        goto LABEL_9;
      }

      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;
      v74 = v71 == 1701736302 && v72 == 0xE400000000000000;
      if (v74 || (v75 = v71, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v61 = v161;
      }

      else
      {
        v76 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v76 = v75 & 0xFFFFFFFFFFFFLL;
        }

        if (v76)
        {
          v77 = [v68 absoluteTimestamp];
          if (v77)
          {
            v78 = v77;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = sub_10038AA5C(objc_allocWithZone(LaunchEvent), 8);
            if (!v79)
            {
              goto LABEL_59;
            }

            v80 = v79;
            v81 = v154;
            isa = Date._bridgeToObjectiveC()().super.isa;
            sub_10038B2D8(v80, isa);

            v83 = Date._bridgeToObjectiveC()().super.isa;
            sub_10038B2C4(v80, v83);

            sub_10038B29C(v80, v70);

            v149 = v80;
            sub_1001AA9B8(v80, v75, v73);
            static Logger.appUsage.getter();
            (*v147)(v152, v81, v145);
            v84 = v158;

            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.debug.getter();

            v139 = v84;

            v141 = v86;
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v165 = v137;
              *v87 = v138;
              v88 = _typeName(_:qualified:)();
              v136 = v85;
              v90 = sub_1001AD0D8(v88, v89, &v165);

              *(v87 + 4) = v90;
              *(v87 + 12) = 2112;
              v91 = v139;
              *(v87 + 14) = v139;
              *v140 = v158;
              *(v87 + 22) = 2082;
              v92 = v91;
              v93 = sub_1001AD0D8(v75, v73, &v165);

              *(v87 + 24) = v93;
              *(v87 + 32) = 2080;
              sub_10008B538();
              v94 = v152;
              v95 = dispatch thunk of CustomStringConvertible.description.getter();
              v97 = v96;
              v139 = *v146;
              v139(v94, v145);
              v98 = sub_1001AD0D8(v95, v97, &v165);
              v56 = v145;

              *(v87 + 34) = v98;
              v99 = v136;
              _os_log_impl(&_mh_execute_header, v136, v141, "[%{public}s/%@][%{public}s] Found siri execution with startDate: %s", v87, 0x2Au);
              sub_100086A24(v140);

              swift_arrayDestroy();

              (v157)(v151, v159);
              v139(v154, v56);
            }

            else
            {

              v100 = *v146;
              v56 = v145;
              (*v146)(v152, v145);
              (v157)(v151, v159);
              v100(v154, v56);
            }

            i = v160;
            v61 = v161;
            v60 = v142;
            goto LABEL_9;
          }
        }

        else
        {
        }

        v61 = v161;
      }

LABEL_9:
      ++v53;
      if (v66 == v61)
      {

        v53 = v153;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v61 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_39:

  v102 = sub_100110B6C(v101);
  swift_bridgeObjectRelease_n();
  if (v102 >> 62)
  {
    v104 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v104 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v162;
  v105 = v155;
  if (!v104)
  {
    goto LABEL_56;
  }

  if (v104 >= 1)
  {
    v106 = 0;
    v154 = (v53 + 8);
    v155 = v53 + 16;
    v107 = v102 & 0xC000000000000001;
    v153 = v105 + 8;
    *&v103 = 136446978;
    v146 = v103;
    v147 = v102;
    v161 = v104;
    v156 = (v102 & 0xC000000000000001);
    do
    {
      if (v107)
      {
        v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v108 = *(v102 + 8 * v106 + 32);
      }

      v109 = v108;
      v110 = sub_10038AD6C(v108);
      if (v110)
      {
        v111 = v110;
        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        v114 = sub_10038ADA4(v109);
        if (v114)
        {
          v115 = v114;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          static Logger.appUsage.getter();
          (*v155)(v70, i, v56);
          v116 = v158;
          v117 = v158;

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v151 = v118;
            v122 = v121;
            v149 = v121;
            v152 = swift_slowAlloc();
            v165 = v152;
            *v120 = v146;
            v123 = _typeName(_:qualified:)();
            LODWORD(v150) = v119;
            v125 = sub_1001AD0D8(v123, v124, &v165);

            *(v120 + 4) = v125;
            *(v120 + 12) = 2112;
            *(v120 + 14) = v117;
            *v122 = v116;
            *(v120 + 22) = 2080;
            v126 = v117;
            v127 = sub_1001AD0D8(v164, v113, &v165);

            *(v120 + 24) = v127;
            *(v120 + 32) = 2080;
            sub_10008B538();
            v128 = dispatch thunk of CustomStringConvertible.description.getter();
            v130 = v129;
            v131 = *v154;
            (*v154)(v162, v56);
            v132 = sub_1001AD0D8(v128, v130, &v165);
            v70 = v162;

            *(v120 + 34) = v132;
            v133 = v151;
            _os_log_impl(&_mh_execute_header, v151, v150, "[%{public}s/%@] [%s] Found siri execution usage with startDate: %s", v120, 0x2Au);
            sub_100086A24(v149);

            swift_arrayDestroy();

            v102 = v147;

            (v157)(v163, v159);
            i = v160;
            v131(v160, v56);
          }

          else
          {

            v134 = *v154;
            (*v154)(v70, v56);
            (v157)(v163, v159);
            v135 = v160;
            v134(v160, v56);
            i = v135;
          }

          v104 = v161;
          v107 = v156;
        }

        else
        {

          v104 = v161;
        }
      }

      else
      {
      }

      ++v106;
    }

    while (v104 != v106);
LABEL_56:

    return;
  }

  __break(1u);
LABEL_59:

  __break(1u);
}

void sub_10018BA6C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_100085D40(&qword_10059CB40);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = BiomeLibrary();
  DateInterval.start.getter();
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v7, 0, 1, v9);
  DateInterval.end.getter();
  v11(v5, 0, 1, v9);
  v12 = *(v10 + 48);
  isa = 0;
  if (v12(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  if (v12(v5, 1, v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v5, v9);
  }

  v15 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v14 maxEvents:10000 lastN:0 reversed:0];

  v16 = [objc_msgSend(v8 "Siri")];
  swift_unknownObjectRelease();
  v17 = [v16 publisherWithOptions:v15];
  v26 = nullsub_75;
  v27 = 0;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10018C220;
  v25 = &unk_100510AE8;
  v18 = _Block_copy(&aBlock);
  v26 = sub_10018C1C0;
  v27 = v21;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10018C220;
  v25 = &unk_100510B10;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 sinkWithCompletion:v18 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_10018BE18(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

id sub_10018C048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Intents();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10018C0A0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10018C120;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10018C128(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10018C218;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018C1A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018C1C8()
{
  result = qword_10059D850;
  if (!qword_10059D850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059D850);
  }

  return result;
}

uint64_t sub_10018C384()
{
  v1[74] = v0;
  v2 = sub_100085D40(&qword_10059BD40);
  v1[75] = v2;
  v1[76] = *(v2 - 8);
  v1[77] = swift_task_alloc();
  v3 = sub_100085D40(&qword_10059BDB0);
  v1[78] = v3;
  v1[79] = *(v3 - 8);
  v1[80] = swift_task_alloc();
  sub_100085D40(&qword_10059CE90);
  v1[81] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[82] = v4;
  v1[83] = *(v4 - 8);
  v1[84] = swift_task_alloc();
  v5 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[85] = v5;
  v1[86] = *(v5 - 8);
  v1[87] = swift_task_alloc();
  v6 = type metadata accessor for AccountClientIdentifier();
  v1[88] = v6;
  v1[89] = *(v6 - 8);
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v7 = type metadata accessor for ClientInfo();
  v1[92] = v7;
  v1[93] = *(v7 - 8);
  v1[94] = swift_task_alloc();

  return _swift_task_switch(sub_10018C66C, 0, 0);
}

uint64_t sub_10018C66C()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[95] = sub_1000D6694(v1);
  (*(v2 + 8))(v1, v3);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v8 = swift_task_alloc();
  v0[96] = v8;
  *v8 = v0;
  v8[1] = sub_10018C808;
  v9 = v0[87];

  return sub_1000C4BE0((v0 + 52), 0, 0, v9);
}

uint64_t sub_10018C808()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = v2[95];
  (*(v2[86] + 8))(v2[87], v2[85]);

  if (v0)
  {
    v4 = sub_10018D824;
  }

  else
  {
    v4 = sub_10018C988;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018C988()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v5 = v0[55];
  v4 = v0[56];
  sub_100005B60(v0 + 52, v5);
  v6 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:{sub_1000C4BB0(v5, v4)}];
  v0[98] = v6;
  swift_unknownObjectRelease();
  v7 = [objc_opt_self() ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];

  [v6 setAccount:v8];
  [v6 setUrlKnownToBeTrusted:1];
  sub_100005B60(v0 + 52, v0[55]);
  dispatch thunk of Bag.subscript.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100005518(v0[81], &qword_10059CE90);
    type metadata accessor for AMSError(0);
    v0[68] = 204;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_10018DF2C(&qword_10059BA40, type metadata accessor for AMSError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100005A00((v0 + 52));

    v9 = v0[1];

    return v9();
  }

  else
  {
    v26 = v0[80];
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[74];
    (*(v0[83] + 32))(v0[84], v0[81], v0[82]);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    sub_100085D40(&qword_10059DAF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100434480;
    *(inited + 32) = 0x74706965636572;
    *(inited + 40) = 0xE700000000000000;
    v18 = *(v13 + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_receipt);
    v0[99] = v18;
    v19 = [v18 receiptDataString];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(inited + 48) = v20;
    *(inited + 56) = v22;
    sub_1000EFC58(inited);
    swift_setDeallocating();
    sub_100005518(inited + 32, &qword_10059DB00);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = [v6 requestWithMethod:4 URL:v16 parameters:isa];
    v0[100] = v24;

    v0[2] = v0;
    v0[7] = v0 + 69;
    v0[3] = sub_10018CF10;
    swift_continuation_init();
    v0[43] = v12;
    v25 = sub_100005F38(v0 + 40);
    sub_10009FAD4(0, &qword_10059BDB8);
    v0[101] = sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v11 + 32))(v25, v26, v12);
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_10018C238;
    v0[39] = &unk_100510BB0;
    [v24 resultWithCompletion:?];
    (*(v11 + 8))(v25, v12);

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10018CF10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 816) = v1;
  if (v1)
  {
    v2 = sub_10018D8F4;
  }

  else
  {
    v2 = sub_10018D020;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018D020()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 44;
  v4 = v0 + 70;
  v5 = v0[100];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v1[69];
  v1[103] = v9;

  v10 = [objc_opt_self() defaultSession];
  v11 = [v10 dataTaskPromiseWithRequest:v9];
  v1[104] = v11;

  v1[10] = v1;
  v1[15] = v4;
  v1[11] = sub_10018D234;
  swift_continuation_init();
  v1[51] = v8;
  v12 = sub_100005F38(v1 + 48);
  sub_10009FAD4(0, &qword_10059BD48);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v12, v6, v8);
  v1[44] = _NSConcreteStackBlock;
  v1[45] = 1107296256;
  v1[46] = sub_10018C224;
  v1[47] = &unk_100510BD8;
  [v11 resultWithCompletion:v3];
  (*(v7 + 8))(v12, v8);

  return _swift_continuation_await(v2);
}

uint64_t sub_10018D234()
{
  v1 = *(*v0 + 112);
  *(*v0 + 840) = v1;
  if (v1)
  {
    v2 = sub_10018DA10;
  }

  else
  {
    v2 = sub_10018D344;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018D344()
{
  v1 = *(v0 + 560);
  if ([v1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v40 = 0u;
  }

  *(v0 + 456) = v38;
  *(v0 + 472) = v40;
  if (!*(v0 + 480))
  {
    sub_100005518(v0 + 456, &unk_10059CC50);
    goto LABEL_11;
  }

  v2 = (v0 + 584);
  sub_100085D40(&unk_10059DC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v34 = *(v0 + 832);
    v35 = *(v0 + 824);
    v15 = *(v0 + 792);
    v16 = *(v0 + 784);
    v17 = *(v0 + 664);
    v36 = *(v0 + 656);
    v37 = *(v0 + 672);
    type metadata accessor for ASDError(0);
    *(v0 + 576) = 901;
    sub_100085D40(&qword_10059BC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100434480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v19;
    _StringGuts.grow(_:)(44);

    *&v39 = 0xD00000000000002ALL;
    *(&v39 + 1) = 0x80000001004528B0;
    v20 = [v15 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v39;
    sub_1000EF17C(inited);
    swift_setDeallocating();
    sub_100005518(inited + 32, &qword_10059CE00);
    sub_10018DF2C(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    (*(v17 + 8))(v37, v36);
    sub_100005A00(v0 + 416);

    v25 = *(v0 + 8);
    goto LABEL_14;
  }

  v3 = *v2;
  if (*(*v2 + 16) && (v4 = sub_1000EE808(0x6469656C707061, 0xE700000000000000), (v5 & 1) != 0))
  {
    v6 = *(v0 + 832);
    v7 = *(v0 + 824);
    v8 = *(v0 + 784);
    v9 = *(v0 + 672);
    v10 = *(v0 + 664);
    v11 = *(v0 + 656);
    sub_10009F6D0(*(v3 + 56) + 32 * v4, v0 + 488);

    (*(v10 + 8))(v9, v11);

    v12 = swift_dynamicCast();
    v13 = *(v0 + 520);
    v14 = *(v0 + 528);
    if (!v12)
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    v26 = *(v0 + 832);
    v27 = *(v0 + 824);
    v28 = *(v0 + 784);
    v29 = *(v0 + 672);
    v30 = *(v0 + 664);
    v31 = *(v0 + 656);

    (*(v30 + 8))(v29, v31);
    v13 = 0;
    v14 = 0;
  }

  v32 = (*(v0 + 592) + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_appleID);
  *v32 = v13;
  v32[1] = v14;

  sub_100005A00(v0 + 416);

  v25 = *(v0 + 8);
LABEL_14:

  return v25();
}

uint64_t sub_10018D824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018D8F4()
{
  v1 = v0[100];
  v2 = v0[98];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  sub_100005A00((v0 + 52));

  v6 = v0[1];

  return v6();
}

uint64_t sub_10018DA10()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[98];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  sub_100005A00((v0 + 52));

  v7 = v0[1];

  return v7();
}

uint64_t sub_10018DCA8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_10018C384();
}

uint64_t sub_10018DE54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_10018DCA8(v2, v3);
}

uint64_t sub_10018DF2C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10018E008()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODRPublicErrorMapping();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10018E060(id a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v50 = v4;
    v7 = a1;
    v8 = [v7 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v12 == v11)
    {
      goto LABEL_15;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v15 == v11)
    {
      goto LABEL_15;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_16;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v18 == v11)
    {
      goto LABEL_15;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_16;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v21 == v11)
    {
LABEL_15:

LABEL_16:

      return a1;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_16;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v23 == v11)
    {

LABEL_26:
      a1 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:4994 userInfo:0];

      return a1;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_26;
    }

    v49 = objc_opt_self();
    sub_100085D40(&qword_10059EB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100434480;
    v52 = 0x726F727265;
    v53 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    v26 = [v7 domain];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v52 = v27;
    v53 = v29;
    v30._countAndFlagsBits = 58;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v51 = [v7 code];
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = v52;
    v33 = v53;
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v32;
    *(inited + 80) = v33;
    sub_1000EF040(inited);
    swift_setDeallocating();
    sub_10018E5DC(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1003F25C4(v49, isa, 21);

    static Logger.odr.getter();
    v35 = v7;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v38 = 136446210;
      v39 = v35;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v35;
      v42 = v37;
      v43 = v41;
      v45 = v44;

      v46 = sub_1001AD0D8(v43, v45, &v52);

      *(v38 + 4) = v46;
      v47 = v42;
      v35 = v49;
      _os_log_impl(&_mh_execute_header, v36, v47, "No error mapping for error: %{public}s", v38, 0xCu);
      sub_100005A00(v48);
    }

    (*(v3 + 8))(v6, v50);
    a1 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
  }

  return a1;
}